
./bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 3f 00 00 	mov    0x3fd9(%rip),%rax        # 4fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <getenv@plt-0x10>:
    1020:	ff 35 e2 3f 00 00    	pushq  0x3fe2(%rip)        # 5008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 3f 00 00    	jmpq   *0x3fe4(%rip)        # 5010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <getenv@plt>:
    1030:	ff 25 e2 3f 00 00    	jmpq   *0x3fe2(%rip)        # 5018 <getenv@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001040 <strcasecmp@plt>:
    1040:	ff 25 da 3f 00 00    	jmpq   *0x3fda(%rip)        # 5020 <strcasecmp@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001050 <__errno_location@plt>:
    1050:	ff 25 d2 3f 00 00    	jmpq   *0x3fd2(%rip)        # 5028 <__errno_location@GLIBC_2.2.5>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001060 <strcpy@plt>:
    1060:	ff 25 ca 3f 00 00    	jmpq   *0x3fca(%rip)        # 5030 <strcpy@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001070 <puts@plt>:
    1070:	ff 25 c2 3f 00 00    	jmpq   *0x3fc2(%rip)        # 5038 <puts@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001080 <write@plt>:
    1080:	ff 25 ba 3f 00 00    	jmpq   *0x3fba(%rip)        # 5040 <write@GLIBC_2.2.5>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001090 <strlen@plt>:
    1090:	ff 25 b2 3f 00 00    	jmpq   *0x3fb2(%rip)        # 5048 <strlen@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010a0 <__stack_chk_fail@plt>:
    10a0:	ff 25 aa 3f 00 00    	jmpq   *0x3faa(%rip)        # 5050 <__stack_chk_fail@GLIBC_2.4>
    10a6:	68 07 00 00 00       	pushq  $0x7
    10ab:	e9 70 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010b0 <printf@plt>:
    10b0:	ff 25 a2 3f 00 00    	jmpq   *0x3fa2(%rip)        # 5058 <printf@GLIBC_2.2.5>
    10b6:	68 08 00 00 00       	pushq  $0x8
    10bb:	e9 60 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010c0 <alarm@plt>:
    10c0:	ff 25 9a 3f 00 00    	jmpq   *0x3f9a(%rip)        # 5060 <alarm@GLIBC_2.2.5>
    10c6:	68 09 00 00 00       	pushq  $0x9
    10cb:	e9 50 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010d0 <close@plt>:
    10d0:	ff 25 92 3f 00 00    	jmpq   *0x3f92(%rip)        # 5068 <close@GLIBC_2.2.5>
    10d6:	68 0a 00 00 00       	pushq  $0xa
    10db:	e9 40 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010e0 <read@plt>:
    10e0:	ff 25 8a 3f 00 00    	jmpq   *0x3f8a(%rip)        # 5070 <read@GLIBC_2.2.5>
    10e6:	68 0b 00 00 00       	pushq  $0xb
    10eb:	e9 30 ff ff ff       	jmpq   1020 <_init+0x20>

00000000000010f0 <fgets@plt>:
    10f0:	ff 25 82 3f 00 00    	jmpq   *0x3f82(%rip)        # 5078 <fgets@GLIBC_2.2.5>
    10f6:	68 0c 00 00 00       	pushq  $0xc
    10fb:	e9 20 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001100 <strcmp@plt>:
    1100:	ff 25 7a 3f 00 00    	jmpq   *0x3f7a(%rip)        # 5080 <strcmp@GLIBC_2.2.5>
    1106:	68 0d 00 00 00       	pushq  $0xd
    110b:	e9 10 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001110 <signal@plt>:
    1110:	ff 25 72 3f 00 00    	jmpq   *0x3f72(%rip)        # 5088 <signal@GLIBC_2.2.5>
    1116:	68 0e 00 00 00       	pushq  $0xe
    111b:	e9 00 ff ff ff       	jmpq   1020 <_init+0x20>

0000000000001120 <gethostbyname@plt>:
    1120:	ff 25 6a 3f 00 00    	jmpq   *0x3f6a(%rip)        # 5090 <gethostbyname@GLIBC_2.2.5>
    1126:	68 0f 00 00 00       	pushq  $0xf
    112b:	e9 f0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001130 <fprintf@plt>:
    1130:	ff 25 62 3f 00 00    	jmpq   *0x3f62(%rip)        # 5098 <fprintf@GLIBC_2.2.5>
    1136:	68 10 00 00 00       	pushq  $0x10
    113b:	e9 e0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001140 <strtol@plt>:
    1140:	ff 25 5a 3f 00 00    	jmpq   *0x3f5a(%rip)        # 50a0 <strtol@GLIBC_2.2.5>
    1146:	68 11 00 00 00       	pushq  $0x11
    114b:	e9 d0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001150 <fflush@plt>:
    1150:	ff 25 52 3f 00 00    	jmpq   *0x3f52(%rip)        # 50a8 <fflush@GLIBC_2.2.5>
    1156:	68 12 00 00 00       	pushq  $0x12
    115b:	e9 c0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001160 <__isoc99_sscanf@plt>:
    1160:	ff 25 4a 3f 00 00    	jmpq   *0x3f4a(%rip)        # 50b0 <__isoc99_sscanf@GLIBC_2.7>
    1166:	68 13 00 00 00       	pushq  $0x13
    116b:	e9 b0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001170 <memmove@plt>:
    1170:	ff 25 42 3f 00 00    	jmpq   *0x3f42(%rip)        # 50b8 <memmove@GLIBC_2.2.5>
    1176:	68 14 00 00 00       	pushq  $0x14
    117b:	e9 a0 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001180 <fopen@plt>:
    1180:	ff 25 3a 3f 00 00    	jmpq   *0x3f3a(%rip)        # 50c0 <fopen@GLIBC_2.2.5>
    1186:	68 15 00 00 00       	pushq  $0x15
    118b:	e9 90 fe ff ff       	jmpq   1020 <_init+0x20>

0000000000001190 <gethostname@plt>:
    1190:	ff 25 32 3f 00 00    	jmpq   *0x3f32(%rip)        # 50c8 <gethostname@GLIBC_2.2.5>
    1196:	68 16 00 00 00       	pushq  $0x16
    119b:	e9 80 fe ff ff       	jmpq   1020 <_init+0x20>

00000000000011a0 <sprintf@plt>:
    11a0:	ff 25 2a 3f 00 00    	jmpq   *0x3f2a(%rip)        # 50d0 <sprintf@GLIBC_2.2.5>
    11a6:	68 17 00 00 00       	pushq  $0x17
    11ab:	e9 70 fe ff ff       	jmpq   1020 <_init+0x20>

00000000000011b0 <exit@plt>:
    11b0:	ff 25 22 3f 00 00    	jmpq   *0x3f22(%rip)        # 50d8 <exit@GLIBC_2.2.5>
    11b6:	68 18 00 00 00       	pushq  $0x18
    11bb:	e9 60 fe ff ff       	jmpq   1020 <_init+0x20>

00000000000011c0 <connect@plt>:
    11c0:	ff 25 1a 3f 00 00    	jmpq   *0x3f1a(%rip)        # 50e0 <connect@GLIBC_2.2.5>
    11c6:	68 19 00 00 00       	pushq  $0x19
    11cb:	e9 50 fe ff ff       	jmpq   1020 <_init+0x20>

00000000000011d0 <sleep@plt>:
    11d0:	ff 25 12 3f 00 00    	jmpq   *0x3f12(%rip)        # 50e8 <sleep@GLIBC_2.2.5>
    11d6:	68 1a 00 00 00       	pushq  $0x1a
    11db:	e9 40 fe ff ff       	jmpq   1020 <_init+0x20>

00000000000011e0 <__ctype_b_loc@plt>:
    11e0:	ff 25 0a 3f 00 00    	jmpq   *0x3f0a(%rip)        # 50f0 <__ctype_b_loc@GLIBC_2.3>
    11e6:	68 1b 00 00 00       	pushq  $0x1b
    11eb:	e9 30 fe ff ff       	jmpq   1020 <_init+0x20>

00000000000011f0 <socket@plt>:
    11f0:	ff 25 02 3f 00 00    	jmpq   *0x3f02(%rip)        # 50f8 <socket@GLIBC_2.2.5>
    11f6:	68 1c 00 00 00       	pushq  $0x1c
    11fb:	e9 20 fe ff ff       	jmpq   1020 <_init+0x20>

Disassembly of section .text:

0000000000001200 <_start>:
    1200:	f3 0f 1e fa          	endbr64 
    1204:	31 ed                	xor    %ebp,%ebp
    1206:	49 89 d1             	mov    %rdx,%r9
    1209:	5e                   	pop    %rsi
    120a:	48 89 e2             	mov    %rsp,%rdx
    120d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1211:	50                   	push   %rax
    1212:	54                   	push   %rsp
    1213:	4c 8d 05 f6 18 00 00 	lea    0x18f6(%rip),%r8        # 2b10 <__libc_csu_fini>
    121a:	48 8d 0d 7f 18 00 00 	lea    0x187f(%rip),%rcx        # 2aa0 <__libc_csu_init>
    1221:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 12f9 <main>
    1228:	ff 15 b2 3d 00 00    	callq  *0x3db2(%rip)        # 4fe0 <__libc_start_main@GLIBC_2.2.5>
    122e:	f4                   	hlt    
    122f:	90                   	nop

