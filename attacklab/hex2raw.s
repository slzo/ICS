
hex2raw:     file format elf64-x86-64


Disassembly of section .init:

0000000000400718 <_init>:
  400718:	48 83 ec 08          	sub    $0x8,%rsp
  40071c:	48 8b 05 d5 18 20 00 	mov    0x2018d5(%rip),%rax        # 601ff8 <__gmon_start__>
  400723:	48 85 c0             	test   %rax,%rax
  400726:	74 05                	je     40072d <_init+0x15>
  400728:	e8 73 00 00 00       	callq  4007a0 <__gmon_start__@plt>
  40072d:	48 83 c4 08          	add    $0x8,%rsp
  400731:	c3                   	retq   

Disassembly of section .plt:

0000000000400740 <.plt>:
  400740:	ff 35 c2 18 20 00    	pushq  0x2018c2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400746:	ff 25 c4 18 20 00    	jmpq   *0x2018c4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40074c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400750 <free@plt>:
  400750:	ff 25 c2 18 20 00    	jmpq   *0x2018c2(%rip)        # 602018 <free@GLIBC_2.2.5>
  400756:	68 00 00 00 00       	pushq  $0x0
  40075b:	e9 e0 ff ff ff       	jmpq   400740 <.plt>

0000000000400760 <__isoc99_fscanf@plt>:
  400760:	ff 25 ba 18 20 00    	jmpq   *0x2018ba(%rip)        # 602020 <__isoc99_fscanf@GLIBC_2.7>
  400766:	68 01 00 00 00       	pushq  $0x1
  40076b:	e9 d0 ff ff ff       	jmpq   400740 <.plt>

0000000000400770 <write@plt>:
  400770:	ff 25 b2 18 20 00    	jmpq   *0x2018b2(%rip)        # 602028 <write@GLIBC_2.2.5>
  400776:	68 02 00 00 00       	pushq  $0x2
  40077b:	e9 c0 ff ff ff       	jmpq   400740 <.plt>

0000000000400780 <__libc_start_main@plt>:
  400780:	ff 25 aa 18 20 00    	jmpq   *0x2018aa(%rip)        # 602030 <__libc_start_main@GLIBC_2.2.5>
  400786:	68 03 00 00 00       	pushq  $0x3
  40078b:	e9 b0 ff ff ff       	jmpq   400740 <.plt>

0000000000400790 <fprintf@plt>:
  400790:	ff 25 a2 18 20 00    	jmpq   *0x2018a2(%rip)        # 602038 <fprintf@GLIBC_2.2.5>
  400796:	68 04 00 00 00       	pushq  $0x4
  40079b:	e9 a0 ff ff ff       	jmpq   400740 <.plt>

00000000004007a0 <__gmon_start__@plt>:
  4007a0:	ff 25 9a 18 20 00    	jmpq   *0x20189a(%rip)        # 602040 <__gmon_start__>
  4007a6:	68 05 00 00 00       	pushq  $0x5
  4007ab:	e9 90 ff ff ff       	jmpq   400740 <.plt>

00000000004007b0 <malloc@plt>:
  4007b0:	ff 25 92 18 20 00    	jmpq   *0x201892(%rip)        # 602048 <malloc@GLIBC_2.2.5>
  4007b6:	68 06 00 00 00       	pushq  $0x6
  4007bb:	e9 80 ff ff ff       	jmpq   400740 <.plt>

00000000004007c0 <__isoc99_sscanf@plt>:
  4007c0:	ff 25 8a 18 20 00    	jmpq   *0x20188a(%rip)        # 602050 <__isoc99_sscanf@GLIBC_2.7>
  4007c6:	68 07 00 00 00       	pushq  $0x7
  4007cb:	e9 70 ff ff ff       	jmpq   400740 <.plt>

00000000004007d0 <realloc@plt>:
  4007d0:	ff 25 82 18 20 00    	jmpq   *0x201882(%rip)        # 602058 <realloc@GLIBC_2.2.5>
  4007d6:	68 08 00 00 00       	pushq  $0x8
  4007db:	e9 60 ff ff ff       	jmpq   400740 <.plt>

00000000004007e0 <fopen@plt>:
  4007e0:	ff 25 7a 18 20 00    	jmpq   *0x20187a(%rip)        # 602060 <fopen@GLIBC_2.2.5>
  4007e6:	68 09 00 00 00       	pushq  $0x9
  4007eb:	e9 50 ff ff ff       	jmpq   400740 <.plt>

