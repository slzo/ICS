#include "policy.h"
#include <iostream>
#include <algorithm>
using namespace std;
vector<Event> list;
int curtime=0;
int io_id;
bool cmp(const Event &a, const Event &b){ //高优先级任务在前,同级任务ddl近的在前
        if (a.task.priority == Event::Task::Priority::kHigh && b.task.priority == Event::Task::Priority::kLow)
                return true;
        else if (a.task.priority == b.task.priority && (a.task.deadline-a.task.arrivalTime < b.task.deadline-b.task.arrivalTime))
                return true;
        else return false;
}

Action schelude(){ //进行调度选择
        Action ans;
        ans.cpuTask = 0;
        ans.ioTask = io_id;
        sort(list.begin(), list.end(), cmp); //对队列任务进行排序
        int flag = 1;
        for (auto i = list.begin(); i != list.end() ; i++){ //选择队列靠前的任务进行调度,并将其优先级调低,防止独占cpu
                if (!io_id && i->type == Event::Type::kIoRequest){
                    ans.ioTask = i->task.taskId;
                    io_id = i->task.taskId;
                }
                else if (i->type != Event::Type::kIoRequest&&flag){
                    flag=0;
                    ans.cpuTask = i->task.taskId;
                    i->task.priority = Event::Task::Priority::kLow;
            }
        }
        return ans;
}

void Deal(const std::vector<Event> &events) { //处理到来的任务,更新维护任务list
        for (auto i = events.begin(); i != events.end(); i++){
                curtime = i->time;
                switch(i->type) {
					case Event::Type::kTimer: //时间中断
								break;

                        case Event::Type::kTaskArrival: //任务到来
								list.push_back(*i);
								break;

                        case Event::Type::kTaskFinish: //任务完成
                                for(auto iter = list.begin(); iter != list.end(); iter++) //删除任务
                                        if(iter->task.taskId == i->task.taskId) {
                                                list.erase(iter);
                                                break;
                                        }
                                break;

                        case Event::Type::kIoRequest: //io请求到来
                                for(auto iter = list.begin(); iter != list.end(); iter++) //将任务调为kiorequest不可调用cpu
                                        if(iter->task.taskId == i->task.taskId) {
                                                iter->type = Event::Type::kIoRequest;
                                                break;
                                        }
                                break;

                        case Event::Type::kIoEnd://io调度结束
                                for(auto iter = list.begin(); iter != list.end(); iter++) //将任务调为ktaskarrival可调用cpu
                                        if(iter->task.taskId == i->task.taskId) {
                                                iter->type = Event::Type::kTaskArrival;
                                                break;
                                        }
                                io_id = 0;
                                break;
                }
        }
        return;
}
Action policy(const std::vector<Event> &events, int current_cpu, int current_io){
        io_id = current_io;
        Deal(events);
        return schelude();
}