0000000000001230 <deregister_tm_clones>:
    1230:	48 8d 3d 49 45 00 00 	lea    0x4549(%rip),%rdi        # 5780 <stdout@@GLIBC_2.2.5>
    1237:	48 8d 05 42 45 00 00 	lea    0x4542(%rip),%rax        # 5780 <stdout@@GLIBC_2.2.5>
    123e:	48 39 f8             	cmp    %rdi,%rax
    1241:	74 15                	je     1258 <deregister_tm_clones+0x28>
    1243:	48 8b 05 8e 3d 00 00 	mov    0x3d8e(%rip),%rax        # 4fd8 <_ITM_deregisterTMCloneTable>
    124a:	48 85 c0             	test   %rax,%rax
    124d:	74 09                	je     1258 <deregister_tm_clones+0x28>
    124f:	ff e0                	jmpq   *%rax
    1251:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1258:	c3                   	retq   
    1259:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001260 <register_tm_clones>:
    1260:	48 8d 3d 19 45 00 00 	lea    0x4519(%rip),%rdi        # 5780 <stdout@@GLIBC_2.2.5>
    1267:	48 8d 35 12 45 00 00 	lea    0x4512(%rip),%rsi        # 5780 <stdout@@GLIBC_2.2.5>
    126e:	48 29 fe             	sub    %rdi,%rsi
    1271:	48 89 f0             	mov    %rsi,%rax
    1274:	48 c1 ee 3f          	shr    $0x3f,%rsi
    1278:	48 c1 f8 03          	sar    $0x3,%rax
    127c:	48 01 c6             	add    %rax,%rsi
    127f:	48 d1 fe             	sar    %rsi
    1282:	74 14                	je     1298 <register_tm_clones+0x38>
    1284:	48 8b 05 65 3d 00 00 	mov    0x3d65(%rip),%rax        # 4ff0 <_ITM_registerTMCloneTable>
    128b:	48 85 c0             	test   %rax,%rax
    128e:	74 08                	je     1298 <register_tm_clones+0x38>
    1290:	ff e0                	jmpq   *%rax
    1292:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1298:	c3                   	retq   
    1299:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000012a0 <__do_global_dtors_aux>:
    12a0:	f3 0f 1e fa          	endbr64 
    12a4:	80 3d fd 44 00 00 00 	cmpb   $0x0,0x44fd(%rip)        # 57a8 <completed.0>
    12ab:	75 33                	jne    12e0 <__do_global_dtors_aux+0x40>
    12ad:	55                   	push   %rbp
    12ae:	48 83 3d 42 3d 00 00 	cmpq   $0x0,0x3d42(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    12b5:	00 
    12b6:	48 89 e5             	mov    %rsp,%rbp
    12b9:	74 0d                	je     12c8 <__do_global_dtors_aux+0x28>
    12bb:	48 8b 3d 46 3e 00 00 	mov    0x3e46(%rip),%rdi        # 5108 <__dso_handle>
    12c2:	ff 15 30 3d 00 00    	callq  *0x3d30(%rip)        # 4ff8 <__cxa_finalize@GLIBC_2.2.5>
    12c8:	e8 63 ff ff ff       	callq  1230 <deregister_tm_clones>
    12cd:	c6 05 d4 44 00 00 01 	movb   $0x1,0x44d4(%rip)        # 57a8 <completed.0>
    12d4:	5d                   	pop    %rbp
    12d5:	c3                   	retq   
    12d6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    12dd:	00 00 00 
    12e0:	c3                   	retq   
    12e1:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    12e8:	00 00 00 00 
    12ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000000012f0 <frame_dummy>:
    12f0:	f3 0f 1e fa          	endbr64 
    12f4:	e9 67 ff ff ff       	jmpq   1260 <register_tm_clones>

00000000000012f9 <main>:
    12f9:	53                   	push   %rbx
    12fa:	83 ff 01             	cmp    $0x1,%edi
    12fd:	0f 84 f8 00 00 00    	je     13fb <main+0x102>
    1303:	48 89 f3             	mov    %rsi,%rbx
    1306:	83 ff 02             	cmp    $0x2,%edi
    1309:	0f 85 1c 01 00 00    	jne    142b <main+0x132>
    130f:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    1313:	48 8d 35 8e 21 00 00 	lea    0x218e(%rip),%rsi        # 34a8 <array.0+0x2c8>
    131a:	e8 61 fe ff ff       	callq  1180 <fopen@plt>
    131f:	48 89 05 8a 44 00 00 	mov    %rax,0x448a(%rip)        # 57b0 <infile>
    1326:	48 85 c0             	test   %rax,%rax
    1329:	0f 84 df 00 00 00    	je     140e <main+0x115>
    132f:	e8 c4 06 00 00       	callq  19f8 <initialize_bomb>
    1334:	48 8d 3d 4d 1d 00 00 	lea    0x1d4d(%rip),%rdi        # 3088 <_IO_stdin_used+0x88>
    133b:	e8 30 fd ff ff       	callq  1070 <puts@plt>
    1340:	48 8d 3d 81 1d 00 00 	lea    0x1d81(%rip),%rdi        # 30c8 <_IO_stdin_used+0xc8>
    1347:	e8 24 fd ff ff       	callq  1070 <puts@plt>
    134c:	e8 62 09 00 00       	callq  1cb3 <read_line>
    1351:	48 89 c7             	mov    %rax,%rdi
    1354:	e8 f0 00 00 00       	callq  1449 <phase_1>
    1359:	e8 89 0a 00 00       	callq  1de7 <phase_defused>
    135e:	48 8d 3d 93 1d 00 00 	lea    0x1d93(%rip),%rdi        # 30f8 <_IO_stdin_used+0xf8>
    1365:	e8 06 fd ff ff       	callq  1070 <puts@plt>
    136a:	e8 44 09 00 00       	callq  1cb3 <read_line>
    136f:	48 89 c7             	mov    %rax,%rdi
    1372:	e8 f2 00 00 00       	callq  1469 <phase_2>
    1377:	e8 6b 0a 00 00       	callq  1de7 <phase_defused>
    137c:	48 8d 3d b8 1c 00 00 	lea    0x1cb8(%rip),%rdi        # 303b <_IO_stdin_used+0x3b>
    1383:	e8 e8 fc ff ff       	callq  1070 <puts@plt>
    1388:	e8 26 09 00 00       	callq  1cb3 <read_line>
    138d:	48 89 c7             	mov    %rax,%rdi
    1390:	e8 42 01 00 00       	callq  14d7 <phase_3>
    1395:	e8 4d 0a 00 00       	callq  1de7 <phase_defused>
    139a:	48 8d 3d b8 1c 00 00 	lea    0x1cb8(%rip),%rdi        # 3059 <_IO_stdin_used+0x59>
    13a1:	e8 ca fc ff ff       	callq  1070 <puts@plt>
    13a6:	e8 08 09 00 00       	callq  1cb3 <read_line>
    13ab:	48 89 c7             	mov    %rax,%rdi
    13ae:	e8 dd 02 00 00       	callq  1690 <phase_4>
    13b3:	e8 2f 0a 00 00       	callq  1de7 <phase_defused>
    13b8:	48 8d 3d 69 1d 00 00 	lea    0x1d69(%rip),%rdi        # 3128 <_IO_stdin_used+0x128>
    13bf:	e8 ac fc ff ff       	callq  1070 <puts@plt>
    13c4:	e8 ea 08 00 00       	callq  1cb3 <read_line>
    13c9:	48 89 c7             	mov    %rax,%rdi
    13cc:	e8 34 03 00 00       	callq  1705 <phase_5>
    13d1:	e8 11 0a 00 00       	callq  1de7 <phase_defused>
    13d6:	48 8d 3d 8b 1c 00 00 	lea    0x1c8b(%rip),%rdi        # 3068 <_IO_stdin_used+0x68>
    13dd:	e8 8e fc ff ff       	callq  1070 <puts@plt>
    13e2:	e8 cc 08 00 00       	callq  1cb3 <read_line>
    13e7:	48 89 c7             	mov    %rax,%rdi
    13ea:	e8 5e 03 00 00       	callq  174d <phase_6>
    13ef:	e8 f3 09 00 00       	callq  1de7 <phase_defused>
    13f4:	b8 00 00 00 00       	mov    $0x0,%eax
    13f9:	5b                   	pop    %rbx
    13fa:	c3                   	retq   
    13fb:	48 8b 05 8e 43 00 00 	mov    0x438e(%rip),%rax        # 5790 <stdin@@GLIBC_2.2.5>
    1402:	48 89 05 a7 43 00 00 	mov    %rax,0x43a7(%rip)        # 57b0 <infile>
    1409:	e9 21 ff ff ff       	jmpq   132f <main+0x36>
    140e:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1412:	48 8b 33             	mov    (%rbx),%rsi
    1415:	48 8d 3d e8 1b 00 00 	lea    0x1be8(%rip),%rdi        # 3004 <_IO_stdin_used+0x4>
    141c:	e8 8f fc ff ff       	callq  10b0 <printf@plt>
    1421:	bf 08 00 00 00       	mov    $0x8,%edi
    1426:	e8 85 fd ff ff       	callq  11b0 <exit@plt>
    142b:	48 8b 36             	mov    (%rsi),%rsi
    142e:	48 8d 3d ec 1b 00 00 	lea    0x1bec(%rip),%rdi        # 3021 <_IO_stdin_used+0x21>
    1435:	b8 00 00 00 00       	mov    $0x0,%eax
    143a:	e8 71 fc ff ff       	callq  10b0 <printf@plt>
    143f:	bf 08 00 00 00       	mov    $0x8,%edi
    1444:	e8 67 fd ff ff       	callq  11b0 <exit@plt>

0000000000001449 <phase_1>:
    1449:	48 83 ec 08          	sub    $0x8,%rsp
    144d:	48 8d 35 fc 1c 00 00 	lea    0x1cfc(%rip),%rsi        # 3150 <_IO_stdin_used+0x150>
    1454:	e8 43 05 00 00       	callq  199c <strings_not_equal>
    1459:	85 c0                	test   %eax,%eax
    145b:	75 05                	jne    1462 <phase_1+0x19>
    145d:	48 83 c4 08          	add    $0x8,%rsp
    1461:	c3                   	retq   
    1462:	e8 cf 07 00 00       	callq  1c36 <explode_bomb>
    1467:	eb f4                	jmp    145d <phase_1+0x14>

0000000000001469 <phase_2>:
    1469:	55                   	push   %rbp
    146a:	53                   	push   %rbx
    146b:	48 83 ec 28          	sub    $0x28,%rsp
    146f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1476:	00 00 
    1478:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    147d:	31 c0                	xor    %eax,%eax
    147f:	48 89 e6             	mov    %rsp,%rsi
    1482:	e8 eb 07 00 00       	callq  1c72 <read_six_numbers>
    1487:	83 3c 24 00          	cmpl   $0x0,(%rsp)
    148b:	78 0a                	js     1497 <phase_2+0x2e>
    148d:	48 89 e5             	mov    %rsp,%rbp
    1490:	bb 01 00 00 00       	mov    $0x1,%ebx
    1495:	eb 13                	jmp    14aa <phase_2+0x41>
    1497:	e8 9a 07 00 00       	callq  1c36 <explode_bomb>
    149c:	eb ef                	jmp    148d <phase_2+0x24>
    149e:	83 c3 01             	add    $0x1,%ebx
    14a1:	48 83 c5 04          	add    $0x4,%rbp
    14a5:	83 fb 06             	cmp    $0x6,%ebx
    14a8:	74 11                	je     14bb <phase_2+0x52>
    14aa:	89 d8                	mov    %ebx,%eax
    14ac:	03 45 00             	add    0x0(%rbp),%eax
    14af:	39 45 04             	cmp    %eax,0x4(%rbp)
    14b2:	74 ea                	je     149e <phase_2+0x35>
    14b4:	e8 7d 07 00 00       	callq  1c36 <explode_bomb>
    14b9:	eb e3                	jmp    149e <phase_2+0x35>
    14bb:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    14c0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    14c7:	00 00 
    14c9:	75 07                	jne    14d2 <phase_2+0x69>
    14cb:	48 83 c4 28          	add    $0x28,%rsp
    14cf:	5b                   	pop    %rbx
    14d0:	5d                   	pop    %rbp
    14d1:	c3                   	retq   
    14d2:	e8 c9 fb ff ff       	callq  10a0 <__stack_chk_fail@plt>

00000000000014d7 <phase_3>:
    14d7:	48 83 ec 28          	sub    $0x28,%rsp
    14db:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    14e2:	00 00 
    14e4:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    14e9:	31 c0                	xor    %eax,%eax
    14eb:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    14f0:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    14f5:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    14fa:	48 8d 35 a5 1c 00 00 	lea    0x1ca5(%rip),%rsi        # 31a6 <_IO_stdin_used+0x1a6>
    1501:	e8 5a fc ff ff       	callq  1160 <__isoc99_sscanf@plt>
    1506:	83 f8 02             	cmp    $0x2,%eax
    1509:	7e 1f                	jle    152a <phase_3+0x53>
    150b:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    1510:	0f 87 0c 01 00 00    	ja     1622 <phase_3+0x14b>
    1516:	8b 44 24 10          	mov    0x10(%rsp),%eax
    151a:	48 8d 15 9f 1c 00 00 	lea    0x1c9f(%rip),%rdx        # 31c0 <_IO_stdin_used+0x1c0>
    1521:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    1525:	48 01 d0             	add    %rdx,%rax
    1528:	ff e0                	jmpq   *%rax
    152a:	e8 07 07 00 00       	callq  1c36 <explode_bomb>
    152f:	eb da                	jmp    150b <phase_3+0x34>
    1531:	b8 78 00 00 00       	mov    $0x78,%eax
    1536:	81 7c 24 14 21 03 00 	cmpl   $0x321,0x14(%rsp)
    153d:	00 
    153e:	0f 84 e8 00 00 00    	je     162c <phase_3+0x155>
    1544:	e8 ed 06 00 00       	callq  1c36 <explode_bomb>
    1549:	b8 78 00 00 00       	mov    $0x78,%eax
    154e:	e9 d9 00 00 00       	jmpq   162c <phase_3+0x155>
    1553:	b8 72 00 00 00       	mov    $0x72,%eax
    1558:	81 7c 24 14 bf 03 00 	cmpl   $0x3bf,0x14(%rsp)
    155f:	00 
    1560:	0f 84 c6 00 00 00    	je     162c <phase_3+0x155>
    1566:	e8 cb 06 00 00       	callq  1c36 <explode_bomb>
    156b:	b8 72 00 00 00       	mov    $0x72,%eax
    1570:	e9 b7 00 00 00       	jmpq   162c <phase_3+0x155>
    1575:	b8 61 00 00 00       	mov    $0x61,%eax
    157a:	81 7c 24 14 7f 03 00 	cmpl   $0x37f,0x14(%rsp)
    1581:	00 
    1582:	0f 84 a4 00 00 00    	je     162c <phase_3+0x155>
    1588:	e8 a9 06 00 00       	callq  1c36 <explode_bomb>
    158d:	b8 61 00 00 00       	mov    $0x61,%eax
    1592:	e9 95 00 00 00       	jmpq   162c <phase_3+0x155>
    1597:	b8 6c 00 00 00       	mov    $0x6c,%eax
    159c:	81 7c 24 14 e5 02 00 	cmpl   $0x2e5,0x14(%rsp)
    15a3:	00 
    15a4:	0f 84 82 00 00 00    	je     162c <phase_3+0x155>
    15aa:	e8 87 06 00 00       	callq  1c36 <explode_bomb>
    15af:	b8 6c 00 00 00       	mov    $0x6c,%eax
    15b4:	eb 76                	jmp    162c <phase_3+0x155>
    15b6:	b8 66 00 00 00       	mov    $0x66,%eax
    15bb:	81 7c 24 14 73 02 00 	cmpl   $0x273,0x14(%rsp)
    15c2:	00 
    15c3:	74 67                	je     162c <phase_3+0x155>
    15c5:	e8 6c 06 00 00       	callq  1c36 <explode_bomb>
    15ca:	b8 66 00 00 00       	mov    $0x66,%eax
    15cf:	eb 5b                	jmp    162c <phase_3+0x155>
    15d1:	b8 6d 00 00 00       	mov    $0x6d,%eax
    15d6:	81 7c 24 14 df 03 00 	cmpl   $0x3df,0x14(%rsp)
    15dd:	00 
    15de:	74 4c                	je     162c <phase_3+0x155>
    15e0:	e8 51 06 00 00       	callq  1c36 <explode_bomb>
    15e5:	b8 6d 00 00 00       	mov    $0x6d,%eax
    15ea:	eb 40                	jmp    162c <phase_3+0x155>
    15ec:	b8 7a 00 00 00       	mov    $0x7a,%eax
    15f1:	81 7c 24 14 15 01 00 	cmpl   $0x115,0x14(%rsp)
    15f8:	00 
    15f9:	74 31                	je     162c <phase_3+0x155>
    15fb:	e8 36 06 00 00       	callq  1c36 <explode_bomb>
    1600:	b8 7a 00 00 00       	mov    $0x7a,%eax
    1605:	eb 25                	jmp    162c <phase_3+0x155>
    1607:	b8 77 00 00 00       	mov    $0x77,%eax
    160c:	81 7c 24 14 74 03 00 	cmpl   $0x374,0x14(%rsp)
    1613:	00 
    1614:	74 16                	je     162c <phase_3+0x155>
    1616:	e8 1b 06 00 00       	callq  1c36 <explode_bomb>
    161b:	b8 77 00 00 00       	mov    $0x77,%eax
    1620:	eb 0a                	jmp    162c <phase_3+0x155>
    1622:	e8 0f 06 00 00       	callq  1c36 <explode_bomb>
    1627:	b8 78 00 00 00       	mov    $0x78,%eax
    162c:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    1630:	75 15                	jne    1647 <phase_3+0x170>
    1632:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    1637:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    163e:	00 00 
    1640:	75 0c                	jne    164e <phase_3+0x177>
    1642:	48 83 c4 28          	add    $0x28,%rsp
    1646:	c3                   	retq   
    1647:	e8 ea 05 00 00       	callq  1c36 <explode_bomb>
    164c:	eb e4                	jmp    1632 <phase_3+0x15b>
    164e:	e8 4d fa ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001653 <func4>:
    1653:	48 83 ec 08          	sub    $0x8,%rsp
    1657:	89 d0                	mov    %edx,%eax
    1659:	29 f0                	sub    %esi,%eax
    165b:	89 c1                	mov    %eax,%ecx
    165d:	c1 e9 1f             	shr    $0x1f,%ecx
    1660:	01 c1                	add    %eax,%ecx
    1662:	d1 f9                	sar    %ecx
    1664:	01 f1                	add    %esi,%ecx
    1666:	39 f9                	cmp    %edi,%ecx
    1668:	7f 0c                	jg     1676 <func4+0x23>
    166a:	b8 00 00 00 00       	mov    $0x0,%eax
    166f:	7c 11                	jl     1682 <func4+0x2f>
    1671:	48 83 c4 08          	add    $0x8,%rsp
    1675:	c3                   	retq   
    1676:	8d 51 ff             	lea    -0x1(%rcx),%edx
    1679:	e8 d5 ff ff ff       	callq  1653 <func4>
    167e:	01 c0                	add    %eax,%eax
    1680:	eb ef                	jmp    1671 <func4+0x1e>
    1682:	8d 71 01             	lea    0x1(%rcx),%esi
    1685:	e8 c9 ff ff ff       	callq  1653 <func4>
    168a:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    168e:	eb e1                	jmp    1671 <func4+0x1e>

0000000000001690 <phase_4>:
    1690:	48 83 ec 18          	sub    $0x18,%rsp
    1694:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    169b:	00 00 
    169d:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    16a2:	31 c0                	xor    %eax,%eax
    16a4:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    16a9:	48 89 e2             	mov    %rsp,%rdx
    16ac:	48 8d 35 92 1d 00 00 	lea    0x1d92(%rip),%rsi        # 3445 <array.0+0x265>
    16b3:	e8 a8 fa ff ff       	callq  1160 <__isoc99_sscanf@plt>
    16b8:	83 f8 02             	cmp    $0x2,%eax
    16bb:	75 06                	jne    16c3 <phase_4+0x33>
    16bd:	83 3c 24 0e          	cmpl   $0xe,(%rsp)
    16c1:	76 05                	jbe    16c8 <phase_4+0x38>
    16c3:	e8 6e 05 00 00       	callq  1c36 <explode_bomb>
    16c8:	ba 0e 00 00 00       	mov    $0xe,%edx
    16cd:	be 00 00 00 00       	mov    $0x0,%esi
    16d2:	8b 3c 24             	mov    (%rsp),%edi
    16d5:	e8 79 ff ff ff       	callq  1653 <func4>
    16da:	83 f8 04             	cmp    $0x4,%eax
    16dd:	75 07                	jne    16e6 <phase_4+0x56>
    16df:	83 7c 24 04 04       	cmpl   $0x4,0x4(%rsp)
    16e4:	74 05                	je     16eb <phase_4+0x5b>
    16e6:	e8 4b 05 00 00       	callq  1c36 <explode_bomb>
    16eb:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    16f0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    16f7:	00 00 
    16f9:	75 05                	jne    1700 <phase_4+0x70>
    16fb:	48 83 c4 18          	add    $0x18,%rsp
    16ff:	c3                   	retq   
    1700:	e8 9b f9 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001705 <phase_5>:
    1705:	53                   	push   %rbx
    1706:	48 89 fb             	mov    %rdi,%rbx
    1709:	e8 71 02 00 00       	callq  197f <string_length>
    170e:	83 f8 06             	cmp    $0x6,%eax
    1711:	75 2c                	jne    173f <phase_5+0x3a>
    1713:	48 89 d8             	mov    %rbx,%rax
    1716:	48 8d 7b 06          	lea    0x6(%rbx),%rdi
    171a:	b9 00 00 00 00       	mov    $0x0,%ecx
    171f:	48 8d 35 ba 1a 00 00 	lea    0x1aba(%rip),%rsi        # 31e0 <array.0>
    1726:	0f b6 10             	movzbl (%rax),%edx
    1729:	83 e2 0f             	and    $0xf,%edx
    172c:	03 0c 96             	add    (%rsi,%rdx,4),%ecx
    172f:	48 83 c0 01          	add    $0x1,%rax
    1733:	48 39 f8             	cmp    %rdi,%rax
    1736:	75 ee                	jne    1726 <phase_5+0x21>
    1738:	83 f9 2d             	cmp    $0x2d,%ecx
    173b:	75 09                	jne    1746 <phase_5+0x41>
    173d:	5b                   	pop    %rbx
    173e:	c3                   	retq   
    173f:	e8 f2 04 00 00       	callq  1c36 <explode_bomb>
    1744:	eb cd                	jmp    1713 <phase_5+0xe>
    1746:	e8 eb 04 00 00       	callq  1c36 <explode_bomb>
    174b:	eb f0                	jmp    173d <phase_5+0x38>

000000000000174d <phase_6>:
    174d:	41 56                	push   %r14
    174f:	41 55                	push   %r13
    1751:	41 54                	push   %r12
    1753:	55                   	push   %rbp
    1754:	53                   	push   %rbx
    1755:	48 83 ec 60          	sub    $0x60,%rsp
    1759:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1760:	00 00 
    1762:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1767:	31 c0                	xor    %eax,%eax
    1769:	49 89 e5             	mov    %rsp,%r13
    176c:	4c 89 ee             	mov    %r13,%rsi
    176f:	e8 fe 04 00 00       	callq  1c72 <read_six_numbers>
    1774:	41 be 01 00 00 00    	mov    $0x1,%r14d
    177a:	49 89 e4             	mov    %rsp,%r12
    177d:	eb 28                	jmp    17a7 <phase_6+0x5a>
    177f:	e8 b2 04 00 00       	callq  1c36 <explode_bomb>
    1784:	eb 30                	jmp    17b6 <phase_6+0x69>
    1786:	48 83 c3 01          	add    $0x1,%rbx
    178a:	83 fb 05             	cmp    $0x5,%ebx
    178d:	7f 10                	jg     179f <phase_6+0x52>
    178f:	41 8b 04 9c          	mov    (%r12,%rbx,4),%eax
    1793:	39 45 00             	cmp    %eax,0x0(%rbp)
    1796:	75 ee                	jne    1786 <phase_6+0x39>
    1798:	e8 99 04 00 00       	callq  1c36 <explode_bomb>
    179d:	eb e7                	jmp    1786 <phase_6+0x39>
    179f:	49 83 c6 01          	add    $0x1,%r14
    17a3:	49 83 c5 04          	add    $0x4,%r13
    17a7:	4c 89 ed             	mov    %r13,%rbp
    17aa:	41 8b 45 00          	mov    0x0(%r13),%eax
    17ae:	83 e8 01             	sub    $0x1,%eax
    17b1:	83 f8 05             	cmp    $0x5,%eax
    17b4:	77 c9                	ja     177f <phase_6+0x32>
    17b6:	41 83 fe 05          	cmp    $0x5,%r14d
    17ba:	7f 05                	jg     17c1 <phase_6+0x74>
    17bc:	4c 89 f3             	mov    %r14,%rbx
    17bf:	eb ce                	jmp    178f <phase_6+0x42>
    17c1:	be 00 00 00 00       	mov    $0x0,%esi
    17c6:	8b 0c b4             	mov    (%rsp,%rsi,4),%ecx
    17c9:	b8 01 00 00 00       	mov    $0x1,%eax
    17ce:	48 8d 15 5b 3b 00 00 	lea    0x3b5b(%rip),%rdx        # 5330 <node1>
    17d5:	83 f9 01             	cmp    $0x1,%ecx
    17d8:	7e 0b                	jle    17e5 <phase_6+0x98>
    17da:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    17de:	83 c0 01             	add    $0x1,%eax
    17e1:	39 c8                	cmp    %ecx,%eax
    17e3:	75 f5                	jne    17da <phase_6+0x8d>
    17e5:	48 89 54 f4 20       	mov    %rdx,0x20(%rsp,%rsi,8)
    17ea:	48 83 c6 01          	add    $0x1,%rsi
    17ee:	48 83 fe 06          	cmp    $0x6,%rsi
    17f2:	75 d2                	jne    17c6 <phase_6+0x79>
    17f4:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
    17f9:	48 8b 44 24 28       	mov    0x28(%rsp),%rax
    17fe:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1802:	48 8b 54 24 30       	mov    0x30(%rsp),%rdx
    1807:	48 89 50 08          	mov    %rdx,0x8(%rax)
    180b:	48 8b 44 24 38       	mov    0x38(%rsp),%rax
    1810:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1814:	48 8b 54 24 40       	mov    0x40(%rsp),%rdx
    1819:	48 89 50 08          	mov    %rdx,0x8(%rax)
    181d:	48 8b 44 24 48       	mov    0x48(%rsp),%rax
    1822:	48 89 42 08          	mov    %rax,0x8(%rdx)
    1826:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    182d:	00 
    182e:	bd 05 00 00 00       	mov    $0x5,%ebp
    1833:	eb 09                	jmp    183e <phase_6+0xf1>
    1835:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    1839:	83 ed 01             	sub    $0x1,%ebp
    183c:	74 11                	je     184f <phase_6+0x102>
    183e:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1842:	8b 00                	mov    (%rax),%eax
    1844:	39 03                	cmp    %eax,(%rbx)
    1846:	7e ed                	jle    1835 <phase_6+0xe8>
    1848:	e8 e9 03 00 00       	callq  1c36 <explode_bomb>
    184d:	eb e6                	jmp    1835 <phase_6+0xe8>
    184f:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
    1854:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    185b:	00 00 
    185d:	75 0d                	jne    186c <phase_6+0x11f>
    185f:	48 83 c4 60          	add    $0x60,%rsp
    1863:	5b                   	pop    %rbx
    1864:	5d                   	pop    %rbp
    1865:	41 5c                	pop    %r12
    1867:	41 5d                	pop    %r13
    1869:	41 5e                	pop    %r14
    186b:	c3                   	retq   
    186c:	e8 2f f8 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001871 <fun7>:
    1871:	48 85 ff             	test   %rdi,%rdi
    1874:	74 32                	je     18a8 <fun7+0x37>
    1876:	48 83 ec 08          	sub    $0x8,%rsp
    187a:	8b 17                	mov    (%rdi),%edx
    187c:	39 f2                	cmp    %esi,%edx
    187e:	7f 0c                	jg     188c <fun7+0x1b>
    1880:	b8 00 00 00 00       	mov    $0x0,%eax
    1885:	75 12                	jne    1899 <fun7+0x28>
    1887:	48 83 c4 08          	add    $0x8,%rsp
    188b:	c3                   	retq   
    188c:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1890:	e8 dc ff ff ff       	callq  1871 <fun7>
    1895:	01 c0                	add    %eax,%eax
    1897:	eb ee                	jmp    1887 <fun7+0x16>
    1899:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    189d:	e8 cf ff ff ff       	callq  1871 <fun7>
    18a2:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    18a6:	eb df                	jmp    1887 <fun7+0x16>
    18a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    18ad:	c3                   	retq   

00000000000018ae <secret_phase>:
    18ae:	53                   	push   %rbx
    18af:	e8 ff 03 00 00       	callq  1cb3 <read_line>
    18b4:	48 89 c7             	mov    %rax,%rdi
    18b7:	ba 0a 00 00 00       	mov    $0xa,%edx
    18bc:	be 00 00 00 00       	mov    $0x0,%esi
    18c1:	e8 7a f8 ff ff       	callq  1140 <strtol@plt>
    18c6:	89 c3                	mov    %eax,%ebx
    18c8:	83 e8 01             	sub    $0x1,%eax
    18cb:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    18d0:	77 26                	ja     18f8 <secret_phase+0x4a>
    18d2:	89 de                	mov    %ebx,%esi
    18d4:	48 8d 3d 75 39 00 00 	lea    0x3975(%rip),%rdi        # 5250 <n1>
    18db:	e8 91 ff ff ff       	callq  1871 <fun7>
    18e0:	83 f8 03             	cmp    $0x3,%eax
    18e3:	75 1a                	jne    18ff <secret_phase+0x51>
    18e5:	48 8d 3d 94 18 00 00 	lea    0x1894(%rip),%rdi        # 3180 <_IO_stdin_used+0x180>
    18ec:	e8 7f f7 ff ff       	callq  1070 <puts@plt>
    18f1:	e8 f1 04 00 00       	callq  1de7 <phase_defused>
    18f6:	5b                   	pop    %rbx
    18f7:	c3                   	retq   
    18f8:	e8 39 03 00 00       	callq  1c36 <explode_bomb>
    18fd:	eb d3                	jmp    18d2 <secret_phase+0x24>
    18ff:	e8 32 03 00 00       	callq  1c36 <explode_bomb>
    1904:	eb df                	jmp    18e5 <secret_phase+0x37>

0000000000001906 <sig_handler>:
    1906:	48 83 ec 08          	sub    $0x8,%rsp
    190a:	48 8d 3d 0f 19 00 00 	lea    0x190f(%rip),%rdi        # 3220 <array.0+0x40>
    1911:	e8 5a f7 ff ff       	callq  1070 <puts@plt>
    1916:	bf 03 00 00 00       	mov    $0x3,%edi
    191b:	e8 b0 f8 ff ff       	callq  11d0 <sleep@plt>
    1920:	48 8d 3d 9a 1a 00 00 	lea    0x1a9a(%rip),%rdi        # 33c1 <array.0+0x1e1>
    1927:	b8 00 00 00 00       	mov    $0x0,%eax
    192c:	e8 7f f7 ff ff       	callq  10b0 <printf@plt>
    1931:	48 8b 3d 48 3e 00 00 	mov    0x3e48(%rip),%rdi        # 5780 <stdout@@GLIBC_2.2.5>
    1938:	e8 13 f8 ff ff       	callq  1150 <fflush@plt>
    193d:	bf 01 00 00 00       	mov    $0x1,%edi
    1942:	e8 89 f8 ff ff       	callq  11d0 <sleep@plt>
    1947:	48 8d 3d 7b 1a 00 00 	lea    0x1a7b(%rip),%rdi        # 33c9 <array.0+0x1e9>
    194e:	e8 1d f7 ff ff       	callq  1070 <puts@plt>
    1953:	bf 10 00 00 00       	mov    $0x10,%edi
    1958:	e8 53 f8 ff ff       	callq  11b0 <exit@plt>

000000000000195d <invalid_phase>:
    195d:	48 83 ec 08          	sub    $0x8,%rsp
    1961:	48 89 fe             	mov    %rdi,%rsi
    1964:	48 8d 3d 66 1a 00 00 	lea    0x1a66(%rip),%rdi        # 33d1 <array.0+0x1f1>
    196b:	b8 00 00 00 00       	mov    $0x0,%eax
    1970:	e8 3b f7 ff ff       	callq  10b0 <printf@plt>
    1975:	bf 08 00 00 00       	mov    $0x8,%edi
    197a:	e8 31 f8 ff ff       	callq  11b0 <exit@plt>

000000000000197f <string_length>:
    197f:	80 3f 00             	cmpb   $0x0,(%rdi)
    1982:	74 12                	je     1996 <string_length+0x17>
    1984:	b8 00 00 00 00       	mov    $0x0,%eax
    1989:	48 83 c7 01          	add    $0x1,%rdi
    198d:	83 c0 01             	add    $0x1,%eax
    1990:	80 3f 00             	cmpb   $0x0,(%rdi)
    1993:	75 f4                	jne    1989 <string_length+0xa>
    1995:	c3                   	retq   
    1996:	b8 00 00 00 00       	mov    $0x0,%eax
    199b:	c3                   	retq   

000000000000199c <strings_not_equal>:
    199c:	41 54                	push   %r12
    199e:	55                   	push   %rbp
    199f:	53                   	push   %rbx
    19a0:	48 89 fb             	mov    %rdi,%rbx
    19a3:	48 89 f5             	mov    %rsi,%rbp
    19a6:	e8 d4 ff ff ff       	callq  197f <string_length>
    19ab:	41 89 c4             	mov    %eax,%r12d
    19ae:	48 89 ef             	mov    %rbp,%rdi
    19b1:	e8 c9 ff ff ff       	callq  197f <string_length>
    19b6:	89 c2                	mov    %eax,%edx
    19b8:	b8 01 00 00 00       	mov    $0x1,%eax
    19bd:	41 39 d4             	cmp    %edx,%r12d
    19c0:	75 31                	jne    19f3 <strings_not_equal+0x57>
    19c2:	0f b6 13             	movzbl (%rbx),%edx
    19c5:	84 d2                	test   %dl,%dl
    19c7:	74 1e                	je     19e7 <strings_not_equal+0x4b>
    19c9:	b8 00 00 00 00       	mov    $0x0,%eax
    19ce:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    19d2:	75 1a                	jne    19ee <strings_not_equal+0x52>
    19d4:	48 83 c0 01          	add    $0x1,%rax
    19d8:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    19dc:	84 d2                	test   %dl,%dl
    19de:	75 ee                	jne    19ce <strings_not_equal+0x32>
    19e0:	b8 00 00 00 00       	mov    $0x0,%eax
    19e5:	eb 0c                	jmp    19f3 <strings_not_equal+0x57>
    19e7:	b8 00 00 00 00       	mov    $0x0,%eax
    19ec:	eb 05                	jmp    19f3 <strings_not_equal+0x57>
    19ee:	b8 01 00 00 00       	mov    $0x1,%eax
    19f3:	5b                   	pop    %rbx
    19f4:	5d                   	pop    %rbp
    19f5:	41 5c                	pop    %r12
    19f7:	c3                   	retq   

00000000000019f8 <initialize_bomb>:
    19f8:	55                   	push   %rbp
    19f9:	53                   	push   %rbx
    19fa:	48 81 ec 58 20 00 00 	sub    $0x2058,%rsp
    1a01:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1a08:	00 00 
    1a0a:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    1a11:	00 
    1a12:	31 c0                	xor    %eax,%eax
    1a14:	48 8d 35 eb fe ff ff 	lea    -0x115(%rip),%rsi        # 1906 <sig_handler>
    1a1b:	bf 02 00 00 00       	mov    $0x2,%edi
    1a20:	e8 eb f6 ff ff       	callq  1110 <signal@plt>
    1a25:	48 89 e7             	mov    %rsp,%rdi
    1a28:	be 40 00 00 00       	mov    $0x40,%esi
    1a2d:	e8 5e f7 ff ff       	callq  1190 <gethostname@plt>
    1a32:	85 c0                	test   %eax,%eax
    1a34:	75 45                	jne    1a7b <initialize_bomb+0x83>
    1a36:	48 8b 3d 43 39 00 00 	mov    0x3943(%rip),%rdi        # 5380 <host_table>
    1a3d:	48 8d 1d 44 39 00 00 	lea    0x3944(%rip),%rbx        # 5388 <host_table+0x8>
    1a44:	48 89 e5             	mov    %rsp,%rbp
    1a47:	48 85 ff             	test   %rdi,%rdi
    1a4a:	74 19                	je     1a65 <initialize_bomb+0x6d>
    1a4c:	48 89 ee             	mov    %rbp,%rsi
    1a4f:	e8 ec f5 ff ff       	callq  1040 <strcasecmp@plt>
    1a54:	85 c0                	test   %eax,%eax
    1a56:	74 59                	je     1ab1 <initialize_bomb+0xb9>
    1a58:	48 83 c3 08          	add    $0x8,%rbx
    1a5c:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    1a60:	48 85 ff             	test   %rdi,%rdi
    1a63:	75 e7                	jne    1a4c <initialize_bomb+0x54>
    1a65:	48 8d 3d 24 18 00 00 	lea    0x1824(%rip),%rdi        # 3290 <array.0+0xb0>
    1a6c:	e8 ff f5 ff ff       	callq  1070 <puts@plt>
    1a71:	bf 08 00 00 00       	mov    $0x8,%edi
    1a76:	e8 35 f7 ff ff       	callq  11b0 <exit@plt>
    1a7b:	48 8d 3d d6 17 00 00 	lea    0x17d6(%rip),%rdi        # 3258 <array.0+0x78>
    1a82:	e8 e9 f5 ff ff       	callq  1070 <puts@plt>
    1a87:	bf 08 00 00 00       	mov    $0x8,%edi
    1a8c:	e8 1f f7 ff ff       	callq  11b0 <exit@plt>
    1a91:	48 8d 74 24 40       	lea    0x40(%rsp),%rsi
    1a96:	48 8d 3d 45 19 00 00 	lea    0x1945(%rip),%rdi        # 33e2 <array.0+0x202>
    1a9d:	b8 00 00 00 00       	mov    $0x0,%eax
    1aa2:	e8 09 f6 ff ff       	callq  10b0 <printf@plt>
    1aa7:	bf 08 00 00 00       	mov    $0x8,%edi
    1aac:	e8 ff f6 ff ff       	callq  11b0 <exit@plt>
    1ab1:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    1ab6:	e8 89 0d 00 00       	callq  2844 <init_driver>
    1abb:	85 c0                	test   %eax,%eax
    1abd:	78 d2                	js     1a91 <initialize_bomb+0x99>
    1abf:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    1ac6:	00 
    1ac7:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1ace:	00 00 
    1ad0:	75 0a                	jne    1adc <initialize_bomb+0xe4>
    1ad2:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    1ad9:	5b                   	pop    %rbx
    1ada:	5d                   	pop    %rbp
    1adb:	c3                   	retq   
    1adc:	e8 bf f5 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001ae1 <initialize_bomb_solve>:
    1ae1:	c3                   	retq   

0000000000001ae2 <blank_line>:
    1ae2:	55                   	push   %rbp
    1ae3:	53                   	push   %rbx
    1ae4:	48 83 ec 08          	sub    $0x8,%rsp
    1ae8:	48 89 fd             	mov    %rdi,%rbp
    1aeb:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    1aef:	84 db                	test   %bl,%bl
    1af1:	74 1e                	je     1b11 <blank_line+0x2f>
    1af3:	e8 e8 f6 ff ff       	callq  11e0 <__ctype_b_loc@plt>
    1af8:	48 83 c5 01          	add    $0x1,%rbp
    1afc:	48 0f be db          	movsbq %bl,%rbx
    1b00:	48 8b 00             	mov    (%rax),%rax
    1b03:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    1b08:	75 e1                	jne    1aeb <blank_line+0x9>
    1b0a:	b8 00 00 00 00       	mov    $0x0,%eax
    1b0f:	eb 05                	jmp    1b16 <blank_line+0x34>
    1b11:	b8 01 00 00 00       	mov    $0x1,%eax
    1b16:	48 83 c4 08          	add    $0x8,%rsp
    1b1a:	5b                   	pop    %rbx
    1b1b:	5d                   	pop    %rbp
    1b1c:	c3                   	retq   

0000000000001b1d <skip>:
    1b1d:	55                   	push   %rbp
    1b1e:	53                   	push   %rbx
    1b1f:	48 83 ec 08          	sub    $0x8,%rsp
    1b23:	48 8d 2d f6 3c 00 00 	lea    0x3cf6(%rip),%rbp        # 5820 <input_strings>
    1b2a:	48 63 05 df 3c 00 00 	movslq 0x3cdf(%rip),%rax        # 5810 <num_input_strings>
    1b31:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    1b35:	48 c1 e7 04          	shl    $0x4,%rdi
    1b39:	48 01 ef             	add    %rbp,%rdi
    1b3c:	48 8b 15 6d 3c 00 00 	mov    0x3c6d(%rip),%rdx        # 57b0 <infile>
    1b43:	be 50 00 00 00       	mov    $0x50,%esi
    1b48:	e8 a3 f5 ff ff       	callq  10f0 <fgets@plt>
    1b4d:	48 89 c3             	mov    %rax,%rbx
    1b50:	48 85 c0             	test   %rax,%rax
    1b53:	74 0c                	je     1b61 <skip+0x44>
    1b55:	48 89 c7             	mov    %rax,%rdi
    1b58:	e8 85 ff ff ff       	callq  1ae2 <blank_line>
    1b5d:	85 c0                	test   %eax,%eax
    1b5f:	75 c9                	jne    1b2a <skip+0xd>
    1b61:	48 89 d8             	mov    %rbx,%rax
    1b64:	48 83 c4 08          	add    $0x8,%rsp
    1b68:	5b                   	pop    %rbx
    1b69:	5d                   	pop    %rbp
    1b6a:	c3                   	retq   

0000000000001b6b <send_msg>:
    1b6b:	53                   	push   %rbx
    1b6c:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
    1b73:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1b7a:	00 00 
    1b7c:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    1b83:	00 
    1b84:	31 c0                	xor    %eax,%eax
    1b86:	44 8b 05 83 3c 00 00 	mov    0x3c83(%rip),%r8d        # 5810 <num_input_strings>
    1b8d:	41 8d 40 ff          	lea    -0x1(%r8),%eax
    1b91:	48 98                	cltq   
    1b93:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1b97:	48 c1 e0 04          	shl    $0x4,%rax
    1b9b:	85 ff                	test   %edi,%edi
    1b9d:	48 8d 0d 58 18 00 00 	lea    0x1858(%rip),%rcx        # 33fc <array.0+0x21c>
    1ba4:	48 8d 15 59 18 00 00 	lea    0x1859(%rip),%rdx        # 3404 <array.0+0x224>
    1bab:	48 0f 44 ca          	cmove  %rdx,%rcx
    1baf:	48 89 e3             	mov    %rsp,%rbx
    1bb2:	48 8d 15 67 3c 00 00 	lea    0x3c67(%rip),%rdx        # 5820 <input_strings>
    1bb9:	4c 8d 0c 02          	lea    (%rdx,%rax,1),%r9
    1bbd:	8b 15 81 36 00 00    	mov    0x3681(%rip),%edx        # 5244 <bomb_id>
    1bc3:	48 8d 35 43 18 00 00 	lea    0x1843(%rip),%rsi        # 340d <array.0+0x22d>
    1bca:	48 89 df             	mov    %rbx,%rdi
    1bcd:	b8 00 00 00 00       	mov    $0x0,%eax
    1bd2:	e8 c9 f5 ff ff       	callq  11a0 <sprintf@plt>
    1bd7:	4c 8d 84 24 00 20 00 	lea    0x2000(%rsp),%r8
    1bde:	00 
    1bdf:	b9 00 00 00 00       	mov    $0x0,%ecx
    1be4:	48 89 da             	mov    %rbx,%rdx
    1be7:	48 8d 35 32 36 00 00 	lea    0x3632(%rip),%rsi        # 5220 <user_password>
    1bee:	48 8d 3d 43 36 00 00 	lea    0x3643(%rip),%rdi        # 5238 <userid>
    1bf5:	e8 2a 0e 00 00       	callq  2a24 <driver_post>
    1bfa:	85 c0                	test   %eax,%eax
    1bfc:	78 1c                	js     1c1a <send_msg+0xaf>
    1bfe:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    1c05:	00 
    1c06:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1c0d:	00 00 
    1c0f:	75 20                	jne    1c31 <send_msg+0xc6>
    1c11:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    1c18:	5b                   	pop    %rbx
    1c19:	c3                   	retq   
    1c1a:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    1c21:	00 
    1c22:	e8 49 f4 ff ff       	callq  1070 <puts@plt>
    1c27:	bf 00 00 00 00       	mov    $0x0,%edi
    1c2c:	e8 7f f5 ff ff       	callq  11b0 <exit@plt>
    1c31:	e8 6a f4 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001c36 <explode_bomb>:
    1c36:	48 83 ec 08          	sub    $0x8,%rsp
    1c3a:	48 8d 3d d8 17 00 00 	lea    0x17d8(%rip),%rdi        # 3419 <array.0+0x239>
    1c41:	e8 2a f4 ff ff       	callq  1070 <puts@plt>
    1c46:	48 8d 3d d5 17 00 00 	lea    0x17d5(%rip),%rdi        # 3422 <array.0+0x242>
    1c4d:	e8 1e f4 ff ff       	callq  1070 <puts@plt>
    1c52:	bf 00 00 00 00       	mov    $0x0,%edi
    1c57:	e8 0f ff ff ff       	callq  1b6b <send_msg>
    1c5c:	48 8d 3d 65 16 00 00 	lea    0x1665(%rip),%rdi        # 32c8 <array.0+0xe8>
    1c63:	e8 08 f4 ff ff       	callq  1070 <puts@plt>
    1c68:	bf 08 00 00 00       	mov    $0x8,%edi
    1c6d:	e8 3e f5 ff ff       	callq  11b0 <exit@plt>

0000000000001c72 <read_six_numbers>:
    1c72:	48 83 ec 08          	sub    $0x8,%rsp
    1c76:	48 89 f2             	mov    %rsi,%rdx
    1c79:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1c7d:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1c81:	50                   	push   %rax
    1c82:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1c86:	50                   	push   %rax
    1c87:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1c8b:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1c8f:	48 8d 35 a3 17 00 00 	lea    0x17a3(%rip),%rsi        # 3439 <array.0+0x259>
    1c96:	b8 00 00 00 00       	mov    $0x0,%eax
    1c9b:	e8 c0 f4 ff ff       	callq  1160 <__isoc99_sscanf@plt>
    1ca0:	48 83 c4 10          	add    $0x10,%rsp
    1ca4:	83 f8 05             	cmp    $0x5,%eax
    1ca7:	7e 05                	jle    1cae <read_six_numbers+0x3c>
    1ca9:	48 83 c4 08          	add    $0x8,%rsp
    1cad:	c3                   	retq   
    1cae:	e8 83 ff ff ff       	callq  1c36 <explode_bomb>

0000000000001cb3 <read_line>:
    1cb3:	55                   	push   %rbp
    1cb4:	53                   	push   %rbx
    1cb5:	48 83 ec 08          	sub    $0x8,%rsp
    1cb9:	b8 00 00 00 00       	mov    $0x0,%eax
    1cbe:	e8 5a fe ff ff       	callq  1b1d <skip>
    1cc3:	48 85 c0             	test   %rax,%rax
    1cc6:	74 5d                	je     1d25 <read_line+0x72>
    1cc8:	8b 2d 42 3b 00 00    	mov    0x3b42(%rip),%ebp        # 5810 <num_input_strings>
    1cce:	48 63 c5             	movslq %ebp,%rax
    1cd1:	48 8d 1c 80          	lea    (%rax,%rax,4),%rbx
    1cd5:	48 c1 e3 04          	shl    $0x4,%rbx
    1cd9:	48 8d 05 40 3b 00 00 	lea    0x3b40(%rip),%rax        # 5820 <input_strings>
    1ce0:	48 01 c3             	add    %rax,%rbx
    1ce3:	48 89 df             	mov    %rbx,%rdi
    1ce6:	e8 a5 f3 ff ff       	callq  1090 <strlen@plt>
    1ceb:	83 f8 4e             	cmp    $0x4e,%eax
    1cee:	0f 8f a9 00 00 00    	jg     1d9d <read_line+0xea>
    1cf4:	83 e8 01             	sub    $0x1,%eax
    1cf7:	48 98                	cltq   
    1cf9:	48 63 d5             	movslq %ebp,%rdx
    1cfc:	48 8d 0c 92          	lea    (%rdx,%rdx,4),%rcx
    1d00:	48 c1 e1 04          	shl    $0x4,%rcx
    1d04:	48 8d 15 15 3b 00 00 	lea    0x3b15(%rip),%rdx        # 5820 <input_strings>
    1d0b:	48 01 ca             	add    %rcx,%rdx
    1d0e:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
    1d12:	83 c5 01             	add    $0x1,%ebp
    1d15:	89 2d f5 3a 00 00    	mov    %ebp,0x3af5(%rip)        # 5810 <num_input_strings>
    1d1b:	48 89 d8             	mov    %rbx,%rax
    1d1e:	48 83 c4 08          	add    $0x8,%rsp
    1d22:	5b                   	pop    %rbx
    1d23:	5d                   	pop    %rbp
    1d24:	c3                   	retq   
    1d25:	48 8b 05 64 3a 00 00 	mov    0x3a64(%rip),%rax        # 5790 <stdin@@GLIBC_2.2.5>
    1d2c:	48 39 05 7d 3a 00 00 	cmp    %rax,0x3a7d(%rip)        # 57b0 <infile>
    1d33:	74 1b                	je     1d50 <read_line+0x9d>
    1d35:	48 8d 3d 2d 17 00 00 	lea    0x172d(%rip),%rdi        # 3469 <array.0+0x289>
    1d3c:	e8 ef f2 ff ff       	callq  1030 <getenv@plt>
    1d41:	48 85 c0             	test   %rax,%rax
    1d44:	74 20                	je     1d66 <read_line+0xb3>
    1d46:	bf 00 00 00 00       	mov    $0x0,%edi
    1d4b:	e8 60 f4 ff ff       	callq  11b0 <exit@plt>
    1d50:	48 8d 3d f4 16 00 00 	lea    0x16f4(%rip),%rdi        # 344b <array.0+0x26b>
    1d57:	e8 14 f3 ff ff       	callq  1070 <puts@plt>
    1d5c:	bf 08 00 00 00       	mov    $0x8,%edi
    1d61:	e8 4a f4 ff ff       	callq  11b0 <exit@plt>
    1d66:	48 8b 05 23 3a 00 00 	mov    0x3a23(%rip),%rax        # 5790 <stdin@@GLIBC_2.2.5>
    1d6d:	48 89 05 3c 3a 00 00 	mov    %rax,0x3a3c(%rip)        # 57b0 <infile>
    1d74:	b8 00 00 00 00       	mov    $0x0,%eax
    1d79:	e8 9f fd ff ff       	callq  1b1d <skip>
    1d7e:	48 85 c0             	test   %rax,%rax
    1d81:	0f 85 41 ff ff ff    	jne    1cc8 <read_line+0x15>
    1d87:	48 8d 3d bd 16 00 00 	lea    0x16bd(%rip),%rdi        # 344b <array.0+0x26b>
    1d8e:	e8 dd f2 ff ff       	callq  1070 <puts@plt>
    1d93:	bf 00 00 00 00       	mov    $0x0,%edi
    1d98:	e8 13 f4 ff ff       	callq  11b0 <exit@plt>
    1d9d:	48 8d 3d d0 16 00 00 	lea    0x16d0(%rip),%rdi        # 3474 <array.0+0x294>
    1da4:	e8 c7 f2 ff ff       	callq  1070 <puts@plt>
    1da9:	8b 05 61 3a 00 00    	mov    0x3a61(%rip),%eax        # 5810 <num_input_strings>
    1daf:	8d 50 01             	lea    0x1(%rax),%edx
    1db2:	89 15 58 3a 00 00    	mov    %edx,0x3a58(%rip)        # 5810 <num_input_strings>
    1db8:	48 98                	cltq   
    1dba:	48 6b c0 50          	imul   $0x50,%rax,%rax
    1dbe:	48 8d 15 5b 3a 00 00 	lea    0x3a5b(%rip),%rdx        # 5820 <input_strings>
    1dc5:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    1dcc:	75 6e 63 
    1dcf:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    1dd6:	2a 2a 00 
    1dd9:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    1ddd:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    1de2:	e8 4f fe ff ff       	callq  1c36 <explode_bomb>

0000000000001de7 <phase_defused>:
    1de7:	48 83 ec 78          	sub    $0x78,%rsp
    1deb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1df2:	00 00 
    1df4:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    1df9:	31 c0                	xor    %eax,%eax
    1dfb:	bf 01 00 00 00       	mov    $0x1,%edi
    1e00:	e8 66 fd ff ff       	callq  1b6b <send_msg>
    1e05:	83 3d 04 3a 00 00 06 	cmpl   $0x6,0x3a04(%rip)        # 5810 <num_input_strings>
    1e0c:	74 19                	je     1e27 <phase_defused+0x40>
    1e0e:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
    1e13:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    1e1a:	00 00 
    1e1c:	0f 85 84 00 00 00    	jne    1ea6 <phase_defused+0xbf>
    1e22:	48 83 c4 78          	add    $0x78,%rsp
    1e26:	c3                   	retq   
    1e27:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    1e2c:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    1e31:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1e36:	48 8d 35 52 16 00 00 	lea    0x1652(%rip),%rsi        # 348f <array.0+0x2af>
    1e3d:	48 8d 3d cc 3a 00 00 	lea    0x3acc(%rip),%rdi        # 5910 <input_strings+0xf0>
    1e44:	b8 00 00 00 00       	mov    $0x0,%eax
    1e49:	e8 12 f3 ff ff       	callq  1160 <__isoc99_sscanf@plt>
    1e4e:	83 f8 03             	cmp    $0x3,%eax
    1e51:	74 1a                	je     1e6d <phase_defused+0x86>
    1e53:	48 8d 3d f6 14 00 00 	lea    0x14f6(%rip),%rdi        # 3350 <array.0+0x170>
    1e5a:	e8 11 f2 ff ff       	callq  1070 <puts@plt>
    1e5f:	48 8d 3d 1a 15 00 00 	lea    0x151a(%rip),%rdi        # 3380 <array.0+0x1a0>
    1e66:	e8 05 f2 ff ff       	callq  1070 <puts@plt>
    1e6b:	eb a1                	jmp    1e0e <phase_defused+0x27>
    1e6d:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e72:	48 8d 35 1f 16 00 00 	lea    0x161f(%rip),%rsi        # 3498 <array.0+0x2b8>
    1e79:	e8 1e fb ff ff       	callq  199c <strings_not_equal>
    1e7e:	85 c0                	test   %eax,%eax
    1e80:	75 d1                	jne    1e53 <phase_defused+0x6c>
    1e82:	48 8d 3d 67 14 00 00 	lea    0x1467(%rip),%rdi        # 32f0 <array.0+0x110>
    1e89:	e8 e2 f1 ff ff       	callq  1070 <puts@plt>
    1e8e:	48 8d 3d 83 14 00 00 	lea    0x1483(%rip),%rdi        # 3318 <array.0+0x138>
    1e95:	e8 d6 f1 ff ff       	callq  1070 <puts@plt>
    1e9a:	b8 00 00 00 00       	mov    $0x0,%eax
    1e9f:	e8 0a fa ff ff       	callq  18ae <secret_phase>
    1ea4:	eb ad                	jmp    1e53 <phase_defused+0x6c>
    1ea6:	e8 f5 f1 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000001eab <sigalrm_handler>:
    1eab:	48 83 ec 08          	sub    $0x8,%rsp
    1eaf:	ba 00 00 00 00       	mov    $0x0,%edx
    1eb4:	48 8d 35 05 16 00 00 	lea    0x1605(%rip),%rsi        # 34c0 <array.0+0x2e0>
    1ebb:	48 8b 3d de 38 00 00 	mov    0x38de(%rip),%rdi        # 57a0 <stderr@@GLIBC_2.2.5>
    1ec2:	b8 00 00 00 00       	mov    $0x0,%eax
    1ec7:	e8 64 f2 ff ff       	callq  1130 <fprintf@plt>
    1ecc:	bf 01 00 00 00       	mov    $0x1,%edi
    1ed1:	e8 da f2 ff ff       	callq  11b0 <exit@plt>

0000000000001ed6 <rio_writen>:
    1ed6:	41 56                	push   %r14
    1ed8:	41 55                	push   %r13
    1eda:	41 54                	push   %r12
    1edc:	55                   	push   %rbp
    1edd:	53                   	push   %rbx
    1ede:	49 89 d5             	mov    %rdx,%r13
    1ee1:	48 85 d2             	test   %rdx,%rdx
    1ee4:	74 3b                	je     1f21 <rio_writen+0x4b>
    1ee6:	41 89 fc             	mov    %edi,%r12d
    1ee9:	48 89 f5             	mov    %rsi,%rbp
    1eec:	48 89 d3             	mov    %rdx,%rbx
    1eef:	41 be 00 00 00 00    	mov    $0x0,%r14d
    1ef5:	eb 08                	jmp    1eff <rio_writen+0x29>
    1ef7:	48 01 c5             	add    %rax,%rbp
    1efa:	48 29 c3             	sub    %rax,%rbx
    1efd:	74 22                	je     1f21 <rio_writen+0x4b>
    1eff:	48 89 da             	mov    %rbx,%rdx
    1f02:	48 89 ee             	mov    %rbp,%rsi
    1f05:	44 89 e7             	mov    %r12d,%edi
    1f08:	e8 73 f1 ff ff       	callq  1080 <write@plt>
    1f0d:	48 85 c0             	test   %rax,%rax
    1f10:	7f e5                	jg     1ef7 <rio_writen+0x21>
    1f12:	e8 39 f1 ff ff       	callq  1050 <__errno_location@plt>
    1f17:	83 38 04             	cmpl   $0x4,(%rax)
    1f1a:	75 11                	jne    1f2d <rio_writen+0x57>
    1f1c:	4c 89 f0             	mov    %r14,%rax
    1f1f:	eb d6                	jmp    1ef7 <rio_writen+0x21>
    1f21:	4c 89 e8             	mov    %r13,%rax
    1f24:	5b                   	pop    %rbx
    1f25:	5d                   	pop    %rbp
    1f26:	41 5c                	pop    %r12
    1f28:	41 5d                	pop    %r13
    1f2a:	41 5e                	pop    %r14
    1f2c:	c3                   	retq   
    1f2d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1f34:	eb ee                	jmp    1f24 <rio_writen+0x4e>

0000000000001f36 <rio_readlineb>:
    1f36:	41 56                	push   %r14
    1f38:	41 55                	push   %r13
    1f3a:	41 54                	push   %r12
    1f3c:	55                   	push   %rbp
    1f3d:	53                   	push   %rbx
    1f3e:	49 89 f4             	mov    %rsi,%r12
    1f41:	48 83 fa 01          	cmp    $0x1,%rdx
    1f45:	0f 86 92 00 00 00    	jbe    1fdd <rio_readlineb+0xa7>
    1f4b:	48 89 fb             	mov    %rdi,%rbx
    1f4e:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    1f53:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1f59:	48 8d 6f 10          	lea    0x10(%rdi),%rbp
    1f5d:	eb 56                	jmp    1fb5 <rio_readlineb+0x7f>
    1f5f:	e8 ec f0 ff ff       	callq  1050 <__errno_location@plt>
    1f64:	83 38 04             	cmpl   $0x4,(%rax)
    1f67:	75 55                	jne    1fbe <rio_readlineb+0x88>
    1f69:	ba 00 20 00 00       	mov    $0x2000,%edx
    1f6e:	48 89 ee             	mov    %rbp,%rsi
    1f71:	8b 3b                	mov    (%rbx),%edi
    1f73:	e8 68 f1 ff ff       	callq  10e0 <read@plt>
    1f78:	89 c2                	mov    %eax,%edx
    1f7a:	89 43 04             	mov    %eax,0x4(%rbx)
    1f7d:	85 c0                	test   %eax,%eax
    1f7f:	78 de                	js     1f5f <rio_readlineb+0x29>
    1f81:	85 c0                	test   %eax,%eax
    1f83:	74 42                	je     1fc7 <rio_readlineb+0x91>
    1f85:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
    1f89:	48 8b 43 08          	mov    0x8(%rbx),%rax
    1f8d:	0f b6 08             	movzbl (%rax),%ecx
    1f90:	48 83 c0 01          	add    $0x1,%rax
    1f94:	48 89 43 08          	mov    %rax,0x8(%rbx)
    1f98:	83 ea 01             	sub    $0x1,%edx
    1f9b:	89 53 04             	mov    %edx,0x4(%rbx)
    1f9e:	49 83 c4 01          	add    $0x1,%r12
    1fa2:	41 88 4c 24 ff       	mov    %cl,-0x1(%r12)
    1fa7:	80 f9 0a             	cmp    $0xa,%cl
    1faa:	74 3c                	je     1fe8 <rio_readlineb+0xb2>
    1fac:	41 83 c5 01          	add    $0x1,%r13d
    1fb0:	4d 39 f4             	cmp    %r14,%r12
    1fb3:	74 30                	je     1fe5 <rio_readlineb+0xaf>
    1fb5:	8b 53 04             	mov    0x4(%rbx),%edx
    1fb8:	85 d2                	test   %edx,%edx
    1fba:	7e ad                	jle    1f69 <rio_readlineb+0x33>
    1fbc:	eb cb                	jmp    1f89 <rio_readlineb+0x53>
    1fbe:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1fc5:	eb 05                	jmp    1fcc <rio_readlineb+0x96>
    1fc7:	b8 00 00 00 00       	mov    $0x0,%eax
    1fcc:	85 c0                	test   %eax,%eax
    1fce:	75 29                	jne    1ff9 <rio_readlineb+0xc3>
    1fd0:	b8 00 00 00 00       	mov    $0x0,%eax
    1fd5:	41 83 fd 01          	cmp    $0x1,%r13d
    1fd9:	75 0d                	jne    1fe8 <rio_readlineb+0xb2>
    1fdb:	eb 13                	jmp    1ff0 <rio_readlineb+0xba>
    1fdd:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    1fe3:	eb 03                	jmp    1fe8 <rio_readlineb+0xb2>
    1fe5:	4d 89 f4             	mov    %r14,%r12
    1fe8:	41 c6 04 24 00       	movb   $0x0,(%r12)
    1fed:	49 63 c5             	movslq %r13d,%rax
    1ff0:	5b                   	pop    %rbx
    1ff1:	5d                   	pop    %rbp
    1ff2:	41 5c                	pop    %r12
    1ff4:	41 5d                	pop    %r13
    1ff6:	41 5e                	pop    %r14
    1ff8:	c3                   	retq   
    1ff9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    2000:	eb ee                	jmp    1ff0 <rio_readlineb+0xba>

0000000000002002 <submitr>:
    2002:	41 57                	push   %r15
    2004:	41 56                	push   %r14
    2006:	41 55                	push   %r13
    2008:	41 54                	push   %r12
    200a:	55                   	push   %rbp
    200b:	53                   	push   %rbx
    200c:	48 81 ec 78 a0 00 00 	sub    $0xa078,%rsp
    2013:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
    2018:	89 f5                	mov    %esi,%ebp
    201a:	49 89 d4             	mov    %rdx,%r12
    201d:	48 89 4c 24 10       	mov    %rcx,0x10(%rsp)
    2022:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    2027:	4c 89 4c 24 18       	mov    %r9,0x18(%rsp)
    202c:	48 8b 9c 24 b0 a0 00 	mov    0xa0b0(%rsp),%rbx
    2033:	00 
    2034:	4c 8b bc 24 b8 a0 00 	mov    0xa0b8(%rsp),%r15
    203b:	00 
    203c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2043:	00 00 
    2045:	48 89 84 24 68 a0 00 	mov    %rax,0xa068(%rsp)
    204c:	00 
    204d:	31 c0                	xor    %eax,%eax
    204f:	c7 44 24 3c 00 00 00 	movl   $0x0,0x3c(%rsp)
    2056:	00 
    2057:	ba 00 00 00 00       	mov    $0x0,%edx
    205c:	be 01 00 00 00       	mov    $0x1,%esi
    2061:	bf 02 00 00 00       	mov    $0x2,%edi
    2066:	e8 85 f1 ff ff       	callq  11f0 <socket@plt>
    206b:	85 c0                	test   %eax,%eax
    206d:	0f 88 0d 01 00 00    	js     2180 <submitr+0x17e>
    2073:	41 89 c6             	mov    %eax,%r14d
    2076:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    207b:	e8 a0 f0 ff ff       	callq  1120 <gethostbyname@plt>
    2080:	48 85 c0             	test   %rax,%rax
    2083:	0f 84 47 01 00 00    	je     21d0 <submitr+0x1ce>
    2089:	4c 8d 6c 24 40       	lea    0x40(%rsp),%r13
    208e:	48 c7 44 24 40 00 00 	movq   $0x0,0x40(%rsp)
    2095:	00 00 
    2097:	48 c7 44 24 48 00 00 	movq   $0x0,0x48(%rsp)
    209e:	00 00 
    20a0:	66 c7 44 24 40 02 00 	movw   $0x2,0x40(%rsp)
    20a7:	48 63 50 14          	movslq 0x14(%rax),%rdx
    20ab:	48 8b 40 18          	mov    0x18(%rax),%rax
    20af:	48 8d 7c 24 44       	lea    0x44(%rsp),%rdi
    20b4:	48 8b 30             	mov    (%rax),%rsi
    20b7:	e8 b4 f0 ff ff       	callq  1170 <memmove@plt>
    20bc:	66 c1 c5 08          	rol    $0x8,%bp
    20c0:	66 89 6c 24 42       	mov    %bp,0x42(%rsp)
    20c5:	ba 10 00 00 00       	mov    $0x10,%edx
    20ca:	4c 89 ee             	mov    %r13,%rsi
    20cd:	44 89 f7             	mov    %r14d,%edi
    20d0:	e8 eb f0 ff ff       	callq  11c0 <connect@plt>
    20d5:	85 c0                	test   %eax,%eax
    20d7:	0f 88 5e 01 00 00    	js     223b <submitr+0x239>
    20dd:	48 89 df             	mov    %rbx,%rdi
    20e0:	e8 ab ef ff ff       	callq  1090 <strlen@plt>
    20e5:	48 89 c5             	mov    %rax,%rbp
    20e8:	4c 89 e7             	mov    %r12,%rdi
    20eb:	e8 a0 ef ff ff       	callq  1090 <strlen@plt>
    20f0:	49 89 c5             	mov    %rax,%r13
    20f3:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    20f8:	e8 93 ef ff ff       	callq  1090 <strlen@plt>
    20fd:	49 89 c4             	mov    %rax,%r12
    2100:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
    2105:	e8 86 ef ff ff       	callq  1090 <strlen@plt>
    210a:	48 89 c2             	mov    %rax,%rdx
    210d:	4b 8d 84 25 80 00 00 	lea    0x80(%r13,%r12,1),%rax
    2114:	00 
    2115:	48 01 d0             	add    %rdx,%rax
    2118:	48 8d 54 6d 00       	lea    0x0(%rbp,%rbp,2),%rdx
    211d:	48 01 d0             	add    %rdx,%rax
    2120:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    2126:	0f 87 6c 01 00 00    	ja     2298 <submitr+0x296>
    212c:	48 8d 94 24 60 40 00 	lea    0x4060(%rsp),%rdx
    2133:	00 
    2134:	b9 00 04 00 00       	mov    $0x400,%ecx
    2139:	b8 00 00 00 00       	mov    $0x0,%eax
    213e:	48 89 d7             	mov    %rdx,%rdi
    2141:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    2144:	48 89 df             	mov    %rbx,%rdi
    2147:	e8 44 ef ff ff       	callq  1090 <strlen@plt>
    214c:	85 c0                	test   %eax,%eax
    214e:	0f 84 13 05 00 00    	je     2667 <submitr+0x665>
    2154:	8d 40 ff             	lea    -0x1(%rax),%eax
    2157:	4c 8d 64 03 01       	lea    0x1(%rbx,%rax,1),%r12
    215c:	48 8d ac 24 60 40 00 	lea    0x4060(%rsp),%rbp
    2163:	00 
    2164:	48 8d 84 24 60 80 00 	lea    0x8060(%rsp),%rax
    216b:	00 
    216c:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    2171:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    2178:	00 20 00 
    217b:	e9 a5 01 00 00       	jmpq   2325 <submitr+0x323>
    2180:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2187:	3a 20 43 
    218a:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2191:	20 75 6e 
    2194:	49 89 07             	mov    %rax,(%r15)
    2197:	49 89 57 08          	mov    %rdx,0x8(%r15)
    219b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    21a2:	74 6f 20 
    21a5:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    21ac:	65 20 73 
    21af:	49 89 47 10          	mov    %rax,0x10(%r15)
    21b3:	49 89 57 18          	mov    %rdx,0x18(%r15)
    21b7:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    21be:	65 
    21bf:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    21c6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    21cb:	e9 6e 03 00 00       	jmpq   253e <submitr+0x53c>
    21d0:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    21d7:	3a 20 44 
    21da:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    21e1:	20 75 6e 
    21e4:	49 89 07             	mov    %rax,(%r15)
    21e7:	49 89 57 08          	mov    %rdx,0x8(%r15)
    21eb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    21f2:	74 6f 20 
    21f5:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    21fc:	76 65 20 
    21ff:	49 89 47 10          	mov    %rax,0x10(%r15)
    2203:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2207:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    220e:	72 20 61 
    2211:	49 89 47 20          	mov    %rax,0x20(%r15)
    2215:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    221c:	65 
    221d:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    2224:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    2229:	44 89 f7             	mov    %r14d,%edi
    222c:	e8 9f ee ff ff       	callq  10d0 <close@plt>
    2231:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2236:	e9 03 03 00 00       	jmpq   253e <submitr+0x53c>
    223b:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    2242:	3a 20 55 
    2245:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    224c:	20 74 6f 
    224f:	49 89 07             	mov    %rax,(%r15)
    2252:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2256:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    225d:	65 63 74 
    2260:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    2267:	68 65 20 
    226a:	49 89 47 10          	mov    %rax,0x10(%r15)
    226e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2272:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    2279:	76 
    227a:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    2281:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    2286:	44 89 f7             	mov    %r14d,%edi
    2289:	e8 42 ee ff ff       	callq  10d0 <close@plt>
    228e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2293:	e9 a6 02 00 00       	jmpq   253e <submitr+0x53c>
    2298:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    229f:	3a 20 52 
    22a2:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    22a9:	20 73 74 
    22ac:	49 89 07             	mov    %rax,(%r15)
    22af:	49 89 57 08          	mov    %rdx,0x8(%r15)
    22b3:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    22ba:	74 6f 6f 
    22bd:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    22c4:	65 2e 20 
    22c7:	49 89 47 10          	mov    %rax,0x10(%r15)
    22cb:	49 89 57 18          	mov    %rdx,0x18(%r15)
    22cf:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    22d6:	61 73 65 
    22d9:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    22e0:	49 54 52 
    22e3:	49 89 47 20          	mov    %rax,0x20(%r15)
    22e7:	49 89 57 28          	mov    %rdx,0x28(%r15)
    22eb:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    22f2:	55 46 00 
    22f5:	49 89 47 30          	mov    %rax,0x30(%r15)
    22f9:	44 89 f7             	mov    %r14d,%edi
    22fc:	e8 cf ed ff ff       	callq  10d0 <close@plt>
    2301:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2306:	e9 33 02 00 00       	jmpq   253e <submitr+0x53c>
    230b:	49 0f a3 c5          	bt     %rax,%r13
    230f:	73 1e                	jae    232f <submitr+0x32d>
    2311:	88 55 00             	mov    %dl,0x0(%rbp)
    2314:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2318:	48 83 c3 01          	add    $0x1,%rbx
    231c:	4c 39 e3             	cmp    %r12,%rbx
    231f:	0f 84 42 03 00 00    	je     2667 <submitr+0x665>
    2325:	0f b6 13             	movzbl (%rbx),%edx
    2328:	8d 42 d6             	lea    -0x2a(%rdx),%eax
    232b:	3c 35                	cmp    $0x35,%al
    232d:	76 dc                	jbe    230b <submitr+0x309>
    232f:	89 d0                	mov    %edx,%eax
    2331:	83 e0 df             	and    $0xffffffdf,%eax
    2334:	83 e8 41             	sub    $0x41,%eax
    2337:	3c 19                	cmp    $0x19,%al
    2339:	76 d6                	jbe    2311 <submitr+0x30f>
    233b:	80 fa 20             	cmp    $0x20,%dl
    233e:	74 50                	je     2390 <submitr+0x38e>
    2340:	8d 42 e0             	lea    -0x20(%rdx),%eax
    2343:	3c 5f                	cmp    $0x5f,%al
    2345:	76 09                	jbe    2350 <submitr+0x34e>
    2347:	80 fa 09             	cmp    $0x9,%dl
    234a:	0f 85 8a 02 00 00    	jne    25da <submitr+0x5d8>
    2350:	0f b6 d2             	movzbl %dl,%edx
    2353:	48 8d 35 34 12 00 00 	lea    0x1234(%rip),%rsi        # 358e <array.0+0x3ae>
    235a:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    235f:	b8 00 00 00 00       	mov    $0x0,%eax
    2364:	e8 37 ee ff ff       	callq  11a0 <sprintf@plt>
    2369:	0f b6 84 24 60 80 00 	movzbl 0x8060(%rsp),%eax
    2370:	00 
    2371:	88 45 00             	mov    %al,0x0(%rbp)
    2374:	0f b6 84 24 61 80 00 	movzbl 0x8061(%rsp),%eax
    237b:	00 
    237c:	88 45 01             	mov    %al,0x1(%rbp)
    237f:	0f b6 84 24 62 80 00 	movzbl 0x8062(%rsp),%eax
    2386:	00 
    2387:	88 45 02             	mov    %al,0x2(%rbp)
    238a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    238e:	eb 88                	jmp    2318 <submitr+0x316>
    2390:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    2394:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    2398:	e9 7b ff ff ff       	jmpq   2318 <submitr+0x316>
    239d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    23a4:	3a 20 43 
    23a7:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    23ae:	20 75 6e 
    23b1:	49 89 07             	mov    %rax,(%r15)
    23b4:	49 89 57 08          	mov    %rdx,0x8(%r15)
    23b8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    23bf:	74 6f 20 
    23c2:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    23c9:	20 74 6f 
    23cc:	49 89 47 10          	mov    %rax,0x10(%r15)
    23d0:	49 89 57 18          	mov    %rdx,0x18(%r15)
    23d4:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    23db:	73 65 72 
    23de:	49 89 47 20          	mov    %rax,0x20(%r15)
    23e2:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    23e9:	00 
    23ea:	44 89 f7             	mov    %r14d,%edi
    23ed:	e8 de ec ff ff       	callq  10d0 <close@plt>
    23f2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    23f7:	e9 42 01 00 00       	jmpq   253e <submitr+0x53c>
    23fc:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2403:	3a 20 43 
    2406:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    240d:	20 75 6e 
    2410:	49 89 07             	mov    %rax,(%r15)
    2413:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2417:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    241e:	74 6f 20 
    2421:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    2428:	20 74 6f 
    242b:	49 89 47 10          	mov    %rax,0x10(%r15)
    242f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2433:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    243a:	73 65 72 
    243d:	49 89 47 20          	mov    %rax,0x20(%r15)
    2441:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    2448:	00 
    2449:	44 89 f7             	mov    %r14d,%edi
    244c:	e8 7f ec ff ff       	callq  10d0 <close@plt>
    2451:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2456:	e9 e3 00 00 00       	jmpq   253e <submitr+0x53c>
    245b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2462:	3a 20 43 
    2465:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    246c:	20 75 6e 
    246f:	49 89 07             	mov    %rax,(%r15)
    2472:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2476:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    247d:	74 6f 20 
    2480:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    2487:	66 69 72 
    248a:	49 89 47 10          	mov    %rax,0x10(%r15)
    248e:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2492:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    2499:	61 64 65 
    249c:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    24a3:	6d 20 73 
    24a6:	49 89 47 20          	mov    %rax,0x20(%r15)
    24aa:	49 89 57 28          	mov    %rdx,0x28(%r15)
    24ae:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    24b5:	65 
    24b6:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    24bd:	44 89 f7             	mov    %r14d,%edi
    24c0:	e8 0b ec ff ff       	callq  10d0 <close@plt>
    24c5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24ca:	eb 72                	jmp    253e <submitr+0x53c>
    24cc:	48 8d 8c 24 60 80 00 	lea    0x8060(%rsp),%rcx
    24d3:	00 
    24d4:	48 8d 35 0d 10 00 00 	lea    0x100d(%rip),%rsi        # 34e8 <array.0+0x308>
    24db:	4c 89 ff             	mov    %r15,%rdi
    24de:	b8 00 00 00 00       	mov    $0x0,%eax
    24e3:	e8 b8 ec ff ff       	callq  11a0 <sprintf@plt>
    24e8:	44 89 f7             	mov    %r14d,%edi
    24eb:	e8 e0 eb ff ff       	callq  10d0 <close@plt>
    24f0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    24f5:	eb 47                	jmp    253e <submitr+0x53c>
    24f7:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    24fe:	00 
    24ff:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    2504:	ba 00 20 00 00       	mov    $0x2000,%edx
    2509:	e8 28 fa ff ff       	callq  1f36 <rio_readlineb>
    250e:	48 85 c0             	test   %rax,%rax
    2511:	7e 54                	jle    2567 <submitr+0x565>
    2513:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    251a:	00 
    251b:	4c 89 ff             	mov    %r15,%rdi
    251e:	e8 3d eb ff ff       	callq  1060 <strcpy@plt>
    2523:	44 89 f7             	mov    %r14d,%edi
    2526:	e8 a5 eb ff ff       	callq  10d0 <close@plt>
    252b:	48 8d 35 81 10 00 00 	lea    0x1081(%rip),%rsi        # 35b3 <array.0+0x3d3>
    2532:	4c 89 ff             	mov    %r15,%rdi
    2535:	e8 c6 eb ff ff       	callq  1100 <strcmp@plt>
    253a:	f7 d8                	neg    %eax
    253c:	19 c0                	sbb    %eax,%eax
    253e:	48 8b 94 24 68 a0 00 	mov    0xa068(%rsp),%rdx
    2545:	00 
    2546:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    254d:	00 00 
    254f:	0f 85 be 02 00 00    	jne    2813 <submitr+0x811>
    2555:	48 81 c4 78 a0 00 00 	add    $0xa078,%rsp
    255c:	5b                   	pop    %rbx
    255d:	5d                   	pop    %rbp
    255e:	41 5c                	pop    %r12
    2560:	41 5d                	pop    %r13
    2562:	41 5e                	pop    %r14
    2564:	41 5f                	pop    %r15
    2566:	c3                   	retq   
    2567:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    256e:	3a 20 43 
    2571:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2578:	20 75 6e 
    257b:	49 89 07             	mov    %rax,(%r15)
    257e:	49 89 57 08          	mov    %rdx,0x8(%r15)
    2582:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2589:	74 6f 20 
    258c:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    2593:	73 74 61 
    2596:	49 89 47 10          	mov    %rax,0x10(%r15)
    259a:	49 89 57 18          	mov    %rdx,0x18(%r15)
    259e:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    25a5:	65 73 73 
    25a8:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    25af:	72 6f 6d 
    25b2:	49 89 47 20          	mov    %rax,0x20(%r15)
    25b6:	49 89 57 28          	mov    %rdx,0x28(%r15)
    25ba:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    25c1:	65 72 00 
    25c4:	49 89 47 30          	mov    %rax,0x30(%r15)
    25c8:	44 89 f7             	mov    %r14d,%edi
    25cb:	e8 00 eb ff ff       	callq  10d0 <close@plt>
    25d0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    25d5:	e9 64 ff ff ff       	jmpq   253e <submitr+0x53c>
    25da:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    25e1:	3a 20 52 
    25e4:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    25eb:	20 73 74 
    25ee:	49 89 07             	mov    %rax,(%r15)
    25f1:	49 89 57 08          	mov    %rdx,0x8(%r15)
    25f5:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    25fc:	63 6f 6e 
    25ff:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    2606:	20 61 6e 
    2609:	49 89 47 10          	mov    %rax,0x10(%r15)
    260d:	49 89 57 18          	mov    %rdx,0x18(%r15)
    2611:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    2618:	67 61 6c 
    261b:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    2622:	6e 70 72 
    2625:	49 89 47 20          	mov    %rax,0x20(%r15)
    2629:	49 89 57 28          	mov    %rdx,0x28(%r15)
    262d:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    2634:	6c 65 20 
    2637:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    263e:	63 74 65 
    2641:	49 89 47 30          	mov    %rax,0x30(%r15)
    2645:	49 89 57 38          	mov    %rdx,0x38(%r15)
    2649:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    2650:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    2655:	44 89 f7             	mov    %r14d,%edi
    2658:	e8 73 ea ff ff       	callq  10d0 <close@plt>
    265d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2662:	e9 d7 fe ff ff       	jmpq   253e <submitr+0x53c>
    2667:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    266e:	00 
    266f:	4c 8d 8c 24 60 40 00 	lea    0x4060(%rsp),%r9
    2676:	00 
    2677:	4c 8b 44 24 18       	mov    0x18(%rsp),%r8
    267c:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
    2681:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
    2686:	48 8d 35 8b 0e 00 00 	lea    0xe8b(%rip),%rsi        # 3518 <array.0+0x338>
    268d:	48 89 df             	mov    %rbx,%rdi
    2690:	b8 00 00 00 00       	mov    $0x0,%eax
    2695:	e8 06 eb ff ff       	callq  11a0 <sprintf@plt>
    269a:	48 89 df             	mov    %rbx,%rdi
    269d:	e8 ee e9 ff ff       	callq  1090 <strlen@plt>
    26a2:	48 89 c2             	mov    %rax,%rdx
    26a5:	48 89 de             	mov    %rbx,%rsi
    26a8:	44 89 f7             	mov    %r14d,%edi
    26ab:	e8 26 f8 ff ff       	callq  1ed6 <rio_writen>
    26b0:	48 85 c0             	test   %rax,%rax
    26b3:	0f 88 e4 fc ff ff    	js     239d <submitr+0x39b>
    26b9:	48 8d 9c 24 60 20 00 	lea    0x2060(%rsp),%rbx
    26c0:	00 
    26c1:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
    26c6:	48 8d 35 c8 0e 00 00 	lea    0xec8(%rip),%rsi        # 3595 <array.0+0x3b5>
    26cd:	48 89 df             	mov    %rbx,%rdi
    26d0:	b8 00 00 00 00       	mov    $0x0,%eax
    26d5:	e8 c6 ea ff ff       	callq  11a0 <sprintf@plt>
    26da:	48 89 df             	mov    %rbx,%rdi
    26dd:	e8 ae e9 ff ff       	callq  1090 <strlen@plt>
    26e2:	48 89 c2             	mov    %rax,%rdx
    26e5:	48 89 de             	mov    %rbx,%rsi
    26e8:	44 89 f7             	mov    %r14d,%edi
    26eb:	e8 e6 f7 ff ff       	callq  1ed6 <rio_writen>
    26f0:	48 85 c0             	test   %rax,%rax
    26f3:	0f 88 03 fd ff ff    	js     23fc <submitr+0x3fa>
    26f9:	44 89 74 24 50       	mov    %r14d,0x50(%rsp)
    26fe:	c7 44 24 54 00 00 00 	movl   $0x0,0x54(%rsp)
    2705:	00 
    2706:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    270b:	48 8d 44 24 60       	lea    0x60(%rsp),%rax
    2710:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    2715:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    271c:	00 
    271d:	ba 00 20 00 00       	mov    $0x2000,%edx
    2722:	e8 0f f8 ff ff       	callq  1f36 <rio_readlineb>
    2727:	48 85 c0             	test   %rax,%rax
    272a:	0f 8e 2b fd ff ff    	jle    245b <submitr+0x459>
    2730:	48 8d 4c 24 3c       	lea    0x3c(%rsp),%rcx
    2735:	48 8d 94 24 60 60 00 	lea    0x6060(%rsp),%rdx
    273c:	00 
    273d:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    2744:	00 
    2745:	4c 8d 84 24 60 80 00 	lea    0x8060(%rsp),%r8
    274c:	00 
    274d:	48 8d 35 4e 0e 00 00 	lea    0xe4e(%rip),%rsi        # 35a2 <array.0+0x3c2>
    2754:	b8 00 00 00 00       	mov    $0x0,%eax
    2759:	e8 02 ea ff ff       	callq  1160 <__isoc99_sscanf@plt>
    275e:	8b 54 24 3c          	mov    0x3c(%rsp),%edx
    2762:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
    2768:	0f 85 5e fd ff ff    	jne    24cc <submitr+0x4ca>
    276e:	48 8d 1d 2a 0e 00 00 	lea    0xe2a(%rip),%rbx        # 359f <array.0+0x3bf>
    2775:	48 8d bc 24 60 20 00 	lea    0x2060(%rsp),%rdi
    277c:	00 
    277d:	48 89 de             	mov    %rbx,%rsi
    2780:	e8 7b e9 ff ff       	callq  1100 <strcmp@plt>
    2785:	85 c0                	test   %eax,%eax
    2787:	0f 84 6a fd ff ff    	je     24f7 <submitr+0x4f5>
    278d:	48 8d b4 24 60 20 00 	lea    0x2060(%rsp),%rsi
    2794:	00 
    2795:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    279a:	ba 00 20 00 00       	mov    $0x2000,%edx
    279f:	e8 92 f7 ff ff       	callq  1f36 <rio_readlineb>
    27a4:	48 85 c0             	test   %rax,%rax
    27a7:	7f cc                	jg     2775 <submitr+0x773>
    27a9:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    27b0:	3a 20 43 
    27b3:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    27ba:	20 75 6e 
    27bd:	49 89 07             	mov    %rax,(%r15)
    27c0:	49 89 57 08          	mov    %rdx,0x8(%r15)
    27c4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    27cb:	74 6f 20 
    27ce:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    27d5:	68 65 61 
    27d8:	49 89 47 10          	mov    %rax,0x10(%r15)
    27dc:	49 89 57 18          	mov    %rdx,0x18(%r15)
    27e0:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    27e7:	66 72 6f 
    27ea:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    27f1:	76 65 72 
    27f4:	49 89 47 20          	mov    %rax,0x20(%r15)
    27f8:	49 89 57 28          	mov    %rdx,0x28(%r15)
    27fc:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    2801:	44 89 f7             	mov    %r14d,%edi
    2804:	e8 c7 e8 ff ff       	callq  10d0 <close@plt>
    2809:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    280e:	e9 2b fd ff ff       	jmpq   253e <submitr+0x53c>
    2813:	e8 88 e8 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000002818 <init_timeout>:
    2818:	85 ff                	test   %edi,%edi
    281a:	75 01                	jne    281d <init_timeout+0x5>
    281c:	c3                   	retq   
    281d:	53                   	push   %rbx
    281e:	89 fb                	mov    %edi,%ebx
    2820:	48 8d 35 84 f6 ff ff 	lea    -0x97c(%rip),%rsi        # 1eab <sigalrm_handler>
    2827:	bf 0e 00 00 00       	mov    $0xe,%edi
    282c:	e8 df e8 ff ff       	callq  1110 <signal@plt>
    2831:	85 db                	test   %ebx,%ebx
    2833:	b8 00 00 00 00       	mov    $0x0,%eax
    2838:	0f 49 c3             	cmovns %ebx,%eax
    283b:	89 c7                	mov    %eax,%edi
    283d:	e8 7e e8 ff ff       	callq  10c0 <alarm@plt>
    2842:	5b                   	pop    %rbx
    2843:	c3                   	retq   

0000000000002844 <init_driver>:
    2844:	41 54                	push   %r12
    2846:	55                   	push   %rbp
    2847:	53                   	push   %rbx
    2848:	48 83 ec 20          	sub    $0x20,%rsp
    284c:	48 89 fd             	mov    %rdi,%rbp
    284f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    2856:	00 00 
    2858:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    285d:	31 c0                	xor    %eax,%eax
    285f:	be 01 00 00 00       	mov    $0x1,%esi
    2864:	bf 0d 00 00 00       	mov    $0xd,%edi
    2869:	e8 a2 e8 ff ff       	callq  1110 <signal@plt>
    286e:	be 01 00 00 00       	mov    $0x1,%esi
    2873:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2878:	e8 93 e8 ff ff       	callq  1110 <signal@plt>
    287d:	be 01 00 00 00       	mov    $0x1,%esi
    2882:	bf 1d 00 00 00       	mov    $0x1d,%edi
    2887:	e8 84 e8 ff ff       	callq  1110 <signal@plt>
    288c:	ba 00 00 00 00       	mov    $0x0,%edx
    2891:	be 01 00 00 00       	mov    $0x1,%esi
    2896:	bf 02 00 00 00       	mov    $0x2,%edi
    289b:	e8 50 e9 ff ff       	callq  11f0 <socket@plt>
    28a0:	85 c0                	test   %eax,%eax
    28a2:	0f 88 97 00 00 00    	js     293f <init_driver+0xfb>
    28a8:	89 c3                	mov    %eax,%ebx
    28aa:	48 8d 3d 05 0d 00 00 	lea    0xd05(%rip),%rdi        # 35b6 <array.0+0x3d6>
    28b1:	e8 6a e8 ff ff       	callq  1120 <gethostbyname@plt>
    28b6:	48 85 c0             	test   %rax,%rax
    28b9:	0f 84 cc 00 00 00    	je     298b <init_driver+0x147>
    28bf:	49 89 e4             	mov    %rsp,%r12
    28c2:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    28c9:	00 
    28ca:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    28d1:	00 00 
    28d3:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    28d9:	48 63 50 14          	movslq 0x14(%rax),%rdx
    28dd:	48 8b 40 18          	mov    0x18(%rax),%rax
    28e1:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    28e6:	48 8b 30             	mov    (%rax),%rsi
    28e9:	e8 82 e8 ff ff       	callq  1170 <memmove@plt>
    28ee:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
    28f5:	ba 10 00 00 00       	mov    $0x10,%edx
    28fa:	4c 89 e6             	mov    %r12,%rsi
    28fd:	89 df                	mov    %ebx,%edi
    28ff:	e8 bc e8 ff ff       	callq  11c0 <connect@plt>
    2904:	85 c0                	test   %eax,%eax
    2906:	0f 88 e7 00 00 00    	js     29f3 <init_driver+0x1af>
    290c:	89 df                	mov    %ebx,%edi
    290e:	e8 bd e7 ff ff       	callq  10d0 <close@plt>
    2913:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    2919:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    291d:	b8 00 00 00 00       	mov    $0x0,%eax
    2922:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    2927:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    292e:	00 00 
    2930:	0f 85 e9 00 00 00    	jne    2a1f <init_driver+0x1db>
    2936:	48 83 c4 20          	add    $0x20,%rsp
    293a:	5b                   	pop    %rbx
    293b:	5d                   	pop    %rbp
    293c:	41 5c                	pop    %r12
    293e:	c3                   	retq   
    293f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    2946:	3a 20 43 
    2949:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    2950:	20 75 6e 
    2953:	48 89 45 00          	mov    %rax,0x0(%rbp)
    2957:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    295b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    2962:	74 6f 20 
    2965:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    296c:	65 20 73 
    296f:	48 89 45 10          	mov    %rax,0x10(%rbp)
    2973:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    2977:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    297e:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    2984:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2989:	eb 97                	jmp    2922 <init_driver+0xde>
    298b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    2992:	3a 20 44 
    2995:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    299c:	20 75 6e 
    299f:	48 89 45 00          	mov    %rax,0x0(%rbp)
    29a3:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    29a7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    29ae:	74 6f 20 
    29b1:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    29b8:	76 65 20 
    29bb:	48 89 45 10          	mov    %rax,0x10(%rbp)
    29bf:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    29c3:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    29ca:	72 20 61 
    29cd:	48 89 45 20          	mov    %rax,0x20(%rbp)
    29d1:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    29d8:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    29de:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    29e2:	89 df                	mov    %ebx,%edi
    29e4:	e8 e7 e6 ff ff       	callq  10d0 <close@plt>
    29e9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    29ee:	e9 2f ff ff ff       	jmpq   2922 <init_driver+0xde>
    29f3:	48 8d 15 bc 0b 00 00 	lea    0xbbc(%rip),%rdx        # 35b6 <array.0+0x3d6>
    29fa:	48 8d 35 67 0b 00 00 	lea    0xb67(%rip),%rsi        # 3568 <array.0+0x388>
    2a01:	48 89 ef             	mov    %rbp,%rdi
    2a04:	b8 00 00 00 00       	mov    $0x0,%eax
    2a09:	e8 92 e7 ff ff       	callq  11a0 <sprintf@plt>
    2a0e:	89 df                	mov    %ebx,%edi
    2a10:	e8 bb e6 ff ff       	callq  10d0 <close@plt>
    2a15:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2a1a:	e9 03 ff ff ff       	jmpq   2922 <init_driver+0xde>
    2a1f:	e8 7c e6 ff ff       	callq  10a0 <__stack_chk_fail@plt>

0000000000002a24 <driver_post>:
    2a24:	53                   	push   %rbx
    2a25:	4c 89 c3             	mov    %r8,%rbx
    2a28:	85 c9                	test   %ecx,%ecx
    2a2a:	75 17                	jne    2a43 <driver_post+0x1f>
    2a2c:	48 85 ff             	test   %rdi,%rdi
    2a2f:	74 05                	je     2a36 <driver_post+0x12>
    2a31:	80 3f 00             	cmpb   $0x0,(%rdi)
    2a34:	75 31                	jne    2a67 <driver_post+0x43>
    2a36:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a3b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a3f:	89 c8                	mov    %ecx,%eax
    2a41:	5b                   	pop    %rbx
    2a42:	c3                   	retq   
    2a43:	48 89 d6             	mov    %rdx,%rsi
    2a46:	48 8d 3d 74 0b 00 00 	lea    0xb74(%rip),%rdi        # 35c1 <array.0+0x3e1>
    2a4d:	b8 00 00 00 00       	mov    $0x0,%eax
    2a52:	e8 59 e6 ff ff       	callq  10b0 <printf@plt>
    2a57:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    2a5c:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    2a60:	b8 00 00 00 00       	mov    $0x0,%eax
    2a65:	eb da                	jmp    2a41 <driver_post+0x1d>
    2a67:	41 50                	push   %r8
    2a69:	52                   	push   %rdx
    2a6a:	4c 8d 0d 67 0b 00 00 	lea    0xb67(%rip),%r9        # 35d8 <array.0+0x3f8>
    2a71:	49 89 f0             	mov    %rsi,%r8
    2a74:	48 89 f9             	mov    %rdi,%rcx
    2a77:	48 8d 15 61 0b 00 00 	lea    0xb61(%rip),%rdx        # 35df <array.0+0x3ff>
    2a7e:	be 50 00 00 00       	mov    $0x50,%esi
    2a83:	48 8d 3d 2c 0b 00 00 	lea    0xb2c(%rip),%rdi        # 35b6 <array.0+0x3d6>
    2a8a:	e8 73 f5 ff ff       	callq  2002 <submitr>
    2a8f:	48 83 c4 10          	add    $0x10,%rsp
    2a93:	eb ac                	jmp    2a41 <driver_post+0x1d>
    2a95:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2a9c:	00 00 00 
    2a9f:	90                   	nop

0000000000002aa0 <__libc_csu_init>:
    2aa0:	f3 0f 1e fa          	endbr64 
    2aa4:	41 57                	push   %r15
    2aa6:	4c 8d 3d 3b 23 00 00 	lea    0x233b(%rip),%r15        # 4de8 <__frame_dummy_init_array_entry>
    2aad:	41 56                	push   %r14
    2aaf:	49 89 d6             	mov    %rdx,%r14
    2ab2:	41 55                	push   %r13
    2ab4:	49 89 f5             	mov    %rsi,%r13
    2ab7:	41 54                	push   %r12
    2ab9:	41 89 fc             	mov    %edi,%r12d
    2abc:	55                   	push   %rbp
    2abd:	48 8d 2d 2c 23 00 00 	lea    0x232c(%rip),%rbp        # 4df0 <__do_global_dtors_aux_fini_array_entry>
    2ac4:	53                   	push   %rbx
    2ac5:	4c 29 fd             	sub    %r15,%rbp
    2ac8:	48 83 ec 08          	sub    $0x8,%rsp
    2acc:	e8 2f e5 ff ff       	callq  1000 <_init>
    2ad1:	48 c1 fd 03          	sar    $0x3,%rbp
    2ad5:	74 1f                	je     2af6 <__libc_csu_init+0x56>
    2ad7:	31 db                	xor    %ebx,%ebx
    2ad9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    2ae0:	4c 89 f2             	mov    %r14,%rdx
    2ae3:	4c 89 ee             	mov    %r13,%rsi
    2ae6:	44 89 e7             	mov    %r12d,%edi
    2ae9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    2aed:	48 83 c3 01          	add    $0x1,%rbx
    2af1:	48 39 dd             	cmp    %rbx,%rbp
    2af4:	75 ea                	jne    2ae0 <__libc_csu_init+0x40>
    2af6:	48 83 c4 08          	add    $0x8,%rsp
    2afa:	5b                   	pop    %rbx
    2afb:	5d                   	pop    %rbp
    2afc:	41 5c                	pop    %r12
    2afe:	41 5d                	pop    %r13
    2b00:	41 5e                	pop    %r14
    2b02:	41 5f                	pop    %r15
    2b04:	c3                   	retq   
    2b05:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    2b0c:	00 00 00 00 

0000000000002b10 <__libc_csu_fini>:
    2b10:	f3 0f 1e fa          	endbr64 
    2b14:	c3                   	retq   

Disassembly of section .fini:

0000000000002b18 <_fini>:
    2b18:	f3 0f 1e fa          	endbr64 
    2b1c:	48 83 ec 08          	sub    $0x8,%rsp
    2b20:	48 83 c4 08          	add    $0x8,%rsp
    2b24:	c3                   	retq   
