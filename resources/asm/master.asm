0.   	0.   	       <Function: __m_matrix_utils_MOD_hdg_build_quadrature_int_2d>
0.   	0.   	       [ 519]   5a39f0:  push   %rbp
0.   	0.   	       [ 519]   5a39f1:  mov    %rsp,%rbp
0.   	0.   	       [ 519]   5a39f4:  push   %r15
0.   	0.   	       [ 519]   5a39f6:  push   %r14
0.   	0.   	       [ 519]   5a39f8:  push   %r13
0.   	0.   	       [ 519]   5a39fa:  push   %r12
0.   	0.   	       [ 519]   5a39fc:  push   %rbx
0.   	0.   	       [ 519]   5a39fd:  sub    $0x688,%rsp
0.   	0.030	       [ 519]   5a3a04:  call   mcount@plt [ 0x4068c0, .-0x19d144]
0.   	0.   	       [ 580]   5a3a09:  mov    0x48(%rbp),%rax
0.   	0.   	       [ 584]   5a3a0d:  mov    0xa38(%rdi),%r10d
0.   	0.   	       [ 519]   5a3a14:  mov    0x18(%rbp),%r14
0.   	0.   	       [ 519]   5a3a18:  mov    0x28(%rbp),%r12
0.   	0.   	       [ 580]   5a3a1c:  movl   $0x0,(%rax)
0.   	0.   	       [ 519]   5a3a22:  mov    0x30(%rbp),%r13
0.   	0.   	       [ 584]   5a3a26:  test   %r10d,%r10d
0.   	0.   	       [ 584]   5a3a29:  je     .+0x7a8 [ 0x5a41d1 ]
0.   	0.   	       [ 598]   5a3a2f:  movslq 0xa3c(%rdi),%r15
0.   	0.   	       [ 598]   5a3a36:  xor    %ebx,%ebx
0.   	0.   	       [ 598]   5a3a38:  mov    %r9,-0x4b8(%rbp)
0.   	0.   	       [ 598]   5a3a3f:  mov    %r8,-0x590(%rbp)
0.   	0.   	       [ 598]   5a3a46:  test   %r15d,%r15d
0.   	0.   	       [ 598]   5a3a49:  mov    %rcx,-0x4b0(%rbp)
0.   	0.   	       [ 598]   5a3a50:  cmovns %r15,%rbx
0.   	0.   	       [ 598]   5a3a54:  mov    %rdx,-0x4c8(%rbp)
0.   	0.   	       [ 598]   5a3a5b:  mov    %rsi,-0x450(%rbp)
0.   	0.   	       [ 598]   5a3a62:  lea    (%rbx,%rbx,8),%rax
0.   	0.   	       [ 598]   5a3a66:  mov    %rdi,-0x440(%rbp)
0.   	0.   	       [ 598]   5a3a6d:  mov    %rax,-0x568(%rbp)
0.   	0.   	       [ 598]   5a3a74:  jle    .+0x7ea [ 0x5a425e ]
0.   	0.   	       [ 598]   5a3a7a:  lea    (%rbx,%rbx,8),%rdx
0.   	0.   	       [ 598]   5a3a7e:  shl    $0x4,%rdx
0.   	0.   	       [ 598]   5a3a82:  mov    %rdx,%rdi
0.   	0.   	       [ 598]   5a3a85:  mov    %rdx,-0x430(%rbp)
0.   	0.070	       [ 598]   5a3a8c:  call   malloc@plt [ 0x4068b0, .-0x19d1dc]
0.   	0.   	       [ 598]   5a3a91:  mov    -0x430(%rbp),%rdx
0.   	0.   	       [ 598]   5a3a98:  test   %rax,%rax
0.   	0.   	       [ 598]   5a3a9b:  mov    %rax,-0x448(%rbp)
0.   	0.   	       [ 598]   5a3aa2:  je     .+0x3b57 [ 0x5a75f9 ]
0.   	0.   	       [ 599]   5a3aa8:  lea    0x0(,%rbx,8),%rcx
0.   	0.   	       [ 598]   5a3ab0:  movslq %r15d,%rdx
0.   	0.   	       [ 599]   5a3ab3:  mov    %rcx,%rdi
0.   	0.   	       [ 599]   5a3ab6:  mov    %rdx,-0x430(%rbp)
0.   	0.   	       [ 599]   5a3abd:  mov    %rcx,-0x438(%rbp)
0.   	0.   	       [ 599]   5a3ac4:  call   malloc@plt [ 0x4068b0, .-0x19d214]
0.   	0.   	       [ 599]   5a3ac9:  mov    -0x430(%rbp),%rdx
0.   	0.   	       [ 599]   5a3ad0:  test   %rax,%rax
0.   	0.   	       [ 599]   5a3ad3:  mov    %rax,-0x490(%rbp)
0.   	0.   	       [ 599]   5a3ada:  je     .+0x3b30 [ 0x5a760a ]
0.   	0.   	       [ 598]   5a3ae0:  lea    (%rbx,%rbx,2),%rax
0.   	0.   	       [ 601]   5a3ae4:  mov    -0x448(%rbp),%rdi
0.   	0.   	       [ 598]   5a3aeb:  mov    %rax,-0x460(%rbp)
0.   	0.   	       [ 601]   5a3af2:  lea    -0x1(%rdx),%rax
0.   	0.   	       [ 601]   5a3af6:  mov    $0xffffffffffffffff,%rdx
0.   	0.   	       [ 601]   5a3afd:  test   %rax,%rax
0.   	0.   	       [ 601]   5a3b00:  cmovs  %rdx,%rax
0.   	0.   	       [ 601]   5a3b04:  xor    %esi,%esi
0.   	0.   	       [ 601]   5a3b06:  add    $0x1,%rax
0.   	0.   	       [ 601]   5a3b0a:  lea    0x0(,%rax,8),%rcx
0.   	0.   	       [ 601]   5a3b12:  add    %rcx,%rax
0.   	0.   	       [ 601]   5a3b15:  mov    %rcx,-0x430(%rbp)
0.   	0.   	       [ 601]   5a3b1c:  shl    $0x4,%rax
0.   	0.   	       [ 601]   5a3b20:  mov    %rax,%rdx
0.   	0.050	       [ 601]   5a3b23:  call   memset@plt [ 0x405fd0, .-0x19db53]
0.   	0.   	       [ 602]   5a3b28:  mov    -0x430(%rbp),%rdx
0.   	0.   	       [ 602]   5a3b2f:  mov    -0x490(%rbp),%rdi
0.   	0.   	       [ 602]   5a3b36:  xor    %esi,%esi
0.   	0.   	       [ 602]   5a3b38:  call   memset@plt [ 0x405fd0, .-0x19db68]
0.   	0.   	       [ 604]   5a3b3d:  mov    -0x450(%rbp),%rax
0.   	0.   	       [ 604]   5a3b44:  mov    -0x4b0(%rbp),%rdi
0.   	0.   	       [ 604]   5a3b4b:  mov    0x6f0(%rax),%rdx
0.   	0.   	       [ 604]   5a3b52:  mov    0x780(%rax),%r10
0.   	0.   	       [ 604]   5a3b59:  mov    0x778(%rax),%rsi
0.   	0.   	       [ 604]   5a3b60:  movslq (%rdi),%rdi
0.   	0.   	       [ 604]   5a3b63:  mov    %rdx,-0x518(%rbp)
0.   	0.   	       [ 604]   5a3b6a:  mov    0x6f8(%rax),%rdx
0.   	0.   	       [ 604]   5a3b71:  mov    %rsi,-0x528(%rbp)
0.   	0.   	       [ 604]   5a3b78:  mov    %rdx,-0x520(%rbp)
0.   	0.   	       [ 604]   5a3b7f:  mov    0x720(%rax),%rdx
0.   	0.   	       [ 604]   5a3b86:  mov    %rdi,-0x470(%rbp)
0.   	0.   	       [ 604]   5a3b8d:  mov    %rdx,-0x4d0(%rbp)
0.   	0.   	       [ 604]   5a3b94:  mov    0x748(%rax),%rdx
0.   	0.   	       [ 604]   5a3b9b:  mov    %r10,-0x438(%rbp)
0.   	0.   	       [ 604]   5a3ba2:  mov    %rdx,-0x4f8(%rbp)
0.   	0.   	       [ 604]   5a3ba9:  mov    0x750(%rax),%rdx
0.   	0.   	       [ 604]   5a3bb0:  mov    %rdx,-0x430(%rbp)
0.   	0.   	       [ 604]   5a3bb7:  mov    %r10,%rdx
0.   	0.   	       [ 604]   5a3bba:  sub    %rsi,%rdx
0.   	0.   	       [ 604]   5a3bbd:  lea    0x1(%rdx),%rsi
0.   	0.   	       [ 604]   5a3bc1:  mov    %rdx,-0x468(%rbp)
0.   	0.   	       [ 604]   5a3bc8:  mov    %rsi,-0x4e0(%rbp)
0.   	0.   	       [ 604]   5a3bcf:  jns    .+0x6e1 [ 0x5a42b0 ]
0.   	0.   	       [ 604]   5a3bd5:  mov    $0x1,%edi
0.   	0.   	       [ 604]   5a3bda:  call   malloc@plt [ 0x4068b0, .-0x19d32a]
0.   	0.   	       [ 604]   5a3bdf:  mov    -0x470(%rbp),%rcx
0.   	0.   	       [ 604]   5a3be6:  mov    -0x430(%rbp),%rdx
0.   	0.   	       [ 604]   5a3bed:  movq   $0x1,-0x508(%rbp)
0.   	0.   	       [ 604]   5a3bf8:  mov    %rax,%rdi
0.   	0.   	       [ 604]   5a3bfb:  mov    -0x450(%rbp),%rax
0.   	0.   	       [ 604]   5a3c02:  imul   0x788(%rax),%rcx
0.   	0.   	       [ 604]   5a3c0a:  add    %rcx,%rdx
0.   	0.   	       [ 604]   5a3c0d:  mov    %rdx,-0x4d8(%rbp)
0.   	0.   	       [ 604]   5a3c14:  mov    -0x450(%rbp),%rax
0.   	0.   	       [ 604]   5a3c1b:  mov    -0x518(%rbp),%r8
0.   	0.   	       [ 604]   5a3c22:  mov    %rdi,%rcx
0.   	0.   	       [ 604]   5a3c25:  lea    -0x3b0(%rbp),%rdx
0.   	0.   	       [ 604]   5a3c2c:  mov    0x730(%rax),%rsi
0.   	0.   	       [ 604]   5a3c33:  movslq (%rcx),%rax
0.   	0.   	       [ 604]   5a3c36:  add    $0x10,%rdx
0.   	0.   	       [ 604]   5a3c3a:  add    $0x4,%rcx
0.   	0.   	       [ 604]   5a3c3e:  imul   %rsi,%rax
0.   	0.   	       [ 604]   5a3c42:  add    -0x520(%rbp),%rax
0.   	0.   	       [ 604]   5a3c49:  add    -0x4d0(%rbp),%rax
0.010	0.010	       [ 604]   5a3c50:  movupd (%r8,%rax,8),%xmm0
0.020	0.020	       [ 604]   5a3c56:  lea    -0x380(%rbp),%rax
0.   	0.   	       [ 604]   5a3c5d:  movaps %xmm0,-0x10(%rdx)
0.   	0.   	       [ 604]   5a3c61:  cmp    %rax,%rdx
0.   	0.   	       [ 604]   5a3c64:  jne    .-0x31 [ 0x5a3c33 ]
0.   	0.   	       [ 604]   5a3c66:  call   free@plt [ 0x405db0, .-0x19deb6]
0.   	0.   	       [ 612]   5a3c6b:  test   %r15d,%r15d
0.   	0.   	       [ 612]   5a3c6e:  jle    .+0x52e [ 0x5a419c ]
0.   	0.   	       [ 615]   5a3c74:  mov    -0x440(%rbp),%rdi
0.   	0.   	       [ 615]   5a3c7b:  movapd -0x3b0(%rbp),%xmm6
0.   	0.   	       [ 612]   5a3c83:  movl   $0x1,-0x430(%rbp)
0.   	0.   	       [ 615]   5a3c8d:  mov    0x550(%rdi),%r11
0.   	0.   	       [ 615]   5a3c94:  mov    0x558(%rdi),%rax
0.   	0.   	       [ 615]   5a3c9b:  movaps %xmm6,-0x4f0(%rbp)
0.   	0.   	       [ 615]   5a3ca2:  mov    0x570(%rdi),%rsi
0.   	0.   	       [ 615]   5a3ca9:  mov    0x568(%rdi),%rdx
0.   	0.   	       [ 615]   5a3cb0:  mov    %rax,-0x458(%rbp)
0.   	0.   	       [ 615]   5a3cb7:  sub    %r11,%rax
0.   	0.   	       [ 615]   5a3cba:  lea    0x1(%rax),%r8
0.   	0.   	       [ 619]   5a3cbe:  mov    %rbx,%rax
0.   	0.   	       [ 615]   5a3cc1:  mov    %rsi,-0x500(%rbp)
0.   	0.   	       [ 619]   5a3cc8:  neg    %rax
0.   	0.   	       [ 619]   5a3ccb:  sub    -0x460(%rbp),%rax
0.   	0.   	       [ 615]   5a3cd2:  mov    %r11,-0x510(%rbp)
0.   	0.   	       [ 619]   5a3cd9:  mov    %rax,-0x530(%rbp)
0.   	0.   	       [ 615]   5a3ce0:  mov    0x520(%rdi),%rax
0.   	0.   	       [ 615]   5a3ce7:  mov    %r8,-0x480(%rbp)
0.   	0.   	       [ 615]   5a3cee:  mov    %rax,-0x540(%rbp)
0.   	0.   	       [ 615]   5a3cf5:  mov    -0x470(%rbp),%rax
0.   	0.   	       [ 615]   5a3cfc:  imul   0x578(%rdi),%rax
0.   	0.   	       [ 615]   5a3d04:  add    0x528(%rdi),%rax
0.   	0.   	       [ 615]   5a3d0b:  mov    %rax,-0x550(%rbp)
0.   	0.   	       [ 615]   5a3d12:  mov    %rsi,%rax
0.   	0.   	       [ 615]   5a3d15:  sub    %rdx,%rax
0.   	0.   	       [ 615]   5a3d18:  add    $0x1,%rax
0.   	0.   	       [ 615]   5a3d1c:  imul   %r8,%rax
0.   	0.   	       [ 615]   5a3d20:  lea    0x0(,%rax,8),%r10
0.   	0.   	       [ 615]   5a3d28:  mov    $0x1,%eax
0.   	0.   	       [ 615]   5a3d2d:  test   %r10,%r10
0.   	0.   	       [ 615]   5a3d30:  cmove  %rax,%r10
0.   	0.   	       [ 615]   5a3d34:  mov    0xa80(%rdi),%rax
0.   	0.   	       [ 615]   5a3d3b:  lea    0x0(,%rax,8),%rcx
0.   	0.   	       [ 615]   5a3d43:  add    0xa48(%rdi),%rax
0.   	0.   	       [ 615]   5a3d4a:  add    0xa70(%rdi),%rax
0.   	0.   	       [ 615]   5a3d51:  mov    %rcx,-0x558(%rbp)
0.   	0.   	       [ 615]   5a3d58:  mov    0xa40(%rdi),%rcx
0.   	0.   	       [ 615]   5a3d5f:  lea    (%rcx,%rax,8),%rdi
0.   	0.   	       [ 615]   5a3d63:  mov    -0x490(%rbp),%rax
0.   	0.   	       [ 615]   5a3d6a:  mov    %rax,-0x488(%rbp)
0.   	0.   	       [ 615]   5a3d71:  mov    -0x448(%rbp),%rax
0.   	0.   	       [ 615]   5a3d78:  mov    %rax,-0x4a0(%rbp)
0.   	0.   	       [ 615]   5a3d7f:  lea    0x0(,%r8,8),%rax
0.   	0.   	       [ 615]   5a3d87:  mov    %rax,-0x438(%rbp)
0.   	0.   	       [ 615]   5a3d8e:  mov    %r11,%rax
0.   	0.   	       [ 615]   5a3d91:  neg    %rax
0.   	0.   	       [ 615]   5a3d94:  shl    $0x3,%rax
0.   	0.   	       [ 615]   5a3d98:  mov    %rax,-0x560(%rbp)
0.   	0.   	       [ 615]   5a3d9f:  lea    -0xf0(%rbp),%rax
0.   	0.   	       [ 615]   5a3da6:  mov    %rax,-0x4c0(%rbp)
0.   	0.   	       [ 615]   5a3dad:  lea    -0x180(%rbp),%rax
0.   	0.   	       [ 615]   5a3db4:  mov    %rax,-0x4a8(%rbp)
0.   	0.   	       [ 615]   5a3dbb:  lea    -0x1e0(%rbp),%rax
0.   	0.   	       [ 615]   5a3dc2:  mov    %rax,-0x570(%rbp)
0.   	0.   	       [ 615]   5a3dc9:  lea    0x1(%rsi),%rax
0.   	0.   	       [ 615]   5a3dcd:  sub    %rdx,%rax
0.   	0.   	       [ 619]   5a3dd0:  mov    %r14,0x18(%rbp)
0.   	0.   	       [ 619]   5a3dd4:  mov    %rdx,%r14
0.   	0.   	       [ 619]   5a3dd7:  mov    %rax,-0x580(%rbp)
0.   	0.   	       [ 619]   5a3dde:  mov    %r12,0x28(%rbp)
0.   	0.   	       [ 619]   5a3de2:  mov    %r10,%r12
0.   	0.   	       [ 619]   5a3de5:  mov    %r13,0x30(%rbp)
0.   	0.   	       [ 619]   5a3de9:  mov    %rdi,%r13
0.010	0.010	       [ 613]   5a3dec:  movsd  0x0(%r13),%xmm0
0.040	0.040	       [ 615]   5a3df2:  mov    %r12,%rdi
0.   	0.   	       [ 613]   5a3df5:  movsd  %xmm0,-0x3f0(%rbp)
0.   	0.   	       [ 613]   5a3dfd:  movsd  0x8(%r13),%xmm0
0.   	0.   	       [ 613]   5a3e03:  movsd  %xmm0,-0x3e8(%rbp)
0.   	0.020	       [ 615]   5a3e0b:  call   malloc@plt [ 0x4068b0, .-0x19d55b]
0.   	0.   	       [ 615]   5a3e10:  mov    %rax,%rdi
0.   	0.   	       [ 615]   5a3e13:  cmp    %r14,-0x500(%rbp)
0.   	0.   	       [ 615]   5a3e1a:  jl     .+0x87 [ 0x5a3ea1 ]
0.   	0.   	       [ 615]   5a3e20:  mov    -0x440(%rbp),%rax
0.   	0.   	       [ 615]   5a3e27:  mov    -0x540(%rbp),%rdx
0.   	0.   	       [ 615]   5a3e2e:  mov    0x560(%rax),%rax
0.010	0.010	       [ 615]   5a3e35:  lea    0x0(,%rax,8),%r8
0.   	0.   	       [ 615]   5a3e3d:  imul   %r14,%rax
0.   	0.   	       [ 615]   5a3e41:  add    -0x550(%rbp),%rax
0.   	0.   	       [ 615]   5a3e48:  lea    (%rdx,%rax,8),%rsi
0.   	0.   	       [ 615]   5a3e4c:  mov    -0x560(%rbp),%rax
0.   	0.   	       [ 615]   5a3e53:  xor    %edx,%edx
0.   	0.   	       [ 615]   5a3e55:  lea    (%rdi,%rax,1),%rcx
0.   	0.   	       [ 615]   5a3e59:  mov    -0x458(%rbp),%rax
0.   	0.   	       [ 615]   5a3e60:  lea    0x1(%rax),%r9
0.   	0.   	       [ 615]   5a3e64:  mov    -0x510(%rbp),%r10
0.   	0.   	       [ 615]   5a3e6b:  mov    %r10,%rax
0.   	0.   	       [ 615]   5a3e6e:  cmp    %r10,-0x458(%rbp)
0.   	0.   	       [ 615]   5a3e75:  jl     .+0x15 [ 0x5a3e8a ]
0.   	0.   	       [ 615]   5a3e77:  movsd  (%rsi,%rax,8),%xmm0
0.020	0.020	       [ 615]   5a3e7c:  movsd  %xmm0,(%rcx,%rax,8)
0.   	0.   	       [ 615]   5a3e81:  add    $0x1,%rax
0.010	0.010	       [ 615]   5a3e85:  cmp    %r9,%rax
0.010	0.010	       [ 615]   5a3e88:  jne    .-0x11 [ 0x5a3e77 ]
0.   	0.   	       [ 615]   5a3e8a:  add    $0x1,%rdx
0.   	0.   	       [ 615]   5a3e8e:  add    %r8,%rsi
0.   	0.   	       [ 615]   5a3e91:  add    -0x438(%rbp),%rcx
0.   	0.   	       [ 615]   5a3e98:  cmp    -0x580(%rbp),%rdx
0.   	0.   	       [ 615]   5a3e9f:  jne    .-0x3b [ 0x5a3e64 ]
0.   	0.   	       [ 615]   5a3ea1:  pxor   %xmm0,%xmm0
0.   	0.   	       [ 615]   5a3ea5:  lea    -0x8(%rdi),%rdx
0.   	0.   	       [ 615]   5a3ea9:  lea    -0x3f0(%rbp),%rax
0.   	0.   	       [ 615]   5a3eb0:  movaps %xmm0,-0x400(%rbp)
0.   	0.   	       [ 615]   5a3eb7:  cmpq   $0x0,-0x480(%rbp)
0.020	0.020	       [ 615]   5a3ebf:  jle    .+0x3d1 [ 0x5a4290 ]
0.   	0.   	       [ 615]   5a3ec5:  movsd  -0x400(%rbp),%xmm1
0.010	0.010	       [ 615]   5a3ecd:  movsd  0x8(%rdx),%xmm2
0.   	0.   	       [ 615]   5a3ed2:  movsd  (%rax),%xmm0
0.   	0.   	       [ 615]   5a3ed6:  mulsd  %xmm0,%xmm2
0.030	0.030	       [ 615]   5a3eda:  addsd  %xmm2,%xmm1
0.010	0.010	       [ 615]   5a3ede:  movsd  %xmm1,-0x400(%rbp)
0.   	0.   	       [ 615]   5a3ee6:  cmpq   $0x1,-0x480(%rbp)
0.   	0.   	       [ 615]   5a3eee:  jle    .+0x17 [ 0x5a3f05 ]
0.   	0.   	       [ 615]   5a3ef0:  mulsd  0x10(%rdx),%xmm0
0.010	0.010	       [ 615]   5a3ef5:  addsd  -0x3f8(%rbp),%xmm0
0.020	0.020	       [ 615]   5a3efd:  movsd  %xmm0,-0x3f8(%rbp)
0.   	0.   	       [ 615]   5a3f05:  add    $0x8,%rax
0.   	0.   	       [ 615]   5a3f09:  lea    -0x3e0(%rbp),%rcx
0.   	0.   	       [ 615]   5a3f10:  add    -0x438(%rbp),%rdx
0.   	0.   	       [ 615]   5a3f17:  cmp    %rcx,%rax
0.   	0.   	       [ 615]   5a3f1a:  jne    .-0x4d [ 0x5a3ecd ]
0.   	0.   	       [ 615]   5a3f1c:  test   %rdi,%rdi
0.   	0.   	       [ 615]   5a3f1f:  je     .+0x7 [ 0x5a3f26 ]
0.   	0.020	       [ 615]   5a3f21:  call   free@plt [ 0x405db0, .-0x19e171]
0.   	0.   	       [ 617]   5a3f26:  lea    -0x3f0(%rbp),%rax
0.   	0.   	       [ 617]   5a3f2d:  movdqa 0x2d1a9b(%rip),%xmm6        # 0x2d1aa3
0.010	0.010	       [ 617]   5a3f35:  sub    $0x8,%rsp
0.010	0.010	       [ 615]   5a3f39:  movapd -0x4f0(%rbp),%xmm0
0.   	0.   	       [ 615]   5a3f41:  addpd  -0x400(%rbp),%xmm0
0.030	0.030	       [ 617]   5a3f49:  mov    $0x8e4dcc,%esi
0.   	0.   	       [ 617]   5a3f4e:  mov    %rax,-0x180(%rbp)
0.   	0.   	       [ 617]   5a3f55:  lea    -0x400(%rbp),%rdx
0.   	0.   	       [ 617]   5a3f5c:  movaps %xmm6,-0x160(%rbp)
0.   	0.   	       [ 617]   5a3f63:  movdqa 0x2d6c35(%rip),%xmm6        # 0x2d6c3d
0.010	0.010	       [ 617]   5a3f6b:  movabs $0x30100000000,%rax
0.   	0.   	       [ 617]   5a3f75:  mov    %rax,-0x168(%rbp)
0.   	0.   	       [ 617]   5a3f7c:  movaps %xmm6,-0x150(%rbp)
0.   	0.   	       [ 617]   5a3f83:  movdqa 0x2d1a45(%rip),%xmm6        # 0x2d1a4d
0.   	0.   	       [ 617]   5a3f8b:  mov    %rax,-0xd8(%rbp)
0.   	0.   	       [ 617]   5a3f92:  movaps %xmm6,-0xd0(%rbp)
0.   	0.   	       [ 617]   5a3f99:  movdqa 0x2d6bff(%rip),%xmm6        # 0x2d6c07
0.   	0.   	       [ 615]   5a3fa1:  movaps %xmm0,-0x400(%rbp)
0.   	0.   	       [ 617]   5a3fa8:  movaps %xmm6,-0xc0(%rbp)
0.   	0.   	       [ 617]   5a3faf:  mov    %rdx,-0xf0(%rbp)
0.   	0.   	       [ 617]   5a3fb6:  movq   $0xffffffffffffffff,-0x178(%rbp)
0.   	0.   	       [ 617]   5a3fc1:  movq   $0x8,-0x170(%rbp)
0.010	0.010	       [ 617]   5a3fcc:  movq   $0xffffffffffffffff,-0xe8(%rbp)
0.   	0.   	       [ 617]   5a3fd7:  movq   $0x8,-0xe0(%rbp)
0.   	0.   	       [ 617]   5a3fe2:  push   $0x0
0.   	0.   	       [ 617]   5a3fe4:  push   $0x3
0.   	0.   	       [ 617]   5a3fe6:  push   $0x0
0.   	0.   	       [ 617]   5a3fe8:  push   0x48(%rbp)
0.   	0.   	       [ 617]   5a3feb:  push   -0x488(%rbp)
0.   	0.   	       [ 617]   5a3ff1:  mov    -0x4b8(%rbp),%r9
0.   	0.   	       [ 617]   5a3ff8:  mov    -0x4c0(%rbp),%r8
0.   	0.   	       [ 617]   5a3fff:  mov    -0x4a8(%rbp),%rcx
0.   	0.   	       [ 617]   5a4006:  mov    -0x4b0(%rbp),%rdx
0.   	0.   	       [ 617]   5a400d:  mov    -0x4c8(%rbp),%rdi
0.   	4.723	       [ 617]   5a4014:  call   __m_model_eval_MOD_model_eval_raw_solo [ 0x54a290, .-0x59d84]
0.   	0.   	       [ 619]   5a4019:  lea    -0x3f0(%rbp),%r10
0.010	0.010	       [ 619]   5a4020:  add    $0x28,%rsp
0.   	0.   	       [ 619]   5a4024:  movabs $0x30100000000,%rax
0.   	0.   	       [ 619]   5a402e:  mov    %rax,-0x1c8(%rbp)
0.   	0.   	       [ 619]   5a4035:  movdqa 0x2d1993(%rip),%xmm5        # 0x2d199b
0.   	0.   	       [ 619]   5a403d:  mov    %rax,-0x168(%rbp)
0.   	0.   	       [ 619]   5a4044:  movabs $0x40200000000,%rax
0.   	0.   	       [ 619]   5a404e:  movdqa 0x2d6b4a(%rip),%xmm6        # 0x2d6b52
0.   	0.   	       [ 619]   5a4056:  mov    %rax,-0xd8(%rbp)
0.   	0.   	       [ 619]   5a405d:  mov    -0x460(%rbp),%rax
0.   	0.   	       [ 619]   5a4064:  mov    %r10,-0x1e0(%rbp)
0.   	0.   	       [ 619]   5a406b:  lea    -0x400(%rbp),%r10
0.010	0.010	       [ 619]   5a4072:  mov    %r10,-0x180(%rbp)
0.   	0.   	       [ 619]   5a4079:  mov    -0x530(%rbp),%r10
0.   	0.   	       [ 619]   5a4080:  mov    %rax,-0xb0(%rbp)
0.   	0.   	       [ 619]   5a4087:  mov    -0x4a0(%rbp),%rax
0.   	0.   	       [ 619]   5a408e:  mov    %r10,-0xe8(%rbp)
0.   	0.   	       [ 619]   5a4095:  mov    %rax,-0xf0(%rbp)
0.   	0.   	       [ 619]   5a409c:  movaps %xmm5,-0x1c0(%rbp)
0.   	0.   	       [ 619]   5a40a3:  movaps %xmm6,-0x1b0(%rbp)
0.   	0.   	       [ 619]   5a40aa:  movaps %xmm5,-0x160(%rbp)
0.   	0.   	       [ 619]   5a40b1:  movaps %xmm6,-0x150(%rbp)
0.   	0.   	       [ 619]   5a40b8:  movq   $0xffffffffffffffff,-0x1d8(%rbp)
0.   	0.   	       [ 619]   5a40c3:  movq   $0x8,-0x1d0(%rbp)
0.   	0.   	       [ 619]   5a40ce:  movq   $0xffffffffffffffff,-0x178(%rbp)
0.   	0.   	       [ 619]   5a40d9:  movq   $0x8,-0x170(%rbp)
0.   	0.   	       [ 619]   5a40e4:  movq   $0x10,-0xe0(%rbp)
0.   	0.   	       [ 619]   5a40ef:  movq   $0x10,-0xd0(%rbp)
0.   	0.   	       [ 619]   5a40fa:  movq   $0x1,-0xc0(%rbp)
0.   	0.   	       [ 619]   5a4105:  movq   $0x3,-0xb8(%rbp)
0.   	0.   	       [ 619]   5a4110:  mov    %rbx,-0xc8(%rbp)
0.   	0.   	       [ 619]   5a4117:  movq   $0x1,-0xa8(%rbp)
0.   	0.   	       [ 619]   5a4122:  movq   $0x3,-0xa0(%rbp)
0.   	0.   	       [ 619]   5a412d:  push   0x48(%rbp)
0.   	0.   	       [ 619]   5a4130:  mov    -0x4c0(%rbp),%r9
0.   	0.   	       [ 619]   5a4137:  mov    -0x570(%rbp),%rdx
0.   	0.   	       [ 619]   5a413e:  mov    -0x4b8(%rbp),%r8
0.   	0.   	       [ 619]   5a4145:  mov    -0x4a8(%rbp),%rcx
0.010	0.010	       [ 619]   5a414c:  mov    -0x4b0(%rbp),%rsi
0.   	0.   	       [ 619]   5a4153:  mov    -0x4c8(%rbp),%rdi
0.   	9.407	       [ 619]   5a415a:  call   __m_model_eval_MOD_model_eval_s_solo [ 0x547280, .-0x5ceda]
0.   	0.   	       [ 612]   5a415f:  addl   $0x1,-0x430(%rbp)
0.   	0.   	       [ 612]   5a4166:  mov    -0x430(%rbp),%edx
0.   	0.   	       [ 612]   5a416c:  addq   $0x8,-0x488(%rbp)
0.   	0.   	       [ 612]   5a4174:  add    -0x558(%rbp),%r13
0.   	0.   	       [ 612]   5a417b:  addq   $0x10,-0x4a0(%rbp)
0.   	0.   	       [ 612]   5a4183:  pop    %r10
0.   	0.   	       [ 612]   5a4185:  pop    %r11
0.   	0.   	       [ 612]   5a4187:  cmp    %edx,%r15d
0.   	0.   	       [ 612]   5a418a:  jge    .-0x39e [ 0x5a3dec ]
0.   	0.   	       [ 619]   5a4190:  mov    0x18(%rbp),%r14
0.   	0.   	       [ 619]   5a4194:  mov    0x28(%rbp),%r12
0.   	0.   	       [ 619]   5a4198:  mov    0x30(%rbp),%r13
0.   	0.   	       [ 622]   5a419c:  mov    0x48(%rbp),%rax
0.   	0.   	       [ 622]   5a41a0:  mov    (%rax),%eax
0.020	0.020	       [ 622]   5a41a2:  test   %eax,%eax
0.   	0.   	       [ 622]   5a41a4:  je     .+0x17f [ 0x5a4323 ]
0.   	0.   	       [ 801]   5a41aa:  mov    -0x448(%rbp),%rdi
0.   	0.   	       [ 801]   5a41b1:  call   free@plt [ 0x405db0, .-0x19e401]
0.   	0.   	       [ 801]   5a41b6:  mov    -0x490(%rbp),%rdi
0.   	0.   	       [ 801]   5a41bd:  call   free@plt [ 0x405db0, .-0x19e40d]
0.   	0.   	       [ 801]   5a41c2:  lea    -0x28(%rbp),%rsp
0.   	0.   	       [ 801]   5a41c6:  pop    %rbx
0.   	0.   	       [ 801]   5a41c7:  pop    %r12
0.   	0.   	       [ 801]   5a41c9:  pop    %r13
0.   	0.   	       [ 801]   5a41cb:  pop    %r14
0.   	0.   	       [ 801]   5a41cd:  pop    %r15
0.   	0.   	       [ 801]   5a41cf:  pop    %rbp
0.   	0.   	       [ 801]   5a41d0:  ret
0.   	0.   	       [ 586]   5a41d1:  movdqa 0x3036a7(%rip),%xmm0        # 0x3036af
0.   	0.   	       [ 586]   5a41d9:  mov    0x48(%rbp),%rdx
0.   	0.   	       [ 586]   5a41dd:  movups %xmm0,0x4(%rax)
0.   	0.   	       [ 586]   5a41e1:  movdqa 0x342757(%rip),%xmm0        # 0x34275f
0.   	0.   	       [ 586]   5a41e9:  movups %xmm0,0x14(%rax)
0.   	0.   	       [ 586]   5a41ed:  movdqa 0x34275b(%rip),%xmm0        # 0x342763
0.   	0.   	       [ 586]   5a41f5:  movups %xmm0,0x24(%rax)
0.   	0.   	       [ 586]   5a41f9:  movdqa 0x34275f(%rip),%xmm0        # 0x342767
0.   	0.   	       [ 586]   5a4201:  movups %xmm0,0x34(%rax)
0.   	0.   	       [ 586]   5a4205:  movabs $0x2020202020202020,%rax
0.   	0.   	       [ 586]   5a420f:  mov    %rax,0x44(%rdx)
0.   	0.   	       [ 586]   5a4213:  mov    0x48(%rbp),%rdx
0.   	0.   	       [ 586]   5a4217:  mov    %rax,0x1fc(%rdx)
0.   	0.   	       [ 586]   5a421e:  mov    0x48(%rbp),%rdx
0.   	0.   	       [ 586]   5a4222:  lea    0x4c(%rdx),%rdi
0.   	0.   	       [ 586]   5a4226:  mov    0x48(%rbp),%edx
0.   	0.   	       [ 586]   5a4229:  and    $0xfffffffffffffff8,%rdi
0.   	0.   	       [ 586]   5a422d:  sub    %edi,%edx
0.   	0.   	       [ 586]   5a422f:  lea    0x204(%rdx),%ecx
0.   	0.   	       [ 586]   5a4235:  shr    $0x3,%ecx
0.   	0.   	       [ 586]   5a4238:  rep stos %rax,%es:(%rdi)
0.   	0.   	       [ 587]   5a423b:  mov    0x48(%rbp),%rax
0.   	0.   	       [ 587]   5a423f:  movl   $0xffffffff,(%rax)
0.   	0.   	       [ 588]   5a4245:  movl   $0x1,0x204(%rax)
0.   	0.   	       [ 801]   5a424f:  lea    -0x28(%rbp),%rsp
0.   	0.   	       [ 801]   5a4253:  pop    %rbx
0.   	0.   	       [ 801]   5a4254:  pop    %r12
0.   	0.   	       [ 801]   5a4256:  pop    %r13
0.   	0.   	       [ 801]   5a4258:  pop    %r14
0.   	0.   	       [ 801]   5a425a:  pop    %r15
0.   	0.   	       [ 801]   5a425c:  pop    %rbp
0.   	0.   	       [ 801]   5a425d:  ret
0.   	0.   	       [ 598]   5a425e:  mov    $0x1,%edi
0.   	0.   	       [ 598]   5a4263:  call   malloc@plt [ 0x4068b0, .-0x19d9b3]
0.   	0.   	       [ 598]   5a4268:  mov    %rax,-0x448(%rbp)
0.   	0.   	       [ 598]   5a426f:  test   %rax,%rax
0.   	0.   	       [ 598]   5a4272:  je     .+0x3385 [ 0x5a75f7 ]
0.   	0.   	       [ 598]   5a4278:  movslq %r15d,%rdx
0.   	0.   	       [ 598]   5a427b:  mov    $0x1,%edi
0.   	0.   	       [ 599]   5a4280:  xor    %ecx,%ecx
0.   	0.   	       [ 599]   5a4282:  jmp    .-0x7cc [ 0x5a3ab6 ]
0.   	0.   	       [ 599]   5a4287:  nopw   0x0(%rax,%rax,1)
0.   	0.   	       [ 615]   5a4290:  add    $0x8,%rax
0.   	0.   	       [ 615]   5a4294:  lea    -0x3e0(%rbp),%rcx
0.   	0.   	       [ 615]   5a429b:  add    -0x438(%rbp),%rdx
0.   	0.   	       [ 615]   5a42a2:  cmp    %rcx,%rax
0.   	0.   	       [ 615]   5a42a5:  jne    .-0x3ee [ 0x5a3eb7 ]
0.   	0.   	       [ 615]   5a42ab:  jmp    .-0x38f [ 0x5a3f1c ]
0.   	0.   	       [ 604]   5a42b0:  mov    -0x4e0(%rbp),%rax
0.   	0.   	       [ 604]   5a42b7:  shl    $0x2,%rax
0.   	0.   	       [ 604]   5a42bb:  mov    %rax,%rdi
0.   	0.   	       [ 604]   5a42be:  mov    %rax,-0x508(%rbp)
0.   	0.   	       [ 604]   5a42c5:  call   malloc@plt [ 0x4068b0, .-0x19da15]
0.   	0.   	       [ 604]   5a42ca:  mov    -0x450(%rbp),%rdx
0.   	0.   	       [ 604]   5a42d1:  mov    %rax,%rdi
0.   	0.   	       [ 604]   5a42d4:  mov    -0x470(%rbp),%rax
0.   	0.   	       [ 604]   5a42db:  imul   0x788(%rdx),%rax
0.   	0.   	       [ 604]   5a42e3:  mov    -0x430(%rbp),%rdx
0.   	0.   	       [ 604]   5a42ea:  add    %rax,%rdx
0.   	0.   	       [ 604]   5a42ed:  mov    -0x528(%rbp),%rax
0.   	0.   	       [ 604]   5a42f4:  mov    %rdx,-0x4d8(%rbp)
0.   	0.   	       [ 604]   5a42fb:  add    %rdx,%rax
0.   	0.   	       [ 604]   5a42fe:  mov    -0x4f8(%rbp),%rdx
0.   	0.   	       [ 604]   5a4305:  lea    (%rdx,%rax,4),%rdx
0.   	0.   	       [ 604]   5a4309:  xor    %eax,%eax
0.010	0.010	       [ 604]   5a430b:  mov    (%rdx,%rax,4),%ecx
0.040	0.040	       [ 604]   5a430e:  mov    %ecx,(%rdi,%rax,4)
0.   	0.   	       [ 604]   5a4311:  add    $0x1,%rax
0.   	0.   	       [ 604]   5a4315:  cmp    %rax,-0x468(%rbp)
0.   	0.   	       [ 604]   5a431c:  jge    .-0x11 [ 0x5a430b ]
0.   	0.   	       [ 604]   5a431e:  jmp    .-0x70a [ 0x5a3c14 ]
0.   	0.   	       [ 630]   5a4323:  mov    -0x440(%rbp),%rax
0.   	0.   	       [ 630]   5a432a:  mov    -0x590(%rbp),%rdi
0.   	0.   	       [ 631]   5a4331:  mov    $0xffffffffffffffff,%rcx
0.   	0.   	       [ 630]   5a4338:  mov    0x738(%rax),%rdx
0.   	0.   	       [ 630]   5a433f:  movslq (%rdi),%rdi
0.   	0.   	       [ 630]   5a4342:  mov    0x740(%rax),%rax
0.   	0.   	       [ 630]   5a4349:  mov    %rdx,-0x580(%rbp)
0.   	0.   	       [ 630]   5a4350:  mov    %rax,-0x588(%rbp)
0.   	0.   	       [ 630]   5a4357:  add    %rdi,%rax
0.   	0.   	       [ 630]   5a435a:  mov    (%rdx,%rax,4),%eax
0.   	0.   	       [ 631]   5a435d:  mov    $0xffffffffffffffff,%rdx
0.   	0.   	       [ 630]   5a4364:  mov    %rdi,-0x560(%rbp)
0.   	0.   	       [ 631]   5a436b:  mov    (%r14),%rdi
0.   	0.   	       [ 630]   5a436e:  mov    %eax,-0x458(%rbp)
0.   	0.   	       [ 631]   5a4374:  mov    0x38(%r14),%rax
0.   	0.   	       [ 631]   5a4378:  sub    0x30(%r14),%rax
0.   	0.   	       [ 631]   5a437c:  cmovs  %rdx,%rax
0.   	0.   	       [ 631]   5a4380:  lea    0x1(%rax),%rdx
0.   	0.   	       [ 631]   5a4384:  mov    0x50(%r14),%rax
0.   	0.   	       [ 631]   5a4388:  sub    0x48(%r14),%rax
0.   	0.   	       [ 631]   5a438c:  cmovs  %rcx,%rax
0.   	0.   	       [ 631]   5a4390:  xor    %esi,%esi
0.   	0.   	       [ 631]   5a4392:  add    $0x1,%rax
0.   	0.   	       [ 631]   5a4396:  imul   %rax,%rdx
0.   	0.   	       [ 631]   5a439a:  shl    $0x3,%rdx
0.   	0.080	       [ 631]   5a439e:  call   memset@plt [ 0x405fd0, .-0x19e3ce]
0.   	0.   	       [ 632]   5a43a3:  mov    0x20(%rbp),%rdx
0.   	0.   	       [ 632]   5a43a7:  mov    0x20(%rbp),%rdi
0.   	0.   	       [ 632]   5a43ab:  mov    $0xffffffffffffffff,%rcx
0.   	0.   	       [ 632]   5a43b2:  mov    0x38(%rdx),%rax
0.   	0.   	       [ 632]   5a43b6:  sub    0x30(%rdx),%rax
0.   	0.   	       [ 632]   5a43ba:  mov    $0xffffffffffffffff,%rdx
0.   	0.   	       [ 632]   5a43c1:  cmovs  %rdx,%rax
0.   	0.   	       [ 632]   5a43c5:  lea    0x1(%rax),%rdx
0.   	0.   	       [ 632]   5a43c9:  mov    0x50(%rdi),%rax
0.   	0.   	       [ 632]   5a43cd:  sub    0x48(%rdi),%rax
0.   	0.   	       [ 632]   5a43d1:  cmovs  %rcx,%rax
0.   	0.   	       [ 632]   5a43d5:  mov    (%rdi),%rdi
0.   	0.   	       [ 632]   5a43d8:  xor    %esi,%esi
0.   	0.   	       [ 632]   5a43da:  add    $0x1,%rax
0.   	0.   	       [ 632]   5a43de:  imul   %rax,%rdx
0.   	0.   	       [ 632]   5a43e2:  shl    $0x3,%rdx
0.   	0.010	       [ 632]   5a43e6:  call   memset@plt [ 0x405fd0, .-0x19e416]
0.   	0.   	       [ 633]   5a43eb:  mov    0x38(%r12),%rax
0.   	0.   	       [ 633]   5a43f0:  mov    $0xffffffffffffffff,%rdx
0.   	0.   	       [ 633]   5a43f7:  sub    0x30(%r12),%rax
0.   	0.   	       [ 633]   5a43fc:  cmovs  %rdx,%rax
0.   	0.   	       [ 633]   5a4400:  mov    $0xffffffffffffffff,%rcx
0.   	0.   	       [ 633]   5a4407:  mov    (%r12),%rdi
0.   	0.   	       [ 633]   5a440b:  lea    0x1(%rax),%rdx
0.   	0.   	       [ 633]   5a440f:  mov    0x50(%r12),%rax
0.   	0.   	       [ 633]   5a4414:  sub    0x48(%r12),%rax
0.   	0.   	       [ 633]   5a4419:  cmovs  %rcx,%rax
0.   	0.   	       [ 633]   5a441d:  add    $0x1,%rax
0.   	0.   	       [ 633]   5a4421:  imul   %rax,%rdx
0.   	0.   	       [ 633]   5a4425:  mov    0x68(%r12),%rax
0.   	0.   	       [ 633]   5a442a:  sub    0x60(%r12),%rax
0.   	0.   	       [ 633]   5a442f:  cmovs  %rcx,%rax
0.   	0.   	       [ 633]   5a4433:  add    $0x1,%rax
0.   	0.   	       [ 633]   5a4437:  imul   %rax,%rdx
0.   	0.   	       [ 633]   5a443b:  mov    0x80(%r12),%rax
0.   	0.   	       [ 633]   5a4443:  sub    0x78(%r12),%rax
0.   	0.   	       [ 633]   5a4448:  cmovs  %rcx,%rax
0.   	0.   	       [ 633]   5a444c:  xor    %esi,%esi
0.   	0.   	       [ 633]   5a444e:  add    $0x1,%rax
0.   	0.   	       [ 633]   5a4452:  imul   %rax,%rdx
0.   	0.   	       [ 633]   5a4456:  shl    $0x4,%rdx
0.   	0.580	       [ 633]   5a445a:  call   memset@plt [ 0x405fd0, .-0x19e48a]
0.   	0.   	       [ 634]   5a445f:  mov    0x38(%r13),%rax
0.   	0.   	       [ 634]   5a4463:  mov    $0xffffffffffffffff,%rdx
0.   	0.   	       [ 634]   5a446a:  sub    0x30(%r13),%rax
0.   	0.   	       [ 634]   5a446e:  cmovs  %rdx,%rax
0.   	0.   	       [ 634]   5a4472:  mov    $0xffffffffffffffff,%rcx
0.   	0.   	       [ 634]   5a4479:  mov    0x0(%r13),%rdi
0.   	0.   	       [ 634]   5a447d:  lea    0x1(%rax),%rdx
0.   	0.   	       [ 634]   5a4481:  mov    0x50(%r13),%rax
0.   	0.   	       [ 634]   5a4485:  sub    0x48(%r13),%rax
0.   	0.   	       [ 634]   5a4489:  cmovs  %rcx,%rax
0.   	0.   	       [ 634]   5a448d:  add    $0x1,%rax
0.   	0.   	       [ 634]   5a4491:  imul   %rax,%rdx
0.   	0.   	       [ 634]   5a4495:  mov    0x68(%r13),%rax
0.   	0.   	       [ 634]   5a4499:  sub    0x60(%r13),%rax
0.   	0.   	       [ 634]   5a449d:  cmovs  %rcx,%rax
0.   	0.   	       [ 634]   5a44a1:  xor    %esi,%esi
0.   	0.   	       [ 634]   5a44a3:  add    $0x1,%rax
0.   	0.   	       [ 634]   5a44a7:  imul   %rax,%rdx
0.   	0.   	       [ 634]   5a44ab:  shl    $0x3,%rdx
0.   	0.060	       [ 634]   5a44af:  call   memset@plt [ 0x405fd0, .-0x19e4df]
0.   	0.   	       [ 638]   5a44b4:  mov    -0x458(%rbp),%r9d
0.   	0.   	       [ 638]   5a44bb:  test   %r9d,%r9d
0.   	0.   	       [ 638]   5a44be:  jle    .+0xf59 [ 0x5a5417 ]
0.   	0.   	       [ 661]   5a44c4:  lea    (%rbx,%rbx,1),%rsi
0.   	0.   	       [ 598]   5a44c8:  mov    %rbx,%rax
0.   	0.   	       [ 598]   5a44cb:  mov    -0x460(%rbp),%r11
0.   	0.   	       [ 662]   5a44d2:  mov    -0x568(%rbp),%r10
0.   	0.   	       [ 598]   5a44d9:  not    %rax
0.   	0.   	       [ 661]   5a44dc:  lea    (%rsi,%rbx,1),%rdx
0.   	0.   	       [ 661]   5a44e0:  lea    (%rdx,%rdx,1),%r9
0.   	0.   	       [ 598]   5a44e4:  mov    %rax,%rdx
0.   	0.   	       [ 598]   5a44e7:  sub    %r11,%rdx
0.   	0.   	       [ 661]   5a44ea:  lea    (%rdx,%r9,1),%rcx
0.   	0.   	       [ 662]   5a44ee:  add    %rdx,%r10
0.   	0.   	       [ 663]   5a44f1:  lea    (%rsi,%rax,1),%rdx
0.   	0.   	       [ 661]   5a44f5:  lea    (%rcx,%rbx,1),%rdi
0.   	0.   	       [ 677]   5a44f9:  mov    0x8(%r12),%rcx
0.   	0.   	       [ 663]   5a44fe:  mov    %rdx,-0x4a8(%rbp)
0.   	0.   	       [ 665]   5a4505:  lea    (%r10,%rsi,1),%r8
0.   	0.   	       [ 661]   5a4509:  mov    %rdi,-0x5a0(%rbp)
0.   	0.   	       [ 664]   5a4510:  add    %rbx,%rdi
0.   	0.   	       [ 677]   5a4513:  mov    0x58(%r12),%rdx
0.   	0.   	       [ 664]   5a4518:  mov    %rdi,-0x570(%rbp)
0.   	0.   	       [ 667]   5a451f:  add    %rbx,%rdi
0.   	0.   	       [ 667]   5a4522:  mov    %rdi,-0x598(%rbp)
0.   	0.   	       [ 677]   5a4529:  mov    0x70(%r12),%rdi
0.   	0.   	       [ 665]   5a452e:  mov    %r8,-0x590(%rbp)
0.   	0.   	       [ 677]   5a4535:  add    %rdi,%rcx
0.   	0.   	       [ 677]   5a4538:  lea    (%rcx,%rdx,1),%r8
0.   	0.   	       [ 678]   5a453c:  add    %rdi,%rcx
0.   	0.   	       [ 677]   5a453f:  mov    %r8,-0x430(%rbp)
0.   	0.   	       [ 678]   5a4546:  lea    (%rdx,%rcx,1),%r8
0.   	0.   	       [ 679]   5a454a:  add    %rdi,%rcx
0.   	0.   	       [ 680]   5a454d:  mov    -0x430(%rbp),%rdi
0.   	0.   	       [ 679]   5a4554:  add    %rdx,%rcx
0.   	0.   	       [ 680]   5a4557:  add    %rdx,%rdi
0.   	0.   	       [ 682]   5a455a:  mov    %rcx,-0x438(%rbp)
0.   	0.   	       [ 682]   5a4561:  add    %rdx,%rcx
0.   	0.   	       [ 680]   5a4564:  mov    %rdi,-0x4f0(%rbp)
0.   	0.   	       [ 681]   5a456b:  lea    (%rdx,%r8,1),%rdi
0.   	0.   	       [ 682]   5a456f:  mov    %rcx,-0x510(%rbp)
0.   	0.   	       [ 687]   5a4576:  mov    0x58(%r13),%rcx
0.   	0.   	       [ 681]   5a457a:  mov    %rdi,-0x500(%rbp)
0.   	0.   	       [ 681]   5a4581:  mov    0x40(%r14),%rdi
0.   	0.   	       [ 687]   5a4585:  mov    %rcx,-0x4c0(%rbp)
0.   	0.   	       [ 687]   5a458c:  mov    (%r14),%rcx
0.   	0.   	       [ 687]   5a458f:  mov    %rdi,-0x460(%rbp)
0.   	0.   	       [ 687]   5a4596:  add    0x8(%r14),%rdi
0.   	0.   	       [ 687]   5a459a:  mov    0x20(%rbp),%r14
0.   	0.   	       [ 687]   5a459e:  lea    0x8(%rcx,%rdi,8),%rcx
0.   	0.   	       [ 687]   5a45a3:  mov    (%r12),%rdi
0.   	0.   	       [ 687]   5a45a7:  mov    %rcx,-0x540(%rbp)
0.   	0.   	       [ 687]   5a45ae:  mov    0x20(%rbp),%rcx
0.   	0.   	       [ 687]   5a45b2:  mov    0x40(%r14),%r14
0.   	0.   	       [ 687]   5a45b6:  mov    %r14,-0x480(%rbp)
0.   	0.   	       [ 687]   5a45bd:  add    0x8(%rcx),%r14
0.   	0.   	       [ 687]   5a45c1:  mov    (%rcx),%rcx
0.   	0.   	       [ 687]   5a45c4:  lea    0x8(%rcx,%r14,8),%r14
0.   	0.   	       [ 687]   5a45c9:  mov    0x40(%r12),%rcx
0.   	0.   	       [ 687]   5a45ce:  mov    %rcx,-0x488(%rbp)
0.   	0.   	       [ 687]   5a45d5:  add    %r8,%rcx
0.   	0.   	       [ 687]   5a45d8:  shl    $0x4,%rcx
0.   	0.   	       [ 687]   5a45dc:  lea    0x10(%rdi,%rcx,1),%r12
0.   	0.   	       [ 687]   5a45e1:  mov    0x40(%r13),%rdi
0.   	0.   	       [ 687]   5a45e5:  mov    -0x4c0(%rbp),%rcx
0.   	0.   	       [ 687]   5a45ec:  imul   0x60(%r13),%rcx
0.   	0.   	       [ 687]   5a45f1:  mov    %rdi,-0x4a0(%rbp)
0.   	0.   	       [ 687]   5a45f8:  add    0x8(%r13),%rdi
0.   	0.   	       [ 687]   5a45fc:  add    %rdi,%rcx
0.   	0.   	       [ 687]   5a45ff:  mov    0x0(%r13),%rdi
0.   	0.   	       [ 687]   5a4603:  lea    0x8(%rdi,%rcx,8),%r13
0.   	0.   	       [ 687]   5a4608:  mov    -0x458(%rbp),%ecx
0.   	0.   	       [ 687]   5a460e:  mov    -0x460(%rbp),%rdi
0.   	0.   	       [ 687]   5a4615:  mov    %r11,-0x460(%rbp)
0.   	0.   	       [ 687]   5a461c:  add    $0x1,%ecx
0.   	0.   	       [ 687]   5a461f:  mov    %rcx,-0x530(%rbp)
0.   	0.   	       [ 687]   5a4626:  lea    0x0(,%rdi,8),%rcx
0.   	0.   	       [ 687]   5a462e:  mov    -0x4a0(%rbp),%rdi
0.   	0.   	       [ 687]   5a4635:  mov    %rcx,-0x5f8(%rbp)
0.   	0.   	       [ 687]   5a463c:  mov    -0x480(%rbp),%rcx
0.   	0.   	       [ 687]   5a4643:  shl    $0x3,%rdi
0.   	0.   	       [ 687]   5a4647:  shl    $0x3,%rcx
0.   	0.   	       [ 687]   5a464b:  mov    %rdi,-0x610(%rbp)
0.   	0.   	       [ 687]   5a4652:  mov    %rcx,-0x600(%rbp)
0.   	0.   	       [ 687]   5a4659:  mov    -0x488(%rbp),%rcx
0.   	0.   	       [ 687]   5a4660:  shl    $0x4,%rcx
0.   	0.   	       [ 687]   5a4664:  mov    %rcx,-0x608(%rbp)
0.   	0.   	       [ 687]   5a466b:  lea    0x1(%r9,%rbx,1),%rcx
0.   	0.   	       [ 687]   5a4670:  mov    -0x448(%rbp),%r9
0.   	0.   	       [ 687]   5a4677:  add    %rax,%rcx
0.   	0.   	       [ 687]   5a467a:  sub    %r11,%rcx
0.   	0.   	       [ 687]   5a467d:  shl    $0x4,%rcx
0.   	0.   	       [ 687]   5a4681:  lea    (%r9,%rcx,1),%rdi
0.   	0.   	       [ 687]   5a4685:  mov    -0x4a8(%rbp),%rcx
0.   	0.   	       [ 687]   5a468c:  mov    %rdi,-0x5e0(%rbp)
0.   	0.   	       [ 687]   5a4693:  lea    (%rcx,%rbx,4),%rcx
0.   	0.   	       [ 687]   5a4697:  lea    0x1(%rcx,%rbx,1),%rdi
0.   	0.   	       [ 687]   5a469c:  shl    $0x4,%rdi
0.   	0.   	       [ 687]   5a46a0:  add    %r9,%rdi
0.   	0.   	       [ 687]   5a46a3:  mov    %rdi,-0x5d8(%rbp)
0.   	0.   	       [ 687]   5a46aa:  lea    0x1(%rax,%rsi,1),%rdi
0.   	0.   	       [ 687]   5a46af:  shl    $0x4,%rdi
0.   	0.   	       [ 687]   5a46b3:  add    %rdi,%r9
0.   	0.   	       [ 687]   5a46b6:  mov    %r9,-0x5d0(%rbp)
0.   	0.   	       [ 687]   5a46bd:  mov    %rcx,%r9
0.   	0.   	       [ 687]   5a46c0:  sub    %r11,%r9
0.   	0.   	       [ 687]   5a46c3:  mov    -0x448(%rbp),%r11
0.   	0.   	       [ 687]   5a46ca:  lea    0x1(%r9,%rsi,1),%rdi
0.   	0.   	       [ 687]   5a46cf:  lea    0x1(%rcx,%rsi,1),%rsi
0.   	0.   	       [ 687]   5a46d4:  shl    $0x4,%rdi
0.   	0.   	       [ 687]   5a46d8:  shl    $0x4,%rsi
0.   	0.   	       [ 687]   5a46dc:  add    %rdi,%r11
0.   	0.   	       [ 687]   5a46df:  mov    -0x448(%rbp),%rdi
0.   	0.   	       [ 687]   5a46e6:  mov    %r11,-0x5c8(%rbp)
0.   	0.   	       [ 687]   5a46ed:  mov    -0x460(%rbp),%r11
0.   	0.   	       [ 687]   5a46f4:  add    %rdi,%rsi
0.   	0.   	       [ 662]   5a46f7:  add    %r10,%rbx
0.   	0.   	       [ 662]   5a46fa:  mov    %rsi,-0x5c0(%rbp)
0.   	0.   	       [ 662]   5a4701:  lea    0x1(%r9),%rsi
0.   	0.   	       [ 662]   5a4705:  shl    $0x4,%rsi
0.   	0.   	       [ 662]   5a4709:  add    %rdi,%rsi
0.   	0.   	       [ 662]   5a470c:  mov    %rsi,-0x5b8(%rbp)
0.   	0.   	       [ 662]   5a4713:  lea    0x1(%rcx),%rsi
0.   	0.   	       [ 662]   5a4717:  lea    0x1(%rcx,%r11,1),%rcx
0.   	0.   	       [ 662]   5a471c:  shl    $0x4,%rsi
0.   	0.   	       [ 662]   5a4720:  shl    $0x4,%rcx
0.   	0.   	       [ 662]   5a4724:  add    %rdi,%rsi
0.   	0.   	       [ 662]   5a4727:  lea    (%rdi,%rcx,1),%r9
0.   	0.   	       [ 662]   5a472b:  mov    %rsi,-0x5b0(%rbp)
0.   	0.   	       [ 662]   5a4732:  mov    %rdi,%rsi
0.   	0.   	       [ 662]   5a4735:  mov    -0x430(%rbp),%rdi
0.   	0.   	       [ 662]   5a473c:  mov    %r9,-0x5a8(%rbp)
0.   	0.   	       [ 662]   5a4743:  mov    %r8,%r9
0.   	0.   	       [ 662]   5a4746:  shl    $0x4,%rdi
0.   	0.   	       [ 662]   5a474a:  neg    %r9
0.   	0.   	       [ 662]   5a474d:  mov    %rdi,-0x618(%rbp)
0.   	0.   	       [ 662]   5a4754:  mov    -0x438(%rbp),%rcx
0.   	0.   	       [ 662]   5a475b:  shl    $0x4,%r9
0.   	0.   	       [ 662]   5a475f:  mov    -0x4f0(%rbp),%rdi
0.   	0.   	       [ 662]   5a4766:  mov    -0x500(%rbp),%r11
0.   	0.   	       [ 662]   5a476d:  mov    %rbx,-0x658(%rbp)
0.   	0.   	       [ 662]   5a4774:  shl    $0x4,%rcx
0.   	0.   	       [ 662]   5a4778:  mov    -0x510(%rbp),%r8
0.   	0.   	       [ 662]   5a477f:  mov    %r15d,-0x558(%rbp)
0.   	0.   	       [ 662]   5a4786:  mov    %rcx,-0x620(%rbp)
0.   	0.   	       [ 662]   5a478d:  mov    %rdi,%rcx
0.   	0.   	       [ 662]   5a4790:  shl    $0x4,%rcx
0.   	0.   	       [ 662]   5a4794:  mov    %rcx,-0x628(%rbp)
0.   	0.   	       [ 662]   5a479b:  mov    %r11,%rcx
0.   	0.   	       [ 662]   5a479e:  shl    $0x4,%rcx
0.   	0.   	       [ 662]   5a47a2:  mov    %rcx,-0x630(%rbp)
0.   	0.   	       [ 662]   5a47a9:  mov    %r8,%rcx
0.   	0.   	       [ 662]   5a47ac:  shl    $0x4,%rcx
0.   	0.   	       [ 662]   5a47b0:  mov    %rcx,-0x638(%rbp)
0.   	0.   	       [ 683]   5a47b7:  lea    (%rdx,%rdi,1),%rcx
0.   	0.   	       [ 683]   5a47bb:  mov    %r14,%rdi
0.   	0.   	       [ 683]   5a47be:  shl    $0x4,%rcx
0.   	0.   	       [ 683]   5a47c2:  mov    %rcx,-0x640(%rbp)
0.   	0.   	       [ 684]   5a47c9:  lea    (%rdx,%r11,1),%rcx
0.   	0.   	       [ 685]   5a47cd:  add    %r8,%rdx
0.   	0.   	       [ 685]   5a47d0:  mov    -0x540(%rbp),%r11
0.   	0.   	       [ 685]   5a47d7:  shl    $0x4,%rdx
0.   	0.   	       [ 685]   5a47db:  shl    $0x4,%rcx
0.   	0.   	       [ 685]   5a47df:  mov    %rdx,-0x650(%rbp)
0.   	0.   	       [ 685]   5a47e6:  mov    %r15d,%edx
0.   	0.   	       [ 685]   5a47e9:  mov    %rsi,%r15
0.   	0.   	       [ 685]   5a47ec:  mov    %r9,%rsi
0.   	0.   	       [ 685]   5a47ef:  shr    $1,%edx
0.   	0.   	       [ 685]   5a47f1:  mov    %rcx,-0x648(%rbp)
0.   	0.   	       [ 685]   5a47f8:  mov    $0x1,%r9d
0.   	0.   	       [ 685]   5a47fe:  shl    $0x4,%rdx
0.   	0.   	       [ 685]   5a4802:  mov    %rdx,-0x670(%rbp)
0.   	0.   	       [ 675]   5a4809:  mov    %r13,-0x510(%rbp)
0.010	0.010	       [ 675]   5a4810:  mov    %r12,%r14
0.   	0.   	       [ 664]   5a4813:  pxor   %xmm3,%xmm3
0.   	0.   	       [ 666]   5a4817:  mov    -0x460(%rbp),%rbx
0.   	0.   	       [ 675]   5a481e:  mov    %rdi,-0x500(%rbp)
0.   	0.   	       [ 666]   5a4825:  lea    (%rax,%rbx,1),%rdx
0.   	0.   	       [ 668]   5a4829:  add    %r10,%rbx
0.   	0.   	       [ 675]   5a482c:  mov    %r11,-0x4f0(%rbp)
0.   	0.   	       [ 675]   5a4833:  movq   $0x1,-0x488(%rbp)
0.   	0.   	       [ 666]   5a483e:  mov    %rdx,-0x660(%rbp)
0.   	0.   	       [ 668]   5a4845:  mov    %rbx,-0x668(%rbp)
0.   	0.   	       [ 668]   5a484c:  mov    %rax,-0x678(%rbp)
0.   	0.   	       [ 668]   5a4853:  mov    %r10,-0x680(%rbp)
0.   	0.   	       [ 668]   5a485a:  mov    %r11,-0x688(%rbp)
0.   	0.   	       [ 668]   5a4861:  mov    %rdi,-0x690(%rbp)
0.   	0.   	       [ 668]   5a4868:  mov    %r12,-0x698(%rbp)
0.   	0.   	       [ 668]   5a486f:  mov    %r13,-0x6a0(%rbp)
0.   	0.   	       [ 643]   5a4876:  mov    -0x558(%rbp),%r13d
0.010	0.010	       [ 643]   5a487d:  test   %r13d,%r13d
0.   	0.   	       [ 643]   5a4880:  jle    .+0x120d [ 0x5a5a8d ]
0.   	0.   	       [ 653]   5a4886:  mov    -0x440(%rbp),%rdx
0.010	0.010	       [ 653]   5a488d:  mov    -0x560(%rbp),%rcx
0.   	0.   	       [ 653]   5a4894:  mov    0xc00(%rdx),%rax
0.030	0.030	       [ 653]   5a489b:  add    %rcx,%rax
0.010	0.010	       [ 653]   5a489e:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 653]   5a48a2:  add    0xbf8(%rdx),%rax
0.060	0.060	       [ 653]   5a48a9:  mov    (%rax),%rbx
0.350	0.350	       [ 653]   5a48ac:  mov    0x8(%rax),%rdi
0.030	0.030	       [ 653]   5a48b0:  mov    0x58(%rax),%r10
0.100	0.100	       [ 653]   5a48b4:  mov    %rbx,-0x480(%rbp)
0.   	0.   	       [ 653]   5a48bb:  mov    0x40(%rax),%rbx
0.070	0.070	       [ 654]   5a48bf:  mov    0xc40(%rdx),%rax
0.   	0.   	       [ 653]   5a48c6:  mov    %rdi,-0x4a0(%rbp)
0.   	0.   	       [ 653]   5a48cd:  mov    -0x488(%rbp),%rdi
0.   	0.   	       [ 654]   5a48d4:  add    %rcx,%rax
0.   	0.   	       [ 653]   5a48d7:  imul   %rdi,%rbx
0.060	0.060	       [ 653]   5a48db:  imul   $0x88,%rax,%rax
0.010	0.010	       [ 653]   5a48e2:  add    0xc38(%rdx),%rax
0.   	0.   	       [ 654]   5a48e9:  mov    0x40(%rax),%rcx
0.050	0.050	       [ 654]   5a48ed:  mov    (%rax),%r11
0.020	0.020	       [ 654]   5a48f0:  mov    0x8(%rax),%r12
0.010	0.010	       [ 654]   5a48f4:  mov    0x70(%rax),%rdx
0.020	0.020	       [ 653]   5a48f8:  mov    %rbx,-0x568(%rbp)
0.020	0.020	       [ 654]   5a48ff:  imul   %rdi,%rcx
0.   	0.   	       [ 654]   5a4903:  mov    0x58(%rax),%r8
0.   	0.   	       [ 654]   5a4907:  cmp    $0x1,%r13d
0.   	0.   	       [ 654]   5a490b:  je     .+0x1125 [ 0x5a5a30 ]
0.   	0.   	       [ 654]   5a4911:  mov    %r8,%rax
0.   	0.   	       [ 654]   5a4914:  pxor   %xmm10,%xmm10
0.   	0.   	       [ 654]   5a4919:  mov    -0x4a0(%rbp),%rdi
0.   	0.   	       [ 641]   5a4920:  movq   $0x0,-0x458(%rbp)
0.   	0.   	       [ 641]   5a492b:  shl    $0x4,%rax
0.   	0.   	       [ 654]   5a492f:  pxor   %xmm1,%xmm1
0.010	0.010	       [ 641]   5a4933:  movq   $0x0,-0x438(%rbp)
0.010	0.010	       [ 654]   5a493e:  movapd %xmm10,%xmm8
0.   	0.   	       [ 654]   5a4943:  movapd %xmm10,%xmm9
0.   	0.   	       [ 654]   5a4948:  movapd %xmm10,%xmm5
0.   	0.   	       [ 654]   5a494d:  mov    %rax,-0x5f0(%rbp)
0.   	0.   	       [ 654]   5a4954:  mov    %r10,%rax
0.   	0.   	       [ 654]   5a4957:  shl    $0x4,%rax
0.   	0.   	       [ 654]   5a495b:  movapd %xmm10,%xmm6
0.020	0.020	       [ 654]   5a4960:  movapd %xmm10,%xmm2
0.   	0.   	       [ 654]   5a4965:  mov    %rsi,-0x6a8(%rbp)
0.   	0.   	       [ 654]   5a496c:  mov    %rax,-0x5e8(%rbp)
0.   	0.   	       [ 654]   5a4973:  lea    (%rdi,%r10,1),%rax
0.   	0.   	       [ 654]   5a4977:  mov    %rcx,%rsi
0.   	0.   	       [ 654]   5a497a:  movapd %xmm10,%xmm4
0.   	0.   	       [ 654]   5a497f:  add    %r9,%rax
0.   	0.   	       [ 654]   5a4982:  movapd %xmm10,%xmm7
0.   	0.   	       [ 654]   5a4987:  movapd %xmm1,%xmm11
0.   	0.   	       [ 654]   5a498c:  movaps %xmm10,-0x430(%rbp)
0.010	0.010	       [ 654]   5a4994:  add    %rbx,%rax
0.   	0.   	       [ 654]   5a4997:  mov    -0x480(%rbp),%rbx
0.   	0.   	       [ 654]   5a499e:  lea    (%rbx,%rax,8),%r13
0.   	0.   	       [ 654]   5a49a2:  lea    (%r12,%rdx,1),%rbx
0.   	0.   	       [ 654]   5a49a6:  lea    (%rbx,%r8,1),%rax
0.   	0.   	       [ 654]   5a49aa:  add    %r9,%rax
0.   	0.   	       [ 654]   5a49ad:  add    %rcx,%rax
0.020	0.020	       [ 654]   5a49b0:  lea    (%r11,%rax,8),%rdi
0.010	0.010	       [ 654]   5a49b4:  lea    (%r8,%r12,1),%rax
0.   	0.   	       [ 654]   5a49b8:  lea    (%rax,%rdx,2),%rax
0.   	0.   	       [ 654]   5a49bc:  add    %r9,%rax
0.020	0.020	       [ 654]   5a49bf:  add    %rcx,%rax
0.   	0.   	       [ 654]   5a49c2:  mov    %rdx,%rcx
0.   	0.   	       [ 654]   5a49c5:  mov    %r11,%rdx
0.   	0.   	       [ 654]   5a49c8:  lea    (%r11,%rax,8),%r12
0.   	0.   	       [ 654]   5a49cc:  mov    %r9,%r11
0.010	0.010	       [ 654]   5a49cf:  xor    %eax,%eax
0.   	0.   	       [ 654]   5a49d1:  mov    %r14,%r9
0.   	0.   	       [ 654]   5a49d4:  mov    %rbx,%r14
0.030	0.030	       [ 653]   5a49d7:  movsd  0x0(%r13),%xmm12
12.959	12.959	       [ 659]   5a49dd:  mov    -0x490(%rbp),%rbx
0.110	0.110	       [ 653]   5a49e4:  movsd  0x0(%r13,%r10,8),%xmm13
13.479	13.479	       [ 653]   5a49eb:  movapd %xmm12,%xmm0
0.060	0.060	       [ 658]   5a49f0:  addsd  %xmm1,%xmm12
1.001	1.001	       [ 653]   5a49f5:  unpcklpd %xmm13,%xmm0
0.931	0.931	       [ 658]   5a49fa:  movapd %xmm12,%xmm1
0.020	0.020	       [ 659]   5a49ff:  movupd (%rbx,%rax,1),%xmm12
0.470	0.470	       [ 659]   5a4a05:  mov    -0x5e0(%rbp),%rbx
0.010	0.010	       [ 658]   5a4a0c:  addsd  %xmm13,%xmm1
1.181	1.181	       [ 658]   5a4a11:  movupd 0x10(%r15,%rax,2),%xmm13
0.070	0.070	       [ 658]   5a4a18:  movlpd 0x8(%r15,%rax,2),%xmm13
0.030	0.030	       [ 659]   5a4a1f:  mulpd  %xmm0,%xmm12
1.391	1.391	       [ 660]   5a4a24:  movapd %xmm13,%xmm15
0.110	0.110	       [ 660]   5a4a29:  mulpd  %xmm3,%xmm15
0.090	0.090	       [ 660]   5a4a2e:  mulpd  %xmm0,%xmm13
0.430	0.430	       [ 659]   5a4a33:  addsd  %xmm12,%xmm11
0.290	0.290	       [ 659]   5a4a38:  unpckhpd %xmm12,%xmm12
0.660	0.660	       [ 659]   5a4a3d:  addsd  %xmm12,%xmm11
1.781	1.781	       [ 659]   5a4a42:  movupd (%r15,%rax,2),%xmm12
0.010	0.010	       [ 659]   5a4a48:  movhpd 0x10(%r15,%rax,2),%xmm12
0.200	0.200	       [ 660]   5a4a4f:  movapd %xmm12,%xmm14
0.030	0.030	       [ 660]   5a4a54:  mulpd  %xmm0,%xmm14
0.030	0.030	       [ 660]   5a4a59:  mulpd  %xmm3,%xmm12
0.070	0.070	       [ 660]   5a4a5e:  subpd  %xmm15,%xmm14
0.040	0.040	       [ 660]   5a4a63:  movupd (%rbx,%rax,2),%xmm15
0.   	0.   	       [ 660]   5a4a69:  addpd  %xmm13,%xmm12
0.861	0.861	       [ 660]   5a4a6e:  movaps %xmm15,-0x540(%rbp)
0.   	0.   	       [ 660]   5a4a76:  movupd 0x10(%rbx,%rax,2),%xmm15
0.160	0.160	       [ 660]   5a4a7d:  mov    -0x5d8(%rbp),%rbx
0.040	0.040	       [ 660]   5a4a84:  movapd %xmm14,%xmm13
0.030	0.030	       [ 660]   5a4a89:  unpcklpd %xmm12,%xmm13
0.650	0.650	       [ 660]   5a4a8e:  unpckhpd %xmm12,%xmm14
0.360	0.360	       [ 660]   5a4a93:  movapd -0x540(%rbp),%xmm12
0.030	0.030	       [ 660]   5a4a9c:  addpd  %xmm10,%xmm13
1.351	1.351	       [ 660]   5a4aa1:  unpcklpd %xmm15,%xmm12
0.060	0.060	       [ 660]   5a4aa6:  movapd %xmm13,%xmm10
0.080	0.080	       [ 660]   5a4aab:  movapd %xmm15,%xmm13
0.020	0.020	       [ 660]   5a4ab0:  movlpd -0x538(%rbp),%xmm13
0.040	0.040	       [ 660]   5a4ab9:  addpd  %xmm14,%xmm10
2.842	2.842	       [ 661]   5a4abe:  movapd %xmm12,%xmm14
0.030	0.030	       [ 661]   5a4ac3:  mulpd  %xmm0,%xmm14
0.090	0.090	       [ 661]   5a4ac8:  movapd %xmm13,%xmm15
0.030	0.030	       [ 661]   5a4acd:  mulpd  %xmm3,%xmm15
0.020	0.020	       [ 661]   5a4ad2:  mulpd  %xmm0,%xmm13
0.160	0.160	       [ 661]   5a4ad7:  mulpd  %xmm3,%xmm12
0.070	0.070	       [ 661]   5a4adc:  subpd  %xmm15,%xmm14
0.010	0.010	       [ 661]   5a4ae1:  movupd (%rbx,%rax,2),%xmm15
1.171	1.171	       [ 661]   5a4ae7:  addpd  %xmm13,%xmm12
0.050	0.050	       [ 661]   5a4aec:  movaps %xmm15,-0x540(%rbp)
0.010	0.010	       [ 661]   5a4af4:  movupd 0x10(%rbx,%rax,2),%xmm15
0.020	0.020	       [ 661]   5a4afb:  mov    -0x5d0(%rbp),%rbx
0.   	0.   	       [ 661]   5a4b02:  movapd %xmm14,%xmm13
0.080	0.080	       [ 661]   5a4b07:  unpcklpd %xmm12,%xmm13
0.330	0.330	       [ 661]   5a4b0c:  unpckhpd %xmm12,%xmm14
0.090	0.090	       [ 661]   5a4b11:  movapd -0x540(%rbp),%xmm12
1.111	1.111	       [ 661]   5a4b1a:  addpd  %xmm9,%xmm13
0.480	0.480	       [ 661]   5a4b1f:  unpcklpd %xmm15,%xmm12
0.090	0.090	       [ 661]   5a4b24:  movapd %xmm13,%xmm9
0.   	0.   	       [ 661]   5a4b29:  movapd %xmm15,%xmm13
0.010	0.010	       [ 661]   5a4b2e:  movlpd -0x538(%rbp),%xmm13
0.160	0.160	       [ 661]   5a4b37:  addpd  %xmm14,%xmm9
1.851	1.851	       [ 662]   5a4b3c:  movapd %xmm12,%xmm14
0.030	0.030	       [ 662]   5a4b41:  mulpd  %xmm0,%xmm14
0.430	0.430	       [ 662]   5a4b46:  movapd %xmm13,%xmm15
0.   	0.   	       [ 662]   5a4b4b:  mulpd  %xmm3,%xmm15
0.030	0.030	       [ 662]   5a4b50:  mulpd  %xmm0,%xmm13
0.020	0.020	       [ 662]   5a4b55:  mulpd  %xmm3,%xmm12
0.   	0.   	       [ 662]   5a4b5a:  subpd  %xmm15,%xmm14
0.090	0.090	       [ 662]   5a4b5f:  movupd (%rbx,%rax,2),%xmm15
0.630	0.630	       [ 662]   5a4b65:  addpd  %xmm13,%xmm12
0.070	0.070	       [ 662]   5a4b6a:  movaps %xmm15,-0x540(%rbp)
0.320	0.320	       [ 662]   5a4b72:  movupd 0x10(%rbx,%rax,2),%xmm15
0.030	0.030	       [ 662]   5a4b79:  mov    -0x5c8(%rbp),%rbx
0.   	0.   	       [ 662]   5a4b80:  movapd %xmm14,%xmm13
0.010	0.010	       [ 662]   5a4b85:  unpcklpd %xmm12,%xmm13
0.310	0.310	       [ 662]   5a4b8a:  unpckhpd %xmm12,%xmm14
0.180	0.180	       [ 662]   5a4b8f:  movapd -0x540(%rbp),%xmm12
0.710	0.710	       [ 662]   5a4b98:  addpd  %xmm8,%xmm13
0.520	0.520	       [ 662]   5a4b9d:  unpcklpd %xmm15,%xmm12
0.270	0.270	       [ 662]   5a4ba2:  movapd %xmm13,%xmm8
0.010	0.010	       [ 662]   5a4ba7:  movapd %xmm15,%xmm13
0.   	0.   	       [ 662]   5a4bac:  movlpd -0x538(%rbp),%xmm13
0.060	0.060	       [ 662]   5a4bb5:  addpd  %xmm14,%xmm8
1.411	1.411	       [ 663]   5a4bba:  movapd %xmm12,%xmm14
0.070	0.070	       [ 663]   5a4bbf:  mulpd  %xmm0,%xmm14
0.370	0.370	       [ 663]   5a4bc4:  movapd %xmm13,%xmm15
0.   	0.   	       [ 663]   5a4bc9:  mulpd  %xmm3,%xmm15
0.250	0.250	       [ 663]   5a4bce:  mulpd  %xmm0,%xmm13
0.   	0.   	       [ 663]   5a4bd3:  mulpd  %xmm3,%xmm12
0.020	0.020	       [ 663]   5a4bd8:  subpd  %xmm15,%xmm14
0.050	0.050	       [ 663]   5a4bdd:  movupd (%rbx,%rax,2),%xmm15
0.570	0.570	       [ 663]   5a4be3:  addpd  %xmm13,%xmm12
0.120	0.120	       [ 663]   5a4be8:  movaps %xmm15,-0x540(%rbp)
0.350	0.350	       [ 663]   5a4bf0:  movupd 0x10(%rbx,%rax,2),%xmm15
0.   	0.   	       [ 663]   5a4bf7:  movapd %xmm14,%xmm13
0.200	0.200	       [ 663]   5a4bfc:  unpcklpd %xmm12,%xmm13
0.330	0.330	       [ 663]   5a4c01:  unpckhpd %xmm12,%xmm14
0.080	0.080	       [ 663]   5a4c06:  movapd %xmm15,%xmm12
0.   	0.   	       [ 663]   5a4c0b:  movlpd -0x538(%rbp),%xmm12
0.570	0.570	       [ 663]   5a4c14:  addpd  %xmm7,%xmm13
0.640	0.640	       [ 663]   5a4c19:  movapd %xmm13,%xmm7
0.290	0.290	       [ 663]   5a4c1e:  addpd  %xmm14,%xmm7
1.291	1.291	       [ 663]   5a4c23:  movapd -0x540(%rbp),%xmm14
0.110	0.110	       [ 663]   5a4c2c:  mov    -0x5c0(%rbp),%rbx
0.   	0.   	       [ 663]   5a4c33:  unpcklpd %xmm15,%xmm14
0.010	0.010	       [ 664]   5a4c38:  movapd %xmm12,%xmm15
0.   	0.   	       [ 664]   5a4c3d:  mulpd  %xmm3,%xmm15
0.240	0.240	       [ 664]   5a4c42:  movapd %xmm14,%xmm13
0.080	0.080	       [ 664]   5a4c47:  mulpd  %xmm0,%xmm13
0.310	0.310	       [ 664]   5a4c4c:  mulpd  %xmm3,%xmm14
0.470	0.470	       [ 664]   5a4c51:  mulpd  %xmm0,%xmm12
0.100	0.100	       [ 664]   5a4c56:  subpd  %xmm15,%xmm13
0.010	0.010	       [ 664]   5a4c5b:  movupd (%rbx,%rax,2),%xmm15
0.010	0.010	       [ 664]   5a4c61:  addpd  %xmm14,%xmm12
0.090	0.090	       [ 664]   5a4c66:  movaps %xmm15,-0x540(%rbp)
0.230	0.230	       [ 664]   5a4c6e:  movupd 0x10(%rbx,%rax,2),%xmm15
0.070	0.070	       [ 664]   5a4c75:  mov    -0x5b8(%rbp),%rbx
0.180	0.180	       [ 664]   5a4c7c:  movapd %xmm13,%xmm14
0.550	0.550	       [ 664]   5a4c81:  unpcklpd %xmm12,%xmm14
0.400	0.400	       [ 664]   5a4c86:  unpckhpd %xmm12,%xmm13
0.090	0.090	       [ 664]   5a4c8b:  movapd -0x540(%rbp),%xmm12
0.030	0.030	       [ 664]   5a4c94:  addpd  %xmm6,%xmm14
0.540	0.540	       [ 664]   5a4c99:  unpcklpd %xmm15,%xmm12
0.200	0.200	       [ 664]   5a4c9e:  movapd %xmm14,%xmm6
0.110	0.110	       [ 665]   5a4ca3:  movapd %xmm12,%xmm14
0.190	0.190	       [ 664]   5a4ca8:  addpd  %xmm13,%xmm6
1.391	1.391	       [ 665]   5a4cad:  mulpd  %xmm0,%xmm14
0.090	0.090	       [ 665]   5a4cb2:  movapd %xmm15,%xmm13
0.   	0.   	       [ 665]   5a4cb7:  movlpd -0x538(%rbp),%xmm13
0.010	0.010	       [ 665]   5a4cc0:  mulpd  %xmm3,%xmm12
0.040	0.040	       [ 665]   5a4cc5:  movapd %xmm13,%xmm15
0.170	0.170	       [ 665]   5a4cca:  mulpd  %xmm3,%xmm15
0.080	0.080	       [ 665]   5a4ccf:  mulpd  %xmm0,%xmm13
0.110	0.110	       [ 665]   5a4cd4:  subpd  %xmm15,%xmm14
0.901	0.901	       [ 665]   5a4cd9:  movupd (%rbx,%rax,2),%xmm15
0.040	0.040	       [ 665]   5a4cdf:  addpd  %xmm13,%xmm12
0.040	0.040	       [ 665]   5a4ce4:  movaps %xmm15,-0x540(%rbp)
0.050	0.050	       [ 665]   5a4cec:  movupd 0x10(%rbx,%rax,2),%xmm15
0.030	0.030	       [ 665]   5a4cf3:  mov    -0x5b0(%rbp),%rbx
0.050	0.050	       [ 665]   5a4cfa:  movapd %xmm14,%xmm13
0.070	0.070	       [ 665]   5a4cff:  unpcklpd %xmm12,%xmm13
0.480	0.480	       [ 665]   5a4d04:  unpckhpd %xmm12,%xmm14
0.991	0.991	       [ 665]   5a4d09:  movapd -0x540(%rbp),%xmm12
0.070	0.070	       [ 665]   5a4d12:  addpd  %xmm5,%xmm13
0.580	0.580	       [ 665]   5a4d17:  unpcklpd %xmm15,%xmm12
0.040	0.040	       [ 665]   5a4d1c:  movapd %xmm13,%xmm5
0.   	0.   	       [ 665]   5a4d21:  movapd %xmm15,%xmm13
0.100	0.100	       [ 665]   5a4d26:  movlpd -0x538(%rbp),%xmm13
0.160	0.160	       [ 665]   5a4d2f:  addpd  %xmm14,%xmm5
1.641	1.641	       [ 666]   5a4d34:  movapd %xmm12,%xmm14
0.390	0.390	       [ 666]   5a4d39:  mulpd  %xmm0,%xmm14
0.130	0.130	       [ 666]   5a4d3e:  movapd %xmm13,%xmm15
0.020	0.020	       [ 666]   5a4d43:  mulpd  %xmm3,%xmm15
0.020	0.020	       [ 666]   5a4d48:  mulpd  %xmm0,%xmm13
0.020	0.020	       [ 666]   5a4d4d:  mulpd  %xmm3,%xmm12
0.060	0.060	       [ 666]   5a4d52:  subpd  %xmm15,%xmm14
0.110	0.110	       [ 666]   5a4d57:  movupd (%rbx,%rax,2),%xmm15
0.700	0.700	       [ 666]   5a4d5d:  addpd  %xmm13,%xmm12
0.280	0.280	       [ 666]   5a4d62:  movaps %xmm15,-0x540(%rbp)
0.040	0.040	       [ 666]   5a4d6a:  movupd 0x10(%rbx,%rax,2),%xmm15
0.   	0.   	       [ 666]   5a4d71:  mov    -0x5a8(%rbp),%rbx
0.010	0.010	       [ 666]   5a4d78:  movapd %xmm14,%xmm13
0.   	0.   	       [ 666]   5a4d7d:  unpcklpd %xmm12,%xmm13
0.300	0.300	       [ 666]   5a4d82:  unpckhpd %xmm12,%xmm14
0.260	0.260	       [ 666]   5a4d87:  movapd -0x540(%rbp),%xmm12
0.570	0.570	       [ 666]   5a4d90:  addpd  %xmm4,%xmm13
0.700	0.700	       [ 666]   5a4d95:  unpcklpd %xmm15,%xmm12
0.050	0.050	       [ 666]   5a4d9a:  movapd %xmm13,%xmm4
0.   	0.   	       [ 666]   5a4d9f:  movapd %xmm15,%xmm13
0.010	0.010	       [ 666]   5a4da4:  movlpd -0x538(%rbp),%xmm13
0.   	0.   	       [ 666]   5a4dad:  addpd  %xmm14,%xmm4
1.441	1.441	       [ 667]   5a4db2:  movapd %xmm12,%xmm14
0.090	0.090	       [ 667]   5a4db7:  mulpd  %xmm0,%xmm14
0.370	0.370	       [ 667]   5a4dbc:  movapd %xmm13,%xmm15
0.130	0.130	       [ 667]   5a4dc1:  mulpd  %xmm3,%xmm15
0.050	0.050	       [ 667]   5a4dc6:  mulpd  %xmm0,%xmm13
0.   	0.   	       [ 667]   5a4dcb:  mulpd  %xmm3,%xmm12
0.010	0.010	       [ 667]   5a4dd0:  subpd  %xmm15,%xmm14
0.050	0.050	       [ 667]   5a4dd5:  movupd (%rbx,%rax,2),%xmm15
0.620	0.620	       [ 667]   5a4ddb:  addpd  %xmm13,%xmm12
0.110	0.110	       [ 667]   5a4de0:  movaps %xmm15,-0x540(%rbp)
0.410	0.410	       [ 667]   5a4de8:  movupd 0x10(%rbx,%rax,2),%xmm15
0.150	0.150	       [ 667]   5a4def:  add    $0x10,%rax
0.020	0.020	       [ 667]   5a4df3:  movapd %xmm14,%xmm13
0.   	0.   	       [ 667]   5a4df8:  movaps %xmm15,-0x550(%rbp)
0.020	0.020	       [ 667]   5a4e00:  unpcklpd %xmm12,%xmm13
0.260	0.260	       [ 667]   5a4e05:  unpckhpd %xmm12,%xmm14
0.240	0.240	       [ 667]   5a4e0a:  movapd %xmm15,%xmm12
0.390	0.390	       [ 667]   5a4e0f:  movlpd -0x538(%rbp),%xmm12
0.140	0.140	       [ 667]   5a4e18:  addpd  %xmm2,%xmm13
0.580	0.580	       [ 667]   5a4e1d:  movapd %xmm13,%xmm2
0.120	0.120	       [ 667]   5a4e22:  addpd  %xmm14,%xmm2
1.371	1.371	       [ 667]   5a4e27:  movapd -0x540(%rbp),%xmm14
0.   	0.   	       [ 667]   5a4e30:  unpcklpd %xmm15,%xmm14
0.   	0.   	       [ 668]   5a4e35:  movapd %xmm12,%xmm15
0.070	0.070	       [ 668]   5a4e3a:  mulpd  %xmm3,%xmm15
0.320	0.320	       [ 668]   5a4e3f:  movapd %xmm14,%xmm13
0.070	0.070	       [ 668]   5a4e44:  mulpd  %xmm0,%xmm13
0.210	0.210	       [ 668]   5a4e49:  mulpd  %xmm3,%xmm14
0.090	0.090	       [ 668]   5a4e4e:  mulpd  %xmm12,%xmm0
0.680	0.680	       [ 668]   5a4e53:  subpd  %xmm15,%xmm13
0.030	0.030	       [ 668]   5a4e58:  addpd  %xmm14,%xmm0
0.030	0.030	       [ 668]   5a4e5d:  movapd %xmm13,%xmm12
0.080	0.080	       [ 668]   5a4e62:  unpcklpd %xmm0,%xmm12
0.450	0.450	       [ 668]   5a4e67:  unpckhpd %xmm0,%xmm13
0.160	0.160	       [ 668]   5a4e6c:  addpd  -0x430(%rbp),%xmm12
0.650	0.650	       [ 671]   5a4e75:  movsd  -0x438(%rbp),%xmm0
0.080	0.080	       [ 671]   5a4e7d:  addsd  (%rdi),%xmm0
6.044	6.044	       [ 671]   5a4e81:  addsd  (%rdi,%r8,8),%xmm0
6.455	6.455	       [ 668]   5a4e87:  addpd  %xmm13,%xmm12
1.381	1.381	       [ 671]   5a4e8c:  movsd  %xmm0,-0x438(%rbp)
0.230	0.230	       [ 671]   5a4e94:  movsd  -0x458(%rbp),%xmm0
0.070	0.070	       [ 668]   5a4e9c:  movaps %xmm12,-0x430(%rbp)
0.741	0.741	       [ 671]   5a4ea4:  addsd  (%r12),%xmm0
7.715	7.715	       [ 671]   5a4eaa:  addsd  (%r12,%r8,8),%xmm0
8.606	8.606	       [ 671]   5a4eb0:  mov    -0x5f0(%rbp),%rbx
0.170	0.170	       [ 671]   5a4eb7:  add    -0x5e8(%rbp),%r13
0.010	0.010	       [ 671]   5a4ebe:  movsd  %xmm0,-0x458(%rbp)
0.280	0.280	       [ 671]   5a4ec6:  add    %rbx,%rdi
0.200	0.200	       [ 671]   5a4ec9:  add    %rbx,%r12
0.040	0.040	       [ 671]   5a4ecc:  cmp    -0x670(%rbp),%rax
0.620	0.620	       [ 671]   5a4ed3:  jne    .-0x4fc [ 0x5a49d7 ]
0.   	0.   	       [ 671]   5a4ed9:  mov    -0x558(%rbp),%eax
0.   	0.   	       [ 671]   5a4edf:  mov    %r14,%rbx
0.   	0.   	       [ 671]   5a4ee2:  mov    %r9,%r14
0.010	0.010	       [ 671]   5a4ee5:  mov    %r11,%r9
0.   	0.   	       [ 671]   5a4ee8:  mov    %rdx,%r11
0.020	0.020	       [ 671]   5a4eeb:  mov    %rcx,%rdx
0.010	0.010	       [ 671]   5a4eee:  mov    %rsi,%rcx
0.   	0.   	       [ 671]   5a4ef1:  mov    -0x6a8(%rbp),%rsi
0.   	0.   	       [ 671]   5a4ef8:  test   $0x1,%al
0.   	0.   	       [ 671]   5a4efa:  je     .+0x3c8 [ 0x5a52c2 ]
0.   	0.   	       [ 671]   5a4f00:  or     $0x1,%eax
0.   	0.   	       [ 653]   5a4f03:  cltq
0.010	0.010	       [ 653]   5a4f05:  mov    -0x4a0(%rbp),%r12
0.   	0.   	       [ 653]   5a4f0c:  pxor   %xmm15,%xmm15
0.   	0.   	       [ 655]   5a4f11:  add    %rbx,%rdx
0.   	0.   	       [ 653]   5a4f14:  imul   %rax,%r10
0.   	0.   	       [ 653]   5a4f18:  add    -0x568(%rbp),%r12
0.   	0.   	       [ 653]   5a4f1f:  mov    -0x480(%rbp),%rdi
0.   	0.   	       [ 653]   5a4f26:  add    %r9,%r12
0.030	0.030	       [ 653]   5a4f29:  add    %r10,%r12
0.   	0.   	       [ 654]   5a4f2c:  mov    %r8,%r10
0.   	0.   	       [ 654]   5a4f2f:  mov    %rax,%r8
0.   	0.   	       [ 653]   5a4f32:  movsd  (%rdi,%r12,8),%xmm0
0.160	0.160	       [ 653]   5a4f38:  shl    $0x4,%r8
0.   	0.   	       [ 654]   5a4f3c:  imul   %rax,%r10
0.   	0.   	       [ 659]   5a4f40:  mov    -0x490(%rbp),%rdi
0.   	0.   	       [ 659]   5a4f47:  movsd  -0x8(%rdi,%rax,8),%xmm12
0.   	0.   	       [ 659]   5a4f4e:  unpcklpd %xmm0,%xmm15
0.040	0.040	       [ 659]   5a4f53:  movapd %xmm0,%xmm14
0.   	0.   	       [ 658]   5a4f58:  addsd  %xmm0,%xmm1
0.010	0.010	       [ 658]   5a4f5c:  movaps %xmm15,-0x480(%rbp)
0.   	0.   	       [ 658]   5a4f64:  movq   %xmm0,%xmm15
0.   	0.   	       [ 658]   5a4f69:  unpcklpd %xmm14,%xmm14
0.010	0.010	       [ 661]   5a4f6e:  mov    -0x5a0(%rbp),%rdi
0.   	0.   	       [ 659]   5a4f75:  mulsd  %xmm0,%xmm12
0.040	0.040	       [ 659]   5a4f7a:  movaps %xmm14,-0x540(%rbp)
0.   	0.   	       [ 661]   5a4f82:  movaps %xmm15,-0x4a0(%rbp)
0.   	0.   	       [ 659]   5a4f8a:  addsd  %xmm12,%xmm11
0.010	0.010	       [ 659]   5a4f8f:  movupd -0x10(%r8,%r15,1),%xmm12
0.   	0.   	       [ 661]   5a4f96:  lea    (%rdi,%rax,1),%r8
0.   	0.   	       [ 662]   5a4f9a:  mov    -0x658(%rbp),%rdi
0.   	0.   	       [ 662]   5a4fa1:  shl    $0x4,%r8
0.010	0.010	       [ 660]   5a4fa5:  movapd %xmm12,%xmm13
0.   	0.   	       [ 660]   5a4faa:  unpcklpd %xmm12,%xmm13
0.   	0.   	       [ 660]   5a4faf:  unpckhpd %xmm12,%xmm12
0.010	0.010	       [ 660]   5a4fb4:  mulpd  %xmm15,%xmm13
0.010	0.010	       [ 660]   5a4fb9:  mulpd  -0x480(%rbp),%xmm12
0.180	0.180	       [ 660]   5a4fc2:  movapd %xmm13,%xmm14
0.   	0.   	       [ 660]   5a4fc7:  subpd  %xmm12,%xmm14
0.010	0.010	       [ 660]   5a4fcc:  addpd  %xmm13,%xmm12
0.010	0.010	       [ 660]   5a4fd1:  movsd  %xmm14,%xmm12
0.080	0.080	       [ 660]   5a4fd6:  addpd  %xmm12,%xmm10
0.020	0.020	       [ 660]   5a4fdb:  movupd (%r15,%r8,1),%xmm12
0.   	0.   	       [ 662]   5a4fe1:  lea    (%rdi,%rax,1),%r8
0.   	0.   	       [ 662]   5a4fe5:  shl    $0x4,%r8
0.   	0.   	       [ 663]   5a4fe9:  mov    -0x4a8(%rbp),%rdi
0.   	0.   	       [ 661]   5a4ff0:  movapd %xmm12,%xmm13
0.   	0.   	       [ 661]   5a4ff5:  unpcklpd %xmm12,%xmm13
0.   	0.   	       [ 661]   5a4ffa:  unpckhpd %xmm12,%xmm12
0.   	0.   	       [ 661]   5a4fff:  mulpd  %xmm15,%xmm13
0.   	0.   	       [ 661]   5a5004:  movapd -0x480(%rbp),%xmm15
0.050	0.050	       [ 661]   5a500d:  mulpd  %xmm15,%xmm12
0.   	0.   	       [ 661]   5a5012:  movapd %xmm13,%xmm14
0.   	0.   	       [ 661]   5a5017:  subpd  %xmm12,%xmm14
0.   	0.   	       [ 661]   5a501c:  addpd  %xmm13,%xmm12
0.   	0.   	       [ 661]   5a5021:  movupd (%r15,%r8,1),%xmm13
0.   	0.   	       [ 662]   5a5027:  unpckhpd %xmm13,%xmm13
0.   	0.   	       [ 661]   5a502c:  movsd  %xmm14,%xmm12
0.   	0.   	       [ 661]   5a5031:  addpd  %xmm12,%xmm9
0.010	0.010	       [ 661]   5a5036:  movsd  (%r15,%r8,1),%xmm12
0.   	0.   	       [ 662]   5a503c:  mulpd  %xmm15,%xmm13
0.010	0.010	       [ 662]   5a5041:  pxor   %xmm15,%xmm15
0.   	0.   	       [ 663]   5a5046:  lea    (%rdi,%rax,1),%r8
0.   	0.   	       [ 664]   5a504a:  mov    -0x570(%rbp),%rdi
0.   	0.   	       [ 662]   5a5051:  movapd %xmm12,%xmm14
0.   	0.   	       [ 662]   5a5056:  shl    $0x4,%r8
0.   	0.   	       [ 662]   5a505a:  mulsd  %xmm15,%xmm12
0.   	0.   	       [ 662]   5a505f:  mulsd  %xmm0,%xmm14
0.   	0.   	       [ 662]   5a5064:  unpcklpd %xmm12,%xmm14
0.020	0.020	       [ 662]   5a5069:  movapd %xmm13,%xmm12
0.   	0.   	       [ 662]   5a506e:  movapd %xmm14,%xmm15
0.   	0.   	       [ 662]   5a5073:  addpd  %xmm14,%xmm12
0.   	0.   	       [ 662]   5a5078:  subpd  %xmm13,%xmm15
0.   	0.   	       [ 663]   5a507d:  movapd -0x4a0(%rbp),%xmm13
0.   	0.   	       [ 662]   5a5086:  movsd  %xmm15,%xmm12
0.010	0.010	       [ 662]   5a508b:  addpd  %xmm12,%xmm8
0.   	0.   	       [ 662]   5a5090:  movupd (%r15,%r8,1),%xmm12
0.   	0.   	       [ 664]   5a5096:  lea    (%rdi,%rax,1),%r8
0.   	0.   	       [ 664]   5a509a:  shl    $0x4,%r8
0.   	0.   	       [ 665]   5a509e:  mov    -0x590(%rbp),%rdi
0.   	0.   	       [ 663]   5a50a5:  movapd %xmm12,%xmm15
0.   	0.   	       [ 663]   5a50aa:  unpcklpd %xmm12,%xmm15
0.   	0.   	       [ 663]   5a50af:  unpckhpd %xmm12,%xmm12
0.   	0.   	       [ 663]   5a50b4:  mulpd  %xmm15,%xmm13
0.   	0.   	       [ 663]   5a50b9:  mulpd  -0x480(%rbp),%xmm12
0.010	0.010	       [ 663]   5a50c2:  movapd %xmm13,%xmm15
0.010	0.010	       [ 663]   5a50c7:  subpd  %xmm12,%xmm15
0.010	0.010	       [ 663]   5a50cc:  addpd  %xmm13,%xmm12
0.   	0.   	       [ 664]   5a50d1:  movapd -0x540(%rbp),%xmm13
0.   	0.   	       [ 663]   5a50da:  movsd  %xmm15,%xmm12
0.   	0.   	       [ 663]   5a50df:  addpd  %xmm12,%xmm7
0.   	0.   	       [ 663]   5a50e4:  movupd (%r15,%r8,1),%xmm12
0.   	0.   	       [ 665]   5a50ea:  lea    (%rdi,%rax,1),%r8
0.   	0.   	       [ 665]   5a50ee:  shl    $0x4,%r8
0.   	0.   	       [ 666]   5a50f2:  mov    -0x660(%rbp),%rdi
0.010	0.010	       [ 664]   5a50f9:  mulpd  %xmm12,%xmm13
0.   	0.   	       [ 664]   5a50fe:  shufpd $0x1,%xmm12,%xmm12
0.   	0.   	       [ 664]   5a5104:  add    %r15,%r8
0.   	0.   	       [ 664]   5a5107:  mulpd  %xmm3,%xmm12
0.   	0.   	       [ 664]   5a510c:  movapd %xmm13,%xmm15
0.   	0.   	       [ 664]   5a5111:  subpd  %xmm12,%xmm15
0.020	0.020	       [ 664]   5a5116:  addpd  %xmm13,%xmm12
0.   	0.   	       [ 664]   5a511b:  movsd  0x8(%r8),%xmm13
0.010	0.010	       [ 664]   5a5121:  movsd  %xmm15,%xmm12
0.010	0.010	       [ 664]   5a5126:  addpd  %xmm12,%xmm6
0.   	0.   	       [ 664]   5a512b:  movsd  (%r8),%xmm12
0.   	0.   	       [ 665]   5a5130:  movapd %xmm12,%xmm15
0.   	0.   	       [ 665]   5a5135:  mulsd  %xmm0,%xmm15
0.   	0.   	       [ 665]   5a513a:  movq   %xmm15,%r8
0.010	0.010	       [ 665]   5a513f:  pxor   %xmm15,%xmm15
0.   	0.   	       [ 665]   5a5144:  mulsd  %xmm13,%xmm15
0.030	0.030	       [ 665]   5a5149:  mulsd  %xmm0,%xmm13
0.020	0.020	       [ 665]   5a514e:  movapd %xmm15,%xmm14
0.   	0.   	       [ 665]   5a5153:  movq   %r8,%xmm15
0.   	0.   	       [ 665]   5a5158:  subsd  %xmm14,%xmm15
0.   	0.   	       [ 665]   5a515d:  movq   %xmm15,%r8
0.   	0.   	       [ 665]   5a5162:  pxor   %xmm15,%xmm15
0.   	0.   	       [ 665]   5a5167:  mulsd  %xmm15,%xmm12
0.   	0.   	       [ 665]   5a516c:  addsd  %xmm13,%xmm12
0.010	0.010	       [ 665]   5a5171:  movq   %r8,%xmm13
0.050	0.050	       [ 666]   5a5176:  lea    (%rdi,%rax,1),%r8
0.   	0.   	       [ 667]   5a517a:  mov    -0x598(%rbp),%rdi
0.   	0.   	       [ 667]   5a5181:  shl    $0x4,%r8
0.   	0.   	       [ 667]   5a5185:  add    %r15,%r8
0.   	0.   	       [ 665]   5a5188:  unpcklpd %xmm12,%xmm13
0.020	0.020	       [ 665]   5a518d:  movsd  (%r8),%xmm12
0.   	0.   	       [ 665]   5a5192:  addpd  %xmm13,%xmm5
0.050	0.050	       [ 665]   5a5197:  movsd  0x8(%r8),%xmm13
0.   	0.   	       [ 666]   5a519d:  movapd %xmm12,%xmm15
0.   	0.   	       [ 666]   5a51a2:  mulsd  %xmm0,%xmm15
0.   	0.   	       [ 666]   5a51a7:  movq   %xmm15,%r8
0.   	0.   	       [ 666]   5a51ac:  pxor   %xmm15,%xmm15
0.   	0.   	       [ 666]   5a51b1:  mulsd  %xmm13,%xmm15
0.   	0.   	       [ 666]   5a51b6:  mulsd  %xmm0,%xmm13
0.010	0.010	       [ 666]   5a51bb:  movapd %xmm15,%xmm14
0.010	0.010	       [ 666]   5a51c0:  movq   %r8,%xmm15
0.   	0.   	       [ 666]   5a51c5:  subsd  %xmm14,%xmm15
0.   	0.   	       [ 666]   5a51ca:  movq   %xmm15,%r8
0.   	0.   	       [ 666]   5a51cf:  pxor   %xmm15,%xmm15
0.   	0.   	       [ 666]   5a51d4:  mulsd  %xmm15,%xmm12
0.   	0.   	       [ 666]   5a51d9:  addsd  %xmm13,%xmm12
0.   	0.   	       [ 666]   5a51de:  movq   %r8,%xmm13
0.040	0.040	       [ 667]   5a51e3:  lea    (%rdi,%rax,1),%r8
0.   	0.   	       [ 667]   5a51e7:  shl    $0x4,%r8
0.   	0.   	       [ 666]   5a51eb:  unpcklpd %xmm12,%xmm13
0.010	0.010	       [ 666]   5a51f0:  addpd  %xmm13,%xmm4
0.020	0.020	       [ 666]   5a51f5:  movsd  (%r15,%r8,1),%xmm13
0.   	0.   	       [ 666]   5a51fb:  movupd (%r15,%r8,1),%xmm12
0.   	0.   	       [ 668]   5a5201:  movapd -0x540(%rbp),%xmm14
0.   	0.   	       [ 668]   5a520a:  add    -0x668(%rbp),%rax
0.040	0.040	       [ 667]   5a5211:  mulsd  %xmm13,%xmm0
0.   	0.   	       [ 667]   5a5216:  unpckhpd %xmm12,%xmm12
0.   	0.   	       [ 667]   5a521b:  shl    $0x4,%rax
0.   	0.   	       [ 667]   5a521f:  mulsd  %xmm15,%xmm13
0.   	0.   	       [ 667]   5a5224:  mulpd  -0x480(%rbp),%xmm12
0.   	0.   	       [ 667]   5a522d:  unpcklpd %xmm13,%xmm0
0.   	0.   	       [ 667]   5a5232:  movapd %xmm0,%xmm15
0.   	0.   	       [ 667]   5a5237:  subpd  %xmm12,%xmm15
0.   	0.   	       [ 667]   5a523c:  addpd  %xmm0,%xmm12
0.010	0.010	       [ 667]   5a5241:  movupd (%r15,%rax,1),%xmm0
0.   	0.   	       [ 654]   5a5247:  lea    (%rbx,%rcx,1),%rax
0.   	0.   	       [ 668]   5a524b:  mulpd  %xmm0,%xmm14
0.   	0.   	       [ 668]   5a5250:  shufpd $0x1,%xmm0,%xmm0
0.   	0.   	       [ 654]   5a5255:  add    %r9,%rax
0.   	0.   	       [ 668]   5a5258:  mulpd  %xmm3,%xmm0
0.   	0.   	       [ 654]   5a525c:  add    %r10,%rax
0.   	0.   	       [ 667]   5a525f:  movsd  %xmm15,%xmm12
0.   	0.   	       [ 667]   5a5264:  addpd  %xmm12,%xmm2
0.   	0.   	       [ 668]   5a5269:  movapd %xmm14,%xmm13
0.   	0.   	       [ 668]   5a526e:  subpd  %xmm0,%xmm13
0.   	0.   	       [ 668]   5a5273:  addpd  %xmm14,%xmm0
0.   	0.   	       [ 668]   5a5278:  movsd  %xmm13,%xmm0
0.   	0.   	       [ 668]   5a527d:  addpd  -0x430(%rbp),%xmm0
0.010	0.010	       [ 668]   5a5285:  movaps %xmm0,-0x430(%rbp)
0.   	0.   	       [ 671]   5a528c:  movsd  -0x438(%rbp),%xmm0
0.   	0.   	       [ 671]   5a5294:  addsd  (%r11,%rax,8),%xmm0
0.040	0.040	       [ 655]   5a529a:  lea    (%rdx,%rcx,1),%rax
0.   	0.   	       [ 655]   5a529e:  add    %r9,%rax
0.010	0.010	       [ 655]   5a52a1:  add    %r10,%rax
0.   	0.   	       [ 671]   5a52a4:  movsd  %xmm0,-0x438(%rbp)
0.   	0.   	       [ 671]   5a52ac:  movsd  -0x458(%rbp),%xmm0
0.   	0.   	       [ 671]   5a52b4:  addsd  (%r11,%rax,8),%xmm0
0.140	0.140	       [ 671]   5a52ba:  movsd  %xmm0,-0x458(%rbp)
0.010	0.010	       [ 675]   5a52c2:  mov    -0x4f0(%rbp),%rdx
0.010	0.010	       [ 676]   5a52c9:  mov    -0x500(%rbp),%rbx
0.   	0.   	       [ 677]   5a52d0:  lea    (%r14,%rsi,1),%rax
0.010	0.010	       [ 677]   5a52d4:  mov    -0x618(%rbp),%rdi
0.   	0.   	       [ 638]   5a52db:  addq   $0x1,-0x488(%rbp)
0.   	0.   	       [ 675]   5a52e3:  movsd  %xmm1,(%rdx)
0.090	0.090	       [ 638]   5a52e7:  add    -0x5f8(%rbp),%rdx
0.   	0.   	       [ 676]   5a52ee:  movsd  %xmm11,(%rbx)
0.050	0.050	       [ 677]   5a52f3:  movups %xmm10,(%rax,%rdi,1)
0.030	0.030	       [ 679]   5a52f8:  mov    -0x620(%rbp),%rax
0.010	0.010	       [ 687]   5a52ff:  mov    -0x4c0(%rbp),%rdi
0.010	0.010	       [ 678]   5a5306:  movups %xmm9,(%r14)
0.   	0.   	       [ 679]   5a530a:  add    %r14,%rax
0.   	0.   	       [ 679]   5a530d:  movups %xmm8,(%rax,%rsi,1)
0.040	0.040	       [ 680]   5a5312:  mov    -0x628(%rbp),%rax
0.   	0.   	       [ 680]   5a5319:  add    %r14,%rax
0.020	0.020	       [ 680]   5a531c:  movups %xmm7,(%rax,%rsi,1)
0.   	0.   	       [ 681]   5a5320:  mov    -0x630(%rbp),%rax
0.   	0.   	       [ 681]   5a5327:  add    %r14,%rax
0.   	0.   	       [ 681]   5a532a:  movups %xmm6,(%rax,%rsi,1)
0.060	0.060	       [ 682]   5a532e:  mov    -0x638(%rbp),%rax
0.   	0.   	       [ 685]   5a5335:  movapd -0x430(%rbp),%xmm6
0.   	0.   	       [ 682]   5a533d:  add    %r14,%rax
0.   	0.   	       [ 682]   5a5340:  movups %xmm5,(%rax,%rsi,1)
0.020	0.020	       [ 683]   5a5344:  mov    -0x640(%rbp),%rax
0.010	0.010	       [ 687]   5a534b:  movsd  -0x438(%rbp),%xmm5
0.   	0.   	       [ 683]   5a5353:  add    %r14,%rax
0.   	0.   	       [ 683]   5a5356:  movups %xmm4,(%rax,%rsi,1)
0.010	0.010	       [ 684]   5a535a:  mov    -0x648(%rbp),%rax
0.   	0.   	       [ 684]   5a5361:  add    %r14,%rax
0.020	0.020	       [ 684]   5a5364:  movups %xmm2,(%rax,%rsi,1)
0.   	0.   	       [ 685]   5a5368:  mov    -0x650(%rbp),%rax
0.020	0.020	       [ 685]   5a536f:  add    %r14,%rax
0.010	0.010	       [ 685]   5a5372:  movups %xmm6,(%rax,%rsi,1)
0.010	0.010	       [ 687]   5a5376:  mov    -0x510(%rbp),%rax
0.   	0.   	       [ 687]   5a537d:  movsd  -0x458(%rbp),%xmm6
0.020	0.020	       [ 687]   5a5385:  movsd  %xmm5,(%rax)
0.010	0.010	       [ 687]   5a5389:  movsd  %xmm6,(%rax,%rdi,8)
0.060	0.060	       [ 638]   5a538e:  mov    -0x488(%rbp),%rdi
0.010	0.010	       [ 638]   5a5395:  mov    %rdx,-0x4f0(%rbp)
0.   	0.   	       [ 638]   5a539c:  add    -0x600(%rbp),%rbx
0.010	0.010	       [ 638]   5a53a3:  add    -0x610(%rbp),%rax
0.   	0.   	       [ 638]   5a53aa:  mov    %rbx,-0x500(%rbp)
0.   	0.   	       [ 638]   5a53b1:  mov    %rax,-0x510(%rbp)
0.   	0.   	       [ 638]   5a53b8:  add    -0x608(%rbp),%r14
0.   	0.   	       [ 638]   5a53bf:  cmp    -0x530(%rbp),%rdi
0.030	0.030	       [ 638]   5a53c6:  jne    .-0xb50 [ 0x5a4876 ]
0.   	0.   	       [ 638]   5a53cc:  mov    -0x688(%rbp),%r11
0.   	0.   	       [ 638]   5a53d3:  mov    -0x690(%rbp),%rdi
0.   	0.   	       [ 638]   5a53da:  add    $0x1,%r9
0.   	0.   	       [ 638]   5a53de:  mov    -0x698(%rbp),%r12
0.   	0.   	       [ 638]   5a53e5:  mov    -0x6a0(%rbp),%r13
0.   	0.   	       [ 638]   5a53ec:  mov    -0x678(%rbp),%rax
0.   	0.   	       [ 638]   5a53f3:  mov    -0x680(%rbp),%r10
0.   	0.   	       [ 638]   5a53fa:  add    $0x8,%r11
0.   	0.   	       [ 638]   5a53fe:  add    $0x8,%rdi
0.010	0.010	       [ 638]   5a5402:  add    $0x10,%r12
0.   	0.   	       [ 638]   5a5406:  add    $0x8,%r13
0.   	0.   	       [ 638]   5a540a:  cmp    -0x530(%rbp),%r9
0.   	0.   	       [ 638]   5a5411:  jne    .-0xc08 [ 0x5a4809 ]
0.   	0.   	       [ 699]   5a5417:  mov    -0x440(%rbp),%rax
0.   	0.   	       [ 699]   5a541e:  mov    0xad8(%rax),%edx
0.   	0.   	       [ 699]   5a5424:  xor    %eax,%eax
0.   	0.   	       [ 699]   5a5426:  test   %edx,%edx
0.   	0.   	       [ 699]   5a5428:  mov    %edx,-0x458(%rbp)
0.   	0.   	       [ 699]   5a542e:  cmovns %edx,%eax
0.   	0.   	       [ 699]   5a5431:  movslq %eax,%rbx
0.   	0.   	       [ 699]   5a5434:  lea    (%rbx,%rbx,1),%r14
0.   	0.   	       [ 699]   5a5438:  lea    (%r14,%rbx,1),%rax
0.   	0.   	       [ 699]   5a543c:  mov    %rax,-0x568(%rbp)
0.   	0.   	       [ 699]   5a5443:  jle    .+0x2163 [ 0x5a75a6 ]
0.   	0.   	       [ 699]   5a5449:  mov    -0x568(%rbp),%r12
0.   	0.   	       [ 699]   5a5450:  shl    $0x6,%r12
0.   	0.   	       [ 699]   5a5454:  mov    %r12,%rdi
0.   	0.020	       [ 699]   5a5457:  call   malloc@plt [ 0x4068b0, .-0x19eba7]
0.   	0.   	       [ 699]   5a545c:  mov    %rax,-0x488(%rbp)
0.   	0.   	       [ 699]   5a5463:  test   %rax,%rax
0.   	0.   	       [ 699]   5a5466:  je     .+0x21e6 [ 0x5a764c ]
0.   	0.   	       [ 699]   5a546c:  movslq -0x458(%rbp),%rax
0.   	0.   	       [ 700]   5a5473:  mov    -0x488(%rbp),%rdi
0.   	0.   	       [ 703]   5a547a:  lea    (%rbx,%rbx,8),%r12
0.   	0.   	       [ 700]   5a547e:  xor    %esi,%esi
0.   	0.   	       [ 703]   5a5480:  shl    $0x4,%r12
0.   	0.   	       [ 700]   5a5484:  lea    (%rax,%rax,2),%rdx
0.   	0.   	       [ 699]   5a5488:  mov    %rax,-0x430(%rbp)
0.   	0.   	       [ 700]   5a548f:  shl    $0x6,%rdx
0.   	0.070	       [ 700]   5a5493:  call   memset@plt [ 0x405fd0, .-0x19f4c3]
0.   	0.   	       [ 703]   5a5498:  mov    %r12,%rdi
0.   	0.020	       [ 703]   5a549b:  call   malloc@plt [ 0x4068b0, .-0x19ebeb]
0.   	0.   	       [ 703]   5a54a0:  mov    %rax,-0x4c0(%rbp)
0.   	0.   	       [ 703]   5a54a7:  test   %rax,%rax
0.   	0.   	       [ 703]   5a54aa:  je     .+0x2179 [ 0x5a7623 ]
0.   	0.   	       [ 704]   5a54b0:  mov    %rbx,%r15
0.   	0.   	       [ 700]   5a54b3:  mov    -0x430(%rbp),%r12
0.   	0.   	       [ 704]   5a54ba:  mov    %rbx,%r13
0.   	0.   	       [ 704]   5a54bd:  shl    $0x4,%r15
0.   	0.   	       [ 704]   5a54c1:  mov    %r15,%rdi
0.   	0.   	       [ 704]   5a54c4:  mov    %rdi,-0x438(%rbp)
0.   	0.020	       [ 704]   5a54cb:  call   malloc@plt [ 0x4068b0, .-0x19ec1b]
0.   	0.   	       [ 704]   5a54d0:  mov    -0x438(%rbp),%rdi
0.   	0.   	       [ 704]   5a54d7:  test   %rax,%rax
0.   	0.   	       [ 704]   5a54da:  mov    %rax,-0x4a0(%rbp)
0.   	0.   	       [ 704]   5a54e1:  je     .+0x2156 [ 0x5a7637 ]
0.   	0.   	       [ 705]   5a54e7:  call   malloc@plt [ 0x4068b0, .-0x19ec37]
0.   	0.   	       [ 705]   5a54ec:  mov    %rax,-0x4a8(%rbp)
0.   	0.   	       [ 705]   5a54f3:  test   %rax,%rax
0.   	0.   	       [ 705]   5a54f6:  je     .+0x216a [ 0x5a7660 ]
0.   	0.   	       [ 706]   5a54fc:  mov    -0x458(%rbp),%r8d
0.   	0.   	       [ 706]   5a5503:  test   %r8d,%r8d
0.   	0.   	       [ 706]   5a5506:  jle    .+0x2093 [ 0x5a7599 ]
0.   	0.   	       [ 706]   5a550c:  shl    $0x3,%r13
0.   	0.   	       [ 706]   5a5510:  mov    %r13,%rdi
0.   	0.   	       [ 706]   5a5513:  call   malloc@plt [ 0x4068b0, .-0x19ec63]
0.   	0.   	       [ 706]   5a5518:  mov    %rax,-0x500(%rbp)
0.   	0.   	       [ 706]   5a551f:  test   %rax,%rax
0.   	0.   	       [ 706]   5a5522:  je     .+0x2150 [ 0x5a7672 ]
0.   	0.   	       [ 707]   5a5528:  movl   $0x1,-0x414(%rbp)
0.   	0.   	       [ 699]   5a5532:  lea    (%r14,%rbx,1),%rax
0.   	0.   	       [ 699]   5a5536:  mov    %rax,-0x4f0(%rbp)
0.   	0.   	       [ 699]   5a553d:  add    %rax,%rax
0.   	0.   	       [ 699]   5a5540:  mov    %rax,-0x438(%rbp)
0.   	0.   	       [ 707]   5a5547:  mov    -0x450(%rbp),%rax
0.   	0.   	       [ 707]   5a554e:  mov    0x6e8(%rax),%eax
0.   	0.   	       [ 707]   5a5554:  mov    %eax,-0x510(%rbp)
0.   	0.   	       [ 707]   5a555a:  test   %eax,%eax
0.   	0.   	       [ 707]   5a555c:  jle    .+0x1012 [ 0x5a656e ]
0.   	0.   	       [ 699]   5a5562:  mov    $0xfffffffffffffffc,%rax
0.   	0.   	       [ 699]   5a5569:  sub    -0x4f0(%rbp),%rax
0.   	0.   	       [ 699]   5a5570:  sub    -0x438(%rbp),%rax
0.   	0.   	       [ 699]   5a5577:  xor    %edx,%edx
0.   	0.   	       [ 699]   5a5579:  mov    %rax,-0x530(%rbp)
0.   	0.   	       [ 708]   5a5580:  lea    (%r12,%r12,8),%rax
0.   	0.   	       [ 708]   5a5584:  mov    -0x458(%rbp),%edi
0.   	0.   	       [1141]   5a558a:  shl    $0x4,%r12
0.   	0.   	       [ 708]   5a558e:  shl    $0x4,%rax
0.   	0.   	       [1141]   5a5592:  mov    %r12,-0x590(%rbp)
0.   	0.   	       [ 708]   5a5599:  mov    %rax,-0x5a8(%rbp)
0.   	0.   	       [1139]   5a55a0:  mov    %rbx,%rax
0.   	0.   	       [1139]   5a55a3:  shl    $0x4,%rax
0.   	0.   	       [1139]   5a55a7:  test   %edi,%edi
0.   	0.   	       [1139]   5a55a9:  cmovg  %rax,%rdx
0.   	0.   	       [1139]   5a55ad:  test   %rax,%rax
0.   	0.   	       [1139]   5a55b0:  mov    %rdx,%rbx
0.   	0.   	       [1139]   5a55b3:  mov    $0x1,%edx
0.   	0.   	       [1139]   5a55b8:  cmove  %rdx,%rax
0.   	0.   	       [1139]   5a55bc:  test   %edi,%edi
0.   	0.   	       [1139]   5a55be:  mov    %rbx,-0x570(%rbp)
0.   	0.   	       [1139]   5a55c5:  cmovg  %rax,%rdx
0.   	0.   	       [1139]   5a55c9:  mov    -0x528(%rbp),%rax
0.   	0.   	       [1139]   5a55d0:  add    -0x4d8(%rbp),%rax
0.   	0.   	       [1139]   5a55d7:  mov    %rdx,-0x540(%rbp)
0.   	0.   	       [1139]   5a55de:  mov    -0x4f8(%rbp),%rdx
0.   	0.   	       [1139]   5a55e5:  lea    (%rdx,%rax,4),%rax
0.   	0.   	       [1139]   5a55e9:  mov    %rax,-0x5a0(%rbp)
0.   	0.   	       [1139]   5a55f0:  mov    -0x430(%rbp),%rax
0.   	0.   	       [1139]   5a55f7:  lea    0x0(,%rax,8),%rdx
0.   	0.   	       [1139]   5a55ff:  mov    %rdx,-0x5b0(%rbp)
0.   	0.   	       [1139]   5a5606:  lea    0x8(%rax,%rdx,1),%rdx
0.   	0.   	       [1139]   5a560b:  shl    $0x4,%rax
0.   	0.   	       [1139]   5a560f:  mov    %rdx,-0x598(%rbp)
0.010	0.010	       [1139]   5a5616:  mov    -0x4a0(%rbp),%rdx
0.   	0.   	       [1139]   5a561d:  add    %rax,%rdx
0.   	0.   	       [1139]   5a5620:  mov    %rdx,-0x4d8(%rbp)
0.   	0.   	       [1139]   5a5627:  mov    -0x4a8(%rbp),%rdx
0.   	0.   	       [1139]   5a562e:  add    %rdx,%rax
0.   	0.   	       [1139]   5a5631:  mov    %rax,-0x480(%rbp)
0.   	0.   	       [ 708]   5a5638:  mov    -0x5a8(%rbp),%rdx
0.010	0.010	       [ 708]   5a563f:  mov    -0x4c0(%rbp),%rdi
0.   	0.   	       [ 708]   5a5646:  xor    %esi,%esi
0.   	0.110	       [ 708]   5a5648:  call   memset@plt [ 0x405fd0, .-0x19f678]
0.   	0.   	       [1136]   5a564d:  mov    0x48(%rbp),%rax
0.010	0.010	       [1139]   5a5651:  mov    -0x540(%rbp),%rdi
0.   	0.   	       [1136]   5a5658:  movl   $0x0,(%rax)
0.   	0.   	       [1139]   5a565e:  movabs $0x30200000000,%rax
0.   	0.   	       [1139]   5a5668:  movq   $0x8,-0x2f0(%rbp)
0.   	0.   	       [1139]   5a5673:  mov    %rax,-0x2e8(%rbp)
0.   	0.030	       [1139]   5a567a:  call   malloc@plt [ 0x4068b0, .-0x19edca]
0.   	0.   	       [1139]   5a567f:  mov    %rax,-0x300(%rbp)
0.   	0.   	       [1139]   5a5686:  mov    %rax,%r13
0.   	0.   	       [1139]   5a5689:  test   %rax,%rax
0.   	0.   	       [1139]   5a568c:  je     .+0x1ff8 [ 0x5a7684 ]
0.   	0.   	       [1139]   5a5692:  movdqa 0x2d0336(%rip),%xmm5        # 0x2d033e
0.   	0.   	       [1139]   5a569a:  mov    -0x430(%rbp),%rax
0.   	0.   	       [1139]   5a56a1:  movq   $0xfffffffffffffffd,-0x2f8(%rbp)
0.   	0.   	       [1139]   5a56ac:  movdqa 0x2d54ec(%rip),%xmm6        # 0x2d54f4
0.   	0.   	       [1140]   5a56b4:  mov    -0x540(%rbp),%rdi
0.   	0.   	       [1140]   5a56bb:  movq   $0x8,-0x290(%rbp)
0.   	0.   	       [1139]   5a56c6:  movaps %xmm5,-0x2e0(%rbp)
0.   	0.   	       [1139]   5a56cd:  movdqa 0x2e191b(%rip),%xmm5        # 0x2e1923
0.020	0.020	       [1139]   5a56d5:  mov    %rax,-0x2b0(%rbp)
0.   	0.   	       [1140]   5a56dc:  movabs $0x30200000000,%rax
0.   	0.   	       [1140]   5a56e6:  mov    %rax,-0x288(%rbp)
0.   	0.   	       [1139]   5a56ed:  movaps %xmm6,-0x2d0(%rbp)
0.   	0.   	       [1139]   5a56f4:  movaps %xmm5,-0x2c0(%rbp)
0.   	0.020	       [1140]   5a56fb:  call   malloc@plt [ 0x4068b0, .-0x19ee4b]
0.   	0.   	       [1140]   5a5700:  mov    %rax,-0x2a0(%rbp)
0.   	0.   	       [1140]   5a5707:  mov    %rax,%r12
0.   	0.   	       [1140]   5a570a:  test   %rax,%rax
0.   	0.   	       [1140]   5a570d:  je     .+0x1f8f [ 0x5a769c ]
0.   	0.   	       [1140]   5a5713:  movdqa 0x2d02b5(%rip),%xmm6        # 0x2d02bd
0.010	0.010	       [1141]   5a571b:  mov    -0x590(%rbp),%rbx
0.   	0.   	       [1141]   5a5722:  mov    %r13,%rdi
0.   	0.   	       [1141]   5a5725:  xor    %esi,%esi
0.   	0.   	       [1140]   5a5727:  movdqa 0x2d5471(%rip),%xmm5        # 0x2d5479
0.   	0.   	       [1140]   5a572f:  mov    -0x430(%rbp),%rax
0.   	0.   	       [1140]   5a5736:  movq   $0xfffffffffffffffd,-0x298(%rbp)
0.   	0.   	       [1140]   5a5741:  movaps %xmm6,-0x280(%rbp)
0.   	0.   	       [1140]   5a5748:  movdqa 0x2e18a0(%rip),%xmm6        # 0x2e18a8
0.   	0.   	       [1141]   5a5750:  mov    %rbx,%rdx
0.   	0.   	       [1140]   5a5753:  movaps %xmm5,-0x270(%rbp)
0.   	0.   	       [1140]   5a575a:  movaps %xmm6,-0x260(%rbp)
0.   	0.   	       [1140]   5a5761:  mov    %rax,-0x250(%rbp)
0.   	0.   	       [1141]   5a5768:  call   memset@plt [ 0x405fd0, .-0x19f798]
0.   	0.   	       [1142]   5a576d:  mov    %rbx,%rdx
0.   	0.   	       [1142]   5a5770:  xor    %esi,%esi
0.   	0.   	       [1142]   5a5772:  mov    %r12,%rdi
0.   	0.   	       [1142]   5a5775:  call   memset@plt [ 0x405fd0, .-0x19f7a5]
0.   	0.   	       [1152]   5a577a:  mov    -0x450(%rbp),%rax
0.   	0.   	       [1152]   5a5781:  mov    -0x508(%rbp),%rdi
0.   	0.   	       [1152]   5a5788:  mov    0x728(%rax),%r14
0.   	0.   	       [1152]   5a578f:  call   malloc@plt [ 0x4068b0, .-0x19eedf]
0.   	0.   	       [1152]   5a5794:  sub    -0x4d0(%rbp),%r14
0.   	0.   	       [1152]   5a579b:  mov    %rax,%rbx
0.   	0.   	       [1152]   5a579e:  lea    0x1(%r14),%r13
0.   	0.   	       [1152]   5a57a2:  cmpq   $0x0,-0x468(%rbp)
0.   	0.   	       [1152]   5a57aa:  js     .+0x1bb8 [ 0x5a7362 ]
0.   	0.   	       [1152]   5a57b0:  mov    -0x5a0(%rbp),%rcx
0.   	0.   	       [1152]   5a57b7:  xor    %eax,%eax
0.   	0.   	       [1152]   5a57b9:  mov    (%rcx,%rax,4),%edx
0.   	0.   	       [1152]   5a57bc:  mov    %edx,(%rbx,%rax,4)
0.   	0.   	       [1152]   5a57bf:  add    $0x1,%rax
0.   	0.   	       [1152]   5a57c3:  cmp    -0x4e0(%rbp),%rax
0.   	0.   	       [1152]   5a57ca:  jne    .-0x11 [ 0x5a57b9 ]
0.   	0.   	       [1152]   5a57cc:  mov    -0x468(%rbp),%rax
0.   	0.   	       [1152]   5a57d3:  movdqa 0x2d01f5(%rip),%xmm5        # 0x2d01fd
0.   	0.   	       [1152]   5a57db:  movabs $0x30200000000,%rdx
0.   	0.   	       [1152]   5a57e5:  mov    %r14,-0xb8(%rbp)
0.   	0.   	       [1152]   5a57ec:  mov    %r13,-0xb0(%rbp)
0.   	0.   	       [1152]   5a57f3:  mov    %rax,-0xa0(%rbp)
0.   	0.   	       [1152]   5a57fa:  or     %r14,%rax
0.   	0.   	       [1152]   5a57fd:  movq   $0x0,-0xa8(%rbp)
0.   	0.   	       [1152]   5a5808:  movq   $0x8,-0xe0(%rbp)
0.   	0.   	       [1152]   5a5813:  mov    %rdx,-0xd8(%rbp)
0.   	0.   	       [1152]   5a581a:  movq   $0x0,-0xc0(%rbp)
0.   	0.   	       [1152]   5a5825:  movaps %xmm5,-0xd0(%rbp)
0.   	0.   	       [1152]   5a582c:  js     .+0x2b5 [ 0x5a5ae1 ]
0.   	0.   	       [1152]   5a5832:  mov    -0x4e0(%rbp),%rdi
0.010	0.010	       [1152]   5a5839:  imul   %r13,%rdi
0.   	0.   	       [1152]   5a583d:  shl    $0x3,%rdi
0.   	0.   	       [1152]   5a5841:  call   malloc@plt [ 0x4068b0, .-0x19ef91]
0.   	0.   	       [1152]   5a5846:  mov    %rax,%r12
0.   	0.   	       [1152]   5a5849:  mov    -0x450(%rbp),%rax
0.   	0.   	       [1152]   5a5850:  mov    %r12,-0xf0(%rbp)
0.   	0.   	       [1152]   5a5857:  xor    %ecx,%ecx
0.   	0.   	       [1152]   5a5859:  xor    %edx,%edx
0.   	0.   	       [1152]   5a585b:  movq   $0x0,-0xe8(%rbp)
0.   	0.   	       [1152]   5a5866:  mov    0x730(%rax),%rsi
0.   	0.   	       [1152]   5a586d:  test   %r14,%r14
0.   	0.   	       [1152]   5a5870:  jns    .+0x29c [ 0x5a5b0c ]
0.   	0.   	       [1152]   5a5876:  add    $0x1,%rdx
0.   	0.   	       [1152]   5a587a:  add    %r13,%rcx
0.   	0.   	       [1152]   5a587d:  cmp    %rdx,-0x468(%rbp)
0.   	0.   	       [1152]   5a5884:  jge    .-0x17 [ 0x5a586d ]
0.   	0.   	       [1152]   5a5886:  lea    -0xf0(%rbp),%rax
0.   	0.   	       [1152]   5a588d:  mov    %rax,%rdi
0.   	0.   	       [1152]   5a5890:  mov    %rax,-0x460(%rbp)
0.   	0.040	       [1152]   5a5897:  call   _gfortran_internal_pack@plt [ 0x4062f0, .-0x19f5a7]
0.   	0.   	       [1152]   5a589c:  movdqa 0x2d012c(%rip),%xmm6        # 0x2d0134
0.   	0.   	       [1152]   5a58a4:  movq   $0x0,-0x198(%rbp)
0.   	0.   	       [1152]   5a58af:  mov    %rax,-0x560(%rbp)
0.   	0.   	       [1152]   5a58b6:  mov    -0x440(%rbp),%rax
0.   	0.   	       [1152]   5a58bd:  movq   $0x8,-0x1d0(%rbp)
0.   	0.   	       [1152]   5a58c8:  mov    0x4b0(%rax),%rdx
0.010	0.010	       [1152]   5a58cf:  mov    0x4e8(%rax),%rsi
0.   	0.   	       [1152]   5a58d6:  movq   $0x0,-0x1b0(%rbp)
0.   	0.   	       [1152]   5a58e1:  mov    0x4f8(%rax),%r13
0.   	0.   	       [1152]   5a58e8:  mov    0x500(%rax),%r15
0.   	0.   	       [1152]   5a58ef:  movaps %xmm6,-0x1c0(%rbp)
0.   	0.   	       [1152]   5a58f6:  mov    %rdx,-0x4f8(%rbp)
0.   	0.   	       [1152]   5a58fd:  mov    0x4b8(%rax),%rdx
0.   	0.   	       [1152]   5a5904:  sub    %r13,%r15
0.   	0.   	       [1152]   5a5907:  mov    %rdx,-0x528(%rbp)
0.   	0.   	       [1152]   5a590e:  mov    0x4e0(%rax),%rdx
0.   	0.   	       [1152]   5a5915:  movabs $0x30200000000,%rax
0.   	0.   	       [1152]   5a591f:  mov    %rax,-0x1c8(%rbp)
0.   	0.   	       [1152]   5a5926:  sub    %rdx,%rsi
0.   	0.   	       [1152]   5a5929:  mov    %rdx,-0x550(%rbp)
0.   	0.   	       [1152]   5a5930:  mov    %rsi,%rax
0.   	0.   	       [1152]   5a5933:  lea    0x1(%rsi),%r8
0.   	0.   	       [1152]   5a5937:  mov    %rsi,-0x1a8(%rbp)
0.   	0.   	       [1152]   5a593e:  or     %r15,%rax
0.   	0.   	       [1152]   5a5941:  mov    %r8,-0x1a0(%rbp)
0.   	0.   	       [1152]   5a5948:  mov    %r15,-0x190(%rbp)
0.   	0.   	       [1152]   5a594f:  js     .+0x1fa [ 0x5a5b49 ]
0.   	0.   	       [1152]   5a5955:  lea    0x1(%r15),%rdi
0.   	0.   	       [1152]   5a5959:  mov    %rsi,-0x5b8(%rbp)
0.   	0.   	       [1152]   5a5960:  imul   %r8,%rdi
0.   	0.   	       [1152]   5a5964:  mov    %r8,-0x558(%rbp)
0.   	0.   	       [1152]   5a596b:  shl    $0x3,%rdi
0.   	0.   	       [1152]   5a596f:  call   malloc@plt [ 0x4068b0, .-0x19f0bf]
0.   	0.   	       [1152]   5a5974:  mov    -0x558(%rbp),%r8
0.   	0.   	       [1152]   5a597b:  movq   $0x0,-0x1d8(%rbp)
0.   	0.   	       [1152]   5a5986:  mov    %rax,-0x1e0(%rbp)
0.   	0.   	       [1152]   5a598d:  mov    -0x5b8(%rbp),%rsi
0.   	0.   	       [1152]   5a5994:  mov    %rax,%r14
0.   	0.   	       [1152]   5a5997:  mov    -0x440(%rbp),%rax
0.   	0.   	       [1152]   5a599e:  mov    -0x470(%rbp),%rdx
0.   	0.   	       [1152]   5a59a5:  mov    %r14,%rdi
0.   	0.   	       [1152]   5a59a8:  xor    %ecx,%ecx
0.   	0.   	       [1152]   5a59aa:  lea    0x0(,%r8,8),%r10
0.   	0.   	       [1152]   5a59b2:  mov    0x4f0(%rax),%r9
0.   	0.   	       [1152]   5a59b9:  imul   0x508(%rax),%rdx
0.   	0.   	       [1152]   5a59c1:  mov    -0x528(%rbp),%rax
0.   	0.   	       [1152]   5a59c8:  imul   %r9,%r13
0.   	0.   	       [1152]   5a59cc:  add    %rdx,%rax
0.   	0.   	       [1152]   5a59cf:  add    %r13,%rax
0.   	0.   	       [1152]   5a59d2:  test   %rsi,%rsi
0.   	0.   	       [1152]   5a59d5:  jns    .+0x1a [ 0x5a59ef ]
0.   	0.   	       [1152]   5a59d7:  add    %r9,%rax
0.   	0.   	       [1152]   5a59da:  add    %r10,%rdi
0.   	0.   	       [1152]   5a59dd:  cmp    %r15,%rcx
0.   	0.   	       [1152]   5a59e0:  je     .+0x1ad [ 0x5a5b8d ]
0.   	0.   	       [1152]   5a59e6:  add    $0x1,%rcx
0.   	0.   	       [1152]   5a59ea:  test   %rsi,%rsi
0.   	0.   	       [1152]   5a59ed:  js     .-0x16 [ 0x5a59d7 ]
0.   	0.   	       [1152]   5a59ef:  mov    -0x4f8(%rbp),%rdx
0.   	0.   	       [1152]   5a59f6:  mov    -0x550(%rbp),%rsi
0.   	0.   	       [1152]   5a59fd:  lea    (%rdx,%rsi,8),%r13
0.   	0.   	       [1152]   5a5a01:  lea    0x0(%r13,%rax,8),%rsi
0.   	0.   	       [1152]   5a5a06:  xor    %edx,%edx
0.030	0.030	       [1152]   5a5a08:  movsd  (%rsi,%rdx,8),%xmm0
0.   	0.   	       [1152]   5a5a0d:  movsd  %xmm0,(%rdi,%rdx,8)
0.   	0.   	       [1152]   5a5a12:  add    $0x1,%rdx
0.   	0.   	       [1152]   5a5a16:  cmp    %r8,%rdx
0.   	0.   	       [1152]   5a5a19:  jne    .-0x11 [ 0x5a5a08 ]
0.   	0.   	       [1152]   5a5a1b:  add    %r9,%rax
0.   	0.   	       [1152]   5a5a1e:  add    %r10,%rdi
0.   	0.   	       [1152]   5a5a21:  cmp    %rcx,%r15
0.   	0.   	       [1152]   5a5a24:  je     .+0x169 [ 0x5a5b8d ]
0.   	0.   	       [1152]   5a5a2a:  add    $0x1,%rcx
0.   	0.   	       [1152]   5a5a2e:  jmp    .-0x2d [ 0x5a5a01 ]
0.   	0.   	       [ 654]   5a5a30:  pxor   %xmm10,%xmm10
0.   	0.   	       [ 654]   5a5a35:  pxor   %xmm1,%xmm1
0.   	0.   	       [ 641]   5a5a39:  movq   $0x0,-0x458(%rbp)
0.   	0.   	       [ 643]   5a5a44:  mov    $0x1,%eax
0.   	0.   	       [ 654]   5a5a49:  movapd %xmm10,%xmm8
0.   	0.   	       [ 654]   5a5a4e:  movapd %xmm10,%xmm9
0.   	0.   	       [ 654]   5a5a53:  movapd %xmm10,%xmm6
0.   	0.   	       [ 641]   5a5a58:  movq   $0x0,-0x438(%rbp)
0.   	0.   	       [ 654]   5a5a63:  movapd %xmm10,%xmm2
0.   	0.   	       [ 654]   5a5a68:  movapd %xmm10,%xmm5
0.   	0.   	       [ 654]   5a5a6d:  movapd %xmm10,%xmm4
0.   	0.   	       [ 654]   5a5a72:  movaps %xmm10,-0x430(%rbp)
0.   	0.   	       [ 654]   5a5a7a:  movapd %xmm10,%xmm7
0.   	0.   	       [ 654]   5a5a7f:  movapd %xmm1,%xmm11
0.   	0.   	       [ 654]   5a5a84:  lea    (%r12,%rdx,1),%rbx
0.   	0.   	       [ 654]   5a5a88:  jmp    .-0xb85 [ 0x5a4f03 ]
0.   	0.   	       [ 643]   5a5a8d:  pxor   %xmm10,%xmm10
0.   	0.   	       [ 643]   5a5a92:  pxor   %xmm1,%xmm1
0.   	0.   	       [ 641]   5a5a96:  movq   $0x0,-0x458(%rbp)
0.   	0.   	       [ 643]   5a5aa1:  movapd %xmm10,%xmm8
0.   	0.   	       [ 643]   5a5aa6:  movapd %xmm10,%xmm9
0.   	0.   	       [ 643]   5a5aab:  movapd %xmm10,%xmm5
0.   	0.   	       [ 641]   5a5ab0:  movq   $0x0,-0x438(%rbp)
0.   	0.   	       [ 643]   5a5abb:  movapd %xmm10,%xmm6
0.   	0.   	       [ 643]   5a5ac0:  movapd %xmm10,%xmm2
0.   	0.   	       [ 643]   5a5ac5:  movapd %xmm10,%xmm4
0.   	0.   	       [ 643]   5a5aca:  movaps %xmm10,-0x430(%rbp)
0.   	0.   	       [ 643]   5a5ad2:  movapd %xmm10,%xmm7
0.   	0.   	       [ 643]   5a5ad7:  movapd %xmm1,%xmm11
0.   	0.   	       [ 643]   5a5adc:  jmp    .-0x81a [ 0x5a52c2 ]
0.   	0.   	       [1152]   5a5ae1:  mov    $0x1,%edi
0.   	0.   	       [1152]   5a5ae6:  call   malloc@plt [ 0x4068b0, .-0x19f236]
0.   	0.   	       [1152]   5a5aeb:  mov    %rax,%r12
0.   	0.   	       [1152]   5a5aee:  jmp    .-0x2a5 [ 0x5a5849 ]
0.   	0.   	       [1152]   5a5af3:  nopl   0x0(%rax,%rax,1)
0.   	0.   	       [1152]   5a5af8:  add    $0x1,%rdx
0.   	0.   	       [1152]   5a5afc:  add    %r13,%rcx
0.   	0.   	       [1152]   5a5aff:  cmp    %rdx,-0x468(%rbp)
0.   	0.   	       [1152]   5a5b06:  jl     .-0x280 [ 0x5a5886 ]
0.   	0.   	       [1152]   5a5b0c:  movslq (%rbx,%rdx,4),%rax
0.   	0.   	       [1152]   5a5b10:  mov    -0x518(%rbp),%rdi
0.   	0.   	       [1152]   5a5b17:  imul   %rsi,%rax
0.   	0.   	       [1152]   5a5b1b:  add    -0x520(%rbp),%rax
0.   	0.   	       [1152]   5a5b22:  add    -0x4d0(%rbp),%rax
0.   	0.   	       [1152]   5a5b29:  lea    (%rdi,%rax,8),%r8
0.   	0.   	       [1152]   5a5b2d:  lea    (%r12,%rcx,8),%rdi
0.   	0.   	       [1152]   5a5b31:  xor    %eax,%eax
0.   	0.   	       [1152]   5a5b33:  movsd  (%r8,%rax,8),%xmm0
0.010	0.010	       [1152]   5a5b39:  movsd  %xmm0,(%rdi,%rax,8)
0.   	0.   	       [1152]   5a5b3e:  add    $0x1,%rax
0.   	0.   	       [1152]   5a5b42:  cmp    %r13,%rax
0.   	0.   	       [1152]   5a5b45:  jne    .-0x12 [ 0x5a5b33 ]
0.   	0.   	       [1152]   5a5b47:  jmp    .-0x4f [ 0x5a5af8 ]
0.   	0.   	       [1152]   5a5b49:  mov    $0x1,%edi
0.   	0.   	       [1152]   5a5b4e:  mov    %r8,-0x5b8(%rbp)
0.   	0.   	       [1152]   5a5b55:  mov    %rsi,-0x558(%rbp)
0.   	0.   	       [1152]   5a5b5c:  call   malloc@plt [ 0x4068b0, .-0x19f2ac]
0.   	0.   	       [1152]   5a5b61:  test   %r15,%r15
0.   	0.   	       [1152]   5a5b64:  movq   $0x0,-0x1d8(%rbp)
0.   	0.   	       [1152]   5a5b6f:  mov    -0x558(%rbp),%rsi
0.   	0.   	       [1152]   5a5b76:  mov    %rax,-0x1e0(%rbp)
0.   	0.   	       [1152]   5a5b7d:  mov    -0x5b8(%rbp),%r8
0.   	0.   	       [1152]   5a5b84:  mov    %rax,%r14
0.   	0.   	       [1152]   5a5b87:  jns    .-0x1f0 [ 0x5a5997 ]
0.   	0.   	       [1152]   5a5b8d:  lea    -0x1e0(%rbp),%rax
0.   	0.   	       [1152]   5a5b94:  mov    %rax,%rdi
0.   	0.   	       [1152]   5a5b97:  mov    %rax,-0x4f8(%rbp)
0.   	0.   	       [1152]   5a5b9e:  call   _gfortran_internal_pack@plt [ 0x4062f0, .-0x19f8ae]
0.   	0.   	       [1152]   5a5ba3:  movdqa 0x2cfe25(%rip),%xmm5        # 0x2cfe2d
0.   	0.   	       [1152]   5a5bab:  movq   $0x8,-0x330(%rbp)
0.   	0.   	       [1152]   5a5bb6:  mov    %rax,-0x528(%rbp)
0.   	0.   	       [1152]   5a5bbd:  mov    -0x440(%rbp),%rax
0.   	0.   	       [1152]   5a5bc4:  movq   $0x0,-0x310(%rbp)
0.   	0.   	       [1152]   5a5bcf:  mov    0xb28(%rax),%rdx
0.   	0.   	       [1152]   5a5bd6:  mov    0xae0(%rax),%rsi
0.   	0.   	       [1152]   5a5bdd:  movaps %xmm5,-0x320(%rbp)
0.   	0.   	       [1152]   5a5be4:  mov    0xae8(%rax),%r15
0.   	0.   	       [1152]   5a5beb:  mov    0xb30(%rax),%rax
0.   	0.   	       [1152]   5a5bf2:  mov    %rax,%rcx
0.   	0.   	       [1152]   5a5bf5:  mov    %rax,-0x550(%rbp)
0.   	0.   	       [1152]   5a5bfc:  movabs $0x30100000000,%rax
0.   	0.   	       [1152]   5a5c06:  sub    %rdx,%rcx
0.   	0.   	       [1152]   5a5c09:  mov    %rax,-0x328(%rbp)
0.   	0.   	       [1152]   5a5c10:  mov    %rcx,-0x308(%rbp)
0.   	0.   	       [1152]   5a5c17:  jns    .+0x767 [ 0x5a637e ]
0.   	0.   	       [1152]   5a5c1d:  mov    $0x1,%edi
0.   	0.   	       [1152]   5a5c22:  call   malloc@plt [ 0x4068b0, .-0x19f372]
0.   	0.   	       [1152]   5a5c27:  movq   $0x0,-0x338(%rbp)
0.   	0.   	       [1152]   5a5c32:  mov    %rax,-0x340(%rbp)
0.   	0.   	       [1152]   5a5c39:  mov    %rax,%r13
0.   	0.   	       [1152]   5a5c3c:  lea    -0x2a0(%rbp),%rax
0.   	0.   	       [1152]   5a5c43:  push   0x48(%rbp)
0.   	0.   	       [1152]   5a5c46:  mov    -0x560(%rbp),%r15
0.   	0.   	       [1152]   5a5c4d:  lea    -0x414(%rbp),%rsi
0.   	0.   	       [1152]   5a5c54:  push   %rax
0.   	0.   	       [1152]   5a5c55:  lea    -0x300(%rbp),%r9
0.   	0.   	       [1152]   5a5c5c:  lea    -0x340(%rbp),%rcx
0.   	0.   	       [1152]   5a5c63:  mov    -0x440(%rbp),%rax
0.   	0.   	       [1152]   5a5c6a:  mov    -0x528(%rbp),%rdx
0.   	0.   	       [1152]   5a5c71:  mov    %r15,%rdi
0.   	0.   	       [1152]   5a5c74:  lea    0xad8(%rax),%r8
0.   	0.901	       [1152]   5a5c7b:  call   __m_mesh_convert_face_position_MOD_mesh_convert_face_position_2d_multi [ 0x598a20, .-0xd25b]
0.   	0.   	       [1152]   5a5c80:  pop    %rsi
0.   	0.   	       [1152]   5a5c81:  pop    %rdi
0.   	0.   	       [1152]   5a5c82:  cmp    %r12,%r15
0.   	0.   	       [1152]   5a5c85:  je     .+0xa [ 0x5a5c8f ]
0.   	0.   	       [1152]   5a5c87:  mov    %r15,%rdi
0.   	0.   	       [1152]   5a5c8a:  call   free@plt [ 0x405db0, .-0x19feda]
0.   	0.   	       [1152]   5a5c8f:  mov    %rbx,%rdi
0.   	0.   	       [1152]   5a5c92:  call   free@plt [ 0x405db0, .-0x19fee2]
0.   	0.   	       [1152]   5a5c97:  mov    -0xf0(%rbp),%rdi
0.   	0.   	       [1152]   5a5c9e:  call   free@plt [ 0x405db0, .-0x19feee]
0.   	0.   	       [1152]   5a5ca3:  mov    -0x528(%rbp),%rax
0.   	0.   	       [1152]   5a5caa:  cmp    %r14,%rax
0.   	0.   	       [1152]   5a5cad:  je     .+0xa [ 0x5a5cb7 ]
0.   	0.   	       [1152]   5a5caf:  mov    %rax,%rdi
0.   	0.   	       [1152]   5a5cb2:  call   free@plt [ 0x405db0, .-0x19ff02]
0.   	0.   	       [1152]   5a5cb7:  mov    -0x1e0(%rbp),%rdi
0.   	0.   	       [1152]   5a5cbe:  call   free@plt [ 0x405db0, .-0x19ff0e]
0.   	0.   	       [1152]   5a5cc3:  mov    %r13,%rdi
0.   	0.   	       [1152]   5a5cc6:  call   free@plt [ 0x405db0, .-0x19ff16]
0.   	0.   	       [1152]   5a5ccb:  mov    -0x4c0(%rbp),%rax
0.   	0.   	       [1157]   5a5cd2:  mov    $0x8,%edx
0.   	0.   	       [1157]   5a5cd7:  pxor   %xmm0,%xmm0
0.   	0.   	       [1157]   5a5cdb:  mov    %rax,%r12
0.   	0.   	       [1157]   5a5cde:  lea    0x20(%rax),%rsi
0.   	0.   	       [1157]   5a5ce2:  cmpq   $0x0,-0x430(%rbp)
0.   	0.   	       [1157]   5a5cea:  jle    .+0x417 [ 0x5a6101 ]
0.   	0.   	       [1157]   5a5cf0:  lea    -0x9(%rdx),%rcx
0.   	0.   	       [1157]   5a5cf4:  mov    %rsi,%rdi
0.   	0.   	       [1157]   5a5cf7:  lea    -0x30(%rdi),%rax
0.   	0.   	       [1157]   5a5cfb:  movups %xmm0,0x10(%rax)
0.270	0.270	       [1157]   5a5cff:  add    $0x10,%rax
0.   	0.   	       [1157]   5a5d03:  cmp    %rdi,%rax
0.   	0.   	       [1157]   5a5d06:  jne    .-0xb [ 0x5a5cfb ]
0.   	0.   	       [1157]   5a5d08:  add    $0x3,%rcx
0.010	0.010	       [1157]   5a5d0c:  lea    0x30(%rax),%rdi
0.   	0.   	       [1157]   5a5d10:  cmp    %rdx,%rcx
0.   	0.   	       [1157]   5a5d13:  jne    .-0x1c [ 0x5a5cf7 ]
0.   	0.   	       [1157]   5a5d15:  lea    0x9(%rcx),%rdx
0.   	0.   	       [1157]   5a5d19:  add    $0x90,%rsi
0.   	0.   	       [1157]   5a5d20:  cmp    -0x598(%rbp),%rdx
0.010	0.010	       [1157]   5a5d27:  jne    .-0x37 [ 0x5a5cf0 ]
0.   	0.   	       [1157]   5a5d29:  mov    -0x4a0(%rbp),%rbx
0.   	0.   	       [1157]   5a5d30:  mov    -0x4d8(%rbp),%rdx
0.   	0.   	       [1158]   5a5d37:  pxor   %xmm0,%xmm0
0.   	0.   	       [1158]   5a5d3b:  sub    %rbx,%rdx
0.   	0.   	       [1157]   5a5d3e:  mov    %rbx,%rax
0.   	0.   	       [1157]   5a5d41:  and    $0x10,%edx
0.   	0.   	       [1157]   5a5d44:  je     .+0x19 [ 0x5a5d5d ]
0.   	0.   	       [1158]   5a5d46:  mov    -0x4a0(%rbp),%rax
0.   	0.   	       [1158]   5a5d4d:  movups %xmm0,(%rax)
0.   	0.   	       [1158]   5a5d50:  add    $0x10,%rax
0.   	0.   	       [1158]   5a5d54:  cmp    -0x4d8(%rbp),%rax
0.   	0.   	       [1158]   5a5d5b:  je     .+0x16 [ 0x5a5d71 ]
0.   	0.   	       [1158]   5a5d5d:  movups %xmm0,(%rax)
0.   	0.   	       [1158]   5a5d60:  add    $0x20,%rax
0.   	0.   	       [1158]   5a5d64:  movups %xmm0,-0x10(%rax)
0.   	0.   	       [1158]   5a5d68:  cmp    -0x4d8(%rbp),%rax
0.   	0.   	       [1158]   5a5d6f:  jne    .-0x12 [ 0x5a5d5d ]
0.   	0.   	       [1158]   5a5d71:  mov    -0x4a8(%rbp),%rbx
0.   	0.   	       [1158]   5a5d78:  mov    -0x480(%rbp),%rdx
0.   	0.   	       [1159]   5a5d7f:  pxor   %xmm0,%xmm0
0.   	0.   	       [1159]   5a5d83:  sub    %rbx,%rdx
0.   	0.   	       [1158]   5a5d86:  mov    %rbx,%rax
0.   	0.   	       [1158]   5a5d89:  and    $0x10,%edx
0.   	0.   	       [1158]   5a5d8c:  je     .+0x19 [ 0x5a5da5 ]
0.   	0.   	       [1159]   5a5d8e:  mov    -0x4a8(%rbp),%rax
0.   	0.   	       [1159]   5a5d95:  movups %xmm0,(%rax)
0.   	0.   	       [1159]   5a5d98:  add    $0x10,%rax
0.   	0.   	       [1159]   5a5d9c:  cmp    -0x480(%rbp),%rax
0.   	0.   	       [1159]   5a5da3:  je     .+0x16 [ 0x5a5db9 ]
0.   	0.   	       [1159]   5a5da5:  movups %xmm0,(%rax)
0.010	0.010	       [1159]   5a5da8:  add    $0x20,%rax
0.   	0.   	       [1159]   5a5dac:  movups %xmm0,-0x10(%rax)
0.020	0.020	       [1159]   5a5db0:  cmp    -0x480(%rbp),%rax
0.   	0.   	       [1159]   5a5db7:  jne    .-0x12 [ 0x5a5da5 ]
0.   	0.   	       [1160]   5a5db9:  mov    -0x500(%rbp),%rbx
0.   	0.   	       [1160]   5a5dc0:  mov    -0x5b0(%rbp),%rdx
0.   	0.   	       [1160]   5a5dc7:  xor    %esi,%esi
0.   	0.   	       [1160]   5a5dc9:  mov    $0x1,%r13d
0.   	0.   	       [1166]   5a5dcf:  movabs $0x30100000000,%r15
0.   	0.   	       [1160]   5a5dd9:  mov    %rbx,%rdi
0.   	0.   	       [1160]   5a5ddc:  call   memset@plt [ 0x405fd0, .-0x19fe0c]
0.   	0.   	       [1160]   5a5de1:  mov    -0x4a8(%rbp),%rax
0.   	0.   	       [1160]   5a5de8:  mov    %rbx,-0x560(%rbp)
0.   	0.   	       [1160]   5a5def:  movdqa 0x2d98a9(%rip),%xmm2        # 0x2d98b1
0.   	0.   	       [1160]   5a5df7:  movdqa 0x2d4db1(%rip),%xmm1        # 0x2d4db9
0.   	0.   	       [1160]   5a5dff:  mov    %rax,-0x558(%rbp)
0.   	0.   	       [1160]   5a5e06:  mov    -0x4a0(%rbp),%rax
0.   	0.   	       [1160]   5a5e0d:  movdqa 0x2d468b(%rip),%xmm0        # 0x2d4693
0.010	0.010	       [1160]   5a5e15:  mov    %rax,-0x550(%rbp)
0.010	0.010	       [1166]   5a5e1c:  mov    $0x1,%edx
0.   	0.   	       [1166]   5a5e21:  mov    %r13,%rax
0.010	0.010	       [1166]   5a5e24:  mov    %r13,%rdi
0.   	0.   	       [1166]   5a5e27:  sub    $0x8,%rsp
0.   	0.   	       [1166]   5a5e2b:  mov    %rdx,%rbx
0.   	0.   	       [1166]   5a5e2e:  sub    -0x2d0(%rbp),%rdx
0.   	0.   	       [1166]   5a5e35:  add    -0x2c8(%rbp),%rdx
0.   	0.   	       [1166]   5a5e3c:  movq   $0x1,-0x1b0(%rbp)
0.010	0.010	       [1166]   5a5e47:  sub    -0x258(%rbp),%rax
0.010	0.010	       [1166]   5a5e4e:  mov    %rdx,-0x528(%rbp)
0.010	0.010	       [1161]   5a5e55:  add    $0x1,%r13
0.   	0.   	       [1166]   5a5e59:  imul   -0x260(%rbp),%rax
0.   	0.   	       [1166]   5a5e61:  mov    %rdx,-0x308(%rbp)
0.   	0.   	       [1166]   5a5e68:  mov    -0x2c0(%rbp),%rdx
0.   	0.   	       [1166]   5a5e6f:  sub    -0x2b8(%rbp),%rdi
0.010	0.010	       [1166]   5a5e76:  movq   $0x1,-0x1b8(%rbp)
0.   	0.   	       [1166]   5a5e81:  mov    -0x2a0(%rbp),%rcx
0.   	0.   	       [1166]   5a5e88:  mov    -0x280(%rbp),%r11
0.   	0.   	       [1166]   5a5e8f:  movq   $0xffffffffffffffff,-0x1d8(%rbp)
0.   	0.   	       [1166]   5a5e9a:  imul   %rdi,%rdx
0.   	0.   	       [1166]   5a5e9e:  sub    -0x270(%rbp),%rbx
0.   	0.   	       [1166]   5a5ea5:  movabs $0x40200000000,%rdi
0.   	0.   	       [1166]   5a5eaf:  add    -0x268(%rbp),%rbx
0.   	0.   	       [1166]   5a5eb6:  lea    (%rcx,%rax,8),%r10
0.   	0.   	       [1166]   5a5eba:  mov    -0x300(%rbp),%rcx
0.   	0.   	       [1166]   5a5ec1:  mov    -0x2e0(%rbp),%rax
0.   	0.   	       [1166]   5a5ec8:  mov    %r11,-0x1c0(%rbp)
0.   	0.   	       [1166]   5a5ecf:  mov    %r11,-0x5c8(%rbp)
0.   	0.   	       [1166]   5a5ed6:  lea    (%rcx,%rdx,8),%r14
0.   	0.   	       [1166]   5a5eda:  mov    %r10,-0x1e0(%rbp)
0.   	0.   	       [1166]   5a5ee1:  lea    -0x340(%rbp),%rcx
0.010	0.010	       [1166]   5a5ee8:  mov    %r10,-0x5c0(%rbp)
0.   	0.   	       [1166]   5a5eef:  mov    %rax,-0x320(%rbp)
0.   	0.   	       [1166]   5a5ef6:  mov    %rax,-0x5b8(%rbp)
0.020	0.020	       [1166]   5a5efd:  mov    %rbx,-0x1a8(%rbp)
0.   	0.   	       [1166]   5a5f04:  mov    %r14,-0x340(%rbp)
0.010	0.010	       [1166]   5a5f0b:  movq   $0x8,-0x1d0(%rbp)
0.   	0.   	       [1166]   5a5f16:  mov    %r15,-0x1c8(%rbp)
0.   	0.   	       [1166]   5a5f1d:  movq   $0x1,-0x310(%rbp)
0.   	0.   	       [1166]   5a5f28:  movq   $0x1,-0x318(%rbp)
0.   	0.   	       [1166]   5a5f33:  movq   $0xffffffffffffffff,-0x338(%rbp)
0.   	0.   	       [1166]   5a5f3e:  movq   $0x8,-0x330(%rbp)
0.   	0.   	       [1166]   5a5f49:  mov    %r15,-0x328(%rbp)
0.   	0.   	       [1166]   5a5f50:  mov    %r12,-0xf0(%rbp)
0.010	0.010	       [1166]   5a5f57:  mov    -0x460(%rbp),%r9
0.   	0.   	       [1161]   5a5f5e:  add    $0x90,%r12
0.   	0.   	       [1166]   5a5f65:  movaps %xmm2,-0xd0(%rbp)
0.   	0.   	       [1166]   5a5f6c:  mov    -0x4b8(%rbp),%r8
0.   	0.   	       [1166]   5a5f73:  mov    -0x4f8(%rbp),%rdx
0.   	0.   	       [1166]   5a5f7a:  movaps %xmm1,-0xc0(%rbp)
0.020	0.020	       [1166]   5a5f81:  mov    -0x4b0(%rbp),%rsi
0.   	0.   	       [1166]   5a5f88:  movaps %xmm0,-0xb0(%rbp)
0.010	0.010	       [1166]   5a5f8f:  mov    %rdi,-0xd8(%rbp)
0.   	0.   	       [1166]   5a5f96:  mov    -0x4c8(%rbp),%rdi
0.010	0.010	       [1166]   5a5f9d:  movq   $0xfffffffffffffffc,-0xe8(%rbp)
0.   	0.   	       [1166]   5a5fa8:  movq   $0x10,-0xe0(%rbp)
0.010	0.010	       [1166]   5a5fb3:  movq   $0x3,-0xa0(%rbp)
0.   	15.211	       [1166]   5a5fbe:  push   0x48(%rbp)
0.   	0.   	       [1166]   5a5fc1:  call   __m_model_eval_MOD_model_eval_c_solo [ 0x549140, .-0x5ce81]
0.010	0.010	       [1170]   5a5fc6:  mov    -0x5b8(%rbp),%rax
0.   	0.   	       [1170]   5a5fcd:  mov    -0x5c8(%rbp),%r11
0.   	0.   	       [1170]   5a5fd4:  mov    %rbx,-0xb8(%rbp)
0.   	0.   	       [1170]   5a5fdb:  mov    -0x5c0(%rbp),%r10
0.   	0.   	       [1170]   5a5fe2:  mov    %r14,-0x1e0(%rbp)
0.   	0.   	       [1170]   5a5fe9:  mov    $0x8e5860,%r9d
0.   	0.   	       [1170]   5a5fef:  mov    %rax,-0x1c0(%rbp)
0.   	0.   	       [1170]   5a5ff6:  mov    -0x558(%rbp),%r14
0.   	0.   	       [1170]   5a5ffd:  mov    -0x528(%rbp),%rax
0.   	0.   	       [1170]   5a6004:  mov    -0x550(%rbp),%rbx
0.   	0.   	       [1170]   5a600b:  mov    %r11,-0xd0(%rbp)
0.   	0.   	       [1170]   5a6012:  mov    %r10,-0xf0(%rbp)
0.   	0.   	       [1170]   5a6019:  mov    %rax,-0x1a8(%rbp)
0.   	0.   	       [1170]   5a6020:  movq   $0x1,-0xc0(%rbp)
0.   	0.   	       [1170]   5a602b:  movq   $0x1,-0xc8(%rbp)
0.010	0.010	       [1170]   5a6036:  movq   $0xffffffffffffffff,-0xe8(%rbp)
0.010	0.010	       [1170]   5a6041:  movq   $0x8,-0xe0(%rbp)
0.   	0.   	       [1170]   5a604c:  mov    %r15,-0xd8(%rbp)
0.   	0.   	       [1170]   5a6053:  movq   $0x1,-0x1b0(%rbp)
0.020	0.020	       [1170]   5a605e:  movq   $0x1,-0x1b8(%rbp)
0.   	0.   	       [1170]   5a6069:  movq   $0xffffffffffffffff,-0x1d8(%rbp)
0.   	0.   	       [1170]   5a6074:  movq   $0x8,-0x1d0(%rbp)
0.   	0.   	       [1170]   5a607f:  mov    %r15,-0x1c8(%rbp)
0.   	0.   	       [1170]   5a6086:  push   0x48(%rbp)
0.010	0.010	       [1170]   5a6089:  push   -0x560(%rbp)
0.   	0.   	       [1170]   5a608f:  push   %r14
0.   	0.   	       [1161]   5a6091:  add    $0x10,%r14
0.   	0.   	       [1170]   5a6095:  push   %rbx
0.   	0.   	       [1170]   5a6096:  mov    -0x4b8(%rbp),%r8
0.   	0.   	       [1170]   5a609d:  mov    -0x4f8(%rbp),%rcx
0.   	0.   	       [1170]   5a60a4:  mov    -0x460(%rbp),%rdx
0.   	0.   	       [1170]   5a60ab:  mov    -0x4b0(%rbp),%rsi
0.   	0.   	       [1170]   5a60b2:  mov    -0x4c8(%rbp),%rdi
0.   	14.080	       [1170]   5a60b9:  call   __m_model_eval_MOD_model_eval_all_solo [ 0x54a090, .-0x5c029]
0.   	0.   	       [1161]   5a60be:  lea    0x10(%rbx),%rax
0.   	0.   	       [1161]   5a60c2:  add    $0x30,%rsp
0.   	0.   	       [1161]   5a60c6:  addq   $0x8,-0x560(%rbp)
0.   	0.   	       [1161]   5a60ce:  cmp    %r13d,-0x458(%rbp)
0.   	0.   	       [1161]   5a60d5:  mov    %rax,-0x550(%rbp)
0.   	0.   	       [1161]   5a60dc:  mov    %r14,-0x558(%rbp)
0.   	0.   	       [1161]   5a60e3:  movdqa 0x2d43b5(%rip),%xmm0        # 0x2d43bd
0.   	0.   	       [1161]   5a60eb:  movdqa 0x2d4abd(%rip),%xmm1        # 0x2d4ac5
0.   	0.   	       [1161]   5a60f3:  movdqa 0x2d95a5(%rip),%xmm2        # 0x2d95ad
0.   	0.   	       [1161]   5a60fb:  jge    .-0x2df [ 0x5a5e1c ]
0.   	0.   	       [1173]   5a6101:  mov    -0x2a0(%rbp),%rdi
0.   	0.   	       [1173]   5a6108:  test   %rdi,%rdi
0.   	0.   	       [1173]   5a610b:  je     .+0x15a9 [ 0x5a76b4 ]
0.   	0.030	       [1173]   5a6111:  call   free@plt [ 0x405db0, .-0x1a0361]
0.   	0.   	       [1174]   5a6116:  mov    -0x300(%rbp),%rdi
0.   	0.   	       [1174]   5a611d:  test   %rdi,%rdi
0.   	0.   	       [1174]   5a6120:  je     .+0x15aa [ 0x5a76ca ]
0.   	0.   	       [1174]   5a6126:  call   free@plt [ 0x405db0, .-0x1a0376]
0.   	0.   	       [ 713]   5a612b:  mov    0x10(%rbp),%rax
0.   	0.   	       [ 713]   5a612f:  mov    (%rax),%eax
0.   	0.   	       [ 746]   5a6131:  test   %eax,%eax
0.   	0.   	       [ 746]   5a6133:  je     .+0x3b9 [ 0x5a64ec ]
0.   	0.   	       [ 746]   5a6139:  cmp    $0x17,%eax
0.   	0.   	       [ 746]   5a613c:  jne    .+0x2cb [ 0x5a6407 ]
0.   	0.   	       [ 728]   5a6142:  mov    -0x440(%rbp),%rbx
0.   	0.   	       [ 728]   5a6149:  mov    -0x470(%rbp),%rcx
0.010	0.010	       [ 729]   5a6150:  lea    -0x3e0(%rbp),%rsi
0.   	0.   	       [ 729]   5a6157:  lea    -0x410(%rbp),%rdi
0.   	0.   	       [ 728]   5a615e:  movslq -0x414(%rbp),%rax
0.   	0.   	       [ 728]   5a6165:  imul   0x458(%rbx),%rcx
0.010	0.010	       [ 728]   5a616d:  mov    0x400(%rbx),%rdx
0.   	0.   	       [ 728]   5a6174:  imul   0x440(%rbx),%rax
0.   	0.   	       [ 728]   5a617c:  add    0x408(%rbx),%rax
0.   	0.   	       [ 728]   5a6183:  add    %rcx,%rax
0.   	0.   	       [ 728]   5a6186:  add    0x430(%rbx),%rax
0.010	0.010	       [ 728]   5a618d:  movsd  (%rdx,%rax,8),%xmm0
0.   	0.   	       [ 728]   5a6192:  movsd  %xmm0,-0x410(%rbp)
0.   	0.   	       [ 728]   5a619a:  movsd  0x8(%rdx,%rax,8),%xmm0
0.   	0.   	       [ 728]   5a61a0:  movsd  %xmm0,-0x408(%rbp)
0.   	0.010	       [ 729]   5a61a8:  call   __m_model_eval_MOD_compute_operator_a_2d [ 0x547240, .-0x5ef68]
0.   	0.   	       [ 730]   5a61ad:  mov    -0x458(%rbp),%ecx
0.   	0.   	       [ 707]   5a61b3:  mov    -0x414(%rbp),%edx
0.   	0.   	       [ 730]   5a61b9:  test   %ecx,%ecx
0.   	0.   	       [ 730]   5a61bb:  jle    .+0x39e [ 0x5a6559 ]
0.   	0.   	       [ 730]   5a61c1:  mov    -0x4a8(%rbp),%r15
0.   	0.   	       [ 730]   5a61c8:  mov    -0x4a0(%rbp),%r14
0.   	0.   	       [ 730]   5a61cf:  mov    $0x1,%r12d
0.   	0.   	       [ 730]   5a61d5:  lea    -0x180(%rbp),%r10
0.   	0.   	       [ 730]   5a61dc:  mov    -0x4c0(%rbp),%rbx
0.   	0.   	       [ 730]   5a61e3:  mov    -0x4f0(%rbp),%r9
0.   	0.   	       [ 730]   5a61ea:  lea    -0x240(%rbp),%r13
0.   	0.   	       [ 732]   5a61f1:  mov    %r10,%rsi
0.   	0.   	       [ 732]   5a61f4:  mov    %rbx,%rdi
0.   	0.   	       [ 732]   5a61f7:  mov    %r9,-0x550(%rbp)
0.   	0.   	       [ 732]   5a61fe:  mov    %r10,-0x528(%rbp)
0.   	0.991	       [ 732]   5a6205:  call   __m_model_eval_MOD_compute_operator_dcd_2d [ 0x546fb0, .-0x5f255]
0.   	0.   	       [ 733]   5a620a:  movsd  -0x3e0(%rbp),%xmm5
0.   	0.   	       [ 733]   5a6212:  mov    %r13,%rdi
0.   	0.   	       [ 733]   5a6215:  movsd  -0x3d0(%rbp),%xmm3
0.   	0.   	       [ 733]   5a621d:  movsd  -0x3c0(%rbp),%xmm1
0.   	0.   	       [ 733]   5a6225:  movsd  -0x3d8(%rbp),%xmm4
0.   	0.   	       [ 733]   5a622d:  movq   $0x0,-0x1d8(%rbp)
0.010	0.010	       [ 733]   5a6238:  lea    -0x240(%rbp),%r13
0.   	0.   	       [ 733]   5a623f:  movsd  -0x3c8(%rbp),%xmm2
0.   	0.   	       [ 733]   5a6247:  xor    %eax,%eax
0.   	0.   	       [ 733]   5a6249:  movsd  -0x3b8(%rbp),%xmm0
0.020	0.020	       [ 733]   5a6251:  movq   $0x0,-0x1c8(%rbp)
0.   	0.   	       [ 733]   5a625c:  movq   $0x0,-0x1b8(%rbp)
0.010	0.010	       [ 733]   5a6267:  mov    $0xc,%ecx
0.   	0.   	       [ 733]   5a626c:  mov    -0x4f8(%rbp),%rsi
0.   	0.   	       [ 733]   5a6273:  mov    %r13,%rdx
0.   	0.   	       [ 733]   5a6276:  mov    -0x550(%rbp),%r9
0.   	0.   	       [ 733]   5a627d:  mov    -0x528(%rbp),%r10
0.   	0.   	       [ 733]   5a6284:  movq   $0x0,-0x1a8(%rbp)
0.010	0.010	       [ 733]   5a628f:  mov    $0x3,%r8d
0.   	0.   	       [ 733]   5a6295:  rep stos %rax,%es:(%rdi)
0.040	0.040	       [ 733]   5a6298:  movsd  %xmm5,-0x1e0(%rbp)
0.   	0.   	       [ 733]   5a62a0:  mov    %r13,%rcx
0.010	0.010	       [ 733]   5a62a3:  lea    -0x90(%rbp),%r11
0.   	0.   	       [ 733]   5a62aa:  movq   $0x0,-0x198(%rbp)
0.   	0.   	       [ 733]   5a62b5:  movq   $0x0,-0x188(%rbp)
0.   	0.   	       [ 733]   5a62c0:  movsd  %xmm3,-0x1d0(%rbp)
0.   	0.   	       [ 733]   5a62c8:  movsd  %xmm1,-0x1c0(%rbp)
0.   	0.   	       [ 733]   5a62d0:  movsd  %xmm4,-0x1b0(%rbp)
0.   	0.   	       [ 733]   5a62d8:  movsd  %xmm2,-0x1a0(%rbp)
0.   	0.   	       [ 733]   5a62e0:  movsd  %xmm0,-0x190(%rbp)
0.   	0.   	       [ 733]   5a62e8:  mov    %rsi,-0x528(%rbp)
0.   	0.   	       [ 733]   5a62ef:  mov    %r10,%rdi
0.   	0.   	       [ 733]   5a62f2:  mov    %rsi,%rax
0.   	0.   	       [ 733]   5a62f5:  movapd (%rax),%xmm8
0.390	0.390	       [ 733]   5a62fa:  xor    %esi,%esi
0.010	0.010	       [ 733]   5a62fc:  movapd %xmm8,%xmm9
0.010	0.010	       [ 733]   5a6301:  shufpd $0x1,%xmm8,%xmm9
0.080	0.080	       [ 733]   5a6307:  movapd (%rdi,%rsi,1),%xmm7
0.010	0.010	       [ 733]   5a630c:  movapd (%rdi,%rsi,1),%xmm6
0.050	0.050	       [ 733]   5a6311:  unpcklpd %xmm7,%xmm7
0.   	0.   	       [ 733]   5a6315:  unpckhpd %xmm6,%xmm6
0.020	0.020	       [ 733]   5a6319:  mulpd  %xmm8,%xmm7
0.020	0.020	       [ 733]   5a631e:  mulpd  %xmm9,%xmm6
0.030	0.030	       [ 733]   5a6323:  movapd %xmm7,%xmm10
0.120	0.120	       [ 733]   5a6328:  subpd  %xmm6,%xmm10
0.020	0.020	       [ 733]   5a632d:  addpd  %xmm7,%xmm6
0.010	0.010	       [ 733]   5a6331:  movsd  %xmm10,%xmm6
0.110	0.110	       [ 733]   5a6336:  addpd  (%rdx,%rsi,1),%xmm6
0.210	0.210	       [ 733]   5a633b:  movaps %xmm6,(%rdx,%rsi,1)
0.050	0.050	       [ 733]   5a633f:  add    $0x10,%rsi
0.010	0.010	       [ 733]   5a6343:  cmp    $0x30,%rsi
0.   	0.   	       [ 733]   5a6347:  jne    .-0x40 [ 0x5a6307 ]
0.   	0.   	       [ 733]   5a6349:  add    $0x10,%rax
0.010	0.010	       [ 733]   5a634d:  add    $0x30,%rdi
0.   	0.   	       [ 733]   5a6351:  cmp    -0x460(%rbp),%rdi
0.   	0.   	       [ 733]   5a6358:  jne    .-0x63 [ 0x5a62f5 ]
0.   	0.   	       [ 733]   5a635a:  mov    -0x528(%rbp),%rsi
0.010	0.010	       [ 733]   5a6361:  add    $0x30,%rdx
0.   	0.   	       [ 733]   5a6365:  add    $0x30,%rsi
0.   	0.   	       [ 733]   5a6369:  cmp    $0x6,%r8
0.   	0.   	       [ 733]   5a636d:  je     .+0xae3 [ 0x5a6e50 ]
0.   	0.   	       [ 733]   5a6373:  mov    $0x6,%r8d
0.   	0.   	       [ 733]   5a6379:  jmp    .-0x91 [ 0x5a62e8 ]
0.   	0.   	       [1152]   5a637e:  lea    0x8(,%rcx,8),%rdi
0.020	0.020	       [1152]   5a6386:  mov    %rdx,-0x5b8(%rbp)
0.   	0.   	       [1152]   5a638d:  mov    %rsi,-0x558(%rbp)
0.   	0.   	       [1152]   5a6394:  mov    %rcx,-0x550(%rbp)
0.   	0.010	       [1152]   5a639b:  call   malloc@plt [ 0x4068b0, .-0x19faeb]
0.   	0.   	       [1152]   5a63a0:  mov    -0x558(%rbp),%rsi
0.   	0.   	       [1152]   5a63a7:  movq   $0x0,-0x338(%rbp)
0.   	0.   	       [1152]   5a63b2:  mov    %rax,-0x340(%rbp)
0.   	0.   	       [1152]   5a63b9:  mov    %rax,%r13
0.   	0.   	       [1152]   5a63bc:  mov    -0x440(%rbp),%rax
0.   	0.   	       [1152]   5a63c3:  mov    -0x550(%rbp),%rcx
0.   	0.   	       [1152]   5a63ca:  mov    0xb20(%rax),%rax
0.   	0.   	       [1152]   5a63d1:  lea    0x0(,%rax,8),%rdi
0.   	0.   	       [1152]   5a63d9:  imul   -0x5b8(%rbp),%rax
0.   	0.   	       [1152]   5a63e1:  add    %r15,%rax
0.   	0.   	       [1152]   5a63e4:  lea    (%rsi,%rax,8),%rdx
0.   	0.   	       [1152]   5a63e8:  xor    %eax,%eax
0.   	0.   	       [1152]   5a63ea:  movsd  0x8(%rdx),%xmm0
0.   	0.   	       [1152]   5a63ef:  add    %rdi,%rdx
0.   	0.   	       [1152]   5a63f2:  movsd  %xmm0,0x0(%r13,%rax,8)
0.   	0.   	       [1152]   5a63f9:  add    $0x1,%rax
0.   	0.   	       [1152]   5a63fd:  cmp    %rax,%rcx
0.   	0.   	       [1152]   5a6400:  jge    .-0x16 [ 0x5a63ea ]
0.   	0.   	       [1152]   5a6402:  jmp    .-0x7c6 [ 0x5a5c3c ]
0.   	0.   	       [ 743]   5a6407:  mov    0x48(%rbp),%rax
0.   	0.   	       [ 743]   5a640b:  movdqa 0x32f16d(%rip),%xmm0        # 0x32f175
0.   	0.   	       [ 743]   5a6413:  mov    0x48(%rbp),%rbx
0.   	0.   	       [ 743]   5a6417:  movups %xmm0,0x4(%rax)
0.   	0.   	       [ 743]   5a641b:  movdqa 0x34054d(%rip),%xmm0        # 0x340555
0.   	0.   	       [ 743]   5a6423:  movups %xmm0,0x14(%rax)
0.   	0.   	       [ 743]   5a6427:  movdqa 0x340551(%rip),%xmm0        # 0x340559
0.   	0.   	       [ 743]   5a642f:  movups %xmm0,0x24(%rax)
0.   	0.   	       [ 743]   5a6433:  movdqa 0x340555(%rip),%xmm0        # 0x34055d
0.   	0.   	       [ 743]   5a643b:  movups %xmm0,0x34(%rax)
0.   	0.   	       [ 743]   5a643f:  movabs $0x2020202020202020,%rax
0.   	0.   	       [ 743]   5a6449:  mov    %rax,0x44(%rbx)
0.   	0.   	       [ 743]   5a644d:  mov    0x48(%rbp),%rbx
0.   	0.   	       [ 743]   5a6451:  mov    %rax,0x1fc(%rbx)
0.   	0.   	       [ 743]   5a6458:  mov    0x48(%rbp),%rbx
0.   	0.   	       [ 743]   5a645c:  mov    0x48(%rbp),%edx
0.   	0.   	       [ 743]   5a645f:  lea    0x4c(%rbx),%rdi
0.   	0.   	       [ 743]   5a6463:  and    $0xfffffffffffffff8,%rdi
0.   	0.   	       [ 743]   5a6467:  sub    %edi,%edx
0.   	0.   	       [ 743]   5a6469:  lea    0x204(%rdx),%ecx
0.   	0.   	       [ 743]   5a646f:  shr    $0x3,%ecx
0.   	0.   	       [ 743]   5a6472:  rep stos %rax,%es:(%rdi)
0.   	0.   	       [ 744]   5a6475:  mov    0x48(%rbp),%rax
0.   	0.   	       [ 801]   5a6479:  mov    -0x4a8(%rbp),%rdi
0.   	0.   	       [ 744]   5a6480:  movl   $0xffffffff,(%rax)
0.   	0.   	       [ 745]   5a6486:  movl   $0x1,0x204(%rax)
0.   	0.   	       [ 801]   5a6490:  call   free@plt [ 0x405db0, .-0x1a06e0]
0.   	0.   	       [ 801]   5a6495:  mov    -0x4a0(%rbp),%rdi
0.   	0.   	       [ 801]   5a649c:  call   free@plt [ 0x405db0, .-0x1a06ec]
0.   	0.   	       [ 801]   5a64a1:  mov    -0x500(%rbp),%rdi
0.   	0.   	       [ 801]   5a64a8:  call   free@plt [ 0x405db0, .-0x1a06f8]
0.   	0.   	       [ 801]   5a64ad:  mov    -0x448(%rbp),%rdi
0.   	0.   	       [ 801]   5a64b4:  call   free@plt [ 0x405db0, .-0x1a0704]
0.   	0.   	       [ 801]   5a64b9:  mov    -0x490(%rbp),%rdi
0.   	0.   	       [ 801]   5a64c0:  call   free@plt [ 0x405db0, .-0x1a0710]
0.   	0.   	       [ 801]   5a64c5:  mov    -0x488(%rbp),%rdi
0.   	0.   	       [ 801]   5a64cc:  call   free@plt [ 0x405db0, .-0x1a071c]
0.   	0.   	       [ 801]   5a64d1:  mov    -0x4c0(%rbp),%rdi
0.   	0.   	       [ 801]   5a64d8:  call   free@plt [ 0x405db0, .-0x1a0728]
0.   	0.   	       [ 801]   5a64dd:  lea    -0x28(%rbp),%rsp
0.   	0.   	       [ 801]   5a64e1:  pop    %rbx
0.   	0.   	       [ 801]   5a64e2:  pop    %r12
0.   	0.   	       [ 801]   5a64e4:  pop    %r13
0.   	0.   	       [ 801]   5a64e6:  pop    %r14
0.   	0.   	       [ 801]   5a64e8:  pop    %r15
0.   	0.   	       [ 801]   5a64ea:  pop    %rbp
0.   	0.   	       [ 801]   5a64eb:  ret
0.   	0.   	       [ 718]   5a64ec:  mov    -0x458(%rbp),%eax
0.   	0.   	       [ 720]   5a64f2:  mov    -0x414(%rbp),%edx
0.   	0.   	       [ 718]   5a64f8:  test   %eax,%eax
0.   	0.   	       [ 718]   5a64fa:  jle    .+0x5f [ 0x5a6559 ]
0.   	0.   	       [ 718]   5a64fc:  sub    $0x1,%eax
0.   	0.   	       [ 718]   5a64ff:  movslq %edx,%rsi
0.   	0.   	       [ 718]   5a6502:  mov    -0x488(%rbp),%rbx
0.   	0.   	       [ 718]   5a6509:  movq   0x2f179f(%rip),%xmm0        # 0x2f17a7
0.   	0.   	       [ 718]   5a6511:  lea    (%rax,%rax,2),%rax
0.   	0.   	       [ 718]   5a6515:  mov    %rsi,%rcx
0.   	0.   	       [ 718]   5a6518:  add    %rsi,%rax
0.   	0.   	       [ 718]   5a651b:  shl    $0x4,%rcx
0.   	0.   	       [ 718]   5a651f:  shl    $0x4,%rax
0.   	0.   	       [ 718]   5a6523:  add    %rbx,%rcx
0.   	0.   	       [ 718]   5a6526:  lea    0x30(%rbx,%rax,1),%rsi
0.   	0.   	       [ 721]   5a652b:  mov    -0x530(%rbp),%rax
0.   	0.   	       [ 721]   5a6532:  mov    -0x568(%rbp),%rbx
0.   	0.   	       [ 721]   5a6539:  lea    (%rax,%rbx,4),%rax
0.   	0.   	       [ 721]   5a653d:  add    -0x438(%rbp),%rax
0.   	0.   	       [ 721]   5a6544:  shl    $0x4,%rax
0.   	0.   	       [ 720]   5a6548:  movups %xmm0,-0x10(%rcx)
0.   	0.   	       [ 718]   5a654c:  add    $0x30,%rcx
0.   	0.   	       [ 721]   5a6550:  movups %xmm0,(%rcx,%rax,1)
0.   	0.   	       [ 718]   5a6554:  cmp    %rsi,%rcx
0.   	0.   	       [ 718]   5a6557:  jne    .-0xf [ 0x5a6548 ]
0.   	0.   	       [ 707]   5a6559:  add    $0x1,%edx
0.   	0.   	       [ 707]   5a655c:  mov    %edx,-0x414(%rbp)
0.   	0.   	       [ 707]   5a6562:  cmp    -0x510(%rbp),%edx
0.   	0.   	       [ 707]   5a6568:  jle    .-0xf30 [ 0x5a5638 ]
0.   	0.   	       [ 754]   5a656e:  mov    -0x440(%rbp),%rax
0.   	0.   	       [ 754]   5a6575:  mov    0x6a8(%rax),%esi
0.   	0.   	       [ 754]   5a657b:  test   %esi,%esi
0.   	0.   	       [ 754]   5a657d:  jle    .+0x878 [ 0x5a6df5 ]
0.   	0.   	       [ 754]   5a6583:  mov    0x38(%rbp),%rax
0.   	0.   	       [ 761]   5a6587:  pxor   %xmm3,%xmm3
0.   	0.   	       [ 768]   5a658b:  movq   $0x1,-0x460(%rbp)
0.   	0.   	       [ 768]   5a6596:  mov    0x40(%rax),%rdx
0.010	0.010	       [ 768]   5a659a:  mov    %rax,%rbx
0.   	0.   	       [ 768]   5a659d:  mov    0x8(%rax),%rax
0.   	0.   	       [ 768]   5a65a1:  mov    (%rbx),%rcx
0.   	0.   	       [ 768]   5a65a4:  mov    0x40(%rbp),%rbx
0.   	0.   	       [ 768]   5a65a8:  add    %rdx,%rax
0.   	0.   	       [ 768]   5a65ab:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 768]   5a65af:  mov    (%rbx),%rdi
0.   	0.   	       [ 768]   5a65b2:  lea    0x70(%rcx,%rax,1),%r13
0.   	0.   	       [ 768]   5a65b7:  mov    0x40(%rbp),%rax
0.   	0.   	       [ 768]   5a65bb:  mov    0x8(%rbx),%rcx
0.   	0.   	       [ 768]   5a65bf:  lea    0x1(%rsi),%ebx
0.   	0.   	       [ 768]   5a65c2:  mov    %rbx,-0x520(%rbp)
0.   	0.   	       [ 768]   5a65c9:  mov    -0x580(%rbp),%rbx
0.   	0.   	       [ 768]   5a65d0:  mov    0x40(%rax),%rax
0.   	0.   	       [ 768]   5a65d4:  add    %rax,%rcx
0.   	0.   	       [ 768]   5a65d7:  lea    (%rax,%rax,4),%rax
0.   	0.   	       [ 768]   5a65db:  shl    $0x5,%rax
0.   	0.   	       [ 768]   5a65df:  lea    (%rcx,%rcx,4),%rcx
0.   	0.   	       [ 768]   5a65e3:  mov    %rax,-0x598(%rbp)
0.   	0.   	       [ 768]   5a65ea:  mov    -0x4f0(%rbp),%rax
0.   	0.   	       [ 768]   5a65f1:  shl    $0x5,%rcx
0.   	0.   	       [ 768]   5a65f5:  lea    0xa0(%rdi,%rcx,1),%r14
0.   	0.   	       [ 768]   5a65fd:  mov    -0x588(%rbp),%rdi
0.   	0.   	       [ 768]   5a6604:  shl    $0x4,%rax
0.   	0.   	       [ 768]   5a6608:  mov    %rax,-0x570(%rbp)
0.   	0.   	       [ 768]   5a660f:  mov    -0x438(%rbp),%rax
0.   	0.   	       [ 768]   5a6616:  lea    (%rbx,%rdi,4),%rbx
0.   	0.   	       [ 768]   5a661a:  mov    %rbx,-0x518(%rbp)
0.   	0.   	       [ 768]   5a6621:  imul   $0x70,%rdx,%rbx
0.   	0.   	       [ 768]   5a6625:  shl    $0x4,%rax
0.   	0.   	       [ 768]   5a6629:  mov    %rax,-0x588(%rbp)
0.   	0.   	       [ 768]   5a6630:  mov    -0x510(%rbp),%eax
0.   	0.   	       [ 768]   5a6636:  mov    %rbx,-0x590(%rbp)
0.   	0.   	       [ 761]   5a663d:  mov    %r14,%rbx
0.   	0.   	       [ 768]   5a6640:  lea    0x1(%rax),%edx
0.   	0.   	       [ 768]   5a6643:  test   %eax,%eax
0.   	0.   	       [ 768]   5a6645:  mov    $0x1,%eax
0.   	0.   	       [ 768]   5a664a:  cmovg  %edx,%eax
0.   	0.   	       [ 768]   5a664d:  mov    %eax,-0x550(%rbp)
0.   	0.   	       [ 755]   5a6653:  mov    -0x518(%rbp),%rax
0.   	0.   	       [ 755]   5a665a:  mov    -0x460(%rbp),%rdx
0.   	0.   	       [ 755]   5a6661:  movq   $0x1,-0x470(%rbp)
0.   	0.   	       [ 755]   5a666c:  mov    %r13,-0x5a0(%rbp)
0.   	0.   	       [ 755]   5a6673:  mov    (%rax,%rdx,4),%eax
0.   	0.   	       [ 755]   5a6676:  mov    %rbx,-0x4f0(%rbp)
0.   	0.   	       [ 755]   5a667d:  mov    %rbx,-0x5a8(%rbp)
0.   	0.   	       [ 755]   5a6684:  mov    %r13,%rbx
0.   	0.   	       [ 755]   5a6687:  mov    %eax,-0x528(%rbp)
0.   	0.   	       [ 758]   5a668d:  mov    -0x518(%rbp),%rax
0.050	0.050	       [ 758]   5a6694:  mov    -0x470(%rbp),%rdx
0.   	0.   	       [ 760]   5a669b:  mov    0x68(%rbx),%rcx
0.680	0.680	       [ 760]   5a669f:  mov    0x8(%rbx),%r14
0.060	0.060	       [ 758]   5a66a3:  mov    (%rax,%rdx,4),%eax
0.   	0.   	       [ 758]   5a66a6:  mov    %eax,-0x4b8(%rbp)
0.   	0.   	       [ 760]   5a66ac:  mov    (%rbx),%rax
0.   	0.   	       [ 760]   5a66af:  mov    %rax,-0x530(%rbp)
0.   	0.   	       [ 760]   5a66b6:  mov    0x60(%rbx),%rax
0.   	0.   	       [ 760]   5a66ba:  cmp    %rcx,%rax
0.   	0.   	       [ 760]   5a66bd:  jg     .+0x159 [ 0x5a6816 ]
0.   	0.   	       [ 760]   5a66c3:  mov    0x58(%rbx),%rsi
0.030	0.030	       [ 760]   5a66c7:  mov    %rax,%rdx
0.   	0.   	       [ 760]   5a66ca:  mov    0x50(%rbx),%r12
0.   	0.   	       [ 760]   5a66ce:  mov    %r14,-0x4b0(%rbp)
0.   	0.   	       [ 760]   5a66d5:  mov    0x38(%rbx),%r8
0.010	0.010	       [ 760]   5a66d9:  mov    0x30(%rbx),%r10
0.   	0.   	       [ 760]   5a66dd:  imul   %rsi,%rdx
0.   	0.   	       [ 760]   5a66e1:  mov    0x48(%rbx),%r9
0.   	0.   	       [ 760]   5a66e5:  mov    %r10,%r15
0.   	0.   	       [ 760]   5a66e8:  lea    (%rdx,%r14,1),%rdi
0.   	0.   	       [ 760]   5a66ec:  lea    0x1(%rcx),%rdx
0.   	0.   	       [ 760]   5a66f0:  xor    %r14d,%r14d
0.   	0.   	       [ 760]   5a66f3:  sub    %rax,%rdx
0.   	0.   	       [ 760]   5a66f6:  lea    0x1(%r12),%rcx
0.010	0.010	       [ 760]   5a66fb:  mov    %rdx,-0x438(%rbp)
0.   	0.   	       [ 760]   5a6702:  mov    %r8,%rdx
0.   	0.   	       [ 760]   5a6705:  sub    %r10,%rdx
0.   	0.   	       [ 760]   5a6708:  mov    %rcx,-0x480(%rbp)
0.   	0.   	       [ 760]   5a670f:  lea    0x8(,%rdx,8),%rdx
0.   	0.   	       [ 760]   5a6717:  mov    %rdx,-0x430(%rbp)
0.   	0.   	       [ 760]   5a671e:  mov    %r12,%rdx
0.   	0.   	       [ 760]   5a6721:  mov    %rdi,%r12
0.   	0.   	       [ 760]   5a6724:  mov    %rbx,%rdi
0.   	0.   	       [ 760]   5a6727:  mov    %r9,%rbx
0.   	0.   	       [ 760]   5a672a:  cmp    %rdx,%rbx
0.   	0.   	       [ 760]   5a672d:  jg     .+0xcb [ 0x5a67f8 ]
0.   	0.   	       [ 760]   5a6733:  mov    0x40(%rdi),%rcx
0.   	0.   	       [ 760]   5a6737:  mov    -0x530(%rbp),%r10
0.   	0.   	       [ 760]   5a673e:  mov    %rax,-0x4d0(%rbp)
0.   	0.   	       [ 760]   5a6745:  xor    %r13d,%r13d
0.010	0.010	       [ 760]   5a6748:  mov    %rdi,-0x4d8(%rbp)
0.   	0.   	       [ 760]   5a674f:  lea    0x0(,%rcx,8),%r9
0.   	0.   	       [ 760]   5a6757:  mov    %rsi,-0x508(%rbp)
0.010	0.010	       [ 760]   5a675e:  imul   %rbx,%rcx
0.   	0.   	       [ 760]   5a6762:  mov    %rbx,-0x4c8(%rbp)
0.   	0.   	       [ 760]   5a6769:  mov    %r12,-0x4e0(%rbp)
0.   	0.   	       [ 760]   5a6770:  mov    %r14,-0x4f8(%rbp)
0.   	0.   	       [ 760]   5a6777:  mov    %rdx,%r14
0.   	0.   	       [ 760]   5a677a:  add    %r15,%rcx
0.010	0.010	       [ 760]   5a677d:  add    %r12,%rcx
0.   	0.   	       [ 760]   5a6780:  mov    %r9,%r12
0.   	0.   	       [ 760]   5a6783:  lea    (%r10,%rcx,8),%rcx
0.   	0.   	       [ 760]   5a6787:  mov    -0x480(%rbp),%r10
0.   	0.   	       [ 760]   5a678e:  sub    %rbx,%r10
0.   	0.   	       [ 760]   5a6791:  mov    %r8,%rbx
0.   	0.   	       [ 760]   5a6794:  mov    %r10,-0x468(%rbp)
0.   	0.   	       [ 760]   5a679b:  cmp    %rbx,%r15
0.050	0.050	       [ 760]   5a679e:  jg     .+0x1a [ 0x5a67b8 ]
0.   	0.   	       [ 760]   5a67a0:  mov    -0x430(%rbp),%rdx
0.020	0.020	       [ 760]   5a67a7:  mov    %rcx,%rdi
0.010	0.010	       [ 760]   5a67aa:  xor    %esi,%esi
0.150	1.171	       [ 760]   5a67ac:  call   memset@plt [ 0x405fd0, .-0x1a07dc]
0.070	0.070	       [ 760]   5a67b1:  pxor   %xmm3,%xmm3
0.010	0.010	       [ 760]   5a67b5:  mov    %rax,%rcx
0.   	0.   	       [ 760]   5a67b8:  add    $0x1,%r13
0.040	0.040	       [ 760]   5a67bc:  add    %r12,%rcx
0.   	0.   	       [ 760]   5a67bf:  cmp    -0x468(%rbp),%r13
0.060	0.060	       [ 760]   5a67c6:  jne    .-0x2b [ 0x5a679b ]
0.   	0.   	       [ 760]   5a67c8:  mov    %rbx,%r8
0.020	0.020	       [ 760]   5a67cb:  mov    %r14,%rdx
0.   	0.   	       [ 760]   5a67ce:  mov    -0x4c8(%rbp),%rbx
0.020	0.020	       [ 760]   5a67d5:  mov    -0x4d0(%rbp),%rax
0.010	0.010	       [ 760]   5a67dc:  mov    -0x4d8(%rbp),%rdi
0.   	0.   	       [ 760]   5a67e3:  mov    -0x4e0(%rbp),%r12
0.   	0.   	       [ 760]   5a67ea:  mov    -0x4f8(%rbp),%r14
0.   	0.   	       [ 760]   5a67f1:  mov    -0x508(%rbp),%rsi
0.   	0.   	       [ 760]   5a67f8:  add    $0x1,%r14
0.   	0.   	       [ 760]   5a67fc:  add    %rsi,%r12
0.   	0.   	       [ 760]   5a67ff:  cmp    %r14,-0x438(%rbp)
0.010	0.010	       [ 760]   5a6806:  jne    .-0xdc [ 0x5a672a ]
0.   	0.   	       [ 760]   5a680c:  mov    -0x4b0(%rbp),%r14
0.010	0.010	       [ 760]   5a6813:  mov    %rdi,%rbx
0.   	0.   	       [ 761]   5a6816:  mov    -0x4f0(%rbp),%rdx
0.010	0.010	       [ 761]   5a681d:  mov    (%rdx),%rdi
0.450	0.450	       [ 761]   5a6820:  mov    0x90(%rdx),%rcx
0.090	0.090	       [ 761]   5a6827:  mov    0x98(%rdx),%rsi
0.   	0.   	       [ 761]   5a682e:  mov    %rdi,-0x4c8(%rbp)
0.   	0.   	       [ 761]   5a6835:  mov    0x8(%rdx),%rdi
0.   	0.   	       [ 761]   5a6839:  mov    %rdi,-0x540(%rbp)
0.   	0.   	       [ 761]   5a6840:  mov    0x60(%rdx),%rdi
0.010	0.010	       [ 761]   5a6844:  mov    %rdi,-0x4d8(%rbp)
0.   	0.   	       [ 761]   5a684b:  cmp    %rsi,%rcx
0.   	0.   	       [ 761]   5a684e:  jg     .+0x211 [ 0x5a6a5f ]
0.   	0.   	       [ 761]   5a6854:  mov    -0x4f0(%rbp),%r15
0.   	0.   	       [ 761]   5a685b:  mov    -0x540(%rbp),%r11
0.   	0.   	       [ 761]   5a6862:  mov    %rax,-0x560(%rbp)
0.   	0.   	       [ 761]   5a6869:  mov    0x68(%r15),%rdx
0.   	0.   	       [ 761]   5a686d:  mov    0x80(%r15),%r13
0.   	0.   	       [ 761]   5a6874:  mov    0x78(%r15),%rdi
0.   	0.   	       [ 761]   5a6878:  mov    0x50(%r15),%r10
0.050	0.050	       [ 761]   5a687c:  mov    0x48(%r15),%r9
0.   	0.   	       [ 761]   5a6880:  mov    0x30(%r15),%r12
0.   	0.   	       [ 761]   5a6884:  mov    %rdx,-0x480(%rbp)
0.   	0.   	       [ 761]   5a688b:  mov    0x88(%r15),%rdx
0.   	0.   	       [ 761]   5a6892:  mov    0x38(%r15),%r8
0.   	0.   	       [ 761]   5a6896:  mov    %rdi,%rax
0.   	0.   	       [ 761]   5a6899:  mov    %r10,-0x4d0(%rbp)
0.   	0.   	       [ 761]   5a68a0:  mov    %r13,-0x4e0(%rbp)
0.   	0.   	       [ 761]   5a68a7:  mov    %rdx,-0x508(%rbp)
0.   	0.   	       [ 761]   5a68ae:  imul   %rcx,%rdx
0.   	0.   	       [ 761]   5a68b2:  add    %rdx,%r11
0.   	0.   	       [ 761]   5a68b5:  lea    0x1(%rsi),%rdx
0.   	0.   	       [ 761]   5a68b9:  sub    %rcx,%rdx
0.   	0.   	       [ 761]   5a68bc:  mov    %rbx,%rcx
0.   	0.   	       [ 761]   5a68bf:  xor    %ebx,%ebx
0.   	0.   	       [ 761]   5a68c1:  mov    %rdx,-0x4f8(%rbp)
0.   	0.   	       [ 761]   5a68c8:  lea    0x1(%r13),%rdx
0.   	0.   	       [ 761]   5a68cc:  sub    %rdi,%rdx
0.   	0.   	       [ 761]   5a68cf:  mov    %rdx,-0x558(%rbp)
0.   	0.   	       [ 761]   5a68d6:  lea    0x1(%r10),%rdx
0.   	0.   	       [ 761]   5a68da:  sub    %r9,%rdx
0.   	0.   	       [ 761]   5a68dd:  mov    %rdx,%r13
0.   	0.   	       [ 761]   5a68e0:  cmp    -0x4e0(%rbp),%rax
0.040	0.040	       [ 761]   5a68e7:  jg     .+0x156 [ 0x5a6a3d ]
0.   	0.   	       [ 761]   5a68ed:  mov    0x70(%r15),%rdx
0.010	0.010	       [ 761]   5a68f1:  mov    %r11,-0x5b0(%rbp)
0.   	0.   	       [ 761]   5a68f8:  mov    %rbx,-0x5b8(%rbp)
0.   	0.   	       [ 761]   5a68ff:  mov    %rdx,-0x4b0(%rbp)
0.010	0.010	       [ 761]   5a6906:  imul   %rax,%rdx
0.   	0.   	       [ 761]   5a690a:  mov    %r14,-0x568(%rbp)
0.   	0.   	       [ 761]   5a6911:  mov    -0x4d0(%rbp),%r14
0.   	0.   	       [ 761]   5a6918:  mov    %rax,-0x580(%rbp)
0.   	0.   	       [ 761]   5a691f:  xor    %eax,%eax
0.   	0.   	       [ 761]   5a6921:  add    %r11,%rdx
0.   	0.   	       [ 761]   5a6924:  mov    %rdx,-0x468(%rbp)
0.   	0.   	       [ 761]   5a692b:  mov    -0x480(%rbp),%rdx
0.   	0.   	       [ 761]   5a6932:  lea    0x1(%rdx),%rdi
0.010	0.010	       [ 761]   5a6936:  sub    -0x4d8(%rbp),%rdi
0.   	0.   	       [ 761]   5a693d:  mov    %rdi,-0x430(%rbp)
0.   	0.   	       [ 761]   5a6944:  lea    0x1(%r8),%rdi
0.   	0.   	       [ 761]   5a6948:  mov    -0x480(%rbp),%rdx
0.020	0.020	       [ 761]   5a694f:  cmp    %rdx,-0x4d8(%rbp)
0.010	0.010	       [ 761]   5a6956:  jg     .+0xac [ 0x5a6a02 ]
0.   	0.   	       [ 761]   5a695c:  mov    0x58(%r15),%rbx
0.010	0.010	       [ 761]   5a6960:  mov    -0x4d8(%rbp),%rdx
0.   	0.   	       [ 761]   5a6967:  xor    %r11d,%r11d
0.   	0.   	       [ 761]   5a696a:  mov    %rax,-0x5c0(%rbp)
0.   	0.   	       [ 761]   5a6971:  mov    %rcx,-0x5c8(%rbp)
0.   	0.   	       [ 761]   5a6978:  mov    %rbx,-0x438(%rbp)
0.   	0.   	       [ 761]   5a697f:  imul   %rbx,%rdx
0.   	0.   	       [ 761]   5a6983:  add    -0x468(%rbp),%rdx
0.030	0.030	       [ 761]   5a698a:  cmp    %r14,%r9
0.010	0.010	       [ 761]   5a698d:  jg     .+0x53 [ 0x5a69e0 ]
0.   	0.   	       [ 761]   5a698f:  mov    0x40(%r15),%rax
0.070	0.070	       [ 761]   5a6993:  xor    %r10d,%r10d
0.   	0.   	       [ 761]   5a6996:  mov    %rax,%rbx
0.   	0.   	       [ 761]   5a6999:  imul   %r9,%rax
0.010	0.010	       [ 761]   5a699d:  shl    $0x4,%rbx
0.   	0.   	       [ 761]   5a69a1:  lea    (%rax,%rdx,1),%rsi
0.030	0.030	       [ 761]   5a69a5:  shl    $0x4,%rsi
0.   	0.   	       [ 761]   5a69a9:  add    -0x4c8(%rbp),%rsi
0.040	0.040	       [ 761]   5a69b0:  mov    %r12,%rax
0.030	0.030	       [ 761]   5a69b3:  cmp    %r8,%r12
0.050	0.050	       [ 761]   5a69b6:  jg     .+0x1e [ 0x5a69d4 ]
0.   	0.   	       [ 761]   5a69b8:  nopl   0x0(%rax,%rax,1)
0.040	0.040	       [ 761]   5a69c0:  mov    %rax,%rcx
0.370	0.370	       [ 761]   5a69c3:  add    $0x1,%rax
2.392	2.392	       [ 761]   5a69c7:  shl    $0x4,%rcx
1.281	1.281	       [ 761]   5a69cb:  movups %xmm3,(%rsi,%rcx,1)
20.384	20.384	       [ 761]   5a69cf:  cmp    %rax,%rdi
0.600	0.600	       [ 761]   5a69d2:  jne    .-0x12 [ 0x5a69c0 ]
0.   	0.   	       [ 761]   5a69d4:  add    $0x1,%r10
0.040	0.040	       [ 761]   5a69d8:  add    %rbx,%rsi
0.   	0.   	       [ 761]   5a69db:  cmp    %r13,%r10
0.020	0.020	       [ 761]   5a69de:  jne    .-0x2e [ 0x5a69b0 ]
0.   	0.   	       [ 761]   5a69e0:  add    $0x1,%r11
0.060	0.060	       [ 761]   5a69e4:  add    -0x438(%rbp),%rdx
0.140	0.140	       [ 761]   5a69eb:  cmp    %r11,-0x430(%rbp)
0.   	0.   	       [ 761]   5a69f2:  jne    .-0x68 [ 0x5a698a ]
0.   	0.   	       [ 761]   5a69f4:  mov    -0x5c0(%rbp),%rax
0.230	0.230	       [ 761]   5a69fb:  mov    -0x5c8(%rbp),%rcx
0.   	0.   	       [ 761]   5a6a02:  mov    -0x4b0(%rbp),%rbx
0.   	0.   	       [ 761]   5a6a09:  add    $0x1,%rax
0.   	0.   	       [ 761]   5a6a0d:  add    %rbx,-0x468(%rbp)
0.090	0.090	       [ 761]   5a6a14:  cmp    -0x558(%rbp),%rax
0.010	0.010	       [ 761]   5a6a1b:  jne    .-0xd3 [ 0x5a6948 ]
0.   	0.   	       [ 761]   5a6a21:  mov    -0x568(%rbp),%r14
0.030	0.030	       [ 761]   5a6a28:  mov    -0x580(%rbp),%rax
0.   	0.   	       [ 761]   5a6a2f:  mov    -0x5b0(%rbp),%r11
0.   	0.   	       [ 761]   5a6a36:  mov    -0x5b8(%rbp),%rbx
0.   	0.   	       [ 761]   5a6a3d:  add    $0x1,%rbx
0.   	0.   	       [ 761]   5a6a41:  add    -0x508(%rbp),%r11
0.030	0.030	       [ 761]   5a6a48:  cmp    %rbx,-0x4f8(%rbp)
0.   	0.   	       [ 761]   5a6a4f:  jne    .-0x16f [ 0x5a68e0 ]
0.   	0.   	       [ 761]   5a6a55:  mov    -0x560(%rbp),%rax
0.020	0.020	       [ 761]   5a6a5c:  mov    %rcx,%rbx
0.   	0.   	       [ 762]   5a6a5f:  mov    -0x528(%rbp),%edx
0.010	0.010	       [ 762]   5a6a65:  test   %edx,%edx
0.   	0.   	       [ 762]   5a6a67:  jle    .+0x328 [ 0x5a6d8f ]
0.   	0.   	       [ 762]   5a6a6d:  mov    -0x528(%rbp),%edi
0.   	0.   	       [ 762]   5a6a73:  lea    0x1(%r14),%rdx
0.   	0.   	       [ 762]   5a6a77:  mov    $0x1,%ecx
0.   	0.   	       [ 762]   5a6a7c:  lea    0x1(%rdi),%r11d
0.   	0.   	       [ 762]   5a6a80:  mov    -0x4b8(%rbp),%edi
0.   	0.   	       [ 762]   5a6a86:  test   %edi,%edi
0.   	0.   	       [ 762]   5a6a88:  jg     .+0x1d [ 0x5a6aa5 ]
0.   	0.   	       [ 762]   5a6a8a:  add    $0x1,%rcx
0.   	0.   	       [ 762]   5a6a8e:  add    $0x1,%rdx
0.   	0.   	       [ 762]   5a6a92:  cmp    %rcx,%r11
0.   	0.   	       [ 762]   5a6a95:  je     .+0x2fa [ 0x5a6d8f ]
0.   	0.   	       [ 762]   5a6a9b:  mov    -0x4b8(%rbp),%edi
0.   	0.   	       [ 762]   5a6aa1:  test   %edi,%edi
0.   	0.   	       [ 762]   5a6aa3:  jle    .-0x19 [ 0x5a6a8a ]
0.   	0.   	       [ 762]   5a6aa5:  mov    0x58(%rbx),%rsi
0.010	0.010	       [ 762]   5a6aa9:  add    $0x1,%rax
0.   	0.   	       [ 762]   5a6aad:  lea    0x1(%rdi),%r14d
0.   	0.   	       [ 762]   5a6ab1:  mov    0x40(%rbx),%r10
0.   	0.   	       [ 758]   5a6ab5:  mov    %rcx,-0x468(%rbp)
0.   	0.   	       [ 758]   5a6abc:  mov    -0x450(%rbp),%rcx
0.   	0.   	       [ 758]   5a6ac3:  imul   %rsi,%rax
0.   	0.   	       [ 758]   5a6ac7:  movb   $0x0,-0x438(%rbp)
0.   	0.   	       [ 758]   5a6ace:  mov    0x130(%rcx),%r12d
0.040	0.040	       [ 758]   5a6ad5:  mov    %rsi,-0x5b8(%rbp)
0.   	0.   	       [ 758]   5a6adc:  mov    %rbx,-0x5b0(%rbp)
0.   	0.   	       [ 758]   5a6ae3:  mov    %r14d,%ebx
0.   	0.   	       [ 758]   5a6ae6:  mov    -0x588(%rbp),%r14
0.   	0.   	       [ 758]   5a6aed:  mov    %rax,%r13
0.   	0.   	       [ 758]   5a6af0:  mov    %rsi,%rax
0.   	0.   	       [ 758]   5a6af3:  mov    %r12d,%r15d
0.   	0.   	       [ 758]   5a6af6:  neg    %rax
0.   	0.   	       [ 758]   5a6af9:  mov    %rax,-0x558(%rbp)
0.   	0.   	       [ 758]   5a6b00:  lea    -0x1(%r12),%eax
0.   	0.   	       [ 758]   5a6b05:  mov    -0x570(%rbp),%r12
0.   	0.   	       [ 758]   5a6b0c:  lea    (%rax,%rax,2),%rax
0.   	0.   	       [ 758]   5a6b10:  mov    %rax,%rcx
0.   	0.   	       [ 758]   5a6b13:  shl    $0x4,%rax
0.   	0.   	       [ 758]   5a6b17:  shl    $0x5,%rcx
0.   	0.   	       [ 758]   5a6b1b:  add    $0x60,%rax
0.   	0.   	       [ 758]   5a6b1f:  lea    -0x60(%rbp,%rcx,1),%rdi
0.   	0.   	       [ 758]   5a6b24:  mov    %rax,-0x4d0(%rbp)
0.   	0.   	       [ 758]   5a6b2b:  mov    %r13,%rcx
0.   	0.   	       [ 758]   5a6b2e:  lea    -0xf0(%rbp),%r13
0.   	0.   	       [ 758]   5a6b35:  mov    %rdi,-0x580(%rbp)
0.030	0.030	       [ 758]   5a6b3c:  lea    0x0(,%r10,8),%rax
0.200	0.200	       [ 758]   5a6b44:  mov    -0x530(%rbp),%rdi
0.010	0.010	       [ 782]   5a6b4b:  movq   $0x1,-0x480(%rbp)
0.030	0.030	       [ 782]   5a6b56:  mov    %rax,-0x568(%rbp)
0.   	0.   	       [ 782]   5a6b5d:  lea    (%rcx,%r10,1),%rax
0.010	0.010	       [ 782]   5a6b61:  add    %rdx,%rax
0.   	0.   	       [ 782]   5a6b64:  mov    %r11,-0x5c0(%rbp)
0.   	0.   	       [ 782]   5a6b6b:  lea    (%rdi,%rax,8),%r8
0.030	0.030	       [ 782]   5a6b6f:  mov    %ebx,%eax
0.   	0.   	       [ 782]   5a6b71:  mov    %rdx,-0x5c8(%rbp)
0.010	0.010	       [ 782]   5a6b78:  mov    %rax,-0x560(%rbp)
0.   	0.   	       [ 782]   5a6b7f:  mov    %rcx,-0x5d0(%rbp)
0.030	0.030	       [ 782]   5a6b86:  mov    %r10,-0x5d8(%rbp)
0.   	0.   	       [ 782]   5a6b8d:  mov    %ebx,-0x5e0(%rbp)
0.020	0.020	       [ 764]   5a6b93:  xor    %eax,%eax
0.040	0.040	       [ 764]   5a6b95:  mov    $0x18,%ecx
0.630	0.630	       [ 763]   5a6b9a:  pxor   %xmm0,%xmm0
0.030	0.030	       [ 764]   5a6b9e:  mov    %r13,%rdi
11.398	11.398	       [ 764]   5a6ba1:  rep stos %rax,%es:(%rdi)
3.973	3.973	       [ 766]   5a6ba4:  mov    -0x458(%rbp),%eax
0.580	0.580	       [ 763]   5a6baa:  movq   $0x0,-0x1d0(%rbp)
0.060	0.060	       [ 763]   5a6bb5:  movaps %xmm0,-0x1e0(%rbp)
0.050	0.050	       [ 766]   5a6bbc:  test   %eax,%eax
0.761	0.761	       [ 766]   5a6bbe:  jle    .+0x3f [ 0x5a6bfd ]
0.   	0.   	       [ 766]   5a6bc0:  mov    -0x488(%rbp),%rdi
0.390	0.390	       [ 766]   5a6bc7:  lea    0x1(%rax),%esi
0.030	0.030	       [ 766]   5a6bca:  mov    $0x1,%edx
0.   	0.   	       [ 768]   5a6bcf:  mov    -0x510(%rbp),%eax
0.320	0.320	       [ 768]   5a6bd5:  test   %eax,%eax
0.   	0.   	       [ 768]   5a6bd7:  jg     .+0x811 [ 0x5a73e8 ]
0.   	0.   	       [ 766]   5a6bdd:  add    $0x1,%rdx
0.   	0.   	       [ 766]   5a6be1:  add    $0x30,%rdi
0.   	0.   	       [ 766]   5a6be5:  cmp    %rdx,%rsi
0.   	0.   	       [ 766]   5a6be8:  jne    .-0x19 [ 0x5a6bcf ]
0.   	0.   	       [ 774]   5a6bea:  mov    -0x550(%rbp),%eax
0.771	0.771	       [ 774]   5a6bf0:  movb   $0x1,-0x438(%rbp)
0.   	0.   	       [ 774]   5a6bf7:  mov    %eax,-0x578(%rbp)
0.090	0.090	       [ 782]   5a6bfd:  movsd  -0x1e0(%rbp),%xmm0
0.360	0.360	       [ 782]   5a6c05:  mov    -0x558(%rbp),%rax
0.060	0.060	       [ 782]   5a6c0c:  movsd  %xmm0,(%r8,%rax,8)
13.429	13.429	       [ 782]   5a6c12:  movsd  -0x1d8(%rbp),%xmm0
0.010	0.010	       [ 782]   5a6c1a:  mov    -0x5b8(%rbp),%rax
0.030	0.030	       [ 782]   5a6c21:  movsd  %xmm0,(%r8)
0.210	0.210	       [ 782]   5a6c26:  movsd  -0x1d0(%rbp),%xmm0
0.060	0.060	       [ 782]   5a6c2e:  movsd  %xmm0,(%r8,%rax,8)
3.603	3.603	       [ 783]   5a6c34:  test   %r15d,%r15d
0.020	0.020	       [ 783]   5a6c37:  jle    .+0xde [ 0x5a6d15 ]
0.   	0.   	       [ 785]   5a6c3d:  mov    -0x4f0(%rbp),%rdx
0.160	0.160	       [ 785]   5a6c44:  mov    -0x480(%rbp),%r11
0.310	0.310	       [ 785]   5a6c4b:  mov    %r8,-0x4b0(%rbp)
0.010	0.010	       [ 785]   5a6c52:  mov    $0x30,%ecx
0.   	0.   	       [ 785]   5a6c57:  mov    -0x540(%rbp),%rax
0.010	0.010	       [ 785]   5a6c5e:  mov    -0x580(%rbp),%r9
0.010	0.010	       [ 785]   5a6c65:  mov    0x70(%rdx),%rbx
0.751	0.751	       [ 785]   5a6c69:  imul   0x40(%rdx),%r11
0.040	0.040	       [ 785]   5a6c6e:  mov    0x58(%rdx),%rdi
0.030	0.030	       [ 785]   5a6c72:  mov    0x88(%rdx),%rdx
0.520	0.520	       [ 785]   5a6c79:  add    %rbx,%rax
0.010	0.010	       [ 785]   5a6c7c:  add    -0x468(%rbp),%rax
0.120	0.120	       [ 785]   5a6c83:  mov    %rbx,-0x430(%rbp)
0.040	0.040	       [ 785]   5a6c8a:  add    %rax,%r11
0.120	0.120	       [ 785]   5a6c8d:  mov    -0x4d8(%rbp),%rax
0.620	0.620	       [ 785]   5a6c94:  mov    %rdx,%r10
0.030	0.030	       [ 785]   5a6c97:  shl    $0x4,%r10
0.   	0.   	       [ 785]   5a6c9b:  imul   %rdi,%rax
0.010	0.010	       [ 785]   5a6c9f:  shl    $0x4,%rdi
0.360	0.360	       [ 785]   5a6ca3:  add    %rdx,%rax
0.   	0.   	       [ 785]   5a6ca6:  mov    -0x4c8(%rbp),%rdx
0.   	0.   	       [ 785]   5a6cad:  shl    $0x4,%rax
0.200	0.200	       [ 785]   5a6cb1:  add    %rax,%rdx
0.   	0.   	       [ 785]   5a6cb4:  mov    %r11,%r8
0.550	0.550	       [ 785]   5a6cb7:  lea    0x0(%r13,%rcx,1),%rsi
0.290	0.290	       [ 785]   5a6cbc:  shl    $0x4,%r8
0.520	0.520	       [ 785]   5a6cc0:  add    %rdx,%r8
0.080	0.080	       [ 785]   5a6cc3:  nopl   (%rax)
0.   	0.   	       [ 785]   5a6cc6:  cs nopw 0x0(%rax,%rax,1)
0.020	0.020	       [ 785]   5a6cd0:  lea    -0x30(%rsi),%rax
0.781	0.781	       [ 785]   5a6cd4:  mov    %r8,%rbx
0.130	0.130	       [ 785]   5a6cd7:  movapd (%rax),%xmm0
1.651	1.651	       [ 785]   5a6cdb:  add    $0x10,%rax
0.530	0.530	       [ 785]   5a6cdf:  movups %xmm0,(%rbx)
29.801	29.801	       [ 785]   5a6ce2:  add    %rdi,%rbx
1.781	1.781	       [ 785]   5a6ce5:  cmp    %rax,%rsi
0.200	0.200	       [ 785]   5a6ce8:  jne    .-0x11 [ 0x5a6cd7 ]
0.   	0.   	       [ 783]   5a6cea:  add    $0x60,%rsi
0.470	0.470	       [ 783]   5a6cee:  add    %r10,%r8
0.010	0.010	       [ 783]   5a6cf1:  cmp    %r9,%rsi
0.060	0.060	       [ 783]   5a6cf4:  jne    .-0x24 [ 0x5a6cd0 ]
0.   	0.   	       [ 783]   5a6cf6:  add    $0x30,%r9
0.060	0.060	       [ 783]   5a6cfa:  add    $0x30,%rcx
0.050	0.050	       [ 783]   5a6cfe:  add    -0x430(%rbp),%r11
1.431	1.431	       [ 783]   5a6d05:  cmp    %rcx,-0x4d0(%rbp)
0.240	0.240	       [ 783]   5a6d0c:  jne    .-0x58 [ 0x5a6cb4 ]
0.   	0.   	       [ 783]   5a6d0e:  mov    -0x4b0(%rbp),%r8
0.050	0.050	       [ 762]   5a6d15:  addq   $0x1,-0x480(%rbp)
0.220	0.220	       [ 762]   5a6d1d:  add    -0x568(%rbp),%r8
0.020	0.020	       [ 762]   5a6d24:  mov    -0x480(%rbp),%rax
0.060	0.060	       [ 762]   5a6d2b:  cmp    %rax,-0x560(%rbp)
0.150	0.150	       [ 762]   5a6d32:  jne    .-0x19f [ 0x5a6b93 ]
0.   	0.   	       [ 783]   5a6d38:  mov    -0x5c8(%rbp),%rdx
0.100	0.100	       [ 762]   5a6d3f:  addq   $0x1,-0x468(%rbp)
0.470	0.470	       [ 783]   5a6d47:  mov    -0x5c0(%rbp),%r11
0.020	0.020	       [ 783]   5a6d4e:  mov    -0x5d0(%rbp),%rcx
0.   	0.   	       [ 783]   5a6d55:  mov    -0x5d8(%rbp),%r10
0.010	0.010	       [ 783]   5a6d5c:  mov    -0x5e0(%rbp),%ebx
0.020	0.020	       [ 762]   5a6d62:  add    $0x1,%rdx
0.   	0.   	       [ 762]   5a6d66:  cmp    -0x468(%rbp),%r11
0.110	0.110	       [ 762]   5a6d6d:  jne    .-0x231 [ 0x5a6b3c ]
0.   	0.   	       [ 762]   5a6d73:  mov    -0x5b0(%rbp),%rbx
0.020	0.020	       [ 762]   5a6d7a:  cmpb   $0x0,-0x438(%rbp)
0.   	0.   	       [ 762]   5a6d81:  je     .+0xe [ 0x5a6d8f ]
0.   	0.   	       [ 762]   5a6d83:  mov    -0x578(%rbp),%eax
0.   	0.   	       [ 762]   5a6d89:  mov    %eax,-0x414(%rbp)
0.010	0.010	       [ 757]   5a6d8f:  addq   $0x1,-0x470(%rbp)
0.   	0.   	       [ 757]   5a6d97:  mov    -0x598(%rbp),%rdi
0.   	0.   	       [ 757]   5a6d9e:  mov    -0x470(%rbp),%rax
0.   	0.   	       [ 757]   5a6da5:  add    %rdi,-0x4f0(%rbp)
0.   	0.   	       [ 757]   5a6dac:  add    -0x590(%rbp),%rbx
0.   	0.   	       [ 757]   5a6db3:  cmp    %rax,-0x520(%rbp)
0.   	0.   	       [ 757]   5a6dba:  jne    .-0x72d [ 0x5a668d ]
0.   	0.   	       [ 754]   5a6dc0:  mov    -0x5a0(%rbp),%r13
0.020	0.020	       [ 754]   5a6dc7:  mov    -0x5a8(%rbp),%rbx
0.   	0.   	       [ 754]   5a6dce:  addq   $0x1,-0x460(%rbp)
0.   	0.   	       [ 754]   5a6dd6:  mov    -0x520(%rbp),%rdx
0.   	0.   	       [ 754]   5a6ddd:  add    $0x70,%r13
0.   	0.   	       [ 754]   5a6de1:  add    $0xa0,%rbx
0.   	0.   	       [ 754]   5a6de8:  cmp    %rdx,-0x460(%rbp)
0.   	0.   	       [ 754]   5a6def:  jne    .-0x79c [ 0x5a6653 ]
0.   	0.   	       [ 792]   5a6df5:  mov    -0x490(%rbp),%rdi
0.   	0.120	       [ 792]   5a6dfc:  call   free@plt [ 0x405db0, .-0x1a104c]
0.   	0.   	       [ 793]   5a6e01:  mov    -0x448(%rbp),%rdi
0.   	0.060	       [ 793]   5a6e08:  call   free@plt [ 0x405db0, .-0x1a1058]
0.   	0.   	       [ 794]   5a6e0d:  mov    -0x488(%rbp),%rdi
0.   	0.010	       [ 794]   5a6e14:  call   free@plt [ 0x405db0, .-0x1a1064]
0.   	0.   	       [ 795]   5a6e19:  mov    -0x4c0(%rbp),%rdi
0.   	0.040	       [ 795]   5a6e20:  call   free@plt [ 0x405db0, .-0x1a1070]
0.   	0.   	       [ 796]   5a6e25:  mov    -0x4a0(%rbp),%rdi
0.   	0.   	       [ 796]   5a6e2c:  call   free@plt [ 0x405db0, .-0x1a107c]
0.   	0.   	       [ 797]   5a6e31:  mov    -0x4a8(%rbp),%rdi
0.   	0.020	       [ 797]   5a6e38:  call   free@plt [ 0x405db0, .-0x1a1088]
0.   	0.   	       [ 798]   5a6e3d:  mov    -0x500(%rbp),%rdi
0.   	0.   	       [ 798]   5a6e44:  call   free@plt [ 0x405db0, .-0x1a1094]
0.   	0.   	       [ 798]   5a6e49:  jmp    .-0x2bfa [ 0x5a424f ]
0.   	0.   	       [ 798]   5a6e4e:  xchg   %ax,%ax
0.   	0.   	       [ 734]   5a6e50:  movq   $0x0,-0xe8(%rbp)
0.   	0.   	       [ 734]   5a6e5b:  mov    %rcx,%rax
0.   	0.   	       [ 734]   5a6e5e:  mov    $0x3,%r8d
0.   	0.   	       [ 734]   5a6e64:  lea    -0x380(%rbp),%rcx
0.   	0.   	       [ 734]   5a6e6b:  movq   $0x0,-0xd8(%rbp)
0.   	0.   	       [ 734]   5a6e76:  movq   $0x0,-0xc8(%rbp)
0.   	0.   	       [ 734]   5a6e81:  movq   $0x0,-0xb8(%rbp)
0.   	0.   	       [ 734]   5a6e8c:  movq   $0x0,-0xa8(%rbp)
0.010	0.010	       [ 734]   5a6e97:  movq   $0x0,-0x98(%rbp)
0.   	0.   	       [ 734]   5a6ea2:  movsd  %xmm0,-0xa0(%rbp)
0.   	0.   	       [ 734]   5a6eaa:  pxor   %xmm0,%xmm0
0.   	0.   	       [ 734]   5a6eae:  movsd  %xmm5,-0xf0(%rbp)
0.   	0.   	       [ 734]   5a6eb6:  movsd  %xmm4,-0xe0(%rbp)
0.   	0.   	       [ 734]   5a6ebe:  movsd  %xmm3,-0xd0(%rbp)
0.   	0.   	       [ 734]   5a6ec6:  movsd  %xmm2,-0xc0(%rbp)
0.   	0.   	       [ 734]   5a6ece:  movsd  %xmm1,-0xb0(%rbp)
0.   	0.   	       [ 734]   5a6ed6:  movaps %xmm0,-0x380(%rbp)
0.   	0.   	       [ 734]   5a6edd:  movaps %xmm0,-0x370(%rbp)
0.   	0.   	       [ 734]   5a6ee4:  movaps %xmm0,-0x360(%rbp)
0.   	0.   	       [ 734]   5a6eeb:  movaps %xmm0,-0x350(%rbp)
0.   	0.   	       [ 734]   5a6ef2:  mov    -0x460(%rbp),%rdi
0.   	0.   	       [ 734]   5a6ef9:  mov    %rax,%rsi
0.   	0.   	       [ 734]   5a6efc:  movsd  (%rsi),%xmm3
0.010	0.010	       [ 734]   5a6f00:  movsd  0x8(%rsi),%xmm2
0.030	0.030	       [ 734]   5a6f05:  xor    %edx,%edx
0.   	0.   	       [ 734]   5a6f07:  unpcklpd %xmm3,%xmm3
0.   	0.   	       [ 734]   5a6f0b:  unpcklpd %xmm2,%xmm2
0.   	0.   	       [ 734]   5a6f0f:  movapd (%rdi,%rdx,1),%xmm0
0.220	0.220	       [ 734]   5a6f14:  movapd %xmm0,%xmm1
0.010	0.010	       [ 734]   5a6f18:  shufpd $0x1,%xmm0,%xmm0
0.030	0.030	       [ 734]   5a6f1d:  mulpd  %xmm3,%xmm1
0.040	0.040	       [ 734]   5a6f21:  mulpd  %xmm2,%xmm0
0.040	0.040	       [ 734]   5a6f25:  movapd %xmm1,%xmm4
0.   	0.   	       [ 734]   5a6f29:  subpd  %xmm0,%xmm4
0.030	0.030	       [ 734]   5a6f2d:  addpd  %xmm1,%xmm0
0.   	0.   	       [ 734]   5a6f31:  movsd  %xmm4,%xmm0
0.100	0.100	       [ 734]   5a6f35:  addpd  (%rcx,%rdx,1),%xmm0
0.200	0.200	       [ 734]   5a6f3a:  movaps %xmm0,(%rcx,%rdx,1)
0.030	0.030	       [ 734]   5a6f3e:  add    $0x10,%rdx
0.   	0.   	       [ 734]   5a6f42:  cmp    $0x20,%rdx
0.   	0.   	       [ 734]   5a6f46:  jne    .-0x37 [ 0x5a6f0f ]
0.   	0.   	       [ 734]   5a6f48:  add    $0x20,%rdi
0.020	0.020	       [ 734]   5a6f4c:  add    $0x10,%rsi
0.   	0.   	       [ 734]   5a6f50:  cmp    %r11,%rdi
0.020	0.020	       [ 734]   5a6f53:  jne    .-0x57 [ 0x5a6efc ]
0.   	0.   	       [ 734]   5a6f55:  add    $0x20,%rcx
0.   	0.   	       [ 734]   5a6f59:  add    $0x30,%rax
0.   	0.   	       [ 734]   5a6f5d:  cmp    $0x6,%r8
0.010	0.010	       [ 734]   5a6f61:  jne    .+0x3c5 [ 0x5a7326 ]
0.   	0.   	       [ 738]   5a6f67:  mov    -0x4b8(%rbp),%rax
0.   	0.   	       [ 738]   5a6f6e:  pxor   %xmm2,%xmm2
0.   	0.   	       [ 738]   5a6f72:  movsd  (%r15),%xmm8
0.   	0.   	       [ 738]   5a6f77:  movsd  (%r14),%xmm10
0.   	0.   	       [ 738]   5a6f7c:  movsd  0x8(%r14),%xmm9
0.   	0.   	       [ 738]   5a6f82:  movsd  0x8(%rax),%xmm0
0.   	0.   	       [ 738]   5a6f87:  andpd  0x2cea51(%rip),%xmm0        # 0x2cea59
0.   	0.   	       [ 738]   5a6f8f:  mov    -0x500(%rbp),%rax
0.   	0.   	       [ 738]   5a6f96:  movapd %xmm0,%xmm1
0.   	0.   	       [ 738]   5a6f9a:  addsd  %xmm2,%xmm0
0.   	0.   	       [ 738]   5a6f9e:  mulsd  %xmm2,%xmm1
0.   	0.   	       [ 738]   5a6fa2:  movsd  -0x8(%rax,%r12,8),%xmm7
0.   	0.   	       [ 738]   5a6fa9:  movapd %xmm0,%xmm3
0.   	0.   	       [ 738]   5a6fad:  movapd %xmm7,%xmm5
0.   	0.   	       [ 738]   5a6fb1:  mulsd  %xmm2,%xmm3
0.   	0.   	       [ 738]   5a6fb5:  mulsd  %xmm7,%xmm0
0.010	0.010	       [ 738]   5a6fb9:  mulsd  %xmm1,%xmm5
0.   	0.   	       [ 738]   5a6fbd:  mulsd  %xmm2,%xmm1
0.   	0.   	       [ 738]   5a6fc1:  movapd %xmm8,%xmm2
0.   	0.   	       [ 738]   5a6fc6:  addsd  %xmm10,%xmm2
0.   	0.   	       [ 738]   5a6fcb:  subsd  %xmm3,%xmm5
0.   	0.   	       [ 738]   5a6fcf:  movsd  0x8(%r15),%xmm3
0.   	0.   	       [ 738]   5a6fd5:  movapd %xmm2,%xmm4
0.   	0.   	       [ 738]   5a6fd9:  andpd  0x2ce9ff(%rip),%xmm4        # 0x2cea07
0.   	0.   	       [ 738]   5a6fe1:  addsd  %xmm1,%xmm0
0.   	0.   	       [ 738]   5a6fe5:  movapd %xmm3,%xmm1
0.   	0.   	       [ 738]   5a6fe9:  addsd  %xmm9,%xmm1
0.   	0.   	       [ 738]   5a6fee:  movapd %xmm1,%xmm6
0.   	0.   	       [ 738]   5a6ff2:  andpd  0x2ce9e6(%rip),%xmm6        # 0x2ce9ee
0.   	0.   	       [ 738]   5a6ffa:  comisd %xmm4,%xmm6
0.   	0.   	       [ 738]   5a6ffe:  jbe    .+0x333 [ 0x5a7331 ]
0.   	0.   	       [ 738]   5a7004:  movapd %xmm2,%xmm4
0.   	0.   	       [ 738]   5a7008:  divsd  %xmm1,%xmm4
0.   	0.   	       [ 738]   5a700c:  mulsd  %xmm4,%xmm2
0.   	0.   	       [ 738]   5a7010:  addsd  %xmm1,%xmm2
0.   	0.   	       [ 738]   5a7014:  movapd %xmm5,%xmm1
0.   	0.   	       [ 738]   5a7018:  mulsd  %xmm4,%xmm1
0.   	0.   	       [ 738]   5a701c:  mulsd  %xmm0,%xmm4
0.   	0.   	       [ 738]   5a7020:  addsd  %xmm0,%xmm1
0.   	0.   	       [ 738]   5a7024:  subsd  %xmm5,%xmm4
0.   	0.   	       [ 738]   5a7028:  divsd  %xmm2,%xmm1
0.   	0.   	       [ 738]   5a702c:  divsd  %xmm2,%xmm4
0.   	0.   	       [ 738]   5a7030:  movapd %xmm4,%xmm0
0.   	0.   	       [ 738]   5a7034:  movapd %xmm3,%xmm2
0.   	0.   	       [ 738]   5a7038:  movapd %xmm3,%xmm4
0.   	0.   	       [ 738]   5a703c:  pxor   %xmm3,%xmm3
0.   	0.   	       [ 738]   5a7040:  movsd  -0x380(%rbp),%xmm11
0.010	0.010	       [ 738]   5a7049:  movapd %xmm3,%xmm5
0.   	0.   	       [ 738]   5a704d:  movapd %xmm8,%xmm6
0.   	0.   	       [ 738]   5a7052:  lea    (%r12,%r12,2),%rax
0.   	0.   	       [ 738]   5a7056:  movslq -0x414(%rbp),%rcx
0.010	0.010	       [ 738]   5a705d:  divsd  %xmm7,%xmm5
0.   	0.   	       [ 738]   5a7061:  movapd %xmm0,%xmm12
0.   	0.   	       [ 738]   5a7066:  mov    -0x438(%rbp),%r8
0.   	0.   	       [ 738]   5a706d:  mov    -0x488(%rbp),%rdi
0.   	0.   	       [ 738]   5a7074:  mulsd  %xmm9,%xmm2
0.   	0.   	       [ 738]   5a7079:  mov    %rcx,%rdx
0.   	0.   	       [ 730]   5a707c:  add    $0x1,%r12
0.   	0.   	       [ 730]   5a7080:  add    $0x10,%r14
0.   	0.   	       [ 738]   5a7084:  mulsd  %xmm10,%xmm6
0.   	0.   	       [ 738]   5a7089:  add    -0x530(%rbp),%rcx
0.   	0.   	       [ 730]   5a7090:  add    $0x10,%r15
0.   	0.   	       [ 730]   5a7094:  add    $0x90,%rbx
0.   	0.   	       [ 738]   5a709b:  mulsd  %xmm9,%xmm8
0.   	0.   	       [ 738]   5a70a0:  add    %rcx,%rax
0.   	0.   	       [ 738]   5a70a3:  mulsd  %xmm10,%xmm4
0.   	0.   	       [ 738]   5a70a8:  add    %r8,%rax
0.   	0.   	       [ 738]   5a70ab:  lea    (%r9,%rax,1),%rsi
0.   	0.   	       [ 738]   5a70af:  lea    (%rax,%r9,2),%rcx
0.   	0.   	       [ 738]   5a70b3:  add    %r8,%rax
0.   	0.   	       [ 738]   5a70b6:  shl    $0x4,%rsi
0.   	0.   	       [ 738]   5a70ba:  shl    $0x4,%rcx
0.   	0.   	       [ 738]   5a70be:  subsd  %xmm2,%xmm6
0.   	0.   	       [ 738]   5a70c2:  movsd  -0x378(%rbp),%xmm2
0.   	0.   	       [ 738]   5a70ca:  addsd  %xmm8,%xmm4
0.   	0.   	       [ 738]   5a70cf:  movapd %xmm6,%xmm9
0.   	0.   	       [ 738]   5a70d4:  mulsd  %xmm3,%xmm9
0.010	0.010	       [ 738]   5a70d9:  movapd %xmm4,%xmm8
0.   	0.   	       [ 738]   5a70de:  mulsd  %xmm3,%xmm8
0.   	0.   	       [ 738]   5a70e3:  addsd  %xmm9,%xmm4
0.   	0.   	       [ 738]   5a70e8:  subsd  %xmm8,%xmm6
0.   	0.   	       [ 738]   5a70ed:  mulsd  %xmm5,%xmm3
0.   	0.   	       [ 738]   5a70f1:  movapd %xmm5,%xmm10
0.   	0.   	       [ 738]   5a70f6:  mulsd  %xmm2,%xmm10
0.   	0.   	       [ 738]   5a70fb:  addsd  %xmm7,%xmm3
0.010	0.010	       [ 738]   5a70ff:  addsd  %xmm11,%xmm10
0.   	0.   	       [ 738]   5a7104:  mulsd  %xmm5,%xmm11
0.   	0.   	       [ 738]   5a7109:  movapd %xmm3,%xmm7
0.   	0.   	       [ 738]   5a710d:  divsd  %xmm3,%xmm10
0.030	0.030	       [ 738]   5a7112:  unpcklpd %xmm7,%xmm7
0.   	0.   	       [ 738]   5a7116:  subsd  %xmm11,%xmm2
0.   	0.   	       [ 738]   5a711b:  movapd %xmm1,%xmm11
0.   	0.   	       [ 738]   5a7120:  divsd  %xmm3,%xmm2
0.050	0.050	       [ 738]   5a7124:  addsd  %xmm6,%xmm10
0.010	0.010	       [ 738]   5a7129:  mulsd  %xmm10,%xmm11
0.040	0.040	       [ 738]   5a712e:  mulsd  %xmm0,%xmm10
0.   	0.   	       [ 738]   5a7133:  addsd  %xmm4,%xmm2
0.   	0.   	       [ 738]   5a7137:  mulsd  %xmm2,%xmm12
0.010	0.010	       [ 738]   5a713c:  mulsd  %xmm1,%xmm2
0.   	0.   	       [ 738]   5a7140:  subsd  %xmm12,%xmm11
0.   	0.   	       [ 738]   5a7145:  xorpd  0x2cfe02(%rip),%xmm11        # 0x2cfe0b
0.020	0.020	       [ 738]   5a714e:  addsd  %xmm10,%xmm2
0.   	0.   	       [ 738]   5a7153:  xorpd  0x2cfdf5(%rip),%xmm2        # 0x2cfdfd
0.030	0.030	       [ 738]   5a715b:  movapd %xmm9,%xmm10
0.   	0.   	       [ 738]   5a7160:  movsd  %xmm11,(%rdi,%rsi,1)
0.   	0.   	       [ 738]   5a7166:  movapd %xmm5,%xmm11
0.   	0.   	       [ 738]   5a716b:  subsd  %xmm8,%xmm10
0.   	0.   	       [ 738]   5a7170:  addsd  %xmm9,%xmm8
0.   	0.   	       [ 738]   5a7175:  movsd  %xmm2,0x8(%rdi,%rsi,1)
0.   	0.   	       [ 738]   5a717b:  movapd -0x370(%rbp),%xmm2
0.   	0.   	       [ 738]   5a7183:  unpcklpd %xmm11,%xmm11
0.010	0.010	       [ 738]   5a7188:  movapd %xmm2,%xmm9
0.   	0.   	       [ 738]   5a718d:  movapd %xmm8,%xmm12
0.   	0.   	       [ 738]   5a7192:  shufpd $0x1,%xmm2,%xmm9
0.   	0.   	       [ 738]   5a7198:  mulpd  %xmm11,%xmm9
0.   	0.   	       [ 738]   5a719d:  unpcklpd %xmm10,%xmm12
0.   	0.   	       [ 738]   5a71a2:  movapd %xmm9,%xmm11
0.   	0.   	       [ 738]   5a71a7:  addpd  %xmm2,%xmm11
0.   	0.   	       [ 738]   5a71ac:  subpd  %xmm9,%xmm2
0.010	0.010	       [ 738]   5a71b1:  movapd %xmm2,%xmm9
0.   	0.   	       [ 738]   5a71b6:  movsd  %xmm11,%xmm2
0.   	0.   	       [ 738]   5a71bb:  divpd  %xmm7,%xmm2
0.   	0.   	       [ 738]   5a71bf:  shufpd $0x1,%xmm11,%xmm9
0.   	0.   	       [ 738]   5a71c5:  divpd  %xmm7,%xmm9
0.020	0.020	       [ 738]   5a71ca:  movapd %xmm10,%xmm7
0.   	0.   	       [ 738]   5a71cf:  unpcklpd %xmm8,%xmm7
0.   	0.   	       [ 738]   5a71d4:  addpd  %xmm7,%xmm2
0.   	0.   	       [ 738]   5a71d8:  movapd %xmm1,%xmm7
0.   	0.   	       [ 738]   5a71dc:  unpcklpd %xmm7,%xmm7
0.   	0.   	       [ 738]   5a71e0:  mulpd  %xmm7,%xmm2
0.   	0.   	       [ 738]   5a71e4:  movapd %xmm2,%xmm7
0.   	0.   	       [ 738]   5a71e8:  addpd  %xmm12,%xmm9
0.   	0.   	       [ 738]   5a71ed:  movapd %xmm0,%xmm12
0.020	0.020	       [ 738]   5a71f2:  unpcklpd %xmm12,%xmm12
0.   	0.   	       [ 738]   5a71f7:  mulpd  %xmm12,%xmm9
0.020	0.020	       [ 738]   5a71fc:  subpd  %xmm9,%xmm7
0.010	0.010	       [ 738]   5a7201:  addpd  %xmm9,%xmm2
0.   	0.   	       [ 738]   5a7206:  movsd  %xmm7,%xmm2
0.040	0.040	       [ 738]   5a720a:  xorpd  0x2f108e(%rip),%xmm2        # 0x2f1096
0.030	0.030	       [ 738]   5a7212:  movapd %xmm5,%xmm7
0.   	0.   	       [ 738]   5a7216:  movups %xmm2,(%rdi,%rcx,1)
0.020	0.020	       [ 738]   5a721a:  movsd  -0x358(%rbp),%xmm2
0.   	0.   	       [ 738]   5a7222:  lea    (%rax,%r9,1),%rcx
0.   	0.   	       [ 738]   5a7226:  movsd  -0x360(%rbp),%xmm9
0.   	0.   	       [ 738]   5a722f:  shl    $0x4,%rcx
0.   	0.   	       [ 738]   5a7233:  lea    (%rax,%r9,2),%rax
0.   	0.   	       [ 738]   5a7237:  mulsd  %xmm2,%xmm7
0.   	0.   	       [ 738]   5a723b:  shl    $0x4,%rax
0.   	0.   	       [ 738]   5a723f:  addsd  %xmm9,%xmm7
0.010	0.010	       [ 738]   5a7244:  mulsd  %xmm5,%xmm9
0.   	0.   	       [ 738]   5a7249:  divsd  %xmm3,%xmm7
0.   	0.   	       [ 738]   5a724d:  subsd  %xmm9,%xmm2
0.   	0.   	       [ 738]   5a7252:  movapd %xmm0,%xmm9
0.   	0.   	       [ 738]   5a7257:  divsd  %xmm3,%xmm2
0.   	0.   	       [ 738]   5a725b:  addsd  %xmm10,%xmm7
0.   	0.   	       [ 738]   5a7260:  addsd  %xmm8,%xmm2
0.   	0.   	       [ 738]   5a7265:  movapd %xmm1,%xmm8
0.   	0.   	       [ 738]   5a726a:  mulsd  %xmm7,%xmm8
0.   	0.   	       [ 738]   5a726f:  mulsd  %xmm0,%xmm7
0.   	0.   	       [ 738]   5a7273:  mulsd  %xmm2,%xmm9
0.020	0.020	       [ 738]   5a7278:  mulsd  %xmm1,%xmm2
0.010	0.010	       [ 738]   5a727c:  subsd  %xmm9,%xmm8
0.   	0.   	       [ 738]   5a7281:  xorpd  0x2cfcc6(%rip),%xmm8        # 0x2cfccf
0.010	0.010	       [ 738]   5a728a:  addsd  %xmm2,%xmm7
0.   	0.   	       [ 738]   5a728e:  xorpd  0x2cfcba(%rip),%xmm7        # 0x2cfcc2
0.020	0.020	       [ 738]   5a7296:  movsd  %xmm8,(%rdi,%rcx,1)
0.   	0.   	       [ 738]   5a729c:  movsd  %xmm7,0x8(%rdi,%rcx,1)
0.010	0.010	       [ 738]   5a72a2:  movsd  -0x348(%rbp),%xmm2
0.   	0.   	       [ 738]   5a72aa:  movapd %xmm5,%xmm7
0.   	0.   	       [ 738]   5a72ae:  movsd  -0x350(%rbp),%xmm8
0.   	0.   	       [ 738]   5a72b7:  mulsd  %xmm2,%xmm7
0.   	0.   	       [ 738]   5a72bb:  mulsd  %xmm8,%xmm5
0.   	0.   	       [ 738]   5a72c0:  addsd  %xmm8,%xmm7
0.   	0.   	       [ 738]   5a72c5:  subsd  %xmm5,%xmm2
0.   	0.   	       [ 738]   5a72c9:  divsd  %xmm3,%xmm7
0.010	0.010	       [ 738]   5a72cd:  divsd  %xmm3,%xmm2
0.   	0.   	       [ 738]   5a72d1:  movapd %xmm1,%xmm3
0.   	0.   	       [ 738]   5a72d5:  addsd  %xmm6,%xmm7
0.   	0.   	       [ 738]   5a72d9:  mulsd  %xmm7,%xmm3
0.   	0.   	       [ 738]   5a72dd:  addsd  %xmm4,%xmm2
0.   	0.   	       [ 738]   5a72e1:  movapd %xmm0,%xmm4
0.   	0.   	       [ 738]   5a72e5:  mulsd  %xmm7,%xmm0
0.   	0.   	       [ 738]   5a72e9:  mulsd  %xmm2,%xmm4
0.   	0.   	       [ 738]   5a72ed:  mulsd  %xmm2,%xmm1
0.   	0.   	       [ 738]   5a72f1:  subsd  %xmm4,%xmm3
0.010	0.010	       [ 738]   5a72f5:  xorpd  0x2cfc53(%rip),%xmm3        # 0x2cfc5b
0.010	0.010	       [ 738]   5a72fd:  addsd  %xmm0,%xmm1
0.   	0.   	       [ 738]   5a7301:  xorpd  0x2cfc47(%rip),%xmm1        # 0x2cfc4f
0.   	0.   	       [ 738]   5a7309:  movsd  %xmm3,(%rdi,%rax,1)
0.   	0.   	       [ 738]   5a730e:  movsd  %xmm1,0x8(%rdi,%rax,1)
0.   	0.   	       [ 730]   5a7314:  cmp    %r12d,-0x458(%rbp)
0.   	0.   	       [ 730]   5a731b:  jge    .-0x112a [ 0x5a61f1 ]
0.   	0.   	       [ 730]   5a7321:  jmp    .-0xdc8 [ 0x5a6559 ]
0.   	0.   	       [ 730]   5a7326:  mov    $0x6,%r8d
0.   	0.   	       [ 730]   5a732c:  jmp    .-0x43a [ 0x5a6ef2 ]
0.010	0.010	       [ 738]   5a7331:  movapd %xmm1,%xmm4
0.   	0.   	       [ 738]   5a7335:  divsd  %xmm2,%xmm4
0.   	0.   	       [ 738]   5a7339:  mulsd  %xmm4,%xmm1
0.   	0.   	       [ 738]   5a733d:  addsd  %xmm1,%xmm2
0.   	0.   	       [ 738]   5a7341:  movapd %xmm4,%xmm1
0.   	0.   	       [ 738]   5a7345:  mulsd  %xmm0,%xmm1
0.   	0.   	       [ 738]   5a7349:  mulsd  %xmm5,%xmm4
0.   	0.   	       [ 738]   5a734d:  addsd  %xmm5,%xmm1
0.   	0.   	       [ 738]   5a7351:  subsd  %xmm4,%xmm0
0.   	0.   	       [ 738]   5a7355:  divsd  %xmm2,%xmm1
0.100	0.100	       [ 738]   5a7359:  divsd  %xmm2,%xmm0
0.040	0.040	       [ 738]   5a735d:  jmp    .-0x329 [ 0x5a7034 ]
0.   	0.   	       [1152]   5a7362:  mov    -0x468(%rbp),%rax
0.   	0.   	       [1152]   5a7369:  mov    $0x1,%edi
0.   	0.   	       [1152]   5a736e:  mov    %r14,-0xb8(%rbp)
0.   	0.   	       [1152]   5a7375:  mov    %r13,-0xb0(%rbp)
0.   	0.   	       [1152]   5a737c:  movq   $0x0,-0xa8(%rbp)
0.   	0.   	       [1152]   5a7387:  mov    %rax,-0xa0(%rbp)
0.   	0.   	       [1152]   5a738e:  call   malloc@plt [ 0x4068b0, .-0x1a0ade]
0.   	0.   	       [1152]   5a7393:  movdqa 0x2ce635(%rip),%xmm6        # 0x2ce63d
0.   	0.   	       [1152]   5a739b:  movq   $0x0,-0xe8(%rbp)
0.   	0.   	       [1152]   5a73a6:  mov    %rax,-0xf0(%rbp)
0.   	0.   	       [1152]   5a73ad:  mov    %rax,%r12
0.   	0.   	       [1152]   5a73b0:  movabs $0x30200000000,%rax
0.   	0.   	       [1152]   5a73ba:  movq   $0x8,-0xe0(%rbp)
0.   	0.   	       [1152]   5a73c5:  mov    %rax,-0xd8(%rbp)
0.   	0.   	       [1152]   5a73cc:  movq   $0x0,-0xc0(%rbp)
0.   	0.   	       [1152]   5a73d7:  movaps %xmm6,-0xd0(%rbp)
0.   	0.   	       [1152]   5a73de:  jmp    .-0x1b58 [ 0x5a5886 ]
0.   	0.   	       [1152]   5a73e3:  nopl   0x0(%rax,%rax,1)
0.   	0.   	       [1152]   5a73e8:  mov    -0x440(%rbp),%rbx
0.490	0.490	       [1152]   5a73ef:  mov    %r8,-0x578(%rbp)
0.060	0.060	       [1152]   5a73f6:  lea    -0x1e0(%rbp),%r10
0.020	0.020	       [1152]   5a73fd:  mov    %rsi,-0x508(%rbp)
0.700	0.700	       [1152]   5a7404:  mov    0xcb8(%rbx),%rcx
9.407	9.407	       [1152]   5a740b:  mov    0xcc0(%rbx),%rbx
0.360	0.360	       [1152]   5a7412:  mov    %rcx,-0x4e0(%rbp)
0.040	0.040	       [1152]   5a7419:  mov    %rbx,-0x4f8(%rbp)
0.010	0.010	       [1152]   5a7420:  mov    %eax,%ebx
0.010	0.010	       [ 771]   5a7422:  mov    -0x440(%rbp),%rcx
0.360	0.360	       [ 771]   5a7429:  mov    -0x470(%rbp),%rax
2.902	2.902	       [ 771]   5a7430:  mov    %rdi,-0x4b8(%rbp)
3.793	3.793	       [ 771]   5a7437:  mov    %rdi,%r9
45.432	45.432	       [ 771]   5a743a:  mov    -0x480(%rbp),%r8
1.571	1.571	       [ 771]   5a7441:  mov    %rdx,-0x4b0(%rbp)
41.159	41.159	       [ 771]   5a7448:  imul   0xcf8(%rcx),%rax
1.411	1.411	       [ 771]   5a7450:  add    -0x4f8(%rbp),%rax
10.637	10.637	       [ 771]   5a7457:  add    -0x460(%rbp),%rax
0.700	0.700	       [ 771]   5a745e:  imul   $0x88,%rax,%rax
3.382	3.382	       [ 771]   5a7465:  add    -0x4e0(%rbp),%rax
5.554	5.554	       [ 771]   5a746c:  mov    0x70(%rax),%rcx
52.046	52.046	       [ 771]   5a7470:  imul   0x40(%rax),%r8
3.603	3.603	       [ 771]   5a7475:  lea    0x0(,%rcx,8),%r11
41.919	41.919	       [ 771]   5a747d:  add    0x8(%rax),%rcx
2.232	2.232	       [ 771]   5a7481:  add    -0x468(%rbp),%rcx
12.609	12.609	       [ 771]   5a7488:  add    %rcx,%r8
0.030	0.030	       [ 771]   5a748b:  mov    0x58(%rax),%rcx
2.712	2.712	       [ 771]   5a748f:  mov    %r11,-0x438(%rbp)
8.286	8.286	       [ 771]   5a7496:  mov    (%rax),%rax
43.410	43.410	       [ 771]   5a7499:  imul   %rdx,%rcx
0.861	0.861	       [ 771]   5a749d:  mov    %r13,%rdx
41.429	41.429	       [ 771]   5a74a0:  add    %r8,%rcx
3.512	3.512	       [ 771]   5a74a3:  lea    (%rax,%rcx,8),%rcx
9.647	9.647	       [ 771]   5a74a7:  xor    %eax,%eax
0.020	0.020	       [ 771]   5a74a9:  nopl   0x0(%rax)
2.522	2.522	       [ 771]   5a74b0:  movsd  (%rcx),%xmm4
4162.832	4162.832	       [ 771]   5a74b4:  movsd  (%r10,%rax,8),%xmm0
30.882	30.882	       [ 771]   5a74ba:  addsd  %xmm4,%xmm0
551.896	551.896	       [ 771]   5a74be:  movsd  %xmm0,(%r10,%rax,8)
182.808	182.808	       [ 774]   5a74c4:  test   %r15d,%r15d
10.707	10.707	       [ 774]   5a74c7:  jle    .+0x88 [ 0x5a754f ]
0.020	0.020	       [ 774]   5a74cd:  mov    %rax,%r8
9.286	9.286	       [ 774]   5a74d0:  mov    %r9,%r11
2.121	2.121	       [ 774]   5a74d3:  unpcklpd %xmm4,%xmm4
3.913	3.913	       [ 774]   5a74d7:  mov    $0x1,%r13d
4.913	4.913	       [ 774]   5a74dd:  shl    $0x4,%r8
1.921	1.921	       [ 774]   5a74e1:  mov    %r9,-0x430(%rbp)
47.793	47.793	       [ 774]   5a74e8:  add    %rdx,%r8
166.747	166.747	       [ 774]   5a74eb:  jmp    .+0xb [ 0x5a74f6 ]
0.   	0.   	       [ 774]   5a74ed:  nopl   (%rax)
0.020	0.020	       [ 774]   5a74f0:  mov    $0x2,%r13d
73.301	73.301	       [ 774]   5a74f6:  mov    %r11,%r9
3.643	3.643	       [ 774]   5a74f9:  mov    %r8,%rsi
47.183	47.183	       [ 774]   5a74fc:  xor    %edi,%edi
94.686	94.686	       [ 774]   5a74fe:  movupd (%r9),%xmm0
145.252	145.252	       [ 777]   5a7503:  movapd %xmm4,%xmm1
267.097	267.097	       [ 774]   5a7507:  add    $0x1,%edi
66.236	66.236	       [ 774]   5a750a:  add    $0x60,%rsi
80.716	80.716	       [ 774]   5a750e:  add    %r14,%r9
144.221	144.221	       [ 777]   5a7511:  mulpd  %xmm0,%xmm1
129.631	129.631	       [ 777]   5a7515:  shufpd $0x1,%xmm0,%xmm0
140.618	140.618	       [ 777]   5a751a:  mulpd  %xmm3,%xmm0
181.897	181.897	       [ 777]   5a751e:  movapd %xmm1,%xmm2
88.932	88.932	       [ 777]   5a7522:  subpd  %xmm0,%xmm2
309.537	309.537	       [ 777]   5a7526:  addpd  %xmm1,%xmm0
259.762	259.762	       [ 777]   5a752a:  movsd  %xmm2,%xmm0
397.858	397.858	       [ 777]   5a752e:  addpd  -0x60(%rsi),%xmm0
422.385	422.385	       [ 777]   5a7533:  movaps %xmm0,-0x60(%rsi)
335.605	335.605	       [ 777]   5a7537:  cmp    %edi,%r15d
108.516	108.516	       [ 777]   5a753a:  jne    .-0x3c [ 0x5a74fe ]
0.931	0.931	       [ 774]   5a753c:  add    %r12,%r11
84.089	84.089	       [ 774]   5a753f:  add    $0x30,%r8
44.481	44.481	       [ 774]   5a7543:  cmp    %r15d,%r13d
60.132	60.132	       [ 774]   5a7546:  jl     .-0x56 [ 0x5a74f0 ]
0.   	0.   	       [ 774]   5a7548:  mov    -0x430(%rbp),%r9
145.822	145.822	       [ 768]   5a754f:  add    $0x1,%rax
7.565	7.565	       [ 768]   5a7553:  add    -0x438(%rbp),%rcx
22.676	22.676	       [ 768]   5a755a:  add    $0x10,%r9
0.520	0.520	       [ 768]   5a755e:  cmp    %rbx,%rax
5.454	5.454	       [ 768]   5a7561:  jne    .-0xb1 [ 0x5a74b0 ]
0.020	0.020	       [ 774]   5a7567:  mov    -0x4b8(%rbp),%rdi
1.441	1.441	       [ 774]   5a756e:  mov    %rdx,%r13
44.131	44.131	       [ 774]   5a7571:  mov    -0x4b0(%rbp),%rdx
0.110	0.110	       [ 766]   5a7578:  add    $0x30,%rdi
43.240	43.240	       [ 766]   5a757c:  add    $0x1,%rdx
0.040	0.040	       [ 766]   5a7580:  cmp    -0x508(%rbp),%rdx
8.176	8.176	       [ 766]   5a7587:  jne    .-0x165 [ 0x5a7422 ]
0.   	0.   	       [ 766]   5a758d:  mov    -0x578(%rbp),%r8
1.241	1.241	       [ 766]   5a7594:  jmp    .-0x9aa [ 0x5a6bea ]
0.   	0.   	       [ 766]   5a7599:  mov    $0x1,%edi
0.   	0.   	       [ 706]   5a759e:  xor    %r13d,%r13d
0.   	0.   	       [ 706]   5a75a1:  jmp    .-0x208e [ 0x5a5513 ]
0.   	0.   	       [ 699]   5a75a6:  mov    $0x1,%edi
0.   	0.   	       [ 699]   5a75ab:  call   malloc@plt [ 0x4068b0, .-0x1a0cfb]
0.   	0.   	       [ 699]   5a75b0:  mov    %rax,-0x488(%rbp)
0.   	0.   	       [ 699]   5a75b7:  test   %rax,%rax
0.   	0.   	       [ 699]   5a75ba:  je     .+0x8f [ 0x5a7649 ]
0.   	0.   	       [ 703]   5a75c0:  mov    $0x1,%edi
0.   	0.   	       [ 703]   5a75c5:  call   malloc@plt [ 0x4068b0, .-0x1a0d15]
0.   	0.   	       [ 703]   5a75ca:  mov    %rax,-0x4c0(%rbp)
0.   	0.   	       [ 703]   5a75d1:  test   %rax,%rax
0.   	0.   	       [ 703]   5a75d4:  je     .+0x4c [ 0x5a7620 ]
0.   	0.   	       [ 699]   5a75d6:  movslq -0x458(%rbp),%rax
0.   	0.   	       [ 700]   5a75dd:  xor    %r12d,%r12d
0.   	0.   	       [ 704]   5a75e0:  xor    %r13d,%r13d
0.   	0.   	       [ 704]   5a75e3:  xor    %r15d,%r15d
0.   	0.   	       [ 699]   5a75e6:  mov    $0x1,%edi
0.   	0.   	       [ 699]   5a75eb:  mov    %rax,-0x430(%rbp)
0.   	0.   	       [ 699]   5a75f2:  jmp    .-0x212e [ 0x5a54c4 ]
0.   	0.   	       [ 598]   5a75f7:  xor    %edx,%edx
0.   	0.   	       [ 598]   5a75f9:  mov    $0x874779,%esi
0.   	0.   	       [ 598]   5a75fe:  mov    $0x8e60c8,%edi
0.   	0.   	       [ 598]   5a7603:  xor    %eax,%eax
0.   	0.   	       [ 598]   5a7605:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a1165]
0.   	0.   	       [ 599]   5a760a:  mov    -0x438(%rbp),%rdx
0.   	0.   	       [ 599]   5a7611:  mov    $0x874779,%esi
0.   	0.   	       [ 599]   5a7616:  mov    $0x8e6170,%edi
0.   	0.   	       [ 599]   5a761b:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a117b]
0.   	0.   	       [ 703]   5a7620:  xor    %r12d,%r12d
0.   	0.   	       [ 703]   5a7623:  mov    %r12,%rdx
0.   	0.   	       [ 703]   5a7626:  mov    $0x874779,%esi
0.   	0.   	       [ 703]   5a762b:  mov    $0x8e62c0,%edi
0.   	0.   	       [ 703]   5a7630:  xor    %eax,%eax
0.   	0.   	       [ 703]   5a7632:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a1192]
0.   	0.   	       [ 704]   5a7637:  mov    %r15,%rdx
0.   	0.   	       [ 704]   5a763a:  mov    $0x874779,%esi
0.   	0.   	       [ 704]   5a763f:  mov    $0x8e6368,%edi
0.   	0.   	       [ 704]   5a7644:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a11a4]
0.   	0.   	       [ 699]   5a7649:  xor    %r12d,%r12d
0.   	0.   	       [ 699]   5a764c:  mov    %r12,%rdx
0.   	0.   	       [ 699]   5a764f:  mov    $0x874779,%esi
0.   	0.   	       [ 699]   5a7654:  mov    $0x8e6218,%edi
0.   	0.   	       [ 699]   5a7659:  xor    %eax,%eax
0.   	0.   	       [ 699]   5a765b:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a11bb]
0.   	0.   	       [ 705]   5a7660:  mov    %r15,%rdx
0.   	0.   	       [ 705]   5a7663:  mov    $0x874779,%esi
0.   	0.   	       [ 705]   5a7668:  mov    $0x8e6410,%edi
0.   	0.   	       [ 705]   5a766d:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a11cd]
0.   	0.   	       [ 706]   5a7672:  mov    %r13,%rdx
0.   	0.   	       [ 706]   5a7675:  mov    $0x874779,%esi
0.   	0.   	       [ 706]   5a767a:  mov    $0x8e64b8,%edi
0.   	0.   	       [ 706]   5a767f:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a11df]
0.   	0.   	       [1139]   5a7684:  mov    -0x570(%rbp),%rdx
0.   	0.   	       [1139]   5a768b:  mov    $0x874779,%esi
0.   	0.   	       [1139]   5a7690:  mov    $0x8e6560,%edi
0.   	0.   	       [1139]   5a7695:  xor    %eax,%eax
0.   	0.   	       [1139]   5a7697:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a11f7]
0.   	0.   	       [1140]   5a769c:  mov    -0x570(%rbp),%rdx
0.   	0.   	       [1140]   5a76a3:  mov    $0x874779,%esi
0.   	0.   	       [1140]   5a76a8:  mov    $0x8e6608,%edi
0.   	0.   	       [1140]   5a76ad:  xor    %eax,%eax
0.   	0.   	       [1140]   5a76af:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a120f]
0.   	0.   	       [1173]   5a76b4:  mov    $0x8e16a1,%edx
0.   	0.   	       [1173]   5a76b9:  mov    $0x874688,%esi
0.   	0.   	       [1173]   5a76be:  mov    $0x8e66b0,%edi
0.   	0.   	       [1173]   5a76c3:  xor    %eax,%eax
0.   	0.   	       [1173]   5a76c5:  call   _gfortran_runtime_error_at@plt [ 0x406700, .-0x1a0fc5]
0.   	0.   	       [1174]   5a76ca:  mov    $0x8e168e,%edx
0.   	0.   	       [1174]   5a76cf:  mov    $0x874688,%esi
0.   	0.   	       [1174]   5a76d4:  mov    $0x8e6750,%edi
0.   	0.   	       [1174]   5a76d9:  xor    %eax,%eax
0.   	0.   	       [1174]   5a76db:  call   _gfortran_runtime_error_at@plt [ 0x406700, .-0x1a0fdb]