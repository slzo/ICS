
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bc8 <_init>:
  400bc8:	48 83 ec 08          	sub    $0x8,%rsp
  400bcc:	48 8b 05 25 34 20 00 	mov    0x203425(%rip),%rax        # 603ff8 <__gmon_start__>
  400bd3:	48 85 c0             	test   %rax,%rax
  400bd6:	74 05                	je     400bdd <_init+0x15>
  400bd8:	e8 33 01 00 00       	callq  400d10 <__gmon_start__@plt>
  400bdd:	48 83 c4 08          	add    $0x8,%rsp
  400be1:	c3                   	retq   

Disassembly of section .plt:

0000000000400bf0 <.plt>:
  400bf0:	ff 35 12 34 20 00    	pushq  0x203412(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bf6:	ff 25 14 34 20 00    	jmpq   *0x203414(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c00 <strcasecmp@plt>:
  400c00:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604018 <strcasecmp@GLIBC_2.2.5>
  400c06:	68 00 00 00 00       	pushq  $0x0
  400c0b:	e9 e0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c10 <__errno_location@plt>:
  400c10:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604020 <__errno_location@GLIBC_2.2.5>
  400c16:	68 01 00 00 00       	pushq  $0x1
  400c1b:	e9 d0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c20 <srandom@plt>:
  400c20:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604028 <srandom@GLIBC_2.2.5>
  400c26:	68 02 00 00 00       	pushq  $0x2
  400c2b:	e9 c0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c30 <strncmp@plt>:
  400c30:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 604030 <strncmp@GLIBC_2.2.5>
  400c36:	68 03 00 00 00       	pushq  $0x3
  400c3b:	e9 b0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c40 <strcpy@plt>:
  400c40:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 604038 <strcpy@GLIBC_2.2.5>
  400c46:	68 04 00 00 00       	pushq  $0x4
  400c4b:	e9 a0 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c50 <puts@plt>:
  400c50:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 604040 <puts@GLIBC_2.2.5>
  400c56:	68 05 00 00 00       	pushq  $0x5
  400c5b:	e9 90 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c60 <write@plt>:
  400c60:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 604048 <write@GLIBC_2.2.5>
  400c66:	68 06 00 00 00       	pushq  $0x6
  400c6b:	e9 80 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c70 <mmap@plt>:
  400c70:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 604050 <mmap@GLIBC_2.2.5>
  400c76:	68 07 00 00 00       	pushq  $0x7
  400c7b:	e9 70 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c80 <printf@plt>:
  400c80:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 604058 <printf@GLIBC_2.2.5>
  400c86:	68 08 00 00 00       	pushq  $0x8
  400c8b:	e9 60 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400c90 <memset@plt>:
  400c90:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 604060 <memset@GLIBC_2.2.5>
  400c96:	68 09 00 00 00       	pushq  $0x9
  400c9b:	e9 50 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400ca0 <alarm@plt>:
  400ca0:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 604068 <alarm@GLIBC_2.2.5>
  400ca6:	68 0a 00 00 00       	pushq  $0xa
  400cab:	e9 40 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cb0 <close@plt>:
  400cb0:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 604070 <close@GLIBC_2.2.5>
  400cb6:	68 0b 00 00 00       	pushq  $0xb
  400cbb:	e9 30 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cc0 <read@plt>:
  400cc0:	ff 25 b2 33 20 00    	jmpq   *0x2033b2(%rip)        # 604078 <read@GLIBC_2.2.5>
  400cc6:	68 0c 00 00 00       	pushq  $0xc
  400ccb:	e9 20 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cd0 <__libc_start_main@plt>:
  400cd0:	ff 25 aa 33 20 00    	jmpq   *0x2033aa(%rip)        # 604080 <__libc_start_main@GLIBC_2.2.5>
  400cd6:	68 0d 00 00 00       	pushq  $0xd
  400cdb:	e9 10 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400ce0 <signal@plt>:
  400ce0:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 604088 <signal@GLIBC_2.2.5>
  400ce6:	68 0e 00 00 00       	pushq  $0xe
  400ceb:	e9 00 ff ff ff       	jmpq   400bf0 <.plt>

0000000000400cf0 <gethostbyname@plt>:
  400cf0:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 604090 <gethostbyname@GLIBC_2.2.5>
  400cf6:	68 0f 00 00 00       	pushq  $0xf
  400cfb:	e9 f0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d00 <fprintf@plt>:
  400d00:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 604098 <fprintf@GLIBC_2.2.5>
  400d06:	68 10 00 00 00       	pushq  $0x10
  400d0b:	e9 e0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d10 <__gmon_start__@plt>:
  400d10:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 6040a0 <__gmon_start__>
  400d16:	68 11 00 00 00       	pushq  $0x11
  400d1b:	e9 d0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d20 <strtol@plt>:
  400d20:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 6040a8 <strtol@GLIBC_2.2.5>
  400d26:	68 12 00 00 00       	pushq  $0x12
  400d2b:	e9 c0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d30 <memcpy@plt>:
  400d30:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 6040b0 <memcpy@GLIBC_2.14>
  400d36:	68 13 00 00 00       	pushq  $0x13
  400d3b:	e9 b0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d40 <time@plt>:
  400d40:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 6040b8 <time@GLIBC_2.2.5>
  400d46:	68 14 00 00 00       	pushq  $0x14
  400d4b:	e9 a0 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d50 <random@plt>:
  400d50:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 6040c0 <random@GLIBC_2.2.5>
  400d56:	68 15 00 00 00       	pushq  $0x15
  400d5b:	e9 90 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d60 <_IO_getc@plt>:
  400d60:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 6040c8 <_IO_getc@GLIBC_2.2.5>
  400d66:	68 16 00 00 00       	pushq  $0x16
  400d6b:	e9 80 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d70 <__isoc99_sscanf@plt>:
  400d70:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 6040d0 <__isoc99_sscanf@GLIBC_2.7>
  400d76:	68 17 00 00 00       	pushq  $0x17
  400d7b:	e9 70 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d80 <munmap@plt>:
  400d80:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 6040d8 <munmap@GLIBC_2.2.5>
  400d86:	68 18 00 00 00       	pushq  $0x18
  400d8b:	e9 60 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400d90 <bcopy@plt>:
  400d90:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 6040e0 <bcopy@GLIBC_2.2.5>
  400d96:	68 19 00 00 00       	pushq  $0x19
  400d9b:	e9 50 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400da0 <fopen@plt>:
  400da0:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 6040e8 <fopen@GLIBC_2.2.5>
  400da6:	68 1a 00 00 00       	pushq  $0x1a
  400dab:	e9 40 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400db0 <getopt@plt>:
  400db0:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 6040f0 <getopt@GLIBC_2.2.5>
  400db6:	68 1b 00 00 00       	pushq  $0x1b
  400dbb:	e9 30 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400dc0 <strtoul@plt>:
  400dc0:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 6040f8 <strtoul@GLIBC_2.2.5>
  400dc6:	68 1c 00 00 00       	pushq  $0x1c
  400dcb:	e9 20 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400dd0 <gethostname@plt>:
  400dd0:	ff 25 2a 33 20 00    	jmpq   *0x20332a(%rip)        # 604100 <gethostname@GLIBC_2.2.5>
  400dd6:	68 1d 00 00 00       	pushq  $0x1d
  400ddb:	e9 10 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400de0 <sprintf@plt>:
  400de0:	ff 25 22 33 20 00    	jmpq   *0x203322(%rip)        # 604108 <sprintf@GLIBC_2.2.5>
  400de6:	68 1e 00 00 00       	pushq  $0x1e
  400deb:	e9 00 fe ff ff       	jmpq   400bf0 <.plt>

0000000000400df0 <exit@plt>:
  400df0:	ff 25 1a 33 20 00    	jmpq   *0x20331a(%rip)        # 604110 <exit@GLIBC_2.2.5>
  400df6:	68 1f 00 00 00       	pushq  $0x1f
  400dfb:	e9 f0 fd ff ff       	jmpq   400bf0 <.plt>

0000000000400e00 <connect@plt>:
  400e00:	ff 25 12 33 20 00    	jmpq   *0x203312(%rip)        # 604118 <connect@GLIBC_2.2.5>
  400e06:	68 20 00 00 00       	pushq  $0x20
  400e0b:	e9 e0 fd ff ff       	jmpq   400bf0 <.plt>

0000000000400e10 <socket@plt>:
  400e10:	ff 25 0a 33 20 00    	jmpq   *0x20330a(%rip)        # 604120 <socket@GLIBC_2.2.5>
  400e16:	68 21 00 00 00       	pushq  $0x21
  400e1b:	e9 d0 fd ff ff       	jmpq   400bf0 <.plt>

Disassembly of section .text:

0000000000400e20 <_start>:
  400e20:	31 ed                	xor    %ebp,%ebp
  400e22:	49 89 d1             	mov    %rdx,%r9
  400e25:	5e                   	pop    %rsi
  400e26:	48 89 e2             	mov    %rsp,%rdx
  400e29:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e2d:	50                   	push   %rax
  400e2e:	54                   	push   %rsp
  400e2f:	49 c7 c0 10 2b 40 00 	mov    $0x402b10,%r8
  400e36:	48 c7 c1 a0 2a 40 00 	mov    $0x402aa0,%rcx
  400e3d:	48 c7 c7 e0 10 40 00 	mov    $0x4010e0,%rdi
  400e44:	e8 87 fe ff ff       	callq  400cd0 <__libc_start_main@plt>
  400e49:	f4                   	hlt    
  400e4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e50 <deregister_tm_clones>:
  400e50:	b8 b7 44 60 00       	mov    $0x6044b7,%eax
  400e55:	55                   	push   %rbp
  400e56:	48 2d b0 44 60 00    	sub    $0x6044b0,%rax
  400e5c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e60:	48 89 e5             	mov    %rsp,%rbp
  400e63:	77 02                	ja     400e67 <deregister_tm_clones+0x17>
  400e65:	5d                   	pop    %rbp
  400e66:	c3                   	retq   
  400e67:	b8 00 00 00 00       	mov    $0x0,%eax
  400e6c:	48 85 c0             	test   %rax,%rax
  400e6f:	74 f4                	je     400e65 <deregister_tm_clones+0x15>
  400e71:	5d                   	pop    %rbp
  400e72:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400e77:	ff e0                	jmpq   *%rax
  400e79:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e80 <register_tm_clones>:
  400e80:	b8 b0 44 60 00       	mov    $0x6044b0,%eax
  400e85:	55                   	push   %rbp
  400e86:	48 2d b0 44 60 00    	sub    $0x6044b0,%rax
  400e8c:	48 c1 f8 03          	sar    $0x3,%rax
  400e90:	48 89 e5             	mov    %rsp,%rbp
  400e93:	48 89 c2             	mov    %rax,%rdx
  400e96:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400e9a:	48 01 d0             	add    %rdx,%rax
  400e9d:	48 d1 f8             	sar    %rax
  400ea0:	75 02                	jne    400ea4 <register_tm_clones+0x24>
  400ea2:	5d                   	pop    %rbp
  400ea3:	c3                   	retq   
  400ea4:	ba 00 00 00 00       	mov    $0x0,%edx
  400ea9:	48 85 d2             	test   %rdx,%rdx
  400eac:	74 f4                	je     400ea2 <register_tm_clones+0x22>
  400eae:	5d                   	pop    %rbp
  400eaf:	48 89 c6             	mov    %rax,%rsi
  400eb2:	bf b0 44 60 00       	mov    $0x6044b0,%edi
  400eb7:	ff e2                	jmpq   *%rdx
  400eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ec0 <__do_global_dtors_aux>:
  400ec0:	80 3d 11 36 20 00 00 	cmpb   $0x0,0x203611(%rip)        # 6044d8 <completed.6355>
  400ec7:	75 11                	jne    400eda <__do_global_dtors_aux+0x1a>
  400ec9:	55                   	push   %rbp
  400eca:	48 89 e5             	mov    %rsp,%rbp
  400ecd:	e8 7e ff ff ff       	callq  400e50 <deregister_tm_clones>
  400ed2:	5d                   	pop    %rbp
  400ed3:	c6 05 fe 35 20 00 01 	movb   $0x1,0x2035fe(%rip)        # 6044d8 <completed.6355>
  400eda:	f3 c3                	repz retq 
  400edc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ee0 <frame_dummy>:
  400ee0:	48 83 3d 38 2f 20 00 	cmpq   $0x0,0x202f38(%rip)        # 603e20 <__JCR_END__>
  400ee7:	00 
  400ee8:	74 1e                	je     400f08 <frame_dummy+0x28>
  400eea:	b8 00 00 00 00       	mov    $0x0,%eax
  400eef:	48 85 c0             	test   %rax,%rax
  400ef2:	74 14                	je     400f08 <frame_dummy+0x28>
  400ef4:	55                   	push   %rbp
  400ef5:	bf 20 3e 60 00       	mov    $0x603e20,%edi
  400efa:	48 89 e5             	mov    %rsp,%rbp
  400efd:	ff d0                	callq  *%rax
  400eff:	5d                   	pop    %rbp
  400f00:	e9 7b ff ff ff       	jmpq   400e80 <register_tm_clones>
  400f05:	0f 1f 00             	nopl   (%rax)
  400f08:	e9 73 ff ff ff       	jmpq   400e80 <register_tm_clones>
  400f0d:	0f 1f 00             	nopl   (%rax)

0000000000400f10 <usage>:
  400f10:	48 83 ec 08          	sub    $0x8,%rsp
  400f14:	48 89 fe             	mov    %rdi,%rsi
  400f17:	83 3d ea 35 20 00 00 	cmpl   $0x0,0x2035ea(%rip)        # 604508 <is_checker>
  400f1e:	74 39                	je     400f59 <usage+0x49>
  400f20:	bf 30 2b 40 00       	mov    $0x402b30,%edi
  400f25:	b8 00 00 00 00       	mov    $0x0,%eax
  400f2a:	e8 51 fd ff ff       	callq  400c80 <printf@plt>
  400f2f:	bf 68 2b 40 00       	mov    $0x402b68,%edi
  400f34:	e8 17 fd ff ff       	callq  400c50 <puts@plt>
  400f39:	bf e0 2c 40 00       	mov    $0x402ce0,%edi
  400f3e:	e8 0d fd ff ff       	callq  400c50 <puts@plt>
  400f43:	bf 90 2b 40 00       	mov    $0x402b90,%edi
  400f48:	e8 03 fd ff ff       	callq  400c50 <puts@plt>
  400f4d:	bf fa 2c 40 00       	mov    $0x402cfa,%edi
  400f52:	e8 f9 fc ff ff       	callq  400c50 <puts@plt>
  400f57:	eb 2d                	jmp    400f86 <usage+0x76>
  400f59:	bf 16 2d 40 00       	mov    $0x402d16,%edi
  400f5e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f63:	e8 18 fd ff ff       	callq  400c80 <printf@plt>
  400f68:	bf b8 2b 40 00       	mov    $0x402bb8,%edi
  400f6d:	e8 de fc ff ff       	callq  400c50 <puts@plt>
  400f72:	bf e0 2b 40 00       	mov    $0x402be0,%edi
  400f77:	e8 d4 fc ff ff       	callq  400c50 <puts@plt>
  400f7c:	bf 34 2d 40 00       	mov    $0x402d34,%edi
  400f81:	e8 ca fc ff ff       	callq  400c50 <puts@plt>
  400f86:	bf 00 00 00 00       	mov    $0x0,%edi
  400f8b:	e8 60 fe ff ff       	callq  400df0 <exit@plt>

0000000000400f90 <initialize_target>:
  400f90:	55                   	push   %rbp
  400f91:	53                   	push   %rbx
  400f92:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f99:	89 f5                	mov    %esi,%ebp
  400f9b:	89 3d 57 35 20 00    	mov    %edi,0x203557(%rip)        # 6044f8 <check_level>
  400fa1:	8b 3d c1 31 20 00    	mov    0x2031c1(%rip),%edi        # 604168 <target_id>
  400fa7:	e8 c7 1a 00 00       	callq  402a73 <gencookie>
  400fac:	89 05 52 35 20 00    	mov    %eax,0x203552(%rip)        # 604504 <cookie>
  400fb2:	89 c7                	mov    %eax,%edi
  400fb4:	e8 ba 1a 00 00       	callq  402a73 <gencookie>
  400fb9:	89 05 41 35 20 00    	mov    %eax,0x203541(%rip)        # 604500 <authkey>
  400fbf:	8b 05 a3 31 20 00    	mov    0x2031a3(%rip),%eax        # 604168 <target_id>
  400fc5:	8d 78 01             	lea    0x1(%rax),%edi
  400fc8:	e8 53 fc ff ff       	callq  400c20 <srandom@plt>
  400fcd:	e8 7e fd ff ff       	callq  400d50 <random@plt>
  400fd2:	89 c7                	mov    %eax,%edi
  400fd4:	e8 ca 02 00 00       	callq  4012a3 <scramble>
  400fd9:	89 c3                	mov    %eax,%ebx
  400fdb:	85 ed                	test   %ebp,%ebp
  400fdd:	74 18                	je     400ff7 <initialize_target+0x67>
  400fdf:	bf 00 00 00 00       	mov    $0x0,%edi
  400fe4:	e8 57 fd ff ff       	callq  400d40 <time@plt>
  400fe9:	89 c7                	mov    %eax,%edi
  400feb:	e8 30 fc ff ff       	callq  400c20 <srandom@plt>
  400ff0:	e8 5b fd ff ff       	callq  400d50 <random@plt>
  400ff5:	eb 05                	jmp    400ffc <initialize_target+0x6c>
  400ff7:	b8 00 00 00 00       	mov    $0x0,%eax
  400ffc:	01 c3                	add    %eax,%ebx
  400ffe:	0f b7 db             	movzwl %bx,%ebx
  401001:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  401008:	89 c0                	mov    %eax,%eax
  40100a:	48 89 05 8f 34 20 00 	mov    %rax,0x20348f(%rip)        # 6044a0 <buf_offset>
  401011:	c6 05 10 41 20 00 63 	movb   $0x63,0x204110(%rip)        # 605128 <target_prefix>
  401018:	83 3d 89 34 20 00 00 	cmpl   $0x0,0x203489(%rip)        # 6044a8 <notify>
  40101f:	0f 84 b1 00 00 00    	je     4010d6 <initialize_target+0x146>
  401025:	83 3d dc 34 20 00 00 	cmpl   $0x0,0x2034dc(%rip)        # 604508 <is_checker>
  40102c:	0f 85 a4 00 00 00    	jne    4010d6 <initialize_target+0x146>
  401032:	be 00 01 00 00       	mov    $0x100,%esi
  401037:	48 89 e7             	mov    %rsp,%rdi
  40103a:	e8 91 fd ff ff       	callq  400dd0 <gethostname@plt>
  40103f:	85 c0                	test   %eax,%eax
  401041:	74 25                	je     401068 <initialize_target+0xd8>
  401043:	bf 10 2c 40 00       	mov    $0x402c10,%edi
  401048:	e8 03 fc ff ff       	callq  400c50 <puts@plt>
  40104d:	bf 08 00 00 00       	mov    $0x8,%edi
  401052:	e8 99 fd ff ff       	callq  400df0 <exit@plt>
  401057:	48 89 e6             	mov    %rsp,%rsi
  40105a:	e8 a1 fb ff ff       	callq  400c00 <strcasecmp@plt>
  40105f:	85 c0                	test   %eax,%eax
  401061:	74 21                	je     401084 <initialize_target+0xf4>
  401063:	83 c3 01             	add    $0x1,%ebx
  401066:	eb 05                	jmp    40106d <initialize_target+0xdd>
  401068:	bb 00 00 00 00       	mov    $0x0,%ebx
  40106d:	48 63 c3             	movslq %ebx,%rax
  401070:	48 8b 3c c5 80 41 60 	mov    0x604180(,%rax,8),%rdi
  401077:	00 
  401078:	48 85 ff             	test   %rdi,%rdi
  40107b:	75 da                	jne    401057 <initialize_target+0xc7>
  40107d:	b8 00 00 00 00       	mov    $0x0,%eax
  401082:	eb 05                	jmp    401089 <initialize_target+0xf9>
  401084:	b8 01 00 00 00       	mov    $0x1,%eax
  401089:	85 c0                	test   %eax,%eax
  40108b:	75 17                	jne    4010a4 <initialize_target+0x114>
  40108d:	48 89 e6             	mov    %rsp,%rsi
  401090:	bf 48 2c 40 00       	mov    $0x402c48,%edi
  401095:	e8 e6 fb ff ff       	callq  400c80 <printf@plt>
  40109a:	bf 08 00 00 00       	mov    $0x8,%edi
  40109f:	e8 4c fd ff ff       	callq  400df0 <exit@plt>
  4010a4:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  4010ab:	00 
  4010ac:	e8 59 17 00 00       	callq  40280a <init_driver>
  4010b1:	85 c0                	test   %eax,%eax
  4010b3:	79 21                	jns    4010d6 <initialize_target+0x146>
  4010b5:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  4010bc:	00 
  4010bd:	bf 88 2c 40 00       	mov    $0x402c88,%edi
  4010c2:	b8 00 00 00 00       	mov    $0x0,%eax
  4010c7:	e8 b4 fb ff ff       	callq  400c80 <printf@plt>
  4010cc:	bf 08 00 00 00       	mov    $0x8,%edi
  4010d1:	e8 1a fd ff ff       	callq  400df0 <exit@plt>
  4010d6:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  4010dd:	5b                   	pop    %rbx
  4010de:	5d                   	pop    %rbp
  4010df:	c3                   	retq   

00000000004010e0 <main>:
  4010e0:	41 56                	push   %r14
  4010e2:	41 55                	push   %r13
  4010e4:	41 54                	push   %r12
  4010e6:	55                   	push   %rbp
  4010e7:	53                   	push   %rbx
  4010e8:	41 89 fc             	mov    %edi,%r12d
  4010eb:	48 89 f3             	mov    %rsi,%rbx
  4010ee:	be 31 1c 40 00       	mov    $0x401c31,%esi
  4010f3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010f8:	e8 e3 fb ff ff       	callq  400ce0 <signal@plt>
  4010fd:	be e3 1b 40 00       	mov    $0x401be3,%esi
  401102:	bf 07 00 00 00       	mov    $0x7,%edi
  401107:	e8 d4 fb ff ff       	callq  400ce0 <signal@plt>
  40110c:	be 7f 1c 40 00       	mov    $0x401c7f,%esi
  401111:	bf 04 00 00 00       	mov    $0x4,%edi
  401116:	e8 c5 fb ff ff       	callq  400ce0 <signal@plt>
  40111b:	83 3d e6 33 20 00 00 	cmpl   $0x0,0x2033e6(%rip)        # 604508 <is_checker>
  401122:	74 20                	je     401144 <main+0x64>
  401124:	be cd 1c 40 00       	mov    $0x401ccd,%esi
  401129:	bf 0e 00 00 00       	mov    $0xe,%edi
  40112e:	e8 ad fb ff ff       	callq  400ce0 <signal@plt>
  401133:	bf 05 00 00 00       	mov    $0x5,%edi
  401138:	e8 63 fb ff ff       	callq  400ca0 <alarm@plt>
  40113d:	bd 52 2d 40 00       	mov    $0x402d52,%ebp
  401142:	eb 05                	jmp    401149 <main+0x69>
  401144:	bd 4d 2d 40 00       	mov    $0x402d4d,%ebp
  401149:	48 8b 05 70 33 20 00 	mov    0x203370(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  401150:	48 89 05 99 33 20 00 	mov    %rax,0x203399(%rip)        # 6044f0 <infile>
  401157:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40115d:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401163:	e9 b9 00 00 00       	jmpq   401221 <main+0x141>
  401168:	83 e8 61             	sub    $0x61,%eax
  40116b:	3c 10                	cmp    $0x10,%al
  40116d:	0f 87 93 00 00 00    	ja     401206 <main+0x126>
  401173:	0f b6 c0             	movzbl %al,%eax
  401176:	ff 24 c5 98 2d 40 00 	jmpq   *0x402d98(,%rax,8)
  40117d:	48 8b 3b             	mov    (%rbx),%rdi
  401180:	e8 8b fd ff ff       	callq  400f10 <usage>
  401185:	be fd 2f 40 00       	mov    $0x402ffd,%esi
  40118a:	48 8b 3d 37 33 20 00 	mov    0x203337(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  401191:	e8 0a fc ff ff       	callq  400da0 <fopen@plt>
  401196:	48 89 05 53 33 20 00 	mov    %rax,0x203353(%rip)        # 6044f0 <infile>
  40119d:	48 85 c0             	test   %rax,%rax
  4011a0:	75 7f                	jne    401221 <main+0x141>
  4011a2:	48 8b 15 1f 33 20 00 	mov    0x20331f(%rip),%rdx        # 6044c8 <optarg@@GLIBC_2.2.5>
  4011a9:	be 5a 2d 40 00       	mov    $0x402d5a,%esi
  4011ae:	48 8b 3d 1b 33 20 00 	mov    0x20331b(%rip),%rdi        # 6044d0 <stderr@@GLIBC_2.2.5>
  4011b5:	e8 46 fb ff ff       	callq  400d00 <fprintf@plt>
  4011ba:	b8 01 00 00 00       	mov    $0x1,%eax
  4011bf:	e9 d6 00 00 00       	jmpq   40129a <main+0x1ba>
  4011c4:	ba 10 00 00 00       	mov    $0x10,%edx
  4011c9:	be 00 00 00 00       	mov    $0x0,%esi
  4011ce:	48 8b 3d f3 32 20 00 	mov    0x2032f3(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  4011d5:	e8 e6 fb ff ff       	callq  400dc0 <strtoul@plt>
  4011da:	41 89 c6             	mov    %eax,%r14d
  4011dd:	eb 42                	jmp    401221 <main+0x141>
  4011df:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011e4:	be 00 00 00 00       	mov    $0x0,%esi
  4011e9:	48 8b 3d d8 32 20 00 	mov    0x2032d8(%rip),%rdi        # 6044c8 <optarg@@GLIBC_2.2.5>
  4011f0:	e8 2b fb ff ff       	callq  400d20 <strtol@plt>
  4011f5:	41 89 c5             	mov    %eax,%r13d
  4011f8:	eb 27                	jmp    401221 <main+0x141>
  4011fa:	c7 05 a4 32 20 00 00 	movl   $0x0,0x2032a4(%rip)        # 6044a8 <notify>
  401201:	00 00 00 
  401204:	eb 1b                	jmp    401221 <main+0x141>
  401206:	40 0f be f6          	movsbl %sil,%esi
  40120a:	bf 77 2d 40 00       	mov    $0x402d77,%edi
  40120f:	b8 00 00 00 00       	mov    $0x0,%eax
  401214:	e8 67 fa ff ff       	callq  400c80 <printf@plt>
  401219:	48 8b 3b             	mov    (%rbx),%rdi
  40121c:	e8 ef fc ff ff       	callq  400f10 <usage>
  401221:	48 89 ea             	mov    %rbp,%rdx
  401224:	48 89 de             	mov    %rbx,%rsi
  401227:	44 89 e7             	mov    %r12d,%edi
  40122a:	e8 81 fb ff ff       	callq  400db0 <getopt@plt>
  40122f:	89 c6                	mov    %eax,%esi
  401231:	3c ff                	cmp    $0xff,%al
  401233:	0f 85 2f ff ff ff    	jne    401168 <main+0x88>
  401239:	be 00 00 00 00       	mov    $0x0,%esi
  40123e:	44 89 ef             	mov    %r13d,%edi
  401241:	e8 4a fd ff ff       	callq  400f90 <initialize_target>
  401246:	83 3d bb 32 20 00 00 	cmpl   $0x0,0x2032bb(%rip)        # 604508 <is_checker>
  40124d:	74 25                	je     401274 <main+0x194>
  40124f:	44 3b 35 aa 32 20 00 	cmp    0x2032aa(%rip),%r14d        # 604500 <authkey>
  401256:	74 1c                	je     401274 <main+0x194>
  401258:	44 89 f6             	mov    %r14d,%esi
  40125b:	bf b0 2c 40 00       	mov    $0x402cb0,%edi
  401260:	b8 00 00 00 00       	mov    $0x0,%eax
  401265:	e8 16 fa ff ff       	callq  400c80 <printf@plt>
  40126a:	b8 00 00 00 00       	mov    $0x0,%eax
  40126f:	e8 77 06 00 00       	callq  4018eb <check_fail>
  401274:	8b 35 8a 32 20 00    	mov    0x20328a(%rip),%esi        # 604504 <cookie>
  40127a:	bf 8a 2d 40 00       	mov    $0x402d8a,%edi
  40127f:	b8 00 00 00 00       	mov    $0x0,%eax
  401284:	e8 f7 f9 ff ff       	callq  400c80 <printf@plt>
  401289:	48 8b 3d 10 32 20 00 	mov    0x203210(%rip),%rdi        # 6044a0 <buf_offset>
  401290:	e8 07 0b 00 00       	callq  401d9c <stable_launch>
  401295:	b8 00 00 00 00       	mov    $0x0,%eax
  40129a:	5b                   	pop    %rbx
  40129b:	5d                   	pop    %rbp
  40129c:	41 5c                	pop    %r12
  40129e:	41 5d                	pop    %r13
  4012a0:	41 5e                	pop    %r14
  4012a2:	c3                   	retq   

00000000004012a3 <scramble>:
  4012a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4012a8:	eb 11                	jmp    4012bb <scramble+0x18>
  4012aa:	69 c8 0e e6 00 00    	imul   $0xe60e,%eax,%ecx
  4012b0:	01 f9                	add    %edi,%ecx
  4012b2:	89 c2                	mov    %eax,%edx
  4012b4:	89 4c 94 d0          	mov    %ecx,-0x30(%rsp,%rdx,4)
  4012b8:	83 c0 01             	add    $0x1,%eax
  4012bb:	83 f8 09             	cmp    $0x9,%eax
  4012be:	76 ea                	jbe    4012aa <scramble+0x7>
  4012c0:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4012c4:	69 c0 a9 e0 00 00    	imul   $0xe0a9,%eax,%eax
  4012ca:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4012ce:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4012d2:	69 c0 0f 2a 00 00    	imul   $0x2a0f,%eax,%eax
  4012d8:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4012dc:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012e0:	69 c0 d1 6d 00 00    	imul   $0x6dd1,%eax,%eax
  4012e6:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012ea:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012ee:	69 c0 e5 39 00 00    	imul   $0x39e5,%eax,%eax
  4012f4:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012f8:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4012fc:	69 c0 36 ef 00 00    	imul   $0xef36,%eax,%eax
  401302:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401306:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40130a:	69 c0 f0 4d 00 00    	imul   $0x4df0,%eax,%eax
  401310:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401314:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401318:	69 c0 e8 2c 00 00    	imul   $0x2ce8,%eax,%eax
  40131e:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401322:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401326:	69 c0 c9 e9 00 00    	imul   $0xe9c9,%eax,%eax
  40132c:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401330:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401334:	69 c0 ab 54 00 00    	imul   $0x54ab,%eax,%eax
  40133a:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40133e:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401342:	69 c0 43 a6 00 00    	imul   $0xa643,%eax,%eax
  401348:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40134c:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401350:	69 c0 fa a7 00 00    	imul   $0xa7fa,%eax,%eax
  401356:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40135a:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40135e:	69 c0 16 c5 00 00    	imul   $0xc516,%eax,%eax
  401364:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401368:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40136c:	69 c0 94 c8 00 00    	imul   $0xc894,%eax,%eax
  401372:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401376:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40137a:	69 c0 5c c2 00 00    	imul   $0xc25c,%eax,%eax
  401380:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401384:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401388:	69 c0 c5 bb 00 00    	imul   $0xbbc5,%eax,%eax
  40138e:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401392:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401396:	69 c0 38 52 00 00    	imul   $0x5238,%eax,%eax
  40139c:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4013a0:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4013a4:	69 c0 f5 7e 00 00    	imul   $0x7ef5,%eax,%eax
  4013aa:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013ae:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013b2:	69 c0 21 2c 00 00    	imul   $0x2c21,%eax,%eax
  4013b8:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013bc:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4013c0:	69 c0 b9 23 00 00    	imul   $0x23b9,%eax,%eax
  4013c6:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4013ca:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4013ce:	69 c0 da 21 00 00    	imul   $0x21da,%eax,%eax
  4013d4:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4013d8:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4013dc:	69 c0 1f fb 00 00    	imul   $0xfb1f,%eax,%eax
  4013e2:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4013e6:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4013ea:	69 c0 e3 43 00 00    	imul   $0x43e3,%eax,%eax
  4013f0:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4013f4:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013f8:	69 c0 06 44 00 00    	imul   $0x4406,%eax,%eax
  4013fe:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401402:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401406:	69 c0 14 09 00 00    	imul   $0x914,%eax,%eax
  40140c:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401410:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401414:	69 c0 d7 d0 00 00    	imul   $0xd0d7,%eax,%eax
  40141a:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40141e:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401422:	69 c0 de be 00 00    	imul   $0xbede,%eax,%eax
  401428:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40142c:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401430:	69 c0 d6 8e 00 00    	imul   $0x8ed6,%eax,%eax
  401436:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40143a:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40143e:	69 c0 45 98 00 00    	imul   $0x9845,%eax,%eax
  401444:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401448:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40144c:	69 c0 f6 0b 00 00    	imul   $0xbf6,%eax,%eax
  401452:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401456:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40145a:	69 c0 94 c3 00 00    	imul   $0xc394,%eax,%eax
  401460:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401464:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401468:	69 c0 3e 4d 00 00    	imul   $0x4d3e,%eax,%eax
  40146e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401472:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401476:	69 c0 2a 64 00 00    	imul   $0x642a,%eax,%eax
  40147c:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401480:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401484:	69 c0 13 92 00 00    	imul   $0x9213,%eax,%eax
  40148a:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40148e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401492:	69 c0 fa b8 00 00    	imul   $0xb8fa,%eax,%eax
  401498:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40149c:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4014a0:	69 c0 51 f6 00 00    	imul   $0xf651,%eax,%eax
  4014a6:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4014aa:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4014ae:	69 c0 bc c8 00 00    	imul   $0xc8bc,%eax,%eax
  4014b4:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4014b8:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4014bc:	69 c0 a0 4a 00 00    	imul   $0x4aa0,%eax,%eax
  4014c2:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014c6:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4014ca:	69 c0 79 19 00 00    	imul   $0x1979,%eax,%eax
  4014d0:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4014d4:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4014d8:	69 c0 4c 3a 00 00    	imul   $0x3a4c,%eax,%eax
  4014de:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4014e2:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4014e6:	69 c0 57 27 00 00    	imul   $0x2757,%eax,%eax
  4014ec:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4014f0:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4014f4:	69 c0 e4 d1 00 00    	imul   $0xd1e4,%eax,%eax
  4014fa:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4014fe:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401502:	69 c0 f6 83 00 00    	imul   $0x83f6,%eax,%eax
  401508:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40150c:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401510:	69 c0 2a 6a 00 00    	imul   $0x6a2a,%eax,%eax
  401516:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40151a:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40151e:	69 c0 24 b8 00 00    	imul   $0xb824,%eax,%eax
  401524:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401528:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40152c:	69 c0 dc 76 00 00    	imul   $0x76dc,%eax,%eax
  401532:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401536:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40153a:	69 c0 dd 3d 00 00    	imul   $0x3ddd,%eax,%eax
  401540:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401544:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401548:	69 c0 85 91 00 00    	imul   $0x9185,%eax,%eax
  40154e:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401552:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401556:	69 c0 4f 90 00 00    	imul   $0x904f,%eax,%eax
  40155c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401560:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401564:	69 c0 53 32 00 00    	imul   $0x3253,%eax,%eax
  40156a:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40156e:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401572:	69 c0 66 d9 00 00    	imul   $0xd966,%eax,%eax
  401578:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40157c:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401580:	69 c0 1e 24 00 00    	imul   $0x241e,%eax,%eax
  401586:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40158a:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40158e:	69 c0 15 1a 00 00    	imul   $0x1a15,%eax,%eax
  401594:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401598:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40159c:	69 c0 c2 ae 00 00    	imul   $0xaec2,%eax,%eax
  4015a2:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4015a6:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4015aa:	69 c0 64 fd 00 00    	imul   $0xfd64,%eax,%eax
  4015b0:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015b4:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015b8:	69 c0 1b 56 00 00    	imul   $0x561b,%eax,%eax
  4015be:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015c2:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015c6:	69 c0 33 f4 00 00    	imul   $0xf433,%eax,%eax
  4015cc:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015d0:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4015d4:	69 c0 f1 0a 00 00    	imul   $0xaf1,%eax,%eax
  4015da:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4015de:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015e2:	69 c0 b9 88 00 00    	imul   $0x88b9,%eax,%eax
  4015e8:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015ec:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4015f0:	69 c0 64 94 00 00    	imul   $0x9464,%eax,%eax
  4015f6:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4015fa:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4015fe:	69 c0 3c eb 00 00    	imul   $0xeb3c,%eax,%eax
  401604:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401608:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40160c:	69 c0 97 bc 00 00    	imul   $0xbc97,%eax,%eax
  401612:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401616:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40161a:	69 c0 5b cf 00 00    	imul   $0xcf5b,%eax,%eax
  401620:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401624:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401628:	69 c0 21 cb 00 00    	imul   $0xcb21,%eax,%eax
  40162e:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401632:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401636:	69 c0 b5 71 00 00    	imul   $0x71b5,%eax,%eax
  40163c:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401640:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401644:	69 c0 f4 a8 00 00    	imul   $0xa8f4,%eax,%eax
  40164a:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40164e:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401652:	69 c0 18 26 00 00    	imul   $0x2618,%eax,%eax
  401658:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40165c:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401660:	69 c0 3e ed 00 00    	imul   $0xed3e,%eax,%eax
  401666:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40166a:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40166e:	69 c0 d1 3b 00 00    	imul   $0x3bd1,%eax,%eax
  401674:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401678:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40167c:	69 c0 bc 73 00 00    	imul   $0x73bc,%eax,%eax
  401682:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401686:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40168a:	69 c0 0f 85 00 00    	imul   $0x850f,%eax,%eax
  401690:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401694:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401698:	69 c0 f1 5d 00 00    	imul   $0x5df1,%eax,%eax
  40169e:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016a2:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4016a6:	69 c0 d7 f1 00 00    	imul   $0xf1d7,%eax,%eax
  4016ac:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4016b0:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4016b4:	69 c0 6b f1 00 00    	imul   $0xf16b,%eax,%eax
  4016ba:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4016be:	ba 00 00 00 00       	mov    $0x0,%edx
  4016c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4016c8:	eb 0b                	jmp    4016d5 <scramble+0x432>
  4016ca:	89 d1                	mov    %edx,%ecx
  4016cc:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  4016d0:	01 c8                	add    %ecx,%eax
  4016d2:	83 c2 01             	add    $0x1,%edx
  4016d5:	83 fa 09             	cmp    $0x9,%edx
  4016d8:	76 f0                	jbe    4016ca <scramble+0x427>
  4016da:	f3 c3                	repz retq 

00000000004016dc <getbuf>:
  4016dc:	48 83 ec 18          	sub    $0x18,%rsp
  4016e0:	48 89 e7             	mov    %rsp,%rdi
  4016e3:	e8 32 02 00 00       	callq  40191a <Gets>
  4016e8:	b8 01 00 00 00       	mov    $0x1,%eax
  4016ed:	48 83 c4 18          	add    $0x18,%rsp
  4016f1:	c3                   	retq   

00000000004016f2 <touch1>:
  4016f2:	48 83 ec 08          	sub    $0x8,%rsp
  4016f6:	c7 05 fc 2d 20 00 01 	movl   $0x1,0x202dfc(%rip)        # 6044fc <vlevel>
  4016fd:	00 00 00 
  401700:	bf 54 2e 40 00       	mov    $0x402e54,%edi
  401705:	e8 46 f5 ff ff       	callq  400c50 <puts@plt>
  40170a:	bf 01 00 00 00       	mov    $0x1,%edi
  40170f:	e8 f5 03 00 00       	callq  401b09 <validate>
  401714:	bf 00 00 00 00       	mov    $0x0,%edi
  401719:	e8 d2 f6 ff ff       	callq  400df0 <exit@plt>

000000000040171e <touch2>:
  40171e:	48 83 ec 08          	sub    $0x8,%rsp
  401722:	89 fe                	mov    %edi,%esi
  401724:	c7 05 ce 2d 20 00 02 	movl   $0x2,0x202dce(%rip)        # 6044fc <vlevel>
  40172b:	00 00 00 
  40172e:	3b 3d d0 2d 20 00    	cmp    0x202dd0(%rip),%edi        # 604504 <cookie>
  401734:	75 1b                	jne    401751 <touch2+0x33>
  401736:	bf 78 2e 40 00       	mov    $0x402e78,%edi
  40173b:	b8 00 00 00 00       	mov    $0x0,%eax
  401740:	e8 3b f5 ff ff       	callq  400c80 <printf@plt>
  401745:	bf 02 00 00 00       	mov    $0x2,%edi
  40174a:	e8 ba 03 00 00       	callq  401b09 <validate>
  40174f:	eb 19                	jmp    40176a <touch2+0x4c>
  401751:	bf a0 2e 40 00       	mov    $0x402ea0,%edi
  401756:	b8 00 00 00 00       	mov    $0x0,%eax
  40175b:	e8 20 f5 ff ff       	callq  400c80 <printf@plt>
  401760:	bf 02 00 00 00       	mov    $0x2,%edi
  401765:	e8 51 04 00 00       	callq  401bbb <fail>
  40176a:	bf 00 00 00 00       	mov    $0x0,%edi
  40176f:	e8 7c f6 ff ff       	callq  400df0 <exit@plt>

0000000000401774 <hexmatch>:
  401774:	41 54                	push   %r12
  401776:	55                   	push   %rbp
  401777:	53                   	push   %rbx
  401778:	48 83 ec 70          	sub    $0x70,%rsp
  40177c:	41 89 fc             	mov    %edi,%r12d
  40177f:	48 89 f5             	mov    %rsi,%rbp
  401782:	e8 c9 f5 ff ff       	callq  400d50 <random@plt>
  401787:	48 89 c1             	mov    %rax,%rcx
  40178a:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401791:	0a d7 a3 
  401794:	48 f7 ea             	imul   %rdx
  401797:	48 8d 04 0a          	lea    (%rdx,%rcx,1),%rax
  40179b:	48 c1 f8 06          	sar    $0x6,%rax
  40179f:	48 89 ce             	mov    %rcx,%rsi
  4017a2:	48 c1 fe 3f          	sar    $0x3f,%rsi
  4017a6:	48 29 f0             	sub    %rsi,%rax
  4017a9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4017ad:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4017b1:	48 c1 e0 02          	shl    $0x2,%rax
  4017b5:	48 29 c1             	sub    %rax,%rcx
  4017b8:	48 8d 1c 0c          	lea    (%rsp,%rcx,1),%rbx
  4017bc:	44 89 e2             	mov    %r12d,%edx
  4017bf:	be 71 2e 40 00       	mov    $0x402e71,%esi
  4017c4:	48 89 df             	mov    %rbx,%rdi
  4017c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4017cc:	e8 0f f6 ff ff       	callq  400de0 <sprintf@plt>
  4017d1:	ba 09 00 00 00       	mov    $0x9,%edx
  4017d6:	48 89 de             	mov    %rbx,%rsi
  4017d9:	48 89 ef             	mov    %rbp,%rdi
  4017dc:	e8 4f f4 ff ff       	callq  400c30 <strncmp@plt>
  4017e1:	85 c0                	test   %eax,%eax
  4017e3:	0f 94 c0             	sete   %al
  4017e6:	0f b6 c0             	movzbl %al,%eax
  4017e9:	48 83 c4 70          	add    $0x70,%rsp
  4017ed:	5b                   	pop    %rbx
  4017ee:	5d                   	pop    %rbp
  4017ef:	41 5c                	pop    %r12
  4017f1:	c3                   	retq   

00000000004017f2 <touch3>:
  4017f2:	53                   	push   %rbx
  4017f3:	48 89 fb             	mov    %rdi,%rbx
  4017f6:	c7 05 fc 2c 20 00 03 	movl   $0x3,0x202cfc(%rip)        # 6044fc <vlevel>
  4017fd:	00 00 00 
  401800:	48 89 fe             	mov    %rdi,%rsi
  401803:	8b 3d fb 2c 20 00    	mov    0x202cfb(%rip),%edi        # 604504 <cookie>
  401809:	e8 66 ff ff ff       	callq  401774 <hexmatch>
  40180e:	85 c0                	test   %eax,%eax
  401810:	74 1e                	je     401830 <touch3+0x3e>
  401812:	48 89 de             	mov    %rbx,%rsi
  401815:	bf c8 2e 40 00       	mov    $0x402ec8,%edi
  40181a:	b8 00 00 00 00       	mov    $0x0,%eax
  40181f:	e8 5c f4 ff ff       	callq  400c80 <printf@plt>
  401824:	bf 03 00 00 00       	mov    $0x3,%edi
  401829:	e8 db 02 00 00       	callq  401b09 <validate>
  40182e:	eb 1c                	jmp    40184c <touch3+0x5a>
  401830:	48 89 de             	mov    %rbx,%rsi
  401833:	bf f0 2e 40 00       	mov    $0x402ef0,%edi
  401838:	b8 00 00 00 00       	mov    $0x0,%eax
  40183d:	e8 3e f4 ff ff       	callq  400c80 <printf@plt>
  401842:	bf 03 00 00 00       	mov    $0x3,%edi
  401847:	e8 6f 03 00 00       	callq  401bbb <fail>
  40184c:	bf 00 00 00 00       	mov    $0x0,%edi
  401851:	e8 9a f5 ff ff       	callq  400df0 <exit@plt>

0000000000401856 <test>:
  401856:	48 83 ec 08          	sub    $0x8,%rsp
  40185a:	b8 00 00 00 00       	mov    $0x0,%eax
  40185f:	e8 78 fe ff ff       	callq  4016dc <getbuf>
  401864:	89 c6                	mov    %eax,%esi
  401866:	bf 18 2f 40 00       	mov    $0x402f18,%edi
  40186b:	b8 00 00 00 00       	mov    $0x0,%eax
  401870:	e8 0b f4 ff ff       	callq  400c80 <printf@plt>
  401875:	48 83 c4 08          	add    $0x8,%rsp
  401879:	c3                   	retq   
  40187a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000401880 <save_char>:
  401880:	8b 05 9e 38 20 00    	mov    0x20389e(%rip),%eax        # 605124 <gets_cnt>
  401886:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  40188b:	7f 49                	jg     4018d6 <save_char+0x56>
  40188d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401890:	89 f9                	mov    %edi,%ecx
  401892:	c0 e9 04             	shr    $0x4,%cl
  401895:	83 e1 0f             	and    $0xf,%ecx
  401898:	0f b6 b1 40 32 40 00 	movzbl 0x403240(%rcx),%esi
  40189f:	48 63 ca             	movslq %edx,%rcx
  4018a2:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  4018a9:	8d 4a 01             	lea    0x1(%rdx),%ecx
  4018ac:	83 e7 0f             	and    $0xf,%edi
  4018af:	0f b6 b7 40 32 40 00 	movzbl 0x403240(%rdi),%esi
  4018b6:	48 63 c9             	movslq %ecx,%rcx
  4018b9:	40 88 b1 20 45 60 00 	mov    %sil,0x604520(%rcx)
  4018c0:	83 c2 02             	add    $0x2,%edx
  4018c3:	48 63 d2             	movslq %edx,%rdx
  4018c6:	c6 82 20 45 60 00 20 	movb   $0x20,0x604520(%rdx)
  4018cd:	83 c0 01             	add    $0x1,%eax
  4018d0:	89 05 4e 38 20 00    	mov    %eax,0x20384e(%rip)        # 605124 <gets_cnt>
  4018d6:	f3 c3                	repz retq 

00000000004018d8 <save_term>:
  4018d8:	8b 05 46 38 20 00    	mov    0x203846(%rip),%eax        # 605124 <gets_cnt>
  4018de:	8d 04 40             	lea    (%rax,%rax,2),%eax
  4018e1:	48 98                	cltq   
  4018e3:	c6 80 20 45 60 00 00 	movb   $0x0,0x604520(%rax)
  4018ea:	c3                   	retq   

00000000004018eb <check_fail>:
  4018eb:	48 83 ec 08          	sub    $0x8,%rsp
  4018ef:	0f be 35 32 38 20 00 	movsbl 0x203832(%rip),%esi        # 605128 <target_prefix>
  4018f6:	b9 20 45 60 00       	mov    $0x604520,%ecx
  4018fb:	8b 15 f7 2b 20 00    	mov    0x202bf7(%rip),%edx        # 6044f8 <check_level>
  401901:	bf 3b 2f 40 00       	mov    $0x402f3b,%edi
  401906:	b8 00 00 00 00       	mov    $0x0,%eax
  40190b:	e8 70 f3 ff ff       	callq  400c80 <printf@plt>
  401910:	bf 01 00 00 00       	mov    $0x1,%edi
  401915:	e8 d6 f4 ff ff       	callq  400df0 <exit@plt>

000000000040191a <Gets>:
  40191a:	41 54                	push   %r12
  40191c:	55                   	push   %rbp
  40191d:	53                   	push   %rbx
  40191e:	49 89 fc             	mov    %rdi,%r12
  401921:	c7 05 f9 37 20 00 00 	movl   $0x0,0x2037f9(%rip)        # 605124 <gets_cnt>
  401928:	00 00 00 
  40192b:	48 89 fb             	mov    %rdi,%rbx
  40192e:	eb 11                	jmp    401941 <Gets+0x27>
  401930:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401934:	88 03                	mov    %al,(%rbx)
  401936:	0f b6 f8             	movzbl %al,%edi
  401939:	e8 42 ff ff ff       	callq  401880 <save_char>
  40193e:	48 89 eb             	mov    %rbp,%rbx
  401941:	48 8b 3d a8 2b 20 00 	mov    0x202ba8(%rip),%rdi        # 6044f0 <infile>
  401948:	e8 13 f4 ff ff       	callq  400d60 <_IO_getc@plt>
  40194d:	83 f8 ff             	cmp    $0xffffffff,%eax
  401950:	74 05                	je     401957 <Gets+0x3d>
  401952:	83 f8 0a             	cmp    $0xa,%eax
  401955:	75 d9                	jne    401930 <Gets+0x16>
  401957:	c6 03 00             	movb   $0x0,(%rbx)
  40195a:	b8 00 00 00 00       	mov    $0x0,%eax
  40195f:	e8 74 ff ff ff       	callq  4018d8 <save_term>
  401964:	4c 89 e0             	mov    %r12,%rax
  401967:	5b                   	pop    %rbx
  401968:	5d                   	pop    %rbp
  401969:	41 5c                	pop    %r12
  40196b:	c3                   	retq   

000000000040196c <notify_server>:
  40196c:	83 3d 95 2b 20 00 00 	cmpl   $0x0,0x202b95(%rip)        # 604508 <is_checker>
  401973:	0f 85 8e 01 00 00    	jne    401b07 <notify_server+0x19b>
  401979:	53                   	push   %rbx
  40197a:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401981:	89 fb                	mov    %edi,%ebx
  401983:	8b 05 9b 37 20 00    	mov    0x20379b(%rip),%eax        # 605124 <gets_cnt>
  401989:	83 c0 64             	add    $0x64,%eax
  40198c:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401991:	7e 19                	jle    4019ac <notify_server+0x40>
  401993:	bf 70 30 40 00       	mov    $0x403070,%edi
  401998:	b8 00 00 00 00       	mov    $0x0,%eax
  40199d:	e8 de f2 ff ff       	callq  400c80 <printf@plt>
  4019a2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019a7:	e8 44 f4 ff ff       	callq  400df0 <exit@plt>
  4019ac:	44 0f be 0d 74 37 20 	movsbl 0x203774(%rip),%r9d        # 605128 <target_prefix>
  4019b3:	00 
  4019b4:	83 3d ed 2a 20 00 00 	cmpl   $0x0,0x202aed(%rip)        # 6044a8 <notify>
  4019bb:	74 09                	je     4019c6 <notify_server+0x5a>
  4019bd:	44 8b 05 3c 2b 20 00 	mov    0x202b3c(%rip),%r8d        # 604500 <authkey>
  4019c4:	eb 06                	jmp    4019cc <notify_server+0x60>
  4019c6:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  4019cc:	85 db                	test   %ebx,%ebx
  4019ce:	74 07                	je     4019d7 <notify_server+0x6b>
  4019d0:	b9 51 2f 40 00       	mov    $0x402f51,%ecx
  4019d5:	eb 05                	jmp    4019dc <notify_server+0x70>
  4019d7:	b9 56 2f 40 00       	mov    $0x402f56,%ecx
  4019dc:	48 c7 44 24 08 20 45 	movq   $0x604520,0x8(%rsp)
  4019e3:	60 00 
  4019e5:	89 34 24             	mov    %esi,(%rsp)
  4019e8:	8b 15 7a 27 20 00    	mov    0x20277a(%rip),%edx        # 604168 <target_id>
  4019ee:	be 5b 2f 40 00       	mov    $0x402f5b,%esi
  4019f3:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  4019fa:	00 
  4019fb:	b8 00 00 00 00       	mov    $0x0,%eax
  401a00:	e8 db f3 ff ff       	callq  400de0 <sprintf@plt>
  401a05:	83 3d 9c 2a 20 00 00 	cmpl   $0x0,0x202a9c(%rip)        # 6044a8 <notify>
  401a0c:	74 78                	je     401a86 <notify_server+0x11a>
  401a0e:	85 db                	test   %ebx,%ebx
  401a10:	74 68                	je     401a7a <notify_server+0x10e>
  401a12:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  401a17:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401a1d:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  401a24:	00 
  401a25:	48 8b 15 44 27 20 00 	mov    0x202744(%rip),%rdx        # 604170 <lab>
  401a2c:	48 8b 35 45 27 20 00 	mov    0x202745(%rip),%rsi        # 604178 <course>
  401a33:	48 8b 3d 26 27 20 00 	mov    0x202726(%rip),%rdi        # 604160 <user_id>
  401a3a:	e8 94 0f 00 00       	callq  4029d3 <driver_post>
  401a3f:	85 c0                	test   %eax,%eax
  401a41:	79 1e                	jns    401a61 <notify_server+0xf5>
  401a43:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  401a48:	bf 77 2f 40 00       	mov    $0x402f77,%edi
  401a4d:	b8 00 00 00 00       	mov    $0x0,%eax
  401a52:	e8 29 f2 ff ff       	callq  400c80 <printf@plt>
  401a57:	bf 01 00 00 00       	mov    $0x1,%edi
  401a5c:	e8 8f f3 ff ff       	callq  400df0 <exit@plt>
  401a61:	bf a0 30 40 00       	mov    $0x4030a0,%edi
  401a66:	e8 e5 f1 ff ff       	callq  400c50 <puts@plt>
  401a6b:	bf 83 2f 40 00       	mov    $0x402f83,%edi
  401a70:	e8 db f1 ff ff       	callq  400c50 <puts@plt>
  401a75:	e9 85 00 00 00       	jmpq   401aff <notify_server+0x193>
  401a7a:	bf 8d 2f 40 00       	mov    $0x402f8d,%edi
  401a7f:	e8 cc f1 ff ff       	callq  400c50 <puts@plt>
  401a84:	eb 79                	jmp    401aff <notify_server+0x193>
  401a86:	85 db                	test   %ebx,%ebx
  401a88:	74 08                	je     401a92 <notify_server+0x126>
  401a8a:	be 51 2f 40 00       	mov    $0x402f51,%esi
  401a8f:	90                   	nop
  401a90:	eb 05                	jmp    401a97 <notify_server+0x12b>
  401a92:	be 56 2f 40 00       	mov    $0x402f56,%esi
  401a97:	bf d8 30 40 00       	mov    $0x4030d8,%edi
  401a9c:	b8 00 00 00 00       	mov    $0x0,%eax
  401aa1:	e8 da f1 ff ff       	callq  400c80 <printf@plt>
  401aa6:	48 8b 35 b3 26 20 00 	mov    0x2026b3(%rip),%rsi        # 604160 <user_id>
  401aad:	bf 94 2f 40 00       	mov    $0x402f94,%edi
  401ab2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ab7:	e8 c4 f1 ff ff       	callq  400c80 <printf@plt>
  401abc:	48 8b 35 b5 26 20 00 	mov    0x2026b5(%rip),%rsi        # 604178 <course>
  401ac3:	bf a1 2f 40 00       	mov    $0x402fa1,%edi
  401ac8:	b8 00 00 00 00       	mov    $0x0,%eax
  401acd:	e8 ae f1 ff ff       	callq  400c80 <printf@plt>
  401ad2:	48 8b 35 97 26 20 00 	mov    0x202697(%rip),%rsi        # 604170 <lab>
  401ad9:	bf ad 2f 40 00       	mov    $0x402fad,%edi
  401ade:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae3:	e8 98 f1 ff ff       	callq  400c80 <printf@plt>
  401ae8:	48 8d b4 24 10 20 00 	lea    0x2010(%rsp),%rsi
  401aef:	00 
  401af0:	bf b6 2f 40 00       	mov    $0x402fb6,%edi
  401af5:	b8 00 00 00 00       	mov    $0x0,%eax
  401afa:	e8 81 f1 ff ff       	callq  400c80 <printf@plt>
  401aff:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401b06:	5b                   	pop    %rbx
  401b07:	f3 c3                	repz retq 

0000000000401b09 <validate>:
  401b09:	53                   	push   %rbx
  401b0a:	89 fb                	mov    %edi,%ebx
  401b0c:	83 3d f5 29 20 00 00 	cmpl   $0x0,0x2029f5(%rip)        # 604508 <is_checker>
  401b13:	74 60                	je     401b75 <validate+0x6c>
  401b15:	39 3d e1 29 20 00    	cmp    %edi,0x2029e1(%rip)        # 6044fc <vlevel>
  401b1b:	74 14                	je     401b31 <validate+0x28>
  401b1d:	bf c2 2f 40 00       	mov    $0x402fc2,%edi
  401b22:	e8 29 f1 ff ff       	callq  400c50 <puts@plt>
  401b27:	b8 00 00 00 00       	mov    $0x0,%eax
  401b2c:	e8 ba fd ff ff       	callq  4018eb <check_fail>
  401b31:	8b 35 c1 29 20 00    	mov    0x2029c1(%rip),%esi        # 6044f8 <check_level>
  401b37:	39 fe                	cmp    %edi,%esi
  401b39:	74 1b                	je     401b56 <validate+0x4d>
  401b3b:	89 fa                	mov    %edi,%edx
  401b3d:	bf 00 31 40 00       	mov    $0x403100,%edi
  401b42:	b8 00 00 00 00       	mov    $0x0,%eax
  401b47:	e8 34 f1 ff ff       	callq  400c80 <printf@plt>
  401b4c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b51:	e8 95 fd ff ff       	callq  4018eb <check_fail>
  401b56:	0f be 35 cb 35 20 00 	movsbl 0x2035cb(%rip),%esi        # 605128 <target_prefix>
  401b5d:	b9 20 45 60 00       	mov    $0x604520,%ecx
  401b62:	89 fa                	mov    %edi,%edx
  401b64:	bf e0 2f 40 00       	mov    $0x402fe0,%edi
  401b69:	b8 00 00 00 00       	mov    $0x0,%eax
  401b6e:	e8 0d f1 ff ff       	callq  400c80 <printf@plt>
  401b73:	eb 44                	jmp    401bb9 <validate+0xb0>
  401b75:	39 3d 81 29 20 00    	cmp    %edi,0x202981(%rip)        # 6044fc <vlevel>
  401b7b:	74 18                	je     401b95 <validate+0x8c>
  401b7d:	bf c2 2f 40 00       	mov    $0x402fc2,%edi
  401b82:	e8 c9 f0 ff ff       	callq  400c50 <puts@plt>
  401b87:	89 de                	mov    %ebx,%esi
  401b89:	bf 00 00 00 00       	mov    $0x0,%edi
  401b8e:	e8 d9 fd ff ff       	callq  40196c <notify_server>
  401b93:	eb 24                	jmp    401bb9 <validate+0xb0>
  401b95:	0f be 15 8c 35 20 00 	movsbl 0x20358c(%rip),%edx        # 605128 <target_prefix>
  401b9c:	89 fe                	mov    %edi,%esi
  401b9e:	bf 28 31 40 00       	mov    $0x403128,%edi
  401ba3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ba8:	e8 d3 f0 ff ff       	callq  400c80 <printf@plt>
  401bad:	89 de                	mov    %ebx,%esi
  401baf:	bf 01 00 00 00       	mov    $0x1,%edi
  401bb4:	e8 b3 fd ff ff       	callq  40196c <notify_server>
  401bb9:	5b                   	pop    %rbx
  401bba:	c3                   	retq   

0000000000401bbb <fail>:
  401bbb:	48 83 ec 08          	sub    $0x8,%rsp
  401bbf:	83 3d 42 29 20 00 00 	cmpl   $0x0,0x202942(%rip)        # 604508 <is_checker>
  401bc6:	74 0a                	je     401bd2 <fail+0x17>
  401bc8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bcd:	e8 19 fd ff ff       	callq  4018eb <check_fail>
  401bd2:	89 fe                	mov    %edi,%esi
  401bd4:	bf 00 00 00 00       	mov    $0x0,%edi
  401bd9:	e8 8e fd ff ff       	callq  40196c <notify_server>
  401bde:	48 83 c4 08          	add    $0x8,%rsp
  401be2:	c3                   	retq   

0000000000401be3 <bushandler>:
  401be3:	48 83 ec 08          	sub    $0x8,%rsp
  401be7:	83 3d 1a 29 20 00 00 	cmpl   $0x0,0x20291a(%rip)        # 604508 <is_checker>
  401bee:	74 14                	je     401c04 <bushandler+0x21>
  401bf0:	bf f5 2f 40 00       	mov    $0x402ff5,%edi
  401bf5:	e8 56 f0 ff ff       	callq  400c50 <puts@plt>
  401bfa:	b8 00 00 00 00       	mov    $0x0,%eax
  401bff:	e8 e7 fc ff ff       	callq  4018eb <check_fail>
  401c04:	bf 60 31 40 00       	mov    $0x403160,%edi
  401c09:	e8 42 f0 ff ff       	callq  400c50 <puts@plt>
  401c0e:	bf ff 2f 40 00       	mov    $0x402fff,%edi
  401c13:	e8 38 f0 ff ff       	callq  400c50 <puts@plt>
  401c18:	be 00 00 00 00       	mov    $0x0,%esi
  401c1d:	bf 00 00 00 00       	mov    $0x0,%edi
  401c22:	e8 45 fd ff ff       	callq  40196c <notify_server>
  401c27:	bf 01 00 00 00       	mov    $0x1,%edi
  401c2c:	e8 bf f1 ff ff       	callq  400df0 <exit@plt>

0000000000401c31 <seghandler>:
  401c31:	48 83 ec 08          	sub    $0x8,%rsp
  401c35:	83 3d cc 28 20 00 00 	cmpl   $0x0,0x2028cc(%rip)        # 604508 <is_checker>
  401c3c:	74 14                	je     401c52 <seghandler+0x21>
  401c3e:	bf 15 30 40 00       	mov    $0x403015,%edi
  401c43:	e8 08 f0 ff ff       	callq  400c50 <puts@plt>
  401c48:	b8 00 00 00 00       	mov    $0x0,%eax
  401c4d:	e8 99 fc ff ff       	callq  4018eb <check_fail>
  401c52:	bf 80 31 40 00       	mov    $0x403180,%edi
  401c57:	e8 f4 ef ff ff       	callq  400c50 <puts@plt>
  401c5c:	bf ff 2f 40 00       	mov    $0x402fff,%edi
  401c61:	e8 ea ef ff ff       	callq  400c50 <puts@plt>
  401c66:	be 00 00 00 00       	mov    $0x0,%esi
  401c6b:	bf 00 00 00 00       	mov    $0x0,%edi
  401c70:	e8 f7 fc ff ff       	callq  40196c <notify_server>
  401c75:	bf 01 00 00 00       	mov    $0x1,%edi
  401c7a:	e8 71 f1 ff ff       	callq  400df0 <exit@plt>

0000000000401c7f <illegalhandler>:
  401c7f:	48 83 ec 08          	sub    $0x8,%rsp
  401c83:	83 3d 7e 28 20 00 00 	cmpl   $0x0,0x20287e(%rip)        # 604508 <is_checker>
  401c8a:	74 14                	je     401ca0 <illegalhandler+0x21>
  401c8c:	bf 28 30 40 00       	mov    $0x403028,%edi
  401c91:	e8 ba ef ff ff       	callq  400c50 <puts@plt>
  401c96:	b8 00 00 00 00       	mov    $0x0,%eax
  401c9b:	e8 4b fc ff ff       	callq  4018eb <check_fail>
  401ca0:	bf a8 31 40 00       	mov    $0x4031a8,%edi
  401ca5:	e8 a6 ef ff ff       	callq  400c50 <puts@plt>
  401caa:	bf ff 2f 40 00       	mov    $0x402fff,%edi
  401caf:	e8 9c ef ff ff       	callq  400c50 <puts@plt>
  401cb4:	be 00 00 00 00       	mov    $0x0,%esi
  401cb9:	bf 00 00 00 00       	mov    $0x0,%edi
  401cbe:	e8 a9 fc ff ff       	callq  40196c <notify_server>
  401cc3:	bf 01 00 00 00       	mov    $0x1,%edi
  401cc8:	e8 23 f1 ff ff       	callq  400df0 <exit@plt>

0000000000401ccd <sigalrmhandler>:
  401ccd:	48 83 ec 08          	sub    $0x8,%rsp
  401cd1:	83 3d 30 28 20 00 00 	cmpl   $0x0,0x202830(%rip)        # 604508 <is_checker>
  401cd8:	74 14                	je     401cee <sigalrmhandler+0x21>
  401cda:	bf 3c 30 40 00       	mov    $0x40303c,%edi
  401cdf:	e8 6c ef ff ff       	callq  400c50 <puts@plt>
  401ce4:	b8 00 00 00 00       	mov    $0x0,%eax
  401ce9:	e8 fd fb ff ff       	callq  4018eb <check_fail>
  401cee:	be 05 00 00 00       	mov    $0x5,%esi
  401cf3:	bf d8 31 40 00       	mov    $0x4031d8,%edi
  401cf8:	b8 00 00 00 00       	mov    $0x0,%eax
  401cfd:	e8 7e ef ff ff       	callq  400c80 <printf@plt>
  401d02:	be 00 00 00 00       	mov    $0x0,%esi
  401d07:	bf 00 00 00 00       	mov    $0x0,%edi
  401d0c:	e8 5b fc ff ff       	callq  40196c <notify_server>
  401d11:	bf 01 00 00 00       	mov    $0x1,%edi
  401d16:	e8 d5 f0 ff ff       	callq  400df0 <exit@plt>

0000000000401d1b <launch>:
  401d1b:	55                   	push   %rbp
  401d1c:	48 89 e5             	mov    %rsp,%rbp
  401d1f:	48 89 fa             	mov    %rdi,%rdx
  401d22:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401d26:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401d2a:	48 29 c4             	sub    %rax,%rsp
  401d2d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401d32:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401d36:	be f4 00 00 00       	mov    $0xf4,%esi
  401d3b:	e8 50 ef ff ff       	callq  400c90 <memset@plt>
  401d40:	48 8b 05 79 27 20 00 	mov    0x202779(%rip),%rax        # 6044c0 <stdin@@GLIBC_2.2.5>
  401d47:	48 39 05 a2 27 20 00 	cmp    %rax,0x2027a2(%rip)        # 6044f0 <infile>
  401d4e:	75 0f                	jne    401d5f <launch+0x44>
  401d50:	bf 44 30 40 00       	mov    $0x403044,%edi
  401d55:	b8 00 00 00 00       	mov    $0x0,%eax
  401d5a:	e8 21 ef ff ff       	callq  400c80 <printf@plt>
  401d5f:	c7 05 93 27 20 00 00 	movl   $0x0,0x202793(%rip)        # 6044fc <vlevel>
  401d66:	00 00 00 
  401d69:	b8 00 00 00 00       	mov    $0x0,%eax
  401d6e:	e8 e3 fa ff ff       	callq  401856 <test>
  401d73:	83 3d 8e 27 20 00 00 	cmpl   $0x0,0x20278e(%rip)        # 604508 <is_checker>
  401d7a:	74 14                	je     401d90 <launch+0x75>
  401d7c:	bf 51 30 40 00       	mov    $0x403051,%edi
  401d81:	e8 ca ee ff ff       	callq  400c50 <puts@plt>
  401d86:	b8 00 00 00 00       	mov    $0x0,%eax
  401d8b:	e8 5b fb ff ff       	callq  4018eb <check_fail>
  401d90:	bf 5c 30 40 00       	mov    $0x40305c,%edi
  401d95:	e8 b6 ee ff ff       	callq  400c50 <puts@plt>
  401d9a:	c9                   	leaveq 
  401d9b:	c3                   	retq   

0000000000401d9c <stable_launch>:
  401d9c:	53                   	push   %rbx
  401d9d:	48 89 3d 44 27 20 00 	mov    %rdi,0x202744(%rip)        # 6044e8 <global_offset>
  401da4:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401daa:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401db0:	b9 32 01 00 00       	mov    $0x132,%ecx
  401db5:	ba 07 00 00 00       	mov    $0x7,%edx
  401dba:	be 00 00 10 00       	mov    $0x100000,%esi
  401dbf:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401dc4:	e8 a7 ee ff ff       	callq  400c70 <mmap@plt>
  401dc9:	48 89 c3             	mov    %rax,%rbx
  401dcc:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401dd2:	74 32                	je     401e06 <stable_launch+0x6a>
  401dd4:	be 00 00 10 00       	mov    $0x100000,%esi
  401dd9:	48 89 c7             	mov    %rax,%rdi
  401ddc:	e8 9f ef ff ff       	callq  400d80 <munmap@plt>
  401de1:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401de6:	be 10 32 40 00       	mov    $0x403210,%esi
  401deb:	48 8b 3d de 26 20 00 	mov    0x2026de(%rip),%rdi        # 6044d0 <stderr@@GLIBC_2.2.5>
  401df2:	b8 00 00 00 00       	mov    $0x0,%eax
  401df7:	e8 04 ef ff ff       	callq  400d00 <fprintf@plt>
  401dfc:	bf 01 00 00 00       	mov    $0x1,%edi
  401e01:	e8 ea ef ff ff       	callq  400df0 <exit@plt>
  401e06:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401e0d:	48 89 15 1c 33 20 00 	mov    %rdx,0x20331c(%rip)        # 605130 <stack_top>
  401e14:	48 89 e0             	mov    %rsp,%rax
  401e17:	48 89 d4             	mov    %rdx,%rsp
  401e1a:	48 89 c2             	mov    %rax,%rdx
  401e1d:	48 89 15 bc 26 20 00 	mov    %rdx,0x2026bc(%rip)        # 6044e0 <global_save_stack>
  401e24:	48 8b 3d bd 26 20 00 	mov    0x2026bd(%rip),%rdi        # 6044e8 <global_offset>
  401e2b:	e8 eb fe ff ff       	callq  401d1b <launch>
  401e30:	48 8b 05 a9 26 20 00 	mov    0x2026a9(%rip),%rax        # 6044e0 <global_save_stack>
  401e37:	48 89 c4             	mov    %rax,%rsp
  401e3a:	be 00 00 10 00       	mov    $0x100000,%esi
  401e3f:	48 89 df             	mov    %rbx,%rdi
  401e42:	e8 39 ef ff ff       	callq  400d80 <munmap@plt>
  401e47:	5b                   	pop    %rbx
  401e48:	c3                   	retq   
  401e49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401e50 <rio_readinitb>:
  401e50:	89 37                	mov    %esi,(%rdi)
  401e52:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401e59:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401e5d:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401e61:	c3                   	retq   

0000000000401e62 <sigalrm_handler>:
  401e62:	48 83 ec 08          	sub    $0x8,%rsp
  401e66:	ba 00 00 00 00       	mov    $0x0,%edx
  401e6b:	be 50 32 40 00       	mov    $0x403250,%esi
  401e70:	48 8b 3d 59 26 20 00 	mov    0x202659(%rip),%rdi        # 6044d0 <stderr@@GLIBC_2.2.5>
  401e77:	b8 00 00 00 00       	mov    $0x0,%eax
  401e7c:	e8 7f ee ff ff       	callq  400d00 <fprintf@plt>
  401e81:	bf 01 00 00 00       	mov    $0x1,%edi
  401e86:	e8 65 ef ff ff       	callq  400df0 <exit@plt>

0000000000401e8b <urlencode>:
  401e8b:	41 54                	push   %r12
  401e8d:	55                   	push   %rbp
  401e8e:	53                   	push   %rbx
  401e8f:	48 83 ec 10          	sub    $0x10,%rsp
  401e93:	48 89 fb             	mov    %rdi,%rbx
  401e96:	48 89 f5             	mov    %rsi,%rbp
  401e99:	b8 00 00 00 00       	mov    $0x0,%eax
  401e9e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401ea5:	f2 ae                	repnz scas %es:(%rdi),%al
  401ea7:	48 f7 d1             	not    %rcx
  401eaa:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401ead:	e9 93 00 00 00       	jmpq   401f45 <urlencode+0xba>
  401eb2:	0f b6 13             	movzbl (%rbx),%edx
  401eb5:	80 fa 2a             	cmp    $0x2a,%dl
  401eb8:	0f 94 c1             	sete   %cl
  401ebb:	80 fa 2d             	cmp    $0x2d,%dl
  401ebe:	0f 94 c0             	sete   %al
  401ec1:	08 c1                	or     %al,%cl
  401ec3:	75 1f                	jne    401ee4 <urlencode+0x59>
  401ec5:	80 fa 2e             	cmp    $0x2e,%dl
  401ec8:	74 1a                	je     401ee4 <urlencode+0x59>
  401eca:	80 fa 5f             	cmp    $0x5f,%dl
  401ecd:	74 15                	je     401ee4 <urlencode+0x59>
  401ecf:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401ed2:	3c 09                	cmp    $0x9,%al
  401ed4:	76 0e                	jbe    401ee4 <urlencode+0x59>
  401ed6:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401ed9:	3c 19                	cmp    $0x19,%al
  401edb:	76 07                	jbe    401ee4 <urlencode+0x59>
  401edd:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401ee0:	3c 19                	cmp    $0x19,%al
  401ee2:	77 09                	ja     401eed <urlencode+0x62>
  401ee4:	88 55 00             	mov    %dl,0x0(%rbp)
  401ee7:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401eeb:	eb 51                	jmp    401f3e <urlencode+0xb3>
  401eed:	80 fa 20             	cmp    $0x20,%dl
  401ef0:	75 0a                	jne    401efc <urlencode+0x71>
  401ef2:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401ef6:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401efa:	eb 42                	jmp    401f3e <urlencode+0xb3>
  401efc:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401eff:	3c 5f                	cmp    $0x5f,%al
  401f01:	0f 96 c1             	setbe  %cl
  401f04:	80 fa 09             	cmp    $0x9,%dl
  401f07:	0f 94 c0             	sete   %al
  401f0a:	08 c1                	or     %al,%cl
  401f0c:	74 45                	je     401f53 <urlencode+0xc8>
  401f0e:	0f b6 d2             	movzbl %dl,%edx
  401f11:	be e8 32 40 00       	mov    $0x4032e8,%esi
  401f16:	48 89 e7             	mov    %rsp,%rdi
  401f19:	b8 00 00 00 00       	mov    $0x0,%eax
  401f1e:	e8 bd ee ff ff       	callq  400de0 <sprintf@plt>
  401f23:	0f b6 04 24          	movzbl (%rsp),%eax
  401f27:	88 45 00             	mov    %al,0x0(%rbp)
  401f2a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  401f2f:	88 45 01             	mov    %al,0x1(%rbp)
  401f32:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  401f37:	88 45 02             	mov    %al,0x2(%rbp)
  401f3a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401f3e:	48 83 c3 01          	add    $0x1,%rbx
  401f42:	44 89 e0             	mov    %r12d,%eax
  401f45:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401f49:	85 c0                	test   %eax,%eax
  401f4b:	0f 85 61 ff ff ff    	jne    401eb2 <urlencode+0x27>
  401f51:	eb 05                	jmp    401f58 <urlencode+0xcd>
  401f53:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f58:	48 83 c4 10          	add    $0x10,%rsp
  401f5c:	5b                   	pop    %rbx
  401f5d:	5d                   	pop    %rbp
  401f5e:	41 5c                	pop    %r12
  401f60:	c3                   	retq   

0000000000401f61 <rio_writen>:
  401f61:	41 55                	push   %r13
  401f63:	41 54                	push   %r12
  401f65:	55                   	push   %rbp
  401f66:	53                   	push   %rbx
  401f67:	48 83 ec 08          	sub    $0x8,%rsp
  401f6b:	41 89 fc             	mov    %edi,%r12d
  401f6e:	48 89 f5             	mov    %rsi,%rbp
  401f71:	49 89 d5             	mov    %rdx,%r13
  401f74:	48 89 d3             	mov    %rdx,%rbx
  401f77:	eb 28                	jmp    401fa1 <rio_writen+0x40>
  401f79:	48 89 da             	mov    %rbx,%rdx
  401f7c:	48 89 ee             	mov    %rbp,%rsi
  401f7f:	44 89 e7             	mov    %r12d,%edi
  401f82:	e8 d9 ec ff ff       	callq  400c60 <write@plt>
  401f87:	48 85 c0             	test   %rax,%rax
  401f8a:	7f 0f                	jg     401f9b <rio_writen+0x3a>
  401f8c:	e8 7f ec ff ff       	callq  400c10 <__errno_location@plt>
  401f91:	83 38 04             	cmpl   $0x4,(%rax)
  401f94:	75 15                	jne    401fab <rio_writen+0x4a>
  401f96:	b8 00 00 00 00       	mov    $0x0,%eax
  401f9b:	48 29 c3             	sub    %rax,%rbx
  401f9e:	48 01 c5             	add    %rax,%rbp
  401fa1:	48 85 db             	test   %rbx,%rbx
  401fa4:	75 d3                	jne    401f79 <rio_writen+0x18>
  401fa6:	4c 89 e8             	mov    %r13,%rax
  401fa9:	eb 07                	jmp    401fb2 <rio_writen+0x51>
  401fab:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401fb2:	48 83 c4 08          	add    $0x8,%rsp
  401fb6:	5b                   	pop    %rbx
  401fb7:	5d                   	pop    %rbp
  401fb8:	41 5c                	pop    %r12
  401fba:	41 5d                	pop    %r13
  401fbc:	c3                   	retq   

0000000000401fbd <rio_read>:
  401fbd:	41 56                	push   %r14
  401fbf:	41 55                	push   %r13
  401fc1:	41 54                	push   %r12
  401fc3:	55                   	push   %rbp
  401fc4:	53                   	push   %rbx
  401fc5:	48 89 fb             	mov    %rdi,%rbx
  401fc8:	49 89 f6             	mov    %rsi,%r14
  401fcb:	49 89 d5             	mov    %rdx,%r13
  401fce:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  401fd2:	eb 2a                	jmp    401ffe <rio_read+0x41>
  401fd4:	ba 00 20 00 00       	mov    $0x2000,%edx
  401fd9:	4c 89 e6             	mov    %r12,%rsi
  401fdc:	8b 3b                	mov    (%rbx),%edi
  401fde:	e8 dd ec ff ff       	callq  400cc0 <read@plt>
  401fe3:	89 43 04             	mov    %eax,0x4(%rbx)
  401fe6:	85 c0                	test   %eax,%eax
  401fe8:	79 0c                	jns    401ff6 <rio_read+0x39>
  401fea:	e8 21 ec ff ff       	callq  400c10 <__errno_location@plt>
  401fef:	83 38 04             	cmpl   $0x4,(%rax)
  401ff2:	74 0a                	je     401ffe <rio_read+0x41>
  401ff4:	eb 37                	jmp    40202d <rio_read+0x70>
  401ff6:	85 c0                	test   %eax,%eax
  401ff8:	74 3c                	je     402036 <rio_read+0x79>
  401ffa:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  401ffe:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402001:	85 ed                	test   %ebp,%ebp
  402003:	7e cf                	jle    401fd4 <rio_read+0x17>
  402005:	89 e8                	mov    %ebp,%eax
  402007:	4c 39 e8             	cmp    %r13,%rax
  40200a:	72 03                	jb     40200f <rio_read+0x52>
  40200c:	44 89 ed             	mov    %r13d,%ebp
  40200f:	4c 63 e5             	movslq %ebp,%r12
  402012:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402016:	4c 89 e2             	mov    %r12,%rdx
  402019:	4c 89 f7             	mov    %r14,%rdi
  40201c:	e8 0f ed ff ff       	callq  400d30 <memcpy@plt>
  402021:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402025:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402028:	4c 89 e0             	mov    %r12,%rax
  40202b:	eb 0e                	jmp    40203b <rio_read+0x7e>
  40202d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402034:	eb 05                	jmp    40203b <rio_read+0x7e>
  402036:	b8 00 00 00 00       	mov    $0x0,%eax
  40203b:	5b                   	pop    %rbx
  40203c:	5d                   	pop    %rbp
  40203d:	41 5c                	pop    %r12
  40203f:	41 5d                	pop    %r13
  402041:	41 5e                	pop    %r14
  402043:	c3                   	retq   

0000000000402044 <rio_readlineb>:
  402044:	41 55                	push   %r13
  402046:	41 54                	push   %r12
  402048:	55                   	push   %rbp
  402049:	53                   	push   %rbx
  40204a:	48 83 ec 18          	sub    $0x18,%rsp
  40204e:	49 89 fd             	mov    %rdi,%r13
  402051:	48 89 f5             	mov    %rsi,%rbp
  402054:	49 89 d4             	mov    %rdx,%r12
  402057:	bb 01 00 00 00       	mov    $0x1,%ebx
  40205c:	eb 3d                	jmp    40209b <rio_readlineb+0x57>
  40205e:	ba 01 00 00 00       	mov    $0x1,%edx
  402063:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  402068:	4c 89 ef             	mov    %r13,%rdi
  40206b:	e8 4d ff ff ff       	callq  401fbd <rio_read>
  402070:	83 f8 01             	cmp    $0x1,%eax
  402073:	75 12                	jne    402087 <rio_readlineb+0x43>
  402075:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  402079:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  40207e:	88 45 00             	mov    %al,0x0(%rbp)
  402081:	3c 0a                	cmp    $0xa,%al
  402083:	75 0f                	jne    402094 <rio_readlineb+0x50>
  402085:	eb 1b                	jmp    4020a2 <rio_readlineb+0x5e>
  402087:	85 c0                	test   %eax,%eax
  402089:	75 23                	jne    4020ae <rio_readlineb+0x6a>
  40208b:	48 83 fb 01          	cmp    $0x1,%rbx
  40208f:	90                   	nop
  402090:	75 13                	jne    4020a5 <rio_readlineb+0x61>
  402092:	eb 23                	jmp    4020b7 <rio_readlineb+0x73>
  402094:	48 83 c3 01          	add    $0x1,%rbx
  402098:	48 89 d5             	mov    %rdx,%rbp
  40209b:	4c 39 e3             	cmp    %r12,%rbx
  40209e:	72 be                	jb     40205e <rio_readlineb+0x1a>
  4020a0:	eb 03                	jmp    4020a5 <rio_readlineb+0x61>
  4020a2:	48 89 d5             	mov    %rdx,%rbp
  4020a5:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4020a9:	48 89 d8             	mov    %rbx,%rax
  4020ac:	eb 0e                	jmp    4020bc <rio_readlineb+0x78>
  4020ae:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4020b5:	eb 05                	jmp    4020bc <rio_readlineb+0x78>
  4020b7:	b8 00 00 00 00       	mov    $0x0,%eax
  4020bc:	48 83 c4 18          	add    $0x18,%rsp
  4020c0:	5b                   	pop    %rbx
  4020c1:	5d                   	pop    %rbp
  4020c2:	41 5c                	pop    %r12
  4020c4:	41 5d                	pop    %r13
  4020c6:	c3                   	retq   

00000000004020c7 <submitr>:
  4020c7:	41 57                	push   %r15
  4020c9:	41 56                	push   %r14
  4020cb:	41 55                	push   %r13
  4020cd:	41 54                	push   %r12
  4020cf:	55                   	push   %rbp
  4020d0:	53                   	push   %rbx
  4020d1:	48 81 ec 48 a0 00 00 	sub    $0xa048,%rsp
  4020d8:	49 89 fc             	mov    %rdi,%r12
  4020db:	89 74 24 04          	mov    %esi,0x4(%rsp)
  4020df:	49 89 d7             	mov    %rdx,%r15
  4020e2:	49 89 ce             	mov    %rcx,%r14
  4020e5:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  4020ea:	4d 89 cd             	mov    %r9,%r13
  4020ed:	48 8b 9c 24 80 a0 00 	mov    0xa080(%rsp),%rbx
  4020f4:	00 
  4020f5:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  4020fc:	00 00 00 00 
  402100:	ba 00 00 00 00       	mov    $0x0,%edx
  402105:	be 01 00 00 00       	mov    $0x1,%esi
  40210a:	bf 02 00 00 00       	mov    $0x2,%edi
  40210f:	e8 fc ec ff ff       	callq  400e10 <socket@plt>
  402114:	89 c5                	mov    %eax,%ebp
  402116:	85 c0                	test   %eax,%eax
  402118:	79 4e                	jns    402168 <submitr+0xa1>
  40211a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402121:	3a 20 43 
  402124:	48 89 03             	mov    %rax,(%rbx)
  402127:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40212e:	20 75 6e 
  402131:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402135:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40213c:	74 6f 20 
  40213f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402143:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40214a:	65 20 73 
  40214d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402151:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402158:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40215e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402163:	e9 68 06 00 00       	jmpq   4027d0 <submitr+0x709>
  402168:	4c 89 e7             	mov    %r12,%rdi
  40216b:	e8 80 eb ff ff       	callq  400cf0 <gethostbyname@plt>
  402170:	48 85 c0             	test   %rax,%rax
  402173:	75 67                	jne    4021dc <submitr+0x115>
  402175:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40217c:	3a 20 44 
  40217f:	48 89 03             	mov    %rax,(%rbx)
  402182:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402189:	20 75 6e 
  40218c:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402190:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402197:	74 6f 20 
  40219a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40219e:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4021a5:	76 65 20 
  4021a8:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4021ac:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4021b3:	72 20 61 
  4021b6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4021ba:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  4021c1:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  4021c7:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  4021cb:	89 ef                	mov    %ebp,%edi
  4021cd:	e8 de ea ff ff       	callq  400cb0 <close@plt>
  4021d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021d7:	e9 f4 05 00 00       	jmpq   4027d0 <submitr+0x709>
  4021dc:	48 c7 84 24 30 a0 00 	movq   $0x0,0xa030(%rsp)
  4021e3:	00 00 00 00 00 
  4021e8:	48 c7 84 24 38 a0 00 	movq   $0x0,0xa038(%rsp)
  4021ef:	00 00 00 00 00 
  4021f4:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  4021fb:	00 02 00 
  4021fe:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402202:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402206:	48 8d b4 24 34 a0 00 	lea    0xa034(%rsp),%rsi
  40220d:	00 
  40220e:	48 8b 39             	mov    (%rcx),%rdi
  402211:	e8 7a eb ff ff       	callq  400d90 <bcopy@plt>
  402216:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  40221b:	66 c1 c8 08          	ror    $0x8,%ax
  40221f:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  402226:	00 
  402227:	ba 10 00 00 00       	mov    $0x10,%edx
  40222c:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  402233:	00 
  402234:	89 ef                	mov    %ebp,%edi
  402236:	e8 c5 eb ff ff       	callq  400e00 <connect@plt>
  40223b:	85 c0                	test   %eax,%eax
  40223d:	79 59                	jns    402298 <submitr+0x1d1>
  40223f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402246:	3a 20 55 
  402249:	48 89 03             	mov    %rax,(%rbx)
  40224c:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402253:	20 74 6f 
  402256:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40225a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402261:	65 63 74 
  402264:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402268:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40226f:	68 65 20 
  402272:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402276:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40227d:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402283:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402287:	89 ef                	mov    %ebp,%edi
  402289:	e8 22 ea ff ff       	callq  400cb0 <close@plt>
  40228e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402293:	e9 38 05 00 00       	jmpq   4027d0 <submitr+0x709>
  402298:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  40229f:	4c 89 ef             	mov    %r13,%rdi
  4022a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4022a7:	48 89 d1             	mov    %rdx,%rcx
  4022aa:	f2 ae                	repnz scas %es:(%rdi),%al
  4022ac:	48 f7 d1             	not    %rcx
  4022af:	48 89 ce             	mov    %rcx,%rsi
  4022b2:	4c 89 ff             	mov    %r15,%rdi
  4022b5:	48 89 d1             	mov    %rdx,%rcx
  4022b8:	f2 ae                	repnz scas %es:(%rdi),%al
  4022ba:	48 f7 d1             	not    %rcx
  4022bd:	49 89 c8             	mov    %rcx,%r8
  4022c0:	4c 89 f7             	mov    %r14,%rdi
  4022c3:	48 89 d1             	mov    %rdx,%rcx
  4022c6:	f2 ae                	repnz scas %es:(%rdi),%al
  4022c8:	49 29 c8             	sub    %rcx,%r8
  4022cb:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  4022d0:	48 89 d1             	mov    %rdx,%rcx
  4022d3:	f2 ae                	repnz scas %es:(%rdi),%al
  4022d5:	49 29 c8             	sub    %rcx,%r8
  4022d8:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  4022dd:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  4022e2:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4022e8:	76 72                	jbe    40235c <submitr+0x295>
  4022ea:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4022f1:	3a 20 52 
  4022f4:	48 89 03             	mov    %rax,(%rbx)
  4022f7:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4022fe:	20 73 74 
  402301:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402305:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40230c:	74 6f 6f 
  40230f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402313:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  40231a:	65 2e 20 
  40231d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402321:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402328:	61 73 65 
  40232b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40232f:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402336:	49 54 52 
  402339:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40233d:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402344:	55 46 00 
  402347:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40234b:	89 ef                	mov    %ebp,%edi
  40234d:	e8 5e e9 ff ff       	callq  400cb0 <close@plt>
  402352:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402357:	e9 74 04 00 00       	jmpq   4027d0 <submitr+0x709>
  40235c:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  402363:	00 
  402364:	b9 00 04 00 00       	mov    $0x400,%ecx
  402369:	b8 00 00 00 00       	mov    $0x0,%eax
  40236e:	48 89 f7             	mov    %rsi,%rdi
  402371:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402374:	4c 89 ef             	mov    %r13,%rdi
  402377:	e8 0f fb ff ff       	callq  401e8b <urlencode>
  40237c:	85 c0                	test   %eax,%eax
  40237e:	0f 89 8a 00 00 00    	jns    40240e <submitr+0x347>
  402384:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40238b:	3a 20 52 
  40238e:	48 89 03             	mov    %rax,(%rbx)
  402391:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402398:	20 73 74 
  40239b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40239f:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4023a6:	63 6f 6e 
  4023a9:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023ad:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4023b4:	20 61 6e 
  4023b7:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4023bb:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4023c2:	67 61 6c 
  4023c5:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4023c9:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4023d0:	6e 70 72 
  4023d3:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4023d7:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4023de:	6c 65 20 
  4023e1:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4023e5:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4023ec:	63 74 65 
  4023ef:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4023f3:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4023f9:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4023fd:	89 ef                	mov    %ebp,%edi
  4023ff:	e8 ac e8 ff ff       	callq  400cb0 <close@plt>
  402404:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402409:	e9 c2 03 00 00       	jmpq   4027d0 <submitr+0x709>
  40240e:	4d 89 e1             	mov    %r12,%r9
  402411:	4c 8d 84 24 20 40 00 	lea    0x4020(%rsp),%r8
  402418:	00 
  402419:	4c 89 f9             	mov    %r15,%rcx
  40241c:	4c 89 f2             	mov    %r14,%rdx
  40241f:	be 78 32 40 00       	mov    $0x403278,%esi
  402424:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  40242b:	00 
  40242c:	b8 00 00 00 00       	mov    $0x0,%eax
  402431:	e8 aa e9 ff ff       	callq  400de0 <sprintf@plt>
  402436:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  40243d:	00 
  40243e:	b8 00 00 00 00       	mov    $0x0,%eax
  402443:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40244a:	f2 ae                	repnz scas %es:(%rdi),%al
  40244c:	48 f7 d1             	not    %rcx
  40244f:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402453:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40245a:	00 
  40245b:	89 ef                	mov    %ebp,%edi
  40245d:	e8 ff fa ff ff       	callq  401f61 <rio_writen>
  402462:	48 85 c0             	test   %rax,%rax
  402465:	79 6e                	jns    4024d5 <submitr+0x40e>
  402467:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40246e:	3a 20 43 
  402471:	48 89 03             	mov    %rax,(%rbx)
  402474:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40247b:	20 75 6e 
  40247e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402482:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402489:	74 6f 20 
  40248c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402490:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402497:	20 74 6f 
  40249a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40249e:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4024a5:	72 65 73 
  4024a8:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4024ac:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  4024b3:	65 72 76 
  4024b6:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4024ba:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  4024c0:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  4024c4:	89 ef                	mov    %ebp,%edi
  4024c6:	e8 e5 e7 ff ff       	callq  400cb0 <close@plt>
  4024cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024d0:	e9 fb 02 00 00       	jmpq   4027d0 <submitr+0x709>
  4024d5:	89 ee                	mov    %ebp,%esi
  4024d7:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4024de:	00 
  4024df:	e8 6c f9 ff ff       	callq  401e50 <rio_readinitb>
  4024e4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4024e9:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4024f0:	00 
  4024f1:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4024f8:	00 
  4024f9:	e8 46 fb ff ff       	callq  402044 <rio_readlineb>
  4024fe:	48 85 c0             	test   %rax,%rax
  402501:	7f 7d                	jg     402580 <submitr+0x4b9>
  402503:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40250a:	3a 20 43 
  40250d:	48 89 03             	mov    %rax,(%rbx)
  402510:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402517:	20 75 6e 
  40251a:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40251e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402525:	74 6f 20 
  402528:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40252c:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402533:	66 69 72 
  402536:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40253a:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402541:	61 64 65 
  402544:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402548:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  40254f:	6d 20 72 
  402552:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402556:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40255d:	20 73 65 
  402560:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402564:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40256b:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  40256f:	89 ef                	mov    %ebp,%edi
  402571:	e8 3a e7 ff ff       	callq  400cb0 <close@plt>
  402576:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40257b:	e9 50 02 00 00       	jmpq   4027d0 <submitr+0x709>
  402580:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  402585:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  40258c:	00 
  40258d:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  402594:	00 
  402595:	be ef 32 40 00       	mov    $0x4032ef,%esi
  40259a:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  4025a1:	00 
  4025a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4025a7:	e8 c4 e7 ff ff       	callq  400d70 <__isoc99_sscanf@plt>
  4025ac:	e9 98 00 00 00       	jmpq   402649 <submitr+0x582>
  4025b1:	ba 00 20 00 00       	mov    $0x2000,%edx
  4025b6:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4025bd:	00 
  4025be:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4025c5:	00 
  4025c6:	e8 79 fa ff ff       	callq  402044 <rio_readlineb>
  4025cb:	48 85 c0             	test   %rax,%rax
  4025ce:	7f 79                	jg     402649 <submitr+0x582>
  4025d0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025d7:	3a 20 43 
  4025da:	48 89 03             	mov    %rax,(%rbx)
  4025dd:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4025e4:	20 75 6e 
  4025e7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025eb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025f2:	74 6f 20 
  4025f5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025f9:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402600:	68 65 61 
  402603:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402607:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40260e:	66 72 6f 
  402611:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402615:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  40261c:	20 72 65 
  40261f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402623:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  40262a:	73 65 72 
  40262d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402631:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402638:	89 ef                	mov    %ebp,%edi
  40263a:	e8 71 e6 ff ff       	callq  400cb0 <close@plt>
  40263f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402644:	e9 87 01 00 00       	jmpq   4027d0 <submitr+0x709>
  402649:	0f b6 84 24 20 60 00 	movzbl 0x6020(%rsp),%eax
  402650:	00 
  402651:	83 e8 0d             	sub    $0xd,%eax
  402654:	75 15                	jne    40266b <submitr+0x5a4>
  402656:	0f b6 84 24 21 60 00 	movzbl 0x6021(%rsp),%eax
  40265d:	00 
  40265e:	83 e8 0a             	sub    $0xa,%eax
  402661:	75 08                	jne    40266b <submitr+0x5a4>
  402663:	0f b6 84 24 22 60 00 	movzbl 0x6022(%rsp),%eax
  40266a:	00 
  40266b:	85 c0                	test   %eax,%eax
  40266d:	0f 85 3e ff ff ff    	jne    4025b1 <submitr+0x4ea>
  402673:	ba 00 20 00 00       	mov    $0x2000,%edx
  402678:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40267f:	00 
  402680:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402687:	00 
  402688:	e8 b7 f9 ff ff       	callq  402044 <rio_readlineb>
  40268d:	48 85 c0             	test   %rax,%rax
  402690:	0f 8f 83 00 00 00    	jg     402719 <submitr+0x652>
  402696:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40269d:	3a 20 43 
  4026a0:	48 89 03             	mov    %rax,(%rbx)
  4026a3:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4026aa:	20 75 6e 
  4026ad:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026b1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026b8:	74 6f 20 
  4026bb:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026bf:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  4026c6:	73 74 61 
  4026c9:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026cd:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4026d4:	65 73 73 
  4026d7:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026db:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  4026e2:	72 6f 6d 
  4026e5:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026e9:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  4026f0:	6c 74 20 
  4026f3:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4026f7:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  4026fe:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402704:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402708:	89 ef                	mov    %ebp,%edi
  40270a:	e8 a1 e5 ff ff       	callq  400cb0 <close@plt>
  40270f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402714:	e9 b7 00 00 00       	jmpq   4027d0 <submitr+0x709>
  402719:	8b 94 24 1c 20 00 00 	mov    0x201c(%rsp),%edx
  402720:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402726:	74 28                	je     402750 <submitr+0x689>
  402728:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  40272d:	be b8 32 40 00       	mov    $0x4032b8,%esi
  402732:	48 89 df             	mov    %rbx,%rdi
  402735:	b8 00 00 00 00       	mov    $0x0,%eax
  40273a:	e8 a1 e6 ff ff       	callq  400de0 <sprintf@plt>
  40273f:	89 ef                	mov    %ebp,%edi
  402741:	e8 6a e5 ff ff       	callq  400cb0 <close@plt>
  402746:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40274b:	e9 80 00 00 00       	jmpq   4027d0 <submitr+0x709>
  402750:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  402757:	00 
  402758:	48 89 df             	mov    %rbx,%rdi
  40275b:	e8 e0 e4 ff ff       	callq  400c40 <strcpy@plt>
  402760:	89 ef                	mov    %ebp,%edi
  402762:	e8 49 e5 ff ff       	callq  400cb0 <close@plt>
  402767:	0f b6 03             	movzbl (%rbx),%eax
  40276a:	83 e8 4f             	sub    $0x4f,%eax
  40276d:	75 18                	jne    402787 <submitr+0x6c0>
  40276f:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  402773:	83 ea 4b             	sub    $0x4b,%edx
  402776:	75 11                	jne    402789 <submitr+0x6c2>
  402778:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  40277c:	83 ea 0a             	sub    $0xa,%edx
  40277f:	75 08                	jne    402789 <submitr+0x6c2>
  402781:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
  402785:	eb 02                	jmp    402789 <submitr+0x6c2>
  402787:	89 c2                	mov    %eax,%edx
  402789:	85 d2                	test   %edx,%edx
  40278b:	74 30                	je     4027bd <submitr+0x6f6>
  40278d:	bf 00 33 40 00       	mov    $0x403300,%edi
  402792:	b9 05 00 00 00       	mov    $0x5,%ecx
  402797:	48 89 de             	mov    %rbx,%rsi
  40279a:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40279c:	0f 97 c1             	seta   %cl
  40279f:	0f 92 c2             	setb   %dl
  4027a2:	38 d1                	cmp    %dl,%cl
  4027a4:	74 1e                	je     4027c4 <submitr+0x6fd>
  4027a6:	85 c0                	test   %eax,%eax
  4027a8:	75 0d                	jne    4027b7 <submitr+0x6f0>
  4027aa:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  4027ae:	83 e8 4b             	sub    $0x4b,%eax
  4027b1:	75 04                	jne    4027b7 <submitr+0x6f0>
  4027b3:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  4027b7:	85 c0                	test   %eax,%eax
  4027b9:	75 10                	jne    4027cb <submitr+0x704>
  4027bb:	eb 13                	jmp    4027d0 <submitr+0x709>
  4027bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4027c2:	eb 0c                	jmp    4027d0 <submitr+0x709>
  4027c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4027c9:	eb 05                	jmp    4027d0 <submitr+0x709>
  4027cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027d0:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  4027d7:	5b                   	pop    %rbx
  4027d8:	5d                   	pop    %rbp
  4027d9:	41 5c                	pop    %r12
  4027db:	41 5d                	pop    %r13
  4027dd:	41 5e                	pop    %r14
  4027df:	41 5f                	pop    %r15
  4027e1:	c3                   	retq   

00000000004027e2 <init_timeout>:
  4027e2:	53                   	push   %rbx
  4027e3:	89 fb                	mov    %edi,%ebx
  4027e5:	85 ff                	test   %edi,%edi
  4027e7:	74 1f                	je     402808 <init_timeout+0x26>
  4027e9:	85 ff                	test   %edi,%edi
  4027eb:	79 05                	jns    4027f2 <init_timeout+0x10>
  4027ed:	bb 00 00 00 00       	mov    $0x0,%ebx
  4027f2:	be 62 1e 40 00       	mov    $0x401e62,%esi
  4027f7:	bf 0e 00 00 00       	mov    $0xe,%edi
  4027fc:	e8 df e4 ff ff       	callq  400ce0 <signal@plt>
  402801:	89 df                	mov    %ebx,%edi
  402803:	e8 98 e4 ff ff       	callq  400ca0 <alarm@plt>
  402808:	5b                   	pop    %rbx
  402809:	c3                   	retq   

000000000040280a <init_driver>:
  40280a:	55                   	push   %rbp
  40280b:	53                   	push   %rbx
  40280c:	48 83 ec 18          	sub    $0x18,%rsp
  402810:	48 89 fd             	mov    %rdi,%rbp
  402813:	be 01 00 00 00       	mov    $0x1,%esi
  402818:	bf 0d 00 00 00       	mov    $0xd,%edi
  40281d:	e8 be e4 ff ff       	callq  400ce0 <signal@plt>
  402822:	be 01 00 00 00       	mov    $0x1,%esi
  402827:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40282c:	e8 af e4 ff ff       	callq  400ce0 <signal@plt>
  402831:	be 01 00 00 00       	mov    $0x1,%esi
  402836:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40283b:	e8 a0 e4 ff ff       	callq  400ce0 <signal@plt>
  402840:	ba 00 00 00 00       	mov    $0x0,%edx
  402845:	be 01 00 00 00       	mov    $0x1,%esi
  40284a:	bf 02 00 00 00       	mov    $0x2,%edi
  40284f:	e8 bc e5 ff ff       	callq  400e10 <socket@plt>
  402854:	89 c3                	mov    %eax,%ebx
  402856:	85 c0                	test   %eax,%eax
  402858:	79 4f                	jns    4028a9 <init_driver+0x9f>
  40285a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402861:	3a 20 43 
  402864:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402868:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40286f:	20 75 6e 
  402872:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402876:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40287d:	74 6f 20 
  402880:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402884:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40288b:	65 20 73 
  40288e:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402892:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402899:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40289f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028a4:	e9 23 01 00 00       	jmpq   4029cc <init_driver+0x1c2>
  4028a9:	bf 3f 2e 40 00       	mov    $0x402e3f,%edi
  4028ae:	e8 3d e4 ff ff       	callq  400cf0 <gethostbyname@plt>
  4028b3:	48 85 c0             	test   %rax,%rax
  4028b6:	75 68                	jne    402920 <init_driver+0x116>
  4028b8:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4028bf:	3a 20 44 
  4028c2:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028c6:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4028cd:	20 75 6e 
  4028d0:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4028d4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028db:	74 6f 20 
  4028de:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028e2:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4028e9:	76 65 20 
  4028ec:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4028f0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4028f7:	72 20 61 
  4028fa:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4028fe:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402905:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  40290b:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40290f:	89 df                	mov    %ebx,%edi
  402911:	e8 9a e3 ff ff       	callq  400cb0 <close@plt>
  402916:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40291b:	e9 ac 00 00 00       	jmpq   4029cc <init_driver+0x1c2>
  402920:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402927:	00 
  402928:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40292f:	00 00 
  402931:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402937:	48 8b 48 18          	mov    0x18(%rax),%rcx
  40293b:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40293f:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  402944:	48 8b 39             	mov    (%rcx),%rdi
  402947:	e8 44 e4 ff ff       	callq  400d90 <bcopy@plt>
  40294c:	66 c7 44 24 02 3c 9a 	movw   $0x9a3c,0x2(%rsp)
  402953:	ba 10 00 00 00       	mov    $0x10,%edx
  402958:	48 89 e6             	mov    %rsp,%rsi
  40295b:	89 df                	mov    %ebx,%edi
  40295d:	e8 9e e4 ff ff       	callq  400e00 <connect@plt>
  402962:	85 c0                	test   %eax,%eax
  402964:	79 50                	jns    4029b6 <init_driver+0x1ac>
  402966:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  40296d:	3a 20 55 
  402970:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402974:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  40297b:	20 74 6f 
  40297e:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402982:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402989:	65 63 74 
  40298c:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402990:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402997:	65 72 76 
  40299a:	48 89 45 18          	mov    %rax,0x18(%rbp)
  40299e:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4029a4:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4029a8:	89 df                	mov    %ebx,%edi
  4029aa:	e8 01 e3 ff ff       	callq  400cb0 <close@plt>
  4029af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029b4:	eb 16                	jmp    4029cc <init_driver+0x1c2>
  4029b6:	89 df                	mov    %ebx,%edi
  4029b8:	e8 f3 e2 ff ff       	callq  400cb0 <close@plt>
  4029bd:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4029c3:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4029c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4029cc:	48 83 c4 18          	add    $0x18,%rsp
  4029d0:	5b                   	pop    %rbx
  4029d1:	5d                   	pop    %rbp
  4029d2:	c3                   	retq   

00000000004029d3 <driver_post>:
  4029d3:	53                   	push   %rbx
  4029d4:	48 83 ec 10          	sub    $0x10,%rsp
  4029d8:	4c 89 cb             	mov    %r9,%rbx
  4029db:	45 85 c0             	test   %r8d,%r8d
  4029de:	74 22                	je     402a02 <driver_post+0x2f>
  4029e0:	48 89 ce             	mov    %rcx,%rsi
  4029e3:	bf 05 33 40 00       	mov    $0x403305,%edi
  4029e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4029ed:	e8 8e e2 ff ff       	callq  400c80 <printf@plt>
  4029f2:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4029f7:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4029fb:	b8 00 00 00 00       	mov    $0x0,%eax
  402a00:	eb 39                	jmp    402a3b <driver_post+0x68>
  402a02:	48 85 ff             	test   %rdi,%rdi
  402a05:	74 26                	je     402a2d <driver_post+0x5a>
  402a07:	80 3f 00             	cmpb   $0x0,(%rdi)
  402a0a:	74 21                	je     402a2d <driver_post+0x5a>
  402a0c:	4c 89 0c 24          	mov    %r9,(%rsp)
  402a10:	49 89 c9             	mov    %rcx,%r9
  402a13:	49 89 d0             	mov    %rdx,%r8
  402a16:	48 89 f9             	mov    %rdi,%rcx
  402a19:	48 89 f2             	mov    %rsi,%rdx
  402a1c:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  402a21:	bf 3f 2e 40 00       	mov    $0x402e3f,%edi
  402a26:	e8 9c f6 ff ff       	callq  4020c7 <submitr>
  402a2b:	eb 0e                	jmp    402a3b <driver_post+0x68>
  402a2d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402a32:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402a36:	b8 00 00 00 00       	mov    $0x0,%eax
  402a3b:	48 83 c4 10          	add    $0x10,%rsp
  402a3f:	5b                   	pop    %rbx
  402a40:	c3                   	retq   

0000000000402a41 <check>:
  402a41:	89 f8                	mov    %edi,%eax
  402a43:	c1 e8 1c             	shr    $0x1c,%eax
  402a46:	85 c0                	test   %eax,%eax
  402a48:	74 1d                	je     402a67 <check+0x26>
  402a4a:	b9 00 00 00 00       	mov    $0x0,%ecx
  402a4f:	eb 0b                	jmp    402a5c <check+0x1b>
  402a51:	89 f8                	mov    %edi,%eax
  402a53:	d3 e8                	shr    %cl,%eax
  402a55:	3c 0a                	cmp    $0xa,%al
  402a57:	74 14                	je     402a6d <check+0x2c>
  402a59:	83 c1 08             	add    $0x8,%ecx
  402a5c:	83 f9 1f             	cmp    $0x1f,%ecx
  402a5f:	7e f0                	jle    402a51 <check+0x10>
  402a61:	b8 01 00 00 00       	mov    $0x1,%eax
  402a66:	c3                   	retq   
  402a67:	b8 00 00 00 00       	mov    $0x0,%eax
  402a6c:	c3                   	retq   
  402a6d:	b8 00 00 00 00       	mov    $0x0,%eax
  402a72:	c3                   	retq   

0000000000402a73 <gencookie>:
  402a73:	53                   	push   %rbx
  402a74:	83 c7 01             	add    $0x1,%edi
  402a77:	e8 a4 e1 ff ff       	callq  400c20 <srandom@plt>
  402a7c:	e8 cf e2 ff ff       	callq  400d50 <random@plt>
  402a81:	89 c3                	mov    %eax,%ebx
  402a83:	89 c7                	mov    %eax,%edi
  402a85:	e8 b7 ff ff ff       	callq  402a41 <check>
  402a8a:	85 c0                	test   %eax,%eax
  402a8c:	74 ee                	je     402a7c <gencookie+0x9>
  402a8e:	89 d8                	mov    %ebx,%eax
  402a90:	5b                   	pop    %rbx
  402a91:	c3                   	retq   
  402a92:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402a99:	00 00 00 
  402a9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402aa0 <__libc_csu_init>:
  402aa0:	41 57                	push   %r15
  402aa2:	41 89 ff             	mov    %edi,%r15d
  402aa5:	41 56                	push   %r14
  402aa7:	49 89 f6             	mov    %rsi,%r14
  402aaa:	41 55                	push   %r13
  402aac:	49 89 d5             	mov    %rdx,%r13
  402aaf:	41 54                	push   %r12
  402ab1:	4c 8d 25 58 13 20 00 	lea    0x201358(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402ab8:	55                   	push   %rbp
  402ab9:	48 8d 2d 58 13 20 00 	lea    0x201358(%rip),%rbp        # 603e18 <__do_global_dtors_aux_fini_array_entry>
  402ac0:	53                   	push   %rbx
  402ac1:	4c 29 e5             	sub    %r12,%rbp
  402ac4:	31 db                	xor    %ebx,%ebx
  402ac6:	48 c1 fd 03          	sar    $0x3,%rbp
  402aca:	48 83 ec 08          	sub    $0x8,%rsp
  402ace:	e8 f5 e0 ff ff       	callq  400bc8 <_init>
  402ad3:	48 85 ed             	test   %rbp,%rbp
  402ad6:	74 1e                	je     402af6 <__libc_csu_init+0x56>
  402ad8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402adf:	00 
  402ae0:	4c 89 ea             	mov    %r13,%rdx
  402ae3:	4c 89 f6             	mov    %r14,%rsi
  402ae6:	44 89 ff             	mov    %r15d,%edi
  402ae9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402aed:	48 83 c3 01          	add    $0x1,%rbx
  402af1:	48 39 eb             	cmp    %rbp,%rbx
  402af4:	75 ea                	jne    402ae0 <__libc_csu_init+0x40>
  402af6:	48 83 c4 08          	add    $0x8,%rsp
  402afa:	5b                   	pop    %rbx
  402afb:	5d                   	pop    %rbp
  402afc:	41 5c                	pop    %r12
  402afe:	41 5d                	pop    %r13
  402b00:	41 5e                	pop    %r14
  402b02:	41 5f                	pop    %r15
  402b04:	c3                   	retq   
  402b05:	90                   	nop
  402b06:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402b0d:	00 00 00 

0000000000402b10 <__libc_csu_fini>:
  402b10:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402b14 <_fini>:
  402b14:	48 83 ec 08          	sub    $0x8,%rsp
  402b18:	48 83 c4 08          	add    $0x8,%rsp
  402b1c:	c3                   	retq   