00000000004007f0 <getopt@plt>:
  4007f0:	ff 25 72 18 20 00    	jmpq   *0x201872(%rip)        # 602068 <getopt@GLIBC_2.2.5>
  4007f6:	68 0a 00 00 00       	pushq  $0xa
  4007fb:	e9 40 ff ff ff       	jmpq   400740 <.plt>

0000000000400800 <fwrite@plt>:
  400800:	ff 25 6a 18 20 00    	jmpq   *0x20186a(%rip)        # 602070 <fwrite@GLIBC_2.2.5>
  400806:	68 0b 00 00 00       	pushq  $0xb
  40080b:	e9 30 ff ff ff       	jmpq   400740 <.plt>

0000000000400810 <__ctype_b_loc@plt>:
  400810:	ff 25 62 18 20 00    	jmpq   *0x201862(%rip)        # 602078 <__ctype_b_loc@GLIBC_2.3>
  400816:	68 0c 00 00 00       	pushq  $0xc
  40081b:	e9 20 ff ff ff       	jmpq   400740 <.plt>

Disassembly of section .text:

0000000000400820 <_start>:
  400820:	31 ed                	xor    %ebp,%ebp
  400822:	49 89 d1             	mov    %rdx,%r9
  400825:	5e                   	pop    %rsi
  400826:	48 89 e2             	mov    %rsp,%rdx
  400829:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40082d:	50                   	push   %rax
  40082e:	54                   	push   %rsp
  40082f:	49 c7 c0 f0 0c 40 00 	mov    $0x400cf0,%r8
  400836:	48 c7 c1 80 0c 40 00 	mov    $0x400c80,%rcx
  40083d:	48 c7 c7 42 0b 40 00 	mov    $0x400b42,%rdi
  400844:	e8 37 ff ff ff       	callq  400780 <__libc_start_main@plt>
  400849:	f4                   	hlt    
  40084a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400850 <deregister_tm_clones>:
  400850:	b8 8f 20 60 00       	mov    $0x60208f,%eax
  400855:	55                   	push   %rbp
  400856:	48 2d 88 20 60 00    	sub    $0x602088,%rax
  40085c:	48 83 f8 0e          	cmp    $0xe,%rax
  400860:	48 89 e5             	mov    %rsp,%rbp
  400863:	77 02                	ja     400867 <deregister_tm_clones+0x17>
  400865:	5d                   	pop    %rbp
  400866:	c3                   	retq   
  400867:	b8 00 00 00 00       	mov    $0x0,%eax
  40086c:	48 85 c0             	test   %rax,%rax
  40086f:	74 f4                	je     400865 <deregister_tm_clones+0x15>
  400871:	5d                   	pop    %rbp
  400872:	bf 88 20 60 00       	mov    $0x602088,%edi
  400877:	ff e0                	jmpq   *%rax
  400879:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400880 <register_tm_clones>:
  400880:	b8 88 20 60 00       	mov    $0x602088,%eax
  400885:	55                   	push   %rbp
  400886:	48 2d 88 20 60 00    	sub    $0x602088,%rax
  40088c:	48 c1 f8 03          	sar    $0x3,%rax
  400890:	48 89 e5             	mov    %rsp,%rbp
  400893:	48 89 c2             	mov    %rax,%rdx
  400896:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40089a:	48 01 d0             	add    %rdx,%rax
  40089d:	48 d1 f8             	sar    %rax
  4008a0:	75 02                	jne    4008a4 <register_tm_clones+0x24>
  4008a2:	5d                   	pop    %rbp
  4008a3:	c3                   	retq   
  4008a4:	ba 00 00 00 00       	mov    $0x0,%edx
  4008a9:	48 85 d2             	test   %rdx,%rdx
  4008ac:	74 f4                	je     4008a2 <register_tm_clones+0x22>
  4008ae:	5d                   	pop    %rbp
  4008af:	48 89 c6             	mov    %rax,%rsi
  4008b2:	bf 88 20 60 00       	mov    $0x602088,%edi
  4008b7:	ff e2                	jmpq   *%rdx
  4008b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004008c0 <__do_global_dtors_aux>:
  4008c0:	80 3d d9 17 20 00 00 	cmpb   $0x0,0x2017d9(%rip)        # 6020a0 <completed.6355>
  4008c7:	75 11                	jne    4008da <__do_global_dtors_aux+0x1a>
  4008c9:	55                   	push   %rbp
  4008ca:	48 89 e5             	mov    %rsp,%rbp
  4008cd:	e8 7e ff ff ff       	callq  400850 <deregister_tm_clones>
  4008d2:	5d                   	pop    %rbp
  4008d3:	c6 05 c6 17 20 00 01 	movb   $0x1,0x2017c6(%rip)        # 6020a0 <completed.6355>
  4008da:	f3 c3                	repz retq 
  4008dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004008e0 <frame_dummy>:
  4008e0:	48 83 3d 38 15 20 00 	cmpq   $0x0,0x201538(%rip)        # 601e20 <__JCR_END__>
  4008e7:	00 
  4008e8:	74 1e                	je     400908 <frame_dummy+0x28>
  4008ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4008ef:	48 85 c0             	test   %rax,%rax
  4008f2:	74 14                	je     400908 <frame_dummy+0x28>
  4008f4:	55                   	push   %rbp
  4008f5:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  4008fa:	48 89 e5             	mov    %rsp,%rbp
  4008fd:	ff d0                	callq  *%rax
  4008ff:	5d                   	pop    %rbp
  400900:	e9 7b ff ff ff       	jmpq   400880 <register_tm_clones>
  400905:	0f 1f 00             	nopl   (%rax)
  400908:	e9 73 ff ff ff       	jmpq   400880 <register_tm_clones>
  40090d:	0f 1f 00             	nopl   (%rax)

