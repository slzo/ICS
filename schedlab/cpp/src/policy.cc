#include "policy.h"
#include <algorithm>
#define IntTime 750
double Limit[10]= { 5000*IntTime, 5000*IntTime, 5000*IntTime, 5000*IntTime, 5000*IntTime, 5000*IntTime, 4000*IntTime, 3000*IntTime, 2000*IntTime, 2000*IntTime};
int TIME = 100000*IntTime;
int donemax=1;

struct TASK{
		Event event; //记录事件的基本信息
		int done; //记录事件的工作时间
		int level; //任务所处的等级0～9
};

std::vector<TASK> list; //记录所有的Event

int cpu_id, io_id; //记录处理事件之后的cpu io状况
int curtime = 0, lasttime = 0; //记录这次事件到来及上次事件到来的时间
int sttime = 0; //记录分级开始时间,当时间到达时,把所有任务的等级提升

//计算得分 权重优先级 1.deadline 2.level+done 3.prio 4.arrivaltime
double cal_cpu(TASK T){ //计算cpu的优先级得分
		double score = 0;
		score += 5.0*(1-1.0*T.done/donemax);
		long long lefttime = T.event.task.deadline-curtime;
		lefttime = lefttime>0?lefttime:1; //剩余时间 对于过期任务 将其优先级放到最后
		score += 1000000.0*(IntTime*IntTime)/(lefttime*lefttime);
		score += 1.0*(curtime-T.event.task.arrivalTime)/(IntTime*10000);
		if(T.event.task.priority == Event::Task::Priority::kHigh)
			score *= 5;
		return score;
}

double cal_io(TASK T){ //计算cpu的优先级得分
		double score = 0;
		long long lefttime = T.event.task.deadline-curtime;
		lefttime = lefttime>0?lefttime:1; //剩余时间 对于过期任务 将其优先级放到最后
		score += 1000000.0*(IntTime*IntTime)/(lefttime*lefttime);
		score += 1.0*(curtime-T.event.task.arrivalTime)/(IntTime*10000);
		if(T.event.task.priority == Event::Task::Priority::kHigh)
			score *= 5;
		return score;
}

Action schedule() { //决定调度
		Action ans;
		ans.cpuTask=cpu_id;ans.ioTask=io_id;
		int maxio=0,maxcpu=0;
        std::vector<TASK> candcpu,candio;
		int maxlevel = 0;
		donemax = 1;
		for(auto i = list.begin(); i != list.end(); i++) {
			if(i->event.type == Event::Type::kIoRequest) {
				candio.push_back(*i);
				continue;
			}
			else {
				if(i->level > maxlevel) {
					candcpu.clear();
					candcpu.push_back(*i);
					maxlevel = i->level;
					donemax = i->done;
				}
				else if(i->level == maxlevel) {
					candcpu.push_back(*i);
					donemax = i->done > donemax ? i->done : donemax;
				}
				else continue;
			}
		}

        for(auto iter = candcpu.begin(); iter != candcpu.end(); iter++) { //选取得分最高的cpu
            double sco = cal_cpu(*iter);
            if(sco > maxcpu) {
                maxcpu = sco;
                ans.cpuTask = iter->event.task.taskId;
            }
        }

        if(io_id) //io 不空闲
			return ans;
        for(auto iter = candio.begin(); iter != candio.end(); iter++) { //选取得分最高的io
            double sco = cal_io(*iter);
            if(sco > maxio) {
                maxio = sco;
                ans.ioTask = iter->event.task.taskId;
            }
        }
		return ans;
}

void Deal_Event(const std::vector<Event> event) { //进行任务判断处理
		lasttime = curtime;
		for(auto i=event.begin(); i != event.end(); i++) {
				curtime = i->time;
				TASK tmp;
				switch(i->type) {
					case Event::Type::kTimer: //时间中断
								break;

					case Event::Type::kTaskArrival: //任务到来
								tmp.event = *i;
								tmp.done = 0;
								tmp.level = 9;
								list.push_back(tmp);
								break;

						case Event::Type::kTaskFinish: //任务完成
								for(auto iter = list.begin(); iter != list.end(); iter++)
										if((iter->event).task.taskId == (i->task).taskId) {
												list.erase(iter);
												break;
										}
								cpu_id = 0; //将当前cpu资源设为空闲
								break;

						case Event::Type::kIoRequest: //io请求到来
								for(auto iter = list.begin(); iter != list.end(); iter++)
										if((iter->event).task.taskId == (i->task).taskId) {
												iter->event.type = Event::Type::kIoRequest;
												iter->level = 9;
												break;
										}
								break;

						case Event::Type::kIoEnd://io调度结束
								for(auto iter = list.begin(); iter != list.end(); iter++)
										if((iter->event).task.taskId == (i->task).taskId) {
												iter->event.type = Event::Type::kTaskArrival;
												iter->event.task.arrivalTime = curtime;
												break;
										}
								io_id = 0; //将io资源设为空闲
								break;
				}
		}
		if(cpu_id) //更新当前cpu执行任务的状态
			for(auto iter = list.begin(); iter != list.end(); iter++) {
				if((iter->event).task.taskId == cpu_id) {
						iter->event.task.arrivalTime = curtime;
						iter->done += (curtime-lasttime);
						if(iter->done >= Limit[iter->level] && iter->level>0) //判断是否需要降级
							iter->level--;
				}
			}
		if(curtime - sttime >= TIME) { //判断时间片是否结束,结束则将所有任务归为最高级
			sttime = curtime;
			for(auto iter = list.begin(); iter != list.end(); iter++)
					iter->level = 9;
		}
		return;
}

Action policy(const std::vector<Event>& events, int current_cpu, int current_io) {
	cpu_id = current_cpu;
	io_id = current_io;
	Deal_Event(events);
	return schedule();
}
