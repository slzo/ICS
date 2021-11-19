
switch:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 8a 2f 00 00    	pushq  0x2f8a(%rip)        # 3fb0 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 8b 2f 00 00 	bnd jmpq *0x2f8b(%rip)        # 3fb8 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)
    1030:	f3 0f 1e fa          	endbr64 
    1034:	68 00 00 00 00       	pushq  $0x0
    1039:	f2 e9 e1 ff ff ff    	bnd jmpq 1020 <.plt>
    103f:	90                   	nop
    1040:	f3 0f 1e fa          	endbr64 
    1044:	68 01 00 00 00       	pushq  $0x1
    1049:	f2 e9 d1 ff ff ff    	bnd jmpq 1020 <.plt>
    104f:	90                   	nop
    1050:	f3 0f 1e fa          	endbr64 
    1054:	68 02 00 00 00       	pushq  $0x2
    1059:	f2 e9 c1 ff ff ff    	bnd jmpq 1020 <.plt>
    105f:	90                   	nop

Disassembly of section .plt.got:

0000000000001060 <__cxa_finalize@plt>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	f2 ff 25 8d 2f 00 00 	bnd jmpq *0x2f8d(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    106b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000001070 <__stack_chk_fail@plt>:
    1070:	f3 0f 1e fa          	endbr64 
    1074:	f2 ff 25 45 2f 00 00 	bnd jmpq *0x2f45(%rip)        # 3fc0 <__stack_chk_fail@GLIBC_2.4>
    107b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001080 <__isoc99_scanf@plt>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	f2 ff 25 3d 2f 00 00 	bnd jmpq *0x2f3d(%rip)        # 3fc8 <__isoc99_scanf@GLIBC_2.7>
    108b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001090 <exit@plt>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	f2 ff 25 35 2f 00 00 	bnd jmpq *0x2f35(%rip)        # 3fd0 <exit@GLIBC_2.2.5>
    109b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

00000000000010a0 <_start>:
    10a0:	f3 0f 1e fa          	endbr64 
    10a4:	31 ed                	xor    %ebp,%ebp
    10a6:	49 89 d1             	mov    %rdx,%r9
    10a9:	5e                   	pop    %rsi
    10aa:	48 89 e2             	mov    %rsp,%rdx
    10ad:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10b1:	50                   	push   %rax
    10b2:	54                   	push   %rsp
    10b3:	4c 8d 05 a6 02 00 00 	lea    0x2a6(%rip),%r8        # 1360 <__libc_csu_fini>
    10ba:	48 8d 0d 2f 02 00 00 	lea    0x22f(%rip),%rcx        # 12f0 <__libc_csu_init>
    10c1:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 1189 <main>
    10c8:	ff 15 12 2f 00 00    	callq  *0x2f12(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    10ce:	f4                   	hlt    
    10cf:	90                   	nop

00000000000010d0 <deregister_tm_clones>:
    10d0:	48 8d 3d 39 2f 00 00 	lea    0x2f39(%rip),%rdi        # 4010 <__TMC_END__>
    10d7:	48 8d 05 32 2f 00 00 	lea    0x2f32(%rip),%rax        # 4010 <__TMC_END__>
    10de:	48 39 f8             	cmp    %rdi,%rax
    10e1:	74 15                	je     10f8 <deregister_tm_clones+0x28>
    10e3:	48 8b 05 ee 2e 00 00 	mov    0x2eee(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    10ea:	48 85 c0             	test   %rax,%rax
    10ed:	74 09                	je     10f8 <deregister_tm_clones+0x28>
    10ef:	ff e0                	jmpq   *%rax
    10f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10f8:	c3                   	retq   
    10f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001100 <register_tm_clones>:
    1100:	48 8d 3d 09 2f 00 00 	lea    0x2f09(%rip),%rdi        # 4010 <__TMC_END__>
    1107:	48 8d 35 02 2f 00 00 	lea    0x2f02(%rip),%rsi        # 4010 <__TMC_END__>
    110e:	48 29 fe             	sub    %rdi,%rsi
    1111:	48 89 f0             	mov    %rsi,%rax
    1114:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1118:	48 c1 f8 03          	sar    $0x3,%rax
    111c:	48 01 c6             	add    %rax,%rsi
    111f:	48 d1 fe             	sar    %rsi
    1122:	74 14                	je     1138 <register_tm_clones+0x38>
    1124:	48 8b 05 c5 2e 00 00 	mov    0x2ec5(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    112b:	48 85 c0             	test   %rax,%rax
    112e:	74 08                	je     1138 <register_tm_clones+0x38>
    1130:	ff e0                	jmpq   *%rax
    1132:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1138:	c3                   	retq   
    1139:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001140 <__do_global_dtors_aux>:
    1140:	f3 0f 1e fa          	endbr64 
    1144:	80 3d c5 2e 00 00 00 	cmpb   $0x0,0x2ec5(%rip)        # 4010 <__TMC_END__>
    114b:	75 2b                	jne    1178 <__do_global_dtors_aux+0x38>
    114d:	55                   	push   %rbp
    114e:	48 83 3d a2 2e 00 00 	cmpq   $0x0,0x2ea2(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    1155:	00 
    1156:	48 89 e5             	mov    %rsp,%rbp
    1159:	74 0c                	je     1167 <__do_global_dtors_aux+0x27>
    115b:	48 8b 3d a6 2e 00 00 	mov    0x2ea6(%rip),%rdi        # 4008 <__dso_handle>
    1162:	e8 f9 fe ff ff       	callq  1060 <__cxa_finalize@plt>
    1167:	e8 64 ff ff ff       	callq  10d0 <deregister_tm_clones>
    116c:	c6 05 9d 2e 00 00 01 	movb   $0x1,0x2e9d(%rip)        # 4010 <__TMC_END__>
    1173:	5d                   	pop    %rbp
    1174:	c3                   	retq   
    1175:	0f 1f 00             	nopl   (%rax)
    1178:	c3                   	retq   
    1179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001180 <frame_dummy>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	e9 77 ff ff ff       	jmpq   1100 <register_tm_clones>

0000000000001189 <main>:
    1189:	f3 0f 1e fa          	endbr64 
    118d:	48 83 ec 18          	sub    $0x18,%rsp
    1191:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1198:	00 00 
    119a:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    119f:	31 c0                	xor    %eax,%eax
    11a1:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    11a6:	48 8d 3d 57 0e 00 00 	lea    0xe57(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    11ad:	e8 ce fe ff ff       	callq  1080 <__isoc99_scanf@plt>
    11b2:	85 c0                	test   %eax,%eax
    11b4:	74 3d                	je     11f3 <main+0x6a>
    11b6:	8b 44 24 04          	mov    0x4(%rsp),%eax
    11ba:	83 f8 18             	cmp    $0x18,%eax
    11bd:	7e 3e                	jle    11fd <main+0x74>
    11bf:	3d 19 27 00 00       	cmp    $0x2719,%eax
    11c4:	0f 8f 16 01 00 00    	jg     12e0 <main+0x157>
    11ca:	3d 10 27 00 00       	cmp    $0x2710,%eax
    11cf:	0f 8c 84 00 00 00    	jl     1259 <main+0xd0>
    11d5:	8d 90 f0 d8 ff ff    	lea    -0x2710(%rax),%edx
    11db:	83 fa 09             	cmp    $0x9,%edx
    11de:	77 49                	ja     1229 <main+0xa0>
    11e0:	89 d2                	mov    %edx,%edx
    11e2:	48 8d 0d 1f 0e 00 00 	lea    0xe1f(%rip),%rcx        # 2008 <_IO_stdin_used+0x8>
    11e9:	48 63 14 91          	movslq (%rcx,%rdx,4),%rdx
    11ed:	48 01 ca             	add    %rcx,%rdx
    11f0:	3e ff e2             	notrack jmpq *%rdx
    11f3:	bf 00 00 00 00       	mov    $0x0,%edi
    11f8:	e8 93 fe ff ff       	callq  1090 <exit@plt>
    11fd:	85 c0                	test   %eax,%eax
    11ff:	7f 2f                	jg     1230 <main+0xa7>
    1201:	b8 01 00 00 00       	mov    $0x1,%eax
    1206:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    120b:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
    1212:	00 00 
    1214:	0f 85 d0 00 00 00    	jne    12ea <main+0x161>
    121a:	48 83 c4 18          	add    $0x18,%rsp
    121e:	c3                   	retq   
    121f:	b8 01 00 00 00       	mov    $0x1,%eax
    1224:	c1 f8 02             	sar    $0x2,%eax
    1227:	eb dd                	jmp    1206 <main+0x7d>
    1229:	b8 01 00 00 00       	mov    $0x1,%eax
    122e:	eb d6                	jmp    1206 <main+0x7d>
    1230:	83 f8 18             	cmp    $0x18,%eax
    1233:	77 1d                	ja     1252 <main+0xc9>
    1235:	89 c1                	mov    %eax,%ecx
    1237:	48 8d 35 f2 0d 00 00 	lea    0xdf2(%rip),%rsi        # 2030 <_IO_stdin_used+0x30>
    123e:	48 63 14 8e          	movslq (%rsi,%rcx,4),%rdx
    1242:	48 01 f2             	add    %rsi,%rdx
    1245:	3e ff e2             	notrack jmpq *%rdx
    1248:	b8 01 00 00 00       	mov    $0x1,%eax
    124d:	c1 f8 02             	sar    $0x2,%eax
    1250:	eb b4                	jmp    1206 <main+0x7d>
    1252:	b8 01 00 00 00       	mov    $0x1,%eax
    1257:	eb ad                	jmp    1206 <main+0x7d>
    1259:	b8 01 00 00 00       	mov    $0x1,%eax
    125e:	eb a6                	jmp    1206 <main+0x7d>
    1260:	6b c0 21             	imul   $0x21,%eax,%eax
    1263:	eb a1                	jmp    1206 <main+0x7d>
    1265:	6b c0 21             	imul   $0x21,%eax,%eax
    1268:	83 c0 03             	add    $0x3,%eax
    126b:	eb 99                	jmp    1206 <main+0x7d>
    126d:	b8 01 00 00 00       	mov    $0x1,%eax
    1272:	eb f4                	jmp    1268 <main+0xdf>
    1274:	b8 6a 00 00 00       	mov    $0x6a,%eax
    1279:	eb 8b                	jmp    1206 <main+0x7d>
    127b:	b8 6b 00 00 00       	mov    $0x6b,%eax
    1280:	eb 84                	jmp    1206 <main+0x7d>
    1282:	d1 f8                	sar    %eax
    1284:	eb 80                	jmp    1206 <main+0x7d>
    1286:	b8 0a 00 00 00       	mov    $0xa,%eax
    128b:	eb c0                	jmp    124d <main+0xc4>
    128d:	6b c0 21             	imul   $0x21,%eax,%eax
    1290:	e9 71 ff ff ff       	jmpq   1206 <main+0x7d>
    1295:	6b c0 21             	imul   $0x21,%eax,%eax
    1298:	83 c0 03             	add    $0x3,%eax
    129b:	e9 66 ff ff ff       	jmpq   1206 <main+0x7d>
    12a0:	b8 01 00 00 00       	mov    $0x1,%eax
    12a5:	eb f1                	jmp    1298 <main+0x10f>
    12a7:	b8 6a 00 00 00       	mov    $0x6a,%eax
    12ac:	e9 55 ff ff ff       	jmpq   1206 <main+0x7d>
    12b1:	b8 6b 00 00 00       	mov    $0x6b,%eax
    12b6:	e9 4b ff ff ff       	jmpq   1206 <main+0x7d>
    12bb:	d1 f8                	sar    %eax
    12bd:	e9 44 ff ff ff       	jmpq   1206 <main+0x7d>
    12c2:	b8 0a 00 00 00       	mov    $0xa,%eax
    12c7:	e9 58 ff ff ff       	jmpq   1224 <main+0x9b>
    12cc:	b8 06 00 00 00       	mov    $0x6,%eax
    12d1:	e9 30 ff ff ff       	jmpq   1206 <main+0x7d>
    12d6:	b8 06 00 00 00       	mov    $0x6,%eax
    12db:	e9 26 ff ff ff       	jmpq   1206 <main+0x7d>
    12e0:	b8 01 00 00 00       	mov    $0x1,%eax
    12e5:	e9 1c ff ff ff       	jmpq   1206 <main+0x7d>
    12ea:	e8 81 fd ff ff       	callq  1070 <__stack_chk_fail@plt>
    12ef:	90                   	nop

00000000000012f0 <__libc_csu_init>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	41 57                	push   %r15
    12f6:	4c 8d 3d ab 2a 00 00 	lea    0x2aab(%rip),%r15        # 3da8 <__frame_dummy_init_array_entry>
    12fd:	41 56                	push   %r14
    12ff:	49 89 d6             	mov    %rdx,%r14
    1302:	41 55                	push   %r13
    1304:	49 89 f5             	mov    %rsi,%r13
    1307:	41 54                	push   %r12
    1309:	41 89 fc             	mov    %edi,%r12d
    130c:	55                   	push   %rbp
    130d:	48 8d 2d 9c 2a 00 00 	lea    0x2a9c(%rip),%rbp        # 3db0 <__do_global_dtors_aux_fini_array_entry>
    1314:	53                   	push   %rbx
    1315:	4c 29 fd             	sub    %r15,%rbp
    1318:	48 83 ec 08          	sub    $0x8,%rsp
    131c:	e8 df fc ff ff       	callq  1000 <_init>
    1321:	48 c1 fd 03          	sar    $0x3,%rbp
    1325:	74 1f                	je     1346 <__libc_csu_init+0x56>
    1327:	31 db                	xor    %ebx,%ebx
    1329:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1330:	4c 89 f2             	mov    %r14,%rdx
    1333:	4c 89 ee             	mov    %r13,%rsi
    1336:	44 89 e7             	mov    %r12d,%edi
    1339:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    133d:	48 83 c3 01          	add    $0x1,%rbx
    1341:	48 39 dd             	cmp    %rbx,%rbp
    1344:	75 ea                	jne    1330 <__libc_csu_init+0x40>
    1346:	48 83 c4 08          	add    $0x8,%rsp
    134a:	5b                   	pop    %rbx
    134b:	5d                   	pop    %rbp
    134c:	41 5c                	pop    %r12
    134e:	41 5d                	pop    %r13
    1350:	41 5e                	pop    %r14
    1352:	41 5f                	pop    %r15
    1354:	c3                   	retq   
    1355:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    135c:	00 00 00 00 

0000000000001360 <__libc_csu_fini>:
    1360:	f3 0f 1e fa          	endbr64 
    1364:	c3                   	retq   

Disassembly of section .fini:

0000000000001368 <_fini>:
    1368:	f3 0f 1e fa          	endbr64 
    136c:	48 83 ec 08          	sub    $0x8,%rsp
    1370:	48 83 c4 08          	add    $0x8,%rsp
    1374:	c3                   	retq   