0000000000400910 <usage>:
  400910:	48 83 ec 08          	sub    $0x8,%rsp
  400914:	48 89 fa             	mov    %rdi,%rdx
  400917:	be 10 0d 40 00       	mov    $0x400d10,%esi
  40091c:	48 8b 3d 75 17 20 00 	mov    0x201775(%rip),%rdi        # 602098 <stderr@@GLIBC_2.2.5>
  400923:	b8 00 00 00 00       	mov    $0x0,%eax
  400928:	e8 63 fe ff ff       	callq  400790 <fprintf@plt>
  40092d:	48 8b 0d 64 17 20 00 	mov    0x201764(%rip),%rcx        # 602098 <stderr@@GLIBC_2.2.5>
  400934:	ba 1c 00 00 00       	mov    $0x1c,%edx
  400939:	be 01 00 00 00       	mov    $0x1,%esi
  40093e:	bf f8 0d 40 00       	mov    $0x400df8,%edi
  400943:	e8 b8 fe ff ff       	callq  400800 <fwrite@plt>
  400948:	48 8b 0d 49 17 20 00 	mov    0x201749(%rip),%rcx        # 602098 <stderr@@GLIBC_2.2.5>
  40094f:	ba 1f 00 00 00       	mov    $0x1f,%edx
  400954:	be 01 00 00 00       	mov    $0x1,%esi
  400959:	bf 30 0d 40 00       	mov    $0x400d30,%edi
  40095e:	e8 9d fe ff ff       	callq  400800 <fwrite@plt>
  400963:	48 8b 0d 2e 17 20 00 	mov    0x20172e(%rip),%rcx        # 602098 <stderr@@GLIBC_2.2.5>
  40096a:	ba 21 00 00 00       	mov    $0x21,%edx
  40096f:	be 01 00 00 00       	mov    $0x1,%esi
  400974:	bf 50 0d 40 00       	mov    $0x400d50,%edi
  400979:	e8 82 fe ff ff       	callq  400800 <fwrite@plt>
  40097e:	48 83 c4 08          	add    $0x8,%rsp
  400982:	c3                   	retq   

0000000000400983 <convert_to_hex_value>:
  400983:	48 83 ec 18          	sub    $0x18,%rsp
  400987:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  40098c:	be 15 0e 40 00       	mov    $0x400e15,%esi
  400991:	b8 00 00 00 00       	mov    $0x0,%eax
  400996:	e8 25 fe ff ff       	callq  4007c0 <__isoc99_sscanf@plt>
  40099b:	0f b6 44 24 0c       	movzbl 0xc(%rsp),%eax
  4009a0:	48 83 c4 18          	add    $0x18,%rsp
  4009a4:	c3                   	retq   

