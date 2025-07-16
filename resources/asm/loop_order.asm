0.   	0.   	       <Function: __m_matrix_utils_MOD_hdg_build_quadrature_int_2d>
0.   	0.   	       [ 519]   5a3ac0:  push   %rbp
0.   	0.   	       [ 519]   5a3ac1:  mov    %rsp,%rbp
0.   	0.   	       [ 519]   5a3ac4:  push   %r15
0.   	0.   	       [ 519]   5a3ac6:  push   %r14
0.   	0.   	       [ 519]   5a3ac8:  push   %r13
0.   	0.   	       [ 519]   5a3aca:  push   %r12
0.   	0.   	       [ 519]   5a3acc:  push   %rbx
0.   	0.   	       [ 519]   5a3acd:  sub    $0x518,%rsp
0.   	0.030	       [ 519]   5a3ad4:  call   mcount@plt [ 0x4068c0, .-0x19d214]
0.   	0.   	       [ 580]   5a3ad9:  mov    0x48(%rbp),%rax
0.   	0.   	       [ 584]   5a3add:  mov    0xa38(%rdi),%r13d
0.   	0.   	       [ 519]   5a3ae4:  mov    0x18(%rbp),%r15
0.   	0.   	       [ 519]   5a3ae8:  mov    0x30(%rbp),%r14
0.   	0.   	       [ 580]   5a3aec:  movl   $0x0,(%rax)
0.   	0.   	       [ 584]   5a3af2:  test   %r13d,%r13d
0.   	0.   	       [ 584]   5a3af5:  je     .+0x1855 [ 0x5a534a ]
0.   	0.   	       [ 598]   5a3afb:  mov    0xa3c(%rdi),%r12d
0.   	0.   	       [ 598]   5a3b02:  xor    %eax,%eax
0.   	0.   	       [ 598]   5a3b04:  mov    %r9,-0x410(%rbp)
0.   	0.   	       [ 598]   5a3b0b:  mov    %r8,-0x4f0(%rbp)
0.   	0.   	       [ 598]   5a3b12:  test   %r12d,%r12d
0.   	0.   	       [ 598]   5a3b15:  mov    %rcx,-0x408(%rbp)
0.   	0.   	       [ 598]   5a3b1c:  cmovns %r12d,%eax
0.   	0.   	       [ 598]   5a3b20:  mov    %rdx,-0x450(%rbp)
0.   	0.   	       [ 598]   5a3b27:  mov    %rsi,-0x3e8(%rbp)
0.   	0.   	       [ 598]   5a3b2e:  mov    %rdi,-0x3c8(%rbp)
0.   	0.   	       [ 598]   5a3b35:  movslq %eax,%rbx
0.   	0.   	       [ 598]   5a3b38:  jle    .+0x189f [ 0x5a53d7 ]
0.   	0.   	       [ 598]   5a3b3e:  lea    (%rbx,%rbx,8),%rdx
0.   	0.   	       [ 598]   5a3b42:  shl    $0x4,%rdx
0.   	0.   	       [ 598]   5a3b46:  mov    %rdx,%rdi
0.   	0.   	       [ 598]   5a3b49:  mov    %rdx,-0x3d0(%rbp)
0.   	0.040	       [ 598]   5a3b50:  call   malloc@plt [ 0x4068b0, .-0x19d2a0]
0.   	0.   	       [ 598]   5a3b55:  mov    -0x3d0(%rbp),%rdx
0.   	0.   	       [ 598]   5a3b5c:  test   %rax,%rax
0.   	0.   	       [ 598]   5a3b5f:  mov    %rax,-0x428(%rbp)
0.   	0.   	       [ 598]   5a3b66:  je     .+0x3759 [ 0x5a72bf ]
0.   	0.   	       [ 598]   5a3b6c:  movslq %r12d,%rax
0.   	0.   	       [ 599]   5a3b6f:  lea    0x0(,%rbx,8),%rdx
0.   	0.   	       [ 598]   5a3b77:  mov    %rax,-0x3d8(%rbp)
0.   	0.   	       [ 599]   5a3b7e:  mov    %rdx,%rdi
0.   	0.   	       [ 599]   5a3b81:  mov    %rdx,-0x3d0(%rbp)
0.   	0.050	       [ 599]   5a3b88:  call   malloc@plt [ 0x4068b0, .-0x19d2d8]
0.   	0.   	       [ 599]   5a3b8d:  mov    -0x3d0(%rbp),%rdx
0.   	0.   	       [ 599]   5a3b94:  test   %rax,%rax
0.   	0.   	       [ 599]   5a3b97:  mov    %rax,-0x430(%rbp)
0.   	0.   	       [ 599]   5a3b9e:  je     .+0x3732 [ 0x5a72d0 ]
0.   	0.   	       [ 598]   5a3ba4:  lea    (%rbx,%rbx,2),%rax
0.   	0.   	       [ 601]   5a3ba8:  mov    $0xffffffffffffffff,%rdx
0.   	0.   	       [ 601]   5a3baf:  mov    -0x428(%rbp),%rdi
0.   	0.   	       [ 598]   5a3bb6:  mov    %rax,-0x400(%rbp)
0.   	0.   	       [ 601]   5a3bbd:  mov    -0x3d8(%rbp),%rax
0.010	0.010	       [ 601]   5a3bc4:  sub    $0x1,%rax
0.   	0.   	       [ 601]   5a3bc8:  cmovs  %rdx,%rax
0.   	0.   	       [ 601]   5a3bcc:  xor    %esi,%esi
0.   	0.   	       [ 601]   5a3bce:  add    $0x1,%rax
0.   	0.   	       [ 601]   5a3bd2:  lea    0x0(,%rax,8),%rcx
0.   	0.   	       [ 601]   5a3bda:  add    %rcx,%rax
0.   	0.   	       [ 601]   5a3bdd:  mov    %rcx,-0x3d0(%rbp)
0.   	0.   	       [ 601]   5a3be4:  shl    $0x4,%rax
0.   	0.   	       [ 601]   5a3be8:  mov    %rax,%rdx
0.   	0.070	       [ 601]   5a3beb:  call   memset@plt [ 0x405fd0, .-0x19dc1b]
0.   	0.   	       [ 602]   5a3bf0:  mov    -0x430(%rbp),%rdi
0.   	0.   	       [ 602]   5a3bf7:  mov    -0x3d0(%rbp),%rdx
0.   	0.   	       [ 602]   5a3bfe:  xor    %esi,%esi
0.   	0.010	       [ 602]   5a3c00:  call   memset@plt [ 0x405fd0, .-0x19dc30]
0.   	0.   	       [ 604]   5a3c05:  mov    -0x3e8(%rbp),%r13
0.   	0.   	       [ 604]   5a3c0c:  mov    -0x408(%rbp),%rdi
0.   	0.   	       [ 604]   5a3c13:  mov    0x6f0(%r13),%rax
0.   	0.   	       [ 604]   5a3c1a:  mov    0x778(%r13),%rcx
0.   	0.   	       [ 604]   5a3c21:  movslq (%rdi),%rdi
0.   	0.   	       [ 604]   5a3c24:  mov    %rax,-0x4a0(%rbp)
0.   	0.   	       [ 604]   5a3c2b:  mov    0x6f8(%r13),%rax
0.   	0.   	       [ 604]   5a3c32:  mov    %rcx,-0x498(%rbp)
0.   	0.   	       [ 604]   5a3c39:  mov    %rax,-0x4a8(%rbp)
0.   	0.   	       [ 604]   5a3c40:  mov    0x720(%r13),%rax
0.   	0.   	       [ 604]   5a3c47:  mov    %rdi,-0x3f0(%rbp)
0.   	0.   	       [ 604]   5a3c4e:  mov    %rax,-0x460(%rbp)
0.   	0.   	       [ 604]   5a3c55:  mov    0x748(%r13),%rax
0.   	0.   	       [ 604]   5a3c5c:  mov    %rax,-0x490(%rbp)
0.   	0.   	       [ 604]   5a3c63:  mov    0x750(%r13),%rax
0.   	0.   	       [ 604]   5a3c6a:  mov    %rax,-0x3d0(%rbp)
0.   	0.   	       [ 604]   5a3c71:  mov    0x780(%r13),%rax
0.   	0.   	       [ 604]   5a3c78:  sub    %rcx,%rax
0.010	0.010	       [ 604]   5a3c7b:  lea    0x1(%rax),%rcx
0.   	0.   	       [ 604]   5a3c7f:  mov    %rax,-0x3e0(%rbp)
0.   	0.   	       [ 604]   5a3c86:  mov    %rcx,-0x480(%rbp)
0.   	0.   	       [ 604]   5a3c8d:  jns    .+0x17d3 [ 0x5a5460 ]
0.   	0.   	       [ 604]   5a3c93:  mov    $0x1,%edi
0.   	0.   	       [ 604]   5a3c98:  call   malloc@plt [ 0x4068b0, .-0x19d3e8]
0.   	0.   	       [ 604]   5a3c9d:  mov    -0x3d0(%rbp),%rsi
0.   	0.   	       [ 604]   5a3ca4:  movq   $0x1,-0x4b0(%rbp)
0.   	0.   	       [ 604]   5a3caf:  mov    %rax,%rdi
0.   	0.   	       [ 604]   5a3cb2:  mov    -0x3f0(%rbp),%rax
0.   	0.   	       [ 604]   5a3cb9:  imul   0x788(%r13),%rax
0.   	0.   	       [ 604]   5a3cc1:  add    %rax,%rsi
0.   	0.   	       [ 604]   5a3cc4:  mov    %rsi,-0x488(%rbp)
0.   	0.   	       [ 604]   5a3ccb:  mov    -0x3e8(%rbp),%rax
0.   	0.   	       [ 604]   5a3cd2:  mov    -0x4a0(%rbp),%r8
0.   	0.   	       [ 604]   5a3cd9:  mov    %rdi,%rcx
0.   	0.   	       [ 604]   5a3cdc:  lea    -0x350(%rbp),%rdx
0.   	0.   	       [ 604]   5a3ce3:  mov    0x730(%rax),%rsi
0.   	0.   	       [ 604]   5a3cea:  movslq (%rcx),%rax
0.   	0.   	       [ 604]   5a3ced:  add    $0x10,%rdx
0.   	0.   	       [ 604]   5a3cf1:  add    $0x4,%rcx
0.   	0.   	       [ 604]   5a3cf5:  imul   %rsi,%rax
0.   	0.   	       [ 604]   5a3cf9:  add    -0x4a8(%rbp),%rax
0.   	0.   	       [ 604]   5a3d00:  add    -0x460(%rbp),%rax
0.020	0.020	       [ 604]   5a3d07:  movupd (%r8,%rax,8),%xmm0
0.020	0.020	       [ 604]   5a3d0d:  lea    -0x320(%rbp),%rax
0.   	0.   	       [ 604]   5a3d14:  movaps %xmm0,-0x10(%rdx)
0.   	0.   	       [ 604]   5a3d18:  cmp    %rax,%rdx
0.   	0.   	       [ 604]   5a3d1b:  jne    .-0x31 [ 0x5a3cea ]
0.   	0.010	       [ 604]   5a3d1d:  call   free@plt [ 0x405db0, .-0x19df6d]
0.   	0.   	       [ 612]   5a3d22:  test   %r12d,%r12d
0.   	0.   	       [ 612]   5a3d25:  jle    .+0x543 [ 0x5a4268 ]
0.   	0.   	       [ 615]   5a3d2b:  mov    -0x3c8(%rbp),%rsi
0.   	0.   	       [ 615]   5a3d32:  movapd -0x350(%rbp),%xmm7
0.   	0.   	       [ 612]   5a3d3a:  movl   $0x1,-0x3d0(%rbp)
0.   	0.   	       [ 615]   5a3d44:  mov    0x550(%rsi),%rdi
0.   	0.   	       [ 615]   5a3d4b:  mov    0x558(%rsi),%rax
0.   	0.   	       [ 615]   5a3d52:  movaps %xmm7,-0x470(%rbp)
0.   	0.   	       [ 615]   5a3d59:  mov    0x570(%rsi),%r13
0.   	0.   	       [ 615]   5a3d60:  mov    0x568(%rsi),%r11
0.   	0.   	       [ 615]   5a3d67:  mov    %rax,-0x418(%rbp)
0.   	0.   	       [ 615]   5a3d6e:  sub    %rdi,%rax
0.   	0.   	       [ 615]   5a3d71:  lea    0x1(%rax),%rcx
0.   	0.   	       [ 619]   5a3d75:  mov    %rbx,%rax
0.   	0.   	       [ 615]   5a3d78:  mov    %rdi,-0x478(%rbp)
0.   	0.   	       [ 619]   5a3d7f:  neg    %rax
0.   	0.   	       [ 619]   5a3d82:  sub    -0x400(%rbp),%rax
0.   	0.   	       [ 615]   5a3d89:  mov    %rcx,-0x420(%rbp)
0.   	0.   	       [ 619]   5a3d90:  mov    %rax,-0x4b8(%rbp)
0.   	0.   	       [ 615]   5a3d97:  mov    0x520(%rsi),%rax
0.   	0.   	       [ 615]   5a3d9e:  mov    %rax,-0x4c0(%rbp)
0.   	0.   	       [ 615]   5a3da5:  mov    -0x3f0(%rbp),%rax
0.   	0.   	       [ 615]   5a3dac:  imul   0x578(%rsi),%rax
0.   	0.   	       [ 615]   5a3db4:  add    0x528(%rsi),%rax
0.   	0.   	       [ 615]   5a3dbb:  mov    %rax,-0x4c8(%rbp)
0.   	0.   	       [ 615]   5a3dc2:  mov    %r13,%rax
0.   	0.   	       [ 615]   5a3dc5:  sub    %r11,%rax
0.   	0.   	       [ 615]   5a3dc8:  add    $0x1,%rax
0.   	0.   	       [ 615]   5a3dcc:  imul   %rcx,%rax
0.   	0.   	       [ 615]   5a3dd0:  lea    0x0(,%rax,8),%r10
0.   	0.   	       [ 615]   5a3dd8:  mov    $0x1,%eax
0.   	0.   	       [ 615]   5a3ddd:  test   %r10,%r10
0.   	0.   	       [ 615]   5a3de0:  cmove  %rax,%r10
0.   	0.   	       [ 615]   5a3de4:  mov    0xa80(%rsi),%rax
0.   	0.   	       [ 615]   5a3deb:  lea    0x0(,%rax,8),%rdx
0.   	0.   	       [ 615]   5a3df3:  add    0xa48(%rsi),%rax
0.   	0.   	       [ 615]   5a3dfa:  add    0xa70(%rsi),%rax
0.   	0.   	       [ 615]   5a3e01:  mov    %rdx,-0x4d0(%rbp)
0.   	0.   	       [ 615]   5a3e08:  mov    0xa40(%rsi),%rdx
0.   	0.   	       [ 615]   5a3e0f:  lea    (%rdx,%rax,8),%rsi
0.   	0.   	       [ 615]   5a3e13:  mov    -0x430(%rbp),%rax
0.   	0.   	       [ 615]   5a3e1a:  mov    %rax,-0x438(%rbp)
0.   	0.   	       [ 615]   5a3e21:  mov    -0x428(%rbp),%rax
0.   	0.   	       [ 615]   5a3e28:  mov    %rax,-0x440(%rbp)
0.   	0.   	       [ 615]   5a3e2f:  lea    0x0(,%rcx,8),%rax
0.   	0.   	       [ 615]   5a3e37:  mov    %rax,-0x3f8(%rbp)
0.   	0.   	       [ 615]   5a3e3e:  mov    %rdi,%rax
0.   	0.   	       [ 615]   5a3e41:  neg    %rax
0.   	0.   	       [ 615]   5a3e44:  shl    $0x3,%rax
0.   	0.   	       [ 615]   5a3e48:  mov    %rax,-0x4d8(%rbp)
0.   	0.   	       [ 615]   5a3e4f:  lea    -0xc0(%rbp),%rax
0.   	0.   	       [ 615]   5a3e56:  mov    %rax,-0x458(%rbp)
0.   	0.   	       [ 615]   5a3e5d:  lea    -0x120(%rbp),%rax
0.   	0.   	       [ 615]   5a3e64:  mov    %rax,-0x448(%rbp)
0.   	0.   	       [ 615]   5a3e6b:  lea    -0x180(%rbp),%rax
0.   	0.   	       [ 615]   5a3e72:  mov    %rax,-0x4e0(%rbp)
0.   	0.   	       [ 615]   5a3e79:  lea    0x1(%r13),%rax
0.   	0.   	       [ 615]   5a3e7d:  sub    %r11,%rax
0.   	0.   	       [ 619]   5a3e80:  mov    %r10,-0x4f8(%rbp)
0.   	0.   	       [ 619]   5a3e87:  mov    %rax,-0x4e8(%rbp)
0.   	0.   	       [ 619]   5a3e8e:  mov    %r15,0x18(%rbp)
0.   	0.   	       [ 619]   5a3e92:  mov    %r11,%r15
0.   	0.   	       [ 619]   5a3e95:  mov    %r14,0x30(%rbp)
0.   	0.   	       [ 619]   5a3e99:  mov    %rsi,%r14
0.   	0.   	       [ 613]   5a3e9c:  movsd  (%r14),%xmm0
0.050	0.050	       [ 615]   5a3ea1:  mov    -0x4f8(%rbp),%rdi
0.   	0.   	       [ 613]   5a3ea8:  movsd  %xmm0,-0x390(%rbp)
0.   	0.   	       [ 613]   5a3eb0:  movsd  0x8(%r14),%xmm0
0.   	0.   	       [ 613]   5a3eb6:  movsd  %xmm0,-0x388(%rbp)
0.   	0.050	       [ 615]   5a3ebe:  call   malloc@plt [ 0x4068b0, .-0x19d60e]
0.   	0.   	       [ 615]   5a3ec3:  mov    %rax,%rdi
0.   	0.   	       [ 615]   5a3ec6:  cmp    %r15,%r13
0.   	0.   	       [ 615]   5a3ec9:  jl     .+0xa1 [ 0x5a3f6a ]
0.   	0.   	       [ 615]   5a3ecf:  mov    -0x3c8(%rbp),%rax
0.   	0.   	       [ 615]   5a3ed6:  mov    -0x4c0(%rbp),%rsi
0.   	0.   	       [ 615]   5a3edd:  xor    %r9d,%r9d
0.   	0.   	       [ 615]   5a3ee0:  mov    0x560(%rax),%rax
0.   	0.   	       [ 615]   5a3ee7:  lea    0x0(,%rax,8),%r8
0.   	0.   	       [ 615]   5a3eef:  imul   %r15,%rax
0.010	0.010	       [ 615]   5a3ef3:  add    -0x4c8(%rbp),%rax
0.   	0.   	       [ 615]   5a3efa:  lea    (%rsi,%rax,8),%rcx
0.   	0.   	       [ 615]   5a3efe:  mov    -0x4d8(%rbp),%rax
0.   	0.   	       [ 615]   5a3f05:  lea    (%rdi,%rax,1),%rdx
0.   	0.   	       [ 615]   5a3f09:  mov    -0x418(%rbp),%rax
0.   	0.   	       [ 615]   5a3f10:  lea    0x1(%rax),%rsi
0.   	0.   	       [ 615]   5a3f14:  mov    -0x478(%rbp),%r10
0.   	0.   	       [ 615]   5a3f1b:  mov    %r10,%rax
0.   	0.   	       [ 615]   5a3f1e:  cmp    %r10,-0x418(%rbp)
0.   	0.   	       [ 615]   5a3f25:  jl     .+0x2e [ 0x5a3f53 ]
0.   	0.   	       [ 615]   5a3f27:  nopl   0x0(%rax,%rax,1)
0.   	0.   	       [ 615]   5a3f2c:  cs nopw 0x0(%rax,%rax,1)
0.   	0.   	       [ 615]   5a3f36:  cs nopw 0x0(%rax,%rax,1)
0.010	0.010	       [ 615]   5a3f40:  movsd  (%rcx,%rax,8),%xmm0
0.010	0.010	       [ 615]   5a3f45:  movsd  %xmm0,(%rdx,%rax,8)
0.030	0.030	       [ 615]   5a3f4a:  add    $0x1,%rax
0.020	0.020	       [ 615]   5a3f4e:  cmp    %rsi,%rax
0.   	0.   	       [ 615]   5a3f51:  jne    .-0x11 [ 0x5a3f40 ]
0.   	0.   	       [ 615]   5a3f53:  add    $0x1,%r9
0.   	0.   	       [ 615]   5a3f57:  add    %r8,%rcx
0.   	0.   	       [ 615]   5a3f5a:  add    -0x3f8(%rbp),%rdx
0.   	0.   	       [ 615]   5a3f61:  cmp    -0x4e8(%rbp),%r9
0.   	0.   	       [ 615]   5a3f68:  jne    .-0x54 [ 0x5a3f14 ]
0.   	0.   	       [ 615]   5a3f6a:  pxor   %xmm0,%xmm0
0.   	0.   	       [ 615]   5a3f6e:  lea    -0x8(%rdi),%rdx
0.   	0.   	       [ 615]   5a3f72:  lea    -0x390(%rbp),%rax
0.   	0.   	       [ 615]   5a3f79:  movaps %xmm0,-0x3a0(%rbp)
0.   	0.   	       [ 615]   5a3f80:  cmpq   $0x0,-0x420(%rbp)
0.   	0.   	       [ 615]   5a3f88:  jle    .+0x1488 [ 0x5a5410 ]
0.   	0.   	       [ 615]   5a3f8e:  movsd  -0x3a0(%rbp),%xmm1
0.   	0.   	       [ 615]   5a3f96:  movsd  0x8(%rdx),%xmm2
0.   	0.   	       [ 615]   5a3f9b:  movsd  (%rax),%xmm0
0.   	0.   	       [ 615]   5a3f9f:  mulsd  %xmm0,%xmm2
0.   	0.   	       [ 615]   5a3fa3:  addsd  %xmm2,%xmm1
0.   	0.   	       [ 615]   5a3fa7:  movsd  %xmm1,-0x3a0(%rbp)
0.010	0.010	       [ 615]   5a3faf:  cmpq   $0x1,-0x420(%rbp)
0.   	0.   	       [ 615]   5a3fb7:  jle    .+0x17 [ 0x5a3fce ]
0.   	0.   	       [ 615]   5a3fb9:  mulsd  0x10(%rdx),%xmm0
0.   	0.   	       [ 615]   5a3fbe:  addsd  -0x398(%rbp),%xmm0
0.020	0.020	       [ 615]   5a3fc6:  movsd  %xmm0,-0x398(%rbp)
0.010	0.010	       [ 615]   5a3fce:  add    $0x8,%rax
0.   	0.   	       [ 615]   5a3fd2:  lea    -0x380(%rbp),%rsi
0.   	0.   	       [ 615]   5a3fd9:  add    -0x3f8(%rbp),%rdx
0.   	0.   	       [ 615]   5a3fe0:  cmp    %rsi,%rax
0.   	0.   	       [ 615]   5a3fe3:  jne    .-0x4d [ 0x5a3f96 ]
0.   	0.   	       [ 615]   5a3fe5:  test   %rdi,%rdi
0.   	0.   	       [ 615]   5a3fe8:  je     .+0x7 [ 0x5a3fef ]
0.   	0.040	       [ 615]   5a3fea:  call   free@plt [ 0x405db0, .-0x19e23a]
0.   	0.   	       [ 617]   5a3fef:  movdqa 0x2d1739(%rip),%xmm7        # 0x2d1741
0.   	0.   	       [ 615]   5a3ff7:  movapd -0x470(%rbp),%xmm0
0.   	0.   	       [ 617]   5a3fff:  sub    $0x8,%rsp
0.   	0.   	       [ 617]   5a4003:  lea    -0x390(%rbp),%rax
0.   	0.   	       [ 615]   5a400a:  addpd  -0x3a0(%rbp),%xmm0
0.040	0.040	       [ 617]   5a4012:  mov    %rax,-0x120(%rbp)
0.   	0.   	       [ 617]   5a4019:  lea    -0x3a0(%rbp),%rsi
0.   	0.   	       [ 617]   5a4020:  movabs $0x30100000000,%rax
0.   	0.   	       [ 617]   5a402a:  movaps %xmm7,-0x100(%rbp)
0.   	0.   	       [ 617]   5a4031:  movdqa 0x2d69c7(%rip),%xmm7        # 0x2d69cf
0.010	0.010	       [ 617]   5a4039:  mov    %rax,-0x108(%rbp)
0.   	0.   	       [ 617]   5a4040:  movaps %xmm7,-0xf0(%rbp)
0.   	0.   	       [ 617]   5a4047:  movdqa 0x2d16e1(%rip),%xmm7        # 0x2d16e9
0.   	0.   	       [ 617]   5a404f:  mov    %rax,-0xa8(%rbp)
0.   	0.   	       [ 617]   5a4056:  movaps %xmm7,-0xa0(%rbp)
0.   	0.   	       [ 617]   5a405d:  movdqa 0x2d699b(%rip),%xmm7        # 0x2d69a3
0.   	0.   	       [ 615]   5a4065:  movaps %xmm0,-0x3a0(%rbp)
0.   	0.   	       [ 617]   5a406c:  movaps %xmm7,-0x90(%rbp)
0.   	0.   	       [ 617]   5a4073:  mov    %rsi,-0xc0(%rbp)
0.   	0.   	       [ 617]   5a407a:  mov    $0x8e66c8,%esi
0.   	0.   	       [ 617]   5a407f:  movq   $0xffffffffffffffff,-0x118(%rbp)
0.   	0.   	       [ 617]   5a408a:  movq   $0x8,-0x110(%rbp)
0.   	0.   	       [ 617]   5a4095:  movq   $0xffffffffffffffff,-0xb8(%rbp)
0.   	0.   	       [ 617]   5a40a0:  movq   $0x8,-0xb0(%rbp)
0.   	0.   	       [ 617]   5a40ab:  push   $0x0
0.   	0.   	       [ 617]   5a40ad:  push   $0x3
0.   	0.   	       [ 617]   5a40af:  push   $0x0
0.   	0.   	       [ 617]   5a40b1:  push   0x48(%rbp)
0.010	0.010	       [ 617]   5a40b4:  push   -0x438(%rbp)
0.   	0.   	       [ 617]   5a40ba:  mov    -0x410(%rbp),%r9
0.   	0.   	       [ 617]   5a40c1:  mov    -0x458(%rbp),%r8
0.   	0.   	       [ 617]   5a40c8:  mov    -0x448(%rbp),%rcx
0.   	0.   	       [ 617]   5a40cf:  mov    -0x408(%rbp),%rdx
0.   	0.   	       [ 617]   5a40d6:  mov    -0x450(%rbp),%rdi
0.010	6.575	       [ 617]   5a40dd:  call   __m_model_eval_MOD_model_eval_raw_solo [ 0x54a290, .-0x59e4d]
0.   	0.   	       [ 619]   5a40e2:  lea    -0x390(%rbp),%r10
0.   	0.   	       [ 619]   5a40e9:  add    $0x28,%rsp
0.   	0.   	       [ 619]   5a40ed:  movdqa 0x2d163b(%rip),%xmm7        # 0x2d1643
0.   	0.   	       [ 619]   5a40f5:  movabs $0x30100000000,%rax
0.   	0.   	       [ 619]   5a40ff:  mov    %r10,-0x180(%rbp)
0.   	0.   	       [ 619]   5a4106:  lea    -0x3a0(%rbp),%r10
0.   	0.   	       [ 619]   5a410d:  movaps %xmm7,-0x160(%rbp)
0.   	0.   	       [ 619]   5a4114:  movdqa 0x2d68e4(%rip),%xmm7        # 0x2d68ec
0.   	0.   	       [ 619]   5a411c:  mov    %rax,-0x168(%rbp)
0.   	0.   	       [ 619]   5a4123:  mov    %rax,-0x108(%rbp)
0.   	0.   	       [ 619]   5a412a:  movabs $0x40200000000,%rax
0.   	0.   	       [ 619]   5a4134:  mov    %rax,-0xa8(%rbp)
0.   	0.   	       [ 619]   5a413b:  mov    -0x400(%rbp),%rax
0.   	0.   	       [ 619]   5a4142:  movaps %xmm7,-0x150(%rbp)
0.   	0.   	       [ 619]   5a4149:  movdqa 0x2d15df(%rip),%xmm7        # 0x2d15e7
0.   	0.   	       [ 619]   5a4151:  mov    %r10,-0x120(%rbp)
0.   	0.   	       [ 619]   5a4158:  mov    -0x4b8(%rbp),%r10
0.   	0.   	       [ 619]   5a415f:  mov    %rax,-0x80(%rbp)
0.   	0.   	       [ 619]   5a4163:  mov    -0x440(%rbp),%rax
0.   	0.   	       [ 619]   5a416a:  movaps %xmm7,-0x100(%rbp)
0.   	0.   	       [ 619]   5a4171:  movdqa 0x2d6887(%rip),%xmm7        # 0x2d688f
0.   	0.   	       [ 619]   5a4179:  mov    %r10,-0xb8(%rbp)
0.   	0.   	       [ 619]   5a4180:  mov    %rax,-0xc0(%rbp)
0.   	0.   	       [ 619]   5a4187:  movaps %xmm7,-0xf0(%rbp)
0.   	0.   	       [ 619]   5a418e:  movq   $0xffffffffffffffff,-0x178(%rbp)
0.   	0.   	       [ 619]   5a4199:  movq   $0x8,-0x170(%rbp)
0.   	0.   	       [ 619]   5a41a4:  movq   $0xffffffffffffffff,-0x118(%rbp)
0.   	0.   	       [ 619]   5a41af:  movq   $0x8,-0x110(%rbp)
0.010	0.010	       [ 619]   5a41ba:  movq   $0x10,-0xb0(%rbp)
0.   	0.   	       [ 619]   5a41c5:  movq   $0x10,-0xa0(%rbp)
0.   	0.   	       [ 619]   5a41d0:  movq   $0x1,-0x90(%rbp)
0.   	0.   	       [ 619]   5a41db:  movq   $0x3,-0x88(%rbp)
0.   	0.   	       [ 619]   5a41e6:  mov    %rbx,-0x98(%rbp)
0.   	0.   	       [ 619]   5a41ed:  movq   $0x1,-0x78(%rbp)
0.   	0.   	       [ 619]   5a41f5:  movq   $0x3,-0x70(%rbp)
0.   	0.   	       [ 619]   5a41fd:  push   0x48(%rbp)
0.   	0.   	       [ 619]   5a4200:  mov    -0x408(%rbp),%rsi
0.   	0.   	       [ 619]   5a4207:  mov    -0x458(%rbp),%r9
0.   	0.   	       [ 619]   5a420e:  mov    -0x410(%rbp),%r8
0.   	0.   	       [ 619]   5a4215:  mov    -0x448(%rbp),%rcx
0.   	0.   	       [ 619]   5a421c:  mov    -0x4e0(%rbp),%rdx
0.   	0.   	       [ 619]   5a4223:  mov    -0x450(%rbp),%rdi
0.   	11.228	       [ 619]   5a422a:  call   __m_model_eval_MOD_model_eval_s_solo [ 0x547280, .-0x5cfaa]
0.   	0.   	       [ 612]   5a422f:  addl   $0x1,-0x3d0(%rbp)
0.010	0.010	       [ 612]   5a4236:  mov    -0x3d0(%rbp),%esi
0.020	0.020	       [ 612]   5a423c:  addq   $0x8,-0x438(%rbp)
0.   	0.   	       [ 612]   5a4244:  add    -0x4d0(%rbp),%r14
0.   	0.   	       [ 612]   5a424b:  addq   $0x10,-0x440(%rbp)
0.   	0.   	       [ 612]   5a4253:  pop    %r10
0.   	0.   	       [ 612]   5a4255:  pop    %r11
0.   	0.   	       [ 612]   5a4257:  cmp    %esi,%r12d
0.   	0.   	       [ 612]   5a425a:  jge    .-0x3be [ 0x5a3e9c ]
0.   	0.   	       [ 619]   5a4260:  mov    0x18(%rbp),%r15
0.   	0.   	       [ 619]   5a4264:  mov    0x30(%rbp),%r14
0.   	0.   	       [ 622]   5a4268:  mov    0x48(%rbp),%rax
0.   	0.   	       [ 622]   5a426c:  mov    (%rax),%r12d
0.020	0.020	       [ 622]   5a426f:  test   %r12d,%r12d
0.   	0.   	       [ 622]   5a4272:  jne    .+0x11c7 [ 0x5a5439 ]
0.   	0.   	       [ 598]   5a4278:  mov    %rbx,%rax
0.   	0.   	       [ 630]   5a427b:  mov    -0x4f0(%rbp),%rdi
0.   	0.   	       [ 598]   5a4282:  not    %rax
0.   	0.   	       [ 598]   5a4285:  sub    -0x400(%rbp),%rax
0.   	0.   	       [ 598]   5a428c:  mov    %rax,-0x4c8(%rbp)
0.   	0.   	       [ 630]   5a4293:  mov    -0x3c8(%rbp),%rax
0.   	0.   	       [ 630]   5a429a:  movslq (%rdi),%rdi
0.   	0.   	       [ 630]   5a429d:  mov    0x738(%rax),%rsi
0.   	0.   	       [ 630]   5a42a4:  mov    0x740(%rax),%rax
0.   	0.   	       [ 630]   5a42ab:  mov    %rdi,-0x418(%rbp)
0.   	0.   	       [ 630]   5a42b2:  mov    %rax,-0x4e0(%rbp)
0.   	0.   	       [ 630]   5a42b9:  add    %rdi,%rax
0.   	0.   	       [ 635]   5a42bc:  mov    (%r15),%rdi
0.   	0.   	       [ 630]   5a42bf:  mov    (%rsi,%rax,4),%eax
0.010	0.010	       [ 630]   5a42c2:  mov    %rsi,-0x4d8(%rbp)
0.   	0.   	       [ 630]   5a42c9:  mov    %eax,-0x3f8(%rbp)
0.   	0.   	       [ 635]   5a42cf:  test   %rdi,%rdi
0.   	0.   	       [ 635]   5a42d2:  je     .+0x2fad [ 0x5a727f ]
0.   	0.   	       [ 635]   5a42d8:  mov    0x8(%r15),%r9
0.   	0.   	       [ 635]   5a42dc:  mov    0x30(%r15),%rax
0.   	0.   	       [ 635]   5a42e0:  mov    0x48(%r15),%r10
0.   	0.   	       [ 635]   5a42e4:  mov    -0x3c8(%rbp),%rsi
0.   	0.   	       [ 635]   5a42eb:  mov    %rsi,%rcx
0.   	0.   	       [ 635]   5a42ee:  mov    0xbf8(%rsi),%r11
0.030	0.030	       [ 635]   5a42f5:  mov    -0x418(%rbp),%rsi
0.   	0.   	       [ 635]   5a42fc:  add    0xc00(%rcx),%rsi
0.   	0.   	       [ 635]   5a4303:  imul   $0x70,%rsi,%rdx
0.   	0.   	       [ 635]   5a4307:  mov    %rsi,-0x440(%rbp)
0.   	0.   	       [ 635]   5a430e:  mov    %r11,-0x438(%rbp)
0.   	0.   	       [ 635]   5a4315:  lea    (%r11,%rdx,1),%r8
0.   	0.   	       [ 635]   5a4319:  mov    (%r8),%rsi
0.030	0.030	       [ 635]   5a431c:  mov    0x60(%r8),%rdx
0.   	0.   	       [ 635]   5a4320:  mov    0x30(%r8),%r12
0.   	0.   	       [ 635]   5a4324:  mov    0x50(%r8),%r11
0.   	0.   	       [ 635]   5a4328:  mov    %rsi,-0x4b8(%rbp)
0.   	0.   	       [ 635]   5a432f:  mov    0x8(%r8),%rsi
0.   	0.   	       [ 635]   5a4333:  mov    %rdx,-0x3d0(%rbp)
0.   	0.   	       [ 635]   5a433a:  mov    0x68(%r8),%rdx
0.   	0.   	       [ 635]   5a433e:  mov    %rsi,-0x4c0(%rbp)
0.   	0.   	       [ 635]   5a4345:  mov    0x38(%r8),%rsi
0.   	0.   	       [ 635]   5a4349:  mov    %rdx,-0x470(%rbp)
0.   	0.   	       [ 635]   5a4350:  mov    0x48(%r8),%rcx
0.   	0.   	       [ 635]   5a4354:  mov    0x58(%r8),%rdx
0.   	0.   	       [ 635]   5a4358:  mov    %rsi,-0x448(%rbp)
0.   	0.   	       [ 635]   5a435f:  sub    %r12,%rsi
0.   	0.   	       [ 635]   5a4362:  mov    %r11,-0x458(%rbp)
0.   	0.   	       [ 635]   5a4369:  sub    %rcx,%r11
0.   	0.   	       [ 635]   5a436c:  mov    %rdx,-0x4d0(%rbp)
0.   	0.   	       [ 635]   5a4373:  mov    %rsi,%rdx
0.   	0.   	       [ 635]   5a4376:  test   %rdi,%rdi
0.   	0.   	       [ 635]   5a4379:  je     .+0x10 [ 0x5a4389 ]
0.   	0.   	       [ 635]   5a437b:  lea    (%rax,%rsi,1),%rsi
0.   	0.   	       [ 635]   5a437f:  cmp    0x38(%r15),%rsi
0.   	0.   	       [ 635]   5a4383:  je     .+0x2ed9 [ 0x5a725c ]
0.   	0.   	       [ 635]   5a4389:  lea    0x1(%rdx),%r10
0.   	0.   	       [ 635]   5a438d:  lea    0x1(%r11),%rax
0.   	0.   	       [ 635]   5a4391:  mov    $0x1,%esi
0.   	0.   	       [ 635]   5a4396:  movq   $0x1,0x30(%r15)
0.   	0.   	       [ 635]   5a439e:  mov    %rax,0x50(%r15)
0.   	0.   	       [ 635]   5a43a2:  imul   %r10,%rax
0.   	0.   	       [ 635]   5a43a6:  movq   %r10,%xmm0
0.   	0.   	       [ 635]   5a43ab:  mov    %rsi,%rdx
0.   	0.   	       [ 635]   5a43ae:  punpcklqdq %xmm0,%xmm0
0.   	0.   	       [ 635]   5a43b2:  sub    %rcx,%rsi
0.   	0.   	       [ 635]   5a43b5:  mov    %r10,%r9
0.   	0.   	       [ 635]   5a43b8:  sub    %r12,%rdx
0.   	0.   	       [ 635]   5a43bb:  mov    %rsi,-0x420(%rbp)
0.   	0.   	       [ 635]   5a43c2:  not    %r9
0.   	0.   	       [ 635]   5a43c5:  mov    %rdx,%r13
0.   	0.   	       [ 635]   5a43c8:  lea    0x0(,%rax,8),%rsi
0.   	0.   	       [ 635]   5a43d0:  movups %xmm0,0x38(%r15)
0.   	0.   	       [ 635]   5a43d5:  movdqa 0x2d1353(%rip),%xmm0        # 0x2d135b
0.   	0.   	       [ 635]   5a43dd:  mov    $0x1,%eax
0.   	0.   	       [ 635]   5a43e2:  test   %rsi,%rsi
0.   	0.   	       [ 635]   5a43e5:  movq   $0x1,0x48(%r15)
0.   	0.   	       [ 635]   5a43ed:  mov    %r9,0x8(%r15)
0.   	0.   	       [ 635]   5a43f1:  cmove  %rax,%rsi
0.   	0.   	       [ 635]   5a43f5:  mov    %r8,-0x4f0(%rbp)
0.   	0.   	       [ 635]   5a43fc:  mov    %rcx,-0x4e8(%rbp)
0.   	0.   	       [ 635]   5a4403:  mov    %r9,-0x478(%rbp)
0.   	0.   	       [ 635]   5a440a:  movups %xmm0,0x20(%r15)
0.   	0.   	       [ 635]   5a440f:  test   %rdi,%rdi
0.   	0.   	       [ 635]   5a4412:  je     .+0x2e0c [ 0x5a721e ]
0.   	0.   	       [ 635]   5a4418:  call   realloc@plt [ 0x405cb0, .-0x19e768]
0.   	0.   	       [ 635]   5a441d:  mov    -0x4f0(%rbp),%r8
0.   	0.   	       [ 635]   5a4424:  mov    -0x4e8(%rbp),%rcx
0.   	0.   	       [ 635]   5a442b:  mov    %rax,(%r15)
0.   	0.   	       [ 635]   5a442e:  mov    -0x478(%rbp),%r9
0.   	0.   	       [ 635]   5a4435:  mov    %rax,%rdi
0.   	0.   	       [ 635]   5a4438:  cmp    -0x458(%rbp),%rcx
0.   	0.   	       [ 635]   5a443f:  jg     .+0x175 [ 0x5a45b4 ]
0.   	0.   	       [ 635]   5a4445:  imul   $0x70,-0x440(%rbp),%rax
0.   	0.   	       [ 635]   5a444d:  mov    -0x438(%rbp),%rdx
0.   	0.   	       [ 635]   5a4454:  mov    %rcx,%r10
0.   	0.   	       [ 635]   5a4457:  add    %r13,%r9
0.   	0.   	       [ 635]   5a445a:  mov    0x40(%r15),%rsi
0.   	0.   	       [ 635]   5a445e:  mov    0x40(%rdx,%rax,1),%r11
0.   	0.   	       [ 635]   5a4463:  mov    %rsi,%rax
0.   	0.   	       [ 635]   5a4466:  mov    -0x4c0(%rbp),%rdx
0.   	0.   	       [ 635]   5a446d:  sub    %r11,%rax
0.   	0.   	       [ 635]   5a4470:  imul   %r11,%r10
0.   	0.   	       [ 635]   5a4474:  lea    0x0(,%rax,8),%rax
0.   	0.   	       [ 635]   5a447c:  mov    %rax,-0x478(%rbp)
0.   	0.   	       [ 635]   5a4483:  mov    -0x420(%rbp),%rax
0.   	0.   	       [ 635]   5a448a:  add    %rcx,%rax
0.   	0.   	       [ 635]   5a448d:  imul   %rsi,%rax
0.   	0.   	       [ 635]   5a4491:  lea    (%r10,%rdx,1),%rsi
0.   	0.   	       [ 635]   5a4495:  shl    $0x3,%rsi
0.   	0.   	       [ 635]   5a4499:  sub    %rsi,%rdi
0.   	0.   	       [ 635]   5a449c:  add    %r9,%rax
0.   	0.   	       [ 635]   5a449f:  mov    -0x448(%rbp),%r9
0.   	0.   	       [ 635]   5a44a6:  lea    (%rdi,%rax,8),%r15
0.   	0.   	       [ 635]   5a44aa:  mov    -0x4b8(%rbp),%rdi
0.   	0.   	       [ 635]   5a44b1:  lea    0x1(%rdx,%r9,1),%rax
0.   	0.   	       [ 635]   5a44b6:  xor    %edx,%edx
0.   	0.   	       [ 635]   5a44b8:  add    %rax,%r10
0.   	0.   	       [ 635]   5a44bb:  mov    -0x458(%rbp),%rax
0.   	0.   	       [ 635]   5a44c2:  add    $0x1,%rax
0.   	0.   	       [ 635]   5a44c6:  sub    %rcx,%rax
0.   	0.   	       [ 635]   5a44c9:  mov    -0x4d0(%rbp),%rcx
0.   	0.   	       [ 635]   5a44d0:  mov    %rax,-0x458(%rbp)
0.   	0.   	       [ 635]   5a44d7:  mov    -0x3d0(%rbp),%rax
0.   	0.   	       [ 635]   5a44de:  imul   %rcx,%rax
0.   	0.   	       [ 635]   5a44e2:  shl    $0x3,%rcx
0.   	0.   	       [ 635]   5a44e6:  lea    (%rax,%r12,1),%rsi
0.   	0.   	       [ 635]   5a44ea:  lea    0x0(,%r9,8),%rax
0.   	0.   	       [ 635]   5a44f2:  sub    %rax,%rdi
0.   	0.   	       [ 635]   5a44f5:  lea    -0x1(%r12),%rax
0.   	0.   	       [ 635]   5a44fa:  lea    -0x8(%rdi,%rsi,8),%r13
0.   	0.   	       [ 635]   5a44ff:  mov    -0x470(%rbp),%rsi
0.   	0.   	       [ 635]   5a4506:  sub    %r9,%rax
0.   	0.   	       [ 635]   5a4509:  mov    %rbx,%rdi
0.   	0.   	       [ 635]   5a450c:  add    $0x1,%rsi
0.   	0.   	       [ 635]   5a4510:  sub    -0x3d0(%rbp),%rsi
0.   	0.   	       [ 635]   5a4517:  lea    (%rax,%r10,1),%r9
0.   	0.   	       [ 635]   5a451b:  lea    0x0(%r13,%r10,8),%rbx
0.   	0.   	       [ 635]   5a4520:  mov    %r9,-0x420(%rbp)
0.   	0.   	       [ 635]   5a4527:  cmp    -0x448(%rbp),%r12
0.   	0.   	       [ 635]   5a452e:  jg     .+0x68 [ 0x5a4596 ]
0.   	0.   	       [ 635]   5a4530:  mov    -0x420(%rbp),%r9
0.   	0.   	       [ 635]   5a4537:  mov    %r12,-0x4b8(%rbp)
0.   	0.   	       [ 635]   5a453e:  mov    %r11,-0x420(%rbp)
0.   	0.   	       [ 635]   5a4545:  mov    -0x470(%rbp),%r12
0.   	0.   	       [ 635]   5a454c:  cmp    %r12,-0x3d0(%rbp)
0.   	0.   	       [ 635]   5a4553:  jg     .+0xedd [ 0x5a5430 ]
0.   	0.   	       [ 635]   5a4559:  mov    %rbx,%r12
0.   	0.   	       [ 635]   5a455c:  xor    %r11d,%r11d
0.   	0.   	       [ 635]   5a455f:  pxor   %xmm0,%xmm0
0.030	0.030	       [ 635]   5a4563:  add    $0x1,%r11
0.240	0.240	       [ 635]   5a4567:  addsd  (%r12),%xmm0
14.680	14.680	       [ 635]   5a456d:  add    %rcx,%r12
0.010	0.010	       [ 635]   5a4570:  cmp    %rsi,%r11
0.060	0.060	       [ 635]   5a4573:  jne    .-0x10 [ 0x5a4563 ]
0.   	0.   	       [ 635]   5a4575:  movsd  %xmm0,(%r15,%r9,8)
0.040	0.040	       [ 635]   5a457b:  add    $0x1,%r9
0.   	0.   	       [ 635]   5a457f:  add    $0x8,%rbx
0.   	0.   	       [ 635]   5a4583:  cmp    %r10,%r9
0.   	0.   	       [ 635]   5a4586:  jne    .-0x41 [ 0x5a4545 ]
0.   	0.   	       [ 635]   5a4588:  mov    -0x420(%rbp),%r11
0.010	0.010	       [ 635]   5a458f:  mov    -0x4b8(%rbp),%r12
0.   	0.   	       [ 635]   5a4596:  add    $0x1,%rdx
0.   	0.   	       [ 635]   5a459a:  add    -0x478(%rbp),%r15
0.   	0.   	       [ 635]   5a45a1:  add    %r11,%r10
0.   	0.   	       [ 635]   5a45a4:  cmp    -0x458(%rbp),%rdx
0.   	0.   	       [ 635]   5a45ab:  jne    .-0x94 [ 0x5a4517 ]
0.   	0.   	       [ 635]   5a45b1:  mov    %rdi,%rbx
0.   	0.   	       [ 636]   5a45b4:  mov    (%r14),%r15
0.   	0.   	       [ 636]   5a45b7:  test   %r15,%r15
0.   	0.   	       [ 636]   5a45ba:  je     .+0x2c16 [ 0x5a71d0 ]
0.   	0.   	       [ 636]   5a45c0:  mov    0x8(%r14),%rdx
0.   	0.   	       [ 636]   5a45c4:  mov    0x30(%r14),%rcx
0.   	0.   	       [ 636]   5a45c8:  mov    0x48(%r14),%rsi
0.   	0.   	       [ 636]   5a45cc:  mov    0x60(%r14),%rdi
0.   	0.   	       [ 636]   5a45d0:  mov    -0x3c8(%rbp),%rax
0.   	0.   	       [ 636]   5a45d7:  mov    %rax,%r10
0.   	0.   	       [ 636]   5a45da:  mov    0xc38(%rax),%r11
0.   	0.   	       [ 636]   5a45e1:  mov    -0x418(%rbp),%rax
0.   	0.   	       [ 636]   5a45e8:  add    0xc40(%r10),%rax
0.   	0.   	       [ 636]   5a45ef:  mov    %rax,-0x4c0(%rbp)
0.   	0.   	       [ 636]   5a45f6:  imul   $0x88,%rax,%rax
0.   	0.   	       [ 636]   5a45fd:  mov    %r11,-0x4b8(%rbp)
0.   	0.   	       [ 636]   5a4604:  add    %r11,%rax
0.   	0.   	       [ 636]   5a4607:  mov    (%rax),%r10
0.020	0.020	       [ 636]   5a460a:  mov    0x48(%rax),%r9
0.   	0.   	       [ 636]   5a460e:  mov    0x30(%rax),%r11
0.   	0.   	       [ 636]   5a4612:  mov    0x80(%rax),%r13
0.   	0.   	       [ 636]   5a4619:  mov    %r10,-0x4d0(%rbp)
0.   	0.   	       [ 636]   5a4620:  mov    0x8(%rax),%r10
0.   	0.   	       [ 636]   5a4624:  mov    %r9,-0x3d0(%rbp)
0.   	0.   	       [ 636]   5a462b:  mov    0x50(%rax),%r9
0.   	0.   	       [ 636]   5a462f:  mov    %r10,-0x4e8(%rbp)
0.   	0.   	       [ 636]   5a4636:  mov    0x38(%rax),%r10
0.   	0.   	       [ 636]   5a463a:  mov    0x78(%rax),%r12
0.   	0.   	       [ 636]   5a463e:  mov    %r11,-0x418(%rbp)
0.   	0.   	       [ 636]   5a4645:  mov    %r10,-0x420(%rbp)
0.   	0.   	       [ 636]   5a464c:  mov    0x60(%rax),%r10
0.   	0.   	       [ 636]   5a4650:  mov    %r9,-0x470(%rbp)
0.   	0.   	       [ 636]   5a4657:  mov    %r10,-0x4f0(%rbp)
0.   	0.   	       [ 636]   5a465e:  mov    0x68(%rax),%r10
0.   	0.   	       [ 636]   5a4662:  mov    0x58(%rax),%rax
0.   	0.   	       [ 636]   5a4666:  mov    %r13,-0x478(%rbp)
0.   	0.   	       [ 636]   5a466d:  mov    %r10,-0x4f8(%rbp)
0.   	0.   	       [ 636]   5a4674:  mov    -0x420(%rbp),%r10
0.   	0.   	       [ 636]   5a467b:  mov    %rax,-0x500(%rbp)
0.   	0.   	       [ 636]   5a4682:  sub    %r11,%r10
0.   	0.   	       [ 636]   5a4685:  mov    %r10,%r11
0.   	0.   	       [ 636]   5a4688:  mov    %r9,%r10
0.   	0.   	       [ 636]   5a468b:  mov    %r13,%r9
0.   	0.   	       [ 636]   5a468e:  sub    -0x3d0(%rbp),%r10
0.   	0.   	       [ 636]   5a4695:  sub    %r12,%r9
0.   	0.   	       [ 636]   5a4698:  test   %r15,%r15
0.   	0.   	       [ 636]   5a469b:  je     .+0x10 [ 0x5a46ab ]
0.   	0.   	       [ 636]   5a469d:  lea    (%rcx,%r11,1),%rax
0.   	0.   	       [ 636]   5a46a1:  cmp    0x38(%r14),%rax
0.   	0.   	       [ 636]   5a46a5:  je     .+0x2ae5 [ 0x5a718a ]
0.   	0.   	       [ 636]   5a46ab:  lea    0x1(%r10),%rdx
0.   	0.   	       [ 636]   5a46af:  lea    0x1(%r11),%rax
0.   	0.   	       [ 636]   5a46b3:  movq   $0x1,0x30(%r14)
0.   	0.   	       [ 636]   5a46bb:  mov    %rdx,%rcx
0.   	0.   	       [ 636]   5a46be:  movq   %rax,%xmm0
0.   	0.   	       [ 636]   5a46c3:  lea    0x1(%r9),%rsi
0.   	0.   	       [ 636]   5a46c7:  mov    %rdx,0x50(%r14)
0.   	0.   	       [ 636]   5a46cb:  imul   %rax,%rcx
0.   	0.   	       [ 636]   5a46cf:  not    %rax
0.   	0.   	       [ 636]   5a46d2:  mov    %rsi,0x68(%r14)
0.   	0.   	       [ 636]   5a46d6:  punpcklqdq %xmm0,%xmm0
0.   	0.   	       [ 636]   5a46da:  movups %xmm0,0x38(%r14)
0.   	0.   	       [ 636]   5a46df:  movdqa 0x2d1049(%rip),%xmm0        # 0x2d1051
0.   	0.   	       [ 636]   5a46e7:  movq   $0x1,0x48(%r14)
0.   	0.   	       [ 636]   5a46ef:  sub    %rcx,%rax
0.   	0.   	       [ 636]   5a46f2:  imul   %rcx,%rsi
0.   	0.   	       [ 636]   5a46f6:  mov    %rcx,0x58(%r14)
0.   	0.   	       [ 636]   5a46fa:  mov    %rax,%rdx
0.   	0.   	       [ 636]   5a46fd:  mov    %rax,0x8(%r14)
0.   	0.   	       [ 636]   5a4701:  mov    $0x1,%eax
0.   	0.   	       [ 636]   5a4706:  mov    %rax,%rdi
0.   	0.   	       [ 636]   5a4709:  sub    -0x418(%rbp),%rdi
0.   	0.   	       [ 636]   5a4710:  movq   $0x1,0x60(%r14)
0.   	0.   	       [ 636]   5a4718:  mov    %rdi,-0x448(%rbp)
0.   	0.   	       [ 636]   5a471f:  mov    %rax,%rdi
0.   	0.   	       [ 636]   5a4722:  sub    %r12,%rax
0.   	0.   	       [ 636]   5a4725:  sub    -0x3d0(%rbp),%rdi
0.   	0.   	       [ 636]   5a472c:  mov    %rax,-0x458(%rbp)
0.   	0.   	       [ 636]   5a4733:  shl    $0x3,%rsi
0.   	0.   	       [ 636]   5a4737:  mov    $0x1,%eax
0.   	0.   	       [ 636]   5a473c:  mov    %rdi,%r13
0.   	0.   	       [ 636]   5a473f:  mov    %r8,-0x510(%rbp)
0.   	0.   	       [ 636]   5a4746:  cmove  %rax,%rsi
0.   	0.   	       [ 636]   5a474a:  mov    %rdx,-0x508(%rbp)
0.   	0.   	       [ 636]   5a4751:  movups %xmm0,0x20(%r14)
0.   	0.   	       [ 636]   5a4756:  test   %r15,%r15
0.   	0.   	       [ 636]   5a4759:  je     .+0x29fa [ 0x5a7153 ]
0.   	0.   	       [ 636]   5a475f:  mov    %r15,%rdi
0.   	0.   	       [ 636]   5a4762:  call   realloc@plt [ 0x405cb0, .-0x19eab2]
0.   	0.   	       [ 636]   5a4767:  mov    -0x510(%rbp),%r8
0.   	0.   	       [ 636]   5a476e:  mov    -0x508(%rbp),%rdx
0.   	0.   	       [ 636]   5a4775:  mov    %rax,(%r14)
0.   	0.   	       [ 636]   5a4778:  mov    %rax,%r15
0.   	0.   	       [ 636]   5a477b:  cmp    -0x478(%rbp),%r12
0.   	0.   	       [ 636]   5a4782:  jg     .+0x29a [ 0x5a4a1c ]
0.   	0.   	       [ 636]   5a4788:  mov    -0x4b8(%rbp),%rsi
0.   	0.   	       [ 636]   5a478f:  mov    -0x4e8(%rbp),%r11
0.   	0.   	       [ 636]   5a4796:  mov    %rbx,-0x520(%rbp)
0.   	0.   	       [ 636]   5a479d:  mov    -0x4f0(%rbp),%rdi
0.   	0.   	       [ 636]   5a47a4:  mov    -0x420(%rbp),%r9
0.   	0.   	       [ 636]   5a47ab:  imul   $0x88,-0x4c0(%rbp),%rax
0.   	0.   	       [ 636]   5a47b6:  mov    -0x418(%rbp),%r10
0.   	0.   	       [ 636]   5a47bd:  lea    0x0(,%r9,8),%rcx
0.   	0.   	       [ 636]   5a47c5:  mov    %rdi,%rbx
0.   	0.   	       [ 636]   5a47c8:  add    %rax,%rsi
0.   	0.   	       [ 636]   5a47cb:  mov    0x70(%rsi),%rax
0.   	0.   	       [ 636]   5a47cf:  mov    %rsi,-0x510(%rbp)
0.   	0.   	       [ 636]   5a47d6:  mov    0x58(%r14),%rsi
0.   	0.   	       [ 636]   5a47da:  mov    %rax,-0x508(%rbp)
0.   	0.   	       [ 636]   5a47e1:  imul   %r12,%rax
0.   	0.   	       [ 636]   5a47e5:  mov    %rsi,-0x4b8(%rbp)
0.   	0.   	       [ 636]   5a47ec:  add    %rax,%r11
0.   	0.   	       [ 636]   5a47ef:  mov    -0x458(%rbp),%rax
0.   	0.   	       [ 636]   5a47f6:  add    %r12,%rax
0.   	0.   	       [ 636]   5a47f9:  imul   %rsi,%rax
0.   	0.   	       [ 636]   5a47fd:  mov    -0x500(%rbp),%rsi
0.   	0.   	       [ 636]   5a4804:  add    %rdx,%rax
0.   	0.   	       [ 636]   5a4807:  mov    %rdi,%rdx
0.   	0.   	       [ 636]   5a480a:  mov    %rax,-0x458(%rbp)
0.   	0.   	       [ 636]   5a4811:  mov    -0x478(%rbp),%rax
0.   	0.   	       [ 636]   5a4818:  imul   %rsi,%rdx
0.   	0.   	       [ 636]   5a481c:  add    $0x1,%rax
0.   	0.   	       [ 636]   5a4820:  sub    %r12,%rax
0.   	0.   	       [ 636]   5a4823:  add    %r10,%rdx
0.   	0.   	       [ 636]   5a4826:  xor    %r12d,%r12d
0.   	0.   	       [ 636]   5a4829:  mov    %rax,-0x4e8(%rbp)
0.   	0.   	       [ 636]   5a4830:  mov    -0x4d0(%rbp),%rax
0.   	0.   	       [ 636]   5a4837:  sub    %rcx,%rax
0.   	0.   	       [ 636]   5a483a:  lea    0x0(,%rsi,8),%rcx
0.   	0.   	       [ 636]   5a4842:  mov    -0x3d0(%rbp),%rsi
0.   	0.   	       [ 636]   5a4849:  lea    (%rax,%rdx,8),%rax
0.   	0.   	       [ 636]   5a484d:  mov    %rax,-0x4c0(%rbp)
0.   	0.   	       [ 636]   5a4854:  lea    0x0(%r13,%rsi,1),%rax
0.   	0.   	       [ 636]   5a4859:  mov    %rax,-0x500(%rbp)
0.   	0.   	       [ 636]   5a4860:  lea    -0x1(%r10),%rax
0.   	0.   	       [ 636]   5a4864:  sub    %r9,%rax
0.   	0.   	       [ 636]   5a4867:  mov    %rax,-0x518(%rbp)
0.   	0.   	       [ 636]   5a486e:  mov    -0x4f8(%rbp),%rax
0.   	0.   	       [ 636]   5a4875:  mov    %r15,-0x4f8(%rbp)
0.   	0.   	       [ 636]   5a487c:  lea    0x1(%rax),%rsi
0.   	0.   	       [ 636]   5a4880:  mov    %rax,%r15
0.   	0.   	       [ 636]   5a4883:  sub    %rdi,%rsi
0.   	0.   	       [ 636]   5a4886:  mov    -0x470(%rbp),%rdi
0.   	0.   	       [ 636]   5a488d:  cmp    %rdi,-0x3d0(%rbp)
0.   	0.   	       [ 636]   5a4894:  jg     .+0x15b [ 0x5a49ef ]
0.   	0.   	       [ 636]   5a489a:  mov    -0x510(%rbp),%rax
0.   	0.   	       [ 636]   5a48a1:  mov    -0x3d0(%rbp),%r9
0.   	0.   	       [ 636]   5a48a8:  mov    %r12,-0x528(%rbp)
0.   	0.   	       [ 636]   5a48af:  mov    0x40(%r14),%rdi
0.   	0.   	       [ 636]   5a48b3:  mov    -0x458(%rbp),%r10
0.   	0.   	       [ 636]   5a48ba:  mov    %r11,-0x530(%rbp)
0.   	0.   	       [ 636]   5a48c1:  mov    0x40(%rax),%rdx
0.   	0.   	       [ 636]   5a48c5:  mov    %rdi,%rax
0.   	0.   	       [ 636]   5a48c8:  imul   -0x500(%rbp),%rdi
0.   	0.   	       [ 636]   5a48d0:  add    -0x448(%rbp),%rdi
0.   	0.   	       [ 636]   5a48d7:  imul   %rdx,%r9
0.   	0.   	       [ 636]   5a48db:  lea    (%rdi,%r10,1),%r13
0.   	0.   	       [ 636]   5a48df:  mov    -0x4f8(%rbp),%rdi
0.   	0.   	       [ 636]   5a48e6:  sub    %rdx,%rax
0.   	0.   	       [ 636]   5a48e9:  lea    0x0(,%rax,8),%rax
0.   	0.   	       [ 636]   5a48f1:  lea    0x0(,%r9,8),%r10
0.   	0.   	       [ 636]   5a48f9:  sub    %r10,%rdi
0.   	0.   	       [ 636]   5a48fc:  lea    0x0(,%r11,8),%r10
0.   	0.   	       [ 636]   5a4904:  sub    %r10,%rdi
0.   	0.   	       [ 636]   5a4907:  lea    (%rdi,%r13,8),%r10
0.   	0.   	       [ 636]   5a490b:  mov    -0x420(%rbp),%rdi
0.   	0.   	       [ 636]   5a4912:  xor    %r13d,%r13d
0.   	0.   	       [ 636]   5a4915:  lea    0x1(%r9,%rdi,1),%r9
0.   	0.   	       [ 636]   5a491a:  mov    -0x470(%rbp),%rdi
0.   	0.   	       [ 636]   5a4921:  add    %r11,%r9
0.   	0.   	       [ 636]   5a4924:  add    $0x1,%rdi
0.   	0.   	       [ 636]   5a4928:  sub    -0x3d0(%rbp),%rdi
0.   	0.   	       [ 636]   5a492f:  mov    %rdi,-0x478(%rbp)
0.   	0.   	       [ 636]   5a4936:  mov    -0x4c0(%rbp),%rdi
0.   	0.   	       [ 636]   5a493d:  sub    $0x8,%rdi
0.   	0.   	       [ 636]   5a4941:  mov    %rdi,-0x4f0(%rbp)
0.   	0.   	       [ 636]   5a4948:  mov    -0x4f0(%rbp),%rdi
0.   	0.   	       [ 636]   5a494f:  mov    -0x420(%rbp),%r11
0.   	0.   	       [ 636]   5a4956:  lea    (%rdi,%r9,8),%r12
0.010	0.010	       [ 636]   5a495a:  mov    -0x518(%rbp),%rdi
0.   	0.   	       [ 636]   5a4961:  add    %r9,%rdi
0.   	0.   	       [ 636]   5a4964:  mov    %rdi,-0x4d0(%rbp)
0.   	0.   	       [ 636]   5a496b:  cmp    %r11,-0x418(%rbp)
0.   	0.   	       [ 636]   5a4972:  jg     .+0x58 [ 0x5a49ca ]
0.   	0.   	       [ 636]   5a4974:  mov    %rdx,-0x538(%rbp)
0.   	0.   	       [ 636]   5a497b:  mov    -0x4d0(%rbp),%r11
0.   	0.   	       [ 636]   5a4982:  cmp    %r15,%rbx
0.   	0.   	       [ 636]   5a4985:  jg     .+0xb4e [ 0x5a54d3 ]
0.   	0.   	       [ 636]   5a498b:  mov    %r12,%rdi
0.020	0.020	       [ 636]   5a498e:  xor    %edx,%edx
0.010	0.010	       [ 636]   5a4990:  pxor   %xmm0,%xmm0
0.   	0.   	       [ 636]   5a4994:  xchg   %ax,%ax
0.040	0.040	       [ 636]   5a4996:  cs nopw 0x0(%rax,%rax,1)
0.   	0.   	       [ 636]   5a49a0:  add    $0x1,%rdx
0.510	0.510	       [ 636]   5a49a4:  addsd  (%rdi),%xmm0
25.168	25.168	       [ 636]   5a49a8:  add    %rcx,%rdi
0.140	0.140	       [ 636]   5a49ab:  cmp    %rdx,%rsi
0.040	0.040	       [ 636]   5a49ae:  jne    .-0xe [ 0x5a49a0 ]
0.010	0.010	       [ 636]   5a49b0:  movsd  %xmm0,(%r10,%r11,8)
0.090	0.090	       [ 636]   5a49b6:  add    $0x1,%r11
0.   	0.   	       [ 636]   5a49ba:  add    $0x8,%r12
0.   	0.   	       [ 636]   5a49be:  cmp    %r11,%r9
0.   	0.   	       [ 636]   5a49c1:  jne    .-0x3f [ 0x5a4982 ]
0.   	0.   	       [ 636]   5a49c3:  mov    -0x538(%rbp),%rdx
0.020	0.020	       [ 636]   5a49ca:  add    $0x1,%r13
0.   	0.   	       [ 636]   5a49ce:  add    %rax,%r10
0.   	0.   	       [ 636]   5a49d1:  add    %rdx,%r9
0.   	0.   	       [ 636]   5a49d4:  cmp    %r13,-0x478(%rbp)
0.010	0.010	       [ 636]   5a49db:  jne    .-0x93 [ 0x5a4948 ]
0.   	0.   	       [ 636]   5a49e1:  mov    -0x528(%rbp),%r12
0.   	0.   	       [ 636]   5a49e8:  mov    -0x530(%rbp),%r11
0.   	0.   	       [ 636]   5a49ef:  mov    -0x4b8(%rbp),%rdi
0.   	0.   	       [ 636]   5a49f6:  add    $0x1,%r12
0.   	0.   	       [ 636]   5a49fa:  add    %rdi,-0x458(%rbp)
0.   	0.   	       [ 636]   5a4a01:  add    -0x508(%rbp),%r11
0.   	0.   	       [ 636]   5a4a08:  cmp    %r12,-0x4e8(%rbp)
0.   	0.   	       [ 636]   5a4a0f:  jne    .-0x189 [ 0x5a4886 ]
0.   	0.   	       [ 636]   5a4a15:  mov    -0x520(%rbp),%rbx
0.   	0.   	       [ 639]   5a4a1c:  mov    -0x3f8(%rbp),%r9d
0.   	0.   	       [ 639]   5a4a23:  test   %r9d,%r9d
0.   	0.   	       [ 639]   5a4a26:  jle    .+0x11e [ 0x5a4b44 ]
0.   	0.   	       [ 639]   5a4a2c:  mov    0x20(%rbp),%rax
0.   	0.   	       [ 639]   5a4a30:  imul   $0x70,-0x440(%rbp),%rsi
0.   	0.   	       [ 639]   5a4a38:  add    -0x438(%rbp),%rsi
0.   	0.   	       [ 639]   5a4a3f:  mov    0x20(%rbp),%rdi
0.   	0.   	       [ 639]   5a4a43:  mov    0x40(%rax),%rdx
0.   	0.   	       [ 639]   5a4a47:  mov    0x40(%rsi),%rax
0.   	0.   	       [ 639]   5a4a4b:  mov    -0x3f8(%rbp),%r14d
0.   	0.   	       [ 639]   5a4a52:  mov    -0x430(%rbp),%r10
0.   	0.   	       [ 639]   5a4a59:  mov    %rdx,%rcx
0.   	0.   	       [ 639]   5a4a5c:  add    0x8(%rdi),%rdx
0.   	0.   	       [ 639]   5a4a60:  mov    (%rdi),%rdi
0.   	0.   	       [ 639]   5a4a63:  sub    %rax,%rcx
0.   	0.   	       [ 639]   5a4a66:  lea    -0x1(%r14),%r12d
0.   	0.   	       [ 639]   5a4a6a:  mov    -0x3d8(%rbp),%r9
0.   	0.   	       [ 639]   5a4a71:  lea    0x0(,%rcx,8),%r15
0.   	0.   	       [ 639]   5a4a79:  mov    0x8(%r8),%rcx
0.   	0.   	       [ 639]   5a4a7d:  lea    (%r10,%r9,8),%r9
0.   	0.   	       [ 639]   5a4a81:  sub    %rcx,%rdx
0.   	0.   	       [ 639]   5a4a84:  sub    %rax,%rdx
0.   	0.   	       [ 639]   5a4a87:  lea    (%rdi,%rdx,8),%r11
0.   	0.   	       [ 639]   5a4a8b:  mov    0x60(%rsi),%rdx
0.   	0.   	       [ 639]   5a4a8f:  lea    0x2(%rcx,%rax,1),%rdi
0.   	0.   	       [ 639]   5a4a94:  mov    0x58(%rsi),%rcx
0.   	0.   	       [ 639]   5a4a98:  mov    (%r8),%rsi
0.   	0.   	       [ 639]   5a4a9b:  add    %r12,%rdi
0.   	0.   	       [ 639]   5a4a9e:  imul   %rcx,%rdx
0.   	0.   	       [ 639]   5a4aa2:  shl    $0x3,%rcx
0.   	0.   	       [ 639]   5a4aa6:  sub    %r12,%rdx
0.   	0.   	       [ 639]   5a4aa9:  lea    -0x8(%rsi,%rdx,8),%rdx
0.   	0.   	       [ 639]   5a4aae:  mov    %r8,%rsi
0.   	0.   	       [ 639]   5a4ab1:  mov    %rdi,%r10
0.   	0.   	       [ 639]   5a4ab4:  lea    (%rdx,%rdi,8),%r13
0.   	0.   	       [ 639]   5a4ab8:  sub    %r12,%r10
0.   	0.   	       [ 639]   5a4abb:  sub    $0x1,%r10
0.   	0.   	       [ 639]   5a4abf:  cmpq   $0x0,-0x3d8(%rbp)
0.   	0.   	       [ 639]   5a4ac7:  jg     .+0x21 [ 0x5a4ae8 ]
0.   	0.   	       [ 639]   5a4ac9:  movq   $0x0,(%r11,%r10,8)
0.   	0.   	       [ 639]   5a4ad1:  add    $0x1,%r10
0.   	0.   	       [ 639]   5a4ad5:  add    $0x8,%r13
0.   	0.   	       [ 639]   5a4ad9:  cmp    %rdi,%r10
0.   	0.   	       [ 639]   5a4adc:  je     .+0x55 [ 0x5a4b31 ]
0.   	0.   	       [ 639]   5a4ade:  cmpq   $0x0,-0x3d8(%rbp)
0.   	0.   	       [ 639]   5a4ae6:  jle    .-0x1d [ 0x5a4ac9 ]
0.   	0.   	       [ 639]   5a4ae8:  mov    %r15,-0x3d0(%rbp)
0.   	0.   	       [ 639]   5a4aef:  mov    -0x430(%rbp),%r8
0.   	0.   	       [ 639]   5a4af6:  mov    %r13,%r15
0.   	0.   	       [ 639]   5a4af9:  pxor   %xmm1,%xmm1
0.   	0.   	       [ 639]   5a4afd:  movsd  (%r15),%xmm0
1.671	1.671	       [ 639]   5a4b02:  mulsd  (%r8),%xmm0
0.380	0.380	       [ 639]   5a4b07:  add    $0x8,%r8
0.   	0.   	       [ 639]   5a4b0b:  add    %rcx,%r15
0.010	0.010	       [ 639]   5a4b0e:  addsd  %xmm0,%xmm1
5.934	5.934	       [ 639]   5a4b12:  cmp    %r8,%r9
0.220	0.220	       [ 639]   5a4b15:  jne    .-0x18 [ 0x5a4afd ]
0.   	0.   	       [ 639]   5a4b17:  movsd  %xmm1,(%r11,%r10,8)
0.020	0.020	       [ 639]   5a4b1d:  add    $0x1,%r10
0.   	0.   	       [ 639]   5a4b21:  add    $0x8,%r13
0.   	0.   	       [ 639]   5a4b25:  cmp    %rdi,%r10
0.   	0.   	       [ 639]   5a4b28:  jne    .-0x39 [ 0x5a4aef ]
0.   	0.   	       [ 639]   5a4b2a:  mov    -0x3d0(%rbp),%r15
0.   	0.   	       [ 639]   5a4b31:  add    %r15,%r11
0.   	0.   	       [ 639]   5a4b34:  add    %rax,%rdi
0.   	0.   	       [ 639]   5a4b37:  sub    $0x1,%r14d
0.   	0.   	       [ 639]   5a4b3b:  jne    .-0x8a [ 0x5a4ab1 ]
0.   	0.   	       [ 639]   5a4b41:  mov    %rsi,%r8
0.   	0.   	       [ 639]   5a4b44:  mov    -0x3d8(%rbp),%rsi
0.   	0.   	       [ 639]   5a4b4b:  mov    -0x428(%rbp),%rdi
0.   	0.   	       [ 639]   5a4b52:  mov    $0x1,%r15d
0.   	0.   	       [ 644]   5a4b58:  pxor   %xmm7,%xmm7
0.   	0.   	       [ 644]   5a4b5c:  imul   $0x70,-0x440(%rbp),%rdx
0.   	0.   	       [ 644]   5a4b64:  mov    -0x400(%rbp),%rax
0.   	0.   	       [ 644]   5a4b6b:  shl    $0x4,%rsi
0.   	0.   	       [ 644]   5a4b6f:  movsd  0x2d2179(%rip),%xmm5        # 0x2d2181
0.   	0.   	       [ 644]   5a4b77:  mov    0x28(%rbp),%r13
0.   	0.   	       [ 644]   5a4b7b:  mov    %rsi,-0x418(%rbp)
0.   	0.   	       [ 644]   5a4b82:  add    %rdi,%rsi
0.   	0.   	       [ 644]   5a4b85:  add    %rbx,%rax
0.   	0.   	       [ 644]   5a4b88:  mov    -0x438(%rbp),%rdi
0.   	0.   	       [ 644]   5a4b8f:  shl    $0x4,%rbx
0.   	0.   	       [ 644]   5a4b93:  add    -0x4c8(%rbp),%rax
0.   	0.   	       [ 644]   5a4b9a:  add    %rdx,%rdi
0.   	0.   	       [ 644]   5a4b9d:  mov    %rbx,%r9
0.   	0.   	       [ 644]   5a4ba0:  mov    %rdi,-0x470(%rbp)
0.   	0.   	       [ 644]   5a4ba7:  mov    -0x3f8(%rbp),%edi
0.   	0.   	       [ 644]   5a4bad:  lea    -0x1(%rdi),%r14d
0.   	0.   	       [ 644]   5a4bb1:  mov    %rax,%rcx
0.   	0.   	       [ 639]   5a4bb4:  mov    $0x1,%edx
0.   	0.   	       [ 639]   5a4bb9:  shl    $0x4,%rcx
0.   	0.   	       [ 639]   5a4bbd:  add    %rsi,%rcx
0.   	0.   	       [ 644]   5a4bc0:  mov    -0x3f8(%rbp),%edi
0.   	0.   	       [ 644]   5a4bc6:  test   %edi,%edi
0.   	0.   	       [ 644]   5a4bc8:  jle    .+0x9a2 [ 0x5a556a ]
0.   	0.   	       [ 644]   5a4bce:  mov    0x8(%r13),%rdi
0.010	0.010	       [ 644]   5a4bd2:  mov    0x0(%r13),%rbx
0.   	0.   	       [ 644]   5a4bd6:  mov    %rsi,-0x478(%rbp)
0.   	0.   	       [ 644]   5a4bdd:  mov    %rax,%r11
0.   	0.   	       [ 644]   5a4be0:  mov    %r15,%rsi
0.   	0.   	       [ 644]   5a4be3:  mov    %r9,%rax
0.   	0.   	       [ 644]   5a4be6:  mov    %rdi,-0x458(%rbp)
0.   	0.   	       [ 644]   5a4bed:  mov    %rbx,-0x440(%rbp)
0.   	0.   	       [ 644]   5a4bf4:  mov    0x40(%r13),%rbx
0.020	0.020	       [ 644]   5a4bf8:  mov    0x58(%r13),%r9
0.010	0.010	       [ 644]   5a4bfc:  mov    0x70(%r13),%rdi
0.   	0.   	       [ 644]   5a4c00:  mov    %rsi,-0x4b8(%rbp)
0.   	0.   	       [ 644]   5a4c07:  mov    -0x470(%rbp),%r15
0.   	0.   	       [ 644]   5a4c0e:  imul   %rdx,%r9
0.   	0.   	       [ 644]   5a4c12:  imul   %rsi,%rdi
0.   	0.   	       [ 644]   5a4c16:  add    -0x458(%rbp),%rdi
0.   	0.   	       [ 644]   5a4c1d:  mov    %r11,%rsi
0.   	0.   	       [ 644]   5a4c20:  add    %r9,%rdi
0.   	0.   	       [ 644]   5a4c23:  add    %rbx,%rdi
0.   	0.   	       [ 644]   5a4c26:  mov    %rdi,-0x3d0(%rbp)
0.   	0.   	       [ 644]   5a4c2d:  mov    0x40(%r15),%rdi
0.   	0.   	       [ 644]   5a4c31:  mov    %rdi,-0x438(%rbp)
0.   	0.   	       [ 644]   5a4c38:  add    0x8(%r8),%rdi
0.   	0.   	       [ 644]   5a4c3c:  lea    0x2(%rdi,%r14,1),%r12
0.   	0.   	       [ 644]   5a4c41:  mov    %r15,%rdi
0.   	0.   	       [ 644]   5a4c44:  mov    0x58(%r15),%r15
0.   	0.   	       [ 644]   5a4c48:  mov    0x60(%rdi),%r10
0.   	0.   	       [ 644]   5a4c4c:  imul   %r15,%r10
0.   	0.   	       [ 644]   5a4c50:  mov    %r10,%rdi
0.   	0.   	       [ 644]   5a4c53:  mov    -0x3f8(%rbp),%r10d
0.   	0.   	       [ 644]   5a4c5a:  sub    %r14,%rdi
0.   	0.   	       [ 644]   5a4c5d:  mov    %r10d,-0x420(%rbp)
0.   	0.   	       [ 644]   5a4c64:  mov    (%r8),%r10
0.   	0.   	       [ 644]   5a4c67:  mov    %rdi,%r9
0.   	0.   	       [ 644]   5a4c6a:  lea    0x0(,%r15,8),%rdi
0.   	0.   	       [ 644]   5a4c72:  mov    %rcx,%r15
0.   	0.   	       [ 644]   5a4c75:  sub    -0x418(%rbp),%r15
0.   	0.   	       [ 644]   5a4c7c:  lea    -0x8(%r10,%r9,8),%r10
0.   	0.   	       [ 644]   5a4c81:  mov    %r10,-0x448(%rbp)
0.020	0.020	       [ 644]   5a4c88:  mov    -0x3d0(%rbp),%r10
0.030	0.030	       [ 644]   5a4c8f:  mov    -0x448(%rbp),%r11
0.   	0.   	       [ 644]   5a4c96:  mov    %r12,%r9
0.   	0.   	       [ 644]   5a4c99:  sub    %r14,%r9
0.   	0.   	       [ 644]   5a4c9c:  shl    $0x4,%r10
0.   	0.   	       [ 644]   5a4ca0:  lea    (%r11,%r12,8),%r11
0.   	0.   	       [ 644]   5a4ca4:  sub    $0x1,%r9
0.   	0.   	       [ 644]   5a4ca8:  add    -0x440(%rbp),%r10
0.   	0.   	       [ 644]   5a4caf:  cmpq   $0x0,-0x3d8(%rbp)
0.   	0.   	       [ 644]   5a4cb7:  jg     .+0x825 [ 0x5a54dc ]
0.   	0.   	       [ 644]   5a4cbd:  add    $0x1,%r9
0.   	0.   	       [ 644]   5a4cc1:  movups %xmm7,0x10(%r10)
0.   	0.   	       [ 644]   5a4cc6:  add    $0x8,%r11
0.   	0.   	       [ 644]   5a4cca:  add    $0x10,%r10
0.   	0.   	       [ 644]   5a4cce:  cmp    %r9,%r12
0.   	0.   	       [ 644]   5a4cd1:  jne    .-0x22 [ 0x5a4caf ]
0.   	0.   	       [ 644]   5a4cd3:  add    %rbx,-0x3d0(%rbp)
0.   	0.   	       [ 644]   5a4cda:  add    -0x438(%rbp),%r12
0.040	0.040	       [ 644]   5a4ce1:  subl   $0x1,-0x420(%rbp)
0.010	0.010	       [ 644]   5a4ce8:  jne    .-0x60 [ 0x5a4c88 ]
0.   	0.   	       [ 644]   5a4cea:  add    $0x1,%rdx
0.010	0.010	       [ 644]   5a4cee:  mov    %rsi,%r11
0.   	0.   	       [ 644]   5a4cf1:  add    %rax,%rcx
0.   	0.   	       [ 644]   5a4cf4:  mov    -0x4b8(%rbp),%rsi
0.   	0.   	       [ 644]   5a4cfb:  cmp    $0x4,%rdx
0.   	0.   	       [ 644]   5a4cff:  jne    .-0x107 [ 0x5a4bf8 ]
0.010	0.010	       [ 644]   5a4d05:  mov    %rsi,%r15
0.   	0.   	       [ 644]   5a4d08:  mov    -0x478(%rbp),%rsi
0.   	0.   	       [ 644]   5a4d0f:  mov    %rax,%r9
0.   	0.   	       [ 644]   5a4d12:  mov    %r11,%rax
0.   	0.   	       [ 644]   5a4d15:  add    $0x1,%r15
0.   	0.   	       [ 644]   5a4d19:  add    -0x400(%rbp),%rax
0.   	0.   	       [ 644]   5a4d20:  cmp    $0x4,%r15
0.   	0.   	       [ 644]   5a4d24:  jne    .-0x173 [ 0x5a4bb1 ]
0.   	0.   	       [ 656]   5a4d2a:  mov    -0x3c8(%rbp),%rax
0.   	0.   	       [ 656]   5a4d31:  mov    0xad8(%rax),%esi
0.060	0.060	       [ 656]   5a4d37:  xor    %eax,%eax
0.   	0.   	       [ 656]   5a4d39:  test   %esi,%esi
0.   	0.   	       [ 656]   5a4d3b:  mov    %esi,-0x3d0(%rbp)
0.   	0.   	       [ 656]   5a4d41:  cmovns %esi,%eax
0.   	0.   	       [ 656]   5a4d44:  movslq %eax,%rbx
0.   	0.   	       [ 656]   5a4d47:  lea    (%rbx,%rbx,1),%r13
0.   	0.   	       [ 656]   5a4d4b:  lea    0x0(%r13,%rbx,1),%rax
0.   	0.   	       [ 656]   5a4d50:  mov    %rax,-0x508(%rbp)
0.   	0.   	       [ 656]   5a4d57:  jle    .+0x1e21 [ 0x5a6b78 ]
0.   	0.   	       [ 656]   5a4d5d:  shl    $0x6,%rax
0.   	0.   	       [ 656]   5a4d61:  mov    %rax,%rdi
0.   	0.   	       [ 656]   5a4d64:  mov    %rax,%r12
0.   	0.010	       [ 656]   5a4d67:  call   malloc@plt [ 0x4068b0, .-0x19e4b7]
0.   	0.   	       [ 656]   5a4d6c:  mov    %rax,-0x420(%rbp)
0.   	0.   	       [ 656]   5a4d73:  test   %rax,%rax
0.   	0.   	       [ 656]   5a4d76:  je     .+0x256c [ 0x5a72e2 ]
0.   	0.   	       [ 656]   5a4d7c:  movslq -0x3d0(%rbp),%rax
0.   	0.   	       [ 657]   5a4d83:  mov    -0x420(%rbp),%rdi
0.   	0.   	       [ 660]   5a4d8a:  lea    (%rbx,%rbx,8),%r12
0.   	0.   	       [ 657]   5a4d8e:  xor    %esi,%esi
0.   	0.   	       [ 660]   5a4d90:  shl    $0x4,%r12
0.   	0.   	       [ 657]   5a4d94:  lea    (%rax,%rax,2),%rdx
0.   	0.   	       [ 656]   5a4d98:  mov    %rax,-0x3d8(%rbp)
0.   	0.   	       [ 657]   5a4d9f:  shl    $0x6,%rdx
0.   	0.070	       [ 657]   5a4da3:  call   memset@plt [ 0x405fd0, .-0x19edd3]
0.   	0.   	       [ 660]   5a4da8:  mov    %r12,%rdi
0.   	0.010	       [ 660]   5a4dab:  call   malloc@plt [ 0x4068b0, .-0x19e4fb]
0.   	0.   	       [ 660]   5a4db0:  mov    %rax,-0x448(%rbp)
0.   	0.   	       [ 660]   5a4db7:  test   %rax,%rax
0.   	0.   	       [ 660]   5a4dba:  je     .+0x253f [ 0x5a72f9 ]
0.   	0.   	       [ 661]   5a4dc0:  mov    %rbx,%r15
0.   	0.   	       [ 657]   5a4dc3:  mov    -0x3d8(%rbp),%r12
0.   	0.   	       [ 661]   5a4dca:  mov    %rbx,%r14
0.   	0.   	       [ 661]   5a4dcd:  shl    $0x4,%r15
0.   	0.   	       [ 661]   5a4dd1:  mov    %r15,%rdi
0.   	0.   	       [ 661]   5a4dd4:  mov    %rdi,-0x3f8(%rbp)
0.   	0.020	       [ 661]   5a4ddb:  call   malloc@plt [ 0x4068b0, .-0x19e52b]
0.   	0.   	       [ 661]   5a4de0:  mov    -0x3f8(%rbp),%rdi
0.   	0.   	       [ 661]   5a4de7:  test   %rax,%rax
0.   	0.   	       [ 661]   5a4dea:  mov    %rax,-0x438(%rbp)
0.   	0.   	       [ 661]   5a4df1:  je     .+0x251c [ 0x5a730d ]
0.   	0.020	       [ 662]   5a4df7:  call   malloc@plt [ 0x4068b0, .-0x19e547]
0.   	0.   	       [ 662]   5a4dfc:  mov    %rax,-0x440(%rbp)
0.   	0.   	       [ 662]   5a4e03:  test   %rax,%rax
0.   	0.   	       [ 662]   5a4e06:  je     .+0x2519 [ 0x5a731f ]
0.   	0.   	       [ 663]   5a4e0c:  mov    -0x3d0(%rbp),%r15d
0.   	0.   	       [ 663]   5a4e13:  test   %r15d,%r15d
0.   	0.   	       [ 663]   5a4e16:  jle    .+0x1d55 [ 0x5a6b6b ]
0.   	0.   	       [ 663]   5a4e1c:  shl    $0x3,%r14
0.   	0.   	       [ 663]   5a4e20:  mov    %r14,%rdi
0.   	0.010	       [ 663]   5a4e23:  call   malloc@plt [ 0x4068b0, .-0x19e573]
0.   	0.   	       [ 663]   5a4e28:  mov    %rax,-0x470(%rbp)
0.   	0.   	       [ 663]   5a4e2f:  test   %rax,%rax
0.   	0.   	       [ 663]   5a4e32:  je     .+0x24ff [ 0x5a7331 ]
0.   	0.   	       [ 656]   5a4e38:  lea    0x0(%r13,%rbx,1),%rsi
0.   	0.   	       [ 656]   5a4e3d:  mov    $0xfffffffffffffffc,%rax
0.   	0.   	       [ 664]   5a4e44:  movl   $0x1,-0x3b4(%rbp)
0.   	0.   	       [ 656]   5a4e4e:  lea    (%rsi,%rsi,1),%rdi
0.   	0.   	       [ 656]   5a4e52:  sub    %rsi,%rax
0.   	0.   	       [ 656]   5a4e55:  mov    %rsi,-0x478(%rbp)
0.   	0.   	       [ 656]   5a4e5c:  sub    %rdi,%rax
0.   	0.   	       [ 656]   5a4e5f:  mov    %rdi,-0x458(%rbp)
0.   	0.   	       [ 656]   5a4e66:  mov    %rax,-0x3f8(%rbp)
0.   	0.   	       [ 664]   5a4e6d:  mov    -0x3e8(%rbp),%rax
0.   	0.   	       [ 664]   5a4e74:  mov    0x6e8(%rax),%eax
0.010	0.010	       [ 664]   5a4e7a:  mov    %eax,-0x4e8(%rbp)
0.   	0.   	       [ 664]   5a4e80:  test   %eax,%eax
0.   	0.   	       [ 664]   5a4e82:  jle    .+0x1494 [ 0x5a6316 ]
0.   	0.   	       [ 665]   5a4e88:  lea    (%r12,%r12,8),%rax
0.   	0.   	       [ 665]   5a4e8c:  mov    -0x3d0(%rbp),%esi
0.   	0.   	       [ 665]   5a4e92:  xor    %edx,%edx
0.   	0.   	       [1052]   5a4e94:  shl    $0x4,%r12
0.   	0.   	       [ 665]   5a4e98:  shl    $0x4,%rax
0.   	0.   	       [1052]   5a4e9c:  mov    %r12,-0x4f8(%rbp)
0.   	0.   	       [ 665]   5a4ea3:  mov    %rax,-0x510(%rbp)
0.   	0.   	       [1050]   5a4eaa:  mov    %rbx,%rax
0.   	0.   	       [1050]   5a4ead:  mov    %rdx,%rbx
0.   	0.   	       [1050]   5a4eb0:  mov    $0x1,%edx
0.   	0.   	       [1050]   5a4eb5:  shl    $0x4,%rax
0.   	0.   	       [1050]   5a4eb9:  test   %esi,%esi
0.   	0.   	       [1050]   5a4ebb:  cmovg  %rax,%rbx
0.   	0.   	       [1050]   5a4ebf:  test   %rax,%rax
0.   	0.   	       [1050]   5a4ec2:  cmove  %rdx,%rax
0.   	0.   	       [1050]   5a4ec6:  test   %esi,%esi
0.   	0.   	       [1050]   5a4ec8:  mov    -0x490(%rbp),%rsi
0.   	0.   	       [1050]   5a4ecf:  cmovg  %rax,%rdx
0.   	0.   	       [1050]   5a4ed3:  mov    -0x498(%rbp),%rax
0.   	0.   	       [1050]   5a4eda:  add    -0x488(%rbp),%rax
0.   	0.   	       [1050]   5a4ee1:  lea    (%rsi,%rax,4),%rax
0.   	0.   	       [1050]   5a4ee5:  mov    %rax,-0x4f0(%rbp)
0.   	0.   	       [1050]   5a4eec:  mov    -0x3d8(%rbp),%rax
0.   	0.   	       [1050]   5a4ef3:  mov    %rdx,-0x4d0(%rbp)
0.   	0.   	       [1050]   5a4efa:  lea    0x0(,%rax,8),%rsi
0.   	0.   	       [1050]   5a4f02:  mov    %rsi,-0x518(%rbp)
0.   	0.   	       [1050]   5a4f09:  lea    0x8(%rax,%rsi,1),%rsi
0.   	0.   	       [1050]   5a4f0e:  shl    $0x4,%rax
0.   	0.   	       [1050]   5a4f12:  mov    %rsi,-0x500(%rbp)
0.   	0.   	       [1050]   5a4f19:  mov    -0x438(%rbp),%rsi
0.   	0.   	       [1050]   5a4f20:  add    %rax,%rsi
0.   	0.   	       [1050]   5a4f23:  mov    %rsi,-0x400(%rbp)
0.   	0.   	       [1050]   5a4f2a:  mov    -0x440(%rbp),%rsi
0.   	0.   	       [1050]   5a4f31:  add    %rsi,%rax
0.   	0.   	       [1050]   5a4f34:  mov    %rax,-0x418(%rbp)
0.   	0.   	       [ 665]   5a4f3b:  mov    -0x510(%rbp),%rdx
0.   	0.   	       [ 665]   5a4f42:  mov    -0x448(%rbp),%rdi
0.   	0.   	       [ 665]   5a4f49:  xor    %esi,%esi
0.   	0.110	       [ 665]   5a4f4b:  call   memset@plt [ 0x405fd0, .-0x19ef7b]
0.   	0.   	       [1047]   5a4f50:  mov    0x48(%rbp),%rax
0.   	0.   	       [1050]   5a4f54:  mov    -0x4d0(%rbp),%rdi
0.   	0.   	       [1047]   5a4f5b:  movl   $0x0,(%rax)
0.   	0.   	       [1050]   5a4f61:  movabs $0x30200000000,%rax
0.   	0.   	       [1050]   5a4f6b:  movq   $0x8,-0x290(%rbp)
0.   	0.   	       [1050]   5a4f76:  mov    %rax,-0x288(%rbp)
0.   	0.100	       [1050]   5a4f7d:  call   malloc@plt [ 0x4068b0, .-0x19e6cd]
0.   	0.   	       [1050]   5a4f82:  mov    %rax,-0x2a0(%rbp)
0.   	0.   	       [1050]   5a4f89:  mov    %rax,%r13
0.   	0.   	       [1050]   5a4f8c:  test   %rax,%rax
0.   	0.   	       [1050]   5a4f8f:  je     .+0x23b4 [ 0x5a7343 ]
0.   	0.   	       [1050]   5a4f95:  movdqa 0x2d0793(%rip),%xmm7        # 0x2d079b
0.   	0.   	       [1050]   5a4f9d:  mov    -0x3d8(%rbp),%rax
0.   	0.   	       [1050]   5a4fa4:  movq   $0xfffffffffffffffd,-0x298(%rbp)
0.   	0.   	       [1051]   5a4faf:  mov    -0x4d0(%rbp),%rdi
0.   	0.   	       [1051]   5a4fb6:  movq   $0x8,-0x230(%rbp)
0.   	0.   	       [1050]   5a4fc1:  movaps %xmm7,-0x280(%rbp)
0.   	0.   	       [1050]   5a4fc8:  movdqa 0x2d5a30(%rip),%xmm7        # 0x2d5a38
0.   	0.   	       [1050]   5a4fd0:  mov    %rax,-0x250(%rbp)
0.   	0.   	       [1051]   5a4fd7:  movabs $0x30200000000,%rax
0.   	0.   	       [1050]   5a4fe1:  movaps %xmm7,-0x270(%rbp)
0.   	0.   	       [1050]   5a4fe8:  movdqa 0x2e21f0(%rip),%xmm7        # 0x2e21f8
0.   	0.   	       [1051]   5a4ff0:  mov    %rax,-0x228(%rbp)
0.   	0.   	       [1050]   5a4ff7:  movaps %xmm7,-0x260(%rbp)
0.   	0.010	       [1051]   5a4ffe:  call   malloc@plt [ 0x4068b0, .-0x19e74e]
0.   	0.   	       [1051]   5a5003:  mov    %rax,-0x240(%rbp)
0.   	0.   	       [1051]   5a500a:  mov    %rax,%r12
0.   	0.   	       [1051]   5a500d:  test   %rax,%rax
0.   	0.   	       [1051]   5a5010:  je     .+0x2347 [ 0x5a7357 ]
0.   	0.   	       [1051]   5a5016:  movdqa 0x2d0712(%rip),%xmm7        # 0x2d071a
0.010	0.010	       [1052]   5a501e:  mov    -0x4f8(%rbp),%r15
0.   	0.   	       [1052]   5a5025:  mov    %r13,%rdi
0.   	0.   	       [1052]   5a5028:  xor    %esi,%esi
0.   	0.   	       [1051]   5a502a:  mov    -0x3d8(%rbp),%rax
0.   	0.   	       [1051]   5a5031:  movq   $0xfffffffffffffffd,-0x238(%rbp)
0.   	0.   	       [1051]   5a503c:  movaps %xmm7,-0x220(%rbp)
0.   	0.   	       [1051]   5a5043:  movdqa 0x2d59b5(%rip),%xmm7        # 0x2d59bd
0.   	0.   	       [1052]   5a504b:  mov    %r15,%rdx
0.   	0.   	       [1051]   5a504e:  mov    %rax,-0x1f0(%rbp)
0.   	0.   	       [1051]   5a5055:  movaps %xmm7,-0x210(%rbp)
0.   	0.   	       [1051]   5a505c:  movdqa 0x2e217c(%rip),%xmm7        # 0x2e2184
0.   	0.   	       [1051]   5a5064:  movaps %xmm7,-0x200(%rbp)
0.   	0.010	       [1052]   5a506b:  call   memset@plt [ 0x405fd0, .-0x19f09b]
0.   	0.   	       [1053]   5a5070:  mov    %r15,%rdx
0.   	0.   	       [1053]   5a5073:  xor    %esi,%esi
0.   	0.   	       [1053]   5a5075:  mov    %r12,%rdi
0.   	0.020	       [1053]   5a5078:  call   memset@plt [ 0x405fd0, .-0x19f0a8]
0.   	0.   	       [1063]   5a507d:  mov    -0x3e8(%rbp),%rax
0.   	0.   	       [1063]   5a5084:  mov    -0x4b0(%rbp),%rdi
0.   	0.   	       [1063]   5a508b:  mov    0x728(%rax),%r14
0.   	0.   	       [1063]   5a5092:  call   malloc@plt [ 0x4068b0, .-0x19e7e2]
0.   	0.   	       [1063]   5a5097:  sub    -0x460(%rbp),%r14
0.   	0.   	       [1063]   5a509e:  mov    %rax,-0x488(%rbp)
0.   	0.   	       [1063]   5a50a5:  lea    0x1(%r14),%r13
0.   	0.   	       [1063]   5a50a9:  cmpq   $0x0,-0x3e0(%rbp)
0.   	0.   	       [1063]   5a50b1:  js     .+0x1d31 [ 0x5a6de2 ]
0.   	0.   	       [1063]   5a50b7:  mov    -0x4f0(%rbp),%rcx
0.   	0.   	       [1063]   5a50be:  xor    %eax,%eax
0.   	0.   	       [1063]   5a50c0:  mov    (%rcx,%rax,4),%edx
0.010	0.010	       [1063]   5a50c3:  mov    -0x488(%rbp),%rsi
0.   	0.   	       [1063]   5a50ca:  mov    %edx,(%rsi,%rax,4)
0.   	0.   	       [1063]   5a50cd:  add    $0x1,%rax
0.   	0.   	       [1063]   5a50d1:  cmp    %rax,-0x480(%rbp)
0.   	0.   	       [1063]   5a50d8:  jne    .-0x18 [ 0x5a50c0 ]
0.   	0.   	       [1063]   5a50da:  mov    -0x3e0(%rbp),%rax
0.   	0.   	       [1063]   5a50e1:  movdqa 0x2d0647(%rip),%xmm7        # 0x2d064f
0.   	0.   	       [1063]   5a50e9:  movabs $0x30200000000,%rsi
0.   	0.   	       [1063]   5a50f3:  mov    %r14,-0xe8(%rbp)
0.   	0.   	       [1063]   5a50fa:  mov    %r13,-0xe0(%rbp)
0.   	0.   	       [1063]   5a5101:  mov    %rax,-0xd0(%rbp)
0.   	0.   	       [1063]   5a5108:  or     %r14,%rax
0.   	0.   	       [1063]   5a510b:  movq   $0x0,-0xd8(%rbp)
0.   	0.   	       [1063]   5a5116:  movq   $0x8,-0x110(%rbp)
0.   	0.   	       [1063]   5a5121:  mov    %rsi,-0x108(%rbp)
0.   	0.   	       [1063]   5a5128:  movq   $0x0,-0xf0(%rbp)
0.   	0.   	       [1063]   5a5133:  movaps %xmm7,-0x100(%rbp)
0.   	0.   	       [1063]   5a513a:  js     .+0x49a [ 0x5a55d4 ]
0.   	0.   	       [1063]   5a5140:  mov    -0x480(%rbp),%rdi
0.   	0.   	       [1063]   5a5147:  imul   %r13,%rdi
0.   	0.   	       [1063]   5a514b:  shl    $0x3,%rdi
0.   	0.010	       [1063]   5a514f:  call   malloc@plt [ 0x4068b0, .-0x19e89f]
0.   	0.   	       [1063]   5a5154:  mov    %rax,%r12
0.   	0.   	       [1063]   5a5157:  mov    -0x3e8(%rbp),%rax
0.   	0.   	       [1063]   5a515e:  mov    %r12,%rcx
0.   	0.   	       [1063]   5a5161:  xor    %edx,%edx
0.   	0.   	       [1063]   5a5163:  mov    %r12,-0x120(%rbp)
0.   	0.   	       [1063]   5a516a:  movq   $0x0,-0x118(%rbp)
0.   	0.   	       [1063]   5a5175:  lea    0x0(,%r13,8),%rsi
0.   	0.   	       [1063]   5a517d:  mov    0x730(%rax),%rdi
0.   	0.   	       [1063]   5a5184:  test   %r14,%r14
0.   	0.   	       [1063]   5a5187:  jns    .+0x40d [ 0x5a5594 ]
0.   	0.   	       [1063]   5a518d:  add    $0x1,%rdx
0.   	0.   	       [1063]   5a5191:  add    %rsi,%rcx
0.   	0.   	       [1063]   5a5194:  cmp    %rdx,-0x3e0(%rbp)
0.   	0.   	       [1063]   5a519b:  jge    .-0x17 [ 0x5a5184 ]
0.   	0.   	       [1063]   5a519d:  lea    -0x120(%rbp),%rax
0.   	0.   	       [1063]   5a51a4:  mov    %rax,%rdi
0.   	0.   	       [1063]   5a51a7:  mov    %rax,-0x498(%rbp)
0.   	0.060	       [1063]   5a51ae:  call   _gfortran_internal_pack@plt [ 0x4062f0, .-0x19eebe]
0.   	0.   	       [1063]   5a51b3:  movdqa 0x2d0575(%rip),%xmm7        # 0x2d057d
0.   	0.   	       [1063]   5a51bb:  movq   $0x0,-0x138(%rbp)
0.   	0.   	       [1063]   5a51c6:  mov    %rax,-0x528(%rbp)
0.   	0.   	       [1063]   5a51cd:  mov    -0x3c8(%rbp),%rax
0.   	0.   	       [1063]   5a51d4:  movq   $0x8,-0x170(%rbp)
0.   	0.   	       [1063]   5a51df:  mov    0x4b0(%rax),%rsi
0.010	0.010	       [1063]   5a51e6:  mov    0x4e8(%rax),%r15
0.010	0.010	       [1063]   5a51ed:  movq   $0x0,-0x150(%rbp)
0.   	0.   	       [1063]   5a51f8:  mov    0x4f8(%rax),%rdi
0.   	0.   	       [1063]   5a51ff:  mov    0x500(%rax),%rdx
0.   	0.   	       [1063]   5a5206:  movaps %xmm7,-0x160(%rbp)
0.   	0.   	       [1063]   5a520d:  mov    %rsi,-0x490(%rbp)
0.   	0.   	       [1063]   5a5214:  mov    0x4b8(%rax),%rsi
0.   	0.   	       [1063]   5a521b:  sub    %rdi,%rdx
0.   	0.   	       [1063]   5a521e:  mov    %rdi,-0x4c8(%rbp)
0.   	0.   	       [1063]   5a5225:  mov    %rsi,-0x4b8(%rbp)
0.   	0.   	       [1063]   5a522c:  mov    0x4e0(%rax),%rsi
0.   	0.   	       [1063]   5a5233:  movabs $0x30200000000,%rax
0.   	0.   	       [1063]   5a523d:  mov    %rax,-0x168(%rbp)
0.   	0.   	       [1063]   5a5244:  sub    %rsi,%r15
0.   	0.   	       [1063]   5a5247:  mov    %rsi,-0x4c0(%rbp)
0.   	0.   	       [1063]   5a524e:  mov    %r15,%rax
0.   	0.   	       [1063]   5a5251:  lea    0x1(%r15),%r13
0.   	0.   	       [1063]   5a5255:  mov    %r15,-0x148(%rbp)
0.   	0.   	       [1063]   5a525c:  or     %rdx,%rax
0.   	0.   	       [1063]   5a525f:  mov    %r13,-0x140(%rbp)
0.   	0.   	       [1063]   5a5266:  mov    %rdx,-0x130(%rbp)
0.   	0.   	       [1063]   5a526d:  js     .+0x379 [ 0x5a55e6 ]
0.   	0.   	       [1063]   5a5273:  lea    0x1(%rdx),%rdi
0.   	0.   	       [1063]   5a5277:  mov    %rdx,-0x520(%rbp)
0.   	0.   	       [1063]   5a527e:  imul   %r13,%rdi
0.   	0.   	       [1063]   5a5282:  shl    $0x3,%rdi
0.010	0.030	       [1063]   5a5286:  call   malloc@plt [ 0x4068b0, .-0x19e9d6]
0.   	0.   	       [1063]   5a528b:  mov    -0x520(%rbp),%rdx
0.   	0.   	       [1063]   5a5292:  movq   $0x0,-0x178(%rbp)
0.   	0.   	       [1063]   5a529d:  mov    %rax,-0x180(%rbp)
0.   	0.   	       [1063]   5a52a4:  mov    %rax,%r14
0.   	0.   	       [1063]   5a52a7:  mov    -0x3c8(%rbp),%rax
0.   	0.   	       [1063]   5a52ae:  mov    -0x3f0(%rbp),%rdi
0.   	0.   	       [1063]   5a52b5:  lea    0x0(,%r13,8),%r11
0.   	0.   	       [1063]   5a52bd:  mov    -0x4b8(%rbp),%rcx
0.   	0.   	       [1063]   5a52c4:  imul   0x508(%rax),%rdi
0.   	0.   	       [1063]   5a52cc:  mov    0x4f0(%rax),%rsi
0.   	0.   	       [1063]   5a52d3:  mov    -0x4c8(%rbp),%rax
0.   	0.   	       [1063]   5a52da:  lea    0x0(,%rsi,8),%r10
0.   	0.   	       [1063]   5a52e2:  add    %rdi,%rcx
0.   	0.   	       [1063]   5a52e5:  imul   %rsi,%rax
0.   	0.   	       [1063]   5a52e9:  mov    -0x490(%rbp),%rsi
0.   	0.   	       [1063]   5a52f0:  add    -0x4c0(%rbp),%rax
0.   	0.   	       [1063]   5a52f7:  add    %rcx,%rax
0.   	0.   	       [1063]   5a52fa:  xor    %ecx,%ecx
0.   	0.   	       [1063]   5a52fc:  lea    (%rsi,%rax,8),%rdi
0.   	0.   	       [1063]   5a5300:  mov    %r14,%rsi
0.   	0.   	       [1063]   5a5303:  test   %r15,%r15
0.   	0.   	       [1063]   5a5306:  jns    .+0x1a [ 0x5a5320 ]
0.   	0.   	       [1063]   5a5308:  add    %r10,%rdi
0.   	0.   	       [1063]   5a530b:  add    %r11,%rsi
0.   	0.   	       [1063]   5a530e:  cmp    %rcx,%rdx
0.   	0.   	       [1063]   5a5311:  je     .+0x30b [ 0x5a561c ]
0.   	0.   	       [1063]   5a5317:  add    $0x1,%rcx
0.   	0.   	       [1063]   5a531b:  test   %r15,%r15
0.   	0.   	       [1063]   5a531e:  js     .-0x16 [ 0x5a5308 ]
0.   	0.   	       [1063]   5a5320:  xor    %eax,%eax
0.030	0.030	       [1063]   5a5322:  movsd  (%rdi,%rax,8),%xmm0
0.030	0.030	       [1063]   5a5327:  movsd  %xmm0,(%rsi,%rax,8)
0.   	0.   	       [1063]   5a532c:  add    $0x1,%rax
0.   	0.   	       [1063]   5a5330:  cmp    %rax,%r13
0.   	0.   	       [1063]   5a5333:  jne    .-0x11 [ 0x5a5322 ]
0.   	0.   	       [1063]   5a5335:  add    %r10,%rdi
0.   	0.   	       [1063]   5a5338:  add    %r11,%rsi
0.   	0.   	       [1063]   5a533b:  cmp    %rcx,%rdx
0.   	0.   	       [1063]   5a533e:  je     .+0x2de [ 0x5a561c ]
0.   	0.   	       [1063]   5a5344:  add    $0x1,%rcx
0.   	0.   	       [1063]   5a5348:  jmp    .-0x28 [ 0x5a5320 ]
0.   	0.   	       [ 586]   5a534a:  movdqa 0x302aae(%rip),%xmm0        # 0x302ab6
0.   	0.   	       [ 586]   5a5352:  mov    0x48(%rbp),%rbx
0.   	0.   	       [ 586]   5a5356:  movups %xmm0,0x4(%rax)
0.   	0.   	       [ 586]   5a535a:  movdqa 0x342f1e(%rip),%xmm0        # 0x342f26
0.   	0.   	       [ 586]   5a5362:  movups %xmm0,0x14(%rax)
0.   	0.   	       [ 586]   5a5366:  movdqa 0x342f22(%rip),%xmm0        # 0x342f2a
0.   	0.   	       [ 586]   5a536e:  movups %xmm0,0x24(%rax)
0.   	0.   	       [ 586]   5a5372:  movdqa 0x342f26(%rip),%xmm0        # 0x342f2e
0.   	0.   	       [ 586]   5a537a:  movups %xmm0,0x34(%rax)
0.   	0.   	       [ 586]   5a537e:  movabs $0x2020202020202020,%rax
0.   	0.   	       [ 586]   5a5388:  mov    %rax,0x44(%rbx)
0.   	0.   	       [ 586]   5a538c:  mov    0x48(%rbp),%rbx
0.   	0.   	       [ 586]   5a5390:  mov    %rax,0x1fc(%rbx)
0.   	0.   	       [ 586]   5a5397:  mov    0x48(%rbp),%rbx
0.   	0.   	       [ 586]   5a539b:  mov    0x48(%rbp),%edx
0.   	0.   	       [ 586]   5a539e:  lea    0x4c(%rbx),%rdi
0.   	0.   	       [ 586]   5a53a2:  and    $0xfffffffffffffff8,%rdi
0.   	0.   	       [ 586]   5a53a6:  sub    %edi,%edx
0.   	0.   	       [ 586]   5a53a8:  lea    0x204(%rdx),%ecx
0.   	0.   	       [ 586]   5a53ae:  shr    $0x3,%ecx
0.   	0.   	       [ 586]   5a53b1:  rep stos %rax,%es:(%rdi)
0.   	0.   	       [ 587]   5a53b4:  mov    0x48(%rbp),%rax
0.   	0.   	       [ 587]   5a53b8:  movl   $0xffffffff,(%rax)
0.   	0.   	       [ 588]   5a53be:  movl   $0x1,0x204(%rax)
0.   	0.   	       [ 735]   5a53c8:  lea    -0x28(%rbp),%rsp
0.020	0.020	       [ 735]   5a53cc:  pop    %rbx
0.   	0.   	       [ 735]   5a53cd:  pop    %r12
0.   	0.   	       [ 735]   5a53cf:  pop    %r13
0.   	0.   	       [ 735]   5a53d1:  pop    %r14
0.   	0.   	       [ 735]   5a53d3:  pop    %r15
0.   	0.   	       [ 735]   5a53d5:  pop    %rbp
0.   	0.   	       [ 735]   5a53d6:  ret
0.   	0.   	       [ 598]   5a53d7:  mov    $0x1,%edi
0.   	0.   	       [ 598]   5a53dc:  call   malloc@plt [ 0x4068b0, .-0x19eb2c]
0.   	0.   	       [ 598]   5a53e1:  mov    %rax,-0x428(%rbp)
0.   	0.   	       [ 598]   5a53e8:  test   %rax,%rax
0.   	0.   	       [ 598]   5a53eb:  je     .+0x1ed2 [ 0x5a72bd ]
0.   	0.   	       [ 598]   5a53f1:  movslq %r12d,%rax
0.   	0.   	       [ 598]   5a53f4:  mov    $0x1,%edi
0.   	0.   	       [ 599]   5a53f9:  xor    %edx,%edx
0.   	0.   	       [ 598]   5a53fb:  mov    %rax,-0x3d8(%rbp)
0.   	0.   	       [ 598]   5a5402:  jmp    .-0x1881 [ 0x5a3b81 ]
0.   	0.   	       [ 598]   5a5407:  nopw   0x0(%rax,%rax,1)
0.   	0.   	       [ 615]   5a5410:  add    $0x8,%rax
0.   	0.   	       [ 615]   5a5414:  lea    -0x380(%rbp),%rsi
0.   	0.   	       [ 615]   5a541b:  add    -0x3f8(%rbp),%rdx
0.   	0.   	       [ 615]   5a5422:  cmp    %rsi,%rax
0.   	0.   	       [ 615]   5a5425:  jne    .-0x14a5 [ 0x5a3f80 ]
0.   	0.   	       [ 615]   5a542b:  jmp    .-0x1446 [ 0x5a3fe5 ]
0.   	0.   	       [ 635]   5a5430:  pxor   %xmm0,%xmm0
0.   	0.   	       [ 635]   5a5434:  jmp    .-0xebf [ 0x5a4575 ]
0.   	0.   	       [ 735]   5a5439:  mov    -0x428(%rbp),%rdi
0.   	0.   	       [ 735]   5a5440:  call   free@plt [ 0x405db0, .-0x19f690]
0.   	0.   	       [ 735]   5a5445:  mov    -0x430(%rbp),%rdi
0.   	0.   	       [ 735]   5a544c:  call   free@plt [ 0x405db0, .-0x19f69c]
0.   	0.   	       [ 735]   5a5451:  lea    -0x28(%rbp),%rsp
0.   	0.   	       [ 735]   5a5455:  pop    %rbx
0.   	0.   	       [ 735]   5a5456:  pop    %r12
0.   	0.   	       [ 735]   5a5458:  pop    %r13
0.   	0.   	       [ 735]   5a545a:  pop    %r14
0.   	0.   	       [ 735]   5a545c:  pop    %r15
0.   	0.   	       [ 735]   5a545e:  pop    %rbp
0.   	0.   	       [ 735]   5a545f:  ret
0.   	0.   	       [ 604]   5a5460:  mov    -0x480(%rbp),%rax
0.010	0.010	       [ 604]   5a5467:  shl    $0x2,%rax
0.   	0.   	       [ 604]   5a546b:  mov    %rax,%rdi
0.   	0.   	       [ 604]   5a546e:  mov    %rax,-0x4b0(%rbp)
0.   	0.   	       [ 604]   5a5475:  call   malloc@plt [ 0x4068b0, .-0x19ebc5]
0.   	0.   	       [ 604]   5a547a:  mov    -0x3e8(%rbp),%rsi
0.   	0.   	       [ 604]   5a5481:  mov    %rax,%rdi
0.   	0.   	       [ 604]   5a5484:  mov    -0x3f0(%rbp),%rax
0.   	0.   	       [ 604]   5a548b:  imul   0x788(%rsi),%rax
0.   	0.   	       [ 604]   5a5493:  mov    -0x3d0(%rbp),%rsi
0.   	0.   	       [ 604]   5a549a:  add    %rax,%rsi
0.   	0.   	       [ 604]   5a549d:  mov    -0x498(%rbp),%rax
0.   	0.   	       [ 604]   5a54a4:  mov    %rsi,-0x488(%rbp)
0.   	0.   	       [ 604]   5a54ab:  add    %rsi,%rax
0.   	0.   	       [ 604]   5a54ae:  mov    -0x490(%rbp),%rsi
0.   	0.   	       [ 604]   5a54b5:  lea    (%rsi,%rax,4),%rdx
0.   	0.   	       [ 604]   5a54b9:  xor    %eax,%eax
0.   	0.   	       [ 604]   5a54bb:  mov    (%rdx,%rax,4),%ecx
0.060	0.060	       [ 604]   5a54be:  mov    %ecx,(%rdi,%rax,4)
0.   	0.   	       [ 604]   5a54c1:  add    $0x1,%rax
0.   	0.   	       [ 604]   5a54c5:  cmp    %rax,-0x3e0(%rbp)
0.   	0.   	       [ 604]   5a54cc:  jge    .-0x11 [ 0x5a54bb ]
0.   	0.   	       [ 604]   5a54ce:  jmp    .-0x1803 [ 0x5a3ccb ]
0.   	0.   	       [ 636]   5a54d3:  pxor   %xmm0,%xmm0
0.   	0.   	       [ 636]   5a54d7:  jmp    .-0xb27 [ 0x5a49b0 ]
0.   	0.   	       [ 636]   5a54dc:  mov    %rsi,-0x4c0(%rbp)
0.   	0.   	       [ 636]   5a54e3:  mov    %rax,-0x4c8(%rbp)
0.   	0.   	       [ 644]   5a54ea:  mov    %r15,%rax
0.   	0.   	       [ 644]   5a54ed:  mov    %r11,%rsi
0.020	0.020	       [ 644]   5a54f0:  pxor   %xmm4,%xmm4
0.150	0.150	       [ 644]   5a54f4:  xchg   %ax,%ax
0.010	0.010	       [ 644]   5a54f6:  cs nopw 0x0(%rax,%rax,1)
0.020	0.020	       [ 644]   5a5500:  movsd  (%rsi),%xmm2
1.951	1.951	       [ 644]   5a5504:  movsd  0x18(%rax),%xmm3
0.350	0.350	       [ 644]   5a5509:  add    $0x10,%rax
0.060	0.060	       [ 644]   5a550d:  add    %rdi,%rsi
0.030	0.030	       [ 644]   5a5510:  movsd  (%rax),%xmm0
0.180	0.180	       [ 644]   5a5514:  movapd %xmm2,%xmm1
0.540	0.540	       [ 644]   5a5518:  movapd %xmm3,%xmm6
7.165	7.165	       [ 644]   5a551c:  mulsd  %xmm0,%xmm1
20.624	20.624	       [ 644]   5a5520:  mulsd  %xmm5,%xmm6
0.070	0.070	       [ 644]   5a5524:  mulsd  %xmm5,%xmm0
0.100	0.100	       [ 644]   5a5528:  mulsd  %xmm3,%xmm2
0.420	0.420	       [ 644]   5a552c:  subsd  %xmm6,%xmm1
0.751	0.751	       [ 644]   5a5530:  addsd  %xmm2,%xmm0
0.290	0.290	       [ 644]   5a5534:  unpcklpd %xmm0,%xmm1
4.543	4.543	       [ 644]   5a5538:  addpd  %xmm1,%xmm4
52.607	52.607	       [ 644]   5a553c:  cmp    %rax,%rcx
0.090	0.090	       [ 644]   5a553f:  jne    .-0x3f [ 0x5a5500 ]
0.   	0.   	       [ 644]   5a5541:  add    $0x1,%r9
0.270	0.270	       [ 644]   5a5545:  movups %xmm4,0x10(%r10)
0.570	0.570	       [ 644]   5a554a:  add    $0x8,%r11
0.   	0.   	       [ 644]   5a554e:  add    $0x10,%r10
0.   	0.   	       [ 644]   5a5552:  cmp    %r9,%r12
0.   	0.   	       [ 644]   5a5555:  jne    .-0x6b [ 0x5a54ea ]
0.   	0.   	       [ 644]   5a5557:  mov    -0x4c0(%rbp),%rsi
0.120	0.120	       [ 644]   5a555e:  mov    -0x4c8(%rbp),%rax
0.   	0.   	       [ 644]   5a5565:  jmp    .-0x892 [ 0x5a4cd3 ]
0.   	0.   	       [ 644]   5a556a:  add    $0x1,%rdx
0.   	0.   	       [ 644]   5a556e:  add    %r9,%rcx
0.   	0.   	       [ 644]   5a5571:  cmp    $0x4,%rdx
0.   	0.   	       [ 644]   5a5575:  jne    .-0x9b5 [ 0x5a4bc0 ]
0.   	0.   	       [ 644]   5a557b:  jmp    .-0x866 [ 0x5a4d15 ]
0.   	0.   	       [1063]   5a5580:  add    $0x1,%rdx
0.   	0.   	       [1063]   5a5584:  add    %rsi,%rcx
0.   	0.   	       [1063]   5a5587:  cmp    %rdx,-0x3e0(%rbp)
0.   	0.   	       [1063]   5a558e:  jl     .-0x3f1 [ 0x5a519d ]
0.   	0.   	       [1063]   5a5594:  mov    -0x488(%rbp),%rax
0.   	0.   	       [1063]   5a559b:  mov    -0x4a0(%rbp),%r15
0.   	0.   	       [1063]   5a55a2:  movslq (%rax,%rdx,4),%rax
0.   	0.   	       [1063]   5a55a6:  imul   %rdi,%rax
0.   	0.   	       [1063]   5a55aa:  add    -0x4a8(%rbp),%rax
0.   	0.   	       [1063]   5a55b1:  add    -0x460(%rbp),%rax
0.   	0.   	       [1063]   5a55b8:  lea    (%r15,%rax,8),%r8
0.   	0.   	       [1063]   5a55bc:  xor    %eax,%eax
0.   	0.   	       [1063]   5a55be:  movsd  (%r8,%rax,8),%xmm0
0.010	0.010	       [1063]   5a55c4:  movsd  %xmm0,(%rcx,%rax,8)
0.   	0.   	       [1063]   5a55c9:  add    $0x1,%rax
0.   	0.   	       [1063]   5a55cd:  cmp    %rax,%r13
0.   	0.   	       [1063]   5a55d0:  jne    .-0x12 [ 0x5a55be ]
0.   	0.   	       [1063]   5a55d2:  jmp    .-0x52 [ 0x5a5580 ]
0.   	0.   	       [1063]   5a55d4:  mov    $0x1,%edi
0.   	0.   	       [1063]   5a55d9:  call   malloc@plt [ 0x4068b0, .-0x19ed29]
0.   	0.   	       [1063]   5a55de:  mov    %rax,%r12
0.   	0.   	       [1063]   5a55e1:  jmp    .-0x48a [ 0x5a5157 ]
0.   	0.   	       [1063]   5a55e6:  mov    $0x1,%edi
0.   	0.   	       [1063]   5a55eb:  mov    %rdx,-0x520(%rbp)
0.   	0.   	       [1063]   5a55f2:  call   malloc@plt [ 0x4068b0, .-0x19ed42]
0.   	0.   	       [1063]   5a55f7:  mov    -0x520(%rbp),%rdx
0.   	0.   	       [1063]   5a55fe:  movq   $0x0,-0x178(%rbp)
0.   	0.   	       [1063]   5a5609:  mov    %rax,-0x180(%rbp)
0.   	0.   	       [1063]   5a5610:  mov    %rax,%r14
0.   	0.   	       [1063]   5a5613:  test   %rdx,%rdx
0.   	0.   	       [1063]   5a5616:  jns    .-0x36f [ 0x5a52a7 ]
0.   	0.   	       [1063]   5a561c:  lea    -0x180(%rbp),%rax
0.   	0.   	       [1063]   5a5623:  mov    %rax,%rdi
0.   	0.   	       [1063]   5a5626:  mov    %rax,-0x490(%rbp)
0.   	0.010	       [1063]   5a562d:  call   _gfortran_internal_pack@plt [ 0x4062f0, .-0x19f33d]
0.   	0.   	       [1063]   5a5632:  movdqa 0x2d00f6(%rip),%xmm7        # 0x2d00fe
0.   	0.   	       [1063]   5a563a:  movq   $0x8,-0x2d0(%rbp)
0.   	0.   	       [1063]   5a5645:  mov    %rax,-0x4b8(%rbp)
0.   	0.   	       [1063]   5a564c:  mov    -0x3c8(%rbp),%rax
0.   	0.   	       [1063]   5a5653:  movq   $0x0,-0x2b0(%rbp)
0.   	0.   	       [1063]   5a565e:  mov    0xb28(%rax),%rdx
0.   	0.   	       [1063]   5a5665:  mov    0xae0(%rax),%rsi
0.   	0.   	       [1063]   5a566c:  movaps %xmm7,-0x2c0(%rbp)
0.   	0.   	       [1063]   5a5673:  mov    0xae8(%rax),%r15
0.   	0.   	       [1063]   5a567a:  mov    0xb30(%rax),%rax
0.   	0.   	       [1063]   5a5681:  mov    %rax,%rcx
0.   	0.   	       [1063]   5a5684:  mov    %rax,-0x4c0(%rbp)
0.   	0.   	       [1063]   5a568b:  movabs $0x30100000000,%rax
0.   	0.   	       [1063]   5a5695:  sub    %rdx,%rcx
0.   	0.   	       [1063]   5a5698:  mov    %rax,-0x2c8(%rbp)
0.   	0.   	       [1063]   5a569f:  mov    %rcx,-0x2a8(%rbp)
0.   	0.   	       [1063]   5a56a6:  jns    .+0x1527 [ 0x5a6bcd ]
0.   	0.   	       [1063]   5a56ac:  mov    $0x1,%edi
0.   	0.   	       [1063]   5a56b1:  call   malloc@plt [ 0x4068b0, .-0x19ee01]
0.   	0.   	       [1063]   5a56b6:  movq   $0x0,-0x2d8(%rbp)
0.   	0.   	       [1063]   5a56c1:  mov    %rax,-0x2e0(%rbp)
0.   	0.   	       [1063]   5a56c8:  mov    %rax,%r13
0.   	0.   	       [1063]   5a56cb:  lea    -0x240(%rbp),%rax
0.   	0.   	       [1063]   5a56d2:  push   0x48(%rbp)
0.   	0.   	       [1063]   5a56d5:  mov    -0x528(%rbp),%r15
0.   	0.   	       [1063]   5a56dc:  lea    -0x3b4(%rbp),%rsi
0.   	0.   	       [1063]   5a56e3:  push   %rax
0.   	0.   	       [1063]   5a56e4:  lea    -0x2a0(%rbp),%r9
0.   	0.   	       [1063]   5a56eb:  lea    -0x2e0(%rbp),%rcx
0.   	0.   	       [1063]   5a56f2:  mov    -0x3c8(%rbp),%rax
0.   	0.   	       [1063]   5a56f9:  mov    -0x4b8(%rbp),%rdx
0.   	0.   	       [1063]   5a5700:  mov    %r15,%rdi
0.   	0.   	       [1063]   5a5703:  lea    0xad8(%rax),%r8
0.   	0.881	       [1063]   5a570a:  call   __m_mesh_convert_face_position_MOD_mesh_convert_face_position_2d_multi [ 0x598a20, .-0xccea]
0.   	0.   	       [1063]   5a570f:  pop    %r10
0.   	0.   	       [1063]   5a5711:  pop    %r11
0.   	0.   	       [1063]   5a5713:  cmp    %r15,%r12
0.   	0.   	       [1063]   5a5716:  je     .+0xa [ 0x5a5720 ]
0.   	0.   	       [1063]   5a5718:  mov    %r15,%rdi
0.   	0.   	       [1063]   5a571b:  call   free@plt [ 0x405db0, .-0x19f96b]
0.   	0.   	       [1063]   5a5720:  mov    -0x488(%rbp),%rdi
0.020	0.040	       [1063]   5a5727:  call   free@plt [ 0x405db0, .-0x19f977]
0.   	0.   	       [1063]   5a572c:  mov    -0x120(%rbp),%rdi
0.   	0.   	       [1063]   5a5733:  call   free@plt [ 0x405db0, .-0x19f983]
0.   	0.   	       [1063]   5a5738:  mov    -0x4b8(%rbp),%rax
0.   	0.   	       [1063]   5a573f:  cmp    %r14,%rax
0.   	0.   	       [1063]   5a5742:  je     .+0xa [ 0x5a574c ]
0.   	0.   	       [1063]   5a5744:  mov    %rax,%rdi
0.   	0.   	       [1063]   5a5747:  call   free@plt [ 0x405db0, .-0x19f997]
0.   	0.   	       [1063]   5a574c:  mov    -0x180(%rbp),%rdi
0.   	0.   	       [1063]   5a5753:  call   free@plt [ 0x405db0, .-0x19f9a3]
0.   	0.   	       [1063]   5a5758:  mov    %r13,%rdi
0.   	0.   	       [1063]   5a575b:  call   free@plt [ 0x405db0, .-0x19f9ab]
0.   	0.   	       [1063]   5a5760:  mov    -0x448(%rbp),%rax
0.   	0.   	       [1068]   5a5767:  mov    $0x8,%ecx
0.   	0.   	       [1068]   5a576c:  pxor   %xmm0,%xmm0
0.   	0.   	       [1068]   5a5770:  mov    %rax,%r12
0.   	0.   	       [1068]   5a5773:  lea    0x20(%rax),%rdi
0.   	0.   	       [1068]   5a5777:  cmpq   $0x0,-0x3d8(%rbp)
0.   	0.   	       [1068]   5a577f:  jle    .+0x422 [ 0x5a5ba1 ]
0.   	0.   	       [1068]   5a5785:  lea    -0x9(%rcx),%rsi
0.010	0.010	       [1068]   5a5789:  mov    %rdi,%rdx
0.   	0.   	       [1068]   5a578c:  lea    -0x30(%rdx),%rax
0.   	0.   	       [1068]   5a5790:  movups %xmm0,0x10(%rax)
0.100	0.100	       [1068]   5a5794:  add    $0x10,%rax
0.   	0.   	       [1068]   5a5798:  cmp    %rax,%rdx
0.   	0.   	       [1068]   5a579b:  jne    .-0xb [ 0x5a5790 ]
0.   	0.   	       [1068]   5a579d:  add    $0x3,%rsi
0.   	0.   	       [1068]   5a57a1:  add    $0x30,%rdx
0.   	0.   	       [1068]   5a57a5:  cmp    %rsi,%rcx
0.   	0.   	       [1068]   5a57a8:  jne    .-0x1c [ 0x5a578c ]
0.   	0.   	       [1068]   5a57aa:  add    $0x9,%rcx
0.   	0.   	       [1068]   5a57ae:  add    $0x90,%rdi
0.   	0.   	       [1068]   5a57b5:  cmp    %rcx,-0x500(%rbp)
0.   	0.   	       [1068]   5a57bc:  jne    .-0x37 [ 0x5a5785 ]
0.   	0.   	       [1068]   5a57be:  mov    -0x438(%rbp),%rsi
0.020	0.020	       [1068]   5a57c5:  mov    -0x400(%rbp),%rdx
0.   	0.   	       [1069]   5a57cc:  pxor   %xmm0,%xmm0
0.   	0.   	       [1069]   5a57d0:  sub    %rsi,%rdx
0.   	0.   	       [1068]   5a57d3:  mov    %rsi,%rax
0.   	0.   	       [1068]   5a57d6:  and    $0x10,%edx
0.   	0.   	       [1068]   5a57d9:  je     .+0x19 [ 0x5a57f2 ]
0.   	0.   	       [1069]   5a57db:  mov    -0x438(%rbp),%rax
0.   	0.   	       [1069]   5a57e2:  movups %xmm0,(%rax)
0.   	0.   	       [1069]   5a57e5:  add    $0x10,%rax
0.   	0.   	       [1069]   5a57e9:  cmp    %rax,-0x400(%rbp)
0.   	0.   	       [1069]   5a57f0:  je     .+0x16 [ 0x5a5806 ]
0.   	0.   	       [1069]   5a57f2:  movups %xmm0,(%rax)
0.   	0.   	       [1069]   5a57f5:  add    $0x20,%rax
0.   	0.   	       [1069]   5a57f9:  movups %xmm0,-0x10(%rax)
0.030	0.030	       [1069]   5a57fd:  cmp    %rax,-0x400(%rbp)
0.   	0.   	       [1069]   5a5804:  jne    .-0x12 [ 0x5a57f2 ]
0.   	0.   	       [1069]   5a5806:  mov    -0x440(%rbp),%rsi
0.   	0.   	       [1069]   5a580d:  mov    -0x418(%rbp),%rdx
0.   	0.   	       [1070]   5a5814:  pxor   %xmm0,%xmm0
0.   	0.   	       [1070]   5a5818:  sub    %rsi,%rdx
0.   	0.   	       [1069]   5a581b:  mov    %rsi,%rax
0.   	0.   	       [1069]   5a581e:  and    $0x10,%edx
0.   	0.   	       [1069]   5a5821:  je     .+0x19 [ 0x5a583a ]
0.   	0.   	       [1070]   5a5823:  mov    -0x440(%rbp),%rax
0.   	0.   	       [1070]   5a582a:  movups %xmm0,(%rax)
0.   	0.   	       [1070]   5a582d:  add    $0x10,%rax
0.   	0.   	       [1070]   5a5831:  cmp    %rax,-0x418(%rbp)
0.   	0.   	       [1070]   5a5838:  je     .+0x16 [ 0x5a584e ]
0.   	0.   	       [1070]   5a583a:  movups %xmm0,(%rax)
0.010	0.010	       [1070]   5a583d:  add    $0x20,%rax
0.   	0.   	       [1070]   5a5841:  movups %xmm0,-0x10(%rax)
0.010	0.010	       [1070]   5a5845:  cmp    %rax,-0x418(%rbp)
0.   	0.   	       [1070]   5a584c:  jne    .-0x12 [ 0x5a583a ]
0.   	0.   	       [1071]   5a584e:  mov    -0x470(%rbp),%r15
0.010	0.010	       [1071]   5a5855:  mov    -0x518(%rbp),%rdx
0.   	0.   	       [1071]   5a585c:  xor    %esi,%esi
0.   	0.   	       [1071]   5a585e:  mov    $0x1,%r13d
0.   	0.   	       [1071]   5a5864:  mov    %r15,%rdi
0.   	0.   	       [1071]   5a5867:  call   memset@plt [ 0x405fd0, .-0x19f897]
0.   	0.   	       [1071]   5a586c:  mov    -0x440(%rbp),%rax
0.   	0.   	       [1077]   5a5873:  mov    %rbx,-0x520(%rbp)
0.   	0.   	       [1077]   5a587a:  movdqa 0x2d9dde(%rip),%xmm2        # 0x2d9de6
0.   	0.   	       [1077]   5a5882:  movdqa 0x2d5186(%rip),%xmm1        # 0x2d518e
0.   	0.   	       [1077]   5a588a:  mov    %r15,-0x4b8(%rbp)
0.   	0.   	       [1077]   5a5891:  movabs $0x30100000000,%r15
0.   	0.   	       [1071]   5a589b:  mov    %rax,-0x4c0(%rbp)
0.   	0.   	       [1071]   5a58a2:  mov    -0x438(%rbp),%rax
0.   	0.   	       [1071]   5a58a9:  movdqa 0x2d4a2f(%rip),%xmm0        # 0x2d4a37
0.010	0.010	       [1071]   5a58b1:  mov    %rax,-0x4c8(%rbp)
0.   	0.   	       [1077]   5a58b8:  mov    $0x1,%edx
0.   	0.   	       [1077]   5a58bd:  mov    %r13,%rax
0.010	0.010	       [1077]   5a58c0:  sub    $0x8,%rsp
0.010	0.010	       [1077]   5a58c4:  sub    -0x1f8(%rbp),%rax
0.   	0.   	       [1077]   5a58cb:  imul   -0x200(%rbp),%rax
0.   	0.   	       [1077]   5a58d3:  mov    -0x240(%rbp),%rcx
0.   	0.   	       [1077]   5a58da:  mov    %rdx,%r14
0.010	0.010	       [1077]   5a58dd:  movabs $0x40200000000,%rsi
0.   	0.   	       [1077]   5a58e7:  sub    -0x270(%rbp),%rdx
0.   	0.   	       [1077]   5a58ee:  add    -0x268(%rbp),%rdx
0.   	0.   	       [1077]   5a58f5:  movq   $0x1,-0x150(%rbp)
0.   	0.   	       [1077]   5a5900:  mov    %rdx,-0x2a8(%rbp)
0.   	0.   	       [1077]   5a5907:  mov    -0x220(%rbp),%r10
0.010	0.010	       [1077]   5a590e:  mov    %rdx,-0x528(%rbp)
0.   	0.   	       [1077]   5a5915:  mov    %r13,%rdx
0.010	0.010	       [1077]   5a5918:  sub    -0x258(%rbp),%rdx
0.   	0.   	       [1077]   5a591f:  lea    (%rcx,%rax,8),%rax
0.   	0.   	       [1077]   5a5923:  imul   -0x260(%rbp),%rdx
0.   	0.   	       [1077]   5a592b:  mov    -0x2a0(%rbp),%rcx
0.   	0.   	       [1077]   5a5932:  mov    %rax,-0x180(%rbp)
0.   	0.   	       [1072]   5a5939:  add    $0x1,%r13
0.   	0.   	       [1077]   5a593d:  mov    %rax,-0x530(%rbp)
0.   	0.   	       [1077]   5a5944:  mov    -0x280(%rbp),%rax
0.   	0.   	       [1077]   5a594b:  sub    -0x210(%rbp),%r14
0.   	0.   	       [1077]   5a5952:  add    -0x208(%rbp),%r14
0.010	0.010	       [1077]   5a5959:  mov    %r10,-0x160(%rbp)
0.020	0.020	       [1077]   5a5960:  lea    (%rcx,%rdx,8),%rbx
0.   	0.   	       [1077]   5a5964:  mov    %r10,-0x538(%rbp)
0.   	0.   	       [1077]   5a596b:  lea    -0x2e0(%rbp),%rcx
0.   	0.   	       [1077]   5a5972:  mov    %rax,-0x488(%rbp)
0.   	0.   	       [1077]   5a5979:  mov    %rax,-0x2c0(%rbp)
0.   	0.   	       [1077]   5a5980:  mov    %r14,-0x148(%rbp)
0.   	0.   	       [1077]   5a5987:  mov    %rbx,-0x2e0(%rbp)
0.010	0.010	       [1077]   5a598e:  movq   $0x1,-0x158(%rbp)
0.010	0.010	       [1077]   5a5999:  movq   $0xffffffffffffffff,-0x178(%rbp)
0.   	0.   	       [1077]   5a59a4:  movq   $0x8,-0x170(%rbp)
0.   	0.   	       [1077]   5a59af:  mov    %r15,-0x168(%rbp)
0.   	0.   	       [1077]   5a59b6:  movq   $0x1,-0x2b0(%rbp)
0.   	0.   	       [1077]   5a59c1:  movq   $0x1,-0x2b8(%rbp)
0.   	0.   	       [1077]   5a59cc:  movq   $0xffffffffffffffff,-0x2d8(%rbp)
0.   	0.   	       [1077]   5a59d7:  movq   $0x8,-0x2d0(%rbp)
0.   	0.   	       [1077]   5a59e2:  mov    %r15,-0x2c8(%rbp)
0.010	0.010	       [1077]   5a59e9:  mov    %r12,-0x120(%rbp)
0.   	0.   	       [1077]   5a59f0:  mov    -0x498(%rbp),%r9
0.010	0.010	       [1072]   5a59f7:  add    $0x90,%r12
0.   	0.   	       [1077]   5a59fe:  movaps %xmm2,-0x100(%rbp)
0.   	0.   	       [1077]   5a5a05:  mov    -0x410(%rbp),%r8
0.   	0.   	       [1077]   5a5a0c:  mov    -0x490(%rbp),%rdx
0.   	0.   	       [1077]   5a5a13:  movaps %xmm1,-0xf0(%rbp)
0.   	0.   	       [1077]   5a5a1a:  mov    -0x450(%rbp),%rdi
0.   	0.   	       [1077]   5a5a21:  movaps %xmm0,-0xe0(%rbp)
0.010	0.010	       [1077]   5a5a28:  mov    %rsi,-0x108(%rbp)
0.   	0.   	       [1077]   5a5a2f:  mov    -0x408(%rbp),%rsi
0.   	0.   	       [1077]   5a5a36:  movq   $0xfffffffffffffffc,-0x118(%rbp)
0.   	0.   	       [1077]   5a5a41:  movq   $0x10,-0x110(%rbp)
0.   	0.   	       [1077]   5a5a4c:  movq   $0x3,-0xd0(%rbp)
0.   	17.172	       [1077]   5a5a57:  push   0x48(%rbp)
0.   	0.   	       [1077]   5a5a5a:  call   __m_model_eval_MOD_model_eval_c_solo [ 0x549140, .-0x5c91a]
0.   	0.   	       [1081]   5a5a5f:  mov    -0x530(%rbp),%rax
0.   	0.   	       [1081]   5a5a66:  mov    -0x538(%rbp),%r10
0.   	0.   	       [1081]   5a5a6d:  mov    %r14,-0xe8(%rbp)
0.   	0.   	       [1081]   5a5a74:  mov    -0x528(%rbp),%r11
0.   	0.   	       [1081]   5a5a7b:  mov    %rbx,-0x180(%rbp)
0.   	0.   	       [1081]   5a5a82:  mov    $0x8e71a0,%r9d
0.   	0.   	       [1081]   5a5a88:  mov    %rax,-0x120(%rbp)
0.010	0.010	       [1081]   5a5a8f:  mov    -0x4c0(%rbp),%r14
0.010	0.010	       [1081]   5a5a96:  mov    -0x488(%rbp),%rax
0.   	0.   	       [1081]   5a5a9d:  mov    -0x4c8(%rbp),%rbx
0.   	0.   	       [1081]   5a5aa4:  mov    %r10,-0x100(%rbp)
0.   	0.   	       [1081]   5a5aab:  mov    %r11,-0x148(%rbp)
0.   	0.   	       [1081]   5a5ab2:  mov    %rax,-0x160(%rbp)
0.   	0.   	       [1081]   5a5ab9:  movq   $0x1,-0xf0(%rbp)
0.   	0.   	       [1081]   5a5ac4:  movq   $0x1,-0xf8(%rbp)
0.   	0.   	       [1081]   5a5acf:  movq   $0xffffffffffffffff,-0x118(%rbp)
0.030	0.030	       [1081]   5a5ada:  movq   $0x8,-0x110(%rbp)
0.   	0.   	       [1081]   5a5ae5:  mov    %r15,-0x108(%rbp)
0.   	0.   	       [1081]   5a5aec:  movq   $0x1,-0x150(%rbp)
0.   	0.   	       [1081]   5a5af7:  movq   $0x1,-0x158(%rbp)
0.020	0.020	       [1081]   5a5b02:  movq   $0xffffffffffffffff,-0x178(%rbp)
0.   	0.   	       [1081]   5a5b0d:  movq   $0x8,-0x170(%rbp)
0.   	0.   	       [1081]   5a5b18:  mov    %r15,-0x168(%rbp)
0.   	0.   	       [1081]   5a5b1f:  push   0x48(%rbp)
0.   	0.   	       [1081]   5a5b22:  push   -0x4b8(%rbp)
0.   	0.   	       [1081]   5a5b28:  push   %r14
0.   	0.   	       [1072]   5a5b2a:  add    $0x10,%r14
0.   	0.   	       [1081]   5a5b2e:  push   %rbx
0.   	0.   	       [1081]   5a5b2f:  mov    -0x410(%rbp),%r8
0.   	0.   	       [1081]   5a5b36:  mov    -0x490(%rbp),%rcx
0.   	0.   	       [1081]   5a5b3d:  mov    -0x498(%rbp),%rdx
0.010	0.010	       [1081]   5a5b44:  mov    -0x408(%rbp),%rsi
0.   	0.   	       [1081]   5a5b4b:  mov    -0x450(%rbp),%rdi
0.   	15.611	       [1081]   5a5b52:  call   __m_model_eval_MOD_model_eval_all_solo [ 0x54a090, .-0x5bac2]
0.   	0.   	       [1072]   5a5b57:  lea    0x10(%rbx),%rax
0.   	0.   	       [1072]   5a5b5b:  add    $0x30,%rsp
0.   	0.   	       [1072]   5a5b5f:  addq   $0x8,-0x4b8(%rbp)
0.   	0.   	       [1072]   5a5b67:  cmp    %r13d,-0x3d0(%rbp)
0.   	0.   	       [1072]   5a5b6e:  mov    %rax,-0x4c8(%rbp)
0.   	0.   	       [1072]   5a5b75:  mov    %r14,-0x4c0(%rbp)
0.020	0.020	       [1072]   5a5b7c:  movdqa 0x2d475c(%rip),%xmm0        # 0x2d4764
0.   	0.   	       [1072]   5a5b84:  movdqa 0x2d4e84(%rip),%xmm1        # 0x2d4e8c
0.010	0.010	       [1072]   5a5b8c:  movdqa 0x2d9acc(%rip),%xmm2        # 0x2d9ad4
0.   	0.   	       [1072]   5a5b94:  jge    .-0x2dc [ 0x5a58b8 ]
0.   	0.   	       [1081]   5a5b9a:  mov    -0x520(%rbp),%rbx
0.   	0.   	       [1084]   5a5ba1:  mov    -0x240(%rbp),%rdi
0.   	0.   	       [1084]   5a5ba8:  test   %rdi,%rdi
0.   	0.   	       [1084]   5a5bab:  je     .+0x17c0 [ 0x5a736b ]
0.   	0.040	       [1084]   5a5bb1:  call   free@plt [ 0x405db0, .-0x19fe01]
0.   	0.   	       [1085]   5a5bb6:  mov    -0x2a0(%rbp),%rdi
0.   	0.   	       [1085]   5a5bbd:  test   %rdi,%rdi
0.   	0.   	       [1085]   5a5bc0:  je     .+0x17c1 [ 0x5a7381 ]
0.   	0.   	       [1085]   5a5bc6:  call   free@plt [ 0x405db0, .-0x19fe16]
0.   	0.   	       [ 670]   5a5bcb:  mov    0x10(%rbp),%rax
0.   	0.   	       [ 670]   5a5bcf:  mov    (%rax),%eax
0.010	0.010	       [ 703]   5a5bd1:  test   %eax,%eax
0.   	0.   	       [ 703]   5a5bd3:  je     .+0x1199 [ 0x5a6d6c ]
0.   	0.   	       [ 703]   5a5bd9:  cmp    $0x17,%eax
0.   	0.   	       [ 703]   5a5bdc:  jne    .+0x107a [ 0x5a6c56 ]
0.   	0.   	       [ 685]   5a5be2:  mov    -0x3c8(%rbp),%rsi
0.   	0.   	       [ 685]   5a5be9:  mov    -0x3f0(%rbp),%rcx
0.   	0.   	       [ 686]   5a5bf0:  lea    -0x3b0(%rbp),%rdi
0.   	0.   	       [ 685]   5a5bf7:  movslq -0x3b4(%rbp),%rax
0.   	0.   	       [ 685]   5a5bfe:  imul   0x458(%rsi),%rcx
0.020	0.020	       [ 685]   5a5c06:  mov    0x400(%rsi),%rdx
0.   	0.   	       [ 685]   5a5c0d:  imul   0x440(%rsi),%rax
0.   	0.   	       [ 685]   5a5c15:  add    0x408(%rsi),%rax
0.   	0.   	       [ 685]   5a5c1c:  add    %rcx,%rax
0.   	0.   	       [ 685]   5a5c1f:  add    0x430(%rsi),%rax
0.   	0.   	       [ 686]   5a5c26:  lea    -0x380(%rbp),%rsi
0.   	0.   	       [ 685]   5a5c2d:  movsd  (%rdx,%rax,8),%xmm0
0.010	0.010	       [ 685]   5a5c32:  movsd  %xmm0,-0x3b0(%rbp)
0.   	0.   	       [ 685]   5a5c3a:  movsd  0x8(%rdx,%rax,8),%xmm0
0.   	0.   	       [ 685]   5a5c40:  movsd  %xmm0,-0x3a8(%rbp)
0.   	0.030	       [ 686]   5a5c48:  call   __m_model_eval_MOD_compute_operator_a_2d [ 0x547240, .-0x5ea08]
0.   	0.   	       [ 687]   5a5c4d:  mov    -0x3d0(%rbp),%r9d
0.   	0.   	       [ 664]   5a5c54:  mov    -0x3b4(%rbp),%esi
0.   	0.   	       [ 687]   5a5c5a:  test   %r9d,%r9d
0.   	0.   	       [ 687]   5a5c5d:  jle    .+0x6a4 [ 0x5a6301 ]
0.   	0.   	       [ 687]   5a5c63:  mov    %rbx,%rdx
0.   	0.   	       [ 687]   5a5c66:  mov    -0x438(%rbp),%r14
0.   	0.   	       [ 687]   5a5c6d:  mov    -0x478(%rbp),%r11
0.   	0.   	       [ 687]   5a5c74:  mov    $0x1,%r12d
0.   	0.   	       [ 687]   5a5c7a:  mov    -0x448(%rbp),%r15
0.   	0.   	       [ 687]   5a5c81:  mov    -0x440(%rbp),%rbx
0.   	0.   	       [ 687]   5a5c88:  lea    -0x1e0(%rbp),%r13
0.   	0.   	       [ 687]   5a5c8f:  lea    -0xc0(%rbp),%r8
0.   	0.   	       [ 689]   5a5c96:  mov    %r8,%rsi
0.   	0.   	       [ 689]   5a5c99:  mov    %r15,%rdi
0.   	0.   	       [ 689]   5a5c9c:  mov    %r11,-0x4c0(%rbp)
0.   	0.   	       [ 689]   5a5ca3:  mov    %rdx,-0x4b8(%rbp)
0.   	0.   	       [ 689]   5a5caa:  mov    %r8,-0x488(%rbp)
0.   	0.911	       [ 689]   5a5cb1:  call   __m_model_eval_MOD_compute_operator_dcd_2d [ 0x546fb0, .-0x5ed01]
0.   	0.   	       [ 690]   5a5cb6:  movsd  -0x380(%rbp),%xmm5
0.020	0.020	       [ 690]   5a5cbe:  xor    %eax,%eax
0.   	0.   	       [ 690]   5a5cc0:  movsd  -0x370(%rbp),%xmm3
0.010	0.010	       [ 690]   5a5cc8:  movsd  -0x360(%rbp),%xmm1
0.   	0.   	       [ 690]   5a5cd0:  mov    %r13,%rdi
0.   	0.   	       [ 690]   5a5cd3:  mov    $0xc,%ecx
0.   	0.   	       [ 690]   5a5cd8:  movsd  -0x378(%rbp),%xmm4
0.   	0.   	       [ 690]   5a5ce0:  movsd  -0x368(%rbp),%xmm2
0.   	0.   	       [ 690]   5a5ce8:  movsd  -0x358(%rbp),%xmm0
0.   	0.   	       [ 690]   5a5cf0:  movq   $0x0,-0x178(%rbp)
0.   	0.   	       [ 690]   5a5cfb:  lea    -0x1e0(%rbp),%r13
0.   	0.   	       [ 690]   5a5d02:  movq   $0x0,-0x168(%rbp)
0.   	0.   	       [ 690]   5a5d0d:  mov    -0x490(%rbp),%r9
0.   	0.   	       [ 690]   5a5d14:  mov    $0x3,%r10d
0.   	0.   	       [ 690]   5a5d1a:  movq   $0x0,-0x158(%rbp)
0.   	0.   	       [ 690]   5a5d25:  mov    -0x4b8(%rbp),%rdx
0.   	0.   	       [ 690]   5a5d2c:  mov    -0x4c0(%rbp),%r11
0.   	0.   	       [ 690]   5a5d33:  mov    -0x488(%rbp),%r8
0.010	0.010	       [ 690]   5a5d3a:  movq   $0x0,-0x148(%rbp)
0.   	0.   	       [ 690]   5a5d45:  rep stos %rax,%es:(%rdi)
0.070	0.070	       [ 690]   5a5d48:  movsd  %xmm5,-0x180(%rbp)
0.   	0.   	       [ 690]   5a5d50:  mov    %r13,%rax
0.020	0.020	       [ 690]   5a5d53:  mov    %r13,%rcx
0.   	0.   	       [ 690]   5a5d56:  movq   $0x0,-0x138(%rbp)
0.010	0.010	       [ 690]   5a5d61:  movq   $0x0,-0x128(%rbp)
0.   	0.   	       [ 690]   5a5d6c:  movsd  %xmm3,-0x170(%rbp)
0.   	0.   	       [ 690]   5a5d74:  movsd  %xmm1,-0x160(%rbp)
0.   	0.   	       [ 690]   5a5d7c:  movsd  %xmm4,-0x150(%rbp)
0.   	0.   	       [ 690]   5a5d84:  movsd  %xmm2,-0x140(%rbp)
0.   	0.   	       [ 690]   5a5d8c:  movsd  %xmm0,-0x130(%rbp)
0.020	0.020	       [ 690]   5a5d94:  mov    %rdx,-0x488(%rbp)
0.   	0.   	       [ 690]   5a5d9b:  mov    %r8,%rdi
0.   	0.   	       [ 690]   5a5d9e:  mov    %r9,%rsi
0.   	0.   	       [ 690]   5a5da1:  movsd  (%rsi),%xmm9
0.   	0.   	       [ 690]   5a5da6:  movsd  0x8(%rsi),%xmm8
0.010	0.010	       [ 690]   5a5dac:  xor    %edx,%edx
0.   	0.   	       [ 690]   5a5dae:  unpcklpd %xmm9,%xmm9
0.   	0.   	       [ 690]   5a5db3:  unpcklpd %xmm8,%xmm8
0.060	0.060	       [ 690]   5a5db8:  movapd (%rdi,%rdx,1),%xmm6
0.030	0.030	       [ 690]   5a5dbd:  movapd %xmm6,%xmm7
0.010	0.010	       [ 690]   5a5dc1:  shufpd $0x1,%xmm6,%xmm6
0.090	0.090	       [ 690]   5a5dc6:  mulpd  %xmm9,%xmm7
0.050	0.050	       [ 690]   5a5dcb:  mulpd  %xmm8,%xmm6
0.070	0.070	       [ 690]   5a5dd0:  movapd %xmm7,%xmm10
0.020	0.020	       [ 690]   5a5dd5:  subpd  %xmm6,%xmm10
0.040	0.040	       [ 690]   5a5dda:  addpd  %xmm7,%xmm6
0.060	0.060	       [ 690]   5a5dde:  movsd  %xmm10,%xmm6
0.030	0.030	       [ 690]   5a5de3:  addpd  (%rcx,%rdx,1),%xmm6
0.210	0.210	       [ 690]   5a5de8:  movaps %xmm6,(%rcx,%rdx,1)
0.080	0.080	       [ 690]   5a5dec:  add    $0x10,%rdx
0.040	0.040	       [ 690]   5a5df0:  cmp    $0x30,%rdx
0.   	0.   	       [ 690]   5a5df4:  jne    .-0x3c [ 0x5a5db8 ]
0.   	0.   	       [ 690]   5a5df6:  add    $0x30,%rdi
0.010	0.010	       [ 690]   5a5dfa:  lea    -0x30(%rbp),%rdx
0.   	0.   	       [ 690]   5a5dfe:  add    $0x10,%rsi
0.010	0.010	       [ 690]   5a5e02:  cmp    %rdi,%rdx
0.   	0.   	       [ 690]   5a5e05:  jne    .-0x64 [ 0x5a5da1 ]
0.010	0.010	       [ 690]   5a5e07:  mov    -0x488(%rbp),%rdx
0.   	0.   	       [ 690]   5a5e0e:  add    $0x30,%rcx
0.   	0.   	       [ 690]   5a5e12:  add    $0x30,%r9
0.   	0.   	       [ 690]   5a5e16:  cmp    $0x6,%r10
0.030	0.030	       [ 690]   5a5e1a:  je     .+0xd [ 0x5a5e27 ]
0.   	0.   	       [ 690]   5a5e1c:  mov    $0x6,%r10d
0.   	0.   	       [ 690]   5a5e22:  jmp    .-0x8e [ 0x5a5d94 ]
0.   	0.   	       [ 691]   5a5e27:  movq   $0x0,-0x118(%rbp)
0.030	0.030	       [ 691]   5a5e32:  lea    -0x320(%rbp),%rsi
0.   	0.   	       [ 691]   5a5e39:  mov    $0x3,%r10d
0.   	0.   	       [ 691]   5a5e3f:  movq   $0x0,-0x108(%rbp)
0.   	0.   	       [ 691]   5a5e4a:  movq   $0x0,-0xf8(%rbp)
0.   	0.   	       [ 691]   5a5e55:  movq   $0x0,-0xe8(%rbp)
0.   	0.   	       [ 691]   5a5e60:  movq   $0x0,-0xd8(%rbp)
0.   	0.   	       [ 691]   5a5e6b:  movq   $0x0,-0xc8(%rbp)
0.   	0.   	       [ 691]   5a5e76:  movsd  %xmm0,-0xd0(%rbp)
0.020	0.020	       [ 691]   5a5e7e:  pxor   %xmm0,%xmm0
0.   	0.   	       [ 691]   5a5e82:  movsd  %xmm5,-0x120(%rbp)
0.   	0.   	       [ 691]   5a5e8a:  movsd  %xmm4,-0x110(%rbp)
0.050	0.050	       [ 691]   5a5e92:  movsd  %xmm3,-0x100(%rbp)
0.   	0.   	       [ 691]   5a5e9a:  movsd  %xmm2,-0xf0(%rbp)
0.   	0.   	       [ 691]   5a5ea2:  movsd  %xmm1,-0xe0(%rbp)
0.   	0.   	       [ 691]   5a5eaa:  movaps %xmm0,-0x320(%rbp)
0.   	0.   	       [ 691]   5a5eb1:  movaps %xmm0,-0x310(%rbp)
0.010	0.010	       [ 691]   5a5eb8:  movaps %xmm0,-0x300(%rbp)
0.   	0.   	       [ 691]   5a5ebf:  movaps %xmm0,-0x2f0(%rbp)
0.   	0.   	       [ 691]   5a5ec6:  mov    -0x498(%rbp),%rdi
0.   	0.   	       [ 691]   5a5ecd:  mov    %rax,%r9
0.   	0.   	       [ 691]   5a5ed0:  movapd (%r9),%xmm2
0.   	0.   	       [ 691]   5a5ed5:  xor    %ecx,%ecx
0.   	0.   	       [ 691]   5a5ed7:  movapd %xmm2,%xmm3
0.   	0.   	       [ 691]   5a5edb:  shufpd $0x1,%xmm2,%xmm3
0.   	0.   	       [ 691]   5a5ee0:  movapd (%rdi,%rcx,1),%xmm1
0.260	0.260	       [ 691]   5a5ee5:  movapd (%rdi,%rcx,1),%xmm0
0.020	0.020	       [ 691]   5a5eea:  unpcklpd %xmm1,%xmm1
0.020	0.020	       [ 691]   5a5eee:  unpckhpd %xmm0,%xmm0
0.020	0.020	       [ 691]   5a5ef2:  mulpd  %xmm2,%xmm1
0.070	0.070	       [ 691]   5a5ef6:  mulpd  %xmm3,%xmm0
0.040	0.040	       [ 691]   5a5efa:  movapd %xmm1,%xmm4
0.040	0.040	       [ 691]   5a5efe:  subpd  %xmm0,%xmm4
0.030	0.030	       [ 691]   5a5f02:  addpd  %xmm1,%xmm0
0.   	0.   	       [ 691]   5a5f06:  movsd  %xmm4,%xmm0
0.080	0.080	       [ 691]   5a5f0a:  addpd  (%rsi,%rcx,1),%xmm0
0.160	0.160	       [ 691]   5a5f0f:  movaps %xmm0,(%rsi,%rcx,1)
0.100	0.100	       [ 691]   5a5f13:  add    $0x10,%rcx
0.030	0.030	       [ 691]   5a5f17:  cmp    $0x20,%rcx
0.   	0.   	       [ 691]   5a5f1b:  jne    .-0x3b [ 0x5a5ee0 ]
0.   	0.   	       [ 691]   5a5f1d:  add    $0x20,%rdi
0.020	0.020	       [ 691]   5a5f21:  add    $0x10,%r9
0.010	0.010	       [ 691]   5a5f25:  cmp    %rdi,%r8
0.   	0.   	       [ 691]   5a5f28:  jne    .-0x58 [ 0x5a5ed0 ]
0.   	0.   	       [ 691]   5a5f2a:  add    $0x20,%rsi
0.   	0.   	       [ 691]   5a5f2e:  add    $0x30,%rax
0.   	0.   	       [ 691]   5a5f32:  cmp    $0x6,%r10
0.   	0.   	       [ 691]   5a5f36:  jne    .+0xc2a [ 0x5a6b60 ]
0.   	0.   	       [ 695]   5a5f3c:  mov    -0x410(%rbp),%rax
0.   	0.   	       [ 695]   5a5f43:  pxor   %xmm2,%xmm2
0.   	0.   	       [ 695]   5a5f47:  movsd  (%rbx),%xmm8
0.   	0.   	       [ 695]   5a5f4c:  movsd  0x8(%r14),%xmm9
0.   	0.   	       [ 695]   5a5f52:  movsd  0x8(%rbx),%xmm10
0.   	0.   	       [ 695]   5a5f58:  movsd  0x8(%rax),%xmm0
0.   	0.   	       [ 695]   5a5f5d:  andpd  0x2cf7db(%rip),%xmm0        # 0x2cf7e3
0.   	0.   	       [ 695]   5a5f65:  mov    -0x470(%rbp),%rax
0.   	0.   	       [ 695]   5a5f6c:  movapd %xmm0,%xmm1
0.010	0.010	       [ 695]   5a5f70:  addsd  %xmm2,%xmm0
0.   	0.   	       [ 695]   5a5f74:  mulsd  %xmm2,%xmm1
0.010	0.010	       [ 695]   5a5f78:  movsd  -0x8(%rax,%r12,8),%xmm7
0.   	0.   	       [ 695]   5a5f7f:  movapd %xmm0,%xmm3
0.   	0.   	       [ 695]   5a5f83:  movapd %xmm7,%xmm4
0.   	0.   	       [ 695]   5a5f87:  mulsd  %xmm2,%xmm3
0.   	0.   	       [ 695]   5a5f8b:  mulsd  %xmm7,%xmm0
0.   	0.   	       [ 695]   5a5f8f:  mulsd  %xmm1,%xmm4
0.010	0.010	       [ 695]   5a5f93:  mulsd  %xmm2,%xmm1
0.   	0.   	       [ 695]   5a5f97:  subsd  %xmm3,%xmm4
0.   	0.   	       [ 695]   5a5f9b:  movsd  (%r14),%xmm3
0.   	0.   	       [ 695]   5a5fa0:  addsd  %xmm1,%xmm0
0.   	0.   	       [ 695]   5a5fa4:  movapd %xmm9,%xmm1
0.   	0.   	       [ 695]   5a5fa9:  movapd %xmm3,%xmm2
0.   	0.   	       [ 695]   5a5fad:  addsd  %xmm10,%xmm1
0.   	0.   	       [ 695]   5a5fb2:  addsd  %xmm8,%xmm2
0.010	0.010	       [ 695]   5a5fb7:  movapd %xmm1,%xmm6
0.   	0.   	       [ 695]   5a5fbb:  andpd  0x2cf77d(%rip),%xmm6        # 0x2cf785
0.020	0.020	       [ 695]   5a5fc3:  movapd %xmm2,%xmm5
0.   	0.   	       [ 695]   5a5fc7:  andpd  0x2cf771(%rip),%xmm5        # 0x2cf779
0.   	0.   	       [ 695]   5a5fcf:  comisd %xmm5,%xmm6
0.   	0.   	       [ 695]   5a5fd3:  jbe    .+0xd68 [ 0x5a6d3b ]
0.   	0.   	       [ 695]   5a5fd9:  movapd %xmm2,%xmm5
0.   	0.   	       [ 695]   5a5fdd:  divsd  %xmm1,%xmm5
0.   	0.   	       [ 695]   5a5fe1:  mulsd  %xmm5,%xmm2
0.   	0.   	       [ 695]   5a5fe5:  addsd  %xmm1,%xmm2
0.   	0.   	       [ 695]   5a5fe9:  movapd %xmm4,%xmm1
0.   	0.   	       [ 695]   5a5fed:  mulsd  %xmm5,%xmm1
0.   	0.   	       [ 695]   5a5ff1:  mulsd  %xmm0,%xmm5
0.   	0.   	       [ 695]   5a5ff5:  addsd  %xmm0,%xmm1
0.   	0.   	       [ 695]   5a5ff9:  subsd  %xmm4,%xmm5
0.   	0.   	       [ 695]   5a5ffd:  divsd  %xmm2,%xmm1
0.   	0.   	       [ 695]   5a6001:  divsd  %xmm2,%xmm5
0.   	0.   	       [ 695]   5a6005:  movapd %xmm5,%xmm0
0.   	0.   	       [ 695]   5a6009:  movapd %xmm3,%xmm6
0.   	0.   	       [ 695]   5a600d:  movapd %xmm3,%xmm4
0.   	0.   	       [ 695]   5a6011:  pxor   %xmm3,%xmm3
0.   	0.   	       [ 687]   5a6015:  add    $0x10,%r14
0.   	0.   	       [ 695]   5a6019:  movapd %xmm3,%xmm5
0.   	0.   	       [ 695]   5a601d:  movapd %xmm9,%xmm2
0.   	0.   	       [ 695]   5a6022:  movslq -0x3b4(%rbp),%rcx
0.010	0.010	       [ 695]   5a6029:  movsd  -0x320(%rbp),%xmm11
0.   	0.   	       [ 695]   5a6032:  divsd  %xmm7,%xmm5
0.   	0.   	       [ 695]   5a6036:  mov    -0x458(%rbp),%r9
0.   	0.   	       [ 695]   5a603d:  lea    (%r12,%r12,2),%rax
0.   	0.   	       [ 695]   5a6041:  mov    -0x420(%rbp),%r10
0.   	0.   	       [ 695]   5a6048:  mulsd  %xmm10,%xmm2
0.   	0.   	       [ 695]   5a604d:  mov    %rcx,%rsi
0.   	0.   	       [ 687]   5a6050:  add    $0x1,%r12
0.   	0.   	       [ 687]   5a6054:  add    $0x10,%rbx
0.010	0.010	       [ 695]   5a6058:  mulsd  %xmm8,%xmm6
0.   	0.   	       [ 695]   5a605d:  add    -0x3f8(%rbp),%rcx
0.   	0.   	       [ 687]   5a6064:  add    $0x90,%r15
0.   	0.   	       [ 695]   5a606b:  mulsd  %xmm9,%xmm8
0.   	0.   	       [ 695]   5a6070:  add    %rcx,%rax
0.   	0.   	       [ 695]   5a6073:  mulsd  %xmm10,%xmm4
0.   	0.   	       [ 695]   5a6078:  add    %r9,%rax
0.   	0.   	       [ 695]   5a607b:  lea    (%r11,%rax,1),%rdi
0.   	0.   	       [ 695]   5a607f:  lea    (%rax,%r11,2),%rcx
0.   	0.   	       [ 695]   5a6083:  add    %r9,%rax
0.   	0.   	       [ 695]   5a6086:  shl    $0x4,%rdi
0.   	0.   	       [ 695]   5a608a:  shl    $0x4,%rcx
0.   	0.   	       [ 695]   5a608e:  subsd  %xmm2,%xmm6
0.   	0.   	       [ 695]   5a6092:  movsd  -0x318(%rbp),%xmm2
0.   	0.   	       [ 695]   5a609a:  addsd  %xmm8,%xmm4
0.   	0.   	       [ 695]   5a609f:  movapd %xmm6,%xmm8
0.   	0.   	       [ 695]   5a60a4:  mulsd  %xmm3,%xmm8
0.   	0.   	       [ 695]   5a60a9:  movapd %xmm4,%xmm10
0.020	0.020	       [ 695]   5a60ae:  mulsd  %xmm3,%xmm10
0.   	0.   	       [ 695]   5a60b3:  addsd  %xmm8,%xmm4
0.   	0.   	       [ 695]   5a60b8:  subsd  %xmm10,%xmm6
0.   	0.   	       [ 695]   5a60bd:  mulsd  %xmm5,%xmm3
0.   	0.   	       [ 695]   5a60c1:  movapd %xmm5,%xmm9
0.   	0.   	       [ 695]   5a60c6:  mulsd  %xmm2,%xmm9
0.   	0.   	       [ 695]   5a60cb:  addsd  %xmm7,%xmm3
0.   	0.   	       [ 695]   5a60cf:  addsd  %xmm11,%xmm9
0.   	0.   	       [ 695]   5a60d4:  mulsd  %xmm5,%xmm11
0.   	0.   	       [ 695]   5a60d9:  movapd %xmm3,%xmm7
0.   	0.   	       [ 695]   5a60dd:  divsd  %xmm3,%xmm9
0.040	0.040	       [ 695]   5a60e2:  unpcklpd %xmm7,%xmm7
0.   	0.   	       [ 695]   5a60e6:  subsd  %xmm11,%xmm2
0.   	0.   	       [ 695]   5a60eb:  divsd  %xmm3,%xmm2
0.   	0.   	       [ 695]   5a60ef:  addsd  %xmm6,%xmm9
0.010	0.010	       [ 695]   5a60f4:  movapd %xmm9,%xmm11
0.   	0.   	       [ 695]   5a60f9:  mulsd  %xmm1,%xmm11
0.040	0.040	       [ 695]   5a60fe:  mulsd  %xmm0,%xmm9
0.010	0.010	       [ 695]   5a6103:  addsd  %xmm4,%xmm2
0.   	0.   	       [ 695]   5a6107:  movapd %xmm2,%xmm12
0.   	0.   	       [ 695]   5a610c:  mulsd  %xmm0,%xmm12
0.030	0.030	       [ 695]   5a6111:  mulsd  %xmm1,%xmm2
0.   	0.   	       [ 695]   5a6115:  subsd  %xmm12,%xmm11
0.020	0.020	       [ 695]   5a611a:  xorpd  0x2d0bcd(%rip),%xmm11        # 0x2d0bd6
0.   	0.   	       [ 695]   5a6123:  addsd  %xmm9,%xmm2
0.   	0.   	       [ 695]   5a6128:  xorpd  0x2d0bc0(%rip),%xmm2        # 0x2d0bc8
0.010	0.010	       [ 695]   5a6130:  movapd %xmm8,%xmm9
0.   	0.   	       [ 695]   5a6135:  movsd  %xmm11,(%r10,%rdi,1)
0.   	0.   	       [ 695]   5a613b:  addsd  %xmm10,%xmm8
0.   	0.   	       [ 695]   5a6140:  subsd  %xmm10,%xmm9
0.   	0.   	       [ 695]   5a6145:  movsd  %xmm2,0x8(%r10,%rdi,1)
0.   	0.   	       [ 695]   5a614c:  movsd  -0x308(%rbp),%xmm2
0.010	0.010	       [ 695]   5a6154:  movsd  -0x310(%rbp),%xmm11
0.   	0.   	       [ 695]   5a615d:  movapd %xmm2,%xmm10
0.   	0.   	       [ 695]   5a6162:  mulsd  %xmm5,%xmm10
0.   	0.   	       [ 695]   5a6167:  addsd  %xmm11,%xmm10
0.010	0.010	       [ 695]   5a616c:  mulsd  %xmm5,%xmm11
0.   	0.   	       [ 695]   5a6171:  divsd  %xmm3,%xmm10
0.   	0.   	       [ 695]   5a6176:  subsd  %xmm11,%xmm2
0.   	0.   	       [ 695]   5a617b:  divsd  %xmm3,%xmm2
0.040	0.040	       [ 695]   5a617f:  addsd  %xmm9,%xmm10
0.   	0.   	       [ 695]   5a6184:  movapd %xmm10,%xmm11
0.010	0.010	       [ 695]   5a6189:  mulsd  %xmm1,%xmm11
0.   	0.   	       [ 695]   5a618e:  mulsd  %xmm0,%xmm10
0.   	0.   	       [ 695]   5a6193:  addsd  %xmm8,%xmm2
0.   	0.   	       [ 695]   5a6198:  movapd %xmm2,%xmm12
0.   	0.   	       [ 695]   5a619d:  mulsd  %xmm0,%xmm12
0.040	0.040	       [ 695]   5a61a2:  mulsd  %xmm1,%xmm2
0.   	0.   	       [ 695]   5a61a6:  subsd  %xmm12,%xmm11
0.   	0.   	       [ 695]   5a61ab:  movapd %xmm8,%xmm12
0.   	0.   	       [ 695]   5a61b0:  xorpd  0x2d0b37(%rip),%xmm11        # 0x2d0b40
0.050	0.050	       [ 695]   5a61b9:  addsd  %xmm2,%xmm10
0.   	0.   	       [ 695]   5a61be:  unpcklpd %xmm9,%xmm12
0.010	0.010	       [ 695]   5a61c3:  unpcklpd %xmm8,%xmm9
0.   	0.   	       [ 695]   5a61c8:  xorpd  0x2d0b1f(%rip),%xmm10        # 0x2d0b28
0.   	0.   	       [ 695]   5a61d1:  movsd  %xmm11,(%r10,%rcx,1)
0.010	0.010	       [ 695]   5a61d7:  movapd %xmm5,%xmm11
0.   	0.   	       [ 695]   5a61dc:  unpcklpd %xmm11,%xmm11
0.   	0.   	       [ 695]   5a61e1:  movsd  %xmm10,0x8(%r10,%rcx,1)
0.   	0.   	       [ 695]   5a61e8:  movapd -0x300(%rbp),%xmm2
0.   	0.   	       [ 695]   5a61f0:  lea    (%rax,%r11,1),%rcx
0.   	0.   	       [ 695]   5a61f4:  lea    (%rax,%r11,2),%rax
0.   	0.   	       [ 695]   5a61f8:  shl    $0x4,%rcx
0.   	0.   	       [ 695]   5a61fc:  shl    $0x4,%rax
0.   	0.   	       [ 695]   5a6200:  movapd %xmm2,%xmm10
0.   	0.   	       [ 695]   5a6205:  shufpd $0x1,%xmm2,%xmm10
0.   	0.   	       [ 695]   5a620b:  mulpd  %xmm11,%xmm10
0.   	0.   	       [ 695]   5a6210:  movapd %xmm10,%xmm11
0.   	0.   	       [ 695]   5a6215:  addpd  %xmm2,%xmm11
0.   	0.   	       [ 695]   5a621a:  subpd  %xmm10,%xmm2
0.   	0.   	       [ 695]   5a621f:  movapd %xmm2,%xmm10
0.   	0.   	       [ 695]   5a6224:  movsd  %xmm11,%xmm2
0.   	0.   	       [ 695]   5a6229:  divpd  %xmm7,%xmm2
0.010	0.010	       [ 695]   5a622d:  shufpd $0x1,%xmm11,%xmm10
0.   	0.   	       [ 695]   5a6233:  divpd  %xmm7,%xmm10
0.   	0.   	       [ 695]   5a6238:  movapd %xmm1,%xmm7
0.010	0.010	       [ 695]   5a623c:  unpcklpd %xmm7,%xmm7
0.   	0.   	       [ 695]   5a6240:  addpd  %xmm9,%xmm2
0.   	0.   	       [ 695]   5a6245:  mulpd  %xmm7,%xmm2
0.   	0.   	       [ 695]   5a6249:  movapd %xmm2,%xmm7
0.   	0.   	       [ 695]   5a624d:  addpd  %xmm12,%xmm10
0.010	0.010	       [ 695]   5a6252:  movapd %xmm0,%xmm12
0.   	0.   	       [ 695]   5a6257:  unpcklpd %xmm12,%xmm12
0.   	0.   	       [ 695]   5a625c:  mulpd  %xmm12,%xmm10
0.010	0.010	       [ 695]   5a6261:  subpd  %xmm10,%xmm7
0.   	0.   	       [ 695]   5a6266:  addpd  %xmm10,%xmm2
0.   	0.   	       [ 695]   5a626b:  movsd  %xmm7,%xmm2
0.   	0.   	       [ 695]   5a626f:  xorpd  0x2f22c9(%rip),%xmm2        # 0x2f22d1
0.010	0.010	       [ 695]   5a6277:  movups %xmm2,(%r10,%rcx,1)
0.   	0.   	       [ 695]   5a627c:  movsd  -0x2e8(%rbp),%xmm2
0.   	0.   	       [ 695]   5a6284:  movsd  -0x2f0(%rbp),%xmm8
0.   	0.   	       [ 695]   5a628d:  movapd %xmm2,%xmm7
0.   	0.   	       [ 695]   5a6291:  mulsd  %xmm5,%xmm7
0.   	0.   	       [ 695]   5a6295:  addsd  %xmm8,%xmm7
0.   	0.   	       [ 695]   5a629a:  mulsd  %xmm5,%xmm8
0.   	0.   	       [ 695]   5a629f:  divsd  %xmm3,%xmm7
0.010	0.010	       [ 695]   5a62a3:  subsd  %xmm8,%xmm2
0.010	0.010	       [ 695]   5a62a8:  divsd  %xmm3,%xmm2
0.   	0.   	       [ 695]   5a62ac:  addsd  %xmm6,%xmm7
0.   	0.   	       [ 695]   5a62b0:  movapd %xmm7,%xmm3
0.   	0.   	       [ 695]   5a62b4:  mulsd  %xmm1,%xmm3
0.   	0.   	       [ 695]   5a62b8:  addsd  %xmm4,%xmm2
0.   	0.   	       [ 695]   5a62bc:  movapd %xmm2,%xmm4
0.   	0.   	       [ 695]   5a62c0:  mulsd  %xmm0,%xmm4
0.   	0.   	       [ 695]   5a62c4:  mulsd  %xmm1,%xmm2
0.   	0.   	       [ 695]   5a62c8:  mulsd  %xmm7,%xmm0
0.   	0.   	       [ 695]   5a62cc:  subsd  %xmm4,%xmm3
0.   	0.   	       [ 695]   5a62d0:  xorpd  0x2d0a18(%rip),%xmm3        # 0x2d0a20
0.030	0.030	       [ 695]   5a62d8:  addsd  %xmm0,%xmm2
0.   	0.   	       [ 695]   5a62dc:  xorpd  0x2d0a0c(%rip),%xmm2        # 0x2d0a14
0.   	0.   	       [ 695]   5a62e4:  movsd  %xmm3,(%r10,%rax,1)
0.   	0.   	       [ 695]   5a62ea:  movsd  %xmm2,0x8(%r10,%rax,1)
0.   	0.   	       [ 687]   5a62f1:  cmp    %r12d,-0x3d0(%rbp)
0.010	0.010	       [ 687]   5a62f8:  jge    .-0x662 [ 0x5a5c96 ]
0.   	0.   	       [ 695]   5a62fe:  mov    %rdx,%rbx
0.   	0.   	       [ 664]   5a6301:  add    $0x1,%esi
0.   	0.   	       [ 664]   5a6304:  mov    %esi,-0x3b4(%rbp)
0.   	0.   	       [ 664]   5a630a:  cmp    -0x4e8(%rbp),%esi
0.   	0.   	       [ 664]   5a6310:  jle    .-0x13d5 [ 0x5a4f3b ]
0.   	0.   	       [ 718]   5a6316:  mov    -0x3c8(%rbp),%rax
0.   	0.   	       [ 718]   5a631d:  mov    0x6a8(%rax),%edx
0.   	0.   	       [ 718]   5a6323:  test   %edx,%edx
0.   	0.   	       [ 718]   5a6325:  jle    .+0x7e1 [ 0x5a6b06 ]
0.   	0.   	       [ 716]   5a632b:  mov    -0x3c8(%rbp),%rax
0.   	0.   	       [ 716]   5a6332:  mov    -0x4e0(%rbp),%rsi
0.   	0.   	       [ 716]   5a6339:  movq   $0x1,-0x3d8(%rbp)
0.   	0.   	       [ 716]   5a6344:  mov    0xcf8(%rax),%r14
0.   	0.   	       [ 716]   5a634b:  mov    0xcc0(%rax),%rbx
0.   	0.   	       [ 716]   5a6352:  mov    0xcb8(%rax),%r13
0.   	0.   	       [ 716]   5a6359:  lea    0x1(%rdx),%eax
0.   	0.   	       [ 716]   5a635c:  mov    %rax,-0x480(%rbp)
0.   	0.   	       [ 716]   5a6363:  mov    -0x4d8(%rbp),%rax
0.   	0.   	       [ 716]   5a636a:  add    %r14,%rbx
0.   	0.   	       [ 716]   5a636d:  lea    (%rax,%rsi,4),%rax
0.   	0.   	       [ 716]   5a6371:  mov    %rax,-0x4a0(%rbp)
0.   	0.   	       [ 716]   5a6378:  mov    0x38(%rbp),%rax
0.   	0.   	       [ 716]   5a637c:  mov    (%rax),%rdi
0.040	0.040	       [ 716]   5a637f:  mov    -0x3f8(%rbp),%rax
0.   	0.   	       [ 716]   5a6386:  add    $0x1,%rax
0.   	0.   	       [ 716]   5a638a:  mov    %rax,-0x4d0(%rbp)
0.   	0.   	       [ 716]   5a6391:  imul   $0x88,%rbx,%rax
0.020	0.020	       [ 713]   5a6398:  mov    %rbx,-0x4e0(%rbp)
0.   	0.   	       [ 713]   5a639f:  mov    0x38(%rbp),%r12
0.   	0.   	       [ 713]   5a63a3:  movq   $0x1,-0x3e0(%rbp)
0.   	0.   	       [ 713]   5a63ae:  mov    %r13,-0x4e8(%rbp)
0.   	0.   	       [ 713]   5a63b5:  add    %r13,%rax
0.   	0.   	       [ 713]   5a63b8:  mov    %r14,-0x4d8(%rbp)
0.   	0.   	       [ 713]   5a63bf:  mov    %rdi,%r14
0.   	0.   	       [ 713]   5a63c2:  mov    %rax,-0x450(%rbp)
0.   	0.   	       [ 712]   5a63c9:  mov    -0x4a0(%rbp),%rax
0.030	0.030	       [ 712]   5a63d0:  mov    -0x3e0(%rbp),%rsi
0.   	0.   	       [ 712]   5a63d7:  mov    (%rax,%rsi,4),%ebx
0.140	0.140	       [ 712]   5a63da:  mov    %ebx,-0x498(%rbp)
0.   	0.   	       [ 713]   5a63e0:  mov    %rax,%rbx
0.   	0.   	       [ 713]   5a63e3:  mov    -0x3d8(%rbp),%rax
0.   	0.   	       [ 713]   5a63ea:  mov    (%rbx,%rax,4),%ebx
0.   	0.   	       [ 716]   5a63ed:  imul   0x40(%r12),%rax
0.010	0.010	       [ 716]   5a63f3:  add    0x8(%r12),%rax
0.160	0.160	       [ 713]   5a63f8:  mov    %ebx,-0x460(%rbp)
0.   	0.   	       [ 716]   5a63fe:  mov    -0x450(%rbp),%rbx
0.   	0.   	       [ 716]   5a6405:  add    %rsi,%rax
0.   	0.   	       [ 716]   5a6408:  mov    %rax,-0x3c8(%rbp)
0.   	0.   	       [ 716]   5a640f:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a6413:  mov    0x88(%rbx),%rdi
0.010	0.010	       [ 716]   5a641a:  mov    0xb8(%rbx),%rcx
0.010	0.010	       [ 716]   5a6421:  mov    %rbx,%rsi
0.   	0.   	       [ 716]   5a6424:  mov    0xd8(%rbx),%rdx
0.100	0.100	       [ 716]   5a642b:  mov    0xd0(%rbx),%r8
0.   	0.   	       [ 716]   5a6432:  mov    %rdi,-0x4b8(%rbp)
0.   	0.   	       [ 716]   5a6439:  mov    0x90(%rbx),%rdi
0.   	0.   	       [ 716]   5a6440:  add    %r14,%rax
0.010	0.010	       [ 716]   5a6443:  mov    0x108(%rbx),%r10
0.070	0.070	       [ 716]   5a644a:  mov    0x100(%rbx),%r13
0.   	0.   	       [ 716]   5a6451:  mov    %rdx,-0x410(%rbp)
0.   	0.   	       [ 716]   5a6458:  sub    %r8,%rdx
0.   	0.   	       [ 716]   5a645b:  mov    %rdi,-0x488(%rbp)
0.010	0.010	       [ 716]   5a6462:  mov    (%rax),%r9
0.160	0.160	       [ 716]   5a6465:  mov    %rdx,%r11
0.   	0.   	       [ 716]   5a6468:  mov    0xc0(%rbx),%rdi
0.   	0.   	       [ 716]   5a646f:  mov    0xe0(%rsi),%rsi
0.   	0.   	       [ 716]   5a6476:  mov    %rcx,-0x3d0(%rbp)
0.   	0.   	       [ 716]   5a647d:  mov    %r10,-0x418(%rbp)
0.   	0.   	       [ 716]   5a6484:  mov    0xe8(%rbx),%r15
0.   	0.   	       [ 716]   5a648b:  sub    %r13,%r10
0.   	0.   	       [ 716]   5a648e:  mov    %rdi,-0x3e8(%rbp)
0.010	0.010	       [ 716]   5a6495:  sub    %rcx,%rdi
0.   	0.   	       [ 716]   5a6498:  mov    0xf0(%rbx),%rbx
0.   	0.   	       [ 716]   5a649f:  mov    %r9,-0x3f8(%rbp)
0.   	0.   	       [ 716]   5a64a6:  mov    %rdi,%rcx
0.   	0.   	       [ 716]   5a64a9:  mov    %rsi,-0x4c8(%rbp)
0.   	0.   	       [ 716]   5a64b0:  test   %r9,%r9
0.   	0.   	       [ 716]   5a64b3:  je     .+0x14 [ 0x5a64c7 ]
0.   	0.   	       [ 716]   5a64b5:  mov    0x30(%rax),%r9
0.090	0.090	       [ 716]   5a64b9:  lea    (%r9,%rdi,1),%rdx
0.   	0.   	       [ 716]   5a64bd:  cmp    0x38(%rax),%rdx
0.   	0.   	       [ 716]   5a64c1:  je     .+0xc3c [ 0x5a70fd ]
0.   	0.   	       [ 716]   5a64c7:  imul   $0x70,-0x3c8(%rbp),%rax
0.   	0.   	       [ 716]   5a64cf:  lea    0x1(%r10),%rdi
0.   	0.   	       [ 716]   5a64d3:  mov    -0x3d8(%rbp),%r10
0.   	0.   	       [ 716]   5a64da:  add    $0x1,%rcx
0.   	0.   	       [ 716]   5a64de:  lea    0x1(%r11),%rdx
0.   	0.   	       [ 716]   5a64e2:  mov    -0x3e0(%rbp),%r11
0.   	0.   	       [ 716]   5a64e9:  mov    %rdx,%rsi
0.   	0.   	       [ 716]   5a64ec:  movq   $0x1,0x30(%r14,%rax,1)
0.   	0.   	       [ 716]   5a64f5:  mov    0x40(%r12),%rax
0.   	0.   	       [ 716]   5a64fa:  imul   %rcx,%rsi
0.   	0.   	       [ 716]   5a64fe:  imul   %r10,%rax
0.   	0.   	       [ 716]   5a6502:  add    %r11,%rax
0.   	0.   	       [ 716]   5a6505:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a650a:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a650e:  mov    %rcx,0x38(%r14,%rax,1)
0.   	0.   	       [ 716]   5a6513:  mov    0x40(%r12),%rax
0.   	0.   	       [ 716]   5a6518:  imul   %r10,%rax
0.   	0.   	       [ 716]   5a651c:  add    %r11,%rax
0.   	0.   	       [ 716]   5a651f:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a6524:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a6528:  movq   $0x1,0x28(%r14,%rax,1)
0.   	0.   	       [ 716]   5a6531:  mov    0x40(%r12),%rax
0.   	0.   	       [ 716]   5a6536:  imul   %r10,%rax
0.   	0.   	       [ 716]   5a653a:  add    %r11,%rax
0.   	0.   	       [ 716]   5a653d:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a6542:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a6546:  movq   $0x1,0x48(%r14,%rax,1)
0.   	0.   	       [ 716]   5a654f:  mov    0x40(%r12),%rax
0.   	0.   	       [ 716]   5a6554:  imul   %r10,%rax
0.   	0.   	       [ 716]   5a6558:  add    %r11,%rax
0.   	0.   	       [ 716]   5a655b:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a6560:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a6564:  mov    %rdx,0x50(%r14,%rax,1)
0.   	0.   	       [ 716]   5a6569:  mov    0x40(%r12),%rax
0.   	0.   	       [ 716]   5a656e:  imul   %r10,%rax
0.   	0.   	       [ 716]   5a6572:  add    %r11,%rax
0.   	0.   	       [ 716]   5a6575:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a657a:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a657e:  mov    %rcx,0x40(%r14,%rax,1)
0.   	0.   	       [ 716]   5a6583:  mov    0x40(%r12),%rax
0.   	0.   	       [ 716]   5a6588:  imul   %r10,%rax
0.   	0.   	       [ 716]   5a658c:  add    %r11,%rax
0.   	0.   	       [ 716]   5a658f:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a6594:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a6598:  movq   $0x1,0x60(%r14,%rax,1)
0.   	0.   	       [ 716]   5a65a1:  mov    0x40(%r12),%rax
0.   	0.   	       [ 716]   5a65a6:  imul   %r10,%rax
0.   	0.   	       [ 716]   5a65aa:  add    %r11,%rax
0.   	0.   	       [ 716]   5a65ad:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a65b2:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a65b6:  mov    %rdi,0x68(%r14,%rax,1)
0.   	0.   	       [ 716]   5a65bb:  mov    0x40(%r12),%rax
0.   	0.   	       [ 716]   5a65c0:  imul   %r10,%rax
0.   	0.   	       [ 716]   5a65c4:  add    %r11,%rax
0.   	0.   	       [ 716]   5a65c7:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a65cc:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a65d0:  mov    %rsi,0x58(%r14,%rax,1)
0.   	0.   	       [ 716]   5a65d5:  mov    0x40(%r12),%rax
0.   	0.   	       [ 716]   5a65da:  imul   %r10,%rax
0.   	0.   	       [ 716]   5a65de:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a65e3:  add    %r11,%rax
0.   	0.   	       [ 716]   5a65e6:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a65ea:  add    %r14,%rax
0.   	0.   	       [ 716]   5a65ed:  imul   0x48(%rax),%rcx
0.   	0.   	       [ 716]   5a65f2:  mov    0x30(%rax),%rdx
0.   	0.   	       [ 716]   5a65f6:  neg    %rdx
0.   	0.   	       [ 716]   5a65f9:  sub    %rcx,%rdx
0.   	0.   	       [ 716]   5a65fc:  mov    0x60(%rax),%rcx
0.   	0.   	       [ 716]   5a6600:  imul   %rsi,%rcx
0.   	0.   	       [ 716]   5a6604:  imul   %rdi,%rsi
0.   	0.   	       [ 716]   5a6608:  sub    %rcx,%rdx
0.   	0.   	       [ 716]   5a660b:  mov    %r10,%rcx
0.   	0.   	       [ 716]   5a660e:  mov    %rdx,0x8(%rax)
0.   	0.   	       [ 716]   5a6612:  mov    0x40(%r12),%rax
0.   	0.   	       [ 716]   5a6617:  mov    %r11,%rdx
0.   	0.   	       [ 716]   5a661a:  imul   %r10,%rax
0.   	0.   	       [ 716]   5a661e:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a6623:  add    %r11,%rax
0.   	0.   	       [ 716]   5a6626:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a662a:  add    %r14,%rax
0.   	0.   	       [ 716]   5a662d:  mov    0x8(%rax),%r10
0.   	0.   	       [ 716]   5a6631:  movq   $0x8,0x20(%rax)
0.   	0.   	       [ 716]   5a6639:  mov    %r10,-0x3c8(%rbp)
0.   	0.   	       [ 716]   5a6640:  mov    0x30(%rax),%r10
0.   	0.   	       [ 716]   5a6644:  sub    -0x3d0(%rbp),%r10
0.   	0.   	       [ 716]   5a664b:  mov    %r10,-0x408(%rbp)
0.   	0.   	       [ 716]   5a6652:  mov    0x48(%rax),%r10
0.   	0.   	       [ 716]   5a6656:  sub    %r8,%r10
0.   	0.   	       [ 716]   5a6659:  mov    %r10,-0x3f0(%rbp)
0.   	0.   	       [ 716]   5a6660:  mov    0x60(%rax),%r10
0.   	0.   	       [ 716]   5a6664:  mov    $0x1,%eax
0.   	0.   	       [ 716]   5a6669:  sub    %r13,%r10
0.   	0.   	       [ 716]   5a666c:  shl    $0x3,%rsi
0.   	0.   	       [ 716]   5a6670:  cmove  %rax,%rsi
0.   	0.   	       [ 716]   5a6674:  mov    0x40(%r12),%rax
0.   	0.   	       [ 716]   5a6679:  mov    %r10,-0x400(%rbp)
0.   	0.   	       [ 716]   5a6680:  imul   %rcx,%rax
0.   	0.   	       [ 716]   5a6684:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a6689:  add    %rax,%rdx
0.   	0.   	       [ 716]   5a668c:  cmpq   $0x0,-0x3f8(%rbp)
0.   	0.   	       [ 716]   5a6694:  je     .+0xa12 [ 0x5a70a6 ]
0.   	0.   	       [ 716]   5a669a:  imul   $0x70,%rdx,%rax
0.   	0.   	       [ 716]   5a669e:  mov    %r8,-0x3f8(%rbp)
0.   	0.   	       [ 716]   5a66a5:  add    %rax,%r14
0.   	0.   	       [ 716]   5a66a8:  mov    (%r14),%rdi
0.   	0.   	       [ 716]   5a66ab:  call   realloc@plt [ 0x405cb0, .-0x1a09fb]
0.   	0.   	       [ 716]   5a66b0:  mov    -0x3e0(%rbp),%rsi
0.   	0.   	       [ 716]   5a66b7:  mov    -0x3f8(%rbp),%r8
0.   	0.   	       [ 716]   5a66be:  mov    %rax,(%r14)
0.   	0.   	       [ 716]   5a66c1:  mov    -0x3d8(%rbp),%rax
0.   	0.   	       [ 716]   5a66c8:  mov    (%r12),%r14
0.   	0.   	       [ 716]   5a66cc:  imul   0x40(%r12),%rax
0.   	0.   	       [ 716]   5a66d2:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a66d7:  lea    (%rax,%rsi,1),%rdx
0.   	0.   	       [ 716]   5a66db:  imul   $0x70,%rdx,%rdx
0.   	0.   	       [ 716]   5a66df:  mov    (%r14,%rdx,1),%rax
0.   	0.   	       [ 716]   5a66e3:  mov    %rax,-0x3f8(%rbp)
0.   	0.   	       [ 716]   5a66ea:  cmp    -0x418(%rbp),%r13
0.   	0.   	       [ 716]   5a66f1:  jg     .+0x296 [ 0x5a6987 ]
0.   	0.   	       [ 716]   5a66f7:  mov    -0x450(%rbp),%rsi
0.   	0.   	       [ 716]   5a66fe:  mov    -0x3d8(%rbp),%rax
0.   	0.   	       [ 716]   5a6705:  mov    %r12,0x38(%rbp)
0.   	0.   	       [ 716]   5a6709:  imul   0x40(%r12),%rax
0.   	0.   	       [ 716]   5a670f:  add    0x8(%r12),%rax
0.   	0.   	       [ 716]   5a6714:  mov    %r14,-0x4f0(%rbp)
0.   	0.   	       [ 716]   5a671b:  mov    0xf8(%rsi),%rsi
0.   	0.   	       [ 716]   5a6722:  add    -0x3e0(%rbp),%rax
0.   	0.   	       [ 716]   5a6729:  imul   $0x70,%rax,%rax
0.   	0.   	       [ 716]   5a672d:  mov    -0x3e8(%rbp),%r10
0.   	0.   	       [ 716]   5a6734:  mov    -0x3d0(%rbp),%rdi
0.   	0.   	       [ 716]   5a673b:  mov    %rsi,-0x4b0(%rbp)
0.   	0.   	       [ 716]   5a6742:  imul   %r13,%rsi
0.   	0.   	       [ 716]   5a6746:  lea    0x0(,%r10,8),%rcx
0.   	0.   	       [ 716]   5a674e:  add    %r14,%rax
0.   	0.   	       [ 716]   5a6751:  mov    %rsi,%rdx
0.   	0.   	       [ 716]   5a6754:  mov    -0x488(%rbp),%rsi
0.   	0.   	       [ 716]   5a675b:  mov    %rax,-0x4c0(%rbp)
0.   	0.   	       [ 716]   5a6762:  add    %rdx,%rsi
0.   	0.   	       [ 716]   5a6765:  mov    %rsi,-0x490(%rbp)
0.   	0.   	       [ 716]   5a676c:  mov    0x58(%rax),%rsi
0.   	0.   	       [ 716]   5a6770:  mov    -0x400(%rbp),%rax
0.   	0.   	       [ 716]   5a6777:  movq   $0x0,-0x400(%rbp)
0.   	0.   	       [ 716]   5a6782:  mov    %rsi,-0x4a8(%rbp)
0.   	0.   	       [ 716]   5a6789:  add    %r13,%rax
0.   	0.   	       [ 716]   5a678c:  imul   %rsi,%rax
0.   	0.   	       [ 716]   5a6790:  mov    -0x3c8(%rbp),%rsi
0.010	0.010	       [ 716]   5a6797:  add    %rax,%rsi
0.   	0.   	       [ 716]   5a679a:  mov    -0x418(%rbp),%rax
0.   	0.   	       [ 716]   5a67a1:  mov    %rsi,-0x488(%rbp)
0.   	0.   	       [ 716]   5a67a8:  mov    -0x4c8(%rbp),%rsi
0.   	0.   	       [ 716]   5a67af:  add    $0x1,%rax
0.   	0.   	       [ 716]   5a67b3:  mov    %rsi,%rdx
0.   	0.   	       [ 716]   5a67b6:  sub    %r13,%rax
0.   	0.   	       [ 716]   5a67b9:  imul   %r15,%rdx
0.   	0.   	       [ 716]   5a67bd:  mov    %rax,-0x418(%rbp)
0.   	0.   	       [ 716]   5a67c4:  mov    -0x4b8(%rbp),%rax
0.   	0.   	       [ 716]   5a67cb:  sub    %rcx,%rax
0.   	0.   	       [ 716]   5a67ce:  lea    0x0(,%rsi,8),%rcx
0.   	0.   	       [ 716]   5a67d6:  lea    0x1(%rbx),%rsi
0.   	0.   	       [ 716]   5a67da:  add    %rdi,%rdx
0.   	0.   	       [ 716]   5a67dd:  sub    %r15,%rsi
0.   	0.   	       [ 716]   5a67e0:  lea    (%rax,%rdx,8),%rax
0.   	0.   	       [ 716]   5a67e4:  mov    %rax,-0x4b8(%rbp)
0.   	0.   	       [ 716]   5a67eb:  mov    -0x3f0(%rbp),%rax
0.   	0.   	       [ 716]   5a67f2:  add    %r8,%rax
0.   	0.   	       [ 716]   5a67f5:  mov    %rax,-0x4c8(%rbp)
0.   	0.   	       [ 716]   5a67fc:  lea    -0x1(%rdi),%rax
0.   	0.   	       [ 716]   5a6800:  sub    %r10,%rax
0.   	0.   	       [ 716]   5a6803:  mov    %rax,-0x3f0(%rbp)
0.   	0.   	       [ 716]   5a680a:  cmp    -0x410(%rbp),%r8
0.   	0.   	       [ 716]   5a6811:  jg     .+0x133 [ 0x5a6944 ]
0.   	0.   	       [ 716]   5a6817:  mov    -0x4c0(%rbp),%rax
0.010	0.010	       [ 716]   5a681e:  mov    -0x3f8(%rbp),%rdi
0.   	0.   	       [ 716]   5a6825:  mov    %r8,-0x4f8(%rbp)
0.010	0.010	       [ 716]   5a682c:  mov    0x40(%rax),%rdx
0.050	0.050	       [ 716]   5a6830:  mov    -0x450(%rbp),%rax
0.   	0.   	       [ 716]   5a6837:  mov    0xc8(%rax),%r11
0.030	0.030	       [ 716]   5a683e:  mov    %rdx,%r9
0.010	0.010	       [ 716]   5a6841:  imul   -0x4c8(%rbp),%rdx
0.   	0.   	       [ 716]   5a6849:  mov    -0x490(%rbp),%rax
0.   	0.   	       [ 716]   5a6850:  mov    %r11,%r12
0.   	0.   	       [ 716]   5a6853:  sub    %r11,%r9
0.010	0.010	       [ 716]   5a6856:  imul   %r8,%r12
0.   	0.   	       [ 716]   5a685a:  lea    0x0(,%r9,8),%r13
0.   	0.   	       [ 716]   5a6862:  mov    -0x408(%rbp),%r9
0.   	0.   	       [ 716]   5a6869:  sub    %r12,%r9
0.   	0.   	       [ 716]   5a686c:  add    %r9,%rdx
0.   	0.   	       [ 716]   5a686f:  add    -0x488(%rbp),%rdx
0.010	0.010	       [ 716]   5a6876:  sub    %rax,%rdx
0.   	0.   	       [ 716]   5a6879:  lea    (%rdi,%rdx,8),%r10
0.   	0.   	       [ 716]   5a687d:  mov    -0x3e8(%rbp),%rdi
0.   	0.   	       [ 716]   5a6884:  lea    0x1(%rdi,%r12,1),%r9
0.   	0.   	       [ 716]   5a6889:  add    %rax,%r9
0.   	0.   	       [ 716]   5a688c:  mov    -0x410(%rbp),%rax
0.   	0.   	       [ 716]   5a6893:  lea    0x1(%rax),%rdx
0.   	0.   	       [ 716]   5a6897:  mov    -0x4b8(%rbp),%rax
0.   	0.   	       [ 716]   5a689e:  sub    %r8,%rdx
0.   	0.   	       [ 716]   5a68a1:  mov    %rdx,%rdi
0.   	0.   	       [ 716]   5a68a4:  lea    -0x8(%rax),%r12
0.   	0.   	       [ 716]   5a68a8:  xor    %edx,%edx
0.   	0.   	       [ 716]   5a68aa:  mov    -0x3f0(%rbp),%rax
0.   	0.   	       [ 716]   5a68b1:  mov    -0x3e8(%rbp),%r8
0.   	0.   	       [ 716]   5a68b8:  lea    (%r12,%r9,8),%r14
0.020	0.020	       [ 716]   5a68bc:  add    %r9,%rax
0.100	0.100	       [ 716]   5a68bf:  mov    %rax,-0x3c8(%rbp)
0.   	0.   	       [ 716]   5a68c6:  cmp    %r8,-0x3d0(%rbp)
0.   	0.   	       [ 716]   5a68cd:  jg     .+0x5d [ 0x5a692a ]
0.   	0.   	       [ 716]   5a68cf:  mov    -0x3c8(%rbp),%r8
0.   	0.   	       [ 716]   5a68d6:  mov    %rdx,-0x3c8(%rbp)
0.   	0.   	       [ 716]   5a68dd:  nopl   (%rax)
0.   	0.   	       [ 716]   5a68e0:  cmp    %rbx,%r15
0.030	0.030	       [ 716]   5a68e3:  jg     .+0x585 [ 0x5a6e68 ]
0.   	0.   	       [ 716]   5a68e9:  mov    %r14,%rdx
0.   	0.   	       [ 716]   5a68ec:  xor    %eax,%eax
0.050	0.050	       [ 716]   5a68ee:  pxor   %xmm0,%xmm0
0.070	0.070	       [ 716]   5a68f2:  nopl   0x0(%rax)
2.041	2.041	       [ 716]   5a68f6:  cs nopw 0x0(%rax,%rax,1)
0.140	0.140	       [ 716]   5a6900:  add    $0x1,%rax
18.743	18.743	       [ 716]   5a6904:  addsd  (%rdx),%xmm0
892.094	892.094	       [ 716]   5a6908:  add    %rcx,%rdx
3.552	3.552	       [ 716]   5a690b:  cmp    %rax,%rsi
2.962	2.962	       [ 716]   5a690e:  jne    .-0xe [ 0x5a6900 ]
0.260	0.260	       [ 716]   5a6910:  movsd  %xmm0,(%r10,%r8,8)
3.112	3.112	       [ 716]   5a6916:  add    $0x1,%r8
0.010	0.010	       [ 716]   5a691a:  add    $0x8,%r14
0.   	0.   	       [ 716]   5a691e:  cmp    %r9,%r8
0.   	0.   	       [ 716]   5a6921:  jne    .-0x41 [ 0x5a68e0 ]
0.   	0.   	       [ 716]   5a6923:  mov    -0x3c8(%rbp),%rdx
0.120	0.120	       [ 716]   5a692a:  add    $0x1,%rdx
0.   	0.   	       [ 716]   5a692e:  add    %r13,%r10
0.   	0.   	       [ 716]   5a6931:  add    %r11,%r9
0.   	0.   	       [ 716]   5a6934:  cmp    %rdi,%rdx
0.   	0.   	       [ 716]   5a6937:  jne    .-0x8d [ 0x5a68aa ]
0.   	0.   	       [ 716]   5a693d:  mov    -0x4f8(%rbp),%r8
0.   	0.   	       [ 716]   5a6944:  mov    -0x4b0(%rbp),%rdx
0.010	0.010	       [ 716]   5a694b:  addq   $0x1,-0x400(%rbp)
0.   	0.   	       [ 716]   5a6953:  add    %rdx,-0x490(%rbp)
0.   	0.   	       [ 716]   5a695a:  mov    -0x400(%rbp),%rax
0.   	0.   	       [ 716]   5a6961:  mov    -0x4a8(%rbp),%rdx
0.   	0.   	       [ 716]   5a6968:  add    %rdx,-0x488(%rbp)
0.   	0.   	       [ 716]   5a696f:  cmp    %rax,-0x418(%rbp)
0.020	0.020	       [ 716]   5a6976:  jne    .-0x16c [ 0x5a680a ]
0.   	0.   	       [ 716]   5a697c:  mov    0x38(%rbp),%r12
0.   	0.   	       [ 716]   5a6980:  mov    -0x4f0(%rbp),%r14
0.   	0.   	       [ 716]   5a6987:  mov    -0x460(%rbp),%eax
0.   	0.   	       [ 716]   5a698d:  mov    -0x458(%rbp),%r8
0.   	0.   	       [ 722]   5a6994:  pxor   %xmm5,%xmm5
0.   	0.   	       [ 722]   5a6998:  movq   $0x1,-0x3f0(%rbp)
0.   	0.   	       [ 722]   5a69a3:  mov    -0x498(%rbp),%r9d
0.   	0.   	       [ 722]   5a69aa:  mov    -0x450(%rbp),%r15
0.020	0.020	       [ 722]   5a69b1:  add    $0x1,%eax
0.   	0.   	       [ 722]   5a69b4:  mov    %rax,-0x3f8(%rbp)
0.   	0.   	       [ 722]   5a69bb:  mov    -0x478(%rbp),%rax
0.060	0.060	       [ 722]   5a69c2:  lea    -0x1(%r9),%esi
0.   	0.   	       [ 722]   5a69c6:  mov    %r8,%rdx
0.   	0.   	       [ 722]   5a69c9:  movq   $0x1,-0x3e8(%rbp)
0.   	0.   	       [ 722]   5a69d4:  mov    -0x4d0(%rbp),%rbx
0.060	0.060	       [ 722]   5a69db:  mov    %rax,-0x488(%rbp)
0.   	0.   	       [ 722]   5a69e2:  mov    %rdx,%r11
0.010	0.010	       [ 722]   5a69e5:  mov    %r12,0x38(%rbp)
0.   	0.   	       [ 722]   5a69e9:  lea    (%rbx,%rdx,1),%rcx
0.   	0.   	       [ 722]   5a69ed:  mov    %esi,%ebx
0.   	0.   	       [ 722]   5a69ef:  mov    %esi,-0x490(%rbp)
0.   	0.   	       [ 722]   5a69f5:  mov    %r14,%rsi
0.   	0.   	       [ 722]   5a69f8:  mov    %rbx,-0x418(%rbp)
0.   	0.   	       [ 722]   5a69ff:  lea    (%rcx,%rax,1),%r8
0.   	0.   	       [ 722]   5a6a03:  mov    $0x1,%ecx
0.   	0.   	       [ 722]   5a6a08:  mov    -0x460(%rbp),%edi
0.190	0.190	       [ 722]   5a6a0e:  test   %edi,%edi
0.020	0.020	       [ 722]   5a6a10:  jle    .+0x679 [ 0x5a7089 ]
0.   	0.   	       [ 722]   5a6a16:  mov    $0x1,%eax
0.   	0.   	       [ 722]   5a6a1b:  test   %r9d,%r9d
0.   	0.   	       [ 722]   5a6a1e:  jg     .+0x453 [ 0x5a6e71 ]
0.   	0.   	       [ 722]   5a6a24:  add    $0x1,%rax
0.   	0.   	       [ 722]   5a6a28:  cmp    %rax,-0x3f8(%rbp)
0.   	0.   	       [ 722]   5a6a2f:  jne    .-0x14 [ 0x5a6a1b ]
0.   	0.   	       [ 722]   5a6a31:  add    $0x1,%rcx
0.   	0.   	       [ 722]   5a6a35:  add    $0x1,%r8
0.   	0.   	       [ 722]   5a6a39:  cmp    $0x4,%rcx
0.   	0.   	       [ 722]   5a6a3d:  jne    .-0x27 [ 0x5a6a16 ]
0.050	0.050	       [ 722]   5a6a3f:  mov    -0x3e8(%rbp),%rcx
0.190	0.190	       [ 722]   5a6a46:  mov    %rsi,%r14
0.   	0.   	       [ 722]   5a6a49:  mov    0x38(%rbp),%r12
0.   	0.   	       [ 722]   5a6a4d:  mov    %r11,%rdx
0.   	0.   	       [ 722]   5a6a50:  mov    -0x488(%rbp),%rax
0.020	0.020	       [ 722]   5a6a57:  mov    -0x490(%rbp),%esi
0.   	0.   	       [ 722]   5a6a5d:  movq   $0x2,-0x3e8(%rbp)
0.   	0.   	       [ 722]   5a6a68:  add    $0x1,%rcx
0.   	0.   	       [ 722]   5a6a6c:  add    -0x478(%rbp),%rax
0.   	0.   	       [ 722]   5a6a73:  cmp    $0x3,%rcx
0.   	0.   	       [ 722]   5a6a77:  jne    .-0xa3 [ 0x5a69d4 ]
0.   	0.   	       [ 722]   5a6a7d:  mov    -0x3f0(%rbp),%rax
0.150	0.150	       [ 722]   5a6a84:  mov    -0x458(%rbp),%rbx
0.010	0.010	       [ 722]   5a6a8b:  movq   $0x2,-0x3f0(%rbp)
0.   	0.   	       [ 722]   5a6a96:  add    $0x1,%rax
0.   	0.   	       [ 722]   5a6a9a:  lea    (%r11,%rbx,1),%r8
0.   	0.   	       [ 722]   5a6a9e:  cmp    $0x3,%rax
0.   	0.   	       [ 722]   5a6aa2:  jne    .-0xe7 [ 0x5a69bb ]
0.   	0.   	       [ 718]   5a6aa8:  addq   $0x1,-0x3e0(%rbp)
0.010	0.010	       [ 718]   5a6ab0:  mov    -0x3e0(%rbp),%rax
0.010	0.010	       [ 718]   5a6ab7:  addq   $0x88,-0x450(%rbp)
0.   	0.   	       [ 718]   5a6ac2:  cmp    %rax,-0x480(%rbp)
0.   	0.   	       [ 718]   5a6ac9:  jne    .-0x700 [ 0x5a63c9 ]
0.   	0.   	       [ 718]   5a6acf:  mov    -0x4e0(%rbp),%rbx
0.020	0.020	       [ 718]   5a6ad6:  mov    %r14,%rdi
0.   	0.   	       [ 718]   5a6ad9:  mov    -0x4d8(%rbp),%r14
0.   	0.   	       [ 718]   5a6ae0:  addq   $0x1,-0x3d8(%rbp)
0.   	0.   	       [ 718]   5a6ae8:  mov    -0x4e8(%rbp),%r13
0.010	0.010	       [ 718]   5a6aef:  mov    -0x3d8(%rbp),%rax
0.   	0.   	       [ 718]   5a6af6:  add    %r14,%rbx
0.   	0.   	       [ 718]   5a6af9:  cmp    %rax,-0x480(%rbp)
0.   	0.   	       [ 718]   5a6b00:  jne    .-0x76f [ 0x5a6391 ]
0.   	0.   	       [ 726]   5a6b06:  mov    -0x430(%rbp),%rdi
0.   	0.070	       [ 726]   5a6b0d:  call   free@plt [ 0x405db0, .-0x1a0d5d]
0.   	0.   	       [ 727]   5a6b12:  mov    -0x428(%rbp),%rdi
0.   	0.040	       [ 727]   5a6b19:  call   free@plt [ 0x405db0, .-0x1a0d69]
0.   	0.   	       [ 728]   5a6b1e:  mov    -0x420(%rbp),%rdi
0.   	0.   	       [ 728]   5a6b25:  call   free@plt [ 0x405db0, .-0x1a0d75]
0.   	0.   	       [ 729]   5a6b2a:  mov    -0x448(%rbp),%rdi
0.   	0.040	       [ 729]   5a6b31:  call   free@plt [ 0x405db0, .-0x1a0d81]
0.   	0.   	       [ 730]   5a6b36:  mov    -0x438(%rbp),%rdi
0.   	0.040	       [ 730]   5a6b3d:  call   free@plt [ 0x405db0, .-0x1a0d8d]
0.   	0.   	       [ 731]   5a6b42:  mov    -0x440(%rbp),%rdi
0.   	0.050	       [ 731]   5a6b49:  call   free@plt [ 0x405db0, .-0x1a0d99]
0.   	0.   	       [ 732]   5a6b4e:  mov    -0x470(%rbp),%rdi
0.   	0.010	       [ 732]   5a6b55:  call   free@plt [ 0x405db0, .-0x1a0da5]
0.   	0.   	       [ 732]   5a6b5a:  jmp    .-0x1792 [ 0x5a53c8 ]
0.   	0.   	       [ 732]   5a6b5f:  nop
0.   	0.   	       [ 732]   5a6b60:  mov    $0x6,%r10d
0.   	0.   	       [ 732]   5a6b66:  jmp    .-0xca0 [ 0x5a5ec6 ]
0.   	0.   	       [ 732]   5a6b6b:  mov    $0x1,%edi
0.   	0.   	       [ 663]   5a6b70:  xor    %r14d,%r14d
0.   	0.   	       [ 663]   5a6b73:  jmp    .-0x1d50 [ 0x5a4e23 ]
0.   	0.   	       [ 656]   5a6b78:  mov    $0x1,%edi
0.   	0.   	       [ 656]   5a6b7d:  call   malloc@plt [ 0x4068b0, .-0x1a02cd]
0.   	0.   	       [ 656]   5a6b82:  mov    %rax,-0x420(%rbp)
0.   	0.   	       [ 656]   5a6b89:  test   %rax,%rax
0.   	0.   	       [ 656]   5a6b8c:  je     .+0x753 [ 0x5a72df ]
0.   	0.   	       [ 660]   5a6b92:  mov    $0x1,%edi
0.   	0.   	       [ 660]   5a6b97:  call   malloc@plt [ 0x4068b0, .-0x1a02e7]
0.   	0.   	       [ 660]   5a6b9c:  mov    %rax,-0x448(%rbp)
0.   	0.   	       [ 660]   5a6ba3:  test   %rax,%rax
0.   	0.   	       [ 660]   5a6ba6:  je     .+0x750 [ 0x5a72f6 ]
0.   	0.   	       [ 656]   5a6bac:  movslq -0x3d0(%rbp),%rax
0.   	0.   	       [ 657]   5a6bb3:  xor    %r12d,%r12d
0.   	0.   	       [ 661]   5a6bb6:  xor    %r14d,%r14d
0.   	0.   	       [ 661]   5a6bb9:  xor    %r15d,%r15d
0.   	0.   	       [ 656]   5a6bbc:  mov    $0x1,%edi
0.   	0.   	       [ 656]   5a6bc1:  mov    %rax,-0x3d8(%rbp)
0.   	0.   	       [ 656]   5a6bc8:  jmp    .-0x1df4 [ 0x5a4dd4 ]
0.   	0.   	       [1063]   5a6bcd:  lea    0x8(,%rcx,8),%rdi
0.   	0.   	       [1063]   5a6bd5:  mov    %rdx,-0x520(%rbp)
0.   	0.   	       [1063]   5a6bdc:  mov    %rsi,-0x4c8(%rbp)
0.   	0.   	       [1063]   5a6be3:  mov    %rcx,-0x4c0(%rbp)
0.   	0.020	       [1063]   5a6bea:  call   malloc@plt [ 0x4068b0, .-0x1a033a]
0.   	0.   	       [1063]   5a6bef:  mov    -0x4c8(%rbp),%rsi
0.   	0.   	       [1063]   5a6bf6:  movq   $0x0,-0x2d8(%rbp)
0.   	0.   	       [1063]   5a6c01:  mov    %rax,-0x2e0(%rbp)
0.   	0.   	       [1063]   5a6c08:  mov    %rax,%r13
0.   	0.   	       [1063]   5a6c0b:  mov    -0x3c8(%rbp),%rax
0.   	0.   	       [1063]   5a6c12:  mov    -0x4c0(%rbp),%rcx
0.   	0.   	       [1063]   5a6c19:  mov    0xb20(%rax),%rax
0.   	0.   	       [1063]   5a6c20:  lea    0x0(,%rax,8),%rdi
0.   	0.   	       [1063]   5a6c28:  imul   -0x520(%rbp),%rax
0.   	0.   	       [1063]   5a6c30:  add    %r15,%rax
0.   	0.   	       [1063]   5a6c33:  lea    (%rsi,%rax,8),%rdx
0.   	0.   	       [1063]   5a6c37:  xor    %eax,%eax
0.   	0.   	       [1063]   5a6c39:  movsd  0x8(%rdx),%xmm0
0.040	0.040	       [1063]   5a6c3e:  add    %rdi,%rdx
0.   	0.   	       [1063]   5a6c41:  movsd  %xmm0,0x0(%r13,%rax,8)
0.010	0.010	       [1063]   5a6c48:  add    $0x1,%rax
0.   	0.   	       [1063]   5a6c4c:  cmp    %rax,%rcx
0.   	0.   	       [1063]   5a6c4f:  jge    .-0x16 [ 0x5a6c39 ]
0.   	0.   	       [1063]   5a6c51:  jmp    .-0x1586 [ 0x5a56cb ]
0.   	0.   	       [ 700]   5a6c56:  mov    0x48(%rbp),%rax
0.   	0.   	       [ 700]   5a6c5a:  movdqa 0x32fafe(%rip),%xmm0        # 0x32fb06
0.   	0.   	       [ 700]   5a6c62:  mov    0x48(%rbp),%rbx
0.   	0.   	       [ 700]   5a6c66:  movups %xmm0,0x4(%rax)
0.   	0.   	       [ 700]   5a6c6a:  movdqa 0x34163e(%rip),%xmm0        # 0x341646
0.   	0.   	       [ 700]   5a6c72:  movups %xmm0,0x14(%rax)
0.   	0.   	       [ 700]   5a6c76:  movdqa 0x341642(%rip),%xmm0        # 0x34164a
0.   	0.   	       [ 700]   5a6c7e:  movups %xmm0,0x24(%rax)
0.   	0.   	       [ 700]   5a6c82:  movdqa 0x341646(%rip),%xmm0        # 0x34164e
0.   	0.   	       [ 700]   5a6c8a:  movups %xmm0,0x34(%rax)
0.   	0.   	       [ 700]   5a6c8e:  movabs $0x2020202020202020,%rax
0.   	0.   	       [ 700]   5a6c98:  mov    %rax,0x44(%rbx)
0.   	0.   	       [ 700]   5a6c9c:  mov    0x48(%rbp),%rbx
0.   	0.   	       [ 700]   5a6ca0:  mov    %rax,0x1fc(%rbx)
0.   	0.   	       [ 700]   5a6ca7:  mov    0x48(%rbp),%rbx
0.   	0.   	       [ 700]   5a6cab:  mov    0x48(%rbp),%edx
0.   	0.   	       [ 700]   5a6cae:  lea    0x4c(%rbx),%rdi
0.   	0.   	       [ 700]   5a6cb2:  and    $0xfffffffffffffff8,%rdi
0.   	0.   	       [ 700]   5a6cb6:  sub    %edi,%edx
0.   	0.   	       [ 700]   5a6cb8:  lea    0x204(%rdx),%ecx
0.   	0.   	       [ 700]   5a6cbe:  shr    $0x3,%ecx
0.   	0.   	       [ 700]   5a6cc1:  rep stos %rax,%es:(%rdi)
0.   	0.   	       [ 701]   5a6cc4:  mov    0x48(%rbp),%rax
0.   	0.   	       [ 735]   5a6cc8:  mov    -0x440(%rbp),%rdi
0.   	0.   	       [ 701]   5a6ccf:  movl   $0xffffffff,(%rax)
0.   	0.   	       [ 702]   5a6cd5:  movl   $0x1,0x204(%rax)
0.   	0.   	       [ 735]   5a6cdf:  call   free@plt [ 0x405db0, .-0x1a0f2f]
0.   	0.   	       [ 735]   5a6ce4:  mov    -0x438(%rbp),%rdi
0.   	0.   	       [ 735]   5a6ceb:  call   free@plt [ 0x405db0, .-0x1a0f3b]
0.   	0.   	       [ 735]   5a6cf0:  mov    -0x470(%rbp),%rdi
0.   	0.   	       [ 735]   5a6cf7:  call   free@plt [ 0x405db0, .-0x1a0f47]
0.   	0.   	       [ 735]   5a6cfc:  mov    -0x428(%rbp),%rdi
0.   	0.   	       [ 735]   5a6d03:  call   free@plt [ 0x405db0, .-0x1a0f53]
0.   	0.   	       [ 735]   5a6d08:  mov    -0x430(%rbp),%rdi
0.   	0.   	       [ 735]   5a6d0f:  call   free@plt [ 0x405db0, .-0x1a0f5f]
0.   	0.   	       [ 735]   5a6d14:  mov    -0x420(%rbp),%rdi
0.   	0.   	       [ 735]   5a6d1b:  call   free@plt [ 0x405db0, .-0x1a0f6b]
0.   	0.   	       [ 735]   5a6d20:  mov    -0x448(%rbp),%rdi
0.   	0.   	       [ 735]   5a6d27:  call   free@plt [ 0x405db0, .-0x1a0f77]
0.   	0.   	       [ 735]   5a6d2c:  lea    -0x28(%rbp),%rsp
0.   	0.   	       [ 735]   5a6d30:  pop    %rbx
0.   	0.   	       [ 735]   5a6d31:  pop    %r12
0.   	0.   	       [ 735]   5a6d33:  pop    %r13
0.   	0.   	       [ 735]   5a6d35:  pop    %r14
0.   	0.   	       [ 735]   5a6d37:  pop    %r15
0.   	0.   	       [ 735]   5a6d39:  pop    %rbp
0.   	0.   	       [ 735]   5a6d3a:  ret
0.   	0.   	       [ 695]   5a6d3b:  movapd %xmm1,%xmm5
0.010	0.010	       [ 695]   5a6d3f:  divsd  %xmm2,%xmm5
0.   	0.   	       [ 695]   5a6d43:  mulsd  %xmm5,%xmm1
0.   	0.   	       [ 695]   5a6d47:  addsd  %xmm1,%xmm2
0.   	0.   	       [ 695]   5a6d4b:  movapd %xmm0,%xmm1
0.   	0.   	       [ 695]   5a6d4f:  mulsd  %xmm5,%xmm1
0.   	0.   	       [ 695]   5a6d53:  addsd  %xmm4,%xmm1
0.   	0.   	       [ 695]   5a6d57:  mulsd  %xmm5,%xmm4
0.   	0.   	       [ 695]   5a6d5b:  divsd  %xmm2,%xmm1
0.150	0.150	       [ 695]   5a6d5f:  subsd  %xmm4,%xmm0
0.   	0.   	       [ 695]   5a6d63:  divsd  %xmm2,%xmm0
0.050	0.050	       [ 695]   5a6d67:  jmp    .-0xd5e [ 0x5a6009 ]
0.   	0.   	       [ 675]   5a6d6c:  mov    -0x3d0(%rbp),%eax
0.   	0.   	       [ 677]   5a6d72:  mov    -0x3b4(%rbp),%esi
0.   	0.   	       [ 675]   5a6d78:  test   %eax,%eax
0.   	0.   	       [ 675]   5a6d7a:  jle    .-0xa79 [ 0x5a6301 ]
0.   	0.   	       [ 675]   5a6d80:  sub    $0x1,%eax
0.   	0.   	       [ 675]   5a6d83:  movslq %esi,%rcx
0.   	0.   	       [ 675]   5a6d86:  mov    -0x420(%rbp),%rdi
0.   	0.   	       [ 675]   5a6d8d:  movq   0x2f11bb(%rip),%xmm0        # 0x2f11c3
0.   	0.   	       [ 675]   5a6d95:  lea    (%rax,%rax,2),%rax
0.   	0.   	       [ 675]   5a6d99:  mov    %rcx,%rdx
0.   	0.   	       [ 675]   5a6d9c:  add    %rcx,%rax
0.   	0.   	       [ 675]   5a6d9f:  shl    $0x4,%rdx
0.   	0.   	       [ 675]   5a6da3:  shl    $0x4,%rax
0.   	0.   	       [ 675]   5a6da7:  add    %rdi,%rdx
0.   	0.   	       [ 675]   5a6daa:  lea    0x30(%rdi,%rax,1),%rcx
0.   	0.   	       [ 678]   5a6daf:  mov    -0x3f8(%rbp),%rax
0.   	0.   	       [ 678]   5a6db6:  mov    -0x508(%rbp),%rdi
0.   	0.   	       [ 678]   5a6dbd:  lea    (%rax,%rdi,4),%rax
0.   	0.   	       [ 678]   5a6dc1:  add    -0x458(%rbp),%rax
0.   	0.   	       [ 678]   5a6dc8:  shl    $0x4,%rax
0.   	0.   	       [ 677]   5a6dcc:  movups %xmm0,-0x10(%rdx)
0.   	0.   	       [ 675]   5a6dd0:  add    $0x30,%rdx
0.   	0.   	       [ 678]   5a6dd4:  movups %xmm0,(%rdx,%rax,1)
0.   	0.   	       [ 675]   5a6dd8:  cmp    %rdx,%rcx
0.   	0.   	       [ 675]   5a6ddb:  jne    .-0xf [ 0x5a6dcc ]
0.   	0.   	       [ 675]   5a6ddd:  jmp    .-0xadc [ 0x5a6301 ]
0.   	0.   	       [1063]   5a6de2:  mov    -0x3e0(%rbp),%rax
0.   	0.   	       [1063]   5a6de9:  mov    $0x1,%edi
0.   	0.   	       [1063]   5a6dee:  mov    %r14,-0xe8(%rbp)
0.   	0.   	       [1063]   5a6df5:  mov    %r13,-0xe0(%rbp)
0.   	0.   	       [1063]   5a6dfc:  movq   $0x0,-0xd8(%rbp)
0.   	0.   	       [1063]   5a6e07:  mov    %rax,-0xd0(%rbp)
0.   	0.   	       [1063]   5a6e0e:  call   malloc@plt [ 0x4068b0, .-0x1a055e]
0.   	0.   	       [1063]   5a6e13:  movdqa 0x2ce915(%rip),%xmm7        # 0x2ce91d
0.   	0.   	       [1063]   5a6e1b:  movq   $0x0,-0x118(%rbp)
0.   	0.   	       [1063]   5a6e26:  mov    %rax,-0x120(%rbp)
0.   	0.   	       [1063]   5a6e2d:  mov    %rax,%r12
0.   	0.   	       [1063]   5a6e30:  movabs $0x30200000000,%rax
0.   	0.   	       [1063]   5a6e3a:  movq   $0x8,-0x110(%rbp)
0.   	0.   	       [1063]   5a6e45:  mov    %rax,-0x108(%rbp)
0.   	0.   	       [1063]   5a6e4c:  movq   $0x0,-0xf0(%rbp)
0.   	0.   	       [1063]   5a6e57:  movaps %xmm7,-0x100(%rbp)
0.   	0.   	       [1063]   5a6e5e:  jmp    .-0x1cc1 [ 0x5a519d ]
0.   	0.   	       [1063]   5a6e63:  nopl   0x0(%rax,%rax,1)
0.   	0.   	       [ 716]   5a6e68:  pxor   %xmm0,%xmm0
0.   	0.   	       [ 716]   5a6e6c:  jmp    .-0x55c [ 0x5a6910 ]
0.   	0.   	       [ 716]   5a6e71:  mov    0x40(%rbp),%rdi
0.120	0.120	       [ 716]   5a6e75:  mov    0xe8(%r15),%r10
0.070	0.070	       [ 716]   5a6e7c:  mov    %r8,-0x498(%rbp)
0.030	0.030	       [ 716]   5a6e83:  lea    0x3(%r8),%r12
0.   	0.   	       [ 716]   5a6e87:  mov    0xe0(%r15),%r14
0.   	0.   	       [ 716]   5a6e8e:  mov    0x90(%r15),%rdx
0.240	0.240	       [ 716]   5a6e95:  mov    %r11,-0x4a8(%rbp)
0.   	0.   	       [ 716]   5a6e9c:  shl    $0x4,%r12
0.   	0.   	       [ 716]   5a6ea0:  mov    (%rdi),%rdi
0.290	0.290	       [ 716]   5a6ea3:  mov    %r10,%r13
0.   	0.   	       [ 716]   5a6ea6:  mov    0xf0(%r15),%rbx
0.   	0.   	       [ 716]   5a6ead:  mov    %r9d,-0x4b0(%rbp)
0.   	0.   	       [ 716]   5a6eb4:  imul   %r14,%r13
0.   	0.   	       [ 716]   5a6eb8:  mov    %rsi,-0x4b8(%rbp)
0.   	0.   	       [ 716]   5a6ebf:  add    -0x420(%rbp),%r12
0.   	0.   	       [ 716]   5a6ec6:  mov    %r14,%rsi
0.   	0.   	       [ 716]   5a6ec9:  mov    %rdi,-0x408(%rbp)
0.030	0.030	       [ 716]   5a6ed0:  mov    0x40(%rbp),%rdi
0.   	0.   	       [ 716]   5a6ed4:  mov    0x8(%rdi),%rdi
0.   	0.   	       [ 716]   5a6ed8:  mov    %rdi,-0x410(%rbp)
0.   	0.   	       [ 716]   5a6edf:  lea    0x1(%rdx),%rdi
0.   	0.   	       [ 716]   5a6ee3:  mov    0x88(%r15),%rdx
0.060	0.060	       [ 716]   5a6eea:  mov    %rdi,-0x400(%rbp)
0.   	0.   	       [ 716]   5a6ef1:  lea    0x1(%rbx),%rdi
0.   	0.   	       [ 716]   5a6ef5:  lea    (%rdx,%r13,8),%r13
0.020	0.020	       [ 716]   5a6ef9:  mov    %rcx,%rdx
0.   	0.   	       [ 716]   5a6efc:  nopl   0x0(%rax)
0.   	0.   	       [ 722]   5a6f00:  mov    0x40(%rbp),%r11
1.471	1.471	       [ 722]   5a6f04:  mov    -0x3d8(%rbp),%rcx
0.040	0.040	       [ 722]   5a6f0b:  mov    %rdx,-0x3c8(%rbp)
0.070	0.070	       [ 722]   5a6f12:  mov    -0x3e8(%rbp),%r9
0.110	0.110	       [ 722]   5a6f19:  mov    0xc8(%r15),%r14
1.711	1.711	       [ 722]   5a6f20:  mov    %rax,-0x3d0(%rbp)
0.100	0.100	       [ 722]   5a6f27:  imul   0x40(%r11),%rcx
3.893	3.893	       [ 722]   5a6f2c:  add    -0x410(%rbp),%rcx
1.261	1.261	       [ 722]   5a6f33:  add    -0x3e0(%rbp),%rcx
0.420	0.420	       [ 722]   5a6f3a:  imul   %rax,%r14
0.040	0.040	       [ 722]   5a6f3e:  mov    0xf8(%r15),%r11
0.220	0.220	       [ 722]   5a6f45:  lea    (%rcx,%rcx,4),%r8
0.340	0.340	       [ 722]   5a6f49:  mov    -0x3f0(%rbp),%rcx
0.   	0.   	       [ 722]   5a6f50:  shl    $0x5,%r8
0.350	0.350	       [ 722]   5a6f54:  imul   %rdx,%r11
0.040	0.040	       [ 722]   5a6f58:  add    -0x408(%rbp),%r8
0.360	0.360	       [ 722]   5a6f5f:  add    -0x400(%rbp),%r11
0.160	0.160	       [ 722]   5a6f66:  imul   0x70(%r8),%r9
8.616	8.616	       [ 722]   5a6f6b:  add    %r14,%r11
0.   	0.   	       [ 722]   5a6f6e:  imul   0x88(%r8),%rcx
1.241	1.241	       [ 722]   5a6f76:  add    0x8(%r8),%rcx
2.252	2.252	       [ 722]   5a6f7a:  add    %rcx,%r9
0.030	0.030	       [ 722]   5a6f7d:  mov    0x58(%r8),%rcx
0.160	0.160	       [ 722]   5a6f81:  imul   %rdx,%rcx
0.560	0.560	       [ 722]   5a6f85:  add    %r9,%rcx
0.   	0.   	       [ 722]   5a6f88:  mov    0x40(%r8),%r9
0.010	0.010	       [ 722]   5a6f8c:  mov    (%r8),%r8
0.   	0.   	       [ 722]   5a6f8f:  imul   %rax,%r9
0.450	0.450	       [ 722]   5a6f93:  add    %r9,%rcx
0.020	0.020	       [ 722]   5a6f96:  mov    %rcx,%r9
0.   	0.   	       [ 722]   5a6f99:  add    -0x418(%rbp),%rcx
0.350	0.350	       [ 722]   5a6fa0:  shl    $0x4,%r9
0.   	0.   	       [ 722]   5a6fa4:  shl    $0x4,%rcx
0.440	0.440	       [ 722]   5a6fa8:  add    %r8,%r9
0.   	0.   	       [ 722]   5a6fab:  lea    0x10(%r8,%rcx,1),%r14
0.480	0.480	       [ 722]   5a6fb0:  lea    0x0(,%rsi,8),%r8
0.   	0.   	       [ 722]   5a6fb8:  nopl   0x0(%rax,%rax,1)
0.   	0.   	       [ 722]   5a6fc0:  cmp    %rbx,%r10
0.020	0.020	       [ 722]   5a6fc3:  jg     .+0xdd [ 0x5a70a0 ]
0.   	0.   	       [ 722]   5a6fc9:  lea    0x0(%r13,%r11,8),%rcx
1.261	1.261	       [ 722]   5a6fce:  mov    %r12,%rax
0.010	0.010	       [ 722]   5a6fd1:  pxor   %xmm4,%xmm4
10.167	10.167	       [ 722]   5a6fd5:  mov    %r10,%rdx
0.010	0.010	       [ 722]   5a6fd8:  nopl   0x0(%rax,%rax,1)
0.070	0.070	       [ 722]   5a6fe0:  movsd  (%rax),%xmm3
15.521	15.521	       [ 722]   5a6fe4:  movsd  (%rcx),%xmm1
190.403	190.403	       [ 722]   5a6fe8:  movapd %xmm5,%xmm0
35.235	35.235	       [ 722]   5a6fec:  add    $0x1,%rdx
1.041	1.041	       [ 722]   5a6ff0:  movsd  0x8(%rax),%xmm2
29.711	29.711	       [ 722]   5a6ff5:  xorpd  0x2cfcf3(%rip),%xmm2        # 0x2cfcfb
397.928	397.928	       [ 722]   5a6ffd:  add    $0x30,%rax
0.230	0.230	       [ 722]   5a7001:  add    %r8,%rcx
0.230	0.230	       [ 722]   5a7004:  unpcklpd %xmm1,%xmm0
735.464	735.464	       [ 722]   5a7008:  mulsd  %xmm3,%xmm1
91.754	91.754	       [ 722]   5a700c:  unpcklpd %xmm2,%xmm2
0.620	0.620	       [ 722]   5a7010:  mulsd  %xmm5,%xmm3
9.256	9.256	       [ 722]   5a7014:  mulpd  %xmm2,%xmm0
111.528	111.528	       [ 722]   5a7018:  unpcklpd %xmm3,%xmm1
48.764	48.764	       [ 722]   5a701c:  movapd %xmm1,%xmm2
362.183	362.183	       [ 722]   5a7020:  subpd  %xmm0,%xmm2
123.697	123.697	       [ 722]   5a7024:  addpd  %xmm1,%xmm0
631.322	631.322	       [ 722]   5a7028:  movsd  %xmm2,%xmm0
566.096	566.096	       [ 722]   5a702c:  addpd  %xmm0,%xmm4
1413.088	1413.088	       [ 722]   5a7030:  cmp    %rdi,%rdx
4.323	4.323	       [ 722]   5a7033:  jne    .-0x53 [ 0x5a6fe0 ]
1.421	1.421	       [ 722]   5a7035:  movups %xmm4,0x10(%r9)
12.078	12.078	       [ 722]   5a703a:  add    $0x10,%r9
0.   	0.   	       [ 722]   5a703e:  add    $0x1,%r11
0.100	0.100	       [ 722]   5a7042:  cmp    %r9,%r14
0.   	0.   	       [ 722]   5a7045:  jne    .-0x85 [ 0x5a6fc0 ]
0.020	0.020	       [ 722]   5a704b:  mov    -0x3d0(%rbp),%rax
2.672	2.672	       [ 722]   5a7052:  mov    -0x3c8(%rbp),%rdx
0.260	0.260	       [ 722]   5a7059:  add    $0x1,%rax
0.130	0.130	       [ 722]   5a705d:  cmp    -0x3f8(%rbp),%rax
1.151	1.151	       [ 722]   5a7064:  jne    .-0x164 [ 0x5a6f00 ]
0.   	0.   	       [ 722]   5a706a:  mov    -0x498(%rbp),%r8
0.660	0.660	       [ 722]   5a7071:  mov    -0x4a8(%rbp),%r11
0.060	0.060	       [ 722]   5a7078:  mov    %rdx,%rcx
0.   	0.   	       [ 722]   5a707b:  mov    -0x4b0(%rbp),%r9d
0.   	0.   	       [ 722]   5a7082:  mov    -0x4b8(%rbp),%rsi
0.020	0.020	       [ 722]   5a7089:  add    $0x1,%rcx
0.   	0.   	       [ 722]   5a708d:  add    $0x1,%r8
0.   	0.   	       [ 722]   5a7091:  cmp    $0x4,%rcx
0.   	0.   	       [ 722]   5a7095:  jne    .-0x68d [ 0x5a6a08 ]
0.   	0.   	       [ 722]   5a709b:  jmp    .-0x65c [ 0x5a6a3f ]
0.   	0.   	       [ 722]   5a70a0:  pxor   %xmm4,%xmm4
0.   	0.   	       [ 722]   5a70a4:  jmp    .-0x6f [ 0x5a7035 ]
0.   	0.   	       [ 716]   5a70a6:  mov    %rsi,%rdi
0.   	0.   	       [ 716]   5a70a9:  mov    %rdx,-0x490(%rbp)
0.   	0.   	       [ 716]   5a70b0:  mov    %r8,-0x3f8(%rbp)
0.   	0.   	       [ 716]   5a70b7:  call   malloc@plt [ 0x4068b0, .-0x1a0807]
0.   	0.   	       [ 716]   5a70bc:  mov    -0x490(%rbp),%rdx
0.   	0.   	       [ 716]   5a70c3:  mov    $0x303,%r8d
0.   	0.   	       [ 716]   5a70c9:  pxor   %xmm0,%xmm0
0.   	0.   	       [ 716]   5a70cd:  mov    %rax,%rcx
0.   	0.   	       [ 716]   5a70d0:  imul   $0x70,%rdx,%rax
0.   	0.   	       [ 716]   5a70d4:  mov    %rcx,(%r14,%rax,1)
0.   	0.   	       [ 716]   5a70d8:  mov    (%r12),%r14
0.   	0.   	       [ 716]   5a70dc:  movups %xmm0,0x10(%r14,%rax,1)
0.   	0.   	       [ 716]   5a70e2:  mov    %r8w,0x1c(%r14,%rax,1)
0.   	0.   	       [ 716]   5a70e8:  mov    -0x3f8(%rbp),%r8
0.   	0.   	       [ 716]   5a70ef:  movq   $0x8,0x10(%r14,%rax,1)
0.   	0.   	       [ 716]   5a70f8:  jmp    .-0xa1d [ 0x5a66db ]
0.   	0.   	       [ 716]   5a70fd:  mov    0x48(%rax),%rsi
0.090	0.090	       [ 716]   5a7101:  lea    (%rsi,%r11,1),%rdx
0.   	0.   	       [ 716]   5a7105:  cmp    0x50(%rax),%rdx
0.060	0.060	       [ 716]   5a7109:  jne    .-0xc42 [ 0x5a64c7 ]
0.   	0.   	       [ 716]   5a710f:  mov    0x60(%rax),%rdi
0.030	0.030	       [ 716]   5a7113:  lea    (%rdi,%r10,1),%rdx
0.   	0.   	       [ 716]   5a7117:  cmp    0x68(%rax),%rdx
0.   	0.   	       [ 716]   5a711b:  jne    .-0xc54 [ 0x5a64c7 ]
0.   	0.   	       [ 716]   5a7121:  mov    0x8(%rax),%rax
0.   	0.   	       [ 716]   5a7125:  sub    -0x3d0(%rbp),%r9
0.   	0.   	       [ 716]   5a712c:  sub    %r8,%rsi
0.   	0.   	       [ 716]   5a712f:  sub    %r13,%rdi
0.   	0.   	       [ 716]   5a7132:  mov    %r9,-0x408(%rbp)
0.   	0.   	       [ 716]   5a7139:  mov    %rax,-0x3c8(%rbp)
0.   	0.   	       [ 716]   5a7140:  mov    %rsi,-0x3f0(%rbp)
0.   	0.   	       [ 716]   5a7147:  mov    %rdi,-0x400(%rbp)
0.010	0.010	       [ 716]   5a714e:  jmp    .-0xa64 [ 0x5a66ea ]
0.   	0.   	       [ 636]   5a7153:  mov    %rsi,%rdi
0.   	0.   	       [ 636]   5a7156:  call   malloc@plt [ 0x4068b0, .-0x1a08a6]
0.   	0.   	       [ 636]   5a715b:  movq   $0x8,0x10(%r14)
0.   	0.   	       [ 636]   5a7163:  mov    -0x508(%rbp),%rdx
0.   	0.   	       [ 636]   5a716a:  mov    %rax,(%r14)
0.   	0.   	       [ 636]   5a716d:  mov    %rax,%r15
0.   	0.   	       [ 636]   5a7170:  mov    -0x510(%rbp),%r8
0.   	0.   	       [ 636]   5a7177:  movabs $0x30300000000,%rax
0.   	0.   	       [ 636]   5a7181:  mov    %rax,0x18(%r14)
0.   	0.   	       [ 636]   5a7185:  jmp    .-0x2a0a [ 0x5a477b ]
0.   	0.   	       [ 636]   5a718a:  lea    (%rsi,%r10,1),%rax
0.   	0.   	       [ 636]   5a718e:  cmp    0x50(%r14),%rax
0.   	0.   	       [ 636]   5a7192:  jne    .-0x2ae7 [ 0x5a46ab ]
0.   	0.   	       [ 636]   5a7198:  lea    (%rdi,%r9,1),%rax
0.   	0.   	       [ 636]   5a719c:  cmp    0x68(%r14),%rax
0.   	0.   	       [ 636]   5a71a0:  jne    .-0x2af5 [ 0x5a46ab ]
0.   	0.   	       [ 636]   5a71a6:  sub    -0x418(%rbp),%rcx
0.   	0.   	       [ 636]   5a71ad:  sub    -0x3d0(%rbp),%rsi
0.   	0.   	       [ 636]   5a71b4:  sub    %r12,%rdi
0.   	0.   	       [ 636]   5a71b7:  mov    %rcx,-0x448(%rbp)
0.   	0.   	       [ 636]   5a71be:  mov    %rsi,%r13
0.   	0.   	       [ 636]   5a71c1:  mov    %rdi,-0x458(%rbp)
0.   	0.   	       [ 636]   5a71c8:  jmp    .-0x2a4d [ 0x5a477b ]
0.   	0.   	       [ 636]   5a71cd:  nopl   (%rax)
0.   	0.   	       [ 636]   5a71d0:  pxor   %xmm1,%xmm1
0.   	0.   	       [ 636]   5a71d4:  mov    $0x1,%edi
0.   	0.   	       [ 636]   5a71d9:  mov    $0x1,%esi
0.   	0.   	       [ 636]   5a71de:  xor    %edx,%edx
0.   	0.   	       [ 636]   5a71e0:  movdqa 0x2e8cc8(%rip),%xmm0        # 0x2e8cd0
0.   	0.   	       [ 636]   5a71e8:  movups %xmm1,0x38(%r14)
0.   	0.   	       [ 636]   5a71ed:  movdqa 0x32f89b(%rip),%xmm1        # 0x32f8a3
0.   	0.   	       [ 636]   5a71f5:  mov    $0x1,%ecx
0.   	0.   	       [ 636]   5a71fa:  movq   $0x0,0x68(%r14)
0.   	0.   	       [ 636]   5a7202:  movq   $0x0,0x8(%r14)
0.   	0.   	       [ 636]   5a720a:  movups %xmm0,0x28(%r14)
0.   	0.   	       [ 636]   5a720f:  movups %xmm1,0x48(%r14)
0.   	0.   	       [ 636]   5a7214:  movups %xmm0,0x58(%r14)
0.   	0.   	       [ 636]   5a7219:  jmp    .-0x2c49 [ 0x5a45d0 ]
0.   	0.   	       [ 635]   5a721e:  mov    %rsi,%rdi
0.   	0.   	       [ 635]   5a7221:  call   malloc@plt [ 0x4068b0, .-0x1a0971]
0.   	0.   	       [ 635]   5a7226:  movq   $0x8,0x10(%r15)
0.   	0.   	       [ 635]   5a722e:  mov    -0x478(%rbp),%r9
0.   	0.   	       [ 635]   5a7235:  mov    %rax,(%r15)
0.   	0.   	       [ 635]   5a7238:  mov    %rax,%rdi
0.   	0.   	       [ 635]   5a723b:  movabs $0x30200000000,%rax
0.   	0.   	       [ 635]   5a7245:  mov    -0x4e8(%rbp),%rcx
0.   	0.   	       [ 635]   5a724c:  mov    %rax,0x18(%r15)
0.   	0.   	       [ 635]   5a7250:  mov    -0x4f0(%rbp),%r8
0.   	0.   	       [ 635]   5a7257:  jmp    .-0x2e1f [ 0x5a4438 ]
0.   	0.   	       [ 635]   5a725c:  lea    (%r10,%r11,1),%rsi
0.   	0.   	       [ 635]   5a7260:  cmp    0x50(%r15),%rsi
0.   	0.   	       [ 635]   5a7264:  jne    .-0x2edb [ 0x5a4389 ]
0.   	0.   	       [ 635]   5a726a:  sub    %r12,%rax
0.   	0.   	       [ 635]   5a726d:  sub    %rcx,%r10
0.   	0.   	       [ 635]   5a7270:  mov    %r10,-0x420(%rbp)
0.   	0.   	       [ 635]   5a7277:  mov    %rax,%r13
0.   	0.   	       [ 635]   5a727a:  jmp    .-0x2e42 [ 0x5a4438 ]
0.   	0.   	       [ 635]   5a727f:  movdqa 0x2e8c29(%rip),%xmm0        # 0x2e8c31
0.   	0.   	       [ 635]   5a7287:  movq   $0x0,0x8(%r15)
0.   	0.   	       [ 635]   5a728f:  mov    $0x1,%eax
0.   	0.   	       [ 635]   5a7294:  xor    %r9d,%r9d
0.   	0.   	       [ 635]   5a7297:  mov    $0x1,%r10d
0.   	0.   	       [ 635]   5a729d:  movups %xmm0,0x28(%r15)
0.   	0.   	       [ 635]   5a72a2:  pxor   %xmm0,%xmm0
0.   	0.   	       [ 635]   5a72a6:  movups %xmm0,0x38(%r15)
0.   	0.   	       [ 635]   5a72ab:  movdqa 0x32f7dd(%rip),%xmm0        # 0x32f7e5
0.   	0.   	       [ 635]   5a72b3:  movups %xmm0,0x48(%r15)
0.   	0.   	       [ 635]   5a72b8:  jmp    .-0x2fd4 [ 0x5a42e4 ]
0.   	0.   	       [ 598]   5a72bd:  xor    %edx,%edx
0.   	0.   	       [ 598]   5a72bf:  mov    $0x8744d5,%esi
0.   	0.   	       [ 598]   5a72c4:  mov    $0x8e7a08,%edi
0.   	0.   	       [ 598]   5a72c9:  xor    %eax,%eax
0.   	0.   	       [ 598]   5a72cb:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a0e2b]
0.   	0.   	       [ 599]   5a72d0:  mov    $0x8744d5,%esi
0.   	0.   	       [ 599]   5a72d5:  mov    $0x8e7ab0,%edi
0.   	0.   	       [ 599]   5a72da:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a0e3a]
0.   	0.   	       [ 656]   5a72df:  xor    %r12d,%r12d
0.   	0.   	       [ 656]   5a72e2:  mov    %r12,%rdx
0.   	0.   	       [ 656]   5a72e5:  mov    $0x8744d5,%esi
0.   	0.   	       [ 656]   5a72ea:  mov    $0x8e7b58,%edi
0.   	0.   	       [ 656]   5a72ef:  xor    %eax,%eax
0.   	0.   	       [ 656]   5a72f1:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a0e51]
0.   	0.   	       [ 660]   5a72f6:  xor    %r12d,%r12d
0.   	0.   	       [ 660]   5a72f9:  mov    %r12,%rdx
0.   	0.   	       [ 660]   5a72fc:  mov    $0x8744d5,%esi
0.   	0.   	       [ 660]   5a7301:  mov    $0x8e7c00,%edi
0.   	0.   	       [ 660]   5a7306:  xor    %eax,%eax
0.   	0.   	       [ 660]   5a7308:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a0e68]
0.   	0.   	       [ 661]   5a730d:  mov    %r15,%rdx
0.   	0.   	       [ 661]   5a7310:  mov    $0x8744d5,%esi
0.   	0.   	       [ 661]   5a7315:  mov    $0x8e7ca8,%edi
0.   	0.   	       [ 661]   5a731a:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a0e7a]
0.   	0.   	       [ 662]   5a731f:  mov    %r15,%rdx
0.   	0.   	       [ 662]   5a7322:  mov    $0x8744d5,%esi
0.   	0.   	       [ 662]   5a7327:  mov    $0x8e7d50,%edi
0.   	0.   	       [ 662]   5a732c:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a0e8c]
0.   	0.   	       [ 663]   5a7331:  mov    %r14,%rdx
0.   	0.   	       [ 663]   5a7334:  mov    $0x8744d5,%esi
0.   	0.   	       [ 663]   5a7339:  mov    $0x8e7df8,%edi
0.   	0.   	       [ 663]   5a733e:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a0e9e]
0.   	0.   	       [1050]   5a7343:  mov    %rbx,%rdx
0.   	0.   	       [1050]   5a7346:  mov    $0x8744d5,%esi
0.   	0.   	       [1050]   5a734b:  mov    $0x8e7ea0,%edi
0.   	0.   	       [1050]   5a7350:  xor    %eax,%eax
0.   	0.   	       [1050]   5a7352:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a0eb2]
0.   	0.   	       [1051]   5a7357:  mov    %rbx,%rdx
0.   	0.   	       [1051]   5a735a:  mov    $0x8744d5,%esi
0.   	0.   	       [1051]   5a735f:  mov    $0x8e7f48,%edi
0.   	0.   	       [1051]   5a7364:  xor    %eax,%eax
0.   	0.   	       [1051]   5a7366:  call   _gfortran_os_error_at@plt [ 0x4064a0, .-0x1a0ec6]
0.   	0.   	       [1084]   5a736b:  mov    $0x8e2d45,%edx
0.   	0.   	       [1084]   5a7370:  mov    $0x8743e0,%esi
0.   	0.   	       [1084]   5a7375:  mov    $0x8e7ff0,%edi
0.   	0.   	       [1084]   5a737a:  xor    %eax,%eax
0.   	0.   	       [1084]   5a737c:  call   _gfortran_runtime_error_at@plt [ 0x406700, .-0x1a0c7c]
0.   	0.   	       [1085]   5a7381:  mov    $0x8e2d32,%edx
0.   	0.   	       [1085]   5a7386:  mov    $0x8743e0,%esi
0.   	0.   	       [1085]   5a738b:  mov    $0x8e8090,%edi
0.   	0.   	       [1085]   5a7390:  xor    %eax,%eax
0.   	0.   	       [1085]   5a7392:  call   _gfortran_runtime_error_at@plt [ 0x406700, .-0x1a0c92]