00000000004009a5 <convert_to_byte_string>:
  4009a5:	55                   	push   %rbp
  4009a6:	48 89 e5             	mov    %rsp,%rbp
  4009a9:	41 57                	push   %r15
  4009ab:	41 56                	push   %r14
  4009ad:	41 55                	push   %r13
  4009af:	41 54                	push   %r12
  4009b1:	53                   	push   %rbx
  4009b2:	48 83 ec 28          	sub    $0x28,%rsp
  4009b6:	49 89 fe             	mov    %rdi,%r14
  4009b9:	48 89 75 b8          	mov    %rsi,-0x48(%rbp)
  4009bd:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
  4009c4:	bf 00 04 00 00       	mov    $0x400,%edi
  4009c9:	e8 e2 fd ff ff       	callq  4007b0 <malloc@plt>
  4009ce:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  4009d2:	48 85 c0             	test   %rax,%rax
  4009d5:	0f 84 4c 01 00 00    	je     400b27 <convert_to_byte_string+0x182>
  4009db:	48 89 e3             	mov    %rsp,%rbx
  4009de:	41 bf 00 00 00 00    	mov    $0x0,%r15d
  4009e4:	c7 45 c4 00 04 00 00 	movl   $0x400,-0x3c(%rbp)
  4009eb:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4009f1:	e9 07 01 00 00       	jmpq   400afd <convert_to_byte_string+0x158>
  4009f6:	44 0f b6 23          	movzbl (%rbx),%r12d
  4009fa:	41 0f b6 c4          	movzbl %r12b,%eax
  4009fe:	89 c2                	mov    %eax,%edx
  400a00:	83 ea 2f             	sub    $0x2f,%edx
  400a03:	75 0d                	jne    400a12 <convert_to_byte_string+0x6d>
  400a05:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  400a09:	83 ea 2a             	sub    $0x2a,%edx
  400a0c:	75 04                	jne    400a12 <convert_to_byte_string+0x6d>
  400a0e:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  400a12:	85 d2                	test   %edx,%edx
  400a14:	75 09                	jne    400a1f <convert_to_byte_string+0x7a>
  400a16:	41 83 c5 01          	add    $0x1,%r13d
  400a1a:	e9 de 00 00 00       	jmpq   400afd <convert_to_byte_string+0x158>
  400a1f:	83 e8 2a             	sub    $0x2a,%eax
  400a22:	75 0d                	jne    400a31 <convert_to_byte_string+0x8c>
  400a24:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  400a28:	83 e8 2f             	sub    $0x2f,%eax
  400a2b:	75 04                	jne    400a31 <convert_to_byte_string+0x8c>
  400a2d:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  400a31:	85 c0                	test   %eax,%eax
  400a33:	75 37                	jne    400a6c <convert_to_byte_string+0xc7>
  400a35:	45 85 ed             	test   %r13d,%r13d
  400a38:	7f 29                	jg     400a63 <convert_to_byte_string+0xbe>
  400a3a:	ba 18 0e 40 00       	mov    $0x400e18,%edx
  400a3f:	be 1b 0e 40 00       	mov    $0x400e1b,%esi
  400a44:	48 8b 3d 4d 16 20 00 	mov    0x20164d(%rip),%rdi        # 602098 <stderr@@GLIBC_2.2.5>
  400a4b:	e8 40 fd ff ff       	callq  400790 <fprintf@plt>
  400a50:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  400a54:	e8 f7 fc ff ff       	callq  400750 <free@plt>
  400a59:	b8 00 00 00 00       	mov    $0x0,%eax
  400a5e:	e9 d0 00 00 00       	jmpq   400b33 <convert_to_byte_string+0x18e>
  400a63:	41 83 ed 01          	sub    $0x1,%r13d
  400a67:	e9 91 00 00 00       	jmpq   400afd <convert_to_byte_string+0x158>
  400a6c:	45 85 ed             	test   %r13d,%r13d
  400a6f:	0f 85 88 00 00 00    	jne    400afd <convert_to_byte_string+0x158>
  400a75:	e8 96 fd ff ff       	callq  400810 <__ctype_b_loc@plt>
  400a7a:	48 8b 00             	mov    (%rax),%rax
  400a7d:	4d 0f be e4          	movsbq %r12b,%r12
  400a81:	42 f6 44 60 01 10    	testb  $0x10,0x1(%rax,%r12,2)
  400a87:	74 12                	je     400a9b <convert_to_byte_string+0xf6>
  400a89:	48 0f be 53 01       	movsbq 0x1(%rbx),%rdx
  400a8e:	f6 44 50 01 10       	testb  $0x10,0x1(%rax,%rdx,2)
  400a93:	74 06                	je     400a9b <convert_to_byte_string+0xf6>
  400a95:	80 7b 02 00          	cmpb   $0x0,0x2(%rbx)
  400a99:	74 29                	je     400ac4 <convert_to_byte_string+0x11f>
  400a9b:	48 89 da             	mov    %rbx,%rdx
  400a9e:	be 78 0d 40 00       	mov    $0x400d78,%esi
  400aa3:	48 8b 3d ee 15 20 00 	mov    0x2015ee(%rip),%rdi        # 602098 <stderr@@GLIBC_2.2.5>
  400aaa:	b8 00 00 00 00       	mov    $0x0,%eax
  400aaf:	e8 dc fc ff ff       	callq  400790 <fprintf@plt>
  400ab4:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  400ab8:	e8 93 fc ff ff       	callq  400750 <free@plt>
  400abd:	b8 00 00 00 00       	mov    $0x0,%eax
  400ac2:	eb 6f                	jmp    400b33 <convert_to_byte_string+0x18e>
  400ac4:	48 89 df             	mov    %rbx,%rdi
  400ac7:	e8 b7 fe ff ff       	callq  400983 <convert_to_hex_value>
  400acc:	41 89 c4             	mov    %eax,%r12d
  400acf:	44 3b 7d c4          	cmp    -0x3c(%rbp),%r15d
  400ad3:	75 19                	jne    400aee <convert_to_byte_string+0x149>
  400ad5:	d1 65 c4             	shll   -0x3c(%rbp)
  400ad8:	48 63 75 c4          	movslq -0x3c(%rbp),%rsi
  400adc:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  400ae0:	e8 eb fc ff ff       	callq  4007d0 <realloc@plt>
  400ae5:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  400ae9:	48 85 c0             	test   %rax,%rax
  400aec:	74 40                	je     400b2e <convert_to_byte_string+0x189>
  400aee:	49 63 c7             	movslq %r15d,%rax
  400af1:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  400af5:	44 88 24 01          	mov    %r12b,(%rcx,%rax,1)
  400af9:	45 8d 7f 01          	lea    0x1(%r15),%r15d
  400afd:	48 89 da             	mov    %rbx,%rdx
  400b00:	be 33 0e 40 00       	mov    $0x400e33,%esi
  400b05:	4c 89 f7             	mov    %r14,%rdi
  400b08:	b8 00 00 00 00       	mov    $0x0,%eax
  400b0d:	e8 4e fc ff ff       	callq  400760 <__isoc99_fscanf@plt>
  400b12:	85 c0                	test   %eax,%eax
  400b14:	0f 8f dc fe ff ff    	jg     4009f6 <convert_to_byte_string+0x51>
  400b1a:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400b1e:	44 89 38             	mov    %r15d,(%rax)
  400b21:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400b25:	eb 0c                	jmp    400b33 <convert_to_byte_string+0x18e>
  400b27:	b8 00 00 00 00       	mov    $0x0,%eax
  400b2c:	eb 05                	jmp    400b33 <convert_to_byte_string+0x18e>
  400b2e:	b8 00 00 00 00       	mov    $0x0,%eax
  400b33:	48 8d 65 d8          	lea    -0x28(%rbp),%rsp
  400b37:	5b                   	pop    %rbx
  400b38:	41 5c                	pop    %r12
  400b3a:	41 5d                	pop    %r13
  400b3c:	41 5e                	pop    %r14
  400b3e:	41 5f                	pop    %r15
  400b40:	5d                   	pop    %rbp
  400b41:	c3                   	retq   

0000000000400b42 <main>:
  400b42:	41 54                	push   %r12
  400b44:	55                   	push   %rbp
  400b45:	53                   	push   %rbx
  400b46:	48 83 ec 10          	sub    $0x10,%rsp
  400b4a:	89 fd                	mov    %edi,%ebp
  400b4c:	48 89 f3             	mov    %rsi,%rbx
  400b4f:	4c 8b 25 32 15 20 00 	mov    0x201532(%rip),%r12        # 602088 <stdin@@GLIBC_2.2.5>
  400b56:	eb 6e                	jmp    400bc6 <main+0x84>
  400b58:	3c 68                	cmp    $0x68,%al
  400b5a:	74 06                	je     400b62 <main+0x20>
  400b5c:	3c 69                	cmp    $0x69,%al
  400b5e:	74 14                	je     400b74 <main+0x32>
  400b60:	eb 52                	jmp    400bb4 <main+0x72>
  400b62:	48 8b 3b             	mov    (%rbx),%rdi
  400b65:	e8 a6 fd ff ff       	callq  400910 <usage>
  400b6a:	b8 00 00 00 00       	mov    $0x0,%eax
  400b6f:	e9 f9 00 00 00       	jmpq   400c6d <main+0x12b>
  400b74:	be 36 0e 40 00       	mov    $0x400e36,%esi
  400b79:	48 8b 3d 10 15 20 00 	mov    0x201510(%rip),%rdi        # 602090 <optarg@@GLIBC_2.2.5>
  400b80:	e8 5b fc ff ff       	callq  4007e0 <fopen@plt>
  400b85:	49 89 c4             	mov    %rax,%r12
  400b88:	48 85 c0             	test   %rax,%rax
  400b8b:	75 39                	jne    400bc6 <main+0x84>
  400b8d:	48 8b 15 fc 14 20 00 	mov    0x2014fc(%rip),%rdx        # 602090 <optarg@@GLIBC_2.2.5>
  400b94:	be d8 0d 40 00       	mov    $0x400dd8,%esi
  400b99:	48 8b 3d f8 14 20 00 	mov    0x2014f8(%rip),%rdi        # 602098 <stderr@@GLIBC_2.2.5>
  400ba0:	b8 00 00 00 00       	mov    $0x0,%eax
  400ba5:	e8 e6 fb ff ff       	callq  400790 <fprintf@plt>
  400baa:	b8 01 00 00 00       	mov    $0x1,%eax
  400baf:	e9 b9 00 00 00       	jmpq   400c6d <main+0x12b>
  400bb4:	48 8b 3b             	mov    (%rbx),%rdi
  400bb7:	e8 54 fd ff ff       	callq  400910 <usage>
  400bbc:	b8 01 00 00 00       	mov    $0x1,%eax
  400bc1:	e9 a7 00 00 00       	jmpq   400c6d <main+0x12b>
  400bc6:	ba 38 0e 40 00       	mov    $0x400e38,%edx
  400bcb:	48 89 de             	mov    %rbx,%rsi
  400bce:	89 ef                	mov    %ebp,%edi
  400bd0:	e8 1b fc ff ff       	callq  4007f0 <getopt@plt>
  400bd5:	3c ff                	cmp    $0xff,%al
  400bd7:	0f 85 7b ff ff ff    	jne    400b58 <main+0x16>
  400bdd:	48 8d 74 24 0c       	lea    0xc(%rsp),%rsi
  400be2:	4c 89 e7             	mov    %r12,%rdi
  400be5:	e8 bb fd ff ff       	callq  4009a5 <convert_to_byte_string>
  400bea:	48 85 c0             	test   %rax,%rax
  400bed:	74 72                	je     400c61 <main+0x11f>
  400bef:	c6 44 24 0b 0a       	movb   $0xa,0xb(%rsp)
  400bf4:	48 63 54 24 0c       	movslq 0xc(%rsp),%rdx
  400bf9:	48 89 c6             	mov    %rax,%rsi
  400bfc:	bf 01 00 00 00       	mov    $0x1,%edi
  400c01:	e8 6a fb ff ff       	callq  400770 <write@plt>
  400c06:	48 85 c0             	test   %rax,%rax
  400c09:	79 1b                	jns    400c26 <main+0xe4>
  400c0b:	48 8b 0d 86 14 20 00 	mov    0x201486(%rip),%rcx        # 602098 <stderr@@GLIBC_2.2.5>
  400c12:	ba 0d 00 00 00       	mov    $0xd,%edx
  400c17:	be 01 00 00 00       	mov    $0x1,%esi
  400c1c:	bf 3e 0e 40 00       	mov    $0x400e3e,%edi
  400c21:	e8 da fb ff ff       	callq  400800 <fwrite@plt>
  400c26:	ba 01 00 00 00       	mov    $0x1,%edx
  400c2b:	48 8d 74 24 0b       	lea    0xb(%rsp),%rsi
  400c30:	bf 01 00 00 00       	mov    $0x1,%edi
  400c35:	e8 36 fb ff ff       	callq  400770 <write@plt>
  400c3a:	48 85 c0             	test   %rax,%rax
  400c3d:	79 29                	jns    400c68 <main+0x126>
  400c3f:	48 8b 0d 52 14 20 00 	mov    0x201452(%rip),%rcx        # 602098 <stderr@@GLIBC_2.2.5>
  400c46:	ba 0d 00 00 00       	mov    $0xd,%edx
  400c4b:	be 01 00 00 00       	mov    $0x1,%esi
  400c50:	bf 3e 0e 40 00       	mov    $0x400e3e,%edi
  400c55:	e8 a6 fb ff ff       	callq  400800 <fwrite@plt>
  400c5a:	b8 00 00 00 00       	mov    $0x0,%eax
  400c5f:	eb 0c                	jmp    400c6d <main+0x12b>
  400c61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400c66:	eb 05                	jmp    400c6d <main+0x12b>
  400c68:	b8 00 00 00 00       	mov    $0x0,%eax
  400c6d:	48 83 c4 10          	add    $0x10,%rsp
  400c71:	5b                   	pop    %rbx
  400c72:	5d                   	pop    %rbp
  400c73:	41 5c                	pop    %r12
  400c75:	c3                   	retq   
  400c76:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400c7d:	00 00 00 

0000000000400c80 <__libc_csu_init>:
  400c80:	41 57                	push   %r15
  400c82:	41 89 ff             	mov    %edi,%r15d
  400c85:	41 56                	push   %r14
  400c87:	49 89 f6             	mov    %rsi,%r14
  400c8a:	41 55                	push   %r13
  400c8c:	49 89 d5             	mov    %rdx,%r13
  400c8f:	41 54                	push   %r12
  400c91:	4c 8d 25 78 11 20 00 	lea    0x201178(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400c98:	55                   	push   %rbp
  400c99:	48 8d 2d 78 11 20 00 	lea    0x201178(%rip),%rbp        # 601e18 <__do_global_dtors_aux_fini_array_entry>
  400ca0:	53                   	push   %rbx
  400ca1:	4c 29 e5             	sub    %r12,%rbp
  400ca4:	31 db                	xor    %ebx,%ebx
  400ca6:	48 c1 fd 03          	sar    $0x3,%rbp
  400caa:	48 83 ec 08          	sub    $0x8,%rsp
  400cae:	e8 65 fa ff ff       	callq  400718 <_init>
  400cb3:	48 85 ed             	test   %rbp,%rbp
  400cb6:	74 1e                	je     400cd6 <__libc_csu_init+0x56>
  400cb8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400cbf:	00 
  400cc0:	4c 89 ea             	mov    %r13,%rdx
  400cc3:	4c 89 f6             	mov    %r14,%rsi
  400cc6:	44 89 ff             	mov    %r15d,%edi
  400cc9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400ccd:	48 83 c3 01          	add    $0x1,%rbx
  400cd1:	48 39 eb             	cmp    %rbp,%rbx
  400cd4:	75 ea                	jne    400cc0 <__libc_csu_init+0x40>
  400cd6:	48 83 c4 08          	add    $0x8,%rsp
  400cda:	5b                   	pop    %rbx
  400cdb:	5d                   	pop    %rbp
  400cdc:	41 5c                	pop    %r12
  400cde:	41 5d                	pop    %r13
  400ce0:	41 5e                	pop    %r14
  400ce2:	41 5f                	pop    %r15
  400ce4:	c3                   	retq   
  400ce5:	90                   	nop
  400ce6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ced:	00 00 00 

0000000000400cf0 <__libc_csu_fini>:
  400cf0:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400cf4 <_fini>:
  400cf4:	48 83 ec 08          	sub    $0x8,%rsp
  400cf8:	48 83 c4 08          	add    $0x8,%rsp
  400cfc:	c3                   	retq   
