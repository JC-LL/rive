
esw/build/esw.elf:     format de fichier elf32-littleriscv


Déassemblage de la section .text :

00000000 <_my_start>:
       0:	00100117          	auipc	sp,0x100
       4:	ffc10113          	addi	sp,sp,-4 # ffffc <__preinit_array_end+0xecf98>
       8:	0300006f          	jal	zero,38 <_start>
       c:	00000013          	addi	zero,zero,0
      10:	00000013          	addi	zero,zero,0
      14:	00000013          	addi	zero,zero,0
      18:	00000013          	addi	zero,zero,0
      1c:	00000013          	addi	zero,zero,0

00000020 <_my_syscall_interface>:
      20:	1090006f          	jal	zero,928 <_my_c_syscall_interface>
	...

00000038 <_start>:
      38:	00013197          	auipc	gp,0x13
      3c:	87818193          	addi	gp,gp,-1928 # 128b0 <__global_pointer$>
      40:	1d018513          	addi	a0,gp,464 # 12a80 <_edata>
      44:	22c18613          	addi	a2,gp,556 # 12adc <__BSS_END__>
      48:	40a60633          	sub	a2,a2,a0
      4c:	00000593          	addi	a1,zero,0
      50:	419000ef          	jal	ra,c68 <memset>
      54:	00001517          	auipc	a0,0x1
      58:	b1850513          	addi	a0,a0,-1256 # b6c <__libc_fini_array>
      5c:	2c9000ef          	jal	ra,b24 <atexit>
      60:	369000ef          	jal	ra,bc8 <__libc_init_array>
      64:	00012503          	lw	a0,0(sp)
      68:	00410593          	addi	a1,sp,4
      6c:	00000613          	addi	a2,zero,0
      70:	754000ef          	jal	ra,7c4 <main>
      74:	2c50006f          	jal	zero,b38 <exit>

00000078 <_fini>:
      78:	00008067          	jalr	zero,0(ra)

0000007c <deregister_tm_clones>:
      7c:	19c18513          	addi	a0,gp,412 # 12a4c <__TMC_END__>
      80:	19c18793          	addi	a5,gp,412 # 12a4c <__TMC_END__>
      84:	00a78a63          	beq	a5,a0,98 <deregister_tm_clones+0x1c>
      88:	00000317          	auipc	t1,0x0
      8c:	f7830313          	addi	t1,t1,-136 # 0 <_my_start>
      90:	00030463          	beq	t1,zero,98 <deregister_tm_clones+0x1c>
      94:	00030067          	jalr	zero,0(t1)
      98:	00008067          	jalr	zero,0(ra)

0000009c <register_tm_clones>:
      9c:	19c18513          	addi	a0,gp,412 # 12a4c <__TMC_END__>
      a0:	19c18593          	addi	a1,gp,412 # 12a4c <__TMC_END__>
      a4:	40a585b3          	sub	a1,a1,a0
      a8:	4025d593          	srai	a1,a1,0x2
      ac:	00200793          	addi	a5,zero,2
      b0:	02f5c5b3          	div	a1,a1,a5
      b4:	00058a63          	beq	a1,zero,c8 <register_tm_clones+0x2c>
      b8:	00000317          	auipc	t1,0x0
      bc:	f4830313          	addi	t1,t1,-184 # 0 <_my_start>
      c0:	00030463          	beq	t1,zero,c8 <register_tm_clones+0x2c>
      c4:	00030067          	jalr	zero,0(t1)
      c8:	00008067          	jalr	zero,0(ra)

000000cc <__do_global_dtors_aux>:
      cc:	1e41c783          	lbu	a5,484(gp) # 12a94 <completed.5435>
      d0:	04079063          	bne	a5,zero,110 <__do_global_dtors_aux+0x44>
      d4:	ff010113          	addi	sp,sp,-16
      d8:	00112623          	sw	ra,12(sp)
      dc:	fa1ff0ef          	jal	ra,7c <deregister_tm_clones>
      e0:	00000797          	auipc	a5,0x0
      e4:	f2078793          	addi	a5,a5,-224 # 0 <_my_start>
      e8:	00078a63          	beq	a5,zero,fc <__do_global_dtors_aux+0x30>
      ec:	00012517          	auipc	a0,0x12
      f0:	f7850513          	addi	a0,a0,-136 # 12064 <__EH_FRAME_BEGIN__>
      f4:	00000097          	auipc	ra,0x0
      f8:	f0c080e7          	jalr	ra,-244(ra) # 0 <_my_start>
      fc:	00c12083          	lw	ra,12(sp)
     100:	00100793          	addi	a5,zero,1
     104:	1ef18223          	sb	a5,484(gp) # 12a94 <completed.5435>
     108:	01010113          	addi	sp,sp,16
     10c:	00008067          	jalr	zero,0(ra)
     110:	00008067          	jalr	zero,0(ra)

00000114 <frame_dummy>:
     114:	00000797          	auipc	a5,0x0
     118:	eec78793          	addi	a5,a5,-276 # 0 <_my_start>
     11c:	02078463          	beq	a5,zero,144 <frame_dummy+0x30>
     120:	ff010113          	addi	sp,sp,-16
     124:	1e818593          	addi	a1,gp,488 # 12a98 <object.5440>
     128:	00012517          	auipc	a0,0x12
     12c:	f3c50513          	addi	a0,a0,-196 # 12064 <__EH_FRAME_BEGIN__>
     130:	00112623          	sw	ra,12(sp)
     134:	00000097          	auipc	ra,0x0
     138:	ecc080e7          	jalr	ra,-308(ra) # 0 <_my_start>
     13c:	00c12083          	lw	ra,12(sp)
     140:	01010113          	addi	sp,sp,16
     144:	f59ff06f          	jal	zero,9c <register_tm_clones>

00000148 <emu_putc>:
     148:	fe010113          	addi	sp,sp,-32
     14c:	00812e23          	sw	s0,28(sp)
     150:	02010413          	addi	s0,sp,32
     154:	00050793          	addi	a5,a0,0
     158:	fef407a3          	sb	a5,-17(s0)
     15c:	010007b7          	lui	a5,0x1000
     160:	fef44703          	lbu	a4,-17(s0)
     164:	00e78023          	sb	a4,0(a5) # 1000000 <__heap_top+0xf00000>
     168:	00000013          	addi	zero,zero,0
     16c:	01c12403          	lw	s0,28(sp)
     170:	02010113          	addi	sp,sp,32
     174:	00008067          	jalr	zero,0(ra)

00000178 <emu_puts>:
     178:	fd010113          	addi	sp,sp,-48
     17c:	02112623          	sw	ra,44(sp)
     180:	02812423          	sw	s0,40(sp)
     184:	03010413          	addi	s0,sp,48
     188:	fca42e23          	sw	a0,-36(s0)
     18c:	0100006f          	jal	zero,19c <emu_puts+0x24>
     190:	fef44783          	lbu	a5,-17(s0)
     194:	00078513          	addi	a0,a5,0
     198:	fb1ff0ef          	jal	ra,148 <emu_putc>
     19c:	fdc42783          	lw	a5,-36(s0)
     1a0:	00178713          	addi	a4,a5,1
     1a4:	fce42e23          	sw	a4,-36(s0)
     1a8:	0007c783          	lbu	a5,0(a5)
     1ac:	fef407a3          	sb	a5,-17(s0)
     1b0:	fef44783          	lbu	a5,-17(s0)
     1b4:	fc079ee3          	bne	a5,zero,190 <emu_puts+0x18>
     1b8:	00000013          	addi	zero,zero,0
     1bc:	02c12083          	lw	ra,44(sp)
     1c0:	02812403          	lw	s0,40(sp)
     1c4:	03010113          	addi	sp,sp,48
     1c8:	00008067          	jalr	zero,0(ra)

000001cc <platypus_stdout_error_to_str>:
     1cc:	fe010113          	addi	sp,sp,-32
     1d0:	00812e23          	sw	s0,28(sp)
     1d4:	02010413          	addi	s0,sp,32
     1d8:	fea42623          	sw	a0,-20(s0)
     1dc:	fec42703          	lw	a4,-20(s0)
     1e0:	00100793          	addi	a5,zero,1
     1e4:	02f70a63          	beq	a4,a5,218 <platypus_stdout_error_to_str+0x4c>
     1e8:	fec42783          	lw	a5,-20(s0)
     1ec:	02078063          	beq	a5,zero,20c <platypus_stdout_error_to_str+0x40>
     1f0:	fec42703          	lw	a4,-20(s0)
     1f4:	00200793          	addi	a5,zero,2
     1f8:	02f70663          	beq	a4,a5,224 <platypus_stdout_error_to_str+0x58>
     1fc:	fec42703          	lw	a4,-20(s0)
     200:	00300793          	addi	a5,zero,3
     204:	02f70663          	beq	a4,a5,230 <platypus_stdout_error_to_str+0x64>
     208:	0340006f          	jal	zero,23c <platypus_stdout_error_to_str+0x70>
     20c:	000117b7          	lui	a5,0x11
     210:	13078793          	addi	a5,a5,304 # 11130 <etext+0x4>
     214:	0300006f          	jal	zero,244 <platypus_stdout_error_to_str+0x78>
     218:	000117b7          	lui	a5,0x11
     21c:	13878793          	addi	a5,a5,312 # 11138 <etext+0xc>
     220:	0240006f          	jal	zero,244 <platypus_stdout_error_to_str+0x78>
     224:	000117b7          	lui	a5,0x11
     228:	14078793          	addi	a5,a5,320 # 11140 <etext+0x14>
     22c:	0180006f          	jal	zero,244 <platypus_stdout_error_to_str+0x78>
     230:	000117b7          	lui	a5,0x11
     234:	15478793          	addi	a5,a5,340 # 11154 <etext+0x28>
     238:	00c0006f          	jal	zero,244 <platypus_stdout_error_to_str+0x78>
     23c:	000117b7          	lui	a5,0x11
     240:	16478793          	addi	a5,a5,356 # 11164 <etext+0x38>
     244:	00078513          	addi	a0,a5,0
     248:	01c12403          	lw	s0,28(sp)
     24c:	02010113          	addi	sp,sp,32
     250:	00008067          	jalr	zero,0(ra)

00000254 <platypus_syscall_write_stdout>:
     254:	fd010113          	addi	sp,sp,-48
     258:	02112623          	sw	ra,44(sp)
     25c:	02812423          	sw	s0,40(sp)
     260:	03010413          	addi	s0,sp,48
     264:	fca42e23          	sw	a0,-36(s0)
     268:	fcb42c23          	sw	a1,-40(s0)
     26c:	fd842783          	lw	a5,-40(s0)
     270:	00f04663          	blt	zero,a5,27c <platypus_syscall_write_stdout+0x28>
     274:	00000793          	addi	a5,zero,0
     278:	08c0006f          	jal	zero,304 <platypus_syscall_write_stdout+0xb0>
     27c:	fd842703          	lw	a4,-40(s0)
     280:	00100793          	addi	a5,zero,1
     284:	00f71e63          	bne	a4,a5,2a0 <platypus_syscall_write_stdout+0x4c>
     288:	010007b7          	lui	a5,0x1000
     28c:	fdc42703          	lw	a4,-36(s0)
     290:	00074703          	lbu	a4,0(a4)
     294:	00e78023          	sb	a4,0(a5) # 1000000 <__heap_top+0xf00000>
     298:	00100793          	addi	a5,zero,1
     29c:	0680006f          	jal	zero,304 <platypus_syscall_write_stdout+0xb0>
     2a0:	010007b7          	lui	a5,0x1000
     2a4:	fdc42703          	lw	a4,-36(s0)
     2a8:	00e7a223          	sw	a4,4(a5) # 1000004 <__heap_top+0xf00004>
     2ac:	010007b7          	lui	a5,0x1000
     2b0:	fd842703          	lw	a4,-40(s0)
     2b4:	00e7a423          	sw	a4,8(a5) # 1000008 <__heap_top+0xf00008>
     2b8:	010007b7          	lui	a5,0x1000
     2bc:	00c7a783          	lw	a5,12(a5) # 100000c <__heap_top+0xf0000c>
     2c0:	fef42623          	sw	a5,-20(s0)
     2c4:	fec42783          	lw	a5,-20(s0)
     2c8:	02078c63          	beq	a5,zero,300 <platypus_syscall_write_stdout+0xac>
     2cc:	000117b7          	lui	a5,0x11
     2d0:	18478513          	addi	a0,a5,388 # 11184 <etext+0x58>
     2d4:	ea5ff0ef          	jal	ra,178 <emu_puts>
     2d8:	fec42503          	lw	a0,-20(s0)
     2dc:	ef1ff0ef          	jal	ra,1cc <platypus_stdout_error_to_str>
     2e0:	00050793          	addi	a5,a0,0
     2e4:	00078513          	addi	a0,a5,0
     2e8:	e91ff0ef          	jal	ra,178 <emu_puts>
     2ec:	000117b7          	lui	a5,0x11
     2f0:	1a478513          	addi	a0,a5,420 # 111a4 <etext+0x78>
     2f4:	e85ff0ef          	jal	ra,178 <emu_puts>
     2f8:	fff00793          	addi	a5,zero,-1
     2fc:	0080006f          	jal	zero,304 <platypus_syscall_write_stdout+0xb0>
     300:	fd842783          	lw	a5,-40(s0)
     304:	00078513          	addi	a0,a5,0
     308:	02c12083          	lw	ra,44(sp)
     30c:	02812403          	lw	s0,40(sp)
     310:	03010113          	addi	sp,sp,48
     314:	00008067          	jalr	zero,0(ra)

00000318 <emu_print_hex>:
     318:	fd010113          	addi	sp,sp,-48
     31c:	02112623          	sw	ra,44(sp)
     320:	02812423          	sw	s0,40(sp)
     324:	03010413          	addi	s0,sp,48
     328:	fca42e23          	sw	a0,-36(s0)
     32c:	03000513          	addi	a0,zero,48
     330:	e19ff0ef          	jal	ra,148 <emu_putc>
     334:	07800513          	addi	a0,zero,120
     338:	e11ff0ef          	jal	ra,148 <emu_putc>
     33c:	00700793          	addi	a5,zero,7
     340:	fef42623          	sw	a5,-20(s0)
     344:	0600006f          	jal	zero,3a4 <emu_print_hex+0x8c>
     348:	fec42783          	lw	a5,-20(s0)
     34c:	00279793          	slli	a5,a5,0x2
     350:	fdc42703          	lw	a4,-36(s0)
     354:	40f757b3          	sra	a5,a4,a5
     358:	00f7f793          	andi	a5,a5,15
     35c:	fef42423          	sw	a5,-24(s0)
     360:	fe842703          	lw	a4,-24(s0)
     364:	00900793          	addi	a5,zero,9
     368:	00e7da63          	bge	a5,a4,37c <emu_print_hex+0x64>
     36c:	fe842783          	lw	a5,-24(s0)
     370:	05778793          	addi	a5,a5,87
     374:	fef42423          	sw	a5,-24(s0)
     378:	0100006f          	jal	zero,388 <emu_print_hex+0x70>
     37c:	fe842783          	lw	a5,-24(s0)
     380:	03078793          	addi	a5,a5,48
     384:	fef42423          	sw	a5,-24(s0)
     388:	fe842783          	lw	a5,-24(s0)
     38c:	0ff7f793          	andi	a5,a5,255
     390:	00078513          	addi	a0,a5,0
     394:	db5ff0ef          	jal	ra,148 <emu_putc>
     398:	fec42783          	lw	a5,-20(s0)
     39c:	fff78793          	addi	a5,a5,-1
     3a0:	fef42623          	sw	a5,-20(s0)
     3a4:	fec42783          	lw	a5,-20(s0)
     3a8:	fa07d0e3          	bge	a5,zero,348 <emu_print_hex+0x30>
     3ac:	00000013          	addi	zero,zero,0
     3b0:	02c12083          	lw	ra,44(sp)
     3b4:	02812403          	lw	s0,40(sp)
     3b8:	03010113          	addi	sp,sp,48
     3bc:	00008067          	jalr	zero,0(ra)

000003c0 <emu_print_uint>:
     3c0:	fc010113          	addi	sp,sp,-64
     3c4:	02112e23          	sw	ra,60(sp)
     3c8:	02812c23          	sw	s0,56(sp)
     3cc:	04010413          	addi	s0,sp,64
     3d0:	fca42623          	sw	a0,-52(s0)
     3d4:	fe042623          	sw	zero,-20(s0)
     3d8:	0240006f          	jal	zero,3fc <emu_print_uint+0x3c>
     3dc:	fec42783          	lw	a5,-20(s0)
     3e0:	ff040713          	addi	a4,s0,-16
     3e4:	00f707b3          	add	a5,a4,a5
     3e8:	03000713          	addi	a4,zero,48
     3ec:	fee78623          	sb	a4,-20(a5)
     3f0:	fec42783          	lw	a5,-20(s0)
     3f4:	00178793          	addi	a5,a5,1
     3f8:	fef42623          	sw	a5,-20(s0)
     3fc:	fec42703          	lw	a4,-20(s0)
     400:	00900793          	addi	a5,zero,9
     404:	fce7dce3          	bge	a5,a4,3dc <emu_print_uint+0x1c>
     408:	fe040323          	sb	zero,-26(s0)
     40c:	00900793          	addi	a5,zero,9
     410:	fef42623          	sw	a5,-20(s0)
     414:	0500006f          	jal	zero,464 <emu_print_uint+0xa4>
     418:	fcc42703          	lw	a4,-52(s0)
     41c:	00a00793          	addi	a5,zero,10
     420:	02f777b3          	remu	a5,a4,a5
     424:	fef42423          	sw	a5,-24(s0)
     428:	fe842783          	lw	a5,-24(s0)
     42c:	0ff7f793          	andi	a5,a5,255
     430:	03078793          	addi	a5,a5,48
     434:	0ff7f713          	andi	a4,a5,255
     438:	fec42783          	lw	a5,-20(s0)
     43c:	ff040693          	addi	a3,s0,-16
     440:	00f687b3          	add	a5,a3,a5
     444:	fee78623          	sb	a4,-20(a5)
     448:	fcc42703          	lw	a4,-52(s0)
     44c:	00a00793          	addi	a5,zero,10
     450:	02f757b3          	divu	a5,a4,a5
     454:	fcf42623          	sw	a5,-52(s0)
     458:	fec42783          	lw	a5,-20(s0)
     45c:	fff78793          	addi	a5,a5,-1
     460:	fef42623          	sw	a5,-20(s0)
     464:	fcc42783          	lw	a5,-52(s0)
     468:	00078663          	beq	a5,zero,474 <emu_print_uint+0xb4>
     46c:	fec42783          	lw	a5,-20(s0)
     470:	fa07d4e3          	bge	a5,zero,418 <emu_print_uint+0x58>
     474:	fec42783          	lw	a5,-20(s0)
     478:	0007d663          	bge	a5,zero,484 <emu_print_uint+0xc4>
     47c:	fe042623          	sw	zero,-20(s0)
     480:	0340006f          	jal	zero,4b4 <emu_print_uint+0xf4>
     484:	fec42783          	lw	a5,-20(s0)
     488:	ff040713          	addi	a4,s0,-16
     48c:	00f707b3          	add	a5,a4,a5
     490:	fec7c703          	lbu	a4,-20(a5)
     494:	03000793          	addi	a5,zero,48
     498:	00f71e63          	bne	a4,a5,4b4 <emu_print_uint+0xf4>
     49c:	fec42703          	lw	a4,-20(s0)
     4a0:	00800793          	addi	a5,zero,8
     4a4:	00e7c863          	blt	a5,a4,4b4 <emu_print_uint+0xf4>
     4a8:	fec42783          	lw	a5,-20(s0)
     4ac:	00178793          	addi	a5,a5,1
     4b0:	fef42623          	sw	a5,-20(s0)
     4b4:	fec42703          	lw	a4,-20(s0)
     4b8:	00900793          	addi	a5,zero,9
     4bc:	00e7d663          	bge	a5,a4,4c8 <emu_print_uint+0x108>
     4c0:	00900793          	addi	a5,zero,9
     4c4:	fef42623          	sw	a5,-20(s0)
     4c8:	fec42783          	lw	a5,-20(s0)
     4cc:	fdc40713          	addi	a4,s0,-36
     4d0:	00f707b3          	add	a5,a4,a5
     4d4:	00078513          	addi	a0,a5,0
     4d8:	ca1ff0ef          	jal	ra,178 <emu_puts>
     4dc:	00000013          	addi	zero,zero,0
     4e0:	03c12083          	lw	ra,60(sp)
     4e4:	03812403          	lw	s0,56(sp)
     4e8:	04010113          	addi	sp,sp,64
     4ec:	00008067          	jalr	zero,0(ra)

000004f0 <emu_print_int>:
     4f0:	fc010113          	addi	sp,sp,-64
     4f4:	02112e23          	sw	ra,60(sp)
     4f8:	02812c23          	sw	s0,56(sp)
     4fc:	04010413          	addi	s0,sp,64
     500:	fca42623          	sw	a0,-52(s0)
     504:	fe042423          	sw	zero,-24(s0)
     508:	fcc42783          	lw	a5,-52(s0)
     50c:	0007dc63          	bge	a5,zero,524 <emu_print_int+0x34>
     510:	fcc42783          	lw	a5,-52(s0)
     514:	40f007b3          	sub	a5,zero,a5
     518:	fcf42623          	sw	a5,-52(s0)
     51c:	00100793          	addi	a5,zero,1
     520:	fef42423          	sw	a5,-24(s0)
     524:	fe042623          	sw	zero,-20(s0)
     528:	0240006f          	jal	zero,54c <emu_print_int+0x5c>
     52c:	fec42783          	lw	a5,-20(s0)
     530:	ff040713          	addi	a4,s0,-16
     534:	00f707b3          	add	a5,a4,a5
     538:	03000713          	addi	a4,zero,48
     53c:	fee78423          	sb	a4,-24(a5)
     540:	fec42783          	lw	a5,-20(s0)
     544:	00178793          	addi	a5,a5,1
     548:	fef42623          	sw	a5,-20(s0)
     54c:	fec42703          	lw	a4,-20(s0)
     550:	00900793          	addi	a5,zero,9
     554:	fce7dce3          	bge	a5,a4,52c <emu_print_int+0x3c>
     558:	fe040123          	sb	zero,-30(s0)
     55c:	00900793          	addi	a5,zero,9
     560:	fef42623          	sw	a5,-20(s0)
     564:	0500006f          	jal	zero,5b4 <emu_print_int+0xc4>
     568:	fcc42703          	lw	a4,-52(s0)
     56c:	00a00793          	addi	a5,zero,10
     570:	02f767b3          	rem	a5,a4,a5
     574:	fef42223          	sw	a5,-28(s0)
     578:	fe442783          	lw	a5,-28(s0)
     57c:	0ff7f793          	andi	a5,a5,255
     580:	03078793          	addi	a5,a5,48
     584:	0ff7f713          	andi	a4,a5,255
     588:	fec42783          	lw	a5,-20(s0)
     58c:	ff040693          	addi	a3,s0,-16
     590:	00f687b3          	add	a5,a3,a5
     594:	fee78423          	sb	a4,-24(a5)
     598:	fcc42703          	lw	a4,-52(s0)
     59c:	00a00793          	addi	a5,zero,10
     5a0:	02f747b3          	div	a5,a4,a5
     5a4:	fcf42623          	sw	a5,-52(s0)
     5a8:	fec42783          	lw	a5,-20(s0)
     5ac:	fff78793          	addi	a5,a5,-1
     5b0:	fef42623          	sw	a5,-20(s0)
     5b4:	fcc42783          	lw	a5,-52(s0)
     5b8:	00078663          	beq	a5,zero,5c4 <emu_print_int+0xd4>
     5bc:	fec42783          	lw	a5,-20(s0)
     5c0:	fa07d4e3          	bge	a5,zero,568 <emu_print_int+0x78>
     5c4:	fec42783          	lw	a5,-20(s0)
     5c8:	0007d663          	bge	a5,zero,5d4 <emu_print_int+0xe4>
     5cc:	fe042623          	sw	zero,-20(s0)
     5d0:	0340006f          	jal	zero,604 <emu_print_int+0x114>
     5d4:	fec42783          	lw	a5,-20(s0)
     5d8:	ff040713          	addi	a4,s0,-16
     5dc:	00f707b3          	add	a5,a4,a5
     5e0:	fe87c703          	lbu	a4,-24(a5)
     5e4:	03000793          	addi	a5,zero,48
     5e8:	00f71e63          	bne	a4,a5,604 <emu_print_int+0x114>
     5ec:	fec42703          	lw	a4,-20(s0)
     5f0:	00800793          	addi	a5,zero,8
     5f4:	00e7c863          	blt	a5,a4,604 <emu_print_int+0x114>
     5f8:	fec42783          	lw	a5,-20(s0)
     5fc:	00178793          	addi	a5,a5,1
     600:	fef42623          	sw	a5,-20(s0)
     604:	fec42703          	lw	a4,-20(s0)
     608:	00900793          	addi	a5,zero,9
     60c:	00e7d663          	bge	a5,a4,618 <emu_print_int+0x128>
     610:	00900793          	addi	a5,zero,9
     614:	fef42623          	sw	a5,-20(s0)
     618:	fe842783          	lw	a5,-24(s0)
     61c:	00078663          	beq	a5,zero,628 <emu_print_int+0x138>
     620:	02d00513          	addi	a0,zero,45
     624:	b25ff0ef          	jal	ra,148 <emu_putc>
     628:	fec42783          	lw	a5,-20(s0)
     62c:	fd840713          	addi	a4,s0,-40
     630:	00f707b3          	add	a5,a4,a5
     634:	00078513          	addi	a0,a5,0
     638:	b41ff0ef          	jal	ra,178 <emu_puts>
     63c:	00000013          	addi	zero,zero,0
     640:	03c12083          	lw	ra,60(sp)
     644:	03812403          	lw	s0,56(sp)
     648:	04010113          	addi	sp,sp,64
     64c:	00008067          	jalr	zero,0(ra)

00000650 <display_program_info>:
     650:	fd010113          	addi	sp,sp,-48
     654:	02112623          	sw	ra,44(sp)
     658:	02812423          	sw	s0,40(sp)
     65c:	03010413          	addi	s0,sp,48
     660:	00000793          	addi	a5,zero,0
     664:	fef42623          	sw	a5,-20(s0)
     668:	000117b7          	lui	a5,0x11
     66c:	12c78793          	addi	a5,a5,300 # 1112c <etext>
     670:	fef42423          	sw	a5,-24(s0)
     674:	1d018793          	addi	a5,gp,464 # 12a80 <_edata>
     678:	fef42223          	sw	a5,-28(s0)
     67c:	22c18793          	addi	a5,gp,556 # 12adc <__BSS_END__>
     680:	fef42023          	sw	a5,-32(s0)
     684:	001007b7          	lui	a5,0x100
     688:	00078793          	addi	a5,a5,0 # 100000 <__heap_top>
     68c:	fcf42e23          	sw	a5,-36(s0)
     690:	001007b7          	lui	a5,0x100
     694:	00078793          	addi	a5,a5,0 # 100000 <__heap_top>
     698:	fcf42c23          	sw	a5,-40(s0)
     69c:	000117b7          	lui	a5,0x11
     6a0:	1ac78513          	addi	a0,a5,428 # 111ac <etext+0x80>
     6a4:	7f8000ef          	jal	ra,e9c <puts>
     6a8:	fe842703          	lw	a4,-24(s0)
     6ac:	fec42783          	lw	a5,-20(s0)
     6b0:	40f707b3          	sub	a5,a4,a5
     6b4:	00078613          	addi	a2,a5,0
     6b8:	fec42583          	lw	a1,-20(s0)
     6bc:	000117b7          	lui	a5,0x11
     6c0:	1dc78513          	addi	a0,a5,476 # 111dc <etext+0xb0>
     6c4:	6c0000ef          	jal	ra,d84 <printf>
     6c8:	fe442703          	lw	a4,-28(s0)
     6cc:	fe842783          	lw	a5,-24(s0)
     6d0:	40f707b3          	sub	a5,a4,a5
     6d4:	00078613          	addi	a2,a5,0
     6d8:	fe842583          	lw	a1,-24(s0)
     6dc:	000117b7          	lui	a5,0x11
     6e0:	1fc78513          	addi	a0,a5,508 # 111fc <etext+0xd0>
     6e4:	6a0000ef          	jal	ra,d84 <printf>
     6e8:	fe042703          	lw	a4,-32(s0)
     6ec:	fe442783          	lw	a5,-28(s0)
     6f0:	40f707b3          	sub	a5,a4,a5
     6f4:	00078613          	addi	a2,a5,0
     6f8:	fe442583          	lw	a1,-28(s0)
     6fc:	000117b7          	lui	a5,0x11
     700:	21c78513          	addi	a0,a5,540 # 1121c <etext+0xf0>
     704:	680000ef          	jal	ra,d84 <printf>
     708:	fdc42703          	lw	a4,-36(s0)
     70c:	fe042783          	lw	a5,-32(s0)
     710:	40f707b3          	sub	a5,a4,a5
     714:	00078613          	addi	a2,a5,0
     718:	fe042583          	lw	a1,-32(s0)
     71c:	000117b7          	lui	a5,0x11
     720:	23c78513          	addi	a0,a5,572 # 1123c <etext+0x110>
     724:	660000ef          	jal	ra,d84 <printf>
     728:	fdc42583          	lw	a1,-36(s0)
     72c:	000117b7          	lui	a5,0x11
     730:	26078513          	addi	a0,a5,608 # 11260 <etext+0x134>
     734:	650000ef          	jal	ra,d84 <printf>
     738:	fd842583          	lw	a1,-40(s0)
     73c:	000117b7          	lui	a5,0x11
     740:	27478513          	addi	a0,a5,628 # 11274 <etext+0x148>
     744:	640000ef          	jal	ra,d84 <printf>
     748:	000117b7          	lui	a5,0x11
     74c:	1ac78513          	addi	a0,a5,428 # 111ac <etext+0x80>
     750:	74c000ef          	jal	ra,e9c <puts>
     754:	00000013          	addi	zero,zero,0
     758:	02c12083          	lw	ra,44(sp)
     75c:	02812403          	lw	s0,40(sp)
     760:	03010113          	addi	sp,sp,48
     764:	00008067          	jalr	zero,0(ra)

00000768 <sumofint>:
     768:	fd010113          	addi	sp,sp,-48
     76c:	02812623          	sw	s0,44(sp)
     770:	03010413          	addi	s0,sp,48
     774:	fca42e23          	sw	a0,-36(s0)
     778:	fe042623          	sw	zero,-20(s0)
     77c:	00100793          	addi	a5,zero,1
     780:	fef42423          	sw	a5,-24(s0)
     784:	0200006f          	jal	zero,7a4 <sumofint+0x3c>
     788:	fec42703          	lw	a4,-20(s0)
     78c:	fe842783          	lw	a5,-24(s0)
     790:	00f707b3          	add	a5,a4,a5
     794:	fef42623          	sw	a5,-20(s0)
     798:	fe842783          	lw	a5,-24(s0)
     79c:	00178793          	addi	a5,a5,1
     7a0:	fef42423          	sw	a5,-24(s0)
     7a4:	fe842703          	lw	a4,-24(s0)
     7a8:	fdc42783          	lw	a5,-36(s0)
     7ac:	fcf74ee3          	blt	a4,a5,788 <sumofint+0x20>
     7b0:	fec42783          	lw	a5,-20(s0)
     7b4:	00078513          	addi	a0,a5,0
     7b8:	02c12403          	lw	s0,44(sp)
     7bc:	03010113          	addi	sp,sp,48
     7c0:	00008067          	jalr	zero,0(ra)

000007c4 <main>:
     7c4:	fe010113          	addi	sp,sp,-32
     7c8:	00112e23          	sw	ra,28(sp)
     7cc:	00812c23          	sw	s0,24(sp)
     7d0:	02010413          	addi	s0,sp,32
     7d4:	e7dff0ef          	jal	ra,650 <display_program_info>
     7d8:	00600793          	addi	a5,zero,6
     7dc:	fef42623          	sw	a5,-20(s0)
     7e0:	fec42503          	lw	a0,-20(s0)
     7e4:	f85ff0ef          	jal	ra,768 <sumofint>
     7e8:	fea42423          	sw	a0,-24(s0)
     7ec:	000117b7          	lui	a5,0x11
     7f0:	28878513          	addi	a0,a5,648 # 11288 <etext+0x15c>
     7f4:	985ff0ef          	jal	ra,178 <emu_puts>
     7f8:	fe842783          	lw	a5,-24(s0)
     7fc:	00078513          	addi	a0,a5,0
     800:	01c12083          	lw	ra,28(sp)
     804:	01812403          	lw	s0,24(sp)
     808:	02010113          	addi	sp,sp,32
     80c:	00008067          	jalr	zero,0(ra)

00000810 <my_brk>:
     810:	fe010113          	addi	sp,sp,-32
     814:	00112e23          	sw	ra,28(sp)
     818:	00812c23          	sw	s0,24(sp)
     81c:	02010413          	addi	s0,sp,32
     820:	fea42623          	sw	a0,-20(s0)
     824:	001007b7          	lui	a5,0x100
     828:	00078793          	addi	a5,a5,0 # 100000 <__heap_top>
     82c:	fec42703          	lw	a4,-20(s0)
     830:	00e7f663          	bgeu	a5,a4,83c <my_brk+0x2c>
     834:	fff00793          	addi	a5,zero,-1
     838:	0780006f          	jal	zero,8b0 <my_brk+0xa0>
     83c:	000117b7          	lui	a5,0x11
     840:	2a478513          	addi	a0,a5,676 # 112a4 <etext+0x178>
     844:	935ff0ef          	jal	ra,178 <emu_puts>
     848:	1c01a783          	lw	a5,448(gp) # 12a70 <my_break.3424>
     84c:	00078513          	addi	a0,a5,0
     850:	ac9ff0ef          	jal	ra,318 <emu_print_hex>
     854:	000117b7          	lui	a5,0x11
     858:	2b478513          	addi	a0,a5,692 # 112b4 <etext+0x188>
     85c:	91dff0ef          	jal	ra,178 <emu_puts>
     860:	fec42783          	lw	a5,-20(s0)
     864:	00078513          	addi	a0,a5,0
     868:	ab1ff0ef          	jal	ra,318 <emu_print_hex>
     86c:	000117b7          	lui	a5,0x11
     870:	2bc78513          	addi	a0,a5,700 # 112bc <etext+0x190>
     874:	905ff0ef          	jal	ra,178 <emu_puts>
     878:	fec42783          	lw	a5,-20(s0)
     87c:	1c01a703          	lw	a4,448(gp) # 12a70 <my_break.3424>
     880:	40e787b3          	sub	a5,a5,a4
     884:	00078513          	addi	a0,a5,0
     888:	c69ff0ef          	jal	ra,4f0 <emu_print_int>
     88c:	000117b7          	lui	a5,0x11
     890:	1a478513          	addi	a0,a5,420 # 111a4 <etext+0x78>
     894:	8e5ff0ef          	jal	ra,178 <emu_puts>
     898:	22c18793          	addi	a5,gp,556 # 12adc <__BSS_END__>
     89c:	fec42703          	lw	a4,-20(s0)
     8a0:	00f76663          	bltu	a4,a5,8ac <my_brk+0x9c>
     8a4:	fec42703          	lw	a4,-20(s0)
     8a8:	1ce1a023          	sw	a4,448(gp) # 12a70 <my_break.3424>
     8ac:	1c01a783          	lw	a5,448(gp) # 12a70 <my_break.3424>
     8b0:	00078513          	addi	a0,a5,0
     8b4:	01c12083          	lw	ra,28(sp)
     8b8:	01812403          	lw	s0,24(sp)
     8bc:	02010113          	addi	sp,sp,32
     8c0:	00008067          	jalr	zero,0(ra)

000008c4 <emu_gettimeofday>:
     8c4:	fe010113          	addi	sp,sp,-32
     8c8:	00812e23          	sw	s0,28(sp)
     8cc:	02010413          	addi	s0,sp,32
     8d0:	fea42623          	sw	a0,-20(s0)
     8d4:	fec42783          	lw	a5,-20(s0)
     8d8:	00079663          	bne	a5,zero,8e4 <emu_gettimeofday+0x20>
     8dc:	00000793          	addi	a5,zero,0
     8e0:	0380006f          	jal	zero,918 <emu_gettimeofday+0x54>
     8e4:	010007b7          	lui	a5,0x1000
     8e8:	01078793          	addi	a5,a5,16 # 1000010 <__heap_top+0xf00010>
     8ec:	0047a803          	lw	a6,4(a5)
     8f0:	0007a783          	lw	a5,0(a5)
     8f4:	fec42703          	lw	a4,-20(s0)
     8f8:	00f72023          	sw	a5,0(a4)
     8fc:	01072223          	sw	a6,4(a4)
     900:	010007b7          	lui	a5,0x1000
     904:	01078793          	addi	a5,a5,16 # 1000010 <__heap_top+0xf00010>
     908:	0087a703          	lw	a4,8(a5)
     90c:	fec42783          	lw	a5,-20(s0)
     910:	00e7a423          	sw	a4,8(a5)
     914:	00000793          	addi	a5,zero,0
     918:	00078513          	addi	a0,a5,0
     91c:	01c12403          	lw	s0,28(sp)
     920:	02010113          	addi	sp,sp,32
     924:	00008067          	jalr	zero,0(ra)

00000928 <_my_c_syscall_interface>:
     928:	fc010113          	addi	sp,sp,-64
     92c:	02112e23          	sw	ra,60(sp)
     930:	02812c23          	sw	s0,56(sp)
     934:	04010413          	addi	s0,sp,64
     938:	fca42e23          	sw	a0,-36(s0)
     93c:	fcb42c23          	sw	a1,-40(s0)
     940:	fcc42a23          	sw	a2,-44(s0)
     944:	fcd42823          	sw	a3,-48(s0)
     948:	fce42623          	sw	a4,-52(s0)
     94c:	fcf42423          	sw	a5,-56(s0)
     950:	fd042223          	sw	a6,-60(s0)
     954:	fd142023          	sw	a7,-64(s0)
     958:	fff00793          	addi	a5,zero,-1
     95c:	fef42623          	sw	a5,-20(s0)
     960:	fc042703          	lw	a4,-64(s0)
     964:	05000793          	addi	a5,zero,80
     968:	04f70a63          	beq	a4,a5,9bc <_my_c_syscall_interface+0x94>
     96c:	fc042703          	lw	a4,-64(s0)
     970:	05000793          	addi	a5,zero,80
     974:	02e7c063          	blt	a5,a4,994 <_my_c_syscall_interface+0x6c>
     978:	fc042703          	lw	a4,-64(s0)
     97c:	03900793          	addi	a5,zero,57
     980:	10f70c63          	beq	a4,a5,a98 <_my_c_syscall_interface+0x170>
     984:	fc042703          	lw	a4,-64(s0)
     988:	04000793          	addi	a5,zero,64
     98c:	0cf70663          	beq	a4,a5,a58 <_my_c_syscall_interface+0x130>
     990:	15c0006f          	jal	zero,aec <_my_c_syscall_interface+0x1c4>
     994:	fc042703          	lw	a4,-64(s0)
     998:	0a900793          	addi	a5,zero,169
     99c:	04f70e63          	beq	a4,a5,9f8 <_my_c_syscall_interface+0xd0>
     9a0:	fc042703          	lw	a4,-64(s0)
     9a4:	0d600793          	addi	a5,zero,214
     9a8:	06f70263          	beq	a4,a5,a0c <_my_c_syscall_interface+0xe4>
     9ac:	fc042703          	lw	a4,-64(s0)
     9b0:	05d00793          	addi	a5,zero,93
     9b4:	10f70863          	beq	a4,a5,ac4 <_my_c_syscall_interface+0x19c>
     9b8:	1340006f          	jal	zero,aec <_my_c_syscall_interface+0x1c4>
     9bc:	000117b7          	lui	a5,0x11
     9c0:	2c878513          	addi	a0,a5,712 # 112c8 <etext+0x19c>
     9c4:	fb4ff0ef          	jal	ra,178 <emu_puts>
     9c8:	fdc42783          	lw	a5,-36(s0)
     9cc:	00078513          	addi	a0,a5,0
     9d0:	9f1ff0ef          	jal	ra,3c0 <emu_print_uint>
     9d4:	000117b7          	lui	a5,0x11
     9d8:	2e478513          	addi	a0,a5,740 # 112e4 <etext+0x1b8>
     9dc:	f9cff0ef          	jal	ra,178 <emu_puts>
     9e0:	fd842503          	lw	a0,-40(s0)
     9e4:	935ff0ef          	jal	ra,318 <emu_print_hex>
     9e8:	000117b7          	lui	a5,0x11
     9ec:	2f878513          	addi	a0,a5,760 # 112f8 <etext+0x1cc>
     9f0:	f88ff0ef          	jal	ra,178 <emu_puts>
     9f4:	1180006f          	jal	zero,b0c <_my_c_syscall_interface+0x1e4>
     9f8:	fdc42783          	lw	a5,-36(s0)
     9fc:	00078513          	addi	a0,a5,0
     a00:	ec5ff0ef          	jal	ra,8c4 <emu_gettimeofday>
     a04:	fea42623          	sw	a0,-20(s0)
     a08:	1040006f          	jal	zero,b0c <_my_c_syscall_interface+0x1e4>
     a0c:	fdc42783          	lw	a5,-36(s0)
     a10:	00078513          	addi	a0,a5,0
     a14:	dfdff0ef          	jal	ra,810 <my_brk>
     a18:	00050793          	addi	a5,a0,0
     a1c:	fef42623          	sw	a5,-20(s0)
     a20:	000117b7          	lui	a5,0x11
     a24:	30078513          	addi	a0,a5,768 # 11300 <etext+0x1d4>
     a28:	f50ff0ef          	jal	ra,178 <emu_puts>
     a2c:	fdc42503          	lw	a0,-36(s0)
     a30:	8e9ff0ef          	jal	ra,318 <emu_print_hex>
     a34:	000117b7          	lui	a5,0x11
     a38:	32078513          	addi	a0,a5,800 # 11320 <etext+0x1f4>
     a3c:	f3cff0ef          	jal	ra,178 <emu_puts>
     a40:	fec42503          	lw	a0,-20(s0)
     a44:	8d5ff0ef          	jal	ra,318 <emu_print_hex>
     a48:	000117b7          	lui	a5,0x11
     a4c:	1a478513          	addi	a0,a5,420 # 111a4 <etext+0x78>
     a50:	f28ff0ef          	jal	ra,178 <emu_puts>
     a54:	0b80006f          	jal	zero,b0c <_my_c_syscall_interface+0x1e4>
     a58:	fdc42703          	lw	a4,-36(s0)
     a5c:	00100793          	addi	a5,zero,1
     a60:	00f70863          	beq	a4,a5,a70 <_my_c_syscall_interface+0x148>
     a64:	fdc42703          	lw	a4,-36(s0)
     a68:	00200793          	addi	a5,zero,2
     a6c:	02f71063          	bne	a4,a5,a8c <_my_c_syscall_interface+0x164>
     a70:	fd842783          	lw	a5,-40(s0)
     a74:	fd442583          	lw	a1,-44(s0)
     a78:	00078513          	addi	a0,a5,0
     a7c:	fd8ff0ef          	jal	ra,254 <platypus_syscall_write_stdout>
     a80:	fea42623          	sw	a0,-20(s0)
     a84:	00000013          	addi	zero,zero,0
     a88:	0840006f          	jal	zero,b0c <_my_c_syscall_interface+0x1e4>
     a8c:	fff00793          	addi	a5,zero,-1
     a90:	fef42623          	sw	a5,-20(s0)
     a94:	0780006f          	jal	zero,b0c <_my_c_syscall_interface+0x1e4>
     a98:	000117b7          	lui	a5,0x11
     a9c:	32878513          	addi	a0,a5,808 # 11328 <etext+0x1fc>
     aa0:	ed8ff0ef          	jal	ra,178 <emu_puts>
     aa4:	fdc42783          	lw	a5,-36(s0)
     aa8:	00078513          	addi	a0,a5,0
     aac:	915ff0ef          	jal	ra,3c0 <emu_print_uint>
     ab0:	000117b7          	lui	a5,0x11
     ab4:	2f878513          	addi	a0,a5,760 # 112f8 <etext+0x1cc>
     ab8:	ec0ff0ef          	jal	ra,178 <emu_puts>
     abc:	fe042623          	sw	zero,-20(s0)
     ac0:	04c0006f          	jal	zero,b0c <_my_c_syscall_interface+0x1e4>
     ac4:	000117b7          	lui	a5,0x11
     ac8:	34478513          	addi	a0,a5,836 # 11344 <etext+0x218>
     acc:	eacff0ef          	jal	ra,178 <emu_puts>
     ad0:	fdc42503          	lw	a0,-36(s0)
     ad4:	a1dff0ef          	jal	ra,4f0 <emu_print_int>
     ad8:	000117b7          	lui	a5,0x11
     adc:	2f878513          	addi	a0,a5,760 # 112f8 <etext+0x1cc>
     ae0:	e98ff0ef          	jal	ra,178 <emu_puts>
     ae4:	00100073          	ebreak
     ae8:	0240006f          	jal	zero,b0c <_my_c_syscall_interface+0x1e4>
     aec:	000117b7          	lui	a5,0x11
     af0:	36478513          	addi	a0,a5,868 # 11364 <etext+0x238>
     af4:	e84ff0ef          	jal	ra,178 <emu_puts>
     af8:	fc042503          	lw	a0,-64(s0)
     afc:	9f5ff0ef          	jal	ra,4f0 <emu_print_int>
     b00:	000117b7          	lui	a5,0x11
     b04:	38078513          	addi	a0,a5,896 # 11380 <etext+0x254>
     b08:	e70ff0ef          	jal	ra,178 <emu_puts>
     b0c:	fec42783          	lw	a5,-20(s0)
     b10:	00078513          	addi	a0,a5,0
     b14:	03c12083          	lw	ra,60(sp)
     b18:	03812403          	lw	s0,56(sp)
     b1c:	04010113          	addi	sp,sp,64
     b20:	00008067          	jalr	zero,0(ra)

00000b24 <atexit>:
     b24:	00050593          	addi	a1,a0,0
     b28:	00000693          	addi	a3,zero,0
     b2c:	00000613          	addi	a2,zero,0
     b30:	00000513          	addi	a0,zero,0
     b34:	54c0206f          	jal	zero,3080 <__register_exitproc>

00000b38 <exit>:
     b38:	ff010113          	addi	sp,sp,-16
     b3c:	00000593          	addi	a1,zero,0
     b40:	00812423          	sw	s0,8(sp)
     b44:	00112623          	sw	ra,12(sp)
     b48:	00050413          	addi	s0,a0,0
     b4c:	5b4020ef          	jal	ra,3100 <__call_exitprocs>
     b50:	1b818793          	addi	a5,gp,440 # 12a68 <_global_impure_ptr>
     b54:	0007a503          	lw	a0,0(a5)
     b58:	03c52783          	lw	a5,60(a0)
     b5c:	00078463          	beq	a5,zero,b64 <exit+0x2c>
     b60:	000780e7          	jalr	ra,0(a5)
     b64:	00040513          	addi	a0,s0,0
     b68:	4690b0ef          	jal	ra,c7d0 <_exit>

00000b6c <__libc_fini_array>:
     b6c:	ff010113          	addi	sp,sp,-16
     b70:	00011797          	auipc	a5,0x11
     b74:	53878793          	addi	a5,a5,1336 # 120a8 <__init_array_end>
     b78:	00812423          	sw	s0,8(sp)
     b7c:	00011417          	auipc	s0,0x11
     b80:	53040413          	addi	s0,s0,1328 # 120ac <__fini_array_end>
     b84:	40f40433          	sub	s0,s0,a5
     b88:	00912223          	sw	s1,4(sp)
     b8c:	00112623          	sw	ra,12(sp)
     b90:	40245413          	srai	s0,s0,0x2
     b94:	00078493          	addi	s1,a5,0
     b98:	00041c63          	bne	s0,zero,bb0 <__libc_fini_array+0x44>
     b9c:	00812403          	lw	s0,8(sp)
     ba0:	00c12083          	lw	ra,12(sp)
     ba4:	00412483          	lw	s1,4(sp)
     ba8:	01010113          	addi	sp,sp,16
     bac:	cccff06f          	jal	zero,78 <_fini>
     bb0:	fff40413          	addi	s0,s0,-1
     bb4:	00241793          	slli	a5,s0,0x2
     bb8:	00f487b3          	add	a5,s1,a5
     bbc:	0007a783          	lw	a5,0(a5)
     bc0:	000780e7          	jalr	ra,0(a5)
     bc4:	fd5ff06f          	jal	zero,b98 <__libc_fini_array+0x2c>

00000bc8 <__libc_init_array>:
     bc8:	ff010113          	addi	sp,sp,-16
     bcc:	7b418793          	addi	a5,gp,1972 # 13064 <__preinit_array_end>
     bd0:	00812423          	sw	s0,8(sp)
     bd4:	7b418413          	addi	s0,gp,1972 # 13064 <__preinit_array_end>
     bd8:	40f40433          	sub	s0,s0,a5
     bdc:	00912223          	sw	s1,4(sp)
     be0:	01212023          	sw	s2,0(sp)
     be4:	00112623          	sw	ra,12(sp)
     be8:	40245413          	srai	s0,s0,0x2
     bec:	00000493          	addi	s1,zero,0
     bf0:	00078913          	addi	s2,a5,0
     bf4:	04849263          	bne	s1,s0,c38 <__libc_init_array+0x70>
     bf8:	c80ff0ef          	jal	ra,78 <_fini>
     bfc:	00011797          	auipc	a5,0x11
     c00:	4a878793          	addi	a5,a5,1192 # 120a4 <__frame_dummy_init_array_entry>
     c04:	00011417          	auipc	s0,0x11
     c08:	4a440413          	addi	s0,s0,1188 # 120a8 <__init_array_end>
     c0c:	40f40433          	sub	s0,s0,a5
     c10:	40245413          	srai	s0,s0,0x2
     c14:	00000493          	addi	s1,zero,0
     c18:	00078913          	addi	s2,a5,0
     c1c:	02849a63          	bne	s1,s0,c50 <__libc_init_array+0x88>
     c20:	00c12083          	lw	ra,12(sp)
     c24:	00812403          	lw	s0,8(sp)
     c28:	00412483          	lw	s1,4(sp)
     c2c:	00012903          	lw	s2,0(sp)
     c30:	01010113          	addi	sp,sp,16
     c34:	00008067          	jalr	zero,0(ra)
     c38:	00249793          	slli	a5,s1,0x2
     c3c:	00f907b3          	add	a5,s2,a5
     c40:	0007a783          	lw	a5,0(a5)
     c44:	00148493          	addi	s1,s1,1
     c48:	000780e7          	jalr	ra,0(a5)
     c4c:	fa9ff06f          	jal	zero,bf4 <__libc_init_array+0x2c>
     c50:	00249793          	slli	a5,s1,0x2
     c54:	00f907b3          	add	a5,s2,a5
     c58:	0007a783          	lw	a5,0(a5)
     c5c:	00148493          	addi	s1,s1,1
     c60:	000780e7          	jalr	ra,0(a5)
     c64:	fb9ff06f          	jal	zero,c1c <__libc_init_array+0x54>

00000c68 <memset>:
     c68:	00f00313          	addi	t1,zero,15
     c6c:	00050713          	addi	a4,a0,0
     c70:	02c37e63          	bgeu	t1,a2,cac <memset+0x44>
     c74:	00f77793          	andi	a5,a4,15
     c78:	0a079063          	bne	a5,zero,d18 <memset+0xb0>
     c7c:	08059263          	bne	a1,zero,d00 <memset+0x98>
     c80:	ff067693          	andi	a3,a2,-16
     c84:	00f67613          	andi	a2,a2,15
     c88:	00e686b3          	add	a3,a3,a4
     c8c:	00b72023          	sw	a1,0(a4)
     c90:	00b72223          	sw	a1,4(a4)
     c94:	00b72423          	sw	a1,8(a4)
     c98:	00b72623          	sw	a1,12(a4)
     c9c:	01070713          	addi	a4,a4,16
     ca0:	fed766e3          	bltu	a4,a3,c8c <memset+0x24>
     ca4:	00061463          	bne	a2,zero,cac <memset+0x44>
     ca8:	00008067          	jalr	zero,0(ra)
     cac:	40c306b3          	sub	a3,t1,a2
     cb0:	00269693          	slli	a3,a3,0x2
     cb4:	00000297          	auipc	t0,0x0
     cb8:	005686b3          	add	a3,a3,t0
     cbc:	00c68067          	jalr	zero,12(a3)
     cc0:	00b70723          	sb	a1,14(a4)
     cc4:	00b706a3          	sb	a1,13(a4)
     cc8:	00b70623          	sb	a1,12(a4)
     ccc:	00b705a3          	sb	a1,11(a4)
     cd0:	00b70523          	sb	a1,10(a4)
     cd4:	00b704a3          	sb	a1,9(a4)
     cd8:	00b70423          	sb	a1,8(a4)
     cdc:	00b703a3          	sb	a1,7(a4)
     ce0:	00b70323          	sb	a1,6(a4)
     ce4:	00b702a3          	sb	a1,5(a4)
     ce8:	00b70223          	sb	a1,4(a4)
     cec:	00b701a3          	sb	a1,3(a4)
     cf0:	00b70123          	sb	a1,2(a4)
     cf4:	00b700a3          	sb	a1,1(a4)
     cf8:	00b70023          	sb	a1,0(a4)
     cfc:	00008067          	jalr	zero,0(ra)
     d00:	0ff5f593          	andi	a1,a1,255
     d04:	00859693          	slli	a3,a1,0x8
     d08:	00d5e5b3          	or	a1,a1,a3
     d0c:	01059693          	slli	a3,a1,0x10
     d10:	00d5e5b3          	or	a1,a1,a3
     d14:	f6dff06f          	jal	zero,c80 <memset+0x18>
     d18:	00279693          	slli	a3,a5,0x2
     d1c:	00000297          	auipc	t0,0x0
     d20:	005686b3          	add	a3,a3,t0
     d24:	00008293          	addi	t0,ra,0
     d28:	fa0680e7          	jalr	ra,-96(a3)
     d2c:	00028093          	addi	ra,t0,0 # d1c <memset+0xb4>
     d30:	ff078793          	addi	a5,a5,-16
     d34:	40f70733          	sub	a4,a4,a5
     d38:	00f60633          	add	a2,a2,a5
     d3c:	f6c378e3          	bgeu	t1,a2,cac <memset+0x44>
     d40:	f3dff06f          	jal	zero,c7c <memset+0x14>

00000d44 <_printf_r>:
     d44:	fc010113          	addi	sp,sp,-64
     d48:	02c12423          	sw	a2,40(sp)
     d4c:	02d12623          	sw	a3,44(sp)
     d50:	02e12823          	sw	a4,48(sp)
     d54:	02f12a23          	sw	a5,52(sp)
     d58:	03012c23          	sw	a6,56(sp)
     d5c:	03112e23          	sw	a7,60(sp)
     d60:	00058613          	addi	a2,a1,0
     d64:	00852583          	lw	a1,8(a0)
     d68:	02810693          	addi	a3,sp,40
     d6c:	00112e23          	sw	ra,28(sp)
     d70:	00d12623          	sw	a3,12(sp)
     d74:	154000ef          	jal	ra,ec8 <_vfprintf_r>
     d78:	01c12083          	lw	ra,28(sp)
     d7c:	04010113          	addi	sp,sp,64
     d80:	00008067          	jalr	zero,0(ra)

00000d84 <printf>:
     d84:	fc010113          	addi	sp,sp,-64
     d88:	02c12423          	sw	a2,40(sp)
     d8c:	02d12623          	sw	a3,44(sp)
     d90:	02f12a23          	sw	a5,52(sp)
     d94:	02b12223          	sw	a1,36(sp)
     d98:	02e12823          	sw	a4,48(sp)
     d9c:	03012c23          	sw	a6,56(sp)
     da0:	03112e23          	sw	a7,60(sp)
     da4:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
     da8:	0007a783          	lw	a5,0(a5)
     dac:	02410693          	addi	a3,sp,36
     db0:	00050613          	addi	a2,a0,0
     db4:	0087a583          	lw	a1,8(a5)
     db8:	00078513          	addi	a0,a5,0
     dbc:	00112e23          	sw	ra,28(sp)
     dc0:	00d12623          	sw	a3,12(sp)
     dc4:	104000ef          	jal	ra,ec8 <_vfprintf_r>
     dc8:	01c12083          	lw	ra,28(sp)
     dcc:	04010113          	addi	sp,sp,64
     dd0:	00008067          	jalr	zero,0(ra)

00000dd4 <_puts_r>:
     dd4:	fc010113          	addi	sp,sp,-64
     dd8:	02812c23          	sw	s0,56(sp)
     ddc:	00050413          	addi	s0,a0,0
     de0:	00058513          	addi	a0,a1,0
     de4:	00b12623          	sw	a1,12(sp)
     de8:	02112e23          	sw	ra,60(sp)
     dec:	0c0000ef          	jal	ra,eac <strlen>
     df0:	00010797          	auipc	a5,0x10
     df4:	59878793          	addi	a5,a5,1432 # 11388 <etext+0x25c>
     df8:	02f12423          	sw	a5,40(sp)
     dfc:	00100793          	addi	a5,zero,1
     e00:	02f12623          	sw	a5,44(sp)
     e04:	02010793          	addi	a5,sp,32
     e08:	00c12583          	lw	a1,12(sp)
     e0c:	00f12a23          	sw	a5,20(sp)
     e10:	00200793          	addi	a5,zero,2
     e14:	00f12c23          	sw	a5,24(sp)
     e18:	03842783          	lw	a5,56(s0)
     e1c:	02a12223          	sw	a0,36(sp)
     e20:	00150513          	addi	a0,a0,1
     e24:	02b12023          	sw	a1,32(sp)
     e28:	00a12e23          	sw	a0,28(sp)
     e2c:	00842583          	lw	a1,8(s0)
     e30:	00079a63          	bne	a5,zero,e44 <_puts_r+0x70>
     e34:	00040513          	addi	a0,s0,0
     e38:	00b12623          	sw	a1,12(sp)
     e3c:	778020ef          	jal	ra,35b4 <__sinit>
     e40:	00c12583          	lw	a1,12(sp)
     e44:	00c59783          	lh	a5,12(a1)
     e48:	01279713          	slli	a4,a5,0x12
     e4c:	02074263          	blt	a4,zero,e70 <_puts_r+0x9c>
     e50:	000026b7          	lui	a3,0x2
     e54:	0645a703          	lw	a4,100(a1)
     e58:	00d7e7b3          	or	a5,a5,a3
     e5c:	00f59623          	sh	a5,12(a1)
     e60:	ffffe7b7          	lui	a5,0xffffe
     e64:	fff78793          	addi	a5,a5,-1 # ffffdfff <__heap_top+0xffefdfff>
     e68:	00f777b3          	and	a5,a4,a5
     e6c:	06f5a223          	sw	a5,100(a1)
     e70:	01410613          	addi	a2,sp,20
     e74:	00040513          	addi	a0,s0,0
     e78:	449020ef          	jal	ra,3ac0 <__sfvwrite_r>
     e7c:	fff00793          	addi	a5,zero,-1
     e80:	00051463          	bne	a0,zero,e88 <_puts_r+0xb4>
     e84:	00a00793          	addi	a5,zero,10
     e88:	03c12083          	lw	ra,60(sp)
     e8c:	03812403          	lw	s0,56(sp)
     e90:	00078513          	addi	a0,a5,0
     e94:	04010113          	addi	sp,sp,64
     e98:	00008067          	jalr	zero,0(ra)

00000e9c <puts>:
     e9c:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
     ea0:	00050593          	addi	a1,a0,0
     ea4:	0007a503          	lw	a0,0(a5)
     ea8:	f2dff06f          	jal	zero,dd4 <_puts_r>

00000eac <strlen>:
     eac:	00050793          	addi	a5,a0,0
     eb0:	00178793          	addi	a5,a5,1
     eb4:	fff7c703          	lbu	a4,-1(a5)
     eb8:	fe071ce3          	bne	a4,zero,eb0 <strlen+0x4>
     ebc:	40a78533          	sub	a0,a5,a0
     ec0:	fff50513          	addi	a0,a0,-1
     ec4:	00008067          	jalr	zero,0(ra)

00000ec8 <_vfprintf_r>:
     ec8:	e3010113          	addi	sp,sp,-464
     ecc:	1c112623          	sw	ra,460(sp)
     ed0:	1c912223          	sw	s1,452(sp)
     ed4:	1d212023          	sw	s2,448(sp)
     ed8:	1b312e23          	sw	s3,444(sp)
     edc:	1b612823          	sw	s6,432(sp)
     ee0:	00058913          	addi	s2,a1,0
     ee4:	00060493          	addi	s1,a2,0
     ee8:	00068b13          	addi	s6,a3,0 # 2000 <_vfprintf_r+0x1138>
     eec:	1c812423          	sw	s0,456(sp)
     ef0:	1b412c23          	sw	s4,440(sp)
     ef4:	1b512a23          	sw	s5,436(sp)
     ef8:	1b712623          	sw	s7,428(sp)
     efc:	1b812423          	sw	s8,424(sp)
     f00:	1b912223          	sw	s9,420(sp)
     f04:	1ba12023          	sw	s10,416(sp)
     f08:	19b12e23          	sw	s11,412(sp)
     f0c:	00050993          	addi	s3,a0,0
     f10:	0f0050ef          	jal	ra,6000 <_localeconv_r>
     f14:	00052783          	lw	a5,0(a0)
     f18:	00078513          	addi	a0,a5,0
     f1c:	02f12423          	sw	a5,40(sp)
     f20:	f8dff0ef          	jal	ra,eac <strlen>
     f24:	00a12a23          	sw	a0,20(sp)
     f28:	0c012823          	sw	zero,208(sp)
     f2c:	0c012a23          	sw	zero,212(sp)
     f30:	0c012c23          	sw	zero,216(sp)
     f34:	0c012e23          	sw	zero,220(sp)
     f38:	00098a63          	beq	s3,zero,f4c <_vfprintf_r+0x84>
     f3c:	0389a783          	lw	a5,56(s3)
     f40:	00079663          	bne	a5,zero,f4c <_vfprintf_r+0x84>
     f44:	00098513          	addi	a0,s3,0
     f48:	66c020ef          	jal	ra,35b4 <__sinit>
     f4c:	00c91783          	lh	a5,12(s2)
     f50:	01279713          	slli	a4,a5,0x12
     f54:	02074263          	blt	a4,zero,f78 <_vfprintf_r+0xb0>
     f58:	000026b7          	lui	a3,0x2
     f5c:	06492703          	lw	a4,100(s2)
     f60:	00d7e7b3          	or	a5,a5,a3
     f64:	00f91623          	sh	a5,12(s2)
     f68:	ffffe7b7          	lui	a5,0xffffe
     f6c:	fff78793          	addi	a5,a5,-1 # ffffdfff <__heap_top+0xffefdfff>
     f70:	00f777b3          	and	a5,a4,a5
     f74:	06f92223          	sw	a5,100(s2)
     f78:	00c95783          	lhu	a5,12(s2)
     f7c:	0087f793          	andi	a5,a5,8
     f80:	04078063          	beq	a5,zero,fc0 <_vfprintf_r+0xf8>
     f84:	01092783          	lw	a5,16(s2)
     f88:	02078c63          	beq	a5,zero,fc0 <_vfprintf_r+0xf8>
     f8c:	00c95783          	lhu	a5,12(s2)
     f90:	00a00713          	addi	a4,zero,10
     f94:	01a7f793          	andi	a5,a5,26
     f98:	08e79063          	bne	a5,a4,1018 <_vfprintf_r+0x150>
     f9c:	00e91783          	lh	a5,14(s2)
     fa0:	0607cc63          	blt	a5,zero,1018 <_vfprintf_r+0x150>
     fa4:	000b0693          	addi	a3,s6,0
     fa8:	00048613          	addi	a2,s1,0
     fac:	00090593          	addi	a1,s2,0
     fb0:	00098513          	addi	a0,s3,0
     fb4:	6d9010ef          	jal	ra,2e8c <__sbprintf>
     fb8:	00a12c23          	sw	a0,24(sp)
     fbc:	01c0006f          	jal	zero,fd8 <_vfprintf_r+0x110>
     fc0:	00090593          	addi	a1,s2,0
     fc4:	00098513          	addi	a0,s3,0
     fc8:	781010ef          	jal	ra,2f48 <__swsetup_r>
     fcc:	fc0500e3          	beq	a0,zero,f8c <_vfprintf_r+0xc4>
     fd0:	fff00793          	addi	a5,zero,-1
     fd4:	00f12c23          	sw	a5,24(sp)
     fd8:	1cc12083          	lw	ra,460(sp)
     fdc:	1c812403          	lw	s0,456(sp)
     fe0:	01812503          	lw	a0,24(sp)
     fe4:	1c412483          	lw	s1,452(sp)
     fe8:	1c012903          	lw	s2,448(sp)
     fec:	1bc12983          	lw	s3,444(sp)
     ff0:	1b812a03          	lw	s4,440(sp)
     ff4:	1b412a83          	lw	s5,436(sp)
     ff8:	1b012b03          	lw	s6,432(sp)
     ffc:	1ac12b83          	lw	s7,428(sp)
    1000:	1a812c03          	lw	s8,424(sp)
    1004:	1a412c83          	lw	s9,420(sp)
    1008:	1a012d03          	lw	s10,416(sp)
    100c:	19c12d83          	lw	s11,412(sp)
    1010:	1d010113          	addi	sp,sp,464
    1014:	00008067          	jalr	zero,0(ra)
    1018:	0ec10793          	addi	a5,sp,236
    101c:	0cf12223          	sw	a5,196(sp)
    1020:	0c012623          	sw	zero,204(sp)
    1024:	0c012423          	sw	zero,200(sp)
    1028:	00000a13          	addi	s4,zero,0
    102c:	00078c13          	addi	s8,a5,0
    1030:	02012a23          	sw	zero,52(sp)
    1034:	02012823          	sw	zero,48(sp)
    1038:	00012223          	sw	zero,4(sp)
    103c:	02012223          	sw	zero,36(sp)
    1040:	02012623          	sw	zero,44(sp)
    1044:	00012c23          	sw	zero,24(sp)
    1048:	00048413          	addi	s0,s1,0
    104c:	02500713          	addi	a4,zero,37
    1050:	00044783          	lbu	a5,0(s0)
    1054:	00078463          	beq	a5,zero,105c <_vfprintf_r+0x194>
    1058:	0ce79063          	bne	a5,a4,1118 <_vfprintf_r+0x250>
    105c:	40940ab3          	sub	s5,s0,s1
    1060:	040a8a63          	beq	s5,zero,10b4 <_vfprintf_r+0x1ec>
    1064:	0cc12783          	lw	a5,204(sp)
    1068:	009c2023          	sw	s1,0(s8)
    106c:	015c2223          	sw	s5,4(s8)
    1070:	015787b3          	add	a5,a5,s5
    1074:	0cf12623          	sw	a5,204(sp)
    1078:	0c812783          	lw	a5,200(sp)
    107c:	00700713          	addi	a4,zero,7
    1080:	008c0c13          	addi	s8,s8,8
    1084:	00178793          	addi	a5,a5,1
    1088:	0cf12423          	sw	a5,200(sp)
    108c:	00f75e63          	bge	a4,a5,10a8 <_vfprintf_r+0x1e0>
    1090:	0c410613          	addi	a2,sp,196
    1094:	00090593          	addi	a1,s2,0
    1098:	00098513          	addi	a0,s3,0
    109c:	220090ef          	jal	ra,a2bc <__sprint_r>
    10a0:	70051a63          	bne	a0,zero,17b4 <_vfprintf_r+0x8ec>
    10a4:	0ec10c13          	addi	s8,sp,236
    10a8:	01812783          	lw	a5,24(sp)
    10ac:	015787b3          	add	a5,a5,s5
    10b0:	00f12c23          	sw	a5,24(sp)
    10b4:	00044783          	lbu	a5,0(s0)
    10b8:	00079463          	bne	a5,zero,10c0 <_vfprintf_r+0x1f8>
    10bc:	5750106f          	jal	zero,2e30 <_vfprintf_r+0x1f68>
    10c0:	00140793          	addi	a5,s0,1
    10c4:	0a0103a3          	sb	zero,167(sp)
    10c8:	fff00d93          	addi	s11,zero,-1
    10cc:	00012e23          	sw	zero,28(sp)
    10d0:	00000413          	addi	s0,zero,0
    10d4:	00a00b93          	addi	s7,zero,10
    10d8:	00900d13          	addi	s10,zero,9
    10dc:	02a00c93          	addi	s9,zero,42
    10e0:	0007ca83          	lbu	s5,0(a5)
    10e4:	00178713          	addi	a4,a5,1
    10e8:	00e12823          	sw	a4,16(sp)
    10ec:	05a00693          	addi	a3,zero,90
    10f0:	fe0a8793          	addi	a5,s5,-32
    10f4:	00f6f463          	bgeu	a3,a5,10fc <_vfprintf_r+0x234>
    10f8:	2380106f          	jal	zero,2330 <_vfprintf_r+0x1468>
    10fc:	00010717          	auipc	a4,0x10
    1100:	29070713          	addi	a4,a4,656 # 1138c <etext+0x260>
    1104:	00279793          	slli	a5,a5,0x2
    1108:	00e787b3          	add	a5,a5,a4
    110c:	0007a783          	lw	a5,0(a5)
    1110:	00e787b3          	add	a5,a5,a4
    1114:	00078067          	jalr	zero,0(a5)
    1118:	00140413          	addi	s0,s0,1
    111c:	f35ff06f          	jal	zero,1050 <_vfprintf_r+0x188>
    1120:	00098513          	addi	a0,s3,0
    1124:	6dd040ef          	jal	ra,6000 <_localeconv_r>
    1128:	00452783          	lw	a5,4(a0)
    112c:	00078513          	addi	a0,a5,0
    1130:	02f12623          	sw	a5,44(sp)
    1134:	d79ff0ef          	jal	ra,eac <strlen>
    1138:	02a12223          	sw	a0,36(sp)
    113c:	00098513          	addi	a0,s3,0
    1140:	6c1040ef          	jal	ra,6000 <_localeconv_r>
    1144:	00852783          	lw	a5,8(a0)
    1148:	00f12223          	sw	a5,4(sp)
    114c:	02412783          	lw	a5,36(sp)
    1150:	00078c63          	beq	a5,zero,1168 <_vfprintf_r+0x2a0>
    1154:	00412783          	lw	a5,4(sp)
    1158:	00078863          	beq	a5,zero,1168 <_vfprintf_r+0x2a0>
    115c:	0007c783          	lbu	a5,0(a5)
    1160:	00078463          	beq	a5,zero,1168 <_vfprintf_r+0x2a0>
    1164:	40046413          	ori	s0,s0,1024
    1168:	01012783          	lw	a5,16(sp)
    116c:	f75ff06f          	jal	zero,10e0 <_vfprintf_r+0x218>
    1170:	0a714783          	lbu	a5,167(sp)
    1174:	fe079ae3          	bne	a5,zero,1168 <_vfprintf_r+0x2a0>
    1178:	02000793          	addi	a5,zero,32
    117c:	0af103a3          	sb	a5,167(sp)
    1180:	fe9ff06f          	jal	zero,1168 <_vfprintf_r+0x2a0>
    1184:	00146413          	ori	s0,s0,1
    1188:	fe1ff06f          	jal	zero,1168 <_vfprintf_r+0x2a0>
    118c:	000b2783          	lw	a5,0(s6)
    1190:	004b0b13          	addi	s6,s6,4
    1194:	00f12e23          	sw	a5,28(sp)
    1198:	fc07d8e3          	bge	a5,zero,1168 <_vfprintf_r+0x2a0>
    119c:	40f007b3          	sub	a5,zero,a5
    11a0:	00f12e23          	sw	a5,28(sp)
    11a4:	00446413          	ori	s0,s0,4
    11a8:	fc1ff06f          	jal	zero,1168 <_vfprintf_r+0x2a0>
    11ac:	02b00793          	addi	a5,zero,43
    11b0:	fcdff06f          	jal	zero,117c <_vfprintf_r+0x2b4>
    11b4:	01012703          	lw	a4,16(sp)
    11b8:	01012783          	lw	a5,16(sp)
    11bc:	00074a83          	lbu	s5,0(a4)
    11c0:	00178793          	addi	a5,a5,1
    11c4:	059a9063          	bne	s5,s9,1204 <_vfprintf_r+0x33c>
    11c8:	000b2d83          	lw	s11,0(s6)
    11cc:	004b0713          	addi	a4,s6,4
    11d0:	000dd463          	bge	s11,zero,11d8 <_vfprintf_r+0x310>
    11d4:	fff00d93          	addi	s11,zero,-1
    11d8:	00070b13          	addi	s6,a4,0
    11dc:	00f12823          	sw	a5,16(sp)
    11e0:	f89ff06f          	jal	zero,1168 <_vfprintf_r+0x2a0>
    11e4:	037d8333          	mul	t1,s11,s7
    11e8:	00178793          	addi	a5,a5,1
    11ec:	fff7ca83          	lbu	s5,-1(a5)
    11f0:	00e30db3          	add	s11,t1,a4
    11f4:	fd0a8713          	addi	a4,s5,-48
    11f8:	feed76e3          	bgeu	s10,a4,11e4 <_vfprintf_r+0x31c>
    11fc:	00f12823          	sw	a5,16(sp)
    1200:	ef1ff06f          	jal	zero,10f0 <_vfprintf_r+0x228>
    1204:	00000d93          	addi	s11,zero,0
    1208:	fedff06f          	jal	zero,11f4 <_vfprintf_r+0x32c>
    120c:	08046413          	ori	s0,s0,128
    1210:	f59ff06f          	jal	zero,1168 <_vfprintf_r+0x2a0>
    1214:	01012783          	lw	a5,16(sp)
    1218:	00012e23          	sw	zero,28(sp)
    121c:	01c12703          	lw	a4,28(sp)
    1220:	fd0a8a93          	addi	s5,s5,-48
    1224:	00178793          	addi	a5,a5,1
    1228:	03770733          	mul	a4,a4,s7
    122c:	00ea8733          	add	a4,s5,a4
    1230:	fff7ca83          	lbu	s5,-1(a5)
    1234:	00e12e23          	sw	a4,28(sp)
    1238:	fd0a8713          	addi	a4,s5,-48
    123c:	feed70e3          	bgeu	s10,a4,121c <_vfprintf_r+0x354>
    1240:	fbdff06f          	jal	zero,11fc <_vfprintf_r+0x334>
    1244:	00846413          	ori	s0,s0,8
    1248:	f21ff06f          	jal	zero,1168 <_vfprintf_r+0x2a0>
    124c:	01012783          	lw	a5,16(sp)
    1250:	0007c703          	lbu	a4,0(a5)
    1254:	06800793          	addi	a5,zero,104
    1258:	00f71c63          	bne	a4,a5,1270 <_vfprintf_r+0x3a8>
    125c:	01012783          	lw	a5,16(sp)
    1260:	20046413          	ori	s0,s0,512
    1264:	00178793          	addi	a5,a5,1
    1268:	00f12823          	sw	a5,16(sp)
    126c:	efdff06f          	jal	zero,1168 <_vfprintf_r+0x2a0>
    1270:	04046413          	ori	s0,s0,64
    1274:	ef5ff06f          	jal	zero,1168 <_vfprintf_r+0x2a0>
    1278:	01012783          	lw	a5,16(sp)
    127c:	0007c703          	lbu	a4,0(a5)
    1280:	06c00793          	addi	a5,zero,108
    1284:	00f71c63          	bne	a4,a5,129c <_vfprintf_r+0x3d4>
    1288:	01012783          	lw	a5,16(sp)
    128c:	00178793          	addi	a5,a5,1
    1290:	00f12823          	sw	a5,16(sp)
    1294:	02046413          	ori	s0,s0,32
    1298:	ed1ff06f          	jal	zero,1168 <_vfprintf_r+0x2a0>
    129c:	01046413          	ori	s0,s0,16
    12a0:	ec9ff06f          	jal	zero,1168 <_vfprintf_r+0x2a0>
    12a4:	004b0793          	addi	a5,s6,4
    12a8:	00f12623          	sw	a5,12(sp)
    12ac:	000b2783          	lw	a5,0(s6)
    12b0:	0a0103a3          	sb	zero,167(sp)
    12b4:	12f10623          	sb	a5,300(sp)
    12b8:	00000b13          	addi	s6,zero,0
    12bc:	00100d93          	addi	s11,zero,1
    12c0:	00000d13          	addi	s10,zero,0
    12c4:	00012423          	sw	zero,8(sp)
    12c8:	00000b93          	addi	s7,zero,0
    12cc:	00000c93          	addi	s9,zero,0
    12d0:	12c10493          	addi	s1,sp,300
    12d4:	03a12023          	sw	s10,32(sp)
    12d8:	01bd5463          	bge	s10,s11,12e0 <_vfprintf_r+0x418>
    12dc:	03b12023          	sw	s11,32(sp)
    12e0:	0a714703          	lbu	a4,167(sp)
    12e4:	00070863          	beq	a4,zero,12f4 <_vfprintf_r+0x42c>
    12e8:	02012783          	lw	a5,32(sp)
    12ec:	00178793          	addi	a5,a5,1
    12f0:	02f12023          	sw	a5,32(sp)
    12f4:	00247793          	andi	a5,s0,2
    12f8:	02f12c23          	sw	a5,56(sp)
    12fc:	00078863          	beq	a5,zero,130c <_vfprintf_r+0x444>
    1300:	02012783          	lw	a5,32(sp)
    1304:	00278793          	addi	a5,a5,2
    1308:	02f12023          	sw	a5,32(sp)
    130c:	08447793          	andi	a5,s0,132
    1310:	02f12e23          	sw	a5,60(sp)
    1314:	06079c63          	bne	a5,zero,138c <_vfprintf_r+0x4c4>
    1318:	01c12783          	lw	a5,28(sp)
    131c:	02012703          	lw	a4,32(sp)
    1320:	40e78733          	sub	a4,a5,a4
    1324:	06e05463          	bge	zero,a4,138c <_vfprintf_r+0x4c4>
    1328:	01000e93          	addi	t4,zero,16
    132c:	00010e17          	auipc	t3,0x10
    1330:	1cce0e13          	addi	t3,t3,460 # 114f8 <blanks.4513>
    1334:	00700f13          	addi	t5,zero,7
    1338:	0c812683          	lw	a3,200(sp)
    133c:	01cc2023          	sw	t3,0(s8)
    1340:	0cc12603          	lw	a2,204(sp)
    1344:	00168693          	addi	a3,a3,1 # 2001 <_vfprintf_r+0x1139>
    1348:	008c0593          	addi	a1,s8,8
    134c:	00eed463          	bge	t4,a4,1354 <_vfprintf_r+0x48c>
    1350:	7f50006f          	jal	zero,2344 <_vfprintf_r+0x147c>
    1354:	00ec2223          	sw	a4,4(s8)
    1358:	00c70733          	add	a4,a4,a2
    135c:	0ce12623          	sw	a4,204(sp)
    1360:	0cd12423          	sw	a3,200(sp)
    1364:	00700713          	addi	a4,zero,7
    1368:	00058c13          	addi	s8,a1,0
    136c:	02d75063          	bge	a4,a3,138c <_vfprintf_r+0x4c4>
    1370:	0c410613          	addi	a2,sp,196
    1374:	00090593          	addi	a1,s2,0
    1378:	00098513          	addi	a0,s3,0
    137c:	741080ef          	jal	ra,a2bc <__sprint_r>
    1380:	00050463          	beq	a0,zero,1388 <_vfprintf_r+0x4c0>
    1384:	24d0106f          	jal	zero,2dd0 <_vfprintf_r+0x1f08>
    1388:	0ec10c13          	addi	s8,sp,236
    138c:	0a714703          	lbu	a4,167(sp)
    1390:	04070a63          	beq	a4,zero,13e4 <_vfprintf_r+0x51c>
    1394:	0a710713          	addi	a4,sp,167
    1398:	00ec2023          	sw	a4,0(s8)
    139c:	00100713          	addi	a4,zero,1
    13a0:	00ec2223          	sw	a4,4(s8)
    13a4:	0cc12703          	lw	a4,204(sp)
    13a8:	00700693          	addi	a3,zero,7
    13ac:	008c0c13          	addi	s8,s8,8
    13b0:	00170713          	addi	a4,a4,1
    13b4:	0ce12623          	sw	a4,204(sp)
    13b8:	0c812703          	lw	a4,200(sp)
    13bc:	00170713          	addi	a4,a4,1
    13c0:	0ce12423          	sw	a4,200(sp)
    13c4:	02e6d063          	bge	a3,a4,13e4 <_vfprintf_r+0x51c>
    13c8:	0c410613          	addi	a2,sp,196
    13cc:	00090593          	addi	a1,s2,0
    13d0:	00098513          	addi	a0,s3,0
    13d4:	6e9080ef          	jal	ra,a2bc <__sprint_r>
    13d8:	00050463          	beq	a0,zero,13e0 <_vfprintf_r+0x518>
    13dc:	1f50106f          	jal	zero,2dd0 <_vfprintf_r+0x1f08>
    13e0:	0ec10c13          	addi	s8,sp,236
    13e4:	03812783          	lw	a5,56(sp)
    13e8:	04078a63          	beq	a5,zero,143c <_vfprintf_r+0x574>
    13ec:	0a810713          	addi	a4,sp,168
    13f0:	00ec2023          	sw	a4,0(s8)
    13f4:	00200713          	addi	a4,zero,2
    13f8:	00ec2223          	sw	a4,4(s8)
    13fc:	0cc12703          	lw	a4,204(sp)
    1400:	00700693          	addi	a3,zero,7
    1404:	008c0c13          	addi	s8,s8,8
    1408:	00270713          	addi	a4,a4,2
    140c:	0ce12623          	sw	a4,204(sp)
    1410:	0c812703          	lw	a4,200(sp)
    1414:	00170713          	addi	a4,a4,1
    1418:	0ce12423          	sw	a4,200(sp)
    141c:	02e6d063          	bge	a3,a4,143c <_vfprintf_r+0x574>
    1420:	0c410613          	addi	a2,sp,196
    1424:	00090593          	addi	a1,s2,0
    1428:	00098513          	addi	a0,s3,0
    142c:	691080ef          	jal	ra,a2bc <__sprint_r>
    1430:	00050463          	beq	a0,zero,1438 <_vfprintf_r+0x570>
    1434:	19d0106f          	jal	zero,2dd0 <_vfprintf_r+0x1f08>
    1438:	0ec10c13          	addi	s8,sp,236
    143c:	03c12783          	lw	a5,60(sp)
    1440:	08000713          	addi	a4,zero,128
    1444:	06e79a63          	bne	a5,a4,14b8 <_vfprintf_r+0x5f0>
    1448:	01c12783          	lw	a5,28(sp)
    144c:	02012703          	lw	a4,32(sp)
    1450:	40e787b3          	sub	a5,a5,a4
    1454:	06f05263          	bge	zero,a5,14b8 <_vfprintf_r+0x5f0>
    1458:	01000813          	addi	a6,zero,16
    145c:	00700e13          	addi	t3,zero,7
    1460:	0c812703          	lw	a4,200(sp)
    1464:	00010597          	auipc	a1,0x10
    1468:	0a458593          	addi	a1,a1,164 # 11508 <zeroes.4514>
    146c:	00bc2023          	sw	a1,0(s8)
    1470:	0cc12683          	lw	a3,204(sp)
    1474:	00170713          	addi	a4,a4,1
    1478:	008c0613          	addi	a2,s8,8
    147c:	70f84ce3          	blt	a6,a5,2394 <_vfprintf_r+0x14cc>
    1480:	00fc2223          	sw	a5,4(s8)
    1484:	00d787b3          	add	a5,a5,a3
    1488:	0cf12623          	sw	a5,204(sp)
    148c:	0ce12423          	sw	a4,200(sp)
    1490:	00700693          	addi	a3,zero,7
    1494:	00060c13          	addi	s8,a2,0
    1498:	02e6d063          	bge	a3,a4,14b8 <_vfprintf_r+0x5f0>
    149c:	0c410613          	addi	a2,sp,196
    14a0:	00090593          	addi	a1,s2,0
    14a4:	00098513          	addi	a0,s3,0
    14a8:	615080ef          	jal	ra,a2bc <__sprint_r>
    14ac:	00050463          	beq	a0,zero,14b4 <_vfprintf_r+0x5ec>
    14b0:	1210106f          	jal	zero,2dd0 <_vfprintf_r+0x1f08>
    14b4:	0ec10c13          	addi	s8,sp,236
    14b8:	41bd0d33          	sub	s10,s10,s11
    14bc:	07a05263          	bge	zero,s10,1520 <_vfprintf_r+0x658>
    14c0:	01000793          	addi	a5,zero,16
    14c4:	00700813          	addi	a6,zero,7
    14c8:	0c812703          	lw	a4,200(sp)
    14cc:	0cc12683          	lw	a3,204(sp)
    14d0:	008c0613          	addi	a2,s8,8
    14d4:	00170713          	addi	a4,a4,1
    14d8:	71a7c2e3          	blt	a5,s10,23dc <_vfprintf_r+0x1514>
    14dc:	01ac2223          	sw	s10,4(s8)
    14e0:	00010797          	auipc	a5,0x10
    14e4:	02878793          	addi	a5,a5,40 # 11508 <zeroes.4514>
    14e8:	00dd0d33          	add	s10,s10,a3
    14ec:	00fc2023          	sw	a5,0(s8)
    14f0:	0da12623          	sw	s10,204(sp)
    14f4:	0ce12423          	sw	a4,200(sp)
    14f8:	00700693          	addi	a3,zero,7
    14fc:	00060c13          	addi	s8,a2,0
    1500:	02e6d063          	bge	a3,a4,1520 <_vfprintf_r+0x658>
    1504:	0c410613          	addi	a2,sp,196
    1508:	00090593          	addi	a1,s2,0
    150c:	00098513          	addi	a0,s3,0
    1510:	5ad080ef          	jal	ra,a2bc <__sprint_r>
    1514:	00050463          	beq	a0,zero,151c <_vfprintf_r+0x654>
    1518:	0b90106f          	jal	zero,2dd0 <_vfprintf_r+0x1f08>
    151c:	0ec10c13          	addi	s8,sp,236
    1520:	10047713          	andi	a4,s0,256
    1524:	0cc12d03          	lw	s10,204(sp)
    1528:	700710e3          	bne	a4,zero,2428 <_vfprintf_r+0x1560>
    152c:	0c812783          	lw	a5,200(sp)
    1530:	01ad8333          	add	t1,s11,s10
    1534:	009c2023          	sw	s1,0(s8)
    1538:	00178793          	addi	a5,a5,1
    153c:	01bc2223          	sw	s11,4(s8)
    1540:	0c612623          	sw	t1,204(sp)
    1544:	0cf12423          	sw	a5,200(sp)
    1548:	00700713          	addi	a4,zero,7
    154c:	008c0c13          	addi	s8,s8,8
    1550:	00f74463          	blt	a4,a5,1558 <_vfprintf_r+0x690>
    1554:	19c0106f          	jal	zero,26f0 <_vfprintf_r+0x1828>
    1558:	0c410613          	addi	a2,sp,196
    155c:	00090593          	addi	a1,s2,0
    1560:	00098513          	addi	a0,s3,0
    1564:	559080ef          	jal	ra,a2bc <__sprint_r>
    1568:	00050463          	beq	a0,zero,1570 <_vfprintf_r+0x6a8>
    156c:	0650106f          	jal	zero,2dd0 <_vfprintf_r+0x1f08>
    1570:	0ec10c13          	addi	s8,sp,236
    1574:	17c0106f          	jal	zero,26f0 <_vfprintf_r+0x1828>
    1578:	01046413          	ori	s0,s0,16
    157c:	02047793          	andi	a5,s0,32
    1580:	06078463          	beq	a5,zero,15e8 <_vfprintf_r+0x720>
    1584:	007b0b13          	addi	s6,s6,7
    1588:	ff8b7b13          	andi	s6,s6,-8
    158c:	000b2d03          	lw	s10,0(s6)
    1590:	004b2c83          	lw	s9,4(s6)
    1594:	008b0793          	addi	a5,s6,8
    1598:	00f12623          	sw	a5,12(sp)
    159c:	000cc463          	blt	s9,zero,15a4 <_vfprintf_r+0x6dc>
    15a0:	0b10106f          	jal	zero,2e50 <_vfprintf_r+0x1f88>
    15a4:	41a00d33          	sub	s10,zero,s10
    15a8:	01a037b3          	sltu	a5,zero,s10
    15ac:	41900cb3          	sub	s9,zero,s9
    15b0:	40fc8cb3          	sub	s9,s9,a5
    15b4:	02d00793          	addi	a5,zero,45
    15b8:	0af103a3          	sb	a5,167(sp)
    15bc:	00100793          	addi	a5,zero,1
    15c0:	fff00713          	addi	a4,zero,-1
    15c4:	3eed80e3          	beq	s11,a4,21a4 <_vfprintf_r+0x12dc>
    15c8:	00040713          	addi	a4,s0,0
    15cc:	019d66b3          	or	a3,s10,s9
    15d0:	f7f47413          	andi	s0,s0,-129
    15d4:	3c0698e3          	bne	a3,zero,21a4 <_vfprintf_r+0x12dc>
    15d8:	520d8ee3          	beq	s11,zero,2314 <_vfprintf_r+0x144c>
    15dc:	00100713          	addi	a4,zero,1
    15e0:	3ce796e3          	bne	a5,a4,21ac <_vfprintf_r+0x12e4>
    15e4:	0810106f          	jal	zero,2e64 <_vfprintf_r+0x1f9c>
    15e8:	004b0793          	addi	a5,s6,4
    15ec:	00f12623          	sw	a5,12(sp)
    15f0:	01047793          	andi	a5,s0,16
    15f4:	00078863          	beq	a5,zero,1604 <_vfprintf_r+0x73c>
    15f8:	000b2d03          	lw	s10,0(s6)
    15fc:	41fd5c93          	srai	s9,s10,0x1f
    1600:	f9dff06f          	jal	zero,159c <_vfprintf_r+0x6d4>
    1604:	04047793          	andi	a5,s0,64
    1608:	000b2d03          	lw	s10,0(s6)
    160c:	00078863          	beq	a5,zero,161c <_vfprintf_r+0x754>
    1610:	010d1d13          	slli	s10,s10,0x10
    1614:	410d5d13          	srai	s10,s10,0x10
    1618:	fe5ff06f          	jal	zero,15fc <_vfprintf_r+0x734>
    161c:	20047793          	andi	a5,s0,512
    1620:	fc078ee3          	beq	a5,zero,15fc <_vfprintf_r+0x734>
    1624:	018d1d13          	slli	s10,s10,0x18
    1628:	418d5d13          	srai	s10,s10,0x18
    162c:	fd1ff06f          	jal	zero,15fc <_vfprintf_r+0x734>
    1630:	00847793          	andi	a5,s0,8
    1634:	0a078c63          	beq	a5,zero,16ec <_vfprintf_r+0x824>
    1638:	004b0793          	addi	a5,s6,4
    163c:	00f12623          	sw	a5,12(sp)
    1640:	000b2783          	lw	a5,0(s6)
    1644:	0007a603          	lw	a2,0(a5)
    1648:	0047a683          	lw	a3,4(a5)
    164c:	0087a703          	lw	a4,8(a5)
    1650:	00c7a783          	lw	a5,12(a5)
    1654:	0cc12823          	sw	a2,208(sp)
    1658:	0cd12a23          	sw	a3,212(sp)
    165c:	0ce12c23          	sw	a4,216(sp)
    1660:	0d010513          	addi	a0,sp,208
    1664:	0cf12e23          	sw	a5,220(sp)
    1668:	12d040ef          	jal	ra,5f94 <_ldcheck>
    166c:	0aa12623          	sw	a0,172(sp)
    1670:	00200793          	addi	a5,zero,2
    1674:	0af51c63          	bne	a0,a5,172c <_vfprintf_r+0x864>
    1678:	0d012783          	lw	a5,208(sp)
    167c:	08010593          	addi	a1,sp,128
    1680:	09010513          	addi	a0,sp,144
    1684:	08f12823          	sw	a5,144(sp)
    1688:	0d412783          	lw	a5,212(sp)
    168c:	08012023          	sw	zero,128(sp)
    1690:	08012223          	sw	zero,132(sp)
    1694:	08f12a23          	sw	a5,148(sp)
    1698:	0d812783          	lw	a5,216(sp)
    169c:	08012423          	sw	zero,136(sp)
    16a0:	08012623          	sw	zero,140(sp)
    16a4:	08f12c23          	sw	a5,152(sp)
    16a8:	0dc12783          	lw	a5,220(sp)
    16ac:	08f12e23          	sw	a5,156(sp)
    16b0:	3690c0ef          	jal	ra,e218 <__letf2>
    16b4:	00055663          	bge	a0,zero,16c0 <_vfprintf_r+0x7f8>
    16b8:	02d00793          	addi	a5,zero,45
    16bc:	0af103a3          	sb	a5,167(sp)
    16c0:	04700793          	addi	a5,zero,71
    16c4:	00010497          	auipc	s1,0x10
    16c8:	e5448493          	addi	s1,s1,-428 # 11518 <zeroes.4514+0x10>
    16cc:	0157d663          	bge	a5,s5,16d8 <_vfprintf_r+0x810>
    16d0:	00010497          	auipc	s1,0x10
    16d4:	e4c48493          	addi	s1,s1,-436 # 1151c <zeroes.4514+0x14>
    16d8:	f7f47413          	andi	s0,s0,-129
    16dc:	00000b13          	addi	s6,zero,0
    16e0:	00300d93          	addi	s11,zero,3
    16e4:	00000d13          	addi	s10,zero,0
    16e8:	3210006f          	jal	zero,2208 <_vfprintf_r+0x1340>
    16ec:	007b0b13          	addi	s6,s6,7
    16f0:	ff8b7b13          	andi	s6,s6,-8
    16f4:	000b2583          	lw	a1,0(s6)
    16f8:	004b2603          	lw	a2,4(s6)
    16fc:	008b0793          	addi	a5,s6,8
    1700:	09010513          	addi	a0,sp,144
    1704:	00f12623          	sw	a5,12(sp)
    1708:	4700f0ef          	jal	ra,10b78 <__extenddftf2>
    170c:	09012783          	lw	a5,144(sp)
    1710:	0cf12823          	sw	a5,208(sp)
    1714:	09412783          	lw	a5,148(sp)
    1718:	0cf12a23          	sw	a5,212(sp)
    171c:	09812783          	lw	a5,152(sp)
    1720:	0cf12c23          	sw	a5,216(sp)
    1724:	09c12783          	lw	a5,156(sp)
    1728:	f39ff06f          	jal	zero,1660 <_vfprintf_r+0x798>
    172c:	00100793          	addi	a5,zero,1
    1730:	02f51863          	bne	a0,a5,1760 <_vfprintf_r+0x898>
    1734:	0dc12783          	lw	a5,220(sp)
    1738:	0007d663          	bge	a5,zero,1744 <_vfprintf_r+0x87c>
    173c:	02d00793          	addi	a5,zero,45
    1740:	0af103a3          	sb	a5,167(sp)
    1744:	04700793          	addi	a5,zero,71
    1748:	00010497          	auipc	s1,0x10
    174c:	dd848493          	addi	s1,s1,-552 # 11520 <zeroes.4514+0x18>
    1750:	f957d4e3          	bge	a5,s5,16d8 <_vfprintf_r+0x810>
    1754:	00010497          	auipc	s1,0x10
    1758:	dd048493          	addi	s1,s1,-560 # 11524 <zeroes.4514+0x1c>
    175c:	f7dff06f          	jal	zero,16d8 <_vfprintf_r+0x810>
    1760:	fdfafb93          	andi	s7,s5,-33
    1764:	04100793          	addi	a5,zero,65
    1768:	04fb9e63          	bne	s7,a5,17c4 <_vfprintf_r+0x8fc>
    176c:	03000793          	addi	a5,zero,48
    1770:	0af10423          	sb	a5,168(sp)
    1774:	06100713          	addi	a4,zero,97
    1778:	07800793          	addi	a5,zero,120
    177c:	00ea8463          	beq	s5,a4,1784 <_vfprintf_r+0x8bc>
    1780:	05800793          	addi	a5,zero,88
    1784:	0af104a3          	sb	a5,169(sp)
    1788:	06300793          	addi	a5,zero,99
    178c:	00246413          	ori	s0,s0,2
    1790:	4bb7dc63          	bge	a5,s11,1c48 <_vfprintf_r+0xd80>
    1794:	001d8593          	addi	a1,s11,1
    1798:	00098513          	addi	a0,s3,0
    179c:	2f9040ef          	jal	ra,6294 <_malloc_r>
    17a0:	00050493          	addi	s1,a0,0
    17a4:	4a051863          	bne	a0,zero,1c54 <_vfprintf_r+0xd8c>
    17a8:	00c95783          	lhu	a5,12(s2)
    17ac:	0407e793          	ori	a5,a5,64
    17b0:	00f91623          	sh	a5,12(s2)
    17b4:	00c95783          	lhu	a5,12(s2)
    17b8:	0407f793          	andi	a5,a5,64
    17bc:	80078ee3          	beq	a5,zero,fd8 <_vfprintf_r+0x110>
    17c0:	811ff06f          	jal	zero,fd0 <_vfprintf_r+0x108>
    17c4:	fff00793          	addi	a5,zero,-1
    17c8:	48fd8a63          	beq	s11,a5,1c5c <_vfprintf_r+0xd94>
    17cc:	04700793          	addi	a5,zero,71
    17d0:	00000b13          	addi	s6,zero,0
    17d4:	00fb9863          	bne	s7,a5,17e4 <_vfprintf_r+0x91c>
    17d8:	000d9663          	bne	s11,zero,17e4 <_vfprintf_r+0x91c>
    17dc:	000d8b13          	addi	s6,s11,0
    17e0:	00100d93          	addi	s11,zero,1
    17e4:	0dc12a03          	lw	s4,220(sp)
    17e8:	10046793          	ori	a5,s0,256
    17ec:	02f12023          	sw	a5,32(sp)
    17f0:	02012c23          	sw	zero,56(sp)
    17f4:	0d012e03          	lw	t3,208(sp)
    17f8:	0d412883          	lw	a7,212(sp)
    17fc:	0d812d03          	lw	s10,216(sp)
    1800:	000a5a63          	bge	s4,zero,1814 <_vfprintf_r+0x94c>
    1804:	800007b7          	lui	a5,0x80000
    1808:	0147ca33          	xor	s4,a5,s4
    180c:	02d00793          	addi	a5,zero,45
    1810:	02f12c23          	sw	a5,56(sp)
    1814:	04100793          	addi	a5,zero,65
    1818:	48fb9663          	bne	s7,a5,1ca4 <_vfprintf_r+0xddc>
    181c:	09010513          	addi	a0,sp,144
    1820:	09c12823          	sw	t3,144(sp)
    1824:	09112a23          	sw	a7,148(sp)
    1828:	09a12c23          	sw	s10,152(sp)
    182c:	09412e23          	sw	s4,156(sp)
    1830:	5600f0ef          	jal	ra,10d90 <__trunctfdf2>
    1834:	0ac10613          	addi	a2,sp,172
    1838:	69c060ef          	jal	ra,7ed4 <frexp>
    183c:	00058613          	addi	a2,a1,0
    1840:	00050593          	addi	a1,a0,0
    1844:	09010513          	addi	a0,sp,144
    1848:	3300f0ef          	jal	ra,10b78 <__extenddftf2>
    184c:	09012783          	lw	a5,144(sp)
    1850:	06010613          	addi	a2,sp,96
    1854:	07010593          	addi	a1,sp,112
    1858:	06f12823          	sw	a5,112(sp)
    185c:	09412783          	lw	a5,148(sp)
    1860:	08010513          	addi	a0,sp,128
    1864:	06012023          	sw	zero,96(sp)
    1868:	06f12a23          	sw	a5,116(sp)
    186c:	09812783          	lw	a5,152(sp)
    1870:	06012223          	sw	zero,100(sp)
    1874:	06012423          	sw	zero,104(sp)
    1878:	06f12c23          	sw	a5,120(sp)
    187c:	09c12783          	lw	a5,156(sp)
    1880:	06f12e23          	sw	a5,124(sp)
    1884:	3ffc07b7          	lui	a5,0x3ffc0
    1888:	06f12623          	sw	a5,108(sp)
    188c:	2d50c0ef          	jal	ra,e360 <__multf3>
    1890:	08012803          	lw	a6,128(sp)
    1894:	08412603          	lw	a2,132(sp)
    1898:	08812683          	lw	a3,136(sp)
    189c:	08c12d03          	lw	s10,140(sp)
    18a0:	08010593          	addi	a1,sp,128
    18a4:	09010513          	addi	a0,sp,144
    18a8:	09012823          	sw	a6,144(sp)
    18ac:	05012023          	sw	a6,64(sp)
    18b0:	08c12a23          	sw	a2,148(sp)
    18b4:	02c12e23          	sw	a2,60(sp)
    18b8:	08d12c23          	sw	a3,152(sp)
    18bc:	00d12423          	sw	a3,8(sp)
    18c0:	09a12e23          	sw	s10,156(sp)
    18c4:	08012023          	sw	zero,128(sp)
    18c8:	08012223          	sw	zero,132(sp)
    18cc:	08012423          	sw	zero,136(sp)
    18d0:	08012623          	sw	zero,140(sp)
    18d4:	7300c0ef          	jal	ra,e004 <__eqtf2>
    18d8:	00812683          	lw	a3,8(sp)
    18dc:	03c12603          	lw	a2,60(sp)
    18e0:	04012803          	lw	a6,64(sp)
    18e4:	00051663          	bne	a0,zero,18f0 <_vfprintf_r+0xa28>
    18e8:	00100713          	addi	a4,zero,1
    18ec:	0ae12623          	sw	a4,172(sp)
    18f0:	00010797          	auipc	a5,0x10
    18f4:	c3878793          	addi	a5,a5,-968 # 11528 <zeroes.4514+0x20>
    18f8:	06100713          	addi	a4,zero,97
    18fc:	00f12423          	sw	a5,8(sp)
    1900:	00ea8863          	beq	s5,a4,1910 <_vfprintf_r+0xa48>
    1904:	00010797          	auipc	a5,0x10
    1908:	c3878793          	addi	a5,a5,-968 # 1153c <zeroes.4514+0x34>
    190c:	00f12423          	sw	a5,8(sp)
    1910:	fffd8e13          	addi	t3,s11,-1
    1914:	00048c93          	addi	s9,s1,0
    1918:	400307b7          	lui	a5,0x40030
    191c:	08010593          	addi	a1,sp,128
    1920:	08c12223          	sw	a2,132(sp)
    1924:	09010513          	addi	a0,sp,144
    1928:	07010613          	addi	a2,sp,112
    192c:	05c12423          	sw	t3,72(sp)
    1930:	09012023          	sw	a6,128(sp)
    1934:	08d12423          	sw	a3,136(sp)
    1938:	09a12623          	sw	s10,140(sp)
    193c:	06f12e23          	sw	a5,124(sp)
    1940:	06012823          	sw	zero,112(sp)
    1944:	06012a23          	sw	zero,116(sp)
    1948:	06012c23          	sw	zero,120(sp)
    194c:	2150c0ef          	jal	ra,e360 <__multf3>
    1950:	09012603          	lw	a2,144(sp)
    1954:	09412683          	lw	a3,148(sp)
    1958:	09812783          	lw	a5,152(sp)
    195c:	09010513          	addi	a0,sp,144
    1960:	04c12223          	sw	a2,68(sp)
    1964:	04d12023          	sw	a3,64(sp)
    1968:	02f12e23          	sw	a5,60(sp)
    196c:	7290e0ef          	jal	ra,10894 <__fixtfsi>
    1970:	00050593          	addi	a1,a0,0
    1974:	00050a13          	addi	s4,a0,0
    1978:	09010513          	addi	a0,sp,144
    197c:	09c12d03          	lw	s10,156(sp)
    1980:	0640f0ef          	jal	ra,109e4 <__floatsitf>
    1984:	03c12783          	lw	a5,60(sp)
    1988:	04412603          	lw	a2,68(sp)
    198c:	04012683          	lw	a3,64(sp)
    1990:	06f12c23          	sw	a5,120(sp)
    1994:	09012783          	lw	a5,144(sp)
    1998:	06c12823          	sw	a2,112(sp)
    199c:	07010593          	addi	a1,sp,112
    19a0:	06f12023          	sw	a5,96(sp)
    19a4:	09412783          	lw	a5,148(sp)
    19a8:	06010613          	addi	a2,sp,96
    19ac:	08010513          	addi	a0,sp,128
    19b0:	06f12223          	sw	a5,100(sp)
    19b4:	09812783          	lw	a5,152(sp)
    19b8:	07a12e23          	sw	s10,124(sp)
    19bc:	06d12a23          	sw	a3,116(sp)
    19c0:	06f12423          	sw	a5,104(sp)
    19c4:	09c12783          	lw	a5,156(sp)
    19c8:	001c8c93          	addi	s9,s9,1
    19cc:	06f12623          	sw	a5,108(sp)
    19d0:	1a50d0ef          	jal	ra,f374 <__subtf3>
    19d4:	00812783          	lw	a5,8(sp)
    19d8:	04812e03          	lw	t3,72(sp)
    19dc:	08c12e83          	lw	t4,140(sp)
    19e0:	014785b3          	add	a1,a5,s4
    19e4:	0005c583          	lbu	a1,0(a1)
    19e8:	08012283          	lw	t0,128(sp)
    19ec:	08412f83          	lw	t6,132(sp)
    19f0:	08812f03          	lw	t5,136(sp)
    19f4:	03c12e23          	sw	t3,60(sp)
    19f8:	febc8fa3          	sb	a1,-1(s9)
    19fc:	fff00793          	addi	a5,zero,-1
    1a00:	000e8d13          	addi	s10,t4,0
    1a04:	06fe0c63          	beq	t3,a5,1a7c <_vfprintf_r+0xbb4>
    1a08:	fffe0e13          	addi	t3,t3,-1
    1a0c:	08010593          	addi	a1,sp,128
    1a10:	09010513          	addi	a0,sp,144
    1a14:	05d12e23          	sw	t4,92(sp)
    1a18:	05e12c23          	sw	t5,88(sp)
    1a1c:	05f12a23          	sw	t6,84(sp)
    1a20:	04512823          	sw	t0,80(sp)
    1a24:	05c12623          	sw	t3,76(sp)
    1a28:	08512823          	sw	t0,144(sp)
    1a2c:	04512423          	sw	t0,72(sp)
    1a30:	09f12a23          	sw	t6,148(sp)
    1a34:	05f12223          	sw	t6,68(sp)
    1a38:	09e12c23          	sw	t5,152(sp)
    1a3c:	05e12023          	sw	t5,64(sp)
    1a40:	09d12e23          	sw	t4,156(sp)
    1a44:	08012023          	sw	zero,128(sp)
    1a48:	08012223          	sw	zero,132(sp)
    1a4c:	08012423          	sw	zero,136(sp)
    1a50:	08012623          	sw	zero,140(sp)
    1a54:	5b00c0ef          	jal	ra,e004 <__eqtf2>
    1a58:	04012683          	lw	a3,64(sp)
    1a5c:	04412603          	lw	a2,68(sp)
    1a60:	04812803          	lw	a6,72(sp)
    1a64:	04c12e03          	lw	t3,76(sp)
    1a68:	05012283          	lw	t0,80(sp)
    1a6c:	05412f83          	lw	t6,84(sp)
    1a70:	05812f03          	lw	t5,88(sp)
    1a74:	05c12e83          	lw	t4,92(sp)
    1a78:	ea0510e3          	bne	a0,zero,1918 <_vfprintf_r+0xa50>
    1a7c:	3ffe0d37          	lui	s10,0x3ffe0
    1a80:	08010593          	addi	a1,sp,128
    1a84:	09010513          	addi	a0,sp,144
    1a88:	08512823          	sw	t0,144(sp)
    1a8c:	04512623          	sw	t0,76(sp)
    1a90:	09f12a23          	sw	t6,148(sp)
    1a94:	05f12423          	sw	t6,72(sp)
    1a98:	09e12c23          	sw	t5,152(sp)
    1a9c:	05e12223          	sw	t5,68(sp)
    1aa0:	09d12e23          	sw	t4,156(sp)
    1aa4:	05d12023          	sw	t4,64(sp)
    1aa8:	08012023          	sw	zero,128(sp)
    1aac:	08012223          	sw	zero,132(sp)
    1ab0:	08012423          	sw	zero,136(sp)
    1ab4:	09a12623          	sw	s10,140(sp)
    1ab8:	6180c0ef          	jal	ra,e0d0 <__getf2>
    1abc:	04a04663          	blt	zero,a0,1b08 <_vfprintf_r+0xc40>
    1ac0:	04c12283          	lw	t0,76(sp)
    1ac4:	04812f83          	lw	t6,72(sp)
    1ac8:	04412f03          	lw	t5,68(sp)
    1acc:	04012e83          	lw	t4,64(sp)
    1ad0:	08010593          	addi	a1,sp,128
    1ad4:	09010513          	addi	a0,sp,144
    1ad8:	08512823          	sw	t0,144(sp)
    1adc:	09f12a23          	sw	t6,148(sp)
    1ae0:	09e12c23          	sw	t5,152(sp)
    1ae4:	09d12e23          	sw	t4,156(sp)
    1ae8:	08012023          	sw	zero,128(sp)
    1aec:	08012223          	sw	zero,132(sp)
    1af0:	08012423          	sw	zero,136(sp)
    1af4:	09a12623          	sw	s10,140(sp)
    1af8:	50c0c0ef          	jal	ra,e004 <__eqtf2>
    1afc:	18051a63          	bne	a0,zero,1c90 <_vfprintf_r+0xdc8>
    1b00:	001a7a13          	andi	s4,s4,1
    1b04:	180a0663          	beq	s4,zero,1c90 <_vfprintf_r+0xdc8>
    1b08:	00812783          	lw	a5,8(sp)
    1b0c:	0b912e23          	sw	s9,188(sp)
    1b10:	03000593          	addi	a1,zero,48
    1b14:	00f7c603          	lbu	a2,15(a5) # 4003000f <__heap_top+0x3ff3000f>
    1b18:	0bc12683          	lw	a3,188(sp)
    1b1c:	fff68793          	addi	a5,a3,-1
    1b20:	0af12e23          	sw	a5,188(sp)
    1b24:	fff6c783          	lbu	a5,-1(a3)
    1b28:	14c78063          	beq	a5,a2,1c68 <_vfprintf_r+0xda0>
    1b2c:	03900613          	addi	a2,zero,57
    1b30:	14c79063          	bne	a5,a2,1c70 <_vfprintf_r+0xda8>
    1b34:	00812783          	lw	a5,8(sp)
    1b38:	00a7c783          	lbu	a5,10(a5)
    1b3c:	fef68fa3          	sb	a5,-1(a3)
    1b40:	000c8a13          	addi	s4,s9,0
    1b44:	04700713          	addi	a4,zero,71
    1b48:	409a0a33          	sub	s4,s4,s1
    1b4c:	0ac12c83          	lw	s9,172(sp)
    1b50:	2aeb9263          	bne	s7,a4,1df4 <_vfprintf_r+0xf2c>
    1b54:	ffd00713          	addi	a4,zero,-3
    1b58:	00ecc463          	blt	s9,a4,1b60 <_vfprintf_r+0xc98>
    1b5c:	319ddc63          	bge	s11,s9,1e74 <_vfprintf_r+0xfac>
    1b60:	ffea8a93          	addi	s5,s5,-2
    1b64:	fffc8693          	addi	a3,s9,-1
    1b68:	0ad12623          	sw	a3,172(sp)
    1b6c:	fdfaf613          	andi	a2,s5,-33
    1b70:	04100513          	addi	a0,zero,65
    1b74:	0ffaf713          	andi	a4,s5,255
    1b78:	00000593          	addi	a1,zero,0
    1b7c:	00a61863          	bne	a2,a0,1b8c <_vfprintf_r+0xcc4>
    1b80:	00f70713          	addi	a4,a4,15
    1b84:	0ff77713          	andi	a4,a4,255
    1b88:	00100593          	addi	a1,zero,1
    1b8c:	0ae10a23          	sb	a4,180(sp)
    1b90:	02b00793          	addi	a5,zero,43
    1b94:	0006d863          	bge	a3,zero,1ba4 <_vfprintf_r+0xcdc>
    1b98:	00100693          	addi	a3,zero,1
    1b9c:	419686b3          	sub	a3,a3,s9
    1ba0:	02d00793          	addi	a5,zero,45
    1ba4:	0af10aa3          	sb	a5,181(sp)
    1ba8:	00900793          	addi	a5,zero,9
    1bac:	28d7da63          	bge	a5,a3,1e40 <_vfprintf_r+0xf78>
    1bb0:	0c310713          	addi	a4,sp,195
    1bb4:	00070513          	addi	a0,a4,0
    1bb8:	00a00593          	addi	a1,zero,10
    1bbc:	06300813          	addi	a6,zero,99
    1bc0:	02b6e7b3          	rem	a5,a3,a1
    1bc4:	fff70613          	addi	a2,a4,-1
    1bc8:	03078793          	addi	a5,a5,48
    1bcc:	fef70fa3          	sb	a5,-1(a4)
    1bd0:	02b6c7b3          	div	a5,a3,a1
    1bd4:	24d84663          	blt	a6,a3,1e20 <_vfprintf_r+0xf58>
    1bd8:	03078793          	addi	a5,a5,48
    1bdc:	fef60fa3          	sb	a5,-1(a2)
    1be0:	ffe70713          	addi	a4,a4,-2
    1be4:	0b610613          	addi	a2,sp,182
    1be8:	24a76263          	bltu	a4,a0,1e2c <_vfprintf_r+0xf64>
    1bec:	0b410793          	addi	a5,sp,180
    1bf0:	40f607b3          	sub	a5,a2,a5
    1bf4:	02f12823          	sw	a5,48(sp)
    1bf8:	01478db3          	add	s11,a5,s4
    1bfc:	00100793          	addi	a5,zero,1
    1c00:	0147c663          	blt	a5,s4,1c0c <_vfprintf_r+0xd44>
    1c04:	00147793          	andi	a5,s0,1
    1c08:	00078663          	beq	a5,zero,1c14 <_vfprintf_r+0xd4c>
    1c0c:	01412783          	lw	a5,20(sp)
    1c10:	00fd8db3          	add	s11,s11,a5
    1c14:	bff47413          	andi	s0,s0,-1025
    1c18:	10046793          	ori	a5,s0,256
    1c1c:	02f12023          	sw	a5,32(sp)
    1c20:	00012423          	sw	zero,8(sp)
    1c24:	00000b93          	addi	s7,zero,0
    1c28:	00000c93          	addi	s9,zero,0
    1c2c:	03812783          	lw	a5,56(sp)
    1c30:	00078663          	beq	a5,zero,1c3c <_vfprintf_r+0xd74>
    1c34:	02d00713          	addi	a4,zero,45
    1c38:	0ae103a3          	sb	a4,167(sp)
    1c3c:	02012403          	lw	s0,32(sp)
    1c40:	00000d13          	addi	s10,zero,0
    1c44:	e90ff06f          	jal	zero,12d4 <_vfprintf_r+0x40c>
    1c48:	00000b13          	addi	s6,zero,0
    1c4c:	12c10493          	addi	s1,sp,300
    1c50:	b95ff06f          	jal	zero,17e4 <_vfprintf_r+0x91c>
    1c54:	00050b13          	addi	s6,a0,0
    1c58:	b8dff06f          	jal	zero,17e4 <_vfprintf_r+0x91c>
    1c5c:	00000b13          	addi	s6,zero,0
    1c60:	00600d93          	addi	s11,zero,6
    1c64:	b81ff06f          	jal	zero,17e4 <_vfprintf_r+0x91c>
    1c68:	feb68fa3          	sb	a1,-1(a3)
    1c6c:	eadff06f          	jal	zero,1b18 <_vfprintf_r+0xc50>
    1c70:	00178793          	addi	a5,a5,1
    1c74:	0ff7f793          	andi	a5,a5,255
    1c78:	ec5ff06f          	jal	zero,1b3c <_vfprintf_r+0xc74>
    1c7c:	001a0a13          	addi	s4,s4,1
    1c80:	feea0fa3          	sb	a4,-1(s4)
    1c84:	414c87b3          	sub	a5,s9,s4
    1c88:	fe07dae3          	bge	a5,zero,1c7c <_vfprintf_r+0xdb4>
    1c8c:	eb9ff06f          	jal	zero,1b44 <_vfprintf_r+0xc7c>
    1c90:	03c12783          	lw	a5,60(sp)
    1c94:	000c8a13          	addi	s4,s9,0
    1c98:	03000713          	addi	a4,zero,48
    1c9c:	00fc8cb3          	add	s9,s9,a5
    1ca0:	fe5ff06f          	jal	zero,1c84 <_vfprintf_r+0xdbc>
    1ca4:	04600793          	addi	a5,zero,70
    1ca8:	00fb8e63          	beq	s7,a5,1cc4 <_vfprintf_r+0xdfc>
    1cac:	04500793          	addi	a5,zero,69
    1cb0:	001d8313          	addi	t1,s11,1
    1cb4:	00fb8463          	beq	s7,a5,1cbc <_vfprintf_r+0xdf4>
    1cb8:	000d8313          	addi	t1,s11,0
    1cbc:	00200613          	addi	a2,zero,2
    1cc0:	00c0006f          	jal	zero,1ccc <_vfprintf_r+0xe04>
    1cc4:	000d8313          	addi	t1,s11,0
    1cc8:	00300613          	addi	a2,zero,3
    1ccc:	0b010793          	addi	a5,sp,176
    1cd0:	00030693          	addi	a3,t1,0
    1cd4:	0bc10813          	addi	a6,sp,188
    1cd8:	0ac10713          	addi	a4,sp,172
    1cdc:	09010593          	addi	a1,sp,144
    1ce0:	00098513          	addi	a0,s3,0
    1ce4:	09c12823          	sw	t3,144(sp)
    1ce8:	05c12023          	sw	t3,64(sp)
    1cec:	09112a23          	sw	a7,148(sp)
    1cf0:	03112e23          	sw	a7,60(sp)
    1cf4:	00612423          	sw	t1,8(sp)
    1cf8:	09a12c23          	sw	s10,152(sp)
    1cfc:	09412e23          	sw	s4,156(sp)
    1d00:	698030ef          	jal	ra,5398 <_ldtoa_r>
    1d04:	04700793          	addi	a5,zero,71
    1d08:	00050493          	addi	s1,a0,0
    1d0c:	00812303          	lw	t1,8(sp)
    1d10:	03c12883          	lw	a7,60(sp)
    1d14:	04012e03          	lw	t3,64(sp)
    1d18:	00fb9a63          	bne	s7,a5,1d2c <_vfprintf_r+0xe64>
    1d1c:	00147793          	andi	a5,s0,1
    1d20:	00079663          	bne	a5,zero,1d2c <_vfprintf_r+0xe64>
    1d24:	0bc12a03          	lw	s4,188(sp)
    1d28:	e1dff06f          	jal	zero,1b44 <_vfprintf_r+0xc7c>
    1d2c:	04600793          	addi	a5,zero,70
    1d30:	00648cb3          	add	s9,s1,t1
    1d34:	06fb9663          	bne	s7,a5,1da0 <_vfprintf_r+0xed8>
    1d38:	0004c703          	lbu	a4,0(s1)
    1d3c:	03000793          	addi	a5,zero,48
    1d40:	04f71c63          	bne	a4,a5,1d98 <_vfprintf_r+0xed0>
    1d44:	08010593          	addi	a1,sp,128
    1d48:	09010513          	addi	a0,sp,144
    1d4c:	09c12823          	sw	t3,144(sp)
    1d50:	03c12e23          	sw	t3,60(sp)
    1d54:	09112a23          	sw	a7,148(sp)
    1d58:	01112423          	sw	a7,8(sp)
    1d5c:	04612023          	sw	t1,64(sp)
    1d60:	09a12c23          	sw	s10,152(sp)
    1d64:	09412e23          	sw	s4,156(sp)
    1d68:	08012023          	sw	zero,128(sp)
    1d6c:	08012223          	sw	zero,132(sp)
    1d70:	08012423          	sw	zero,136(sp)
    1d74:	08012623          	sw	zero,140(sp)
    1d78:	28c0c0ef          	jal	ra,e004 <__eqtf2>
    1d7c:	00812883          	lw	a7,8(sp)
    1d80:	03c12e03          	lw	t3,60(sp)
    1d84:	00050a63          	beq	a0,zero,1d98 <_vfprintf_r+0xed0>
    1d88:	04012303          	lw	t1,64(sp)
    1d8c:	00100793          	addi	a5,zero,1
    1d90:	406787b3          	sub	a5,a5,t1
    1d94:	0af12623          	sw	a5,172(sp)
    1d98:	0ac12783          	lw	a5,172(sp)
    1d9c:	00fc8cb3          	add	s9,s9,a5
    1da0:	08010593          	addi	a1,sp,128
    1da4:	09010513          	addi	a0,sp,144
    1da8:	09c12823          	sw	t3,144(sp)
    1dac:	09112a23          	sw	a7,148(sp)
    1db0:	09a12c23          	sw	s10,152(sp)
    1db4:	09412e23          	sw	s4,156(sp)
    1db8:	08012023          	sw	zero,128(sp)
    1dbc:	08012223          	sw	zero,132(sp)
    1dc0:	08012423          	sw	zero,136(sp)
    1dc4:	08012623          	sw	zero,140(sp)
    1dc8:	23c0c0ef          	jal	ra,e004 <__eqtf2>
    1dcc:	00051463          	bne	a0,zero,1dd4 <_vfprintf_r+0xf0c>
    1dd0:	0b912e23          	sw	s9,188(sp)
    1dd4:	03000713          	addi	a4,zero,48
    1dd8:	0100006f          	jal	zero,1de8 <_vfprintf_r+0xf20>
    1ddc:	00178693          	addi	a3,a5,1
    1de0:	0ad12e23          	sw	a3,188(sp)
    1de4:	00e78023          	sb	a4,0(a5)
    1de8:	0bc12783          	lw	a5,188(sp)
    1dec:	ff97e8e3          	bltu	a5,s9,1ddc <_vfprintf_r+0xf14>
    1df0:	f35ff06f          	jal	zero,1d24 <_vfprintf_r+0xe5c>
    1df4:	04600713          	addi	a4,zero,70
    1df8:	d6eb96e3          	bne	s7,a4,1b64 <_vfprintf_r+0xc9c>
    1dfc:	00147713          	andi	a4,s0,1
    1e00:	01b76733          	or	a4,a4,s11
    1e04:	07905063          	bge	zero,s9,1e64 <_vfprintf_r+0xf9c>
    1e08:	0c070063          	beq	a4,zero,1ec8 <_vfprintf_r+0x1000>
    1e0c:	01412783          	lw	a5,20(sp)
    1e10:	00fc8733          	add	a4,s9,a5
    1e14:	00ed8db3          	add	s11,s11,a4
    1e18:	06600a93          	addi	s5,zero,102
    1e1c:	0900006f          	jal	zero,1eac <_vfprintf_r+0xfe4>
    1e20:	00060713          	addi	a4,a2,0
    1e24:	00078693          	addi	a3,a5,0
    1e28:	d99ff06f          	jal	zero,1bc0 <_vfprintf_r+0xcf8>
    1e2c:	00170713          	addi	a4,a4,1
    1e30:	fff74783          	lbu	a5,-1(a4)
    1e34:	00160613          	addi	a2,a2,1
    1e38:	fef60fa3          	sb	a5,-1(a2)
    1e3c:	dadff06f          	jal	zero,1be8 <_vfprintf_r+0xd20>
    1e40:	0b610713          	addi	a4,sp,182
    1e44:	00059863          	bne	a1,zero,1e54 <_vfprintf_r+0xf8c>
    1e48:	03000793          	addi	a5,zero,48
    1e4c:	0af10b23          	sb	a5,182(sp)
    1e50:	0b710713          	addi	a4,sp,183
    1e54:	03068793          	addi	a5,a3,48
    1e58:	00170613          	addi	a2,a4,1
    1e5c:	00f70023          	sb	a5,0(a4)
    1e60:	d8dff06f          	jal	zero,1bec <_vfprintf_r+0xd24>
    1e64:	06070663          	beq	a4,zero,1ed0 <_vfprintf_r+0x1008>
    1e68:	01412783          	lw	a5,20(sp)
    1e6c:	00178713          	addi	a4,a5,1
    1e70:	fa5ff06f          	jal	zero,1e14 <_vfprintf_r+0xf4c>
    1e74:	034cc063          	blt	s9,s4,1e94 <_vfprintf_r+0xfcc>
    1e78:	00147713          	andi	a4,s0,1
    1e7c:	000c8d93          	addi	s11,s9,0
    1e80:	00070663          	beq	a4,zero,1e8c <_vfprintf_r+0xfc4>
    1e84:	01412783          	lw	a5,20(sp)
    1e88:	00fc8db3          	add	s11,s9,a5
    1e8c:	06700a93          	addi	s5,zero,103
    1e90:	01c0006f          	jal	zero,1eac <_vfprintf_r+0xfe4>
    1e94:	01412783          	lw	a5,20(sp)
    1e98:	06700a93          	addi	s5,zero,103
    1e9c:	00fa0db3          	add	s11,s4,a5
    1ea0:	01904663          	blt	zero,s9,1eac <_vfprintf_r+0xfe4>
    1ea4:	419d8333          	sub	t1,s11,s9
    1ea8:	00130d93          	addi	s11,t1,1
    1eac:	40047b93          	andi	s7,s0,1024
    1eb0:	00012423          	sw	zero,8(sp)
    1eb4:	d60b8ce3          	beq	s7,zero,1c2c <_vfprintf_r+0xd64>
    1eb8:	00000b93          	addi	s7,zero,0
    1ebc:	d79058e3          	bge	zero,s9,1c2c <_vfprintf_r+0xd64>
    1ec0:	0ff00693          	addi	a3,zero,255
    1ec4:	0380006f          	jal	zero,1efc <_vfprintf_r+0x1034>
    1ec8:	000c8d93          	addi	s11,s9,0
    1ecc:	f4dff06f          	jal	zero,1e18 <_vfprintf_r+0xf50>
    1ed0:	06600a93          	addi	s5,zero,102
    1ed4:	00100d93          	addi	s11,zero,1
    1ed8:	fd5ff06f          	jal	zero,1eac <_vfprintf_r+0xfe4>
    1edc:	03975663          	bge	a4,s9,1f08 <_vfprintf_r+0x1040>
    1ee0:	00412783          	lw	a5,4(sp)
    1ee4:	40ec8cb3          	sub	s9,s9,a4
    1ee8:	0017c703          	lbu	a4,1(a5)
    1eec:	02070a63          	beq	a4,zero,1f20 <_vfprintf_r+0x1058>
    1ef0:	00178793          	addi	a5,a5,1
    1ef4:	001b8b93          	addi	s7,s7,1
    1ef8:	00f12223          	sw	a5,4(sp)
    1efc:	00412783          	lw	a5,4(sp)
    1f00:	0007c703          	lbu	a4,0(a5)
    1f04:	fcd71ce3          	bne	a4,a3,1edc <_vfprintf_r+0x1014>
    1f08:	00812783          	lw	a5,8(sp)
    1f0c:	00fb8733          	add	a4,s7,a5
    1f10:	02412783          	lw	a5,36(sp)
    1f14:	02f70733          	mul	a4,a4,a5
    1f18:	01b70db3          	add	s11,a4,s11
    1f1c:	d11ff06f          	jal	zero,1c2c <_vfprintf_r+0xd64>
    1f20:	00812783          	lw	a5,8(sp)
    1f24:	00178793          	addi	a5,a5,1
    1f28:	00f12423          	sw	a5,8(sp)
    1f2c:	fd1ff06f          	jal	zero,1efc <_vfprintf_r+0x1034>
    1f30:	004b0713          	addi	a4,s6,4
    1f34:	00e12623          	sw	a4,12(sp)
    1f38:	02047713          	andi	a4,s0,32
    1f3c:	000b2783          	lw	a5,0(s6)
    1f40:	02070063          	beq	a4,zero,1f60 <_vfprintf_r+0x1098>
    1f44:	01812703          	lw	a4,24(sp)
    1f48:	00e7a023          	sw	a4,0(a5)
    1f4c:	41f75713          	srai	a4,a4,0x1f
    1f50:	00e7a223          	sw	a4,4(a5)
    1f54:	00c12b03          	lw	s6,12(sp)
    1f58:	01012483          	lw	s1,16(sp)
    1f5c:	8ecff06f          	jal	zero,1048 <_vfprintf_r+0x180>
    1f60:	01047713          	andi	a4,s0,16
    1f64:	00070863          	beq	a4,zero,1f74 <_vfprintf_r+0x10ac>
    1f68:	01812703          	lw	a4,24(sp)
    1f6c:	00e7a023          	sw	a4,0(a5)
    1f70:	fe5ff06f          	jal	zero,1f54 <_vfprintf_r+0x108c>
    1f74:	04047713          	andi	a4,s0,64
    1f78:	00070863          	beq	a4,zero,1f88 <_vfprintf_r+0x10c0>
    1f7c:	01812703          	lw	a4,24(sp)
    1f80:	00e79023          	sh	a4,0(a5)
    1f84:	fd1ff06f          	jal	zero,1f54 <_vfprintf_r+0x108c>
    1f88:	20047413          	andi	s0,s0,512
    1f8c:	fc040ee3          	beq	s0,zero,1f68 <_vfprintf_r+0x10a0>
    1f90:	01812703          	lw	a4,24(sp)
    1f94:	00e78023          	sb	a4,0(a5)
    1f98:	fbdff06f          	jal	zero,1f54 <_vfprintf_r+0x108c>
    1f9c:	01046413          	ori	s0,s0,16
    1fa0:	02047793          	andi	a5,s0,32
    1fa4:	02078663          	beq	a5,zero,1fd0 <_vfprintf_r+0x1108>
    1fa8:	007b0b13          	addi	s6,s6,7
    1fac:	ff8b7b13          	andi	s6,s6,-8
    1fb0:	000b2d03          	lw	s10,0(s6)
    1fb4:	004b2c83          	lw	s9,4(s6)
    1fb8:	008b0793          	addi	a5,s6,8
    1fbc:	00f12623          	sw	a5,12(sp)
    1fc0:	bff47413          	andi	s0,s0,-1025
    1fc4:	00000793          	addi	a5,zero,0
    1fc8:	0a0103a3          	sb	zero,167(sp)
    1fcc:	df4ff06f          	jal	zero,15c0 <_vfprintf_r+0x6f8>
    1fd0:	004b0793          	addi	a5,s6,4
    1fd4:	00f12623          	sw	a5,12(sp)
    1fd8:	01047793          	andi	a5,s0,16
    1fdc:	00078663          	beq	a5,zero,1fe8 <_vfprintf_r+0x1120>
    1fe0:	000b2d03          	lw	s10,0(s6)
    1fe4:	0100006f          	jal	zero,1ff4 <_vfprintf_r+0x112c>
    1fe8:	04047793          	andi	a5,s0,64
    1fec:	00078863          	beq	a5,zero,1ffc <_vfprintf_r+0x1134>
    1ff0:	000b5d03          	lhu	s10,0(s6)
    1ff4:	00000c93          	addi	s9,zero,0
    1ff8:	fc9ff06f          	jal	zero,1fc0 <_vfprintf_r+0x10f8>
    1ffc:	20047793          	andi	a5,s0,512
    2000:	fe0780e3          	beq	a5,zero,1fe0 <_vfprintf_r+0x1118>
    2004:	000b4d03          	lbu	s10,0(s6)
    2008:	fedff06f          	jal	zero,1ff4 <_vfprintf_r+0x112c>
    200c:	004b0793          	addi	a5,s6,4
    2010:	00f12623          	sw	a5,12(sp)
    2014:	ffff87b7          	lui	a5,0xffff8
    2018:	8307c793          	xori	a5,a5,-2000
    201c:	0af11423          	sh	a5,168(sp)
    2020:	0000f797          	auipc	a5,0xf
    2024:	50878793          	addi	a5,a5,1288 # 11528 <zeroes.4514+0x20>
    2028:	02f12a23          	sw	a5,52(sp)
    202c:	000b2d03          	lw	s10,0(s6)
    2030:	00000c93          	addi	s9,zero,0
    2034:	00246413          	ori	s0,s0,2
    2038:	00200793          	addi	a5,zero,2
    203c:	07800a93          	addi	s5,zero,120
    2040:	f89ff06f          	jal	zero,1fc8 <_vfprintf_r+0x1100>
    2044:	004b0793          	addi	a5,s6,4
    2048:	00f12623          	sw	a5,12(sp)
    204c:	0a0103a3          	sb	zero,167(sp)
    2050:	fff00793          	addi	a5,zero,-1
    2054:	000b2483          	lw	s1,0(s6)
    2058:	02fd8463          	beq	s11,a5,2080 <_vfprintf_r+0x11b8>
    205c:	000d8613          	addi	a2,s11,0
    2060:	00000593          	addi	a1,zero,0
    2064:	00048513          	addi	a0,s1,0
    2068:	109040ef          	jal	ra,6970 <memchr>
    206c:	00050b13          	addi	s6,a0,0
    2070:	e6050a63          	beq	a0,zero,16e4 <_vfprintf_r+0x81c>
    2074:	40950db3          	sub	s11,a0,s1
    2078:	00000b13          	addi	s6,zero,0
    207c:	e68ff06f          	jal	zero,16e4 <_vfprintf_r+0x81c>
    2080:	00048513          	addi	a0,s1,0
    2084:	e29fe0ef          	jal	ra,eac <strlen>
    2088:	00050d93          	addi	s11,a0,0
    208c:	fedff06f          	jal	zero,2078 <_vfprintf_r+0x11b0>
    2090:	01046413          	ori	s0,s0,16
    2094:	02047793          	andi	a5,s0,32
    2098:	02078263          	beq	a5,zero,20bc <_vfprintf_r+0x11f4>
    209c:	007b0b13          	addi	s6,s6,7
    20a0:	ff8b7b13          	andi	s6,s6,-8
    20a4:	000b2d03          	lw	s10,0(s6)
    20a8:	004b2c83          	lw	s9,4(s6)
    20ac:	008b0793          	addi	a5,s6,8
    20b0:	00f12623          	sw	a5,12(sp)
    20b4:	00100793          	addi	a5,zero,1
    20b8:	f11ff06f          	jal	zero,1fc8 <_vfprintf_r+0x1100>
    20bc:	004b0793          	addi	a5,s6,4
    20c0:	00f12623          	sw	a5,12(sp)
    20c4:	01047793          	andi	a5,s0,16
    20c8:	00078663          	beq	a5,zero,20d4 <_vfprintf_r+0x120c>
    20cc:	000b2d03          	lw	s10,0(s6)
    20d0:	0100006f          	jal	zero,20e0 <_vfprintf_r+0x1218>
    20d4:	04047793          	andi	a5,s0,64
    20d8:	00078863          	beq	a5,zero,20e8 <_vfprintf_r+0x1220>
    20dc:	000b5d03          	lhu	s10,0(s6)
    20e0:	00000c93          	addi	s9,zero,0
    20e4:	fd1ff06f          	jal	zero,20b4 <_vfprintf_r+0x11ec>
    20e8:	20047793          	andi	a5,s0,512
    20ec:	fe0780e3          	beq	a5,zero,20cc <_vfprintf_r+0x1204>
    20f0:	000b4d03          	lbu	s10,0(s6)
    20f4:	fedff06f          	jal	zero,20e0 <_vfprintf_r+0x1218>
    20f8:	0000f797          	auipc	a5,0xf
    20fc:	44478793          	addi	a5,a5,1092 # 1153c <zeroes.4514+0x34>
    2100:	02f12a23          	sw	a5,52(sp)
    2104:	02047793          	andi	a5,s0,32
    2108:	04078a63          	beq	a5,zero,215c <_vfprintf_r+0x1294>
    210c:	007b0b13          	addi	s6,s6,7
    2110:	ff8b7b13          	andi	s6,s6,-8
    2114:	000b2d03          	lw	s10,0(s6)
    2118:	004b2c83          	lw	s9,4(s6)
    211c:	008b0793          	addi	a5,s6,8
    2120:	00f12623          	sw	a5,12(sp)
    2124:	00147793          	andi	a5,s0,1
    2128:	00078e63          	beq	a5,zero,2144 <_vfprintf_r+0x127c>
    212c:	019d67b3          	or	a5,s10,s9
    2130:	00078a63          	beq	a5,zero,2144 <_vfprintf_r+0x127c>
    2134:	03000793          	addi	a5,zero,48
    2138:	0af10423          	sb	a5,168(sp)
    213c:	0b5104a3          	sb	s5,169(sp)
    2140:	00246413          	ori	s0,s0,2
    2144:	bff47413          	andi	s0,s0,-1025
    2148:	00200793          	addi	a5,zero,2
    214c:	e7dff06f          	jal	zero,1fc8 <_vfprintf_r+0x1100>
    2150:	0000f797          	auipc	a5,0xf
    2154:	3d878793          	addi	a5,a5,984 # 11528 <zeroes.4514+0x20>
    2158:	fa9ff06f          	jal	zero,2100 <_vfprintf_r+0x1238>
    215c:	004b0793          	addi	a5,s6,4
    2160:	00f12623          	sw	a5,12(sp)
    2164:	01047793          	andi	a5,s0,16
    2168:	00078663          	beq	a5,zero,2174 <_vfprintf_r+0x12ac>
    216c:	000b2d03          	lw	s10,0(s6)
    2170:	0100006f          	jal	zero,2180 <_vfprintf_r+0x12b8>
    2174:	04047793          	andi	a5,s0,64
    2178:	00078863          	beq	a5,zero,2188 <_vfprintf_r+0x12c0>
    217c:	000b5d03          	lhu	s10,0(s6)
    2180:	00000c93          	addi	s9,zero,0
    2184:	fa1ff06f          	jal	zero,2124 <_vfprintf_r+0x125c>
    2188:	20047793          	andi	a5,s0,512
    218c:	fe0780e3          	beq	a5,zero,216c <_vfprintf_r+0x12a4>
    2190:	000b4d03          	lbu	s10,0(s6)
    2194:	fedff06f          	jal	zero,2180 <_vfprintf_r+0x12b8>
    2198:	00040713          	addi	a4,s0,0
    219c:	00100793          	addi	a5,zero,1
    21a0:	c2cff06f          	jal	zero,15cc <_vfprintf_r+0x704>
    21a4:	00100713          	addi	a4,zero,1
    21a8:	4ae788e3          	beq	a5,a4,2e58 <_vfprintf_r+0x1f90>
    21ac:	00200713          	addi	a4,zero,2
    21b0:	12e78663          	beq	a5,a4,22dc <_vfprintf_r+0x1414>
    21b4:	19010793          	addi	a5,sp,400
    21b8:	01dc9693          	slli	a3,s9,0x1d
    21bc:	007d7713          	andi	a4,s10,7
    21c0:	003d5d13          	srli	s10,s10,0x3
    21c4:	03070713          	addi	a4,a4,48
    21c8:	01a6ed33          	or	s10,a3,s10
    21cc:	003cdc93          	srli	s9,s9,0x3
    21d0:	fee78fa3          	sb	a4,-1(a5)
    21d4:	019d66b3          	or	a3,s10,s9
    21d8:	fff78493          	addi	s1,a5,-1
    21dc:	02069e63          	bne	a3,zero,2218 <_vfprintf_r+0x1350>
    21e0:	00147693          	andi	a3,s0,1
    21e4:	00068a63          	beq	a3,zero,21f8 <_vfprintf_r+0x1330>
    21e8:	03000693          	addi	a3,zero,48
    21ec:	00d70663          	beq	a4,a3,21f8 <_vfprintf_r+0x1330>
    21f0:	fed48fa3          	sb	a3,-1(s1)
    21f4:	ffe78493          	addi	s1,a5,-2
    21f8:	19010793          	addi	a5,sp,400
    21fc:	000d8d13          	addi	s10,s11,0
    2200:	00000b13          	addi	s6,zero,0
    2204:	40978db3          	sub	s11,a5,s1
    2208:	00012423          	sw	zero,8(sp)
    220c:	00000b93          	addi	s7,zero,0
    2210:	00000c93          	addi	s9,zero,0
    2214:	8c0ff06f          	jal	zero,12d4 <_vfprintf_r+0x40c>
    2218:	00048793          	addi	a5,s1,0
    221c:	f9dff06f          	jal	zero,21b8 <_vfprintf_r+0x12f0>
    2220:	00000a13          	addi	s4,zero,0
    2224:	19010793          	addi	a5,sp,400
    2228:	40047b93          	andi	s7,s0,1024
    222c:	00900b13          	addi	s6,zero,9
    2230:	00a00613          	addi	a2,zero,10
    2234:	00000693          	addi	a3,zero,0
    2238:	000d0513          	addi	a0,s10,0 # 3ffe0000 <__heap_top+0x3fee0000>
    223c:	000c8593          	addi	a1,s9,0
    2240:	fff78493          	addi	s1,a5,-1
    2244:	00f12423          	sw	a5,8(sp)
    2248:	4e50a0ef          	jal	ra,cf2c <__umoddi3>
    224c:	00812783          	lw	a5,8(sp)
    2250:	03050513          	addi	a0,a0,48
    2254:	001a0a13          	addi	s4,s4,1
    2258:	fea78fa3          	sb	a0,-1(a5)
    225c:	040b8a63          	beq	s7,zero,22b0 <_vfprintf_r+0x13e8>
    2260:	00412783          	lw	a5,4(sp)
    2264:	0007c783          	lbu	a5,0(a5)
    2268:	04fa1463          	bne	s4,a5,22b0 <_vfprintf_r+0x13e8>
    226c:	0ff00793          	addi	a5,zero,255
    2270:	04fa0063          	beq	s4,a5,22b0 <_vfprintf_r+0x13e8>
    2274:	000c9463          	bne	s9,zero,227c <_vfprintf_r+0x13b4>
    2278:	03ab7c63          	bgeu	s6,s10,22b0 <_vfprintf_r+0x13e8>
    227c:	02412783          	lw	a5,36(sp)
    2280:	02c12583          	lw	a1,44(sp)
    2284:	00000a13          	addi	s4,zero,0
    2288:	40f484b3          	sub	s1,s1,a5
    228c:	00078613          	addi	a2,a5,0
    2290:	00048513          	addi	a0,s1,0
    2294:	0a0060ef          	jal	ra,8334 <strncpy>
    2298:	00412783          	lw	a5,4(sp)
    229c:	0017c783          	lbu	a5,1(a5)
    22a0:	00078863          	beq	a5,zero,22b0 <_vfprintf_r+0x13e8>
    22a4:	00412783          	lw	a5,4(sp)
    22a8:	00178793          	addi	a5,a5,1
    22ac:	00f12223          	sw	a5,4(sp)
    22b0:	00a00613          	addi	a2,zero,10
    22b4:	00000693          	addi	a3,zero,0
    22b8:	000d0513          	addi	a0,s10,0
    22bc:	000c8593          	addi	a1,s9,0
    22c0:	0390a0ef          	jal	ra,caf8 <__udivdi3>
    22c4:	000c9463          	bne	s9,zero,22cc <_vfprintf_r+0x1404>
    22c8:	f3ab78e3          	bgeu	s6,s10,21f8 <_vfprintf_r+0x1330>
    22cc:	00050d13          	addi	s10,a0,0
    22d0:	00058c93          	addi	s9,a1,0
    22d4:	00048793          	addi	a5,s1,0
    22d8:	f59ff06f          	jal	zero,2230 <_vfprintf_r+0x1368>
    22dc:	19010493          	addi	s1,sp,400
    22e0:	03412703          	lw	a4,52(sp)
    22e4:	00fd7793          	andi	a5,s10,15
    22e8:	fff48493          	addi	s1,s1,-1
    22ec:	00f707b3          	add	a5,a4,a5
    22f0:	0007c783          	lbu	a5,0(a5)
    22f4:	004d5d13          	srli	s10,s10,0x4
    22f8:	00f48023          	sb	a5,0(s1)
    22fc:	01cc9793          	slli	a5,s9,0x1c
    2300:	01a7ed33          	or	s10,a5,s10
    2304:	004cdc93          	srli	s9,s9,0x4
    2308:	019d67b3          	or	a5,s10,s9
    230c:	fc079ae3          	bne	a5,zero,22e0 <_vfprintf_r+0x1418>
    2310:	ee9ff06f          	jal	zero,21f8 <_vfprintf_r+0x1330>
    2314:	19010493          	addi	s1,sp,400
    2318:	ee0790e3          	bne	a5,zero,21f8 <_vfprintf_r+0x1330>
    231c:	00177713          	andi	a4,a4,1
    2320:	ec070ce3          	beq	a4,zero,21f8 <_vfprintf_r+0x1330>
    2324:	03000793          	addi	a5,zero,48
    2328:	18f107a3          	sb	a5,399(sp)
    232c:	3410006f          	jal	zero,2e6c <_vfprintf_r+0x1fa4>
    2330:	300a80e3          	beq	s5,zero,2e30 <_vfprintf_r+0x1f68>
    2334:	13510623          	sb	s5,300(sp)
    2338:	0a0103a3          	sb	zero,167(sp)
    233c:	01612623          	sw	s6,12(sp)
    2340:	f79fe06f          	jal	zero,12b8 <_vfprintf_r+0x3f0>
    2344:	01060613          	addi	a2,a2,16
    2348:	01dc2223          	sw	t4,4(s8)
    234c:	0cc12623          	sw	a2,204(sp)
    2350:	0cd12423          	sw	a3,200(sp)
    2354:	02df5a63          	bge	t5,a3,2388 <_vfprintf_r+0x14c0>
    2358:	0c410613          	addi	a2,sp,196
    235c:	00090593          	addi	a1,s2,0
    2360:	00098513          	addi	a0,s3,0
    2364:	04e12023          	sw	a4,64(sp)
    2368:	755070ef          	jal	ra,a2bc <__sprint_r>
    236c:	260512e3          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2370:	04012703          	lw	a4,64(sp)
    2374:	0ec10593          	addi	a1,sp,236
    2378:	00700f13          	addi	t5,zero,7
    237c:	0000fe17          	auipc	t3,0xf
    2380:	17ce0e13          	addi	t3,t3,380 # 114f8 <blanks.4513>
    2384:	01000e93          	addi	t4,zero,16
    2388:	ff070713          	addi	a4,a4,-16
    238c:	00058c13          	addi	s8,a1,0
    2390:	fa9fe06f          	jal	zero,1338 <_vfprintf_r+0x470>
    2394:	01068693          	addi	a3,a3,16
    2398:	010c2223          	sw	a6,4(s8)
    239c:	0cd12623          	sw	a3,204(sp)
    23a0:	0ce12423          	sw	a4,200(sp)
    23a4:	02ee5663          	bge	t3,a4,23d0 <_vfprintf_r+0x1508>
    23a8:	0c410613          	addi	a2,sp,196
    23ac:	00090593          	addi	a1,s2,0
    23b0:	00098513          	addi	a0,s3,0
    23b4:	02f12c23          	sw	a5,56(sp)
    23b8:	705070ef          	jal	ra,a2bc <__sprint_r>
    23bc:	20051ae3          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    23c0:	03812783          	lw	a5,56(sp)
    23c4:	0ec10613          	addi	a2,sp,236
    23c8:	00700e13          	addi	t3,zero,7
    23cc:	01000813          	addi	a6,zero,16
    23d0:	ff078793          	addi	a5,a5,-16
    23d4:	00060c13          	addi	s8,a2,0
    23d8:	888ff06f          	jal	zero,1460 <_vfprintf_r+0x598>
    23dc:	0000f597          	auipc	a1,0xf
    23e0:	12c58593          	addi	a1,a1,300 # 11508 <zeroes.4514>
    23e4:	01068693          	addi	a3,a3,16
    23e8:	00bc2023          	sw	a1,0(s8)
    23ec:	00fc2223          	sw	a5,4(s8)
    23f0:	0cd12623          	sw	a3,204(sp)
    23f4:	0ce12423          	sw	a4,200(sp)
    23f8:	02e85263          	bge	a6,a4,241c <_vfprintf_r+0x1554>
    23fc:	0c410613          	addi	a2,sp,196
    2400:	00090593          	addi	a1,s2,0
    2404:	00098513          	addi	a0,s3,0
    2408:	6b5070ef          	jal	ra,a2bc <__sprint_r>
    240c:	1c0512e3          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2410:	0ec10613          	addi	a2,sp,236
    2414:	00700813          	addi	a6,zero,7
    2418:	01000793          	addi	a5,zero,16
    241c:	ff0d0d13          	addi	s10,s10,-16
    2420:	00060c13          	addi	s8,a2,0
    2424:	8a4ff06f          	jal	zero,14c8 <_vfprintf_r+0x600>
    2428:	06500713          	addi	a4,zero,101
    242c:	73575e63          	bge	a4,s5,2b68 <_vfprintf_r+0x1ca0>
    2430:	0d012703          	lw	a4,208(sp)
    2434:	08010593          	addi	a1,sp,128
    2438:	09010513          	addi	a0,sp,144
    243c:	08e12823          	sw	a4,144(sp)
    2440:	0d412703          	lw	a4,212(sp)
    2444:	08012023          	sw	zero,128(sp)
    2448:	08012223          	sw	zero,132(sp)
    244c:	08e12a23          	sw	a4,148(sp)
    2450:	0d812703          	lw	a4,216(sp)
    2454:	08012423          	sw	zero,136(sp)
    2458:	08012623          	sw	zero,140(sp)
    245c:	08e12c23          	sw	a4,152(sp)
    2460:	0dc12703          	lw	a4,220(sp)
    2464:	08e12e23          	sw	a4,156(sp)
    2468:	39d0b0ef          	jal	ra,e004 <__eqtf2>
    246c:	12051c63          	bne	a0,zero,25a4 <_vfprintf_r+0x16dc>
    2470:	0000f797          	auipc	a5,0xf
    2474:	0e078793          	addi	a5,a5,224 # 11550 <zeroes.4514+0x48>
    2478:	00fc2023          	sw	a5,0(s8)
    247c:	00100793          	addi	a5,zero,1
    2480:	00fc2223          	sw	a5,4(s8)
    2484:	0c812783          	lw	a5,200(sp)
    2488:	001d0d13          	addi	s10,s10,1
    248c:	0da12623          	sw	s10,204(sp)
    2490:	00178793          	addi	a5,a5,1
    2494:	0cf12423          	sw	a5,200(sp)
    2498:	00700713          	addi	a4,zero,7
    249c:	008c0c13          	addi	s8,s8,8
    24a0:	00f75e63          	bge	a4,a5,24bc <_vfprintf_r+0x15f4>
    24a4:	0c410613          	addi	a2,sp,196
    24a8:	00090593          	addi	a1,s2,0
    24ac:	00098513          	addi	a0,s3,0
    24b0:	60d070ef          	jal	ra,a2bc <__sprint_r>
    24b4:	10051ee3          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    24b8:	0ec10c13          	addi	s8,sp,236
    24bc:	0ac12783          	lw	a5,172(sp)
    24c0:	0147c663          	blt	a5,s4,24cc <_vfprintf_r+0x1604>
    24c4:	00147793          	andi	a5,s0,1
    24c8:	22078463          	beq	a5,zero,26f0 <_vfprintf_r+0x1828>
    24cc:	02812783          	lw	a5,40(sp)
    24d0:	01412703          	lw	a4,20(sp)
    24d4:	008c0c13          	addi	s8,s8,8
    24d8:	fefc2c23          	sw	a5,-8(s8)
    24dc:	01412783          	lw	a5,20(sp)
    24e0:	fefc2e23          	sw	a5,-4(s8)
    24e4:	0cc12783          	lw	a5,204(sp)
    24e8:	00e787b3          	add	a5,a5,a4
    24ec:	0cf12623          	sw	a5,204(sp)
    24f0:	0c812783          	lw	a5,200(sp)
    24f4:	00700713          	addi	a4,zero,7
    24f8:	00178793          	addi	a5,a5,1
    24fc:	0cf12423          	sw	a5,200(sp)
    2500:	00f75e63          	bge	a4,a5,251c <_vfprintf_r+0x1654>
    2504:	0c410613          	addi	a2,sp,196
    2508:	00090593          	addi	a1,s2,0
    250c:	00098513          	addi	a0,s3,0
    2510:	5ad070ef          	jal	ra,a2bc <__sprint_r>
    2514:	0a051ee3          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2518:	0ec10c13          	addi	s8,sp,236
    251c:	fffa0493          	addi	s1,s4,-1
    2520:	1c905863          	bge	zero,s1,26f0 <_vfprintf_r+0x1828>
    2524:	01000a93          	addi	s5,zero,16
    2528:	00700b93          	addi	s7,zero,7
    252c:	0c812783          	lw	a5,200(sp)
    2530:	0000f617          	auipc	a2,0xf
    2534:	fd860613          	addi	a2,a2,-40 # 11508 <zeroes.4514>
    2538:	00cc2023          	sw	a2,0(s8)
    253c:	0cc12703          	lw	a4,204(sp)
    2540:	00178793          	addi	a5,a5,1
    2544:	008c0693          	addi	a3,s8,8
    2548:	029ac263          	blt	s5,s1,256c <_vfprintf_r+0x16a4>
    254c:	009c2223          	sw	s1,4(s8)
    2550:	00e484b3          	add	s1,s1,a4
    2554:	0c912623          	sw	s1,204(sp)
    2558:	0cf12423          	sw	a5,200(sp)
    255c:	00700713          	addi	a4,zero,7
    2560:	00068c13          	addi	s8,a3,0
    2564:	18f75663          	bge	a4,a5,26f0 <_vfprintf_r+0x1828>
    2568:	ff1fe06f          	jal	zero,1558 <_vfprintf_r+0x690>
    256c:	01070713          	addi	a4,a4,16
    2570:	015c2223          	sw	s5,4(s8)
    2574:	0ce12623          	sw	a4,204(sp)
    2578:	0cf12423          	sw	a5,200(sp)
    257c:	00fbde63          	bge	s7,a5,2598 <_vfprintf_r+0x16d0>
    2580:	0c410613          	addi	a2,sp,196
    2584:	00090593          	addi	a1,s2,0
    2588:	00098513          	addi	a0,s3,0
    258c:	531070ef          	jal	ra,a2bc <__sprint_r>
    2590:	040510e3          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2594:	0ec10693          	addi	a3,sp,236
    2598:	ff048493          	addi	s1,s1,-16
    259c:	00068c13          	addi	s8,a3,0
    25a0:	f8dff06f          	jal	zero,252c <_vfprintf_r+0x1664>
    25a4:	0ac12703          	lw	a4,172(sp)
    25a8:	1ce04863          	blt	zero,a4,2778 <_vfprintf_r+0x18b0>
    25ac:	0000f797          	auipc	a5,0xf
    25b0:	fa478793          	addi	a5,a5,-92 # 11550 <zeroes.4514+0x48>
    25b4:	00fc2023          	sw	a5,0(s8)
    25b8:	00100793          	addi	a5,zero,1
    25bc:	00fc2223          	sw	a5,4(s8)
    25c0:	0c812783          	lw	a5,200(sp)
    25c4:	001d0d13          	addi	s10,s10,1
    25c8:	0da12623          	sw	s10,204(sp)
    25cc:	00178793          	addi	a5,a5,1
    25d0:	0cf12423          	sw	a5,200(sp)
    25d4:	00700713          	addi	a4,zero,7
    25d8:	008c0c13          	addi	s8,s8,8
    25dc:	00f75e63          	bge	a4,a5,25f8 <_vfprintf_r+0x1730>
    25e0:	0c410613          	addi	a2,sp,196
    25e4:	00090593          	addi	a1,s2,0
    25e8:	00098513          	addi	a0,s3,0
    25ec:	4d1070ef          	jal	ra,a2bc <__sprint_r>
    25f0:	7e051063          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    25f4:	0ec10c13          	addi	s8,sp,236
    25f8:	0ac12783          	lw	a5,172(sp)
    25fc:	00147693          	andi	a3,s0,1
    2600:	0cc12703          	lw	a4,204(sp)
    2604:	00fa67b3          	or	a5,s4,a5
    2608:	00d7e7b3          	or	a5,a5,a3
    260c:	0e078263          	beq	a5,zero,26f0 <_vfprintf_r+0x1828>
    2610:	02812783          	lw	a5,40(sp)
    2614:	008c0893          	addi	a7,s8,8
    2618:	00fc2023          	sw	a5,0(s8)
    261c:	01412783          	lw	a5,20(sp)
    2620:	00fc2223          	sw	a5,4(s8)
    2624:	00e787b3          	add	a5,a5,a4
    2628:	0cf12623          	sw	a5,204(sp)
    262c:	0c812783          	lw	a5,200(sp)
    2630:	00700713          	addi	a4,zero,7
    2634:	00178793          	addi	a5,a5,1
    2638:	0cf12423          	sw	a5,200(sp)
    263c:	00f75e63          	bge	a4,a5,2658 <_vfprintf_r+0x1790>
    2640:	0c410613          	addi	a2,sp,196
    2644:	00090593          	addi	a1,s2,0
    2648:	00098513          	addi	a0,s3,0
    264c:	471070ef          	jal	ra,a2bc <__sprint_r>
    2650:	78051063          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2654:	0ec10893          	addi	a7,sp,236
    2658:	0ac12a83          	lw	s5,172(sp)
    265c:	060ad263          	bge	s5,zero,26c0 <_vfprintf_r+0x17f8>
    2660:	41500ab3          	sub	s5,zero,s5
    2664:	00088713          	addi	a4,a7,0
    2668:	01000b93          	addi	s7,zero,16
    266c:	00700c13          	addi	s8,zero,7
    2670:	0c812783          	lw	a5,200(sp)
    2674:	0000f617          	auipc	a2,0xf
    2678:	e9460613          	addi	a2,a2,-364 # 11508 <zeroes.4514>
    267c:	00c72023          	sw	a2,0(a4)
    2680:	0cc12683          	lw	a3,204(sp)
    2684:	00178793          	addi	a5,a5,1
    2688:	00888893          	addi	a7,a7,8
    268c:	0b5bca63          	blt	s7,s5,2740 <_vfprintf_r+0x1878>
    2690:	01572223          	sw	s5,4(a4)
    2694:	00da8ab3          	add	s5,s5,a3
    2698:	0d512623          	sw	s5,204(sp)
    269c:	0cf12423          	sw	a5,200(sp)
    26a0:	00700713          	addi	a4,zero,7
    26a4:	00f75e63          	bge	a4,a5,26c0 <_vfprintf_r+0x17f8>
    26a8:	0c410613          	addi	a2,sp,196
    26ac:	00090593          	addi	a1,s2,0
    26b0:	00098513          	addi	a0,s3,0
    26b4:	409070ef          	jal	ra,a2bc <__sprint_r>
    26b8:	70051c63          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    26bc:	0ec10893          	addi	a7,sp,236
    26c0:	0cc12783          	lw	a5,204(sp)
    26c4:	0098a023          	sw	s1,0(a7)
    26c8:	0148a223          	sw	s4,4(a7)
    26cc:	014787b3          	add	a5,a5,s4
    26d0:	0cf12623          	sw	a5,204(sp)
    26d4:	0c812783          	lw	a5,200(sp)
    26d8:	00700713          	addi	a4,zero,7
    26dc:	00888c13          	addi	s8,a7,8
    26e0:	00178793          	addi	a5,a5,1
    26e4:	0cf12423          	sw	a5,200(sp)
    26e8:	00f75463          	bge	a4,a5,26f0 <_vfprintf_r+0x1828>
    26ec:	e6dfe06f          	jal	zero,1558 <_vfprintf_r+0x690>
    26f0:	00447413          	andi	s0,s0,4
    26f4:	66041e63          	bne	s0,zero,2d70 <_vfprintf_r+0x1ea8>
    26f8:	01c12a83          	lw	s5,28(sp)
    26fc:	02012783          	lw	a5,32(sp)
    2700:	00fad463          	bge	s5,a5,2708 <_vfprintf_r+0x1840>
    2704:	00078a93          	addi	s5,a5,0
    2708:	01812783          	lw	a5,24(sp)
    270c:	015787b3          	add	a5,a5,s5
    2710:	00f12c23          	sw	a5,24(sp)
    2714:	0cc12783          	lw	a5,204(sp)
    2718:	00078c63          	beq	a5,zero,2730 <_vfprintf_r+0x1868>
    271c:	0c410613          	addi	a2,sp,196
    2720:	00090593          	addi	a1,s2,0
    2724:	00098513          	addi	a0,s3,0
    2728:	395070ef          	jal	ra,a2bc <__sprint_r>
    272c:	6a051263          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2730:	0c012423          	sw	zero,200(sp)
    2734:	6e0b1663          	bne	s6,zero,2e20 <_vfprintf_r+0x1f58>
    2738:	0ec10c13          	addi	s8,sp,236
    273c:	819ff06f          	jal	zero,1f54 <_vfprintf_r+0x108c>
    2740:	01068693          	addi	a3,a3,16
    2744:	01772223          	sw	s7,4(a4)
    2748:	0cd12623          	sw	a3,204(sp)
    274c:	0cf12423          	sw	a5,200(sp)
    2750:	00fc5e63          	bge	s8,a5,276c <_vfprintf_r+0x18a4>
    2754:	0c410613          	addi	a2,sp,196
    2758:	00090593          	addi	a1,s2,0
    275c:	00098513          	addi	a0,s3,0
    2760:	35d070ef          	jal	ra,a2bc <__sprint_r>
    2764:	66051663          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2768:	0ec10893          	addi	a7,sp,236
    276c:	ff0a8a93          	addi	s5,s5,-16
    2770:	00088713          	addi	a4,a7,0
    2774:	efdff06f          	jal	zero,2670 <_vfprintf_r+0x17a8>
    2778:	000c8a93          	addi	s5,s9,0
    277c:	019a5463          	bge	s4,s9,2784 <_vfprintf_r+0x18bc>
    2780:	000a0a93          	addi	s5,s4,0
    2784:	05505263          	bge	zero,s5,27c8 <_vfprintf_r+0x1900>
    2788:	0c812703          	lw	a4,200(sp)
    278c:	01aa8d33          	add	s10,s5,s10
    2790:	009c2023          	sw	s1,0(s8)
    2794:	00170713          	addi	a4,a4,1
    2798:	015c2223          	sw	s5,4(s8)
    279c:	0da12623          	sw	s10,204(sp)
    27a0:	0ce12423          	sw	a4,200(sp)
    27a4:	00700693          	addi	a3,zero,7
    27a8:	008c0c13          	addi	s8,s8,8
    27ac:	00e6de63          	bge	a3,a4,27c8 <_vfprintf_r+0x1900>
    27b0:	0c410613          	addi	a2,sp,196
    27b4:	00090593          	addi	a1,s2,0
    27b8:	00098513          	addi	a0,s3,0
    27bc:	301070ef          	jal	ra,a2bc <__sprint_r>
    27c0:	60051863          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    27c4:	0ec10c13          	addi	s8,sp,236
    27c8:	000ad463          	bge	s5,zero,27d0 <_vfprintf_r+0x1908>
    27cc:	00000a93          	addi	s5,zero,0
    27d0:	415c8ab3          	sub	s5,s9,s5
    27d4:	07505063          	bge	zero,s5,2834 <_vfprintf_r+0x196c>
    27d8:	01000d13          	addi	s10,zero,16
    27dc:	00700d93          	addi	s11,zero,7
    27e0:	0c812703          	lw	a4,200(sp)
    27e4:	0000f797          	auipc	a5,0xf
    27e8:	d2478793          	addi	a5,a5,-732 # 11508 <zeroes.4514>
    27ec:	00fc2023          	sw	a5,0(s8)
    27f0:	0cc12683          	lw	a3,204(sp)
    27f4:	00170713          	addi	a4,a4,1
    27f8:	008c0613          	addi	a2,s8,8
    27fc:	1b5d4063          	blt	s10,s5,299c <_vfprintf_r+0x1ad4>
    2800:	015c2223          	sw	s5,4(s8)
    2804:	00da8ab3          	add	s5,s5,a3
    2808:	0d512623          	sw	s5,204(sp)
    280c:	0ce12423          	sw	a4,200(sp)
    2810:	00700693          	addi	a3,zero,7
    2814:	00060c13          	addi	s8,a2,0
    2818:	00e6de63          	bge	a3,a4,2834 <_vfprintf_r+0x196c>
    281c:	0c410613          	addi	a2,sp,196
    2820:	00090593          	addi	a1,s2,0
    2824:	00098513          	addi	a0,s3,0
    2828:	295070ef          	jal	ra,a2bc <__sprint_r>
    282c:	5a051263          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2830:	0ec10c13          	addi	s8,sp,236
    2834:	40047793          	andi	a5,s0,1024
    2838:	01948ab3          	add	s5,s1,s9
    283c:	02078263          	beq	a5,zero,2860 <_vfprintf_r+0x1998>
    2840:	00700d13          	addi	s10,zero,7
    2844:	01448db3          	add	s11,s1,s4
    2848:	00812783          	lw	a5,8(sp)
    284c:	180b9463          	bne	s7,zero,29d4 <_vfprintf_r+0x1b0c>
    2850:	18079463          	bne	a5,zero,29d8 <_vfprintf_r+0x1b10>
    2854:	014487b3          	add	a5,s1,s4
    2858:	0157f463          	bgeu	a5,s5,2860 <_vfprintf_r+0x1998>
    285c:	00078a93          	addi	s5,a5,0
    2860:	0ac12783          	lw	a5,172(sp)
    2864:	0147c663          	blt	a5,s4,2870 <_vfprintf_r+0x19a8>
    2868:	00147793          	andi	a5,s0,1
    286c:	04078a63          	beq	a5,zero,28c0 <_vfprintf_r+0x19f8>
    2870:	02812783          	lw	a5,40(sp)
    2874:	01412703          	lw	a4,20(sp)
    2878:	008c0c13          	addi	s8,s8,8
    287c:	fefc2c23          	sw	a5,-8(s8)
    2880:	01412783          	lw	a5,20(sp)
    2884:	fefc2e23          	sw	a5,-4(s8)
    2888:	0cc12783          	lw	a5,204(sp)
    288c:	00e787b3          	add	a5,a5,a4
    2890:	0cf12623          	sw	a5,204(sp)
    2894:	0c812783          	lw	a5,200(sp)
    2898:	00700713          	addi	a4,zero,7
    289c:	00178793          	addi	a5,a5,1
    28a0:	0cf12423          	sw	a5,200(sp)
    28a4:	00f75e63          	bge	a4,a5,28c0 <_vfprintf_r+0x19f8>
    28a8:	0c410613          	addi	a2,sp,196
    28ac:	00090593          	addi	a1,s2,0
    28b0:	00098513          	addi	a0,s3,0
    28b4:	209070ef          	jal	ra,a2bc <__sprint_r>
    28b8:	50051c63          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    28bc:	0ec10c13          	addi	s8,sp,236
    28c0:	014484b3          	add	s1,s1,s4
    28c4:	415487b3          	sub	a5,s1,s5
    28c8:	0ac12483          	lw	s1,172(sp)
    28cc:	409a04b3          	sub	s1,s4,s1
    28d0:	0097d463          	bge	a5,s1,28d8 <_vfprintf_r+0x1a10>
    28d4:	00078493          	addi	s1,a5,0
    28d8:	04905463          	bge	zero,s1,2920 <_vfprintf_r+0x1a58>
    28dc:	0cc12783          	lw	a5,204(sp)
    28e0:	015c2023          	sw	s5,0(s8)
    28e4:	009c2223          	sw	s1,4(s8)
    28e8:	00f487b3          	add	a5,s1,a5
    28ec:	0cf12623          	sw	a5,204(sp)
    28f0:	0c812783          	lw	a5,200(sp)
    28f4:	00700713          	addi	a4,zero,7
    28f8:	008c0c13          	addi	s8,s8,8
    28fc:	00178793          	addi	a5,a5,1
    2900:	0cf12423          	sw	a5,200(sp)
    2904:	00f75e63          	bge	a4,a5,2920 <_vfprintf_r+0x1a58>
    2908:	0c410613          	addi	a2,sp,196
    290c:	00090593          	addi	a1,s2,0
    2910:	00098513          	addi	a0,s3,0
    2914:	1a9070ef          	jal	ra,a2bc <__sprint_r>
    2918:	4a051c63          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    291c:	0ec10c13          	addi	s8,sp,236
    2920:	00048793          	addi	a5,s1,0
    2924:	0004d463          	bge	s1,zero,292c <_vfprintf_r+0x1a64>
    2928:	00000793          	addi	a5,zero,0
    292c:	0ac12483          	lw	s1,172(sp)
    2930:	409a04b3          	sub	s1,s4,s1
    2934:	40f484b3          	sub	s1,s1,a5
    2938:	da905ce3          	bge	zero,s1,26f0 <_vfprintf_r+0x1828>
    293c:	01000a93          	addi	s5,zero,16
    2940:	00700b93          	addi	s7,zero,7
    2944:	0c812783          	lw	a5,200(sp)
    2948:	0000f617          	auipc	a2,0xf
    294c:	bc060613          	addi	a2,a2,-1088 # 11508 <zeroes.4514>
    2950:	00cc2023          	sw	a2,0(s8)
    2954:	0cc12703          	lw	a4,204(sp)
    2958:	00178793          	addi	a5,a5,1
    295c:	008c0693          	addi	a3,s8,8
    2960:	be9ad6e3          	bge	s5,s1,254c <_vfprintf_r+0x1684>
    2964:	01070713          	addi	a4,a4,16
    2968:	015c2223          	sw	s5,4(s8)
    296c:	0ce12623          	sw	a4,204(sp)
    2970:	0cf12423          	sw	a5,200(sp)
    2974:	00fbde63          	bge	s7,a5,2990 <_vfprintf_r+0x1ac8>
    2978:	0c410613          	addi	a2,sp,196
    297c:	00090593          	addi	a1,s2,0
    2980:	00098513          	addi	a0,s3,0
    2984:	139070ef          	jal	ra,a2bc <__sprint_r>
    2988:	44051463          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    298c:	0ec10693          	addi	a3,sp,236
    2990:	ff048493          	addi	s1,s1,-16
    2994:	00068c13          	addi	s8,a3,0
    2998:	fadff06f          	jal	zero,2944 <_vfprintf_r+0x1a7c>
    299c:	01068693          	addi	a3,a3,16
    29a0:	01ac2223          	sw	s10,4(s8)
    29a4:	0cd12623          	sw	a3,204(sp)
    29a8:	0ce12423          	sw	a4,200(sp)
    29ac:	00edde63          	bge	s11,a4,29c8 <_vfprintf_r+0x1b00>
    29b0:	0c410613          	addi	a2,sp,196
    29b4:	00090593          	addi	a1,s2,0
    29b8:	00098513          	addi	a0,s3,0
    29bc:	101070ef          	jal	ra,a2bc <__sprint_r>
    29c0:	40051863          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    29c4:	0ec10613          	addi	a2,sp,236
    29c8:	ff0a8a93          	addi	s5,s5,-16
    29cc:	00060c13          	addi	s8,a2,0
    29d0:	e11ff06f          	jal	zero,27e0 <_vfprintf_r+0x1918>
    29d4:	0e078663          	beq	a5,zero,2ac0 <_vfprintf_r+0x1bf8>
    29d8:	00812783          	lw	a5,8(sp)
    29dc:	fff78793          	addi	a5,a5,-1
    29e0:	00f12423          	sw	a5,8(sp)
    29e4:	02c12783          	lw	a5,44(sp)
    29e8:	02412703          	lw	a4,36(sp)
    29ec:	008c0c13          	addi	s8,s8,8
    29f0:	fefc2c23          	sw	a5,-8(s8)
    29f4:	02412783          	lw	a5,36(sp)
    29f8:	fefc2e23          	sw	a5,-4(s8)
    29fc:	0cc12783          	lw	a5,204(sp)
    2a00:	00e787b3          	add	a5,a5,a4
    2a04:	0cf12623          	sw	a5,204(sp)
    2a08:	0c812783          	lw	a5,200(sp)
    2a0c:	00178793          	addi	a5,a5,1
    2a10:	0cf12423          	sw	a5,200(sp)
    2a14:	00fd5e63          	bge	s10,a5,2a30 <_vfprintf_r+0x1b68>
    2a18:	0c410613          	addi	a2,sp,196
    2a1c:	00090593          	addi	a1,s2,0
    2a20:	00098513          	addi	a0,s3,0
    2a24:	099070ef          	jal	ra,a2bc <__sprint_r>
    2a28:	3a051463          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2a2c:	0ec10c13          	addi	s8,sp,236
    2a30:	00412783          	lw	a5,4(sp)
    2a34:	415d8733          	sub	a4,s11,s5
    2a38:	0007c783          	lbu	a5,0(a5)
    2a3c:	00f75463          	bge	a4,a5,2a44 <_vfprintf_r+0x1b7c>
    2a40:	00070793          	addi	a5,a4,0
    2a44:	04f05663          	bge	zero,a5,2a90 <_vfprintf_r+0x1bc8>
    2a48:	0cc12703          	lw	a4,204(sp)
    2a4c:	015c2023          	sw	s5,0(s8)
    2a50:	00fc2223          	sw	a5,4(s8)
    2a54:	00e78733          	add	a4,a5,a4
    2a58:	0ce12623          	sw	a4,204(sp)
    2a5c:	0c812703          	lw	a4,200(sp)
    2a60:	008c0c13          	addi	s8,s8,8
    2a64:	00170713          	addi	a4,a4,1
    2a68:	0ce12423          	sw	a4,200(sp)
    2a6c:	02ed5263          	bge	s10,a4,2a90 <_vfprintf_r+0x1bc8>
    2a70:	0c410613          	addi	a2,sp,196
    2a74:	00090593          	addi	a1,s2,0
    2a78:	00098513          	addi	a0,s3,0
    2a7c:	02f12c23          	sw	a5,56(sp)
    2a80:	03d070ef          	jal	ra,a2bc <__sprint_r>
    2a84:	34051663          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2a88:	03812783          	lw	a5,56(sp)
    2a8c:	0ec10c13          	addi	s8,sp,236
    2a90:	00078713          	addi	a4,a5,0
    2a94:	0007d463          	bge	a5,zero,2a9c <_vfprintf_r+0x1bd4>
    2a98:	00000713          	addi	a4,zero,0
    2a9c:	00412783          	lw	a5,4(sp)
    2aa0:	01000813          	addi	a6,zero,16
    2aa4:	0007c783          	lbu	a5,0(a5)
    2aa8:	40e787b3          	sub	a5,a5,a4
    2aac:	06f04463          	blt	zero,a5,2b14 <_vfprintf_r+0x1c4c>
    2ab0:	00412783          	lw	a5,4(sp)
    2ab4:	0007c783          	lbu	a5,0(a5)
    2ab8:	00fa8ab3          	add	s5,s5,a5
    2abc:	d8dff06f          	jal	zero,2848 <_vfprintf_r+0x1980>
    2ac0:	00412783          	lw	a5,4(sp)
    2ac4:	fffb8b93          	addi	s7,s7,-1
    2ac8:	fff78793          	addi	a5,a5,-1
    2acc:	00f12223          	sw	a5,4(sp)
    2ad0:	f15ff06f          	jal	zero,29e4 <_vfprintf_r+0x1b1c>
    2ad4:	01068693          	addi	a3,a3,16
    2ad8:	010c2223          	sw	a6,4(s8)
    2adc:	0cd12623          	sw	a3,204(sp)
    2ae0:	0ce12423          	sw	a4,200(sp)
    2ae4:	02ed5463          	bge	s10,a4,2b0c <_vfprintf_r+0x1c44>
    2ae8:	0c410613          	addi	a2,sp,196
    2aec:	00090593          	addi	a1,s2,0
    2af0:	00098513          	addi	a0,s3,0
    2af4:	02f12c23          	sw	a5,56(sp)
    2af8:	7c4070ef          	jal	ra,a2bc <__sprint_r>
    2afc:	2c051a63          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2b00:	03812783          	lw	a5,56(sp)
    2b04:	0ec10613          	addi	a2,sp,236
    2b08:	01000813          	addi	a6,zero,16
    2b0c:	ff078793          	addi	a5,a5,-16
    2b10:	00060c13          	addi	s8,a2,0
    2b14:	0c812703          	lw	a4,200(sp)
    2b18:	0000f597          	auipc	a1,0xf
    2b1c:	9f058593          	addi	a1,a1,-1552 # 11508 <zeroes.4514>
    2b20:	00bc2023          	sw	a1,0(s8)
    2b24:	0cc12683          	lw	a3,204(sp)
    2b28:	00170713          	addi	a4,a4,1
    2b2c:	008c0613          	addi	a2,s8,8
    2b30:	faf842e3          	blt	a6,a5,2ad4 <_vfprintf_r+0x1c0c>
    2b34:	00fc2223          	sw	a5,4(s8)
    2b38:	00d787b3          	add	a5,a5,a3
    2b3c:	0cf12623          	sw	a5,204(sp)
    2b40:	0ce12423          	sw	a4,200(sp)
    2b44:	00060c13          	addi	s8,a2,0
    2b48:	f6ed54e3          	bge	s10,a4,2ab0 <_vfprintf_r+0x1be8>
    2b4c:	0c410613          	addi	a2,sp,196
    2b50:	00090593          	addi	a1,s2,0
    2b54:	00098513          	addi	a0,s3,0
    2b58:	764070ef          	jal	ra,a2bc <__sprint_r>
    2b5c:	26051a63          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2b60:	0ec10c13          	addi	s8,sp,236
    2b64:	f4dff06f          	jal	zero,2ab0 <_vfprintf_r+0x1be8>
    2b68:	0c812783          	lw	a5,200(sp)
    2b6c:	00100713          	addi	a4,zero,1
    2b70:	009c2023          	sw	s1,0(s8)
    2b74:	001d0d13          	addi	s10,s10,1
    2b78:	00178793          	addi	a5,a5,1
    2b7c:	008c0b93          	addi	s7,s8,8
    2b80:	01474663          	blt	a4,s4,2b8c <_vfprintf_r+0x1cc4>
    2b84:	00147693          	andi	a3,s0,1
    2b88:	1c068863          	beq	a3,zero,2d58 <_vfprintf_r+0x1e90>
    2b8c:	00100713          	addi	a4,zero,1
    2b90:	00ec2223          	sw	a4,4(s8)
    2b94:	0da12623          	sw	s10,204(sp)
    2b98:	0cf12423          	sw	a5,200(sp)
    2b9c:	00700713          	addi	a4,zero,7
    2ba0:	00f75e63          	bge	a4,a5,2bbc <_vfprintf_r+0x1cf4>
    2ba4:	0c410613          	addi	a2,sp,196
    2ba8:	00090593          	addi	a1,s2,0
    2bac:	00098513          	addi	a0,s3,0
    2bb0:	70c070ef          	jal	ra,a2bc <__sprint_r>
    2bb4:	20051e63          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2bb8:	0ec10b93          	addi	s7,sp,236
    2bbc:	02812783          	lw	a5,40(sp)
    2bc0:	01412703          	lw	a4,20(sp)
    2bc4:	008b8b93          	addi	s7,s7,8
    2bc8:	fefbac23          	sw	a5,-8(s7)
    2bcc:	01412783          	lw	a5,20(sp)
    2bd0:	fefbae23          	sw	a5,-4(s7)
    2bd4:	0cc12783          	lw	a5,204(sp)
    2bd8:	00e787b3          	add	a5,a5,a4
    2bdc:	0cf12623          	sw	a5,204(sp)
    2be0:	0c812783          	lw	a5,200(sp)
    2be4:	00700713          	addi	a4,zero,7
    2be8:	00178793          	addi	a5,a5,1
    2bec:	0cf12423          	sw	a5,200(sp)
    2bf0:	00f75e63          	bge	a4,a5,2c0c <_vfprintf_r+0x1d44>
    2bf4:	0c410613          	addi	a2,sp,196
    2bf8:	00090593          	addi	a1,s2,0
    2bfc:	00098513          	addi	a0,s3,0
    2c00:	6bc070ef          	jal	ra,a2bc <__sprint_r>
    2c04:	1c051663          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2c08:	0ec10b93          	addi	s7,sp,236
    2c0c:	0d012783          	lw	a5,208(sp)
    2c10:	08010593          	addi	a1,sp,128
    2c14:	09010513          	addi	a0,sp,144
    2c18:	08f12823          	sw	a5,144(sp)
    2c1c:	0d412783          	lw	a5,212(sp)
    2c20:	fffa0a93          	addi	s5,s4,-1
    2c24:	08012023          	sw	zero,128(sp)
    2c28:	08f12a23          	sw	a5,148(sp)
    2c2c:	0d812783          	lw	a5,216(sp)
    2c30:	08012223          	sw	zero,132(sp)
    2c34:	08012423          	sw	zero,136(sp)
    2c38:	08f12c23          	sw	a5,152(sp)
    2c3c:	0dc12783          	lw	a5,220(sp)
    2c40:	08012623          	sw	zero,140(sp)
    2c44:	08f12e23          	sw	a5,156(sp)
    2c48:	3bc0b0ef          	jal	ra,e004 <__eqtf2>
    2c4c:	08050663          	beq	a0,zero,2cd8 <_vfprintf_r+0x1e10>
    2c50:	0cc12783          	lw	a5,204(sp)
    2c54:	0c812703          	lw	a4,200(sp)
    2c58:	00148493          	addi	s1,s1,1
    2c5c:	fff78793          	addi	a5,a5,-1
    2c60:	014787b3          	add	a5,a5,s4
    2c64:	00170713          	addi	a4,a4,1
    2c68:	009ba023          	sw	s1,0(s7)
    2c6c:	015ba223          	sw	s5,4(s7)
    2c70:	0cf12623          	sw	a5,204(sp)
    2c74:	0ce12423          	sw	a4,200(sp)
    2c78:	00700793          	addi	a5,zero,7
    2c7c:	008b8b93          	addi	s7,s7,8
    2c80:	00e7de63          	bge	a5,a4,2c9c <_vfprintf_r+0x1dd4>
    2c84:	0c410613          	addi	a2,sp,196
    2c88:	00090593          	addi	a1,s2,0
    2c8c:	00098513          	addi	a0,s3,0
    2c90:	62c070ef          	jal	ra,a2bc <__sprint_r>
    2c94:	12051e63          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2c98:	0ec10b93          	addi	s7,sp,236
    2c9c:	0b410793          	addi	a5,sp,180
    2ca0:	00fba023          	sw	a5,0(s7)
    2ca4:	03012783          	lw	a5,48(sp)
    2ca8:	03012703          	lw	a4,48(sp)
    2cac:	008b8c13          	addi	s8,s7,8
    2cb0:	00fba223          	sw	a5,4(s7)
    2cb4:	0cc12783          	lw	a5,204(sp)
    2cb8:	00e787b3          	add	a5,a5,a4
    2cbc:	0cf12623          	sw	a5,204(sp)
    2cc0:	0c812783          	lw	a5,200(sp)
    2cc4:	00700713          	addi	a4,zero,7
    2cc8:	00178793          	addi	a5,a5,1
    2ccc:	0cf12423          	sw	a5,200(sp)
    2cd0:	a2f750e3          	bge	a4,a5,26f0 <_vfprintf_r+0x1828>
    2cd4:	885fe06f          	jal	zero,1558 <_vfprintf_r+0x690>
    2cd8:	fd5052e3          	bge	zero,s5,2c9c <_vfprintf_r+0x1dd4>
    2cdc:	01000493          	addi	s1,zero,16
    2ce0:	00700c13          	addi	s8,zero,7
    2ce4:	0c812703          	lw	a4,200(sp)
    2ce8:	0000f617          	auipc	a2,0xf
    2cec:	82060613          	addi	a2,a2,-2016 # 11508 <zeroes.4514>
    2cf0:	00cba023          	sw	a2,0(s7)
    2cf4:	0cc12783          	lw	a5,204(sp)
    2cf8:	00170713          	addi	a4,a4,1
    2cfc:	008b8693          	addi	a3,s7,8
    2d00:	0354c063          	blt	s1,s5,2d20 <_vfprintf_r+0x1e58>
    2d04:	00fa87b3          	add	a5,s5,a5
    2d08:	015ba223          	sw	s5,4(s7)
    2d0c:	0cf12623          	sw	a5,204(sp)
    2d10:	0ce12423          	sw	a4,200(sp)
    2d14:	00700793          	addi	a5,zero,7
    2d18:	00068b93          	addi	s7,a3,0
    2d1c:	f65ff06f          	jal	zero,2c80 <_vfprintf_r+0x1db8>
    2d20:	01078793          	addi	a5,a5,16
    2d24:	009ba223          	sw	s1,4(s7)
    2d28:	0cf12623          	sw	a5,204(sp)
    2d2c:	0ce12423          	sw	a4,200(sp)
    2d30:	00ec5e63          	bge	s8,a4,2d4c <_vfprintf_r+0x1e84>
    2d34:	0c410613          	addi	a2,sp,196
    2d38:	00090593          	addi	a1,s2,0
    2d3c:	00098513          	addi	a0,s3,0
    2d40:	57c070ef          	jal	ra,a2bc <__sprint_r>
    2d44:	08051663          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2d48:	0ec10693          	addi	a3,sp,236
    2d4c:	ff0a8a93          	addi	s5,s5,-16
    2d50:	00068b93          	addi	s7,a3,0
    2d54:	f91ff06f          	jal	zero,2ce4 <_vfprintf_r+0x1e1c>
    2d58:	00ec2223          	sw	a4,4(s8)
    2d5c:	0da12623          	sw	s10,204(sp)
    2d60:	0cf12423          	sw	a5,200(sp)
    2d64:	00700713          	addi	a4,zero,7
    2d68:	f2f75ae3          	bge	a4,a5,2c9c <_vfprintf_r+0x1dd4>
    2d6c:	f19ff06f          	jal	zero,2c84 <_vfprintf_r+0x1dbc>
    2d70:	01c12783          	lw	a5,28(sp)
    2d74:	02012703          	lw	a4,32(sp)
    2d78:	40e78433          	sub	s0,a5,a4
    2d7c:	96805ee3          	bge	zero,s0,26f8 <_vfprintf_r+0x1830>
    2d80:	01000a93          	addi	s5,zero,16
    2d84:	0000e497          	auipc	s1,0xe
    2d88:	77448493          	addi	s1,s1,1908 # 114f8 <blanks.4513>
    2d8c:	00700b93          	addi	s7,zero,7
    2d90:	0c812783          	lw	a5,200(sp)
    2d94:	009c2023          	sw	s1,0(s8)
    2d98:	0cc12703          	lw	a4,204(sp)
    2d9c:	00178793          	addi	a5,a5,1
    2da0:	048ac463          	blt	s5,s0,2de8 <_vfprintf_r+0x1f20>
    2da4:	008c2223          	sw	s0,4(s8)
    2da8:	00e40433          	add	s0,s0,a4
    2dac:	0c812623          	sw	s0,204(sp)
    2db0:	0cf12423          	sw	a5,200(sp)
    2db4:	00700713          	addi	a4,zero,7
    2db8:	94f750e3          	bge	a4,a5,26f8 <_vfprintf_r+0x1830>
    2dbc:	0c410613          	addi	a2,sp,196
    2dc0:	00090593          	addi	a1,s2,0
    2dc4:	00098513          	addi	a0,s3,0
    2dc8:	4f4070ef          	jal	ra,a2bc <__sprint_r>
    2dcc:	920506e3          	beq	a0,zero,26f8 <_vfprintf_r+0x1830>
    2dd0:	000b1463          	bne	s6,zero,2dd8 <_vfprintf_r+0x1f10>
    2dd4:	9e1fe06f          	jal	zero,17b4 <_vfprintf_r+0x8ec>
    2dd8:	000b0593          	addi	a1,s6,0
    2ddc:	00098513          	addi	a0,s3,0
    2de0:	28d000ef          	jal	ra,386c <_free_r>
    2de4:	9d1fe06f          	jal	zero,17b4 <_vfprintf_r+0x8ec>
    2de8:	01070713          	addi	a4,a4,16
    2dec:	015c2223          	sw	s5,4(s8)
    2df0:	0ce12623          	sw	a4,204(sp)
    2df4:	0cf12423          	sw	a5,200(sp)
    2df8:	008c0c13          	addi	s8,s8,8
    2dfc:	00fbde63          	bge	s7,a5,2e18 <_vfprintf_r+0x1f50>
    2e00:	0c410613          	addi	a2,sp,196
    2e04:	00090593          	addi	a1,s2,0
    2e08:	00098513          	addi	a0,s3,0
    2e0c:	4b0070ef          	jal	ra,a2bc <__sprint_r>
    2e10:	fc0510e3          	bne	a0,zero,2dd0 <_vfprintf_r+0x1f08>
    2e14:	0ec10c13          	addi	s8,sp,236
    2e18:	ff040413          	addi	s0,s0,-16
    2e1c:	f75ff06f          	jal	zero,2d90 <_vfprintf_r+0x1ec8>
    2e20:	000b0593          	addi	a1,s6,0
    2e24:	00098513          	addi	a0,s3,0
    2e28:	245000ef          	jal	ra,386c <_free_r>
    2e2c:	90dff06f          	jal	zero,2738 <_vfprintf_r+0x1870>
    2e30:	0cc12783          	lw	a5,204(sp)
    2e34:	00079463          	bne	a5,zero,2e3c <_vfprintf_r+0x1f74>
    2e38:	97dfe06f          	jal	zero,17b4 <_vfprintf_r+0x8ec>
    2e3c:	0c410613          	addi	a2,sp,196
    2e40:	00090593          	addi	a1,s2,0
    2e44:	00098513          	addi	a0,s3,0
    2e48:	474070ef          	jal	ra,a2bc <__sprint_r>
    2e4c:	969fe06f          	jal	zero,17b4 <_vfprintf_r+0x8ec>
    2e50:	fff00793          	addi	a5,zero,-1
    2e54:	b4fd9263          	bne	s11,a5,2198 <_vfprintf_r+0x12d0>
    2e58:	bc0c9463          	bne	s9,zero,2220 <_vfprintf_r+0x1358>
    2e5c:	00900793          	addi	a5,zero,9
    2e60:	bda7e063          	bltu	a5,s10,2220 <_vfprintf_r+0x1358>
    2e64:	030d0d13          	addi	s10,s10,48
    2e68:	19a107a3          	sb	s10,399(sp)
    2e6c:	18f10493          	addi	s1,sp,399
    2e70:	b88ff06f          	jal	zero,21f8 <_vfprintf_r+0x1330>

00002e74 <vfprintf>:
    2e74:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    2e78:	00060693          	addi	a3,a2,0
    2e7c:	00058613          	addi	a2,a1,0
    2e80:	00050593          	addi	a1,a0,0
    2e84:	0007a503          	lw	a0,0(a5)
    2e88:	840fe06f          	jal	zero,ec8 <_vfprintf_r>

00002e8c <__sbprintf>:
    2e8c:	00c5d783          	lhu	a5,12(a1)
    2e90:	b8010113          	addi	sp,sp,-1152
    2e94:	46812c23          	sw	s0,1144(sp)
    2e98:	ffd7f793          	andi	a5,a5,-3
    2e9c:	00f11a23          	sh	a5,20(sp)
    2ea0:	0645a783          	lw	a5,100(a1)
    2ea4:	00058413          	addi	s0,a1,0
    2ea8:	46912a23          	sw	s1,1140(sp)
    2eac:	06f12623          	sw	a5,108(sp)
    2eb0:	00e5d783          	lhu	a5,14(a1)
    2eb4:	47212823          	sw	s2,1136(sp)
    2eb8:	46112e23          	sw	ra,1148(sp)
    2ebc:	00f11b23          	sh	a5,22(sp)
    2ec0:	01c5a783          	lw	a5,28(a1)
    2ec4:	00050913          	addi	s2,a0,0
    2ec8:	02012023          	sw	zero,32(sp)
    2ecc:	02f12223          	sw	a5,36(sp)
    2ed0:	0245a783          	lw	a5,36(a1)
    2ed4:	00810593          	addi	a1,sp,8
    2ed8:	02f12623          	sw	a5,44(sp)
    2edc:	07010793          	addi	a5,sp,112
    2ee0:	00f12423          	sw	a5,8(sp)
    2ee4:	00f12c23          	sw	a5,24(sp)
    2ee8:	40000793          	addi	a5,zero,1024
    2eec:	00f12823          	sw	a5,16(sp)
    2ef0:	00f12e23          	sw	a5,28(sp)
    2ef4:	fd5fd0ef          	jal	ra,ec8 <_vfprintf_r>
    2ef8:	00050493          	addi	s1,a0,0
    2efc:	00054c63          	blt	a0,zero,2f14 <__sbprintf+0x88>
    2f00:	00810593          	addi	a1,sp,8
    2f04:	00090513          	addi	a0,s2,0
    2f08:	510000ef          	jal	ra,3418 <_fflush_r>
    2f0c:	00050463          	beq	a0,zero,2f14 <__sbprintf+0x88>
    2f10:	fff00493          	addi	s1,zero,-1
    2f14:	01415783          	lhu	a5,20(sp)
    2f18:	0407f793          	andi	a5,a5,64
    2f1c:	00078863          	beq	a5,zero,2f2c <__sbprintf+0xa0>
    2f20:	00c45783          	lhu	a5,12(s0)
    2f24:	0407e793          	ori	a5,a5,64
    2f28:	00f41623          	sh	a5,12(s0)
    2f2c:	47c12083          	lw	ra,1148(sp)
    2f30:	47812403          	lw	s0,1144(sp)
    2f34:	00048513          	addi	a0,s1,0
    2f38:	47012903          	lw	s2,1136(sp)
    2f3c:	47412483          	lw	s1,1140(sp)
    2f40:	48010113          	addi	sp,sp,1152
    2f44:	00008067          	jalr	zero,0(ra)

00002f48 <__swsetup_r>:
    2f48:	ff010113          	addi	sp,sp,-16
    2f4c:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    2f50:	00912223          	sw	s1,4(sp)
    2f54:	00050493          	addi	s1,a0,0
    2f58:	0007a503          	lw	a0,0(a5)
    2f5c:	00812423          	sw	s0,8(sp)
    2f60:	00112623          	sw	ra,12(sp)
    2f64:	00058413          	addi	s0,a1,0
    2f68:	00050863          	beq	a0,zero,2f78 <__swsetup_r+0x30>
    2f6c:	03852783          	lw	a5,56(a0)
    2f70:	00079463          	bne	a5,zero,2f78 <__swsetup_r+0x30>
    2f74:	640000ef          	jal	ra,35b4 <__sinit>
    2f78:	00c41703          	lh	a4,12(s0)
    2f7c:	01071793          	slli	a5,a4,0x10
    2f80:	0107d793          	srli	a5,a5,0x10
    2f84:	0087f693          	andi	a3,a5,8
    2f88:	06069e63          	bne	a3,zero,3004 <__swsetup_r+0xbc>
    2f8c:	0107f693          	andi	a3,a5,16
    2f90:	02069663          	bne	a3,zero,2fbc <__swsetup_r+0x74>
    2f94:	00900793          	addi	a5,zero,9
    2f98:	00f4a023          	sw	a5,0(s1)
    2f9c:	04076713          	ori	a4,a4,64
    2fa0:	00e41623          	sh	a4,12(s0)
    2fa4:	fff00513          	addi	a0,zero,-1
    2fa8:	00c12083          	lw	ra,12(sp)
    2fac:	00812403          	lw	s0,8(sp)
    2fb0:	00412483          	lw	s1,4(sp)
    2fb4:	01010113          	addi	sp,sp,16
    2fb8:	00008067          	jalr	zero,0(ra)
    2fbc:	0047f793          	andi	a5,a5,4
    2fc0:	02078c63          	beq	a5,zero,2ff8 <__swsetup_r+0xb0>
    2fc4:	03042583          	lw	a1,48(s0)
    2fc8:	00058c63          	beq	a1,zero,2fe0 <__swsetup_r+0x98>
    2fcc:	04040793          	addi	a5,s0,64
    2fd0:	00f58663          	beq	a1,a5,2fdc <__swsetup_r+0x94>
    2fd4:	00048513          	addi	a0,s1,0
    2fd8:	095000ef          	jal	ra,386c <_free_r>
    2fdc:	02042823          	sw	zero,48(s0)
    2fe0:	00c45783          	lhu	a5,12(s0)
    2fe4:	00042223          	sw	zero,4(s0)
    2fe8:	fdb7f793          	andi	a5,a5,-37
    2fec:	00f41623          	sh	a5,12(s0)
    2ff0:	01042783          	lw	a5,16(s0)
    2ff4:	00f42023          	sw	a5,0(s0)
    2ff8:	00c45783          	lhu	a5,12(s0)
    2ffc:	0087e793          	ori	a5,a5,8
    3000:	00f41623          	sh	a5,12(s0)
    3004:	01042783          	lw	a5,16(s0)
    3008:	02079063          	bne	a5,zero,3028 <__swsetup_r+0xe0>
    300c:	00c45783          	lhu	a5,12(s0)
    3010:	20000713          	addi	a4,zero,512
    3014:	2807f793          	andi	a5,a5,640
    3018:	00e78863          	beq	a5,a4,3028 <__swsetup_r+0xe0>
    301c:	00040593          	addi	a1,s0,0
    3020:	00048513          	addi	a0,s1,0
    3024:	180030ef          	jal	ra,61a4 <__smakebuf_r>
    3028:	00c45783          	lhu	a5,12(s0)
    302c:	0017f713          	andi	a4,a5,1
    3030:	02070c63          	beq	a4,zero,3068 <__swsetup_r+0x120>
    3034:	01442783          	lw	a5,20(s0)
    3038:	00042423          	sw	zero,8(s0)
    303c:	40f007b3          	sub	a5,zero,a5
    3040:	00f42c23          	sw	a5,24(s0)
    3044:	01042783          	lw	a5,16(s0)
    3048:	00000513          	addi	a0,zero,0
    304c:	f4079ee3          	bne	a5,zero,2fa8 <__swsetup_r+0x60>
    3050:	00c41783          	lh	a5,12(s0)
    3054:	0807f713          	andi	a4,a5,128
    3058:	f40708e3          	beq	a4,zero,2fa8 <__swsetup_r+0x60>
    305c:	0407e793          	ori	a5,a5,64
    3060:	00f41623          	sh	a5,12(s0)
    3064:	f41ff06f          	jal	zero,2fa4 <__swsetup_r+0x5c>
    3068:	0027f793          	andi	a5,a5,2
    306c:	00000713          	addi	a4,zero,0
    3070:	00079463          	bne	a5,zero,3078 <__swsetup_r+0x130>
    3074:	01442703          	lw	a4,20(s0)
    3078:	00e42423          	sw	a4,8(s0)
    307c:	fc9ff06f          	jal	zero,3044 <__swsetup_r+0xfc>

00003080 <__register_exitproc>:
    3080:	1b818793          	addi	a5,gp,440 # 12a68 <_global_impure_ptr>
    3084:	0007a703          	lw	a4,0(a5)
    3088:	00050313          	addi	t1,a0,0
    308c:	14872783          	lw	a5,328(a4)
    3090:	00079663          	bne	a5,zero,309c <__register_exitproc+0x1c>
    3094:	14c70793          	addi	a5,a4,332
    3098:	14f72423          	sw	a5,328(a4)
    309c:	0047a703          	lw	a4,4(a5)
    30a0:	01f00813          	addi	a6,zero,31
    30a4:	fff00513          	addi	a0,zero,-1
    30a8:	04e84a63          	blt	a6,a4,30fc <__register_exitproc+0x7c>
    30ac:	00271893          	slli	a7,a4,0x2
    30b0:	02030c63          	beq	t1,zero,30e8 <__register_exitproc+0x68>
    30b4:	01178533          	add	a0,a5,a7
    30b8:	08c52423          	sw	a2,136(a0)
    30bc:	1887a803          	lw	a6,392(a5)
    30c0:	00100613          	addi	a2,zero,1
    30c4:	00e61633          	sll	a2,a2,a4
    30c8:	00c86833          	or	a6,a6,a2
    30cc:	1907a423          	sw	a6,392(a5)
    30d0:	10d52423          	sw	a3,264(a0)
    30d4:	00200693          	addi	a3,zero,2
    30d8:	00d31863          	bne	t1,a3,30e8 <__register_exitproc+0x68>
    30dc:	18c7a683          	lw	a3,396(a5)
    30e0:	00c6e633          	or	a2,a3,a2
    30e4:	18c7a623          	sw	a2,396(a5)
    30e8:	00170713          	addi	a4,a4,1
    30ec:	00e7a223          	sw	a4,4(a5)
    30f0:	011787b3          	add	a5,a5,a7
    30f4:	00b7a423          	sw	a1,8(a5)
    30f8:	00000513          	addi	a0,zero,0
    30fc:	00008067          	jalr	zero,0(ra)

00003100 <__call_exitprocs>:
    3100:	fd010113          	addi	sp,sp,-48
    3104:	1b818793          	addi	a5,gp,440 # 12a68 <_global_impure_ptr>
    3108:	01312e23          	sw	s3,28(sp)
    310c:	0007a983          	lw	s3,0(a5)
    3110:	01412c23          	sw	s4,24(sp)
    3114:	01512a23          	sw	s5,20(sp)
    3118:	01612823          	sw	s6,16(sp)
    311c:	02112623          	sw	ra,44(sp)
    3120:	02812423          	sw	s0,40(sp)
    3124:	02912223          	sw	s1,36(sp)
    3128:	03212023          	sw	s2,32(sp)
    312c:	01712623          	sw	s7,12(sp)
    3130:	00050a93          	addi	s5,a0,0
    3134:	00058a13          	addi	s4,a1,0
    3138:	00100b13          	addi	s6,zero,1
    313c:	1489a483          	lw	s1,328(s3)
    3140:	00048c63          	beq	s1,zero,3158 <__call_exitprocs+0x58>
    3144:	0044a403          	lw	s0,4(s1)
    3148:	fff40913          	addi	s2,s0,-1
    314c:	00241413          	slli	s0,s0,0x2
    3150:	00848433          	add	s0,s1,s0
    3154:	02095863          	bge	s2,zero,3184 <__call_exitprocs+0x84>
    3158:	02c12083          	lw	ra,44(sp)
    315c:	02812403          	lw	s0,40(sp)
    3160:	02412483          	lw	s1,36(sp)
    3164:	02012903          	lw	s2,32(sp)
    3168:	01c12983          	lw	s3,28(sp)
    316c:	01812a03          	lw	s4,24(sp)
    3170:	01412a83          	lw	s5,20(sp)
    3174:	01012b03          	lw	s6,16(sp)
    3178:	00c12b83          	lw	s7,12(sp)
    317c:	03010113          	addi	sp,sp,48
    3180:	00008067          	jalr	zero,0(ra)
    3184:	000a0c63          	beq	s4,zero,319c <__call_exitprocs+0x9c>
    3188:	10442783          	lw	a5,260(s0)
    318c:	01478863          	beq	a5,s4,319c <__call_exitprocs+0x9c>
    3190:	fff90913          	addi	s2,s2,-1
    3194:	ffc40413          	addi	s0,s0,-4
    3198:	fbdff06f          	jal	zero,3154 <__call_exitprocs+0x54>
    319c:	0044a703          	lw	a4,4(s1)
    31a0:	00442783          	lw	a5,4(s0)
    31a4:	fff70713          	addi	a4,a4,-1
    31a8:	03271c63          	bne	a4,s2,31e0 <__call_exitprocs+0xe0>
    31ac:	0124a223          	sw	s2,4(s1)
    31b0:	fe0780e3          	beq	a5,zero,3190 <__call_exitprocs+0x90>
    31b4:	1884a683          	lw	a3,392(s1)
    31b8:	012b1733          	sll	a4,s6,s2
    31bc:	0044ab83          	lw	s7,4(s1)
    31c0:	00d776b3          	and	a3,a4,a3
    31c4:	02069263          	bne	a3,zero,31e8 <__call_exitprocs+0xe8>
    31c8:	000780e7          	jalr	ra,0(a5)
    31cc:	0044a783          	lw	a5,4(s1)
    31d0:	f77796e3          	bne	a5,s7,313c <__call_exitprocs+0x3c>
    31d4:	1489a783          	lw	a5,328(s3)
    31d8:	fa978ce3          	beq	a5,s1,3190 <__call_exitprocs+0x90>
    31dc:	f61ff06f          	jal	zero,313c <__call_exitprocs+0x3c>
    31e0:	00042223          	sw	zero,4(s0)
    31e4:	fcdff06f          	jal	zero,31b0 <__call_exitprocs+0xb0>
    31e8:	18c4a683          	lw	a3,396(s1)
    31ec:	08442583          	lw	a1,132(s0)
    31f0:	00d77733          	and	a4,a4,a3
    31f4:	00071863          	bne	a4,zero,3204 <__call_exitprocs+0x104>
    31f8:	000a8513          	addi	a0,s5,0
    31fc:	000780e7          	jalr	ra,0(a5)
    3200:	fcdff06f          	jal	zero,31cc <__call_exitprocs+0xcc>
    3204:	00058513          	addi	a0,a1,0
    3208:	000780e7          	jalr	ra,0(a5)
    320c:	fc1ff06f          	jal	zero,31cc <__call_exitprocs+0xcc>

00003210 <__sflush_r>:
    3210:	00c59783          	lh	a5,12(a1)
    3214:	fe010113          	addi	sp,sp,-32
    3218:	00812c23          	sw	s0,24(sp)
    321c:	01079713          	slli	a4,a5,0x10
    3220:	01075713          	srli	a4,a4,0x10
    3224:	00912a23          	sw	s1,20(sp)
    3228:	00112e23          	sw	ra,28(sp)
    322c:	01212823          	sw	s2,16(sp)
    3230:	01312623          	sw	s3,12(sp)
    3234:	00877693          	andi	a3,a4,8
    3238:	00050493          	addi	s1,a0,0
    323c:	00058413          	addi	s0,a1,0
    3240:	16069c63          	bne	a3,zero,33b8 <__sflush_r+0x1a8>
    3244:	00001737          	lui	a4,0x1
    3248:	80070713          	addi	a4,a4,-2048 # 800 <main+0x3c>
    324c:	00e7e7b3          	or	a5,a5,a4
    3250:	0045a703          	lw	a4,4(a1)
    3254:	00f59623          	sh	a5,12(a1)
    3258:	02e04663          	blt	zero,a4,3284 <__sflush_r+0x74>
    325c:	03c5a703          	lw	a4,60(a1)
    3260:	02e04263          	blt	zero,a4,3284 <__sflush_r+0x74>
    3264:	00000513          	addi	a0,zero,0
    3268:	01c12083          	lw	ra,28(sp)
    326c:	01812403          	lw	s0,24(sp)
    3270:	01412483          	lw	s1,20(sp)
    3274:	01012903          	lw	s2,16(sp)
    3278:	00c12983          	lw	s3,12(sp)
    327c:	02010113          	addi	sp,sp,32
    3280:	00008067          	jalr	zero,0(ra)
    3284:	02842703          	lw	a4,40(s0)
    3288:	fc070ee3          	beq	a4,zero,3264 <__sflush_r+0x54>
    328c:	0004a903          	lw	s2,0(s1)
    3290:	01379693          	slli	a3,a5,0x13
    3294:	0004a023          	sw	zero,0(s1)
    3298:	0c06d863          	bge	a3,zero,3368 <__sflush_r+0x158>
    329c:	05042603          	lw	a2,80(s0)
    32a0:	00c45783          	lhu	a5,12(s0)
    32a4:	0047f793          	andi	a5,a5,4
    32a8:	00078e63          	beq	a5,zero,32c4 <__sflush_r+0xb4>
    32ac:	00442783          	lw	a5,4(s0)
    32b0:	40f60633          	sub	a2,a2,a5
    32b4:	03042783          	lw	a5,48(s0)
    32b8:	00078663          	beq	a5,zero,32c4 <__sflush_r+0xb4>
    32bc:	03c42783          	lw	a5,60(s0)
    32c0:	40f60633          	sub	a2,a2,a5
    32c4:	02842783          	lw	a5,40(s0)
    32c8:	01c42583          	lw	a1,28(s0)
    32cc:	00000693          	addi	a3,zero,0
    32d0:	00048513          	addi	a0,s1,0
    32d4:	000780e7          	jalr	ra,0(a5)
    32d8:	fff00793          	addi	a5,zero,-1
    32dc:	00c45683          	lhu	a3,12(s0)
    32e0:	02f51263          	bne	a0,a5,3304 <__sflush_r+0xf4>
    32e4:	0004a783          	lw	a5,0(s1)
    32e8:	01d00713          	addi	a4,zero,29
    32ec:	0af76e63          	bltu	a4,a5,33a8 <__sflush_r+0x198>
    32f0:	20400737          	lui	a4,0x20400
    32f4:	00170713          	addi	a4,a4,1 # 20400001 <__heap_top+0x20300001>
    32f8:	00f75733          	srl	a4,a4,a5
    32fc:	00177713          	andi	a4,a4,1
    3300:	0a070463          	beq	a4,zero,33a8 <__sflush_r+0x198>
    3304:	fffff7b7          	lui	a5,0xfffff
    3308:	7ff78793          	addi	a5,a5,2047 # fffff7ff <__heap_top+0xffeff7ff>
    330c:	01042703          	lw	a4,16(s0)
    3310:	00d7f7b3          	and	a5,a5,a3
    3314:	01079793          	slli	a5,a5,0x10
    3318:	4107d793          	srai	a5,a5,0x10
    331c:	00e42023          	sw	a4,0(s0)
    3320:	00f41623          	sh	a5,12(s0)
    3324:	00042223          	sw	zero,4(s0)
    3328:	01379713          	slli	a4,a5,0x13
    332c:	00075c63          	bge	a4,zero,3344 <__sflush_r+0x134>
    3330:	fff00793          	addi	a5,zero,-1
    3334:	00f51663          	bne	a0,a5,3340 <__sflush_r+0x130>
    3338:	0004a783          	lw	a5,0(s1)
    333c:	00079463          	bne	a5,zero,3344 <__sflush_r+0x134>
    3340:	04a42823          	sw	a0,80(s0)
    3344:	03042583          	lw	a1,48(s0)
    3348:	0124a023          	sw	s2,0(s1)
    334c:	f0058ce3          	beq	a1,zero,3264 <__sflush_r+0x54>
    3350:	04040793          	addi	a5,s0,64
    3354:	00f58663          	beq	a1,a5,3360 <__sflush_r+0x150>
    3358:	00048513          	addi	a0,s1,0
    335c:	510000ef          	jal	ra,386c <_free_r>
    3360:	02042823          	sw	zero,48(s0)
    3364:	f01ff06f          	jal	zero,3264 <__sflush_r+0x54>
    3368:	01c42583          	lw	a1,28(s0)
    336c:	00000613          	addi	a2,zero,0
    3370:	00100693          	addi	a3,zero,1
    3374:	00048513          	addi	a0,s1,0
    3378:	000700e7          	jalr	ra,0(a4)
    337c:	fff00793          	addi	a5,zero,-1
    3380:	00050613          	addi	a2,a0,0
    3384:	f0f51ee3          	bne	a0,a5,32a0 <__sflush_r+0x90>
    3388:	0004a783          	lw	a5,0(s1)
    338c:	f0078ae3          	beq	a5,zero,32a0 <__sflush_r+0x90>
    3390:	01d00713          	addi	a4,zero,29
    3394:	00e78663          	beq	a5,a4,33a0 <__sflush_r+0x190>
    3398:	01600713          	addi	a4,zero,22
    339c:	06e79263          	bne	a5,a4,3400 <__sflush_r+0x1f0>
    33a0:	0124a023          	sw	s2,0(s1)
    33a4:	ec1ff06f          	jal	zero,3264 <__sflush_r+0x54>
    33a8:	0406e793          	ori	a5,a3,64
    33ac:	00f41623          	sh	a5,12(s0)
    33b0:	fff00513          	addi	a0,zero,-1
    33b4:	eb5ff06f          	jal	zero,3268 <__sflush_r+0x58>
    33b8:	0105a983          	lw	s3,16(a1)
    33bc:	ea0984e3          	beq	s3,zero,3264 <__sflush_r+0x54>
    33c0:	0005a903          	lw	s2,0(a1)
    33c4:	00377713          	andi	a4,a4,3
    33c8:	0135a023          	sw	s3,0(a1)
    33cc:	41390933          	sub	s2,s2,s3
    33d0:	00000793          	addi	a5,zero,0
    33d4:	00071463          	bne	a4,zero,33dc <__sflush_r+0x1cc>
    33d8:	0145a783          	lw	a5,20(a1)
    33dc:	00f42423          	sw	a5,8(s0)
    33e0:	e92052e3          	bge	zero,s2,3264 <__sflush_r+0x54>
    33e4:	02442783          	lw	a5,36(s0)
    33e8:	01c42583          	lw	a1,28(s0)
    33ec:	00090693          	addi	a3,s2,0
    33f0:	00098613          	addi	a2,s3,0
    33f4:	00048513          	addi	a0,s1,0
    33f8:	000780e7          	jalr	ra,0(a5)
    33fc:	00a04863          	blt	zero,a0,340c <__sflush_r+0x1fc>
    3400:	00c45783          	lhu	a5,12(s0)
    3404:	0407e793          	ori	a5,a5,64
    3408:	fa5ff06f          	jal	zero,33ac <__sflush_r+0x19c>
    340c:	00a989b3          	add	s3,s3,a0
    3410:	40a90933          	sub	s2,s2,a0
    3414:	fcdff06f          	jal	zero,33e0 <__sflush_r+0x1d0>

00003418 <_fflush_r>:
    3418:	fe010113          	addi	sp,sp,-32
    341c:	00812c23          	sw	s0,24(sp)
    3420:	00112e23          	sw	ra,28(sp)
    3424:	00050413          	addi	s0,a0,0
    3428:	00050c63          	beq	a0,zero,3440 <_fflush_r+0x28>
    342c:	03852783          	lw	a5,56(a0)
    3430:	00079863          	bne	a5,zero,3440 <_fflush_r+0x28>
    3434:	00b12623          	sw	a1,12(sp)
    3438:	17c000ef          	jal	ra,35b4 <__sinit>
    343c:	00c12583          	lw	a1,12(sp)
    3440:	00c59783          	lh	a5,12(a1)
    3444:	00078c63          	beq	a5,zero,345c <_fflush_r+0x44>
    3448:	00040513          	addi	a0,s0,0
    344c:	01812403          	lw	s0,24(sp)
    3450:	01c12083          	lw	ra,28(sp)
    3454:	02010113          	addi	sp,sp,32
    3458:	db9ff06f          	jal	zero,3210 <__sflush_r>
    345c:	01c12083          	lw	ra,28(sp)
    3460:	01812403          	lw	s0,24(sp)
    3464:	00000513          	addi	a0,zero,0
    3468:	02010113          	addi	sp,sp,32
    346c:	00008067          	jalr	zero,0(ra)

00003470 <fflush>:
    3470:	00050593          	addi	a1,a0,0
    3474:	00051c63          	bne	a0,zero,348c <fflush+0x1c>
    3478:	1b818793          	addi	a5,gp,440 # 12a68 <_global_impure_ptr>
    347c:	0007a503          	lw	a0,0(a5)
    3480:	00000597          	auipc	a1,0x0
    3484:	f9858593          	addi	a1,a1,-104 # 3418 <_fflush_r>
    3488:	3390006f          	jal	zero,3fc0 <_fwalk_reent>
    348c:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    3490:	0007a503          	lw	a0,0(a5)
    3494:	f85ff06f          	jal	zero,3418 <_fflush_r>

00003498 <__fp_lock>:
    3498:	00000513          	addi	a0,zero,0
    349c:	00008067          	jalr	zero,0(ra)

000034a0 <std>:
    34a0:	ff010113          	addi	sp,sp,-16
    34a4:	00812423          	sw	s0,8(sp)
    34a8:	00112623          	sw	ra,12(sp)
    34ac:	00050413          	addi	s0,a0,0
    34b0:	00b51623          	sh	a1,12(a0)
    34b4:	00c51723          	sh	a2,14(a0)
    34b8:	00052023          	sw	zero,0(a0)
    34bc:	00052223          	sw	zero,4(a0)
    34c0:	00052423          	sw	zero,8(a0)
    34c4:	06052223          	sw	zero,100(a0)
    34c8:	00052823          	sw	zero,16(a0)
    34cc:	00052a23          	sw	zero,20(a0)
    34d0:	00052c23          	sw	zero,24(a0)
    34d4:	00800613          	addi	a2,zero,8
    34d8:	00000593          	addi	a1,zero,0
    34dc:	05c50513          	addi	a0,a0,92
    34e0:	f88fd0ef          	jal	ra,c68 <memset>
    34e4:	00005797          	auipc	a5,0x5
    34e8:	b7c78793          	addi	a5,a5,-1156 # 8060 <__sread>
    34ec:	02f42023          	sw	a5,32(s0)
    34f0:	00005797          	auipc	a5,0x5
    34f4:	bc878793          	addi	a5,a5,-1080 # 80b8 <__swrite>
    34f8:	02f42223          	sw	a5,36(s0)
    34fc:	00005797          	auipc	a5,0x5
    3500:	c4078793          	addi	a5,a5,-960 # 813c <__sseek>
    3504:	02f42423          	sw	a5,40(s0)
    3508:	00005797          	auipc	a5,0x5
    350c:	c8c78793          	addi	a5,a5,-884 # 8194 <__sclose>
    3510:	00842e23          	sw	s0,28(s0)
    3514:	02f42623          	sw	a5,44(s0)
    3518:	00c12083          	lw	ra,12(sp)
    351c:	00812403          	lw	s0,8(sp)
    3520:	01010113          	addi	sp,sp,16
    3524:	00008067          	jalr	zero,0(ra)

00003528 <_cleanup_r>:
    3528:	00008597          	auipc	a1,0x8
    352c:	d7458593          	addi	a1,a1,-652 # b29c <_fclose_r>
    3530:	2910006f          	jal	zero,3fc0 <_fwalk_reent>

00003534 <__fp_unlock>:
    3534:	00000513          	addi	a0,zero,0
    3538:	00008067          	jalr	zero,0(ra)

0000353c <__sfmoreglue>:
    353c:	ff010113          	addi	sp,sp,-16
    3540:	00912223          	sw	s1,4(sp)
    3544:	06800613          	addi	a2,zero,104
    3548:	fff58493          	addi	s1,a1,-1
    354c:	02c484b3          	mul	s1,s1,a2
    3550:	01212023          	sw	s2,0(sp)
    3554:	00058913          	addi	s2,a1,0
    3558:	00812423          	sw	s0,8(sp)
    355c:	00112623          	sw	ra,12(sp)
    3560:	07448593          	addi	a1,s1,116
    3564:	531020ef          	jal	ra,6294 <_malloc_r>
    3568:	00050413          	addi	s0,a0,0
    356c:	02050063          	beq	a0,zero,358c <__sfmoreglue+0x50>
    3570:	00052023          	sw	zero,0(a0)
    3574:	01252223          	sw	s2,4(a0)
    3578:	00c50513          	addi	a0,a0,12
    357c:	00a42423          	sw	a0,8(s0)
    3580:	06848613          	addi	a2,s1,104
    3584:	00000593          	addi	a1,zero,0
    3588:	ee0fd0ef          	jal	ra,c68 <memset>
    358c:	00040513          	addi	a0,s0,0
    3590:	00c12083          	lw	ra,12(sp)
    3594:	00812403          	lw	s0,8(sp)
    3598:	00412483          	lw	s1,4(sp)
    359c:	00012903          	lw	s2,0(sp)
    35a0:	01010113          	addi	sp,sp,16
    35a4:	00008067          	jalr	zero,0(ra)

000035a8 <_cleanup>:
    35a8:	1b818793          	addi	a5,gp,440 # 12a68 <_global_impure_ptr>
    35ac:	0007a503          	lw	a0,0(a5)
    35b0:	f79ff06f          	jal	zero,3528 <_cleanup_r>

000035b4 <__sinit>:
    35b4:	03852783          	lw	a5,56(a0)
    35b8:	06079e63          	bne	a5,zero,3634 <__sinit+0x80>
    35bc:	ff010113          	addi	sp,sp,-16
    35c0:	00112623          	sw	ra,12(sp)
    35c4:	00812423          	sw	s0,8(sp)
    35c8:	00000797          	auipc	a5,0x0
    35cc:	f6078793          	addi	a5,a5,-160 # 3528 <_cleanup_r>
    35d0:	02f52e23          	sw	a5,60(a0)
    35d4:	00300793          	addi	a5,zero,3
    35d8:	2ef52223          	sw	a5,740(a0)
    35dc:	2ec50793          	addi	a5,a0,748
    35e0:	00050413          	addi	s0,a0,0
    35e4:	2ef52423          	sw	a5,744(a0)
    35e8:	2e052023          	sw	zero,736(a0)
    35ec:	00452503          	lw	a0,4(a0)
    35f0:	00000613          	addi	a2,zero,0
    35f4:	00400593          	addi	a1,zero,4
    35f8:	ea9ff0ef          	jal	ra,34a0 <std>
    35fc:	00842503          	lw	a0,8(s0)
    3600:	00100613          	addi	a2,zero,1
    3604:	00900593          	addi	a1,zero,9
    3608:	e99ff0ef          	jal	ra,34a0 <std>
    360c:	00c42503          	lw	a0,12(s0)
    3610:	00200613          	addi	a2,zero,2
    3614:	01200593          	addi	a1,zero,18
    3618:	e89ff0ef          	jal	ra,34a0 <std>
    361c:	00100793          	addi	a5,zero,1
    3620:	02f42c23          	sw	a5,56(s0)
    3624:	00c12083          	lw	ra,12(sp)
    3628:	00812403          	lw	s0,8(sp)
    362c:	01010113          	addi	sp,sp,16
    3630:	00008067          	jalr	zero,0(ra)
    3634:	00008067          	jalr	zero,0(ra)

00003638 <__sfp>:
    3638:	ff010113          	addi	sp,sp,-16
    363c:	1b818793          	addi	a5,gp,440 # 12a68 <_global_impure_ptr>
    3640:	00912223          	sw	s1,4(sp)
    3644:	0007a483          	lw	s1,0(a5)
    3648:	01212023          	sw	s2,0(sp)
    364c:	00112623          	sw	ra,12(sp)
    3650:	0384a783          	lw	a5,56(s1)
    3654:	00812423          	sw	s0,8(sp)
    3658:	00050913          	addi	s2,a0,0
    365c:	00079663          	bne	a5,zero,3668 <__sfp+0x30>
    3660:	00048513          	addi	a0,s1,0
    3664:	f51ff0ef          	jal	ra,35b4 <__sinit>
    3668:	2e048493          	addi	s1,s1,736
    366c:	0084a403          	lw	s0,8(s1)
    3670:	0044a783          	lw	a5,4(s1)
    3674:	fff78793          	addi	a5,a5,-1
    3678:	0007da63          	bge	a5,zero,368c <__sfp+0x54>
    367c:	0004a783          	lw	a5,0(s1)
    3680:	08078063          	beq	a5,zero,3700 <__sfp+0xc8>
    3684:	0004a483          	lw	s1,0(s1)
    3688:	fe5ff06f          	jal	zero,366c <__sfp+0x34>
    368c:	00c41703          	lh	a4,12(s0)
    3690:	06071463          	bne	a4,zero,36f8 <__sfp+0xc0>
    3694:	ffff07b7          	lui	a5,0xffff0
    3698:	00178793          	addi	a5,a5,1 # ffff0001 <__heap_top+0xffef0001>
    369c:	06042223          	sw	zero,100(s0)
    36a0:	00042023          	sw	zero,0(s0)
    36a4:	00042223          	sw	zero,4(s0)
    36a8:	00042423          	sw	zero,8(s0)
    36ac:	00f42623          	sw	a5,12(s0)
    36b0:	00042823          	sw	zero,16(s0)
    36b4:	00042a23          	sw	zero,20(s0)
    36b8:	00042c23          	sw	zero,24(s0)
    36bc:	00800613          	addi	a2,zero,8
    36c0:	00000593          	addi	a1,zero,0
    36c4:	05c40513          	addi	a0,s0,92
    36c8:	da0fd0ef          	jal	ra,c68 <memset>
    36cc:	02042823          	sw	zero,48(s0)
    36d0:	02042a23          	sw	zero,52(s0)
    36d4:	04042223          	sw	zero,68(s0)
    36d8:	04042423          	sw	zero,72(s0)
    36dc:	00040513          	addi	a0,s0,0
    36e0:	00c12083          	lw	ra,12(sp)
    36e4:	00812403          	lw	s0,8(sp)
    36e8:	00412483          	lw	s1,4(sp)
    36ec:	00012903          	lw	s2,0(sp)
    36f0:	01010113          	addi	sp,sp,16
    36f4:	00008067          	jalr	zero,0(ra)
    36f8:	06840413          	addi	s0,s0,104
    36fc:	f79ff06f          	jal	zero,3674 <__sfp+0x3c>
    3700:	00400593          	addi	a1,zero,4
    3704:	00090513          	addi	a0,s2,0
    3708:	e35ff0ef          	jal	ra,353c <__sfmoreglue>
    370c:	00a4a023          	sw	a0,0(s1)
    3710:	f6051ae3          	bne	a0,zero,3684 <__sfp+0x4c>
    3714:	00c00793          	addi	a5,zero,12
    3718:	00f92023          	sw	a5,0(s2)
    371c:	00000413          	addi	s0,zero,0
    3720:	fbdff06f          	jal	zero,36dc <__sfp+0xa4>

00003724 <__sfp_lock_acquire>:
    3724:	00008067          	jalr	zero,0(ra)

00003728 <__sfp_lock_release>:
    3728:	00008067          	jalr	zero,0(ra)

0000372c <__sinit_lock_acquire>:
    372c:	00008067          	jalr	zero,0(ra)

00003730 <__sinit_lock_release>:
    3730:	00008067          	jalr	zero,0(ra)

00003734 <__fp_lock_all>:
    3734:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    3738:	0007a503          	lw	a0,0(a5)
    373c:	00000597          	auipc	a1,0x0
    3740:	d5c58593          	addi	a1,a1,-676 # 3498 <__fp_lock>
    3744:	7dc0006f          	jal	zero,3f20 <_fwalk>

00003748 <__fp_unlock_all>:
    3748:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    374c:	0007a503          	lw	a0,0(a5)
    3750:	00000597          	auipc	a1,0x0
    3754:	de458593          	addi	a1,a1,-540 # 3534 <__fp_unlock>
    3758:	7c80006f          	jal	zero,3f20 <_fwalk>

0000375c <_malloc_trim_r>:
    375c:	fe010113          	addi	sp,sp,-32
    3760:	00812c23          	sw	s0,24(sp)
    3764:	00912a23          	sw	s1,20(sp)
    3768:	01212823          	sw	s2,16(sp)
    376c:	01312623          	sw	s3,12(sp)
    3770:	00058413          	addi	s0,a1,0
    3774:	00112e23          	sw	ra,28(sp)
    3778:	00050913          	addi	s2,a0,0
    377c:	d9418993          	addi	s3,gp,-620 # 12644 <__malloc_av_>
    3780:	348030ef          	jal	ra,6ac8 <__malloc_lock>
    3784:	0089a783          	lw	a5,8(s3)
    3788:	00001737          	lui	a4,0x1
    378c:	0047a483          	lw	s1,4(a5)
    3790:	fef70793          	addi	a5,a4,-17 # fef <_vfprintf_r+0x127>
    3794:	40878433          	sub	s0,a5,s0
    3798:	ffc4f493          	andi	s1,s1,-4
    379c:	00940433          	add	s0,s0,s1
    37a0:	00c45413          	srli	s0,s0,0xc
    37a4:	fff40413          	addi	s0,s0,-1
    37a8:	00c41413          	slli	s0,s0,0xc
    37ac:	02e45663          	bge	s0,a4,37d8 <_malloc_trim_r+0x7c>
    37b0:	00090513          	addi	a0,s2,0
    37b4:	318030ef          	jal	ra,6acc <__malloc_unlock>
    37b8:	00000513          	addi	a0,zero,0
    37bc:	01c12083          	lw	ra,28(sp)
    37c0:	01812403          	lw	s0,24(sp)
    37c4:	01412483          	lw	s1,20(sp)
    37c8:	01012903          	lw	s2,16(sp)
    37cc:	00c12983          	lw	s3,12(sp)
    37d0:	02010113          	addi	sp,sp,32
    37d4:	00008067          	jalr	zero,0(ra)
    37d8:	00000593          	addi	a1,zero,0
    37dc:	00090513          	addi	a0,s2,0
    37e0:	6b0040ef          	jal	ra,7e90 <_sbrk_r>
    37e4:	0089a783          	lw	a5,8(s3)
    37e8:	009787b3          	add	a5,a5,s1
    37ec:	fcf512e3          	bne	a0,a5,37b0 <_malloc_trim_r+0x54>
    37f0:	408005b3          	sub	a1,zero,s0
    37f4:	00090513          	addi	a0,s2,0
    37f8:	698040ef          	jal	ra,7e90 <_sbrk_r>
    37fc:	fff00793          	addi	a5,zero,-1
    3800:	02f51e63          	bne	a0,a5,383c <_malloc_trim_r+0xe0>
    3804:	00000593          	addi	a1,zero,0
    3808:	00090513          	addi	a0,s2,0
    380c:	684040ef          	jal	ra,7e90 <_sbrk_r>
    3810:	0089a703          	lw	a4,8(s3)
    3814:	00f00693          	addi	a3,zero,15
    3818:	40e507b3          	sub	a5,a0,a4
    381c:	f8f6dae3          	bge	a3,a5,37b0 <_malloc_trim_r+0x54>
    3820:	1c818693          	addi	a3,gp,456 # 12a78 <__malloc_sbrk_base>
    3824:	0006a683          	lw	a3,0(a3)
    3828:	0017e793          	ori	a5,a5,1
    382c:	00f72223          	sw	a5,4(a4)
    3830:	40d50533          	sub	a0,a0,a3
    3834:	20a1a023          	sw	a0,512(gp) # 12ab0 <__malloc_current_mallinfo>
    3838:	f79ff06f          	jal	zero,37b0 <_malloc_trim_r+0x54>
    383c:	0089a783          	lw	a5,8(s3)
    3840:	408484b3          	sub	s1,s1,s0
    3844:	0014e493          	ori	s1,s1,1
    3848:	0097a223          	sw	s1,4(a5)
    384c:	20018793          	addi	a5,gp,512 # 12ab0 <__malloc_current_mallinfo>
    3850:	0007a783          	lw	a5,0(a5)
    3854:	00090513          	addi	a0,s2,0
    3858:	40878433          	sub	s0,a5,s0
    385c:	2081a023          	sw	s0,512(gp) # 12ab0 <__malloc_current_mallinfo>
    3860:	26c030ef          	jal	ra,6acc <__malloc_unlock>
    3864:	00100513          	addi	a0,zero,1
    3868:	f55ff06f          	jal	zero,37bc <_malloc_trim_r+0x60>

0000386c <_free_r>:
    386c:	24058863          	beq	a1,zero,3abc <_free_r+0x250>
    3870:	ff010113          	addi	sp,sp,-16
    3874:	00812423          	sw	s0,8(sp)
    3878:	00912223          	sw	s1,4(sp)
    387c:	00050413          	addi	s0,a0,0
    3880:	00058493          	addi	s1,a1,0
    3884:	00112623          	sw	ra,12(sp)
    3888:	240030ef          	jal	ra,6ac8 <__malloc_lock>
    388c:	ffc4a583          	lw	a1,-4(s1)
    3890:	ff848693          	addi	a3,s1,-8
    3894:	d9418513          	addi	a0,gp,-620 # 12644 <__malloc_av_>
    3898:	ffe5f793          	andi	a5,a1,-2
    389c:	00f68633          	add	a2,a3,a5
    38a0:	00462703          	lw	a4,4(a2)
    38a4:	00852803          	lw	a6,8(a0)
    38a8:	0015f593          	andi	a1,a1,1
    38ac:	ffc77713          	andi	a4,a4,-4
    38b0:	06c81463          	bne	a6,a2,3918 <_free_r+0xac>
    38b4:	00e787b3          	add	a5,a5,a4
    38b8:	02059063          	bne	a1,zero,38d8 <_free_r+0x6c>
    38bc:	ff84a703          	lw	a4,-8(s1)
    38c0:	40e686b3          	sub	a3,a3,a4
    38c4:	0086a603          	lw	a2,8(a3)
    38c8:	00e787b3          	add	a5,a5,a4
    38cc:	00c6a703          	lw	a4,12(a3)
    38d0:	00e62623          	sw	a4,12(a2)
    38d4:	00c72423          	sw	a2,8(a4)
    38d8:	0017e713          	ori	a4,a5,1
    38dc:	00e6a223          	sw	a4,4(a3)
    38e0:	d8d1ae23          	sw	a3,-612(gp) # 1264c <__malloc_av_+0x8>
    38e4:	1cc18713          	addi	a4,gp,460 # 12a7c <__malloc_trim_threshold>
    38e8:	00072703          	lw	a4,0(a4)
    38ec:	00e7ea63          	bltu	a5,a4,3900 <_free_r+0x94>
    38f0:	1dc18793          	addi	a5,gp,476 # 12a8c <__malloc_top_pad>
    38f4:	0007a583          	lw	a1,0(a5)
    38f8:	00040513          	addi	a0,s0,0
    38fc:	e61ff0ef          	jal	ra,375c <_malloc_trim_r>
    3900:	00040513          	addi	a0,s0,0
    3904:	00812403          	lw	s0,8(sp)
    3908:	00c12083          	lw	ra,12(sp)
    390c:	00412483          	lw	s1,4(sp)
    3910:	01010113          	addi	sp,sp,16
    3914:	1b80306f          	jal	zero,6acc <__malloc_unlock>
    3918:	00e62223          	sw	a4,4(a2)
    391c:	00000813          	addi	a6,zero,0
    3920:	02059463          	bne	a1,zero,3948 <_free_r+0xdc>
    3924:	ff84a583          	lw	a1,-8(s1)
    3928:	d9c18893          	addi	a7,gp,-612 # 1264c <__malloc_av_+0x8>
    392c:	40b686b3          	sub	a3,a3,a1
    3930:	00b787b3          	add	a5,a5,a1
    3934:	0086a583          	lw	a1,8(a3)
    3938:	0b158463          	beq	a1,a7,39e0 <_free_r+0x174>
    393c:	00c6a883          	lw	a7,12(a3)
    3940:	0115a623          	sw	a7,12(a1)
    3944:	00b8a423          	sw	a1,8(a7)
    3948:	00e605b3          	add	a1,a2,a4
    394c:	0045a583          	lw	a1,4(a1)
    3950:	0015f593          	andi	a1,a1,1
    3954:	02059663          	bne	a1,zero,3980 <_free_r+0x114>
    3958:	00e787b3          	add	a5,a5,a4
    395c:	00862703          	lw	a4,8(a2)
    3960:	08081463          	bne	a6,zero,39e8 <_free_r+0x17c>
    3964:	d9c18593          	addi	a1,gp,-612 # 1264c <__malloc_av_+0x8>
    3968:	08b71063          	bne	a4,a1,39e8 <_free_r+0x17c>
    396c:	dad1a423          	sw	a3,-600(gp) # 12658 <__malloc_av_+0x14>
    3970:	dad1a223          	sw	a3,-604(gp) # 12654 <__malloc_av_+0x10>
    3974:	00e6a623          	sw	a4,12(a3)
    3978:	00e6a423          	sw	a4,8(a3)
    397c:	00100813          	addi	a6,zero,1
    3980:	0017e713          	ori	a4,a5,1
    3984:	00e6a223          	sw	a4,4(a3)
    3988:	00f68733          	add	a4,a3,a5
    398c:	00f72023          	sw	a5,0(a4)
    3990:	f60818e3          	bne	a6,zero,3900 <_free_r+0x94>
    3994:	1ff00713          	addi	a4,zero,511
    3998:	06f76063          	bltu	a4,a5,39f8 <_free_r+0x18c>
    399c:	0037d793          	srli	a5,a5,0x3
    39a0:	4027d613          	srai	a2,a5,0x2
    39a4:	00100713          	addi	a4,zero,1
    39a8:	00c71733          	sll	a4,a4,a2
    39ac:	00452603          	lw	a2,4(a0)
    39b0:	00178793          	addi	a5,a5,1
    39b4:	00379793          	slli	a5,a5,0x3
    39b8:	00c76733          	or	a4,a4,a2
    39bc:	00f507b3          	add	a5,a0,a5
    39c0:	d8e1ac23          	sw	a4,-616(gp) # 12648 <__malloc_av_+0x4>
    39c4:	0007a703          	lw	a4,0(a5)
    39c8:	ff878613          	addi	a2,a5,-8
    39cc:	00c6a623          	sw	a2,12(a3)
    39d0:	00e6a423          	sw	a4,8(a3)
    39d4:	00d7a023          	sw	a3,0(a5)
    39d8:	00d72623          	sw	a3,12(a4)
    39dc:	f25ff06f          	jal	zero,3900 <_free_r+0x94>
    39e0:	00100813          	addi	a6,zero,1
    39e4:	f65ff06f          	jal	zero,3948 <_free_r+0xdc>
    39e8:	00c62603          	lw	a2,12(a2)
    39ec:	00c72623          	sw	a2,12(a4)
    39f0:	00e62423          	sw	a4,8(a2)
    39f4:	f8dff06f          	jal	zero,3980 <_free_r+0x114>
    39f8:	0097d613          	srli	a2,a5,0x9
    39fc:	00400713          	addi	a4,zero,4
    3a00:	04c76863          	bltu	a4,a2,3a50 <_free_r+0x1e4>
    3a04:	0067d713          	srli	a4,a5,0x6
    3a08:	03870713          	addi	a4,a4,56
    3a0c:	00170613          	addi	a2,a4,1
    3a10:	00361613          	slli	a2,a2,0x3
    3a14:	00c50633          	add	a2,a0,a2
    3a18:	ff860593          	addi	a1,a2,-8
    3a1c:	00062603          	lw	a2,0(a2)
    3a20:	08c59463          	bne	a1,a2,3aa8 <_free_r+0x23c>
    3a24:	00100793          	addi	a5,zero,1
    3a28:	40275713          	srai	a4,a4,0x2
    3a2c:	00e79733          	sll	a4,a5,a4
    3a30:	00452783          	lw	a5,4(a0)
    3a34:	00f76733          	or	a4,a4,a5
    3a38:	d8e1ac23          	sw	a4,-616(gp) # 12648 <__malloc_av_+0x4>
    3a3c:	00b6a623          	sw	a1,12(a3)
    3a40:	00c6a423          	sw	a2,8(a3)
    3a44:	00d5a423          	sw	a3,8(a1)
    3a48:	00d62623          	sw	a3,12(a2)
    3a4c:	eb5ff06f          	jal	zero,3900 <_free_r+0x94>
    3a50:	01400713          	addi	a4,zero,20
    3a54:	00c76663          	bltu	a4,a2,3a60 <_free_r+0x1f4>
    3a58:	05b60713          	addi	a4,a2,91
    3a5c:	fb1ff06f          	jal	zero,3a0c <_free_r+0x1a0>
    3a60:	05400713          	addi	a4,zero,84
    3a64:	00c76863          	bltu	a4,a2,3a74 <_free_r+0x208>
    3a68:	00c7d713          	srli	a4,a5,0xc
    3a6c:	06e70713          	addi	a4,a4,110
    3a70:	f9dff06f          	jal	zero,3a0c <_free_r+0x1a0>
    3a74:	15400713          	addi	a4,zero,340
    3a78:	00c76863          	bltu	a4,a2,3a88 <_free_r+0x21c>
    3a7c:	00f7d713          	srli	a4,a5,0xf
    3a80:	07770713          	addi	a4,a4,119
    3a84:	f89ff06f          	jal	zero,3a0c <_free_r+0x1a0>
    3a88:	55400593          	addi	a1,zero,1364
    3a8c:	07e00713          	addi	a4,zero,126
    3a90:	f6c5eee3          	bltu	a1,a2,3a0c <_free_r+0x1a0>
    3a94:	0127d713          	srli	a4,a5,0x12
    3a98:	07c70713          	addi	a4,a4,124
    3a9c:	f71ff06f          	jal	zero,3a0c <_free_r+0x1a0>
    3aa0:	00862603          	lw	a2,8(a2)
    3aa4:	00c58863          	beq	a1,a2,3ab4 <_free_r+0x248>
    3aa8:	00462703          	lw	a4,4(a2)
    3aac:	ffc77713          	andi	a4,a4,-4
    3ab0:	fee7e8e3          	bltu	a5,a4,3aa0 <_free_r+0x234>
    3ab4:	00c62583          	lw	a1,12(a2)
    3ab8:	f85ff06f          	jal	zero,3a3c <_free_r+0x1d0>
    3abc:	00008067          	jalr	zero,0(ra)

00003ac0 <__sfvwrite_r>:
    3ac0:	00862783          	lw	a5,8(a2)
    3ac4:	00079863          	bne	a5,zero,3ad4 <__sfvwrite_r+0x14>
    3ac8:	00000793          	addi	a5,zero,0
    3acc:	00078513          	addi	a0,a5,0
    3ad0:	00008067          	jalr	zero,0(ra)
    3ad4:	00c5d783          	lhu	a5,12(a1)
    3ad8:	fb010113          	addi	sp,sp,-80
    3adc:	04812423          	sw	s0,72(sp)
    3ae0:	05212023          	sw	s2,64(sp)
    3ae4:	03512a23          	sw	s5,52(sp)
    3ae8:	04112623          	sw	ra,76(sp)
    3aec:	04912223          	sw	s1,68(sp)
    3af0:	03312e23          	sw	s3,60(sp)
    3af4:	03412c23          	sw	s4,56(sp)
    3af8:	03612823          	sw	s6,48(sp)
    3afc:	03712623          	sw	s7,44(sp)
    3b00:	03812423          	sw	s8,40(sp)
    3b04:	03912223          	sw	s9,36(sp)
    3b08:	03a12023          	sw	s10,32(sp)
    3b0c:	01b12e23          	sw	s11,28(sp)
    3b10:	0087f793          	andi	a5,a5,8
    3b14:	00060a93          	addi	s5,a2,0
    3b18:	00058413          	addi	s0,a1,0
    3b1c:	00050913          	addi	s2,a0,0
    3b20:	0e078263          	beq	a5,zero,3c04 <__sfvwrite_r+0x144>
    3b24:	0105a783          	lw	a5,16(a1)
    3b28:	0c078e63          	beq	a5,zero,3c04 <__sfvwrite_r+0x144>
    3b2c:	00c45783          	lhu	a5,12(s0)
    3b30:	000aaa03          	lw	s4,0(s5)
    3b34:	0027f713          	andi	a4,a5,2
    3b38:	16071a63          	bne	a4,zero,3cac <__sfvwrite_r+0x1ec>
    3b3c:	0017f793          	andi	a5,a5,1
    3b40:	20078463          	beq	a5,zero,3d48 <__sfvwrite_r+0x288>
    3b44:	00000b93          	addi	s7,zero,0
    3b48:	00000513          	addi	a0,zero,0
    3b4c:	00000b13          	addi	s6,zero,0
    3b50:	00000993          	addi	s3,zero,0
    3b54:	36098463          	beq	s3,zero,3ebc <__sfvwrite_r+0x3fc>
    3b58:	02051263          	bne	a0,zero,3b7c <__sfvwrite_r+0xbc>
    3b5c:	00098613          	addi	a2,s3,0
    3b60:	00a00593          	addi	a1,zero,10
    3b64:	000b0513          	addi	a0,s6,0
    3b68:	609020ef          	jal	ra,6970 <memchr>
    3b6c:	00198b93          	addi	s7,s3,1
    3b70:	00050663          	beq	a0,zero,3b7c <__sfvwrite_r+0xbc>
    3b74:	00150513          	addi	a0,a0,1
    3b78:	41650bb3          	sub	s7,a0,s6
    3b7c:	000b8c13          	addi	s8,s7,0
    3b80:	0179f463          	bgeu	s3,s7,3b88 <__sfvwrite_r+0xc8>
    3b84:	00098c13          	addi	s8,s3,0
    3b88:	00042503          	lw	a0,0(s0)
    3b8c:	01042783          	lw	a5,16(s0)
    3b90:	01442683          	lw	a3,20(s0)
    3b94:	32a7fe63          	bgeu	a5,a0,3ed0 <__sfvwrite_r+0x410>
    3b98:	00842483          	lw	s1,8(s0)
    3b9c:	009684b3          	add	s1,a3,s1
    3ba0:	3384d863          	bge	s1,s8,3ed0 <__sfvwrite_r+0x410>
    3ba4:	000b0593          	addi	a1,s6,0
    3ba8:	00048613          	addi	a2,s1,0
    3bac:	6c1020ef          	jal	ra,6a6c <memmove>
    3bb0:	00042783          	lw	a5,0(s0)
    3bb4:	00040593          	addi	a1,s0,0
    3bb8:	00090513          	addi	a0,s2,0
    3bbc:	009787b3          	add	a5,a5,s1
    3bc0:	00f42023          	sw	a5,0(s0)
    3bc4:	855ff0ef          	jal	ra,3418 <_fflush_r>
    3bc8:	16051663          	bne	a0,zero,3d34 <__sfvwrite_r+0x274>
    3bcc:	409b8bb3          	sub	s7,s7,s1
    3bd0:	00100513          	addi	a0,zero,1
    3bd4:	000b9a63          	bne	s7,zero,3be8 <__sfvwrite_r+0x128>
    3bd8:	00040593          	addi	a1,s0,0
    3bdc:	00090513          	addi	a0,s2,0
    3be0:	839ff0ef          	jal	ra,3418 <_fflush_r>
    3be4:	14051863          	bne	a0,zero,3d34 <__sfvwrite_r+0x274>
    3be8:	008aa783          	lw	a5,8(s5)
    3bec:	009b0b33          	add	s6,s6,s1
    3bf0:	409989b3          	sub	s3,s3,s1
    3bf4:	409784b3          	sub	s1,a5,s1
    3bf8:	009aa423          	sw	s1,8(s5)
    3bfc:	f4049ce3          	bne	s1,zero,3b54 <__sfvwrite_r+0x94>
    3c00:	0680006f          	jal	zero,3c68 <__sfvwrite_r+0x1a8>
    3c04:	00040593          	addi	a1,s0,0
    3c08:	00090513          	addi	a0,s2,0
    3c0c:	b3cff0ef          	jal	ra,2f48 <__swsetup_r>
    3c10:	fff00793          	addi	a5,zero,-1
    3c14:	f0050ce3          	beq	a0,zero,3b2c <__sfvwrite_r+0x6c>
    3c18:	0540006f          	jal	zero,3c6c <__sfvwrite_r+0x1ac>
    3c1c:	000a2983          	lw	s3,0(s4)
    3c20:	004a2483          	lw	s1,4(s4)
    3c24:	008a0a13          	addi	s4,s4,8
    3c28:	fe048ae3          	beq	s1,zero,3c1c <__sfvwrite_r+0x15c>
    3c2c:	00048693          	addi	a3,s1,0
    3c30:	009b7463          	bgeu	s6,s1,3c38 <__sfvwrite_r+0x178>
    3c34:	000b0693          	addi	a3,s6,0
    3c38:	02442783          	lw	a5,36(s0)
    3c3c:	01c42583          	lw	a1,28(s0)
    3c40:	00098613          	addi	a2,s3,0
    3c44:	00090513          	addi	a0,s2,0
    3c48:	000780e7          	jalr	ra,0(a5)
    3c4c:	0ea05463          	bge	zero,a0,3d34 <__sfvwrite_r+0x274>
    3c50:	008aa783          	lw	a5,8(s5)
    3c54:	00a989b3          	add	s3,s3,a0
    3c58:	40a484b3          	sub	s1,s1,a0
    3c5c:	40a78533          	sub	a0,a5,a0
    3c60:	00aaa423          	sw	a0,8(s5)
    3c64:	fc0512e3          	bne	a0,zero,3c28 <__sfvwrite_r+0x168>
    3c68:	00000793          	addi	a5,zero,0
    3c6c:	04c12083          	lw	ra,76(sp)
    3c70:	04812403          	lw	s0,72(sp)
    3c74:	04412483          	lw	s1,68(sp)
    3c78:	04012903          	lw	s2,64(sp)
    3c7c:	03c12983          	lw	s3,60(sp)
    3c80:	03812a03          	lw	s4,56(sp)
    3c84:	03412a83          	lw	s5,52(sp)
    3c88:	03012b03          	lw	s6,48(sp)
    3c8c:	02c12b83          	lw	s7,44(sp)
    3c90:	02812c03          	lw	s8,40(sp)
    3c94:	02412c83          	lw	s9,36(sp)
    3c98:	02012d03          	lw	s10,32(sp)
    3c9c:	01c12d83          	lw	s11,28(sp)
    3ca0:	00078513          	addi	a0,a5,0
    3ca4:	05010113          	addi	sp,sp,80
    3ca8:	00008067          	jalr	zero,0(ra)
    3cac:	80000b37          	lui	s6,0x80000
    3cb0:	00000993          	addi	s3,zero,0
    3cb4:	00000493          	addi	s1,zero,0
    3cb8:	c00b4b13          	xori	s6,s6,-1024
    3cbc:	f6dff06f          	jal	zero,3c28 <__sfvwrite_r+0x168>
    3cc0:	000a2b03          	lw	s6,0(s4)
    3cc4:	004a2483          	lw	s1,4(s4)
    3cc8:	008a0a13          	addi	s4,s4,8
    3ccc:	fe048ae3          	beq	s1,zero,3cc0 <__sfvwrite_r+0x200>
    3cd0:	00c45703          	lhu	a4,12(s0)
    3cd4:	00842783          	lw	a5,8(s0)
    3cd8:	00042503          	lw	a0,0(s0)
    3cdc:	20077693          	andi	a3,a4,512
    3ce0:	14068863          	beq	a3,zero,3e30 <__sfvwrite_r+0x370>
    3ce4:	0cf4e263          	bltu	s1,a5,3da8 <__sfvwrite_r+0x2e8>
    3ce8:	48077693          	andi	a3,a4,1152
    3cec:	0a068e63          	beq	a3,zero,3da8 <__sfvwrite_r+0x2e8>
    3cf0:	01442d83          	lw	s11,20(s0)
    3cf4:	01042583          	lw	a1,16(s0)
    3cf8:	03bc8db3          	mul	s11,s9,s11
    3cfc:	40b509b3          	sub	s3,a0,a1
    3d00:	00198793          	addi	a5,s3,1
    3d04:	009787b3          	add	a5,a5,s1
    3d08:	03adcdb3          	div	s11,s11,s10
    3d0c:	00fdf463          	bgeu	s11,a5,3d14 <__sfvwrite_r+0x254>
    3d10:	00078d93          	addi	s11,a5,0
    3d14:	40077713          	andi	a4,a4,1024
    3d18:	0e070463          	beq	a4,zero,3e00 <__sfvwrite_r+0x340>
    3d1c:	000d8593          	addi	a1,s11,0
    3d20:	00090513          	addi	a0,s2,0
    3d24:	570020ef          	jal	ra,6294 <_malloc_r>
    3d28:	04051063          	bne	a0,zero,3d68 <__sfvwrite_r+0x2a8>
    3d2c:	00c00793          	addi	a5,zero,12
    3d30:	00f92023          	sw	a5,0(s2)
    3d34:	00c45783          	lhu	a5,12(s0)
    3d38:	0407e793          	ori	a5,a5,64
    3d3c:	00f41623          	sh	a5,12(s0)
    3d40:	fff00793          	addi	a5,zero,-1
    3d44:	f29ff06f          	jal	zero,3c6c <__sfvwrite_r+0x1ac>
    3d48:	80000bb7          	lui	s7,0x80000
    3d4c:	ffebcc13          	xori	s8,s7,-2
    3d50:	00000b13          	addi	s6,zero,0
    3d54:	00000493          	addi	s1,zero,0
    3d58:	fffbcb93          	xori	s7,s7,-1
    3d5c:	00300c93          	addi	s9,zero,3
    3d60:	00200d13          	addi	s10,zero,2
    3d64:	f69ff06f          	jal	zero,3ccc <__sfvwrite_r+0x20c>
    3d68:	01042583          	lw	a1,16(s0)
    3d6c:	00098613          	addi	a2,s3,0
    3d70:	00a12623          	sw	a0,12(sp)
    3d74:	421020ef          	jal	ra,6994 <memcpy>
    3d78:	00c45703          	lhu	a4,12(s0)
    3d7c:	00c12783          	lw	a5,12(sp)
    3d80:	b7f77713          	andi	a4,a4,-1153
    3d84:	08076713          	ori	a4,a4,128
    3d88:	00e41623          	sh	a4,12(s0)
    3d8c:	00f42823          	sw	a5,16(s0)
    3d90:	01b42a23          	sw	s11,20(s0)
    3d94:	013787b3          	add	a5,a5,s3
    3d98:	413d8db3          	sub	s11,s11,s3
    3d9c:	00f42023          	sw	a5,0(s0)
    3da0:	01b42423          	sw	s11,8(s0)
    3da4:	00048793          	addi	a5,s1,0
    3da8:	00048993          	addi	s3,s1,0
    3dac:	00f4f463          	bgeu	s1,a5,3db4 <__sfvwrite_r+0x2f4>
    3db0:	00048793          	addi	a5,s1,0
    3db4:	00042503          	lw	a0,0(s0)
    3db8:	00078613          	addi	a2,a5,0
    3dbc:	000b0593          	addi	a1,s6,0 # 80000000 <__heap_top+0x7ff00000>
    3dc0:	00f12623          	sw	a5,12(sp)
    3dc4:	4a9020ef          	jal	ra,6a6c <memmove>
    3dc8:	00842703          	lw	a4,8(s0)
    3dcc:	00c12783          	lw	a5,12(sp)
    3dd0:	40f70733          	sub	a4,a4,a5
    3dd4:	00e42423          	sw	a4,8(s0)
    3dd8:	00042703          	lw	a4,0(s0)
    3ddc:	00f707b3          	add	a5,a4,a5
    3de0:	00f42023          	sw	a5,0(s0)
    3de4:	008aa783          	lw	a5,8(s5)
    3de8:	013b0b33          	add	s6,s6,s3
    3dec:	413484b3          	sub	s1,s1,s3
    3df0:	413789b3          	sub	s3,a5,s3
    3df4:	013aa423          	sw	s3,8(s5)
    3df8:	ec099ae3          	bne	s3,zero,3ccc <__sfvwrite_r+0x20c>
    3dfc:	e6dff06f          	jal	zero,3c68 <__sfvwrite_r+0x1a8>
    3e00:	000d8613          	addi	a2,s11,0
    3e04:	00090513          	addi	a0,s2,0
    3e08:	345030ef          	jal	ra,794c <_realloc_r>
    3e0c:	00050793          	addi	a5,a0,0
    3e10:	f6051ee3          	bne	a0,zero,3d8c <__sfvwrite_r+0x2cc>
    3e14:	01042583          	lw	a1,16(s0)
    3e18:	00090513          	addi	a0,s2,0
    3e1c:	a51ff0ef          	jal	ra,386c <_free_r>
    3e20:	00c45783          	lhu	a5,12(s0)
    3e24:	f7f7f793          	andi	a5,a5,-129
    3e28:	00f41623          	sh	a5,12(s0)
    3e2c:	f01ff06f          	jal	zero,3d2c <__sfvwrite_r+0x26c>
    3e30:	01042703          	lw	a4,16(s0)
    3e34:	00a76663          	bltu	a4,a0,3e40 <__sfvwrite_r+0x380>
    3e38:	01442683          	lw	a3,20(s0)
    3e3c:	04d4f663          	bgeu	s1,a3,3e88 <__sfvwrite_r+0x3c8>
    3e40:	00078993          	addi	s3,a5,0
    3e44:	00f4f463          	bgeu	s1,a5,3e4c <__sfvwrite_r+0x38c>
    3e48:	00048993          	addi	s3,s1,0
    3e4c:	00098613          	addi	a2,s3,0
    3e50:	000b0593          	addi	a1,s6,0
    3e54:	419020ef          	jal	ra,6a6c <memmove>
    3e58:	00842783          	lw	a5,8(s0)
    3e5c:	00042703          	lw	a4,0(s0)
    3e60:	413787b3          	sub	a5,a5,s3
    3e64:	01370733          	add	a4,a4,s3
    3e68:	00f42423          	sw	a5,8(s0)
    3e6c:	00e42023          	sw	a4,0(s0)
    3e70:	f6079ae3          	bne	a5,zero,3de4 <__sfvwrite_r+0x324>
    3e74:	00040593          	addi	a1,s0,0
    3e78:	00090513          	addi	a0,s2,0
    3e7c:	d9cff0ef          	jal	ra,3418 <_fflush_r>
    3e80:	f60502e3          	beq	a0,zero,3de4 <__sfvwrite_r+0x324>
    3e84:	eb1ff06f          	jal	zero,3d34 <__sfvwrite_r+0x274>
    3e88:	00048793          	addi	a5,s1,0
    3e8c:	009c7463          	bgeu	s8,s1,3e94 <__sfvwrite_r+0x3d4>
    3e90:	000b8793          	addi	a5,s7,0 # 80000000 <__heap_top+0x7ff00000>
    3e94:	02d7c7b3          	div	a5,a5,a3
    3e98:	02442703          	lw	a4,36(s0)
    3e9c:	01c42583          	lw	a1,28(s0)
    3ea0:	000b0613          	addi	a2,s6,0
    3ea4:	00090513          	addi	a0,s2,0
    3ea8:	02d786b3          	mul	a3,a5,a3
    3eac:	000700e7          	jalr	ra,0(a4)
    3eb0:	00050993          	addi	s3,a0,0
    3eb4:	f2a048e3          	blt	zero,a0,3de4 <__sfvwrite_r+0x324>
    3eb8:	e7dff06f          	jal	zero,3d34 <__sfvwrite_r+0x274>
    3ebc:	000a2b03          	lw	s6,0(s4)
    3ec0:	004a2983          	lw	s3,4(s4)
    3ec4:	00000513          	addi	a0,zero,0
    3ec8:	008a0a13          	addi	s4,s4,8
    3ecc:	c89ff06f          	jal	zero,3b54 <__sfvwrite_r+0x94>
    3ed0:	02dc4263          	blt	s8,a3,3ef4 <__sfvwrite_r+0x434>
    3ed4:	02442783          	lw	a5,36(s0)
    3ed8:	01c42583          	lw	a1,28(s0)
    3edc:	000b0613          	addi	a2,s6,0
    3ee0:	00090513          	addi	a0,s2,0
    3ee4:	000780e7          	jalr	ra,0(a5)
    3ee8:	00050493          	addi	s1,a0,0
    3eec:	cea040e3          	blt	zero,a0,3bcc <__sfvwrite_r+0x10c>
    3ef0:	e45ff06f          	jal	zero,3d34 <__sfvwrite_r+0x274>
    3ef4:	000c0613          	addi	a2,s8,0
    3ef8:	000b0593          	addi	a1,s6,0
    3efc:	371020ef          	jal	ra,6a6c <memmove>
    3f00:	00842783          	lw	a5,8(s0)
    3f04:	000c0493          	addi	s1,s8,0
    3f08:	418787b3          	sub	a5,a5,s8
    3f0c:	00f42423          	sw	a5,8(s0)
    3f10:	00042783          	lw	a5,0(s0)
    3f14:	018787b3          	add	a5,a5,s8
    3f18:	00f42023          	sw	a5,0(s0)
    3f1c:	cb1ff06f          	jal	zero,3bcc <__sfvwrite_r+0x10c>

00003f20 <_fwalk>:
    3f20:	fd010113          	addi	sp,sp,-48
    3f24:	02812423          	sw	s0,40(sp)
    3f28:	03212023          	sw	s2,32(sp)
    3f2c:	01412c23          	sw	s4,24(sp)
    3f30:	01512a23          	sw	s5,20(sp)
    3f34:	02112623          	sw	ra,44(sp)
    3f38:	02912223          	sw	s1,36(sp)
    3f3c:	01312e23          	sw	s3,28(sp)
    3f40:	2e050413          	addi	s0,a0,736
    3f44:	00000913          	addi	s2,zero,0
    3f48:	00100a13          	addi	s4,zero,1
    3f4c:	fff00a93          	addi	s5,zero,-1
    3f50:	02041663          	bne	s0,zero,3f7c <_fwalk+0x5c>
    3f54:	02c12083          	lw	ra,44(sp)
    3f58:	02812403          	lw	s0,40(sp)
    3f5c:	00090513          	addi	a0,s2,0
    3f60:	02412483          	lw	s1,36(sp)
    3f64:	02012903          	lw	s2,32(sp)
    3f68:	01c12983          	lw	s3,28(sp)
    3f6c:	01812a03          	lw	s4,24(sp)
    3f70:	01412a83          	lw	s5,20(sp)
    3f74:	03010113          	addi	sp,sp,48
    3f78:	00008067          	jalr	zero,0(ra)
    3f7c:	00842483          	lw	s1,8(s0)
    3f80:	00442983          	lw	s3,4(s0)
    3f84:	fff98993          	addi	s3,s3,-1
    3f88:	0009d663          	bge	s3,zero,3f94 <_fwalk+0x74>
    3f8c:	00042403          	lw	s0,0(s0)
    3f90:	fc1ff06f          	jal	zero,3f50 <_fwalk+0x30>
    3f94:	00c4d783          	lhu	a5,12(s1)
    3f98:	02fa7063          	bgeu	s4,a5,3fb8 <_fwalk+0x98>
    3f9c:	00e49783          	lh	a5,14(s1)
    3fa0:	01578c63          	beq	a5,s5,3fb8 <_fwalk+0x98>
    3fa4:	00048513          	addi	a0,s1,0
    3fa8:	00b12623          	sw	a1,12(sp)
    3fac:	000580e7          	jalr	ra,0(a1)
    3fb0:	00c12583          	lw	a1,12(sp)
    3fb4:	00a96933          	or	s2,s2,a0
    3fb8:	06848493          	addi	s1,s1,104
    3fbc:	fc9ff06f          	jal	zero,3f84 <_fwalk+0x64>

00003fc0 <_fwalk_reent>:
    3fc0:	fd010113          	addi	sp,sp,-48
    3fc4:	02812423          	sw	s0,40(sp)
    3fc8:	03212023          	sw	s2,32(sp)
    3fcc:	01412c23          	sw	s4,24(sp)
    3fd0:	01512a23          	sw	s5,20(sp)
    3fd4:	01612823          	sw	s6,16(sp)
    3fd8:	01712623          	sw	s7,12(sp)
    3fdc:	02112623          	sw	ra,44(sp)
    3fe0:	02912223          	sw	s1,36(sp)
    3fe4:	01312e23          	sw	s3,28(sp)
    3fe8:	00050a13          	addi	s4,a0,0
    3fec:	00058a93          	addi	s5,a1,0
    3ff0:	2e050413          	addi	s0,a0,736
    3ff4:	00000913          	addi	s2,zero,0
    3ff8:	00100b13          	addi	s6,zero,1
    3ffc:	fff00b93          	addi	s7,zero,-1
    4000:	02041a63          	bne	s0,zero,4034 <_fwalk_reent+0x74>
    4004:	02c12083          	lw	ra,44(sp)
    4008:	02812403          	lw	s0,40(sp)
    400c:	00090513          	addi	a0,s2,0
    4010:	02412483          	lw	s1,36(sp)
    4014:	02012903          	lw	s2,32(sp)
    4018:	01c12983          	lw	s3,28(sp)
    401c:	01812a03          	lw	s4,24(sp)
    4020:	01412a83          	lw	s5,20(sp)
    4024:	01012b03          	lw	s6,16(sp)
    4028:	00c12b83          	lw	s7,12(sp)
    402c:	03010113          	addi	sp,sp,48
    4030:	00008067          	jalr	zero,0(ra)
    4034:	00842483          	lw	s1,8(s0)
    4038:	00442983          	lw	s3,4(s0)
    403c:	fff98993          	addi	s3,s3,-1
    4040:	0009d663          	bge	s3,zero,404c <_fwalk_reent+0x8c>
    4044:	00042403          	lw	s0,0(s0)
    4048:	fb9ff06f          	jal	zero,4000 <_fwalk_reent+0x40>
    404c:	00c4d783          	lhu	a5,12(s1)
    4050:	00fb7e63          	bgeu	s6,a5,406c <_fwalk_reent+0xac>
    4054:	00e49783          	lh	a5,14(s1)
    4058:	01778a63          	beq	a5,s7,406c <_fwalk_reent+0xac>
    405c:	00048593          	addi	a1,s1,0
    4060:	000a0513          	addi	a0,s4,0
    4064:	000a80e7          	jalr	ra,0(s5)
    4068:	00a96933          	or	s2,s2,a0
    406c:	06848493          	addi	s1,s1,104
    4070:	fcdff06f          	jal	zero,403c <_fwalk_reent+0x7c>

00004074 <eclear>:
    4074:	01450793          	addi	a5,a0,20
    4078:	00250513          	addi	a0,a0,2
    407c:	fe051f23          	sh	zero,-2(a0)
    4080:	fef51ce3          	bne	a0,a5,4078 <eclear+0x4>
    4084:	00008067          	jalr	zero,0(ra)

00004088 <emov>:
    4088:	00000793          	addi	a5,zero,0
    408c:	01400713          	addi	a4,zero,20
    4090:	00f506b3          	add	a3,a0,a5
    4094:	0006d603          	lhu	a2,0(a3)
    4098:	00f586b3          	add	a3,a1,a5
    409c:	00278793          	addi	a5,a5,2
    40a0:	00c69023          	sh	a2,0(a3)
    40a4:	fee796e3          	bne	a5,a4,4090 <emov+0x8>
    40a8:	00008067          	jalr	zero,0(ra)

000040ac <ecleaz>:
    40ac:	01a50793          	addi	a5,a0,26
    40b0:	00250513          	addi	a0,a0,2
    40b4:	fe051f23          	sh	zero,-2(a0)
    40b8:	fef51ce3          	bne	a0,a5,40b0 <ecleaz+0x4>
    40bc:	00008067          	jalr	zero,0(ra)

000040c0 <emovz>:
    40c0:	00000793          	addi	a5,zero,0
    40c4:	01800713          	addi	a4,zero,24
    40c8:	00f506b3          	add	a3,a0,a5
    40cc:	0006d603          	lhu	a2,0(a3)
    40d0:	00f586b3          	add	a3,a1,a5
    40d4:	00278793          	addi	a5,a5,2
    40d8:	00c69023          	sh	a2,0(a3)
    40dc:	fee796e3          	bne	a5,a4,40c8 <emovz+0x8>
    40e0:	00059c23          	sh	zero,24(a1)
    40e4:	00008067          	jalr	zero,0(ra)

000040e8 <ecmpm>:
    40e8:	00400793          	addi	a5,zero,4
    40ec:	01a00613          	addi	a2,zero,26
    40f0:	00f50733          	add	a4,a0,a5
    40f4:	00075683          	lhu	a3,0(a4)
    40f8:	00f58733          	add	a4,a1,a5
    40fc:	00075703          	lhu	a4,0(a4)
    4100:	00e68a63          	beq	a3,a4,4114 <ecmpm+0x2c>
    4104:	00100513          	addi	a0,zero,1
    4108:	00d76c63          	bltu	a4,a3,4120 <ecmpm+0x38>
    410c:	fff00513          	addi	a0,zero,-1
    4110:	00008067          	jalr	zero,0(ra)
    4114:	00278793          	addi	a5,a5,2
    4118:	fcc79ce3          	bne	a5,a2,40f0 <ecmpm+0x8>
    411c:	00000513          	addi	a0,zero,0
    4120:	00008067          	jalr	zero,0(ra)

00004124 <eshdn1>:
    4124:	00450693          	addi	a3,a0,4
    4128:	00000793          	addi	a5,zero,0
    412c:	01a50513          	addi	a0,a0,26
    4130:	ffff8637          	lui	a2,0xffff8
    4134:	0006d703          	lhu	a4,0(a3)
    4138:	00177593          	andi	a1,a4,1
    413c:	00058463          	beq	a1,zero,4144 <eshdn1+0x20>
    4140:	0017e793          	ori	a5,a5,1
    4144:	0027f593          	andi	a1,a5,2
    4148:	00175713          	srli	a4,a4,0x1
    414c:	02059063          	bne	a1,zero,416c <eshdn1+0x48>
    4150:	00179793          	slli	a5,a5,0x1
    4154:	00e69023          	sh	a4,0(a3)
    4158:	01079793          	slli	a5,a5,0x10
    415c:	00268693          	addi	a3,a3,2
    4160:	0107d793          	srli	a5,a5,0x10
    4164:	fcd518e3          	bne	a0,a3,4134 <eshdn1+0x10>
    4168:	00008067          	jalr	zero,0(ra)
    416c:	00c76733          	or	a4,a4,a2
    4170:	fe1ff06f          	jal	zero,4150 <eshdn1+0x2c>

00004174 <eshup1>:
    4174:	01650693          	addi	a3,a0,22
    4178:	00000713          	addi	a4,zero,0
    417c:	0026d783          	lhu	a5,2(a3)
    4180:	01079613          	slli	a2,a5,0x10
    4184:	41065613          	srai	a2,a2,0x10
    4188:	00065463          	bge	a2,zero,4190 <eshup1+0x1c>
    418c:	00176713          	ori	a4,a4,1
    4190:	00179793          	slli	a5,a5,0x1
    4194:	01079793          	slli	a5,a5,0x10
    4198:	00277613          	andi	a2,a4,2
    419c:	0107d793          	srli	a5,a5,0x10
    41a0:	02061063          	bne	a2,zero,41c0 <eshup1+0x4c>
    41a4:	00171713          	slli	a4,a4,0x1
    41a8:	00f69123          	sh	a5,2(a3)
    41ac:	01071713          	slli	a4,a4,0x10
    41b0:	ffe68693          	addi	a3,a3,-2
    41b4:	01075713          	srli	a4,a4,0x10
    41b8:	fcd512e3          	bne	a0,a3,417c <eshup1+0x8>
    41bc:	00008067          	jalr	zero,0(ra)
    41c0:	0017e793          	ori	a5,a5,1
    41c4:	fe1ff06f          	jal	zero,41a4 <eshup1+0x30>

000041c8 <eshdn8>:
    41c8:	00450793          	addi	a5,a0,4
    41cc:	00000713          	addi	a4,zero,0
    41d0:	01a50513          	addi	a0,a0,26
    41d4:	0007d683          	lhu	a3,0(a5)
    41d8:	00278793          	addi	a5,a5,2
    41dc:	0086d613          	srli	a2,a3,0x8
    41e0:	00c76733          	or	a4,a4,a2
    41e4:	fee79f23          	sh	a4,-2(a5)
    41e8:	00869713          	slli	a4,a3,0x8
    41ec:	01071713          	slli	a4,a4,0x10
    41f0:	01075713          	srli	a4,a4,0x10
    41f4:	fef510e3          	bne	a0,a5,41d4 <eshdn8+0xc>
    41f8:	00008067          	jalr	zero,0(ra)

000041fc <eshup8>:
    41fc:	01650793          	addi	a5,a0,22
    4200:	00000713          	addi	a4,zero,0
    4204:	0027d683          	lhu	a3,2(a5)
    4208:	ffe78793          	addi	a5,a5,-2
    420c:	00869613          	slli	a2,a3,0x8
    4210:	00c76733          	or	a4,a4,a2
    4214:	00e79223          	sh	a4,4(a5)
    4218:	0086d713          	srli	a4,a3,0x8
    421c:	fef514e3          	bne	a0,a5,4204 <eshup8+0x8>
    4220:	00008067          	jalr	zero,0(ra)

00004224 <eshup6>:
    4224:	00450793          	addi	a5,a0,4
    4228:	01850713          	addi	a4,a0,24
    422c:	00278793          	addi	a5,a5,2
    4230:	0007d683          	lhu	a3,0(a5)
    4234:	fed79f23          	sh	a3,-2(a5)
    4238:	fef71ae3          	bne	a4,a5,422c <eshup6+0x8>
    423c:	00051c23          	sh	zero,24(a0)
    4240:	00008067          	jalr	zero,0(ra)

00004244 <eshdn6>:
    4244:	01850793          	addi	a5,a0,24
    4248:	00450713          	addi	a4,a0,4
    424c:	ffe78793          	addi	a5,a5,-2
    4250:	0007d683          	lhu	a3,0(a5)
    4254:	00d79123          	sh	a3,2(a5)
    4258:	fef71ae3          	bne	a4,a5,424c <eshdn6+0x8>
    425c:	00051223          	sh	zero,4(a0)
    4260:	00008067          	jalr	zero,0(ra)

00004264 <eaddm>:
    4264:	01858593          	addi	a1,a1,24
    4268:	01650713          	addi	a4,a0,22
    426c:	00000693          	addi	a3,zero,0
    4270:	00275783          	lhu	a5,2(a4)
    4274:	0005d603          	lhu	a2,0(a1)
    4278:	ffe70713          	addi	a4,a4,-2
    427c:	ffe58593          	addi	a1,a1,-2
    4280:	00c787b3          	add	a5,a5,a2
    4284:	00d787b3          	add	a5,a5,a3
    4288:	00f59123          	sh	a5,2(a1)
    428c:	0107d793          	srli	a5,a5,0x10
    4290:	0017f693          	andi	a3,a5,1
    4294:	fce51ee3          	bne	a0,a4,4270 <eaddm+0xc>
    4298:	00008067          	jalr	zero,0(ra)

0000429c <esubm>:
    429c:	01858593          	addi	a1,a1,24
    42a0:	01650713          	addi	a4,a0,22
    42a4:	00000693          	addi	a3,zero,0
    42a8:	0005d783          	lhu	a5,0(a1)
    42ac:	ffe70713          	addi	a4,a4,-2
    42b0:	ffe58593          	addi	a1,a1,-2
    42b4:	40d787b3          	sub	a5,a5,a3
    42b8:	00475683          	lhu	a3,4(a4)
    42bc:	40d787b3          	sub	a5,a5,a3
    42c0:	00f59123          	sh	a5,2(a1)
    42c4:	0107d793          	srli	a5,a5,0x10
    42c8:	0017f693          	andi	a3,a5,1
    42cc:	fce51ee3          	bne	a0,a4,42a8 <esubm+0xc>
    42d0:	00008067          	jalr	zero,0(ra)

000042d4 <m16m>:
    42d4:	fe010113          	addi	sp,sp,-32
    42d8:	00010337          	lui	t1,0x10
    42dc:	01858893          	addi	a7,a1,24
    42e0:	00011d23          	sh	zero,26(sp)
    42e4:	00011e23          	sh	zero,28(sp)
    42e8:	00458593          	addi	a1,a1,4
    42ec:	01c10693          	addi	a3,sp,28
    42f0:	fff30313          	addi	t1,t1,-1 # ffff <__subtf3+0xc8b>
    42f4:	0008d703          	lhu	a4,0(a7)
    42f8:	ffe68693          	addi	a3,a3,-2
    42fc:	ffe88893          	addi	a7,a7,-2
    4300:	02071c63          	bne	a4,zero,4338 <m16m+0x64>
    4304:	fe069f23          	sh	zero,-2(a3)
    4308:	ff1596e3          	bne	a1,a7,42f4 <m16m+0x20>
    430c:	00400793          	addi	a5,zero,4
    4310:	01a00713          	addi	a4,zero,26
    4314:	00410593          	addi	a1,sp,4
    4318:	00f585b3          	add	a1,a1,a5
    431c:	0005d583          	lhu	a1,0(a1)
    4320:	00f606b3          	add	a3,a2,a5
    4324:	00278793          	addi	a5,a5,2
    4328:	00b69023          	sh	a1,0(a3)
    432c:	fee794e3          	bne	a5,a4,4314 <m16m+0x40>
    4330:	02010113          	addi	sp,sp,32
    4334:	00008067          	jalr	zero,0(ra)
    4338:	02a70733          	mul	a4,a4,a0
    433c:	0026d803          	lhu	a6,2(a3)
    4340:	006777b3          	and	a5,a4,t1
    4344:	010787b3          	add	a5,a5,a6
    4348:	0107d813          	srli	a6,a5,0x10
    434c:	00f69123          	sh	a5,2(a3)
    4350:	01075793          	srli	a5,a4,0x10
    4354:	0006d703          	lhu	a4,0(a3)
    4358:	00e787b3          	add	a5,a5,a4
    435c:	010787b3          	add	a5,a5,a6
    4360:	00f69023          	sh	a5,0(a3)
    4364:	0107d793          	srli	a5,a5,0x10
    4368:	fef69f23          	sh	a5,-2(a3)
    436c:	f9dff06f          	jal	zero,4308 <m16m+0x34>

00004370 <eisnan>:
    4370:	01255783          	lhu	a5,18(a0)
    4374:	fff7c793          	xori	a5,a5,-1
    4378:	01179713          	slli	a4,a5,0x11
    437c:	00071c63          	bne	a4,zero,4394 <eisnan+0x24>
    4380:	01250793          	addi	a5,a0,18
    4384:	00250513          	addi	a0,a0,2
    4388:	ffe55703          	lhu	a4,-2(a0)
    438c:	00071863          	bne	a4,zero,439c <eisnan+0x2c>
    4390:	fea79ae3          	bne	a5,a0,4384 <eisnan+0x14>
    4394:	00000513          	addi	a0,zero,0
    4398:	00008067          	jalr	zero,0(ra)
    439c:	00100513          	addi	a0,zero,1
    43a0:	00008067          	jalr	zero,0(ra)

000043a4 <eisneg>:
    43a4:	ff010113          	addi	sp,sp,-16
    43a8:	00812423          	sw	s0,8(sp)
    43ac:	00112623          	sw	ra,12(sp)
    43b0:	00050413          	addi	s0,a0,0
    43b4:	fbdff0ef          	jal	ra,4370 <eisnan>
    43b8:	00051e63          	bne	a0,zero,43d4 <eisneg+0x30>
    43bc:	01241503          	lh	a0,18(s0)
    43c0:	01f55513          	srli	a0,a0,0x1f
    43c4:	00c12083          	lw	ra,12(sp)
    43c8:	00812403          	lw	s0,8(sp)
    43cc:	01010113          	addi	sp,sp,16
    43d0:	00008067          	jalr	zero,0(ra)
    43d4:	00000513          	addi	a0,zero,0
    43d8:	fedff06f          	jal	zero,43c4 <eisneg+0x20>

000043dc <emovi>:
    43dc:	01251783          	lh	a5,18(a0)
    43e0:	ff010113          	addi	sp,sp,-16
    43e4:	00112623          	sw	ra,12(sp)
    43e8:	00812423          	sw	s0,8(sp)
    43ec:	00912223          	sw	s1,4(sp)
    43f0:	01212023          	sw	s2,0(sp)
    43f4:	0607d863          	bge	a5,zero,4464 <emovi+0x88>
    43f8:	fff00793          	addi	a5,zero,-1
    43fc:	00f59023          	sh	a5,0(a1)
    4400:	01255703          	lhu	a4,18(a0)
    4404:	000087b7          	lui	a5,0x8
    4408:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    440c:	00e7f733          	and	a4,a5,a4
    4410:	00e59123          	sh	a4,2(a1)
    4414:	01050913          	addi	s2,a0,16
    4418:	06f71663          	bne	a4,a5,4484 <emovi+0xa8>
    441c:	00058413          	addi	s0,a1,0
    4420:	00050493          	addi	s1,a0,0
    4424:	f4dff0ef          	jal	ra,4370 <eisnan>
    4428:	04050263          	beq	a0,zero,446c <emovi+0x90>
    442c:	00640793          	addi	a5,s0,6
    4430:	00041223          	sh	zero,4(s0)
    4434:	ffc48513          	addi	a0,s1,-4
    4438:	ffe90913          	addi	s2,s2,-2
    443c:	00295703          	lhu	a4,2(s2)
    4440:	00278793          	addi	a5,a5,2
    4444:	fee79f23          	sh	a4,-2(a5)
    4448:	fea918e3          	bne	s2,a0,4438 <emovi+0x5c>
    444c:	00c12083          	lw	ra,12(sp)
    4450:	00812403          	lw	s0,8(sp)
    4454:	00412483          	lw	s1,4(sp)
    4458:	00012903          	lw	s2,0(sp)
    445c:	01010113          	addi	sp,sp,16
    4460:	00008067          	jalr	zero,0(ra)
    4464:	00059023          	sh	zero,0(a1)
    4468:	f99ff06f          	jal	zero,4400 <emovi+0x24>
    446c:	00440793          	addi	a5,s0,4
    4470:	01a40593          	addi	a1,s0,26
    4474:	00278793          	addi	a5,a5,2
    4478:	fe079f23          	sh	zero,-2(a5)
    447c:	feb79ce3          	bne	a5,a1,4474 <emovi+0x98>
    4480:	fcdff06f          	jal	zero,444c <emovi+0x70>
    4484:	00658793          	addi	a5,a1,6
    4488:	00059223          	sh	zero,4(a1)
    448c:	ffe50513          	addi	a0,a0,-2
    4490:	ffe90913          	addi	s2,s2,-2
    4494:	00295703          	lhu	a4,2(s2)
    4498:	00278793          	addi	a5,a5,2
    449c:	fee79f23          	sh	a4,-2(a5)
    44a0:	fea918e3          	bne	s2,a0,4490 <emovi+0xb4>
    44a4:	00059c23          	sh	zero,24(a1)
    44a8:	fa5ff06f          	jal	zero,444c <emovi+0x70>

000044ac <ecmp>:
    44ac:	fb010113          	addi	sp,sp,-80
    44b0:	04912223          	sw	s1,68(sp)
    44b4:	05212023          	sw	s2,64(sp)
    44b8:	04112623          	sw	ra,76(sp)
    44bc:	04812423          	sw	s0,72(sp)
    44c0:	00050913          	addi	s2,a0,0
    44c4:	00058493          	addi	s1,a1,0
    44c8:	ea9ff0ef          	jal	ra,4370 <eisnan>
    44cc:	0e051063          	bne	a0,zero,45ac <ecmp+0x100>
    44d0:	00048513          	addi	a0,s1,0
    44d4:	e9dff0ef          	jal	ra,4370 <eisnan>
    44d8:	00050413          	addi	s0,a0,0
    44dc:	0c051863          	bne	a0,zero,45ac <ecmp+0x100>
    44e0:	00810593          	addi	a1,sp,8
    44e4:	00090513          	addi	a0,s2,0
    44e8:	ef5ff0ef          	jal	ra,43dc <emovi>
    44ec:	02410593          	addi	a1,sp,36
    44f0:	00048513          	addi	a0,s1,0
    44f4:	ee9ff0ef          	jal	ra,43dc <emovi>
    44f8:	00815703          	lhu	a4,8(sp)
    44fc:	02415783          	lhu	a5,36(sp)
    4500:	06e78063          	beq	a5,a4,4560 <ecmp+0xb4>
    4504:	00200793          	addi	a5,zero,2
    4508:	01800693          	addi	a3,zero,24
    450c:	00810613          	addi	a2,sp,8
    4510:	00f60633          	add	a2,a2,a5
    4514:	00065603          	lhu	a2,0(a2) # ffff8000 <__heap_top+0xffef8000>
    4518:	02061c63          	bne	a2,zero,4550 <ecmp+0xa4>
    451c:	02410613          	addi	a2,sp,36
    4520:	00f60633          	add	a2,a2,a5
    4524:	00065603          	lhu	a2,0(a2)
    4528:	02061463          	bne	a2,zero,4550 <ecmp+0xa4>
    452c:	00278793          	addi	a5,a5,2
    4530:	fcd79ee3          	bne	a5,a3,450c <ecmp+0x60>
    4534:	00040513          	addi	a0,s0,0
    4538:	04c12083          	lw	ra,76(sp)
    453c:	04812403          	lw	s0,72(sp)
    4540:	04412483          	lw	s1,68(sp)
    4544:	04012903          	lw	s2,64(sp)
    4548:	05010113          	addi	sp,sp,80
    454c:	00008067          	jalr	zero,0(ra)
    4550:	00100413          	addi	s0,zero,1
    4554:	fe0700e3          	beq	a4,zero,4534 <ecmp+0x88>
    4558:	fff00413          	addi	s0,zero,-1
    455c:	fd9ff06f          	jal	zero,4534 <ecmp+0x88>
    4560:	00100713          	addi	a4,zero,1
    4564:	00078463          	beq	a5,zero,456c <ecmp+0xc0>
    4568:	fff00713          	addi	a4,zero,-1
    456c:	00000793          	addi	a5,zero,0
    4570:	01800593          	addi	a1,zero,24
    4574:	00810693          	addi	a3,sp,8
    4578:	00f686b3          	add	a3,a3,a5
    457c:	0006d603          	lhu	a2,0(a3)
    4580:	02410693          	addi	a3,sp,36
    4584:	00f686b3          	add	a3,a3,a5
    4588:	0006d683          	lhu	a3,0(a3)
    458c:	00d60a63          	beq	a2,a3,45a0 <ecmp+0xf4>
    4590:	00070413          	addi	s0,a4,0
    4594:	fac6e0e3          	bltu	a3,a2,4534 <ecmp+0x88>
    4598:	40e00433          	sub	s0,zero,a4
    459c:	f99ff06f          	jal	zero,4534 <ecmp+0x88>
    45a0:	00278793          	addi	a5,a5,2
    45a4:	fcb798e3          	bne	a5,a1,4574 <ecmp+0xc8>
    45a8:	f8dff06f          	jal	zero,4534 <ecmp+0x88>
    45ac:	ffe00413          	addi	s0,zero,-2
    45b0:	f85ff06f          	jal	zero,4534 <ecmp+0x88>

000045b4 <eisinf>:
    45b4:	01255783          	lhu	a5,18(a0)
    45b8:	fff7c793          	xori	a5,a5,-1
    45bc:	01179713          	slli	a4,a5,0x11
    45c0:	02071063          	bne	a4,zero,45e0 <eisinf+0x2c>
    45c4:	ff010113          	addi	sp,sp,-16
    45c8:	00112623          	sw	ra,12(sp)
    45cc:	da5ff0ef          	jal	ra,4370 <eisnan>
    45d0:	00c12083          	lw	ra,12(sp)
    45d4:	00153513          	sltiu	a0,a0,1
    45d8:	01010113          	addi	sp,sp,16
    45dc:	00008067          	jalr	zero,0(ra)
    45e0:	00000513          	addi	a0,zero,0
    45e4:	00008067          	jalr	zero,0(ra)

000045e8 <einfin.isra.2>:
    45e8:	01250713          	addi	a4,a0,18
    45ec:	00050793          	addi	a5,a0,0
    45f0:	00278793          	addi	a5,a5,2
    45f4:	fe079f23          	sh	zero,-2(a5)
    45f8:	fee79ce3          	bne	a5,a4,45f0 <einfin.isra.2+0x8>
    45fc:	01255783          	lhu	a5,18(a0)
    4600:	00008737          	lui	a4,0x8
    4604:	fff70713          	addi	a4,a4,-1 # 7fff <sprintf+0x13>
    4608:	00e7e7b3          	or	a5,a5,a4
    460c:	00f51923          	sh	a5,18(a0)
    4610:	00008067          	jalr	zero,0(ra)

00004614 <eshift.part.3>:
    4614:	fe010113          	addi	sp,sp,-32
    4618:	00812c23          	sw	s0,24(sp)
    461c:	01312623          	sw	s3,12(sp)
    4620:	00112e23          	sw	ra,28(sp)
    4624:	00912a23          	sw	s1,20(sp)
    4628:	01212823          	sw	s2,16(sp)
    462c:	01412423          	sw	s4,8(sp)
    4630:	01512223          	sw	s5,4(sp)
    4634:	00050993          	addi	s3,a0,0
    4638:	00058413          	addi	s0,a1,0
    463c:	1005d263          	bge	a1,zero,4740 <eshift.part.3+0x12c>
    4640:	40b00933          	sub	s2,zero,a1
    4644:	00090a13          	addi	s4,s2,0
    4648:	00000493          	addi	s1,zero,0
    464c:	00f00a93          	addi	s5,zero,15
    4650:	034ace63          	blt	s5,s4,468c <eshift.part.3+0x78>
    4654:	00495913          	srli	s2,s2,0x4
    4658:	ff000593          	addi	a1,zero,-16
    465c:	02b905b3          	mul	a1,s2,a1
    4660:	00700a13          	addi	s4,zero,7
    4664:	40858433          	sub	s0,a1,s0
    4668:	00040913          	addi	s2,s0,0
    466c:	032a4c63          	blt	s4,s2,46a4 <eshift.part.3+0x90>
    4670:	00345593          	srli	a1,s0,0x3
    4674:	ff800793          	addi	a5,zero,-8
    4678:	02f585b3          	mul	a1,a1,a5
    467c:	00858433          	add	s0,a1,s0
    4680:	02041e63          	bne	s0,zero,46bc <eshift.part.3+0xa8>
    4684:	00903533          	sltu	a0,zero,s1
    4688:	0940006f          	jal	zero,471c <eshift.part.3+0x108>
    468c:	0189d783          	lhu	a5,24(s3)
    4690:	00098513          	addi	a0,s3,0
    4694:	ff0a0a13          	addi	s4,s4,-16
    4698:	00f4e4b3          	or	s1,s1,a5
    469c:	ba9ff0ef          	jal	ra,4244 <eshdn6>
    46a0:	fb1ff06f          	jal	zero,4650 <eshift.part.3+0x3c>
    46a4:	0189c783          	lbu	a5,24(s3)
    46a8:	00098513          	addi	a0,s3,0
    46ac:	ff890913          	addi	s2,s2,-8
    46b0:	0097e4b3          	or	s1,a5,s1
    46b4:	b15ff0ef          	jal	ra,41c8 <eshdn8>
    46b8:	fb5ff06f          	jal	zero,466c <eshift.part.3+0x58>
    46bc:	0189d783          	lhu	a5,24(s3)
    46c0:	00098513          	addi	a0,s3,0
    46c4:	fff40413          	addi	s0,s0,-1
    46c8:	0017f793          	andi	a5,a5,1
    46cc:	0097e4b3          	or	s1,a5,s1
    46d0:	a55ff0ef          	jal	ra,4124 <eshdn1>
    46d4:	fadff06f          	jal	zero,4680 <eshift.part.3+0x6c>
    46d8:	00098513          	addi	a0,s3,0
    46dc:	b49ff0ef          	jal	ra,4224 <eshup6>
    46e0:	ff048493          	addi	s1,s1,-16
    46e4:	fe994ae3          	blt	s2,s1,46d8 <eshift.part.3+0xc4>
    46e8:	00445593          	srli	a1,s0,0x4
    46ec:	ff000793          	addi	a5,zero,-16
    46f0:	02f585b3          	mul	a1,a1,a5
    46f4:	00700913          	addi	s2,zero,7
    46f8:	00b40433          	add	s0,s0,a1
    46fc:	00040493          	addi	s1,s0,0
    4700:	04994663          	blt	s2,s1,474c <eshift.part.3+0x138>
    4704:	00345593          	srli	a1,s0,0x3
    4708:	ff800793          	addi	a5,zero,-8
    470c:	02f585b3          	mul	a1,a1,a5
    4710:	00b40433          	add	s0,s0,a1
    4714:	04041463          	bne	s0,zero,475c <eshift.part.3+0x148>
    4718:	00000513          	addi	a0,zero,0
    471c:	01c12083          	lw	ra,28(sp)
    4720:	01812403          	lw	s0,24(sp)
    4724:	01412483          	lw	s1,20(sp)
    4728:	01012903          	lw	s2,16(sp)
    472c:	00c12983          	lw	s3,12(sp)
    4730:	00812a03          	lw	s4,8(sp)
    4734:	00412a83          	lw	s5,4(sp)
    4738:	02010113          	addi	sp,sp,32
    473c:	00008067          	jalr	zero,0(ra)
    4740:	00058493          	addi	s1,a1,0
    4744:	00f00913          	addi	s2,zero,15
    4748:	f9dff06f          	jal	zero,46e4 <eshift.part.3+0xd0>
    474c:	00098513          	addi	a0,s3,0
    4750:	aadff0ef          	jal	ra,41fc <eshup8>
    4754:	ff848493          	addi	s1,s1,-8
    4758:	fa9ff06f          	jal	zero,4700 <eshift.part.3+0xec>
    475c:	00098513          	addi	a0,s3,0
    4760:	a15ff0ef          	jal	ra,4174 <eshup1>
    4764:	fff40413          	addi	s0,s0,-1
    4768:	fadff06f          	jal	zero,4714 <eshift.part.3+0x100>

0000476c <enormlz>:
    476c:	00455783          	lhu	a5,4(a0)
    4770:	ff010113          	addi	sp,sp,-16
    4774:	00912223          	sw	s1,4(sp)
    4778:	00112623          	sw	ra,12(sp)
    477c:	00812423          	sw	s0,8(sp)
    4780:	01212023          	sw	s2,0(sp)
    4784:	00050493          	addi	s1,a0,0
    4788:	02078063          	beq	a5,zero,47a8 <enormlz+0x3c>
    478c:	f007f793          	andi	a5,a5,-256
    4790:	00000413          	addi	s0,zero,0
    4794:	00078663          	beq	a5,zero,47a0 <enormlz+0x34>
    4798:	a31ff0ef          	jal	ra,41c8 <eshdn8>
    479c:	ff800413          	addi	s0,zero,-8
    47a0:	f6f00913          	addi	s2,zero,-145
    47a4:	0940006f          	jal	zero,4838 <enormlz+0xcc>
    47a8:	00651783          	lh	a5,6(a0)
    47ac:	00000413          	addi	s0,zero,0
    47b0:	0a000913          	addi	s2,zero,160
    47b4:	0207d863          	bge	a5,zero,47e4 <enormlz+0x78>
    47b8:	00040513          	addi	a0,s0,0
    47bc:	00c12083          	lw	ra,12(sp)
    47c0:	00812403          	lw	s0,8(sp)
    47c4:	00412483          	lw	s1,4(sp)
    47c8:	00012903          	lw	s2,0(sp)
    47cc:	01010113          	addi	sp,sp,16
    47d0:	00008067          	jalr	zero,0(ra)
    47d4:	00048513          	addi	a0,s1,0
    47d8:	01040413          	addi	s0,s0,16
    47dc:	a49ff0ef          	jal	ra,4224 <eshup6>
    47e0:	fd240ce3          	beq	s0,s2,47b8 <enormlz+0x4c>
    47e4:	0064d783          	lhu	a5,6(s1)
    47e8:	fe0786e3          	beq	a5,zero,47d4 <enormlz+0x68>
    47ec:	0064d783          	lhu	a5,6(s1)
    47f0:	f007f793          	andi	a5,a5,-256
    47f4:	02078263          	beq	a5,zero,4818 <enormlz+0xac>
    47f8:	0a000913          	addi	s2,zero,160
    47fc:	00649783          	lh	a5,6(s1)
    4800:	fa07cce3          	blt	a5,zero,47b8 <enormlz+0x4c>
    4804:	00048513          	addi	a0,s1,0
    4808:	00140413          	addi	s0,s0,1
    480c:	969ff0ef          	jal	ra,4174 <eshup1>
    4810:	fe8956e3          	bge	s2,s0,47fc <enormlz+0x90>
    4814:	fa5ff06f          	jal	zero,47b8 <enormlz+0x4c>
    4818:	00048513          	addi	a0,s1,0
    481c:	9e1ff0ef          	jal	ra,41fc <eshup8>
    4820:	00840413          	addi	s0,s0,8
    4824:	fc9ff06f          	jal	zero,47ec <enormlz+0x80>
    4828:	00048513          	addi	a0,s1,0
    482c:	fff40413          	addi	s0,s0,-1
    4830:	8f5ff0ef          	jal	ra,4124 <eshdn1>
    4834:	f92402e3          	beq	s0,s2,47b8 <enormlz+0x4c>
    4838:	0044d783          	lhu	a5,4(s1)
    483c:	fe0796e3          	bne	a5,zero,4828 <enormlz+0xbc>
    4840:	f79ff06f          	jal	zero,47b8 <enormlz+0x4c>

00004844 <enan.constprop.12>:
    4844:	01050713          	addi	a4,a0,16
    4848:	00050793          	addi	a5,a0,0
    484c:	00278793          	addi	a5,a5,2
    4850:	fe079f23          	sh	zero,-2(a5)
    4854:	fee79ce3          	bne	a5,a4,484c <enan.constprop.12+0x8>
    4858:	7fffc7b7          	lui	a5,0x7fffc
    485c:	00f52823          	sw	a5,16(a0)
    4860:	00008067          	jalr	zero,0(ra)

00004864 <emovo.isra.6>:
    4864:	00050713          	addi	a4,a0,0
    4868:	00075683          	lhu	a3,0(a4)
    486c:	00058513          	addi	a0,a1,0
    4870:	00275783          	lhu	a5,2(a4)
    4874:	00068663          	beq	a3,zero,4880 <emovo.isra.6+0x1c>
    4878:	ffff86b7          	lui	a3,0xffff8
    487c:	00d7e7b3          	or	a5,a5,a3
    4880:	00f51923          	sh	a5,18(a0)
    4884:	00275603          	lhu	a2,2(a4)
    4888:	000086b7          	lui	a3,0x8
    488c:	fff68693          	addi	a3,a3,-1 # 7fff <sprintf+0x13>
    4890:	00670793          	addi	a5,a4,6
    4894:	00d61e63          	bne	a2,a3,48b0 <emovo.isra.6+0x4c>
    4898:	01a70713          	addi	a4,a4,26
    489c:	0007d683          	lhu	a3,0(a5) # 7fffc000 <__heap_top+0x7fefc000>
    48a0:	02069863          	bne	a3,zero,48d0 <emovo.isra.6+0x6c>
    48a4:	00278793          	addi	a5,a5,2
    48a8:	fee79ae3          	bne	a5,a4,489c <emovo.isra.6+0x38>
    48ac:	d3dff06f          	jal	zero,45e8 <einfin.isra.2>
    48b0:	01050513          	addi	a0,a0,16
    48b4:	01870713          	addi	a4,a4,24
    48b8:	00278793          	addi	a5,a5,2
    48bc:	ffe7d683          	lhu	a3,-2(a5)
    48c0:	ffe50513          	addi	a0,a0,-2
    48c4:	00d51123          	sh	a3,2(a0)
    48c8:	fee798e3          	bne	a5,a4,48b8 <emovo.isra.6+0x54>
    48cc:	00008067          	jalr	zero,0(ra)
    48d0:	f75ff06f          	jal	zero,4844 <enan.constprop.12>

000048d4 <e113toe.isra.8>:
    48d4:	fd010113          	addi	sp,sp,-48
    48d8:	02912223          	sw	s1,36(sp)
    48dc:	00050493          	addi	s1,a0,0
    48e0:	00410513          	addi	a0,sp,4
    48e4:	02812423          	sw	s0,40(sp)
    48e8:	02112623          	sw	ra,44(sp)
    48ec:	00058413          	addi	s0,a1,0
    48f0:	fbcff0ef          	jal	ra,40ac <ecleaz>
    48f4:	00e4d703          	lhu	a4,14(s1)
    48f8:	01071793          	slli	a5,a4,0x10
    48fc:	4107d793          	srai	a5,a5,0x10
    4900:	0407c263          	blt	a5,zero,4944 <e113toe.isra.8+0x70>
    4904:	00011223          	sh	zero,4(sp)
    4908:	000086b7          	lui	a3,0x8
    490c:	fff68693          	addi	a3,a3,-1 # 7fff <sprintf+0x13>
    4910:	00d77733          	and	a4,a4,a3
    4914:	00e48793          	addi	a5,s1,14
    4918:	06d71c63          	bne	a4,a3,4990 <e113toe.isra.8+0xbc>
    491c:	00048713          	addi	a4,s1,0
    4920:	00075683          	lhu	a3,0(a4)
    4924:	02068663          	beq	a3,zero,4950 <e113toe.isra.8+0x7c>
    4928:	00040513          	addi	a0,s0,0
    492c:	f19ff0ef          	jal	ra,4844 <enan.constprop.12>
    4930:	02c12083          	lw	ra,44(sp)
    4934:	02812403          	lw	s0,40(sp)
    4938:	02412483          	lw	s1,36(sp)
    493c:	03010113          	addi	sp,sp,48
    4940:	00008067          	jalr	zero,0(ra)
    4944:	fff00793          	addi	a5,zero,-1
    4948:	00f11223          	sh	a5,4(sp)
    494c:	fbdff06f          	jal	zero,4908 <e113toe.isra.8+0x34>
    4950:	00270713          	addi	a4,a4,2
    4954:	fce796e3          	bne	a5,a4,4920 <e113toe.isra.8+0x4c>
    4958:	00040513          	addi	a0,s0,0
    495c:	f18ff0ef          	jal	ra,4074 <eclear>
    4960:	00040513          	addi	a0,s0,0
    4964:	c85ff0ef          	jal	ra,45e8 <einfin.isra.2>
    4968:	00e49783          	lh	a5,14(s1)
    496c:	fc07d2e3          	bge	a5,zero,4930 <e113toe.isra.8+0x5c>
    4970:	00040513          	addi	a0,s0,0
    4974:	9fdff0ef          	jal	ra,4370 <eisnan>
    4978:	fa051ce3          	bne	a0,zero,4930 <e113toe.isra.8+0x5c>
    497c:	01245783          	lhu	a5,18(s0)
    4980:	ffff8737          	lui	a4,0xffff8
    4984:	00e7c7b3          	xor	a5,a5,a4
    4988:	00f41923          	sh	a5,18(s0)
    498c:	fa5ff06f          	jal	zero,4930 <e113toe.isra.8+0x5c>
    4990:	00e11323          	sh	a4,6(sp)
    4994:	00410693          	addi	a3,sp,4
    4998:	ffe78793          	addi	a5,a5,-2
    499c:	0007d603          	lhu	a2,0(a5)
    49a0:	00268693          	addi	a3,a3,2
    49a4:	00c69223          	sh	a2,4(a3)
    49a8:	fef498e3          	bne	s1,a5,4998 <e113toe.isra.8+0xc4>
    49ac:	00071c63          	bne	a4,zero,49c4 <e113toe.isra.8+0xf0>
    49b0:	00011423          	sh	zero,8(sp)
    49b4:	00040593          	addi	a1,s0,0
    49b8:	00410513          	addi	a0,sp,4
    49bc:	ea9ff0ef          	jal	ra,4864 <emovo.isra.6>
    49c0:	f71ff06f          	jal	zero,4930 <e113toe.isra.8+0x5c>
    49c4:	00100793          	addi	a5,zero,1
    49c8:	fff00593          	addi	a1,zero,-1
    49cc:	00410513          	addi	a0,sp,4
    49d0:	00f11423          	sh	a5,8(sp)
    49d4:	c41ff0ef          	jal	ra,4614 <eshift.part.3>
    49d8:	fddff06f          	jal	zero,49b4 <e113toe.isra.8+0xe0>

000049dc <emdnorm>:
    49dc:	fe010113          	addi	sp,sp,-32
    49e0:	00812c23          	sw	s0,24(sp)
    49e4:	00912a23          	sw	s1,20(sp)
    49e8:	01212823          	sw	s2,16(sp)
    49ec:	01312623          	sw	s3,12(sp)
    49f0:	01412423          	sw	s4,8(sp)
    49f4:	01512223          	sw	s5,4(sp)
    49f8:	00068913          	addi	s2,a3,0
    49fc:	00078413          	addi	s0,a5,0
    4a00:	00112e23          	sw	ra,28(sp)
    4a04:	00050493          	addi	s1,a0,0
    4a08:	00058993          	addi	s3,a1,0
    4a0c:	00060a13          	addi	s4,a2,0
    4a10:	00070a93          	addi	s5,a4,0 # ffff8000 <__heap_top+0xffef8000>
    4a14:	d59ff0ef          	jal	ra,476c <enormlz>
    4a18:	09000793          	addi	a5,zero,144
    4a1c:	40a90933          	sub	s2,s2,a0
    4a20:	04a7d463          	bge	a5,a0,4a68 <emdnorm+0x8c>
    4a24:	000087b7          	lui	a5,0x8
    4a28:	ffe78793          	addi	a5,a5,-2 # 7ffe <sprintf+0x12>
    4a2c:	0527cc63          	blt	a5,s2,4a84 <emdnorm+0xa8>
    4a30:	00248793          	addi	a5,s1,2
    4a34:	01a48493          	addi	s1,s1,26
    4a38:	00278793          	addi	a5,a5,2
    4a3c:	fe079f23          	sh	zero,-2(a5)
    4a40:	fe979ce3          	bne	a5,s1,4a38 <emdnorm+0x5c>
    4a44:	01c12083          	lw	ra,28(sp)
    4a48:	01812403          	lw	s0,24(sp)
    4a4c:	01412483          	lw	s1,20(sp)
    4a50:	01012903          	lw	s2,16(sp)
    4a54:	00c12983          	lw	s3,12(sp)
    4a58:	00812a03          	lw	s4,8(sp)
    4a5c:	00412a83          	lw	s5,4(sp)
    4a60:	02010113          	addi	sp,sp,32
    4a64:	00008067          	jalr	zero,0(ra)
    4a68:	00095e63          	bge	s2,zero,4a84 <emdnorm+0xa8>
    4a6c:	f7000793          	addi	a5,zero,-144
    4a70:	18f94463          	blt	s2,a5,4bf8 <emdnorm+0x21c>
    4a74:	00090593          	addi	a1,s2,0
    4a78:	00048513          	addi	a0,s1,0
    4a7c:	b99ff0ef          	jal	ra,4614 <eshift.part.3>
    4a80:	18051863          	bne	a0,zero,4c10 <emdnorm+0x234>
    4a84:	140a8063          	beq	s5,zero,4bc4 <emdnorm+0x1e8>
    4a88:	00442703          	lw	a4,4(s0)
    4a8c:	00042783          	lw	a5,0(s0)
    4a90:	06f70663          	beq	a4,a5,4afc <emdnorm+0x120>
    4a94:	01a40513          	addi	a0,s0,26
    4a98:	e14ff0ef          	jal	ra,40ac <ecleaz>
    4a9c:	00442783          	lw	a5,4(s0)
    4aa0:	03800713          	addi	a4,zero,56
    4aa4:	1ce78663          	beq	a5,a4,4c70 <emdnorm+0x294>
    4aa8:	16f74863          	blt	a4,a5,4c18 <emdnorm+0x23c>
    4aac:	01800713          	addi	a4,zero,24
    4ab0:	1ee78e63          	beq	a5,a4,4cac <emdnorm+0x2d0>
    4ab4:	03500713          	addi	a4,zero,53
    4ab8:	1ce78a63          	beq	a5,a4,4c8c <emdnorm+0x2b0>
    4abc:	00c00713          	addi	a4,zero,12
    4ac0:	00e42423          	sw	a4,8(s0)
    4ac4:	80010737          	lui	a4,0x80010
    4ac8:	fff70713          	addi	a4,a4,-1 # 8000ffff <__heap_top+0x7ff0ffff>
    4acc:	00e42a23          	sw	a4,20(s0)
    4ad0:	00100713          	addi	a4,zero,1
    4ad4:	00e41c23          	sh	a4,24(s0)
    4ad8:	00b00713          	addi	a4,zero,11
    4adc:	00e42623          	sw	a4,12(s0)
    4ae0:	00c42703          	lw	a4,12(s0)
    4ae4:	01845683          	lhu	a3,24(s0)
    4ae8:	00870713          	addi	a4,a4,8
    4aec:	00171713          	slli	a4,a4,0x1
    4af0:	00e40733          	add	a4,s0,a4
    4af4:	00d71523          	sh	a3,10(a4)
    4af8:	00f42023          	sw	a5,0(s0)
    4afc:	03204263          	blt	zero,s2,4b20 <emdnorm+0x144>
    4b00:	00442703          	lw	a4,4(s0)
    4b04:	09000793          	addi	a5,zero,144
    4b08:	00f70c63          	beq	a4,a5,4b20 <emdnorm+0x144>
    4b0c:	0184d783          	lhu	a5,24(s1)
    4b10:	00048513          	addi	a0,s1,0
    4b14:	0017f793          	andi	a5,a5,1
    4b18:	00f9e9b3          	or	s3,s3,a5
    4b1c:	e08ff0ef          	jal	ra,4124 <eshdn1>
    4b20:	00842683          	lw	a3,8(s0)
    4b24:	01445603          	lhu	a2,20(s0)
    4b28:	00442583          	lw	a1,4(s0)
    4b2c:	00169713          	slli	a4,a3,0x1
    4b30:	00e48733          	add	a4,s1,a4
    4b34:	00075783          	lhu	a5,0(a4)
    4b38:	00c7f7b3          	and	a5,a5,a2
    4b3c:	08f00613          	addi	a2,zero,143
    4b40:	00b64a63          	blt	a2,a1,4b54 <emdnorm+0x178>
    4b44:	00168693          	addi	a3,a3,1
    4b48:	00070613          	addi	a2,a4,0
    4b4c:	00c00593          	addi	a1,zero,12
    4b50:	16d5d263          	bge	a1,a3,4cb4 <emdnorm+0x2d8>
    4b54:	01445683          	lhu	a3,20(s0)
    4b58:	00075603          	lhu	a2,0(a4)
    4b5c:	fff6c693          	xori	a3,a3,-1
    4b60:	00c6f6b3          	and	a3,a3,a2
    4b64:	00d71023          	sh	a3,0(a4)
    4b68:	01645703          	lhu	a4,22(s0)
    4b6c:	00f776b3          	and	a3,a4,a5
    4b70:	02068463          	beq	a3,zero,4b98 <emdnorm+0x1bc>
    4b74:	16f71063          	bne	a4,a5,4cd4 <emdnorm+0x2f8>
    4b78:	14099c63          	bne	s3,zero,4cd0 <emdnorm+0x2f4>
    4b7c:	00c42783          	lw	a5,12(s0)
    4b80:	01845703          	lhu	a4,24(s0)
    4b84:	00179793          	slli	a5,a5,0x1
    4b88:	00f487b3          	add	a5,s1,a5
    4b8c:	0007d783          	lhu	a5,0(a5)
    4b90:	00e7f7b3          	and	a5,a5,a4
    4b94:	14079063          	bne	a5,zero,4cd4 <emdnorm+0x2f8>
    4b98:	01204c63          	blt	zero,s2,4bb0 <emdnorm+0x1d4>
    4b9c:	00442703          	lw	a4,4(s0)
    4ba0:	09000793          	addi	a5,zero,144
    4ba4:	00f70663          	beq	a4,a5,4bb0 <emdnorm+0x1d4>
    4ba8:	00048513          	addi	a0,s1,0
    4bac:	dc8ff0ef          	jal	ra,4174 <eshup1>
    4bb0:	0044d783          	lhu	a5,4(s1)
    4bb4:	00078863          	beq	a5,zero,4bc4 <emdnorm+0x1e8>
    4bb8:	00048513          	addi	a0,s1,0
    4bbc:	d68ff0ef          	jal	ra,4124 <eshdn1>
    4bc0:	00190913          	addi	s2,s2,1
    4bc4:	000087b7          	lui	a5,0x8
    4bc8:	00049c23          	sh	zero,24(s1)
    4bcc:	ffe78793          	addi	a5,a5,-2 # 7ffe <sprintf+0x12>
    4bd0:	1127da63          	bge	a5,s2,4ce4 <emdnorm+0x308>
    4bd4:	ffff87b7          	lui	a5,0xffff8
    4bd8:	fff7c793          	xori	a5,a5,-1
    4bdc:	00f49123          	sh	a5,2(s1)
    4be0:	00448793          	addi	a5,s1,4
    4be4:	01848493          	addi	s1,s1,24
    4be8:	00079023          	sh	zero,0(a5) # ffff8000 <__heap_top+0xffef8000>
    4bec:	00278793          	addi	a5,a5,2
    4bf0:	fef49ce3          	bne	s1,a5,4be8 <emdnorm+0x20c>
    4bf4:	e51ff06f          	jal	zero,4a44 <emdnorm+0x68>
    4bf8:	00248793          	addi	a5,s1,2
    4bfc:	01a48493          	addi	s1,s1,26
    4c00:	00278793          	addi	a5,a5,2
    4c04:	fe079f23          	sh	zero,-2(a5)
    4c08:	fe979ce3          	bne	a5,s1,4c00 <emdnorm+0x224>
    4c0c:	e39ff06f          	jal	zero,4a44 <emdnorm+0x68>
    4c10:	00100993          	addi	s3,zero,1
    4c14:	e71ff06f          	jal	zero,4a84 <emdnorm+0xa8>
    4c18:	04000713          	addi	a4,zero,64
    4c1c:	02e78863          	beq	a5,a4,4c4c <emdnorm+0x270>
    4c20:	07100713          	addi	a4,zero,113
    4c24:	e8e79ce3          	bne	a5,a4,4abc <emdnorm+0xe0>
    4c28:	40008737          	lui	a4,0x40008
    4c2c:	fff70713          	addi	a4,a4,-1 # 40007fff <__heap_top+0x3ff07fff>
    4c30:	00a00693          	addi	a3,zero,10
    4c34:	00e42a23          	sw	a4,20(s0)
    4c38:	00d42423          	sw	a3,8(s0)
    4c3c:	ffff8737          	lui	a4,0xffff8
    4c40:	00e41c23          	sh	a4,24(s0)
    4c44:	00d42623          	sw	a3,12(s0)
    4c48:	e99ff06f          	jal	zero,4ae0 <emdnorm+0x104>
    4c4c:	00700713          	addi	a4,zero,7
    4c50:	00e42423          	sw	a4,8(s0)
    4c54:	80010737          	lui	a4,0x80010
    4c58:	fff70713          	addi	a4,a4,-1 # 8000ffff <__heap_top+0x7ff0ffff>
    4c5c:	00e42a23          	sw	a4,20(s0)
    4c60:	00100713          	addi	a4,zero,1
    4c64:	00e41c23          	sh	a4,24(s0)
    4c68:	00600713          	addi	a4,zero,6
    4c6c:	e71ff06f          	jal	zero,4adc <emdnorm+0x100>
    4c70:	00600693          	addi	a3,zero,6
    4c74:	00800737          	lui	a4,0x800
    4c78:	0ff70713          	addi	a4,a4,255 # 8000ff <__heap_top+0x7000ff>
    4c7c:	00e42a23          	sw	a4,20(s0)
    4c80:	00d42423          	sw	a3,8(s0)
    4c84:	10000713          	addi	a4,zero,256
    4c88:	fb9ff06f          	jal	zero,4c40 <emdnorm+0x264>
    4c8c:	04000737          	lui	a4,0x4000
    4c90:	7ff70713          	addi	a4,a4,2047 # 40007ff <__heap_top+0x3f007ff>
    4c94:	00600693          	addi	a3,zero,6
    4c98:	00e42a23          	sw	a4,20(s0)
    4c9c:	00001737          	lui	a4,0x1
    4ca0:	00d42423          	sw	a3,8(s0)
    4ca4:	80070713          	addi	a4,a4,-2048 # 800 <main+0x3c>
    4ca8:	f99ff06f          	jal	zero,4c40 <emdnorm+0x264>
    4cac:	00400693          	addi	a3,zero,4
    4cb0:	fc5ff06f          	jal	zero,4c74 <emdnorm+0x298>
    4cb4:	00265503          	lhu	a0,2(a2)
    4cb8:	00050463          	beq	a0,zero,4cc0 <emdnorm+0x2e4>
    4cbc:	0017e793          	ori	a5,a5,1
    4cc0:	00061123          	sh	zero,2(a2)
    4cc4:	00168693          	addi	a3,a3,1
    4cc8:	00260613          	addi	a2,a2,2
    4ccc:	e85ff06f          	jal	zero,4b50 <emdnorm+0x174>
    4cd0:	ec0a14e3          	bne	s4,zero,4b98 <emdnorm+0x1bc>
    4cd4:	00048593          	addi	a1,s1,0
    4cd8:	01a40513          	addi	a0,s0,26
    4cdc:	d88ff0ef          	jal	ra,4264 <eaddm>
    4ce0:	eb9ff06f          	jal	zero,4b98 <emdnorm+0x1bc>
    4ce4:	00095663          	bge	s2,zero,4cf0 <emdnorm+0x314>
    4ce8:	00049123          	sh	zero,2(s1)
    4cec:	d59ff06f          	jal	zero,4a44 <emdnorm+0x68>
    4cf0:	01249123          	sh	s2,2(s1)
    4cf4:	d51ff06f          	jal	zero,4a44 <emdnorm+0x68>

00004cf8 <eiremain>:
    4cf8:	fe010113          	addi	sp,sp,-32
    4cfc:	01412423          	sw	s4,8(sp)
    4d00:	00255a03          	lhu	s4,2(a0)
    4d04:	00812c23          	sw	s0,24(sp)
    4d08:	00058413          	addi	s0,a1,0
    4d0c:	00112e23          	sw	ra,28(sp)
    4d10:	00912a23          	sw	s1,20(sp)
    4d14:	01212823          	sw	s2,16(sp)
    4d18:	01512223          	sw	s5,4(sp)
    4d1c:	01612023          	sw	s6,0(sp)
    4d20:	00060913          	addi	s2,a2,0
    4d24:	03460b13          	addi	s6,a2,52
    4d28:	01312623          	sw	s3,12(sp)
    4d2c:	00050a93          	addi	s5,a0,0
    4d30:	a3dff0ef          	jal	ra,476c <enormlz>
    4d34:	00245483          	lhu	s1,2(s0)
    4d38:	40aa0a33          	sub	s4,s4,a0
    4d3c:	00040513          	addi	a0,s0,0
    4d40:	a2dff0ef          	jal	ra,476c <enormlz>
    4d44:	40a484b3          	sub	s1,s1,a0
    4d48:	000b0513          	addi	a0,s6,0
    4d4c:	b60ff0ef          	jal	ra,40ac <ecleaz>
    4d50:	0544d263          	bge	s1,s4,4d94 <eiremain+0x9c>
    4d54:	00040513          	addi	a0,s0,0
    4d58:	01812403          	lw	s0,24(sp)
    4d5c:	01c12083          	lw	ra,28(sp)
    4d60:	00c12983          	lw	s3,12(sp)
    4d64:	00812a03          	lw	s4,8(sp)
    4d68:	00412a83          	lw	s5,4(sp)
    4d6c:	00012b03          	lw	s6,0(sp)
    4d70:	00090793          	addi	a5,s2,0
    4d74:	00048693          	addi	a3,s1,0
    4d78:	01012903          	lw	s2,16(sp)
    4d7c:	01412483          	lw	s1,20(sp)
    4d80:	00000713          	addi	a4,zero,0
    4d84:	00000613          	addi	a2,zero,0
    4d88:	00000593          	addi	a1,zero,0
    4d8c:	02010113          	addi	sp,sp,32
    4d90:	c4dff06f          	jal	zero,49dc <emdnorm>
    4d94:	00040593          	addi	a1,s0,0
    4d98:	000a8513          	addi	a0,s5,0
    4d9c:	b4cff0ef          	jal	ra,40e8 <ecmpm>
    4da0:	00000993          	addi	s3,zero,0
    4da4:	00a04a63          	blt	zero,a0,4db8 <eiremain+0xc0>
    4da8:	00040593          	addi	a1,s0,0
    4dac:	000a8513          	addi	a0,s5,0
    4db0:	cecff0ef          	jal	ra,429c <esubm>
    4db4:	00100993          	addi	s3,zero,1
    4db8:	000b0513          	addi	a0,s6,0
    4dbc:	bb8ff0ef          	jal	ra,4174 <eshup1>
    4dc0:	04c95783          	lhu	a5,76(s2)
    4dc4:	00040513          	addi	a0,s0,0
    4dc8:	fff48493          	addi	s1,s1,-1
    4dcc:	00f9e9b3          	or	s3,s3,a5
    4dd0:	05391623          	sh	s3,76(s2)
    4dd4:	ba0ff0ef          	jal	ra,4174 <eshup1>
    4dd8:	f79ff06f          	jal	zero,4d50 <eiremain+0x58>

00004ddc <emul>:
    4ddc:	f7010113          	addi	sp,sp,-144
    4de0:	08812423          	sw	s0,136(sp)
    4de4:	08912223          	sw	s1,132(sp)
    4de8:	07312e23          	sw	s3,124(sp)
    4dec:	07412c23          	sw	s4,120(sp)
    4df0:	08112623          	sw	ra,140(sp)
    4df4:	09212023          	sw	s2,128(sp)
    4df8:	07512a23          	sw	s5,116(sp)
    4dfc:	07612823          	sw	s6,112(sp)
    4e00:	07712623          	sw	s7,108(sp)
    4e04:	07812423          	sw	s8,104(sp)
    4e08:	00050493          	addi	s1,a0,0
    4e0c:	00058413          	addi	s0,a1,0
    4e10:	00060993          	addi	s3,a2,0
    4e14:	00068a13          	addi	s4,a3,0
    4e18:	d58ff0ef          	jal	ra,4370 <eisnan>
    4e1c:	04050063          	beq	a0,zero,4e5c <emul+0x80>
    4e20:	00098593          	addi	a1,s3,0
    4e24:	00048513          	addi	a0,s1,0
    4e28:	a60ff0ef          	jal	ra,4088 <emov>
    4e2c:	08c12083          	lw	ra,140(sp)
    4e30:	08812403          	lw	s0,136(sp)
    4e34:	08412483          	lw	s1,132(sp)
    4e38:	08012903          	lw	s2,128(sp)
    4e3c:	07c12983          	lw	s3,124(sp)
    4e40:	07812a03          	lw	s4,120(sp)
    4e44:	07412a83          	lw	s5,116(sp)
    4e48:	07012b03          	lw	s6,112(sp)
    4e4c:	06c12b83          	lw	s7,108(sp)
    4e50:	06812c03          	lw	s8,104(sp)
    4e54:	09010113          	addi	sp,sp,144
    4e58:	00008067          	jalr	zero,0(ra)
    4e5c:	00040513          	addi	a0,s0,0
    4e60:	d10ff0ef          	jal	ra,4370 <eisnan>
    4e64:	00050863          	beq	a0,zero,4e74 <emul+0x98>
    4e68:	00098593          	addi	a1,s3,0
    4e6c:	00040513          	addi	a0,s0,0
    4e70:	fb9ff06f          	jal	zero,4e28 <emul+0x4c>
    4e74:	00048513          	addi	a0,s1,0
    4e78:	f3cff0ef          	jal	ra,45b4 <eisinf>
    4e7c:	06051463          	bne	a0,zero,4ee4 <emul+0x108>
    4e80:	00040513          	addi	a0,s0,0
    4e84:	f30ff0ef          	jal	ra,45b4 <eisinf>
    4e88:	00050c63          	beq	a0,zero,4ea0 <emul+0xc4>
    4e8c:	0000c597          	auipc	a1,0xc
    4e90:	6c858593          	addi	a1,a1,1736 # 11554 <ezero>
    4e94:	00048513          	addi	a0,s1,0
    4e98:	e14ff0ef          	jal	ra,44ac <ecmp>
    4e9c:	04050e63          	beq	a0,zero,4ef8 <emul+0x11c>
    4ea0:	00048513          	addi	a0,s1,0
    4ea4:	f10ff0ef          	jal	ra,45b4 <eisinf>
    4ea8:	00051863          	bne	a0,zero,4eb8 <emul+0xdc>
    4eac:	00040513          	addi	a0,s0,0
    4eb0:	f04ff0ef          	jal	ra,45b4 <eisinf>
    4eb4:	04050c63          	beq	a0,zero,4f0c <emul+0x130>
    4eb8:	00048513          	addi	a0,s1,0
    4ebc:	ce8ff0ef          	jal	ra,43a4 <eisneg>
    4ec0:	00050493          	addi	s1,a0,0
    4ec4:	00040513          	addi	a0,s0,0
    4ec8:	cdcff0ef          	jal	ra,43a4 <eisneg>
    4ecc:	02a48c63          	beq	s1,a0,4f04 <emul+0x128>
    4ed0:	ffff87b7          	lui	a5,0xffff8
    4ed4:	00f99923          	sh	a5,18(s3)
    4ed8:	00098513          	addi	a0,s3,0
    4edc:	f0cff0ef          	jal	ra,45e8 <einfin.isra.2>
    4ee0:	f4dff06f          	jal	zero,4e2c <emul+0x50>
    4ee4:	0000c597          	auipc	a1,0xc
    4ee8:	67058593          	addi	a1,a1,1648 # 11554 <ezero>
    4eec:	00040513          	addi	a0,s0,0
    4ef0:	dbcff0ef          	jal	ra,44ac <ecmp>
    4ef4:	f80516e3          	bne	a0,zero,4e80 <emul+0xa4>
    4ef8:	00098513          	addi	a0,s3,0
    4efc:	949ff0ef          	jal	ra,4844 <enan.constprop.12>
    4f00:	f2dff06f          	jal	zero,4e2c <emul+0x50>
    4f04:	00099923          	sh	zero,18(s3)
    4f08:	fd1ff06f          	jal	zero,4ed8 <emul+0xfc>
    4f0c:	00048513          	addi	a0,s1,0
    4f10:	00c10593          	addi	a1,sp,12
    4f14:	cc8ff0ef          	jal	ra,43dc <emovi>
    4f18:	00040513          	addi	a0,s0,0
    4f1c:	02810593          	addi	a1,sp,40
    4f20:	cbcff0ef          	jal	ra,43dc <emovi>
    4f24:	00e15403          	lhu	s0,14(sp)
    4f28:	02a15483          	lhu	s1,42(sp)
    4f2c:	0e040a63          	beq	s0,zero,5020 <emul+0x244>
    4f30:	02a15783          	lhu	a5,42(sp)
    4f34:	00048b13          	addi	s6,s1,0
    4f38:	10078063          	beq	a5,zero,5038 <emul+0x25c>
    4f3c:	02812783          	lw	a5,40(sp)
    4f40:	034a0913          	addi	s2,s4,52
    4f44:	04ea0b93          	addi	s7,s4,78
    4f48:	02fa2a23          	sw	a5,52(s4)
    4f4c:	038a0793          	addi	a5,s4,56
    4f50:	00079023          	sh	zero,0(a5) # ffff8000 <__heap_top+0xffef8000>
    4f54:	00278793          	addi	a5,a5,2
    4f58:	ff779ce3          	bne	a5,s7,4f50 <emul+0x174>
    4f5c:	00c10493          	addi	s1,sp,12
    4f60:	ff810c13          	addi	s8,sp,-8
    4f64:	00000a93          	addi	s5,zero,0
    4f68:	0184d503          	lhu	a0,24(s1)
    4f6c:	00050e63          	beq	a0,zero,4f88 <emul+0x1ac>
    4f70:	02810593          	addi	a1,sp,40
    4f74:	04410613          	addi	a2,sp,68
    4f78:	b5cff0ef          	jal	ra,42d4 <m16m>
    4f7c:	00090593          	addi	a1,s2,0
    4f80:	04410513          	addi	a0,sp,68
    4f84:	ae0ff0ef          	jal	ra,4264 <eaddm>
    4f88:	04ca5783          	lhu	a5,76(s4)
    4f8c:	00090513          	addi	a0,s2,0
    4f90:	ffe48493          	addi	s1,s1,-2
    4f94:	00faeab3          	or	s5,s5,a5
    4f98:	aacff0ef          	jal	ra,4244 <eshdn6>
    4f9c:	fc9c16e3          	bne	s8,s1,4f68 <emul+0x18c>
    4fa0:	00090593          	addi	a1,s2,0
    4fa4:	02810793          	addi	a5,sp,40
    4fa8:	0005d703          	lhu	a4,0(a1)
    4fac:	00258593          	addi	a1,a1,2
    4fb0:	00278793          	addi	a5,a5,2
    4fb4:	fee79f23          	sh	a4,-2(a5)
    4fb8:	ff7598e3          	bne	a1,s7,4fa8 <emul+0x1cc>
    4fbc:	ffffc6b7          	lui	a3,0xffffc
    4fc0:	01640433          	add	s0,s0,s6
    4fc4:	00268693          	addi	a3,a3,2 # ffffc002 <__heap_top+0xffefc002>
    4fc8:	000a0793          	addi	a5,s4,0
    4fcc:	04000713          	addi	a4,zero,64
    4fd0:	00d406b3          	add	a3,s0,a3
    4fd4:	00000613          	addi	a2,zero,0
    4fd8:	000a8593          	addi	a1,s5,0
    4fdc:	02810513          	addi	a0,sp,40
    4fe0:	9fdff0ef          	jal	ra,49dc <emdnorm>
    4fe4:	00c15703          	lhu	a4,12(sp)
    4fe8:	02815783          	lhu	a5,40(sp)
    4fec:	06f71a63          	bne	a4,a5,5060 <emul+0x284>
    4ff0:	02011423          	sh	zero,40(sp)
    4ff4:	00098593          	addi	a1,s3,0
    4ff8:	02810513          	addi	a0,sp,40
    4ffc:	869ff0ef          	jal	ra,4864 <emovo.isra.6>
    5000:	e2dff06f          	jal	zero,4e2c <emul+0x50>
    5004:	00278793          	addi	a5,a5,2
    5008:	0027d683          	lhu	a3,2(a5)
    500c:	00068e63          	beq	a3,zero,5028 <emul+0x24c>
    5010:	00c10513          	addi	a0,sp,12
    5014:	f58ff0ef          	jal	ra,476c <enormlz>
    5018:	40a00433          	sub	s0,zero,a0
    501c:	f15ff06f          	jal	zero,4f30 <emul+0x154>
    5020:	00c10793          	addi	a5,sp,12
    5024:	02010713          	addi	a4,sp,32
    5028:	fce79ee3          	bne	a5,a4,5004 <emul+0x228>
    502c:	00098513          	addi	a0,s3,0
    5030:	844ff0ef          	jal	ra,4074 <eclear>
    5034:	df9ff06f          	jal	zero,4e2c <emul+0x50>
    5038:	02810793          	addi	a5,sp,40
    503c:	03c10713          	addi	a4,sp,60
    5040:	fee786e3          	beq	a5,a4,502c <emul+0x250>
    5044:	00278793          	addi	a5,a5,2
    5048:	0027d683          	lhu	a3,2(a5)
    504c:	fe068ae3          	beq	a3,zero,5040 <emul+0x264>
    5050:	02810513          	addi	a0,sp,40
    5054:	f18ff0ef          	jal	ra,476c <enormlz>
    5058:	40a48b33          	sub	s6,s1,a0
    505c:	ee1ff06f          	jal	zero,4f3c <emul+0x160>
    5060:	fff00793          	addi	a5,zero,-1
    5064:	02f11423          	sh	a5,40(sp)
    5068:	f8dff06f          	jal	zero,4ff4 <emul+0x218>

0000506c <ediv>:
    506c:	f7010113          	addi	sp,sp,-144
    5070:	08812423          	sw	s0,136(sp)
    5074:	08912223          	sw	s1,132(sp)
    5078:	09212023          	sw	s2,128(sp)
    507c:	07512a23          	sw	s5,116(sp)
    5080:	08112623          	sw	ra,140(sp)
    5084:	07312e23          	sw	s3,124(sp)
    5088:	07412c23          	sw	s4,120(sp)
    508c:	07612823          	sw	s6,112(sp)
    5090:	07712623          	sw	s7,108(sp)
    5094:	07812423          	sw	s8,104(sp)
    5098:	07912223          	sw	s9,100(sp)
    509c:	00050493          	addi	s1,a0,0
    50a0:	00058413          	addi	s0,a1,0
    50a4:	00060913          	addi	s2,a2,0
    50a8:	00068a93          	addi	s5,a3,0
    50ac:	ac4ff0ef          	jal	ra,4370 <eisnan>
    50b0:	04050263          	beq	a0,zero,50f4 <ediv+0x88>
    50b4:	00090593          	addi	a1,s2,0
    50b8:	00048513          	addi	a0,s1,0
    50bc:	fcdfe0ef          	jal	ra,4088 <emov>
    50c0:	08c12083          	lw	ra,140(sp)
    50c4:	08812403          	lw	s0,136(sp)
    50c8:	08412483          	lw	s1,132(sp)
    50cc:	08012903          	lw	s2,128(sp)
    50d0:	07c12983          	lw	s3,124(sp)
    50d4:	07812a03          	lw	s4,120(sp)
    50d8:	07412a83          	lw	s5,116(sp)
    50dc:	07012b03          	lw	s6,112(sp)
    50e0:	06c12b83          	lw	s7,108(sp)
    50e4:	06812c03          	lw	s8,104(sp)
    50e8:	06412c83          	lw	s9,100(sp)
    50ec:	09010113          	addi	sp,sp,144
    50f0:	00008067          	jalr	zero,0(ra)
    50f4:	00040513          	addi	a0,s0,0
    50f8:	a78ff0ef          	jal	ra,4370 <eisnan>
    50fc:	00050863          	beq	a0,zero,510c <ediv+0xa0>
    5100:	00090593          	addi	a1,s2,0
    5104:	00040513          	addi	a0,s0,0
    5108:	fb5ff06f          	jal	zero,50bc <ediv+0x50>
    510c:	0000c597          	auipc	a1,0xc
    5110:	44858593          	addi	a1,a1,1096 # 11554 <ezero>
    5114:	00048513          	addi	a0,s1,0
    5118:	b94ff0ef          	jal	ra,44ac <ecmp>
    511c:	04050663          	beq	a0,zero,5168 <ediv+0xfc>
    5120:	00048513          	addi	a0,s1,0
    5124:	c90ff0ef          	jal	ra,45b4 <eisinf>
    5128:	00050993          	addi	s3,a0,0
    512c:	00040513          	addi	a0,s0,0
    5130:	c84ff0ef          	jal	ra,45b4 <eisinf>
    5134:	04099a63          	bne	s3,zero,5188 <ediv+0x11c>
    5138:	06050063          	beq	a0,zero,5198 <ediv+0x12c>
    513c:	00048513          	addi	a0,s1,0
    5140:	a64ff0ef          	jal	ra,43a4 <eisneg>
    5144:	00050493          	addi	s1,a0,0
    5148:	00040513          	addi	a0,s0,0
    514c:	a58ff0ef          	jal	ra,43a4 <eisneg>
    5150:	20a48c63          	beq	s1,a0,5368 <ediv+0x2fc>
    5154:	ffff87b7          	lui	a5,0xffff8
    5158:	00f91923          	sh	a5,18(s2)
    515c:	00090513          	addi	a0,s2,0
    5160:	c88ff0ef          	jal	ra,45e8 <einfin.isra.2>
    5164:	f5dff06f          	jal	zero,50c0 <ediv+0x54>
    5168:	0000c597          	auipc	a1,0xc
    516c:	3ec58593          	addi	a1,a1,1004 # 11554 <ezero>
    5170:	00040513          	addi	a0,s0,0
    5174:	b38ff0ef          	jal	ra,44ac <ecmp>
    5178:	fa0514e3          	bne	a0,zero,5120 <ediv+0xb4>
    517c:	00090513          	addi	a0,s2,0
    5180:	ec4ff0ef          	jal	ra,4844 <enan.constprop.12>
    5184:	f3dff06f          	jal	zero,50c0 <ediv+0x54>
    5188:	fe051ae3          	bne	a0,zero,517c <ediv+0x110>
    518c:	00090513          	addi	a0,s2,0
    5190:	ee5fe0ef          	jal	ra,4074 <eclear>
    5194:	f2dff06f          	jal	zero,50c0 <ediv+0x54>
    5198:	00048513          	addi	a0,s1,0
    519c:	00c10593          	addi	a1,sp,12
    51a0:	a3cff0ef          	jal	ra,43dc <emovi>
    51a4:	00040513          	addi	a0,s0,0
    51a8:	02810593          	addi	a1,sp,40
    51ac:	a30ff0ef          	jal	ra,43dc <emovi>
    51b0:	02a15483          	lhu	s1,42(sp)
    51b4:	00e15403          	lhu	s0,14(sp)
    51b8:	14048a63          	beq	s1,zero,530c <ediv+0x2a0>
    51bc:	00e15783          	lhu	a5,14(sp)
    51c0:	00040b93          	addi	s7,s0,0
    51c4:	18078663          	beq	a5,zero,5350 <ediv+0x2e4>
    51c8:	02812703          	lw	a4,40(sp)
    51cc:	038a8793          	addi	a5,s5,56
    51d0:	04ea8b13          	addi	s6,s5,78
    51d4:	02eaaa23          	sw	a4,52(s5)
    51d8:	00078993          	addi	s3,a5,0 # ffff8000 <__heap_top+0xffef8000>
    51dc:	00278793          	addi	a5,a5,2
    51e0:	fe079f23          	sh	zero,-2(a5)
    51e4:	ff679ce3          	bne	a5,s6,51dc <ediv+0x170>
    51e8:	02810513          	addi	a0,sp,40
    51ec:	f39fe0ef          	jal	ra,4124 <eshdn1>
    51f0:	01215c03          	lhu	s8,18(sp)
    51f4:	00010a37          	lui	s4,0x10
    51f8:	fffa0a13          	addi	s4,s4,-1 # ffff <__subtf3+0xc8b>
    51fc:	034c0cb3          	mul	s9,s8,s4
    5200:	02c15783          	lhu	a5,44(sp)
    5204:	02e15403          	lhu	s0,46(sp)
    5208:	01079793          	slli	a5,a5,0x10
    520c:	008787b3          	add	a5,a5,s0
    5210:	000a0413          	addi	s0,s4,0
    5214:	00fce863          	bltu	s9,a5,5224 <ediv+0x1b8>
    5218:	0387d433          	divu	s0,a5,s8
    521c:	01041413          	slli	s0,s0,0x10
    5220:	01045413          	srli	s0,s0,0x10
    5224:	00c10593          	addi	a1,sp,12
    5228:	00040513          	addi	a0,s0,0
    522c:	04410613          	addi	a2,sp,68
    5230:	8a4ff0ef          	jal	ra,42d4 <m16m>
    5234:	02810593          	addi	a1,sp,40
    5238:	04410513          	addi	a0,sp,68
    523c:	eadfe0ef          	jal	ra,40e8 <ecmpm>
    5240:	02a05663          	bge	zero,a0,526c <ediv+0x200>
    5244:	04410593          	addi	a1,sp,68
    5248:	00c10513          	addi	a0,sp,12
    524c:	850ff0ef          	jal	ra,429c <esubm>
    5250:	02810593          	addi	a1,sp,40
    5254:	04410513          	addi	a0,sp,68
    5258:	e91fe0ef          	jal	ra,40e8 <ecmpm>
    525c:	10a04a63          	blt	zero,a0,5370 <ediv+0x304>
    5260:	fff40413          	addi	s0,s0,-1
    5264:	01041413          	slli	s0,s0,0x10
    5268:	01045413          	srli	s0,s0,0x10
    526c:	02810593          	addi	a1,sp,40
    5270:	04410513          	addi	a0,sp,68
    5274:	828ff0ef          	jal	ra,429c <esubm>
    5278:	02810513          	addi	a0,sp,40
    527c:	00899023          	sh	s0,0(s3)
    5280:	00298993          	addi	s3,s3,2
    5284:	fa1fe0ef          	jal	ra,4224 <eshup6>
    5288:	f73b1ce3          	bne	s6,s3,5200 <ediv+0x194>
    528c:	02810713          	addi	a4,sp,40
    5290:	03e10693          	addi	a3,sp,62
    5294:	00070793          	addi	a5,a4,0
    5298:	00000593          	addi	a1,zero,0
    529c:	0047d603          	lhu	a2,4(a5)
    52a0:	00278793          	addi	a5,a5,2
    52a4:	00c5e5b3          	or	a1,a1,a2
    52a8:	fef69ae3          	bne	a3,a5,529c <ediv+0x230>
    52ac:	00b035b3          	sltu	a1,zero,a1
    52b0:	034a8793          	addi	a5,s5,52
    52b4:	0007d683          	lhu	a3,0(a5)
    52b8:	00278793          	addi	a5,a5,2
    52bc:	00270713          	addi	a4,a4,2
    52c0:	fed71f23          	sh	a3,-2(a4)
    52c4:	fefb18e3          	bne	s6,a5,52b4 <ediv+0x248>
    52c8:	000046b7          	lui	a3,0x4
    52cc:	417484b3          	sub	s1,s1,s7
    52d0:	fff68693          	addi	a3,a3,-1 # 3fff <_fwalk_reent+0x3f>
    52d4:	000a8793          	addi	a5,s5,0
    52d8:	04000713          	addi	a4,zero,64
    52dc:	00d486b3          	add	a3,s1,a3
    52e0:	00000613          	addi	a2,zero,0
    52e4:	02810513          	addi	a0,sp,40
    52e8:	ef4ff0ef          	jal	ra,49dc <emdnorm>
    52ec:	00c15703          	lhu	a4,12(sp)
    52f0:	02815783          	lhu	a5,40(sp)
    52f4:	08f71c63          	bne	a4,a5,538c <ediv+0x320>
    52f8:	02011423          	sh	zero,40(sp)
    52fc:	00090593          	addi	a1,s2,0
    5300:	02810513          	addi	a0,sp,40
    5304:	d60ff0ef          	jal	ra,4864 <emovo.isra.6>
    5308:	db9ff06f          	jal	zero,50c0 <ediv+0x54>
    530c:	02810793          	addi	a5,sp,40
    5310:	03c10713          	addi	a4,sp,60
    5314:	e6e78ce3          	beq	a5,a4,518c <ediv+0x120>
    5318:	00278793          	addi	a5,a5,2
    531c:	0027d683          	lhu	a3,2(a5)
    5320:	fe068ae3          	beq	a3,zero,5314 <ediv+0x2a8>
    5324:	02810513          	addi	a0,sp,40
    5328:	c44ff0ef          	jal	ra,476c <enormlz>
    532c:	40a004b3          	sub	s1,zero,a0
    5330:	e8dff06f          	jal	zero,51bc <ediv+0x150>
    5334:	00278793          	addi	a5,a5,2
    5338:	0027d683          	lhu	a3,2(a5)
    533c:	00068e63          	beq	a3,zero,5358 <ediv+0x2ec>
    5340:	00c10513          	addi	a0,sp,12
    5344:	c28ff0ef          	jal	ra,476c <enormlz>
    5348:	40a40bb3          	sub	s7,s0,a0
    534c:	e7dff06f          	jal	zero,51c8 <ediv+0x15c>
    5350:	00c10793          	addi	a5,sp,12
    5354:	02010713          	addi	a4,sp,32
    5358:	fce79ee3          	bne	a5,a4,5334 <ediv+0x2c8>
    535c:	00c15703          	lhu	a4,12(sp)
    5360:	02815783          	lhu	a5,40(sp)
    5364:	def718e3          	bne	a4,a5,5154 <ediv+0xe8>
    5368:	00091923          	sh	zero,18(s2)
    536c:	df1ff06f          	jal	zero,515c <ediv+0xf0>
    5370:	ffe40413          	addi	s0,s0,-2
    5374:	01041413          	slli	s0,s0,0x10
    5378:	04410593          	addi	a1,sp,68
    537c:	00c10513          	addi	a0,sp,12
    5380:	01045413          	srli	s0,s0,0x10
    5384:	f19fe0ef          	jal	ra,429c <esubm>
    5388:	ee5ff06f          	jal	zero,526c <ediv+0x200>
    538c:	fff00793          	addi	a5,zero,-1
    5390:	02f11423          	sh	a5,40(sp)
    5394:	f69ff06f          	jal	zero,52fc <ediv+0x290>

00005398 <_ldtoa_r>:
    5398:	0005ae03          	lw	t3,0(a1)
    539c:	0045a303          	lw	t1,4(a1)
    53a0:	0085a883          	lw	a7,8(a1)
    53a4:	00c5a583          	lw	a1,12(a1)
    53a8:	e2010113          	addi	sp,sp,-480
    53ac:	1c812c23          	sw	s0,472(sp)
    53b0:	02b12623          	sw	a1,44(sp)
    53b4:	00078413          	addi	s0,a5,0
    53b8:	04052583          	lw	a1,64(a0)
    53bc:	fff00793          	addi	a5,zero,-1
    53c0:	14f12823          	sw	a5,336(sp)
    53c4:	09000793          	addi	a5,zero,144
    53c8:	1d212823          	sw	s2,464(sp)
    53cc:	1d512223          	sw	s5,452(sp)
    53d0:	1b812c23          	sw	s8,440(sp)
    53d4:	1b912a23          	sw	s9,436(sp)
    53d8:	1c112e23          	sw	ra,476(sp)
    53dc:	1c912a23          	sw	s1,468(sp)
    53e0:	1d312623          	sw	s3,460(sp)
    53e4:	1d412423          	sw	s4,456(sp)
    53e8:	1d612023          	sw	s6,448(sp)
    53ec:	1b712e23          	sw	s7,444(sp)
    53f0:	1ba12823          	sw	s10,432(sp)
    53f4:	1bb12623          	sw	s11,428(sp)
    53f8:	01012823          	sw	a6,16(sp)
    53fc:	03c12023          	sw	t3,32(sp)
    5400:	02612223          	sw	t1,36(sp)
    5404:	03112423          	sw	a7,40(sp)
    5408:	14f12a23          	sw	a5,340(sp)
    540c:	00050913          	addi	s2,a0,0
    5410:	00060a93          	addi	s5,a2,0
    5414:	00068c13          	addi	s8,a3,0
    5418:	00070c93          	addi	s9,a4,0
    541c:	02058063          	beq	a1,zero,543c <_ldtoa_r+0xa4>
    5420:	04452783          	lw	a5,68(a0)
    5424:	00100713          	addi	a4,zero,1
    5428:	00f71733          	sll	a4,a4,a5
    542c:	00f5a223          	sw	a5,4(a1)
    5430:	00e5a423          	sw	a4,8(a1)
    5434:	744010ef          	jal	ra,6b78 <_Bfree>
    5438:	04092023          	sw	zero,64(s2)
    543c:	02010513          	addi	a0,sp,32
    5440:	05010593          	addi	a1,sp,80
    5444:	c90ff0ef          	jal	ra,48d4 <e113toe.isra.8>
    5448:	05010513          	addi	a0,sp,80
    544c:	f59fe0ef          	jal	ra,43a4 <eisneg>
    5450:	1a050063          	beq	a0,zero,55f0 <_ldtoa_r+0x258>
    5454:	00100793          	addi	a5,zero,1
    5458:	00f42023          	sw	a5,0(s0)
    545c:	00300793          	addi	a5,zero,3
    5460:	18fa8c63          	beq	s5,a5,55f8 <_ldtoa_r+0x260>
    5464:	01400493          	addi	s1,zero,20
    5468:	000a8a63          	beq	s5,zero,547c <_ldtoa_r+0xe4>
    546c:	fffc0493          	addi	s1,s8,-1
    5470:	02a00793          	addi	a5,zero,42
    5474:	0097d463          	bge	a5,s1,547c <_ldtoa_r+0xe4>
    5478:	02a00493          	addi	s1,zero,42
    547c:	15412783          	lw	a5,340(sp)
    5480:	05010513          	addi	a0,sp,80
    5484:	00f12a23          	sw	a5,20(sp)
    5488:	ee9fe0ef          	jal	ra,4370 <eisnan>
    548c:	00050b13          	addi	s6,a0,0
    5490:	0000c597          	auipc	a1,0xc
    5494:	31858593          	addi	a1,a1,792 # 117a8 <emtens+0x104>
    5498:	260514e3          	bne	a0,zero,5f00 <_ldtoa_r+0xb68>
    549c:	09000793          	addi	a5,zero,144
    54a0:	06c10593          	addi	a1,sp,108
    54a4:	05010513          	addi	a0,sp,80
    54a8:	14f12a23          	sw	a5,340(sp)
    54ac:	bddfe0ef          	jal	ra,4088 <emov>
    54b0:	07e15783          	lhu	a5,126(sp)
    54b4:	00012423          	sw	zero,8(sp)
    54b8:	01079713          	slli	a4,a5,0x10
    54bc:	41075713          	srai	a4,a4,0x10
    54c0:	02075063          	bge	a4,zero,54e0 <_ldtoa_r+0x148>
    54c4:	00008737          	lui	a4,0x8
    54c8:	fff70713          	addi	a4,a4,-1 # 7fff <sprintf+0x13>
    54cc:	00e7f7b3          	and	a5,a5,a4
    54d0:	06f11f23          	sh	a5,126(sp)
    54d4:	000107b7          	lui	a5,0x10
    54d8:	fff78793          	addi	a5,a5,-1 # ffff <__subtf3+0xc8b>
    54dc:	00f12423          	sw	a5,8(sp)
    54e0:	08810593          	addi	a1,sp,136
    54e4:	0000c517          	auipc	a0,0xc
    54e8:	18850513          	addi	a0,a0,392 # 1166c <eone>
    54ec:	b9dfe0ef          	jal	ra,4088 <emov>
    54f0:	07e15703          	lhu	a4,126(sp)
    54f4:	1e0714e3          	bne	a4,zero,5edc <_ldtoa_r+0xb44>
    54f8:	06c10793          	addi	a5,sp,108
    54fc:	07e10713          	addi	a4,sp,126
    5500:	0007d683          	lhu	a3,0(a5)
    5504:	10069663          	bne	a3,zero,5610 <_ldtoa_r+0x278>
    5508:	00278793          	addi	a5,a5,2
    550c:	fef71ae3          	bne	a4,a5,5500 <_ldtoa_r+0x168>
    5510:	00000413          	addi	s0,zero,0
    5514:	0c010593          	addi	a1,sp,192
    5518:	08810513          	addi	a0,sp,136
    551c:	ec1fe0ef          	jal	ra,43dc <emovi>
    5520:	08810593          	addi	a1,sp,136
    5524:	0c010513          	addi	a0,sp,192
    5528:	b99fe0ef          	jal	ra,40c0 <emovz>
    552c:	0c010593          	addi	a1,sp,192
    5530:	06c10513          	addi	a0,sp,108
    5534:	ea9fe0ef          	jal	ra,43dc <emovi>
    5538:	06c10593          	addi	a1,sp,108
    553c:	0c010513          	addi	a0,sp,192
    5540:	b81fe0ef          	jal	ra,40c0 <emovz>
    5544:	15010613          	addi	a2,sp,336
    5548:	06c10593          	addi	a1,sp,108
    554c:	08810513          	addi	a0,sp,136
    5550:	fa8ff0ef          	jal	ra,4cf8 <eiremain>
    5554:	19c15983          	lhu	s3,412(sp)
    5558:	0000ca17          	auipc	s4,0xc
    555c:	ffca0a13          	addi	s4,s4,-4 # 11554 <ezero>
    5560:	00099a63          	bne	s3,zero,5574 <_ldtoa_r+0x1dc>
    5564:	000a0593          	addi	a1,s4,0
    5568:	06c10513          	addi	a0,sp,108
    556c:	f41fe0ef          	jal	ra,44ac <ecmp>
    5570:	68051c63          	bne	a0,zero,5c08 <_ldtoa_r+0x870>
    5574:	00812783          	lw	a5,8(sp)
    5578:	6c078e63          	beq	a5,zero,5c54 <_ldtoa_r+0x8bc>
    557c:	02d00793          	addi	a5,zero,45
    5580:	10f10a23          	sb	a5,276(sp)
    5584:	00300793          	addi	a5,zero,3
    5588:	00048a13          	addi	s4,s1,0
    558c:	00fa9a63          	bne	s5,a5,55a0 <_ldtoa_r+0x208>
    5590:	00848a33          	add	s4,s1,s0
    5594:	02a00793          	addi	a5,zero,42
    5598:	0147d463          	bge	a5,s4,55a0 <_ldtoa_r+0x208>
    559c:	02a00a13          	addi	s4,zero,42
    55a0:	00a00793          	addi	a5,zero,10
    55a4:	6af99c63          	bne	s3,a5,5c5c <_ldtoa_r+0x8c4>
    55a8:	03100793          	addi	a5,zero,49
    55ac:	10f10aa3          	sb	a5,277(sp)
    55b0:	02e00793          	addi	a5,zero,46
    55b4:	10f10b23          	sb	a5,278(sp)
    55b8:	11710993          	addi	s3,sp,279
    55bc:	01405a63          	bge	zero,s4,55d0 <_ldtoa_r+0x238>
    55c0:	03000793          	addi	a5,zero,48
    55c4:	10f10ba3          	sb	a5,279(sp)
    55c8:	fffa0a13          	addi	s4,s4,-1
    55cc:	11810993          	addi	s3,sp,280
    55d0:	00140413          	addi	s0,s0,1
    55d4:	680a5e63          	bge	s4,zero,5c70 <_ldtoa_r+0x8d8>
    55d8:	00040613          	addi	a2,s0,0
    55dc:	0000c597          	auipc	a1,0xc
    55e0:	1f058593          	addi	a1,a1,496 # 117cc <emtens+0x128>
    55e4:	00098513          	addi	a0,s3,0
    55e8:	205020ef          	jal	ra,7fec <sprintf>
    55ec:	1250006f          	jal	zero,5f10 <_ldtoa_r+0xb78>
    55f0:	00042023          	sw	zero,0(s0)
    55f4:	e69ff06f          	jal	zero,545c <_ldtoa_r+0xc4>
    55f8:	000c0493          	addi	s1,s8,0
    55fc:	e75ff06f          	jal	zero,5470 <_ldtoa_r+0xd8>
    5600:	07c11783          	lh	a5,124(sp)
    5604:	0000c597          	auipc	a1,0xc
    5608:	1c458593          	addi	a1,a1,452 # 117c8 <emtens+0x124>
    560c:	0e07dae3          	bge	a5,zero,5f00 <_ldtoa_r+0xb68>
    5610:	06c10593          	addi	a1,sp,108
    5614:	0000c517          	auipc	a0,0xc
    5618:	05850513          	addi	a0,a0,88 # 1166c <eone>
    561c:	e91fe0ef          	jal	ra,44ac <ecmp>
    5620:	ee0508e3          	beq	a0,zero,5510 <_ldtoa_r+0x178>
    5624:	44055263          	bge	a0,zero,5a68 <_ldtoa_r+0x6d0>
    5628:	0a410593          	addi	a1,sp,164
    562c:	06c10513          	addi	a0,sp,108
    5630:	a59fe0ef          	jal	ra,4088 <emov>
    5634:	000047b7          	lui	a5,0x4
    5638:	08e78793          	addi	a5,a5,142 # 408e <emov+0x6>
    563c:	0af11b23          	sh	a5,182(sp)
    5640:	01000793          	addi	a5,zero,16
    5644:	00f12623          	sw	a5,12(sp)
    5648:	000087b7          	lui	a5,0x8
    564c:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    5650:	00f12c23          	sw	a5,24(sp)
    5654:	ffffc7b7          	lui	a5,0xffffc
    5658:	00278793          	addi	a5,a5,2 # ffffc002 <__heap_top+0xffefc002>
    565c:	00000413          	addi	s0,zero,0
    5660:	0000cb97          	auipc	s7,0xc
    5664:	fa8b8b93          	addi	s7,s7,-88 # 11608 <etens+0xa0>
    5668:	00f12e23          	sw	a5,28(sp)
    566c:	0000c997          	auipc	s3,0xc
    5670:	00098993          	addi	s3,s3,0 # 1166c <eone>
    5674:	15010693          	addi	a3,sp,336
    5678:	08810613          	addi	a2,sp,136
    567c:	0a410593          	addi	a1,sp,164
    5680:	000b8513          	addi	a0,s7,0
    5684:	9e9ff0ef          	jal	ra,506c <ediv>
    5688:	03c10593          	addi	a1,sp,60
    568c:	08810513          	addi	a0,sp,136
    5690:	9f9fe0ef          	jal	ra,4088 <emov>
    5694:	01812783          	lw	a5,24(sp)
    5698:	04e15a03          	lhu	s4,78(sp)
    569c:	00fa7d33          	and	s10,s4,a5
    56a0:	01c12783          	lw	a5,28(sp)
    56a4:	00fd0d33          	add	s10,s10,a5
    56a8:	05a04a63          	blt	zero,s10,56fc <_ldtoa_r+0x364>
    56ac:	0c010513          	addi	a0,sp,192
    56b0:	9c5fe0ef          	jal	ra,4074 <eclear>
    56b4:	010a1a13          	slli	s4,s4,0x10
    56b8:	410a5a13          	srai	s4,s4,0x10
    56bc:	100a5863          	bge	s4,zero,57cc <_ldtoa_r+0x434>
    56c0:	00000793          	addi	a5,zero,0
    56c4:	03c10713          	addi	a4,sp,60
    56c8:	00f70733          	add	a4,a4,a5
    56cc:	00075683          	lhu	a3,0(a4)
    56d0:	0c010713          	addi	a4,sp,192
    56d4:	00f70733          	add	a4,a4,a5
    56d8:	00075703          	lhu	a4,0(a4)
    56dc:	36e68e63          	beq	a3,a4,5a58 <_ldtoa_r+0x6c0>
    56e0:	00098513          	addi	a0,s3,0
    56e4:	c8dfe0ef          	jal	ra,4370 <eisnan>
    56e8:	08050663          	beq	a0,zero,5774 <_ldtoa_r+0x3dc>
    56ec:	0c010593          	addi	a1,sp,192
    56f0:	00098513          	addi	a0,s3,0
    56f4:	995fe0ef          	jal	ra,4088 <emov>
    56f8:	0d40006f          	jal	zero,57cc <_ldtoa_r+0x434>
    56fc:	09000793          	addi	a5,zero,144
    5700:	41a78d33          	sub	s10,a5,s10
    5704:	0c010593          	addi	a1,sp,192
    5708:	03c10513          	addi	a0,sp,60
    570c:	97dfe0ef          	jal	ra,4088 <emov>
    5710:	0ba05e63          	bge	zero,s10,57cc <_ldtoa_r+0x434>
    5714:	0c010713          	addi	a4,sp,192
    5718:	000d0793          	addi	a5,s10,0
    571c:	00f00693          	addi	a3,zero,15
    5720:	04f6c263          	blt	a3,a5,5764 <_ldtoa_r+0x3cc>
    5724:	004d5793          	srli	a5,s10,0x4
    5728:	00179713          	slli	a4,a5,0x1
    572c:	0c010693          	addi	a3,sp,192
    5730:	00e68733          	add	a4,a3,a4
    5734:	ff000693          	addi	a3,zero,-16
    5738:	02d787b3          	mul	a5,a5,a3
    573c:	0000c697          	auipc	a3,0xc
    5740:	e1868693          	addi	a3,a3,-488 # 11554 <ezero>
    5744:	01a787b3          	add	a5,a5,s10
    5748:	00179793          	slli	a5,a5,0x1
    574c:	00f687b3          	add	a5,a3,a5
    5750:	12c7d783          	lhu	a5,300(a5)
    5754:	00075683          	lhu	a3,0(a4)
    5758:	00d7f7b3          	and	a5,a5,a3
    575c:	00f71023          	sh	a5,0(a4)
    5760:	f55ff06f          	jal	zero,56b4 <_ldtoa_r+0x31c>
    5764:	00071023          	sh	zero,0(a4)
    5768:	ff078793          	addi	a5,a5,-16
    576c:	00270713          	addi	a4,a4,2
    5770:	fb1ff06f          	jal	zero,5720 <_ldtoa_r+0x388>
    5774:	0c010513          	addi	a0,sp,192
    5778:	bf9fe0ef          	jal	ra,4370 <eisnan>
    577c:	00050863          	beq	a0,zero,578c <_ldtoa_r+0x3f4>
    5780:	0c010593          	addi	a1,sp,192
    5784:	00058513          	addi	a0,a1,0
    5788:	f6dff06f          	jal	zero,56f4 <_ldtoa_r+0x35c>
    578c:	00098513          	addi	a0,s3,0
    5790:	e25fe0ef          	jal	ra,45b4 <eisinf>
    5794:	00050a13          	addi	s4,a0,0
    5798:	0c010513          	addi	a0,sp,192
    579c:	e19fe0ef          	jal	ra,45b4 <eisinf>
    57a0:	00050d13          	addi	s10,a0,0
    57a4:	140a0663          	beq	s4,zero,58f0 <_ldtoa_r+0x558>
    57a8:	10050e63          	beq	a0,zero,58c4 <_ldtoa_r+0x52c>
    57ac:	00098513          	addi	a0,s3,0
    57b0:	bf5fe0ef          	jal	ra,43a4 <eisneg>
    57b4:	00050a13          	addi	s4,a0,0
    57b8:	0c010513          	addi	a0,sp,192
    57bc:	be9fe0ef          	jal	ra,43a4 <eisneg>
    57c0:	10aa1263          	bne	s4,a0,58c4 <_ldtoa_r+0x52c>
    57c4:	0c010513          	addi	a0,sp,192
    57c8:	87cff0ef          	jal	ra,4844 <enan.constprop.12>
    57cc:	00000793          	addi	a5,zero,0
    57d0:	08810713          	addi	a4,sp,136
    57d4:	00f70733          	add	a4,a4,a5
    57d8:	00075683          	lhu	a3,0(a4)
    57dc:	0c010713          	addi	a4,sp,192
    57e0:	00f70733          	add	a4,a4,a5
    57e4:	00075703          	lhu	a4,0(a4)
    57e8:	02e69263          	bne	a3,a4,580c <_ldtoa_r+0x474>
    57ec:	00278793          	addi	a5,a5,2
    57f0:	01200713          	addi	a4,zero,18
    57f4:	fce79ee3          	bne	a5,a4,57d0 <_ldtoa_r+0x438>
    57f8:	0a410593          	addi	a1,sp,164
    57fc:	08810513          	addi	a0,sp,136
    5800:	889fe0ef          	jal	ra,4088 <emov>
    5804:	00c12783          	lw	a5,12(sp)
    5808:	00f40433          	add	s0,s0,a5
    580c:	00c12783          	lw	a5,12(sp)
    5810:	014b8b93          	addi	s7,s7,20
    5814:	0017d793          	srli	a5,a5,0x1
    5818:	00f12623          	sw	a5,12(sp)
    581c:	e53b9ce3          	bne	s7,s3,5674 <_ldtoa_r+0x2dc>
    5820:	0b615783          	lhu	a5,182(sp)
    5824:	07e15703          	lhu	a4,126(sp)
    5828:	06c10593          	addi	a1,sp,108
    582c:	0a410513          	addi	a0,sp,164
    5830:	00e787b3          	add	a5,a5,a4
    5834:	ffffc737          	lui	a4,0xffffc
    5838:	f7270713          	addi	a4,a4,-142 # ffffbf72 <__heap_top+0xffefbf72>
    583c:	00e787b3          	add	a5,a5,a4
    5840:	0af11b23          	sh	a5,182(sp)
    5844:	845fe0ef          	jal	ra,4088 <emov>
    5848:	000b8513          	addi	a0,s7,0
    584c:	08810593          	addi	a1,sp,136
    5850:	839fe0ef          	jal	ra,4088 <emov>
    5854:	00001a37          	lui	s4,0x1
    5858:	0000c997          	auipc	s3,0xc
    585c:	d1098993          	addi	s3,s3,-752 # 11568 <etens>
    5860:	0000cb97          	auipc	s7,0xc
    5864:	df8b8b93          	addi	s7,s7,-520 # 11658 <etens+0xf0>
    5868:	0a410593          	addi	a1,sp,164
    586c:	000b8513          	addi	a0,s7,0
    5870:	c3dfe0ef          	jal	ra,44ac <ecmp>
    5874:	caa040e3          	blt	zero,a0,5514 <_ldtoa_r+0x17c>
    5878:	0a410593          	addi	a1,sp,164
    587c:	00098513          	addi	a0,s3,0
    5880:	c2dfe0ef          	jal	ra,44ac <ecmp>
    5884:	02a04863          	blt	zero,a0,58b4 <_ldtoa_r+0x51c>
    5888:	0a410613          	addi	a2,sp,164
    588c:	00060593          	addi	a1,a2,0
    5890:	15010693          	addi	a3,sp,336
    5894:	00098513          	addi	a0,s3,0
    5898:	fd4ff0ef          	jal	ra,506c <ediv>
    589c:	08810613          	addi	a2,sp,136
    58a0:	15010693          	addi	a3,sp,336
    58a4:	00060593          	addi	a1,a2,0
    58a8:	00098513          	addi	a0,s3,0
    58ac:	d30ff0ef          	jal	ra,4ddc <emul>
    58b0:	01440433          	add	s0,s0,s4
    58b4:	001a5a13          	srli	s4,s4,0x1
    58b8:	c5798ee3          	beq	s3,s7,5514 <_ldtoa_r+0x17c>
    58bc:	01498993          	addi	s3,s3,20
    58c0:	fa9ff06f          	jal	zero,5868 <_ldtoa_r+0x4d0>
    58c4:	00098513          	addi	a0,s3,0
    58c8:	0c010593          	addi	a1,sp,192
    58cc:	fbcfe0ef          	jal	ra,4088 <emov>
    58d0:	0c010513          	addi	a0,sp,192
    58d4:	a9dfe0ef          	jal	ra,4370 <eisnan>
    58d8:	ee051ae3          	bne	a0,zero,57cc <_ldtoa_r+0x434>
    58dc:	0d215783          	lhu	a5,210(sp)
    58e0:	ffff8737          	lui	a4,0xffff8
    58e4:	00e7c7b3          	xor	a5,a5,a4
    58e8:	0cf11923          	sh	a5,210(sp)
    58ec:	ee1ff06f          	jal	zero,57cc <_ldtoa_r+0x434>
    58f0:	e80518e3          	bne	a0,zero,5780 <_ldtoa_r+0x3e8>
    58f4:	0dc10593          	addi	a1,sp,220
    58f8:	00098513          	addi	a0,s3,0
    58fc:	ae1fe0ef          	jal	ra,43dc <emovi>
    5900:	0f810593          	addi	a1,sp,248
    5904:	0c010513          	addi	a0,sp,192
    5908:	ad5fe0ef          	jal	ra,43dc <emovi>
    590c:	0dc15783          	lhu	a5,220(sp)
    5910:	0de15d83          	lhu	s11,222(sp)
    5914:	0fa15a03          	lhu	s4,250(sp)
    5918:	fff7c793          	xori	a5,a5,-1
    591c:	0cf11e23          	sh	a5,220(sp)
    5920:	414d85b3          	sub	a1,s11,s4
    5924:	02b05863          	bge	zero,a1,5954 <_ldtoa_r+0x5bc>
    5928:	11410593          	addi	a1,sp,276
    592c:	0f810513          	addi	a0,sp,248
    5930:	f90fe0ef          	jal	ra,40c0 <emovz>
    5934:	0f810593          	addi	a1,sp,248
    5938:	0dc10513          	addi	a0,sp,220
    593c:	f84fe0ef          	jal	ra,40c0 <emovz>
    5940:	0dc10593          	addi	a1,sp,220
    5944:	11410513          	addi	a0,sp,276
    5948:	f78fe0ef          	jal	ra,40c0 <emovz>
    594c:	41ba05b3          	sub	a1,s4,s11
    5950:	0fa15a03          	lhu	s4,250(sp)
    5954:	04058863          	beq	a1,zero,59a4 <_ldtoa_r+0x60c>
    5958:	f6f00793          	addi	a5,zero,-145
    595c:	08f5c463          	blt	a1,a5,59e4 <_ldtoa_r+0x64c>
    5960:	0dc10513          	addi	a0,sp,220
    5964:	cb1fe0ef          	jal	ra,4614 <eshift.part.3>
    5968:	00050d93          	addi	s11,a0,0
    596c:	0dc15703          	lhu	a4,220(sp)
    5970:	0f815783          	lhu	a5,248(sp)
    5974:	0f810593          	addi	a1,sp,248
    5978:	0dc10513          	addi	a0,sp,220
    597c:	0cf71863          	bne	a4,a5,5a4c <_ldtoa_r+0x6b4>
    5980:	8e5fe0ef          	jal	ra,4264 <eaddm>
    5984:	15010793          	addi	a5,sp,336
    5988:	04000713          	addi	a4,zero,64
    598c:	000a0693          	addi	a3,s4,0 # 1000 <_vfprintf_r+0x138>
    5990:	000d0613          	addi	a2,s10,0
    5994:	000d8593          	addi	a1,s11,0
    5998:	0f810513          	addi	a0,sp,248
    599c:	840ff0ef          	jal	ra,49dc <emdnorm>
    59a0:	0440006f          	jal	zero,59e4 <_ldtoa_r+0x64c>
    59a4:	0f810593          	addi	a1,sp,248
    59a8:	0dc10513          	addi	a0,sp,220
    59ac:	f3cfe0ef          	jal	ra,40e8 <ecmpm>
    59b0:	06051663          	bne	a0,zero,5a1c <_ldtoa_r+0x684>
    59b4:	0dc15703          	lhu	a4,220(sp)
    59b8:	0f815783          	lhu	a5,248(sp)
    59bc:	00f70863          	beq	a4,a5,59cc <_ldtoa_r+0x634>
    59c0:	0c010513          	addi	a0,sp,192
    59c4:	eb0fe0ef          	jal	ra,4074 <eclear>
    59c8:	e05ff06f          	jal	zero,57cc <_ldtoa_r+0x434>
    59cc:	0fa15783          	lhu	a5,250(sp)
    59d0:	02079263          	bne	a5,zero,59f4 <_ldtoa_r+0x65c>
    59d4:	0fe11783          	lh	a5,254(sp)
    59d8:	0007ce63          	blt	a5,zero,59f4 <_ldtoa_r+0x65c>
    59dc:	0f810513          	addi	a0,sp,248
    59e0:	f94fe0ef          	jal	ra,4174 <eshup1>
    59e4:	0c010593          	addi	a1,sp,192
    59e8:	0f810513          	addi	a0,sp,248
    59ec:	e79fe0ef          	jal	ra,4864 <emovo.isra.6>
    59f0:	dddff06f          	jal	zero,57cc <_ldtoa_r+0x434>
    59f4:	0f810793          	addi	a5,sp,248
    59f8:	10e10713          	addi	a4,sp,270
    59fc:	0027d683          	lhu	a3,2(a5)
    5a00:	00068863          	beq	a3,zero,5a10 <_ldtoa_r+0x678>
    5a04:	001a0a13          	addi	s4,s4,1
    5a08:	0f411d23          	sh	s4,250(sp)
    5a0c:	fd9ff06f          	jal	zero,59e4 <_ldtoa_r+0x64c>
    5a10:	00278793          	addi	a5,a5,2
    5a14:	fef714e3          	bne	a4,a5,59fc <_ldtoa_r+0x664>
    5a18:	ff1ff06f          	jal	zero,5a08 <_ldtoa_r+0x670>
    5a1c:	00000d93          	addi	s11,zero,0
    5a20:	f4a056e3          	bge	zero,a0,596c <_ldtoa_r+0x5d4>
    5a24:	11410593          	addi	a1,sp,276
    5a28:	0f810513          	addi	a0,sp,248
    5a2c:	e94fe0ef          	jal	ra,40c0 <emovz>
    5a30:	0f810593          	addi	a1,sp,248
    5a34:	0dc10513          	addi	a0,sp,220
    5a38:	e88fe0ef          	jal	ra,40c0 <emovz>
    5a3c:	0dc10593          	addi	a1,sp,220
    5a40:	11410513          	addi	a0,sp,276
    5a44:	e7cfe0ef          	jal	ra,40c0 <emovz>
    5a48:	f25ff06f          	jal	zero,596c <_ldtoa_r+0x5d4>
    5a4c:	851fe0ef          	jal	ra,429c <esubm>
    5a50:	00100d13          	addi	s10,zero,1
    5a54:	f31ff06f          	jal	zero,5984 <_ldtoa_r+0x5ec>
    5a58:	00278793          	addi	a5,a5,2
    5a5c:	01200713          	addi	a4,zero,18
    5a60:	c6e792e3          	bne	a5,a4,56c4 <_ldtoa_r+0x32c>
    5a64:	d69ff06f          	jal	zero,57cc <_ldtoa_r+0x434>
    5a68:	07e15783          	lhu	a5,126(sp)
    5a6c:	00000413          	addi	s0,zero,0
    5a70:	0000c997          	auipc	s3,0xc
    5a74:	be898993          	addi	s3,s3,-1048 # 11658 <etens+0xf0>
    5a78:	0a078863          	beq	a5,zero,5b28 <_ldtoa_r+0x790>
    5a7c:	0c010593          	addi	a1,sp,192
    5a80:	06c10513          	addi	a0,sp,108
    5a84:	000049b7          	lui	s3,0x4
    5a88:	955fe0ef          	jal	ra,43dc <emovi>
    5a8c:	ffe98993          	addi	s3,s3,-2 # 3ffe <_fwalk_reent+0x3e>
    5a90:	fd500a13          	addi	s4,zero,-43
    5a94:	0d815783          	lhu	a5,216(sp)
    5a98:	0077f793          	andi	a5,a5,7
    5a9c:	06079263          	bne	a5,zero,5b00 <_ldtoa_r+0x768>
    5aa0:	0a410593          	addi	a1,sp,164
    5aa4:	0c010513          	addi	a0,sp,192
    5aa8:	e18fe0ef          	jal	ra,40c0 <emovz>
    5aac:	0a410513          	addi	a0,sp,164
    5ab0:	e74fe0ef          	jal	ra,4124 <eshdn1>
    5ab4:	0a410513          	addi	a0,sp,164
    5ab8:	e6cfe0ef          	jal	ra,4124 <eshdn1>
    5abc:	0a410593          	addi	a1,sp,164
    5ac0:	0c010513          	addi	a0,sp,192
    5ac4:	fa0fe0ef          	jal	ra,4264 <eaddm>
    5ac8:	0a615783          	lhu	a5,166(sp)
    5acc:	00378793          	addi	a5,a5,3
    5ad0:	0af11323          	sh	a5,166(sp)
    5ad4:	0a815783          	lhu	a5,168(sp)
    5ad8:	10079e63          	bne	a5,zero,5bf4 <_ldtoa_r+0x85c>
    5adc:	0bc15783          	lhu	a5,188(sp)
    5ae0:	02079063          	bne	a5,zero,5b00 <_ldtoa_r+0x768>
    5ae4:	0a615783          	lhu	a5,166(sp)
    5ae8:	00f9ec63          	bltu	s3,a5,5b00 <_ldtoa_r+0x768>
    5aec:	0c010593          	addi	a1,sp,192
    5af0:	0a410513          	addi	a0,sp,164
    5af4:	fff40413          	addi	s0,s0,-1
    5af8:	dc8fe0ef          	jal	ra,40c0 <emovz>
    5afc:	f9441ce3          	bne	s0,s4,5a94 <_ldtoa_r+0x6fc>
    5b00:	06c10593          	addi	a1,sp,108
    5b04:	0c010513          	addi	a0,sp,192
    5b08:	d5dfe0ef          	jal	ra,4864 <emovo.isra.6>
    5b0c:	0240006f          	jal	zero,5b30 <_ldtoa_r+0x798>
    5b10:	06c10613          	addi	a2,sp,108
    5b14:	15010693          	addi	a3,sp,336
    5b18:	00060593          	addi	a1,a2,0
    5b1c:	00098513          	addi	a0,s3,0
    5b20:	abcff0ef          	jal	ra,4ddc <emul>
    5b24:	fff40413          	addi	s0,s0,-1
    5b28:	07c11783          	lh	a5,124(sp)
    5b2c:	fe07d2e3          	bge	a5,zero,5b10 <_ldtoa_r+0x778>
    5b30:	0c010593          	addi	a1,sp,192
    5b34:	06c10513          	addi	a0,sp,108
    5b38:	d50fe0ef          	jal	ra,4088 <emov>
    5b3c:	08810593          	addi	a1,sp,136
    5b40:	0000c517          	auipc	a0,0xc
    5b44:	b2c50513          	addi	a0,a0,-1236 # 1166c <eone>
    5b48:	d40fe0ef          	jal	ra,4088 <emov>
    5b4c:	00000b93          	addi	s7,zero,0
    5b50:	fffff9b7          	lui	s3,0xfffff
    5b54:	0000cd97          	auipc	s11,0xc
    5b58:	b50d8d93          	addi	s11,s11,-1200 # 116a4 <emtens>
    5b5c:	00200d13          	addi	s10,zero,2
    5b60:	017d8733          	add	a4,s11,s7
    5b64:	0000c797          	auipc	a5,0xc
    5b68:	a0478793          	addi	a5,a5,-1532 # 11568 <etens>
    5b6c:	0c010593          	addi	a1,sp,192
    5b70:	0000c517          	auipc	a0,0xc
    5b74:	afc50513          	addi	a0,a0,-1284 # 1166c <eone>
    5b78:	00e12623          	sw	a4,12(sp)
    5b7c:	01778a33          	add	s4,a5,s7
    5b80:	92dfe0ef          	jal	ra,44ac <ecmp>
    5b84:	00c12703          	lw	a4,12(sp)
    5b88:	04a05863          	bge	zero,a0,5bd8 <_ldtoa_r+0x840>
    5b8c:	0c010593          	addi	a1,sp,192
    5b90:	00070513          	addi	a0,a4,0 # ffff8000 <__heap_top+0xffef8000>
    5b94:	919fe0ef          	jal	ra,44ac <ecmp>
    5b98:	02054863          	blt	a0,zero,5bc8 <_ldtoa_r+0x830>
    5b9c:	0c010613          	addi	a2,sp,192
    5ba0:	00060593          	addi	a1,a2,0
    5ba4:	15010693          	addi	a3,sp,336
    5ba8:	000a0513          	addi	a0,s4,0
    5bac:	a30ff0ef          	jal	ra,4ddc <emul>
    5bb0:	08810613          	addi	a2,sp,136
    5bb4:	15010693          	addi	a3,sp,336
    5bb8:	00060593          	addi	a1,a2,0
    5bbc:	000a0513          	addi	a0,s4,0
    5bc0:	a1cff0ef          	jal	ra,4ddc <emul>
    5bc4:	01340433          	add	s0,s0,s3
    5bc8:	014b8b93          	addi	s7,s7,20
    5bcc:	10400793          	addi	a5,zero,260
    5bd0:	03a9c9b3          	div	s3,s3,s10
    5bd4:	f8fb96e3          	bne	s7,a5,5b60 <_ldtoa_r+0x7c8>
    5bd8:	08810613          	addi	a2,sp,136
    5bdc:	15010693          	addi	a3,sp,336
    5be0:	0000c597          	auipc	a1,0xc
    5be4:	a8c58593          	addi	a1,a1,-1396 # 1166c <eone>
    5be8:	00060513          	addi	a0,a2,0
    5bec:	c80ff0ef          	jal	ra,506c <ediv>
    5bf0:	925ff06f          	jal	zero,5514 <_ldtoa_r+0x17c>
    5bf4:	0a410513          	addi	a0,sp,164
    5bf8:	d2cfe0ef          	jal	ra,4124 <eshdn1>
    5bfc:	0a615783          	lhu	a5,166(sp)
    5c00:	00178793          	addi	a5,a5,1
    5c04:	ecdff06f          	jal	zero,5ad0 <_ldtoa_r+0x738>
    5c08:	06c10513          	addi	a0,sp,108
    5c0c:	d68fe0ef          	jal	ra,4174 <eshup1>
    5c10:	0a410593          	addi	a1,sp,164
    5c14:	06c10513          	addi	a0,sp,108
    5c18:	ca8fe0ef          	jal	ra,40c0 <emovz>
    5c1c:	0a410513          	addi	a0,sp,164
    5c20:	d54fe0ef          	jal	ra,4174 <eshup1>
    5c24:	0a410513          	addi	a0,sp,164
    5c28:	d4cfe0ef          	jal	ra,4174 <eshup1>
    5c2c:	06c10593          	addi	a1,sp,108
    5c30:	0a410513          	addi	a0,sp,164
    5c34:	e30fe0ef          	jal	ra,4264 <eaddm>
    5c38:	15010613          	addi	a2,sp,336
    5c3c:	06c10593          	addi	a1,sp,108
    5c40:	08810513          	addi	a0,sp,136
    5c44:	8b4ff0ef          	jal	ra,4cf8 <eiremain>
    5c48:	fff40413          	addi	s0,s0,-1
    5c4c:	19c15983          	lhu	s3,412(sp)
    5c50:	911ff06f          	jal	zero,5560 <_ldtoa_r+0x1c8>
    5c54:	02000793          	addi	a5,zero,32
    5c58:	929ff06f          	jal	zero,5580 <_ldtoa_r+0x1e8>
    5c5c:	03098993          	addi	s3,s3,48 # fffff030 <__heap_top+0xffeff030>
    5c60:	02e00793          	addi	a5,zero,46
    5c64:	11310aa3          	sb	s3,277(sp)
    5c68:	10f10b23          	sb	a5,278(sp)
    5c6c:	11710993          	addi	s3,sp,279
    5c70:	01698bb3          	add	s7,s3,s6
    5c74:	056a5663          	bge	s4,s6,5cc0 <_ldtoa_r+0x928>
    5c78:	19c15783          	lhu	a5,412(sp)
    5c7c:	00400713          	addi	a4,zero,4
    5c80:	fffb8993          	addi	s3,s7,-1
    5c84:	94f75ae3          	bge	a4,a5,55d8 <_ldtoa_r+0x240>
    5c88:	00500713          	addi	a4,zero,5
    5c8c:	08e78463          	beq	a5,a4,5d14 <_ldtoa_r+0x97c>
    5c90:	00098793          	addi	a5,s3,0
    5c94:	02e00613          	addi	a2,zero,46
    5c98:	03800593          	addi	a1,zero,56
    5c9c:	03000693          	addi	a3,zero,48
    5ca0:	fff78793          	addi	a5,a5,-1
    5ca4:	0007c703          	lbu	a4,0(a5)
    5ca8:	07f77713          	andi	a4,a4,127
    5cac:	0a0a5863          	bge	s4,zero,5d5c <_ldtoa_r+0x9c4>
    5cb0:	03100713          	addi	a4,zero,49
    5cb4:	00e78023          	sb	a4,0(a5)
    5cb8:	00140413          	addi	s0,s0,1
    5cbc:	91dff06f          	jal	zero,55d8 <_ldtoa_r+0x240>
    5cc0:	06c10513          	addi	a0,sp,108
    5cc4:	cb0fe0ef          	jal	ra,4174 <eshup1>
    5cc8:	0a410593          	addi	a1,sp,164
    5ccc:	06c10513          	addi	a0,sp,108
    5cd0:	bf0fe0ef          	jal	ra,40c0 <emovz>
    5cd4:	0a410513          	addi	a0,sp,164
    5cd8:	c9cfe0ef          	jal	ra,4174 <eshup1>
    5cdc:	0a410513          	addi	a0,sp,164
    5ce0:	c94fe0ef          	jal	ra,4174 <eshup1>
    5ce4:	06c10593          	addi	a1,sp,108
    5ce8:	0a410513          	addi	a0,sp,164
    5cec:	d78fe0ef          	jal	ra,4264 <eaddm>
    5cf0:	15010613          	addi	a2,sp,336
    5cf4:	06c10593          	addi	a1,sp,108
    5cf8:	08810513          	addi	a0,sp,136
    5cfc:	ffdfe0ef          	jal	ra,4cf8 <eiremain>
    5d00:	19c14783          	lbu	a5,412(sp)
    5d04:	001b0b13          	addi	s6,s6,1
    5d08:	03078793          	addi	a5,a5,48
    5d0c:	00fb8023          	sb	a5,0(s7)
    5d10:	f61ff06f          	jal	zero,5c70 <_ldtoa_r+0x8d8>
    5d14:	08810593          	addi	a1,sp,136
    5d18:	06c10513          	addi	a0,sp,108
    5d1c:	b49fe0ef          	jal	ra,4864 <emovo.isra.6>
    5d20:	0000c597          	auipc	a1,0xc
    5d24:	83458593          	addi	a1,a1,-1996 # 11554 <ezero>
    5d28:	08810513          	addi	a0,sp,136
    5d2c:	f80fe0ef          	jal	ra,44ac <ecmp>
    5d30:	f60510e3          	bne	a0,zero,5c90 <_ldtoa_r+0x8f8>
    5d34:	8a0a42e3          	blt	s4,zero,55d8 <_ldtoa_r+0x240>
    5d38:	ffebc783          	lbu	a5,-2(s7)
    5d3c:	fd278793          	addi	a5,a5,-46
    5d40:	0017b793          	sltiu	a5,a5,1
    5d44:	fff7c793          	xori	a5,a5,-1
    5d48:	00f987b3          	add	a5,s3,a5
    5d4c:	0007c783          	lbu	a5,0(a5)
    5d50:	0017f793          	andi	a5,a5,1
    5d54:	f2079ee3          	bne	a5,zero,5c90 <_ldtoa_r+0x8f8>
    5d58:	881ff06f          	jal	zero,55d8 <_ldtoa_r+0x240>
    5d5c:	02c71463          	bne	a4,a2,5d84 <_ldtoa_r+0x9ec>
    5d60:	fff7c703          	lbu	a4,-1(a5)
    5d64:	03800693          	addi	a3,zero,56
    5d68:	00e6e863          	bltu	a3,a4,5d78 <_ldtoa_r+0x9e0>
    5d6c:	00170713          	addi	a4,a4,1
    5d70:	fee78fa3          	sb	a4,-1(a5)
    5d74:	865ff06f          	jal	zero,55d8 <_ldtoa_r+0x240>
    5d78:	00140413          	addi	s0,s0,1
    5d7c:	03100713          	addi	a4,zero,49
    5d80:	ff1ff06f          	jal	zero,5d70 <_ldtoa_r+0x9d8>
    5d84:	00e5e863          	bltu	a1,a4,5d94 <_ldtoa_r+0x9fc>
    5d88:	00170713          	addi	a4,a4,1
    5d8c:	00e78023          	sb	a4,0(a5)
    5d90:	849ff06f          	jal	zero,55d8 <_ldtoa_r+0x240>
    5d94:	00d78023          	sb	a3,0(a5)
    5d98:	f09ff06f          	jal	zero,5ca0 <_ldtoa_r+0x908>
    5d9c:	00140793          	addi	a5,s0,1
    5da0:	00fca023          	sw	a5,0(s9)
    5da4:	02e00693          	addi	a3,zero,46
    5da8:	000a0793          	addi	a5,s4,0
    5dac:	0007c703          	lbu	a4,0(a5)
    5db0:	00071663          	bne	a4,zero,5dbc <_ldtoa_r+0xa24>
    5db4:	04500713          	addi	a4,zero,69
    5db8:	02c0006f          	jal	zero,5de4 <_ldtoa_r+0xa4c>
    5dbc:	00178613          	addi	a2,a5,1
    5dc0:	00d70663          	beq	a4,a3,5dcc <_ldtoa_r+0xa34>
    5dc4:	00060793          	addi	a5,a2,0
    5dc8:	fe5ff06f          	jal	zero,5dac <_ldtoa_r+0xa14>
    5dcc:	0017c703          	lbu	a4,1(a5)
    5dd0:	00178793          	addi	a5,a5,1
    5dd4:	fee78fa3          	sb	a4,-1(a5)
    5dd8:	fe071ae3          	bne	a4,zero,5dcc <_ldtoa_r+0xa34>
    5ddc:	fd9ff06f          	jal	zero,5db4 <_ldtoa_r+0xa1c>
    5de0:	fff78793          	addi	a5,a5,-1
    5de4:	0007c683          	lbu	a3,0(a5)
    5de8:	00e68463          	beq	a3,a4,5df0 <_ldtoa_r+0xa58>
    5dec:	fefa6ae3          	bltu	s4,a5,5de0 <_ldtoa_r+0xa48>
    5df0:	00078023          	sb	zero,0(a5)
    5df4:	1500006f          	jal	zero,5f44 <_ldtoa_r+0xbac>
    5df8:	00178793          	addi	a5,a5,1
    5dfc:	1540006f          	jal	zero,5f50 <_ldtoa_r+0xbb8>
    5e00:	00068993          	addi	s3,a3,0
    5e04:	15c0006f          	jal	zero,5f60 <_ldtoa_r+0xbc8>
    5e08:	fff98993          	addi	s3,s3,-1
    5e0c:	00098023          	sb	zero,0(s3)
    5e10:	fff9c703          	lbu	a4,-1(s3)
    5e14:	00d71663          	bne	a4,a3,5e20 <_ldtoa_r+0xa88>
    5e18:	41498733          	sub	a4,s3,s4
    5e1c:	fee7c6e3          	blt	a5,a4,5e08 <_ldtoa_r+0xa70>
    5e20:	00300713          	addi	a4,zero,3
    5e24:	009c0793          	addi	a5,s8,9
    5e28:	02ea9263          	bne	s5,a4,5e4c <_ldtoa_r+0xab4>
    5e2c:	00848433          	add	s0,s1,s0
    5e30:	00045863          	bge	s0,zero,5e40 <_ldtoa_r+0xaa8>
    5e34:	10010a23          	sb	zero,276(sp)
    5e38:	000ca023          	sw	zero,0(s9)
    5e3c:	000a0993          	addi	s3,s4,0
    5e40:	000ca783          	lw	a5,0(s9)
    5e44:	00fc0c33          	add	s8,s8,a5
    5e48:	003c0793          	addi	a5,s8,3
    5e4c:	04092223          	sw	zero,68(s2)
    5e50:	00400713          	addi	a4,zero,4
    5e54:	01470693          	addi	a3,a4,20
    5e58:	04492583          	lw	a1,68(s2)
    5e5c:	06d7f863          	bgeu	a5,a3,5ecc <_ldtoa_r+0xb34>
    5e60:	00090513          	addi	a0,s2,0
    5e64:	46d000ef          	jal	ra,6ad0 <_Balloc>
    5e68:	04a92023          	sw	a0,64(s2)
    5e6c:	000a0593          	addi	a1,s4,0
    5e70:	00050413          	addi	s0,a0,0
    5e74:	4a4020ef          	jal	ra,8318 <strcpy>
    5e78:	01012783          	lw	a5,16(sp)
    5e7c:	00078863          	beq	a5,zero,5e8c <_ldtoa_r+0xaf4>
    5e80:	414989b3          	sub	s3,s3,s4
    5e84:	013409b3          	add	s3,s0,s3
    5e88:	0137a023          	sw	s3,0(a5)
    5e8c:	00040513          	addi	a0,s0,0
    5e90:	1dc12083          	lw	ra,476(sp)
    5e94:	1d812403          	lw	s0,472(sp)
    5e98:	1d412483          	lw	s1,468(sp)
    5e9c:	1d012903          	lw	s2,464(sp)
    5ea0:	1cc12983          	lw	s3,460(sp)
    5ea4:	1c812a03          	lw	s4,456(sp)
    5ea8:	1c412a83          	lw	s5,452(sp)
    5eac:	1c012b03          	lw	s6,448(sp)
    5eb0:	1bc12b83          	lw	s7,444(sp)
    5eb4:	1b812c03          	lw	s8,440(sp)
    5eb8:	1b412c83          	lw	s9,436(sp)
    5ebc:	1b012d03          	lw	s10,432(sp)
    5ec0:	1ac12d83          	lw	s11,428(sp)
    5ec4:	1e010113          	addi	sp,sp,480
    5ec8:	00008067          	jalr	zero,0(ra)
    5ecc:	00158593          	addi	a1,a1,1
    5ed0:	04b92223          	sw	a1,68(s2)
    5ed4:	00171713          	slli	a4,a4,0x1
    5ed8:	f7dff06f          	jal	zero,5e54 <_ldtoa_r+0xabc>
    5edc:	000087b7          	lui	a5,0x8
    5ee0:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    5ee4:	f0f71e63          	bne	a4,a5,5600 <_ldtoa_r+0x268>
    5ee8:	00812783          	lw	a5,8(sp)
    5eec:	0000c597          	auipc	a1,0xc
    5ef0:	8d058593          	addi	a1,a1,-1840 # 117bc <emtens+0x118>
    5ef4:	00078663          	beq	a5,zero,5f00 <_ldtoa_r+0xb68>
    5ef8:	0000c597          	auipc	a1,0xc
    5efc:	8b858593          	addi	a1,a1,-1864 # 117b0 <emtens+0x10c>
    5f00:	11410513          	addi	a0,sp,276
    5f04:	00002437          	lui	s0,0x2
    5f08:	0e4020ef          	jal	ra,7fec <sprintf>
    5f0c:	70f40413          	addi	s0,s0,1807 # 270f <_vfprintf_r+0x1847>
    5f10:	01412783          	lw	a5,20(sp)
    5f14:	05010513          	addi	a0,sp,80
    5f18:	16812023          	sw	s0,352(sp)
    5f1c:	14f12a23          	sw	a5,340(sp)
    5f20:	e94fe0ef          	jal	ra,45b4 <eisinf>
    5f24:	11410a13          	addi	s4,sp,276
    5f28:	00051863          	bne	a0,zero,5f38 <_ldtoa_r+0xba0>
    5f2c:	05010513          	addi	a0,sp,80
    5f30:	c40fe0ef          	jal	ra,4370 <eisnan>
    5f34:	e60504e3          	beq	a0,zero,5d9c <_ldtoa_r+0xa04>
    5f38:	000027b7          	lui	a5,0x2
    5f3c:	70f78793          	addi	a5,a5,1807 # 270f <_vfprintf_r+0x1847>
    5f40:	00fca023          	sw	a5,0(s9)
    5f44:	000a0793          	addi	a5,s4,0
    5f48:	02000613          	addi	a2,zero,32
    5f4c:	02d00693          	addi	a3,zero,45
    5f50:	0007c703          	lbu	a4,0(a5)
    5f54:	eac702e3          	beq	a4,a2,5df8 <_ldtoa_r+0xa60>
    5f58:	ead700e3          	beq	a4,a3,5df8 <_ldtoa_r+0xa60>
    5f5c:	000a0993          	addi	s3,s4,0
    5f60:	00178793          	addi	a5,a5,1
    5f64:	fff7c703          	lbu	a4,-1(a5)
    5f68:	00198693          	addi	a3,s3,1
    5f6c:	fee68fa3          	sb	a4,-1(a3)
    5f70:	e80718e3          	bne	a4,zero,5e00 <_ldtoa_r+0xa68>
    5f74:	00200713          	addi	a4,zero,2
    5f78:	00100793          	addi	a5,zero,1
    5f7c:	00ea8863          	beq	s5,a4,5f8c <_ldtoa_r+0xbf4>
    5f80:	00048793          	addi	a5,s1,0
    5f84:	0084d463          	bge	s1,s0,5f8c <_ldtoa_r+0xbf4>
    5f88:	00040793          	addi	a5,s0,0
    5f8c:	03000693          	addi	a3,zero,48
    5f90:	e81ff06f          	jal	zero,5e10 <_ldtoa_r+0xa78>

00005f94 <_ldcheck>:
    5f94:	00052783          	lw	a5,0(a0)
    5f98:	fc010113          	addi	sp,sp,-64
    5f9c:	01410593          	addi	a1,sp,20
    5fa0:	00f12023          	sw	a5,0(sp)
    5fa4:	00452783          	lw	a5,4(a0)
    5fa8:	02112e23          	sw	ra,60(sp)
    5fac:	00f12223          	sw	a5,4(sp)
    5fb0:	00852783          	lw	a5,8(a0)
    5fb4:	00f12423          	sw	a5,8(sp)
    5fb8:	00c52783          	lw	a5,12(a0)
    5fbc:	00010513          	addi	a0,sp,0
    5fc0:	00f12623          	sw	a5,12(sp)
    5fc4:	911fe0ef          	jal	ra,48d4 <e113toe.isra.8>
    5fc8:	02615783          	lhu	a5,38(sp)
    5fcc:	00000513          	addi	a0,zero,0
    5fd0:	fff7c793          	xori	a5,a5,-1
    5fd4:	01179713          	slli	a4,a5,0x11
    5fd8:	00071a63          	bne	a4,zero,5fec <_ldcheck+0x58>
    5fdc:	01410513          	addi	a0,sp,20
    5fe0:	b90fe0ef          	jal	ra,4370 <eisnan>
    5fe4:	00153513          	sltiu	a0,a0,1
    5fe8:	00150513          	addi	a0,a0,1
    5fec:	03c12083          	lw	ra,60(sp)
    5ff0:	04010113          	addi	sp,sp,64
    5ff4:	00008067          	jalr	zero,0(ra)

00005ff8 <__localeconv_l>:
    5ff8:	0f050513          	addi	a0,a0,240
    5ffc:	00008067          	jalr	zero,0(ra)

00006000 <_localeconv_r>:
    6000:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    6004:	0007a783          	lw	a5,0(a5)
    6008:	0347a503          	lw	a0,52(a5)
    600c:	00051463          	bne	a0,zero,6014 <_localeconv_r+0x14>
    6010:	c2818513          	addi	a0,gp,-984 # 124d8 <__global_locale>
    6014:	0f050513          	addi	a0,a0,240
    6018:	00008067          	jalr	zero,0(ra)

0000601c <localeconv>:
    601c:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    6020:	0007a783          	lw	a5,0(a5)
    6024:	0347a503          	lw	a0,52(a5)
    6028:	00051463          	bne	a0,zero,6030 <localeconv+0x14>
    602c:	c2818513          	addi	a0,gp,-984 # 124d8 <__global_locale>
    6030:	0f050513          	addi	a0,a0,240
    6034:	00008067          	jalr	zero,0(ra)

00006038 <_setlocale_r>:
    6038:	02061463          	bne	a2,zero,6060 <_setlocale_r+0x28>
    603c:	0000b517          	auipc	a0,0xb
    6040:	79450513          	addi	a0,a0,1940 # 117d0 <emtens+0x12c>
    6044:	00008067          	jalr	zero,0(ra)
    6048:	0000b517          	auipc	a0,0xb
    604c:	78850513          	addi	a0,a0,1928 # 117d0 <emtens+0x12c>
    6050:	00c12083          	lw	ra,12(sp)
    6054:	00812403          	lw	s0,8(sp)
    6058:	01010113          	addi	sp,sp,16
    605c:	00008067          	jalr	zero,0(ra)
    6060:	ff010113          	addi	sp,sp,-16
    6064:	0000b597          	auipc	a1,0xb
    6068:	77058593          	addi	a1,a1,1904 # 117d4 <emtens+0x130>
    606c:	00060513          	addi	a0,a2,0
    6070:	00812423          	sw	s0,8(sp)
    6074:	00112623          	sw	ra,12(sp)
    6078:	00060413          	addi	s0,a2,0
    607c:	120020ef          	jal	ra,819c <strcmp>
    6080:	fc0504e3          	beq	a0,zero,6048 <_setlocale_r+0x10>
    6084:	0000b597          	auipc	a1,0xb
    6088:	74c58593          	addi	a1,a1,1868 # 117d0 <emtens+0x12c>
    608c:	00040513          	addi	a0,s0,0
    6090:	10c020ef          	jal	ra,819c <strcmp>
    6094:	fa050ae3          	beq	a0,zero,6048 <_setlocale_r+0x10>
    6098:	0000b597          	auipc	a1,0xb
    609c:	4b458593          	addi	a1,a1,1204 # 1154c <zeroes.4514+0x44>
    60a0:	00040513          	addi	a0,s0,0
    60a4:	0f8020ef          	jal	ra,819c <strcmp>
    60a8:	fa0500e3          	beq	a0,zero,6048 <_setlocale_r+0x10>
    60ac:	00000513          	addi	a0,zero,0
    60b0:	fa1ff06f          	jal	zero,6050 <_setlocale_r+0x18>

000060b4 <__locale_mb_cur_max>:
    60b4:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    60b8:	0007a783          	lw	a5,0(a5)
    60bc:	0347a783          	lw	a5,52(a5)
    60c0:	00079463          	bne	a5,zero,60c8 <__locale_mb_cur_max+0x14>
    60c4:	c2818793          	addi	a5,gp,-984 # 124d8 <__global_locale>
    60c8:	1287c503          	lbu	a0,296(a5)
    60cc:	00008067          	jalr	zero,0(ra)

000060d0 <__locale_ctype_ptr_l>:
    60d0:	0ec52503          	lw	a0,236(a0)
    60d4:	00008067          	jalr	zero,0(ra)

000060d8 <__locale_ctype_ptr>:
    60d8:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    60dc:	0007a783          	lw	a5,0(a5)
    60e0:	0347a783          	lw	a5,52(a5)
    60e4:	00079463          	bne	a5,zero,60ec <__locale_ctype_ptr+0x14>
    60e8:	c2818793          	addi	a5,gp,-984 # 124d8 <__global_locale>
    60ec:	0ec7a503          	lw	a0,236(a5)
    60f0:	00008067          	jalr	zero,0(ra)

000060f4 <setlocale>:
    60f4:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    60f8:	00058613          	addi	a2,a1,0
    60fc:	00050593          	addi	a1,a0,0
    6100:	0007a503          	lw	a0,0(a5)
    6104:	f35ff06f          	jal	zero,6038 <_setlocale_r>

00006108 <__swhatbuf_r>:
    6108:	f8010113          	addi	sp,sp,-128
    610c:	06912a23          	sw	s1,116(sp)
    6110:	00058493          	addi	s1,a1,0
    6114:	00e59583          	lh	a1,14(a1)
    6118:	06812c23          	sw	s0,120(sp)
    611c:	06112e23          	sw	ra,124(sp)
    6120:	00060413          	addi	s0,a2,0
    6124:	0005de63          	bge	a1,zero,6140 <__swhatbuf_r+0x38>
    6128:	00c4d783          	lhu	a5,12(s1)
    612c:	0006a023          	sw	zero,0(a3)
    6130:	0807f793          	andi	a5,a5,128
    6134:	04079863          	bne	a5,zero,6184 <__swhatbuf_r+0x7c>
    6138:	40000793          	addi	a5,zero,1024
    613c:	04c0006f          	jal	zero,6188 <__swhatbuf_r+0x80>
    6140:	01810613          	addi	a2,sp,24
    6144:	00d12623          	sw	a3,12(sp)
    6148:	3d8050ef          	jal	ra,b520 <_fstat_r>
    614c:	00c12683          	lw	a3,12(sp)
    6150:	fc054ce3          	blt	a0,zero,6128 <__swhatbuf_r+0x20>
    6154:	01c12703          	lw	a4,28(sp)
    6158:	0000f7b7          	lui	a5,0xf
    615c:	00001537          	lui	a0,0x1
    6160:	00e7f7b3          	and	a5,a5,a4
    6164:	ffffe737          	lui	a4,0xffffe
    6168:	00e787b3          	add	a5,a5,a4
    616c:	0017b793          	sltiu	a5,a5,1
    6170:	00f6a023          	sw	a5,0(a3)
    6174:	40000793          	addi	a5,zero,1024
    6178:	00f42023          	sw	a5,0(s0)
    617c:	80050513          	addi	a0,a0,-2048 # 800 <main+0x3c>
    6180:	0100006f          	jal	zero,6190 <__swhatbuf_r+0x88>
    6184:	04000793          	addi	a5,zero,64
    6188:	00f42023          	sw	a5,0(s0)
    618c:	00000513          	addi	a0,zero,0
    6190:	07c12083          	lw	ra,124(sp)
    6194:	07812403          	lw	s0,120(sp)
    6198:	07412483          	lw	s1,116(sp)
    619c:	08010113          	addi	sp,sp,128
    61a0:	00008067          	jalr	zero,0(ra)

000061a4 <__smakebuf_r>:
    61a4:	00c5d783          	lhu	a5,12(a1)
    61a8:	fe010113          	addi	sp,sp,-32
    61ac:	00812c23          	sw	s0,24(sp)
    61b0:	00112e23          	sw	ra,28(sp)
    61b4:	00912a23          	sw	s1,20(sp)
    61b8:	01212823          	sw	s2,16(sp)
    61bc:	0027f793          	andi	a5,a5,2
    61c0:	00058413          	addi	s0,a1,0
    61c4:	02078863          	beq	a5,zero,61f4 <__smakebuf_r+0x50>
    61c8:	04340793          	addi	a5,s0,67
    61cc:	00f42023          	sw	a5,0(s0)
    61d0:	00f42823          	sw	a5,16(s0)
    61d4:	00100793          	addi	a5,zero,1
    61d8:	00f42a23          	sw	a5,20(s0)
    61dc:	01c12083          	lw	ra,28(sp)
    61e0:	01812403          	lw	s0,24(sp)
    61e4:	01412483          	lw	s1,20(sp)
    61e8:	01012903          	lw	s2,16(sp)
    61ec:	02010113          	addi	sp,sp,32
    61f0:	00008067          	jalr	zero,0(ra)
    61f4:	00c10693          	addi	a3,sp,12
    61f8:	00810613          	addi	a2,sp,8
    61fc:	00050493          	addi	s1,a0,0
    6200:	f09ff0ef          	jal	ra,6108 <__swhatbuf_r>
    6204:	00812583          	lw	a1,8(sp)
    6208:	00050913          	addi	s2,a0,0
    620c:	00048513          	addi	a0,s1,0
    6210:	084000ef          	jal	ra,6294 <_malloc_r>
    6214:	02051063          	bne	a0,zero,6234 <__smakebuf_r+0x90>
    6218:	00c41783          	lh	a5,12(s0)
    621c:	2007f713          	andi	a4,a5,512
    6220:	fa071ee3          	bne	a4,zero,61dc <__smakebuf_r+0x38>
    6224:	ffc7f793          	andi	a5,a5,-4
    6228:	0027e793          	ori	a5,a5,2
    622c:	00f41623          	sh	a5,12(s0)
    6230:	f99ff06f          	jal	zero,61c8 <__smakebuf_r+0x24>
    6234:	ffffd797          	auipc	a5,0xffffd
    6238:	2f478793          	addi	a5,a5,756 # 3528 <_cleanup_r>
    623c:	02f4ae23          	sw	a5,60(s1)
    6240:	00c45783          	lhu	a5,12(s0)
    6244:	00a42023          	sw	a0,0(s0)
    6248:	00a42823          	sw	a0,16(s0)
    624c:	0807e793          	ori	a5,a5,128
    6250:	00f41623          	sh	a5,12(s0)
    6254:	00812783          	lw	a5,8(sp)
    6258:	00f42a23          	sw	a5,20(s0)
    625c:	00c12783          	lw	a5,12(sp)
    6260:	02078263          	beq	a5,zero,6284 <__smakebuf_r+0xe0>
    6264:	00e41583          	lh	a1,14(s0)
    6268:	00048513          	addi	a0,s1,0
    626c:	2fc050ef          	jal	ra,b568 <_isatty_r>
    6270:	00050a63          	beq	a0,zero,6284 <__smakebuf_r+0xe0>
    6274:	00c45783          	lhu	a5,12(s0)
    6278:	ffc7f793          	andi	a5,a5,-4
    627c:	0017e793          	ori	a5,a5,1
    6280:	00f41623          	sh	a5,12(s0)
    6284:	00c45783          	lhu	a5,12(s0)
    6288:	00f96933          	or	s2,s2,a5
    628c:	01241623          	sh	s2,12(s0)
    6290:	f4dff06f          	jal	zero,61dc <__smakebuf_r+0x38>

00006294 <_malloc_r>:
    6294:	fd010113          	addi	sp,sp,-48
    6298:	02112623          	sw	ra,44(sp)
    629c:	02812423          	sw	s0,40(sp)
    62a0:	02912223          	sw	s1,36(sp)
    62a4:	03212023          	sw	s2,32(sp)
    62a8:	01312e23          	sw	s3,28(sp)
    62ac:	01412c23          	sw	s4,24(sp)
    62b0:	01512a23          	sw	s5,20(sp)
    62b4:	01612823          	sw	s6,16(sp)
    62b8:	01712623          	sw	s7,12(sp)
    62bc:	01812423          	sw	s8,8(sp)
    62c0:	01912223          	sw	s9,4(sp)
    62c4:	00b58793          	addi	a5,a1,11
    62c8:	01600713          	addi	a4,zero,22
    62cc:	04f77663          	bgeu	a4,a5,6318 <_malloc_r+0x84>
    62d0:	ff87f493          	andi	s1,a5,-8
    62d4:	0404d463          	bge	s1,zero,631c <_malloc_r+0x88>
    62d8:	00c00793          	addi	a5,zero,12
    62dc:	00f52023          	sw	a5,0(a0)
    62e0:	00000513          	addi	a0,zero,0
    62e4:	02c12083          	lw	ra,44(sp)
    62e8:	02812403          	lw	s0,40(sp)
    62ec:	02412483          	lw	s1,36(sp)
    62f0:	02012903          	lw	s2,32(sp)
    62f4:	01c12983          	lw	s3,28(sp)
    62f8:	01812a03          	lw	s4,24(sp)
    62fc:	01412a83          	lw	s5,20(sp)
    6300:	01012b03          	lw	s6,16(sp)
    6304:	00c12b83          	lw	s7,12(sp)
    6308:	00812c03          	lw	s8,8(sp)
    630c:	00412c83          	lw	s9,4(sp)
    6310:	03010113          	addi	sp,sp,48
    6314:	00008067          	jalr	zero,0(ra)
    6318:	01000493          	addi	s1,zero,16
    631c:	fab4eee3          	bltu	s1,a1,62d8 <_malloc_r+0x44>
    6320:	00050913          	addi	s2,a0,0
    6324:	7a4000ef          	jal	ra,6ac8 <__malloc_lock>
    6328:	1f700793          	addi	a5,zero,503
    632c:	d9418993          	addi	s3,gp,-620 # 12644 <__malloc_av_>
    6330:	0497ea63          	bltu	a5,s1,6384 <_malloc_r+0xf0>
    6334:	00848713          	addi	a4,s1,8
    6338:	00e98733          	add	a4,s3,a4
    633c:	00472403          	lw	s0,4(a4) # ffffe004 <__heap_top+0xffefe004>
    6340:	ff870693          	addi	a3,a4,-8
    6344:	0034d793          	srli	a5,s1,0x3
    6348:	00d41863          	bne	s0,a3,6358 <_malloc_r+0xc4>
    634c:	00c72403          	lw	s0,12(a4)
    6350:	00278793          	addi	a5,a5,2
    6354:	08870063          	beq	a4,s0,63d4 <_malloc_r+0x140>
    6358:	00442783          	lw	a5,4(s0)
    635c:	00c42703          	lw	a4,12(s0)
    6360:	00842683          	lw	a3,8(s0)
    6364:	ffc7f793          	andi	a5,a5,-4
    6368:	00f407b3          	add	a5,s0,a5
    636c:	00e6a623          	sw	a4,12(a3)
    6370:	00d72423          	sw	a3,8(a4)
    6374:	0047a703          	lw	a4,4(a5)
    6378:	00176713          	ori	a4,a4,1
    637c:	00e7a223          	sw	a4,4(a5)
    6380:	0a00006f          	jal	zero,6420 <_malloc_r+0x18c>
    6384:	0094d713          	srli	a4,s1,0x9
    6388:	03f00793          	addi	a5,zero,63
    638c:	00070a63          	beq	a4,zero,63a0 <_malloc_r+0x10c>
    6390:	00400793          	addi	a5,zero,4
    6394:	08e7ee63          	bltu	a5,a4,6430 <_malloc_r+0x19c>
    6398:	0064d793          	srli	a5,s1,0x6
    639c:	03878793          	addi	a5,a5,56
    63a0:	00178713          	addi	a4,a5,1
    63a4:	00371713          	slli	a4,a4,0x3
    63a8:	00e98733          	add	a4,s3,a4
    63ac:	00472403          	lw	s0,4(a4)
    63b0:	ff870593          	addi	a1,a4,-8
    63b4:	00f00513          	addi	a0,zero,15
    63b8:	00b40c63          	beq	s0,a1,63d0 <_malloc_r+0x13c>
    63bc:	00442703          	lw	a4,4(s0)
    63c0:	ffc77713          	andi	a4,a4,-4
    63c4:	40970633          	sub	a2,a4,s1
    63c8:	0ac55c63          	bge	a0,a2,6480 <_malloc_r+0x1ec>
    63cc:	fff78793          	addi	a5,a5,-1
    63d0:	00178793          	addi	a5,a5,1
    63d4:	0109a403          	lw	s0,16(s3)
    63d8:	d9c18593          	addi	a1,gp,-612 # 1264c <__malloc_av_+0x8>
    63dc:	12b40863          	beq	s0,a1,650c <_malloc_r+0x278>
    63e0:	00442703          	lw	a4,4(s0)
    63e4:	00f00693          	addi	a3,zero,15
    63e8:	ffc77713          	andi	a4,a4,-4
    63ec:	40970633          	sub	a2,a4,s1
    63f0:	0ac6da63          	bge	a3,a2,64a4 <_malloc_r+0x210>
    63f4:	0014e793          	ori	a5,s1,1
    63f8:	00f42223          	sw	a5,4(s0)
    63fc:	009406b3          	add	a3,s0,s1
    6400:	dad1a423          	sw	a3,-600(gp) # 12658 <__malloc_av_+0x14>
    6404:	dad1a223          	sw	a3,-604(gp) # 12654 <__malloc_av_+0x10>
    6408:	00166793          	ori	a5,a2,1
    640c:	00b6a623          	sw	a1,12(a3)
    6410:	00b6a423          	sw	a1,8(a3)
    6414:	00f6a223          	sw	a5,4(a3)
    6418:	00e40733          	add	a4,s0,a4
    641c:	00c72023          	sw	a2,0(a4)
    6420:	00090513          	addi	a0,s2,0
    6424:	6a8000ef          	jal	ra,6acc <__malloc_unlock>
    6428:	00840513          	addi	a0,s0,8
    642c:	eb9ff06f          	jal	zero,62e4 <_malloc_r+0x50>
    6430:	01400793          	addi	a5,zero,20
    6434:	00e7e663          	bltu	a5,a4,6440 <_malloc_r+0x1ac>
    6438:	05b70793          	addi	a5,a4,91
    643c:	f65ff06f          	jal	zero,63a0 <_malloc_r+0x10c>
    6440:	05400793          	addi	a5,zero,84
    6444:	00e7e863          	bltu	a5,a4,6454 <_malloc_r+0x1c0>
    6448:	00c4d793          	srli	a5,s1,0xc
    644c:	06e78793          	addi	a5,a5,110
    6450:	f51ff06f          	jal	zero,63a0 <_malloc_r+0x10c>
    6454:	15400793          	addi	a5,zero,340
    6458:	00e7e863          	bltu	a5,a4,6468 <_malloc_r+0x1d4>
    645c:	00f4d793          	srli	a5,s1,0xf
    6460:	07778793          	addi	a5,a5,119
    6464:	f3dff06f          	jal	zero,63a0 <_malloc_r+0x10c>
    6468:	55400693          	addi	a3,zero,1364
    646c:	07e00793          	addi	a5,zero,126
    6470:	f2e6e8e3          	bltu	a3,a4,63a0 <_malloc_r+0x10c>
    6474:	0124d793          	srli	a5,s1,0x12
    6478:	07c78793          	addi	a5,a5,124
    647c:	f25ff06f          	jal	zero,63a0 <_malloc_r+0x10c>
    6480:	00c42683          	lw	a3,12(s0)
    6484:	00064c63          	blt	a2,zero,649c <_malloc_r+0x208>
    6488:	00842783          	lw	a5,8(s0)
    648c:	00d7a623          	sw	a3,12(a5)
    6490:	00f6a423          	sw	a5,8(a3)
    6494:	00e407b3          	add	a5,s0,a4
    6498:	eddff06f          	jal	zero,6374 <_malloc_r+0xe0>
    649c:	00068413          	addi	s0,a3,0
    64a0:	f19ff06f          	jal	zero,63b8 <_malloc_r+0x124>
    64a4:	dab1a423          	sw	a1,-600(gp) # 12658 <__malloc_av_+0x14>
    64a8:	dab1a223          	sw	a1,-604(gp) # 12654 <__malloc_av_+0x10>
    64ac:	00064c63          	blt	a2,zero,64c4 <_malloc_r+0x230>
    64b0:	00e40733          	add	a4,s0,a4
    64b4:	00472783          	lw	a5,4(a4)
    64b8:	0017e793          	ori	a5,a5,1
    64bc:	00f72223          	sw	a5,4(a4)
    64c0:	f61ff06f          	jal	zero,6420 <_malloc_r+0x18c>
    64c4:	1ff00693          	addi	a3,zero,511
    64c8:	0049a803          	lw	a6,4(s3)
    64cc:	16e6ee63          	bltu	a3,a4,6648 <_malloc_r+0x3b4>
    64d0:	00375713          	srli	a4,a4,0x3
    64d4:	40275613          	srai	a2,a4,0x2
    64d8:	00100693          	addi	a3,zero,1
    64dc:	00170713          	addi	a4,a4,1
    64e0:	00c696b3          	sll	a3,a3,a2
    64e4:	00371713          	slli	a4,a4,0x3
    64e8:	00e98733          	add	a4,s3,a4
    64ec:	0106e6b3          	or	a3,a3,a6
    64f0:	d8d1ac23          	sw	a3,-616(gp) # 12648 <__malloc_av_+0x4>
    64f4:	00072683          	lw	a3,0(a4)
    64f8:	ff870613          	addi	a2,a4,-8
    64fc:	00c42623          	sw	a2,12(s0)
    6500:	00d42423          	sw	a3,8(s0)
    6504:	00872023          	sw	s0,0(a4)
    6508:	0086a623          	sw	s0,12(a3)
    650c:	4027d713          	srai	a4,a5,0x2
    6510:	00100313          	addi	t1,zero,1
    6514:	00e31333          	sll	t1,t1,a4
    6518:	0049a703          	lw	a4,4(s3)
    651c:	06676a63          	bltu	a4,t1,6590 <_malloc_r+0x2fc>
    6520:	006776b3          	and	a3,a4,t1
    6524:	00069c63          	bne	a3,zero,653c <_malloc_r+0x2a8>
    6528:	ffc7f793          	andi	a5,a5,-4
    652c:	00131313          	slli	t1,t1,0x1
    6530:	006776b3          	and	a3,a4,t1
    6534:	00478793          	addi	a5,a5,4
    6538:	fe068ae3          	beq	a3,zero,652c <_malloc_r+0x298>
    653c:	00f00e13          	addi	t3,zero,15
    6540:	00379693          	slli	a3,a5,0x3
    6544:	00d986b3          	add	a3,s3,a3
    6548:	00068813          	addi	a6,a3,0
    654c:	00078513          	addi	a0,a5,0
    6550:	00c82403          	lw	s0,12(a6)
    6554:	1b041a63          	bne	s0,a6,6708 <_malloc_r+0x474>
    6558:	00150513          	addi	a0,a0,1
    655c:	00357713          	andi	a4,a0,3
    6560:	00880813          	addi	a6,a6,8
    6564:	fe0716e3          	bne	a4,zero,6550 <_malloc_r+0x2bc>
    6568:	0037f713          	andi	a4,a5,3
    656c:	20071c63          	bne	a4,zero,6784 <_malloc_r+0x4f0>
    6570:	0049a703          	lw	a4,4(s3)
    6574:	fff34793          	xori	a5,t1,-1
    6578:	00f777b3          	and	a5,a4,a5
    657c:	d8f1ac23          	sw	a5,-616(gp) # 12648 <__malloc_av_+0x4>
    6580:	0049a703          	lw	a4,4(s3)
    6584:	00131313          	slli	t1,t1,0x1
    6588:	00676463          	bltu	a4,t1,6590 <_malloc_r+0x2fc>
    658c:	22031063          	bne	t1,zero,67ac <_malloc_r+0x518>
    6590:	0089ab83          	lw	s7,8(s3)
    6594:	004ba403          	lw	s0,4(s7)
    6598:	ffc47a93          	andi	s5,s0,-4
    659c:	009ae863          	bltu	s5,s1,65ac <_malloc_r+0x318>
    65a0:	409a8733          	sub	a4,s5,s1
    65a4:	00f00793          	addi	a5,zero,15
    65a8:	32e7cc63          	blt	a5,a4,68e0 <_malloc_r+0x64c>
    65ac:	1dc18793          	addi	a5,gp,476 # 12a8c <__malloc_top_pad>
    65b0:	1c818713          	addi	a4,gp,456 # 12a78 <__malloc_sbrk_base>
    65b4:	0007a403          	lw	s0,0(a5)
    65b8:	00072683          	lw	a3,0(a4)
    65bc:	fff00793          	addi	a5,zero,-1
    65c0:	015b8c33          	add	s8,s7,s5
    65c4:	00848433          	add	s0,s1,s0
    65c8:	00070a13          	addi	s4,a4,0
    65cc:	1ef69463          	bne	a3,a5,67b4 <_malloc_r+0x520>
    65d0:	01040413          	addi	s0,s0,16
    65d4:	00040593          	addi	a1,s0,0
    65d8:	00090513          	addi	a0,s2,0
    65dc:	0b5010ef          	jal	ra,7e90 <_sbrk_r>
    65e0:	fff00793          	addi	a5,zero,-1
    65e4:	00050b13          	addi	s6,a0,0
    65e8:	28f50263          	beq	a0,a5,686c <_malloc_r+0x5d8>
    65ec:	01857463          	bgeu	a0,s8,65f4 <_malloc_r+0x360>
    65f0:	273b9e63          	bne	s7,s3,686c <_malloc_r+0x5d8>
    65f4:	20018c93          	addi	s9,gp,512 # 12ab0 <__malloc_current_mallinfo>
    65f8:	000ca703          	lw	a4,0(s9)
    65fc:	00e40733          	add	a4,s0,a4
    6600:	20e1a023          	sw	a4,512(gp) # 12ab0 <__malloc_current_mallinfo>
    6604:	1d6c1463          	bne	s8,s6,67cc <_malloc_r+0x538>
    6608:	014c1793          	slli	a5,s8,0x14
    660c:	1c079063          	bne	a5,zero,67cc <_malloc_r+0x538>
    6610:	0089a783          	lw	a5,8(s3)
    6614:	008a8433          	add	s0,s5,s0
    6618:	00146413          	ori	s0,s0,1
    661c:	0087a223          	sw	s0,4(a5)
    6620:	1d818713          	addi	a4,gp,472 # 12a88 <__malloc_max_sbrked_mem>
    6624:	000ca783          	lw	a5,0(s9)
    6628:	00072703          	lw	a4,0(a4)
    662c:	00f77463          	bgeu	a4,a5,6634 <_malloc_r+0x3a0>
    6630:	1cf1ac23          	sw	a5,472(gp) # 12a88 <__malloc_max_sbrked_mem>
    6634:	1d418713          	addi	a4,gp,468 # 12a84 <__malloc_max_total_mem>
    6638:	00072703          	lw	a4,0(a4)
    663c:	22f77863          	bgeu	a4,a5,686c <_malloc_r+0x5d8>
    6640:	1cf1aa23          	sw	a5,468(gp) # 12a84 <__malloc_max_total_mem>
    6644:	2280006f          	jal	zero,686c <_malloc_r+0x5d8>
    6648:	00975613          	srli	a2,a4,0x9
    664c:	00400693          	addi	a3,zero,4
    6650:	04c6e663          	bltu	a3,a2,669c <_malloc_r+0x408>
    6654:	00675693          	srli	a3,a4,0x6
    6658:	03868693          	addi	a3,a3,56
    665c:	00168613          	addi	a2,a3,1
    6660:	00361613          	slli	a2,a2,0x3
    6664:	00c98633          	add	a2,s3,a2
    6668:	ff860513          	addi	a0,a2,-8
    666c:	00062603          	lw	a2,0(a2)
    6670:	08c51263          	bne	a0,a2,66f4 <_malloc_r+0x460>
    6674:	00100713          	addi	a4,zero,1
    6678:	4026d693          	srai	a3,a3,0x2
    667c:	00d716b3          	sll	a3,a4,a3
    6680:	0106e6b3          	or	a3,a3,a6
    6684:	d8d1ac23          	sw	a3,-616(gp) # 12648 <__malloc_av_+0x4>
    6688:	00a42623          	sw	a0,12(s0)
    668c:	00c42423          	sw	a2,8(s0)
    6690:	00852423          	sw	s0,8(a0)
    6694:	00862623          	sw	s0,12(a2)
    6698:	e75ff06f          	jal	zero,650c <_malloc_r+0x278>
    669c:	01400693          	addi	a3,zero,20
    66a0:	00c6e663          	bltu	a3,a2,66ac <_malloc_r+0x418>
    66a4:	05b60693          	addi	a3,a2,91
    66a8:	fb5ff06f          	jal	zero,665c <_malloc_r+0x3c8>
    66ac:	05400693          	addi	a3,zero,84
    66b0:	00c6e863          	bltu	a3,a2,66c0 <_malloc_r+0x42c>
    66b4:	00c75693          	srli	a3,a4,0xc
    66b8:	06e68693          	addi	a3,a3,110
    66bc:	fa1ff06f          	jal	zero,665c <_malloc_r+0x3c8>
    66c0:	15400693          	addi	a3,zero,340
    66c4:	00c6e863          	bltu	a3,a2,66d4 <_malloc_r+0x440>
    66c8:	00f75693          	srli	a3,a4,0xf
    66cc:	07768693          	addi	a3,a3,119
    66d0:	f8dff06f          	jal	zero,665c <_malloc_r+0x3c8>
    66d4:	55400513          	addi	a0,zero,1364
    66d8:	07e00693          	addi	a3,zero,126
    66dc:	f8c560e3          	bltu	a0,a2,665c <_malloc_r+0x3c8>
    66e0:	01275693          	srli	a3,a4,0x12
    66e4:	07c68693          	addi	a3,a3,124
    66e8:	f75ff06f          	jal	zero,665c <_malloc_r+0x3c8>
    66ec:	00862603          	lw	a2,8(a2)
    66f0:	00c50863          	beq	a0,a2,6700 <_malloc_r+0x46c>
    66f4:	00462683          	lw	a3,4(a2)
    66f8:	ffc6f693          	andi	a3,a3,-4
    66fc:	fed768e3          	bltu	a4,a3,66ec <_malloc_r+0x458>
    6700:	00c62503          	lw	a0,12(a2)
    6704:	f85ff06f          	jal	zero,6688 <_malloc_r+0x3f4>
    6708:	00442703          	lw	a4,4(s0)
    670c:	00c42603          	lw	a2,12(s0)
    6710:	ffc77713          	andi	a4,a4,-4
    6714:	409708b3          	sub	a7,a4,s1
    6718:	051e5063          	bge	t3,a7,6758 <_malloc_r+0x4c4>
    671c:	0014e793          	ori	a5,s1,1
    6720:	00f42223          	sw	a5,4(s0)
    6724:	00842783          	lw	a5,8(s0)
    6728:	009406b3          	add	a3,s0,s1
    672c:	00e40733          	add	a4,s0,a4
    6730:	00c7a623          	sw	a2,12(a5)
    6734:	00f62423          	sw	a5,8(a2)
    6738:	dad1a423          	sw	a3,-600(gp) # 12658 <__malloc_av_+0x14>
    673c:	dad1a223          	sw	a3,-604(gp) # 12654 <__malloc_av_+0x10>
    6740:	0018e793          	ori	a5,a7,1
    6744:	00b6a623          	sw	a1,12(a3)
    6748:	00b6a423          	sw	a1,8(a3)
    674c:	00f6a223          	sw	a5,4(a3)
    6750:	01172023          	sw	a7,0(a4)
    6754:	ccdff06f          	jal	zero,6420 <_malloc_r+0x18c>
    6758:	0208c263          	blt	a7,zero,677c <_malloc_r+0x4e8>
    675c:	00e40733          	add	a4,s0,a4
    6760:	00472783          	lw	a5,4(a4)
    6764:	0017e793          	ori	a5,a5,1
    6768:	00f72223          	sw	a5,4(a4)
    676c:	00842783          	lw	a5,8(s0)
    6770:	00c7a623          	sw	a2,12(a5)
    6774:	00f62423          	sw	a5,8(a2)
    6778:	ca9ff06f          	jal	zero,6420 <_malloc_r+0x18c>
    677c:	00060413          	addi	s0,a2,0
    6780:	dd5ff06f          	jal	zero,6554 <_malloc_r+0x2c0>
    6784:	ff868693          	addi	a3,a3,-8
    6788:	0086a703          	lw	a4,8(a3)
    678c:	fff78793          	addi	a5,a5,-1
    6790:	dcd70ce3          	beq	a4,a3,6568 <_malloc_r+0x2d4>
    6794:	dedff06f          	jal	zero,6580 <_malloc_r+0x2ec>
    6798:	00478793          	addi	a5,a5,4
    679c:	00131313          	slli	t1,t1,0x1
    67a0:	006776b3          	and	a3,a4,t1
    67a4:	fe068ae3          	beq	a3,zero,6798 <_malloc_r+0x504>
    67a8:	d99ff06f          	jal	zero,6540 <_malloc_r+0x2ac>
    67ac:	00050793          	addi	a5,a0,0
    67b0:	ff1ff06f          	jal	zero,67a0 <_malloc_r+0x50c>
    67b4:	00001737          	lui	a4,0x1
    67b8:	00f70713          	addi	a4,a4,15 # 100f <_vfprintf_r+0x147>
    67bc:	00e40433          	add	s0,s0,a4
    67c0:	fffff7b7          	lui	a5,0xfffff
    67c4:	00f47433          	and	s0,s0,a5
    67c8:	e0dff06f          	jal	zero,65d4 <_malloc_r+0x340>
    67cc:	000a2683          	lw	a3,0(s4)
    67d0:	fff00793          	addi	a5,zero,-1
    67d4:	0cf69063          	bne	a3,a5,6894 <_malloc_r+0x600>
    67d8:	1d61a423          	sw	s6,456(gp) # 12a78 <__malloc_sbrk_base>
    67dc:	007b7c13          	andi	s8,s6,7
    67e0:	00000793          	addi	a5,zero,0
    67e4:	000c0863          	beq	s8,zero,67f4 <_malloc_r+0x560>
    67e8:	00800793          	addi	a5,zero,8
    67ec:	418787b3          	sub	a5,a5,s8
    67f0:	00fb0b33          	add	s6,s6,a5
    67f4:	00001537          	lui	a0,0x1
    67f8:	00a78a33          	add	s4,a5,a0
    67fc:	008b0433          	add	s0,s6,s0
    6800:	fff50513          	addi	a0,a0,-1 # fff <_vfprintf_r+0x137>
    6804:	00a477b3          	and	a5,s0,a0
    6808:	40fa0a33          	sub	s4,s4,a5
    680c:	00aa7a33          	and	s4,s4,a0
    6810:	000a0593          	addi	a1,s4,0
    6814:	00090513          	addi	a0,s2,0
    6818:	678010ef          	jal	ra,7e90 <_sbrk_r>
    681c:	fff00793          	addi	a5,zero,-1
    6820:	00f51c63          	bne	a0,a5,6838 <_malloc_r+0x5a4>
    6824:	00040513          	addi	a0,s0,0
    6828:	000c0663          	beq	s8,zero,6834 <_malloc_r+0x5a0>
    682c:	ff8c0513          	addi	a0,s8,-8
    6830:	00a40533          	add	a0,s0,a0
    6834:	00000a13          	addi	s4,zero,0
    6838:	000ca783          	lw	a5,0(s9)
    683c:	41650533          	sub	a0,a0,s6
    6840:	014787b3          	add	a5,a5,s4
    6844:	01450a33          	add	s4,a0,s4
    6848:	20f1a023          	sw	a5,512(gp) # 12ab0 <__malloc_current_mallinfo>
    684c:	001a6a13          	ori	s4,s4,1
    6850:	d961ae23          	sw	s6,-612(gp) # 1264c <__malloc_av_+0x8>
    6854:	014b2223          	sw	s4,4(s6)
    6858:	dd3b84e3          	beq	s7,s3,6620 <_malloc_r+0x38c>
    685c:	00f00713          	addi	a4,zero,15
    6860:	05576263          	bltu	a4,s5,68a4 <_malloc_r+0x610>
    6864:	00100793          	addi	a5,zero,1
    6868:	00fb2223          	sw	a5,4(s6)
    686c:	0089a783          	lw	a5,8(s3)
    6870:	0047a783          	lw	a5,4(a5) # fffff004 <__heap_top+0xffeff004>
    6874:	ffc7f793          	andi	a5,a5,-4
    6878:	40978733          	sub	a4,a5,s1
    687c:	0097e663          	bltu	a5,s1,6888 <_malloc_r+0x5f4>
    6880:	00f00793          	addi	a5,zero,15
    6884:	04e7ce63          	blt	a5,a4,68e0 <_malloc_r+0x64c>
    6888:	00090513          	addi	a0,s2,0
    688c:	240000ef          	jal	ra,6acc <__malloc_unlock>
    6890:	a51ff06f          	jal	zero,62e0 <_malloc_r+0x4c>
    6894:	418b07b3          	sub	a5,s6,s8
    6898:	00e787b3          	add	a5,a5,a4
    689c:	20f1a023          	sw	a5,512(gp) # 12ab0 <__malloc_current_mallinfo>
    68a0:	f3dff06f          	jal	zero,67dc <_malloc_r+0x548>
    68a4:	004ba783          	lw	a5,4(s7)
    68a8:	ff4a8413          	addi	s0,s5,-12
    68ac:	ff847413          	andi	s0,s0,-8
    68b0:	0017f793          	andi	a5,a5,1
    68b4:	0087e7b3          	or	a5,a5,s0
    68b8:	00fba223          	sw	a5,4(s7)
    68bc:	00500693          	addi	a3,zero,5
    68c0:	008b87b3          	add	a5,s7,s0
    68c4:	00d7a223          	sw	a3,4(a5)
    68c8:	00d7a423          	sw	a3,8(a5)
    68cc:	d4877ae3          	bgeu	a4,s0,6620 <_malloc_r+0x38c>
    68d0:	008b8593          	addi	a1,s7,8
    68d4:	00090513          	addi	a0,s2,0
    68d8:	f95fc0ef          	jal	ra,386c <_free_r>
    68dc:	d45ff06f          	jal	zero,6620 <_malloc_r+0x38c>
    68e0:	0089a403          	lw	s0,8(s3)
    68e4:	0014e793          	ori	a5,s1,1
    68e8:	00f42223          	sw	a5,4(s0)
    68ec:	009407b3          	add	a5,s0,s1
    68f0:	d8f1ae23          	sw	a5,-612(gp) # 1264c <__malloc_av_+0x8>
    68f4:	a85ff06f          	jal	zero,6378 <_malloc_r+0xe4>

000068f8 <_mbtowc_r>:
    68f8:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    68fc:	0007a783          	lw	a5,0(a5)
    6900:	0347a783          	lw	a5,52(a5)
    6904:	00079463          	bne	a5,zero,690c <_mbtowc_r+0x14>
    6908:	c2818793          	addi	a5,gp,-984 # 124d8 <__global_locale>
    690c:	0e47a303          	lw	t1,228(a5)
    6910:	00030067          	jalr	zero,0(t1)

00006914 <__ascii_mbtowc>:
    6914:	02059a63          	bne	a1,zero,6948 <__ascii_mbtowc+0x34>
    6918:	ff010113          	addi	sp,sp,-16
    691c:	00c10593          	addi	a1,sp,12
    6920:	00000513          	addi	a0,zero,0
    6924:	00060e63          	beq	a2,zero,6940 <__ascii_mbtowc+0x2c>
    6928:	ffe00513          	addi	a0,zero,-2
    692c:	00068a63          	beq	a3,zero,6940 <__ascii_mbtowc+0x2c>
    6930:	00064783          	lbu	a5,0(a2)
    6934:	00f5a023          	sw	a5,0(a1)
    6938:	00064503          	lbu	a0,0(a2)
    693c:	00a03533          	sltu	a0,zero,a0
    6940:	01010113          	addi	sp,sp,16
    6944:	00008067          	jalr	zero,0(ra)
    6948:	00000513          	addi	a0,zero,0
    694c:	02060063          	beq	a2,zero,696c <__ascii_mbtowc+0x58>
    6950:	ffe00513          	addi	a0,zero,-2
    6954:	00068c63          	beq	a3,zero,696c <__ascii_mbtowc+0x58>
    6958:	00064783          	lbu	a5,0(a2)
    695c:	00f5a023          	sw	a5,0(a1)
    6960:	00064503          	lbu	a0,0(a2)
    6964:	00a03533          	sltu	a0,zero,a0
    6968:	00008067          	jalr	zero,0(ra)
    696c:	00008067          	jalr	zero,0(ra)

00006970 <memchr>:
    6970:	0ff5f593          	andi	a1,a1,255
    6974:	00c50633          	add	a2,a0,a2
    6978:	00c51663          	bne	a0,a2,6984 <memchr+0x14>
    697c:	00000513          	addi	a0,zero,0
    6980:	00008067          	jalr	zero,0(ra)
    6984:	00054783          	lbu	a5,0(a0)
    6988:	feb78ce3          	beq	a5,a1,6980 <memchr+0x10>
    698c:	00150513          	addi	a0,a0,1
    6990:	fe9ff06f          	jal	zero,6978 <memchr+0x8>

00006994 <memcpy>:
    6994:	00a5c7b3          	xor	a5,a1,a0
    6998:	0037f793          	andi	a5,a5,3
    699c:	00c50733          	add	a4,a0,a2
    69a0:	00079663          	bne	a5,zero,69ac <memcpy+0x18>
    69a4:	00300793          	addi	a5,zero,3
    69a8:	02c7e263          	bltu	a5,a2,69cc <memcpy+0x38>
    69ac:	00050793          	addi	a5,a0,0
    69b0:	0ae57c63          	bgeu	a0,a4,6a68 <memcpy+0xd4>
    69b4:	0005c683          	lbu	a3,0(a1)
    69b8:	00178793          	addi	a5,a5,1
    69bc:	00158593          	addi	a1,a1,1
    69c0:	fed78fa3          	sb	a3,-1(a5)
    69c4:	fee7e8e3          	bltu	a5,a4,69b4 <memcpy+0x20>
    69c8:	00008067          	jalr	zero,0(ra)
    69cc:	00357693          	andi	a3,a0,3
    69d0:	00050793          	addi	a5,a0,0
    69d4:	00068e63          	beq	a3,zero,69f0 <memcpy+0x5c>
    69d8:	0005c683          	lbu	a3,0(a1)
    69dc:	00178793          	addi	a5,a5,1
    69e0:	00158593          	addi	a1,a1,1
    69e4:	fed78fa3          	sb	a3,-1(a5)
    69e8:	0037f693          	andi	a3,a5,3
    69ec:	fe9ff06f          	jal	zero,69d4 <memcpy+0x40>
    69f0:	ffc77693          	andi	a3,a4,-4
    69f4:	fe068613          	addi	a2,a3,-32
    69f8:	06c7f463          	bgeu	a5,a2,6a60 <memcpy+0xcc>
    69fc:	0005a383          	lw	t2,0(a1)
    6a00:	0045a283          	lw	t0,4(a1)
    6a04:	0085af83          	lw	t6,8(a1)
    6a08:	00c5af03          	lw	t5,12(a1)
    6a0c:	0105ae83          	lw	t4,16(a1)
    6a10:	0145ae03          	lw	t3,20(a1)
    6a14:	0185a303          	lw	t1,24(a1)
    6a18:	01c5a883          	lw	a7,28(a1)
    6a1c:	02458593          	addi	a1,a1,36
    6a20:	0077a023          	sw	t2,0(a5)
    6a24:	ffc5a803          	lw	a6,-4(a1)
    6a28:	0057a223          	sw	t0,4(a5)
    6a2c:	01f7a423          	sw	t6,8(a5)
    6a30:	01e7a623          	sw	t5,12(a5)
    6a34:	01d7a823          	sw	t4,16(a5)
    6a38:	01c7aa23          	sw	t3,20(a5)
    6a3c:	0067ac23          	sw	t1,24(a5)
    6a40:	0117ae23          	sw	a7,28(a5)
    6a44:	02478793          	addi	a5,a5,36
    6a48:	ff07ae23          	sw	a6,-4(a5)
    6a4c:	fadff06f          	jal	zero,69f8 <memcpy+0x64>
    6a50:	0005a603          	lw	a2,0(a1)
    6a54:	00478793          	addi	a5,a5,4
    6a58:	00458593          	addi	a1,a1,4
    6a5c:	fec7ae23          	sw	a2,-4(a5)
    6a60:	fed7e8e3          	bltu	a5,a3,6a50 <memcpy+0xbc>
    6a64:	f4e7e8e3          	bltu	a5,a4,69b4 <memcpy+0x20>
    6a68:	00008067          	jalr	zero,0(ra)

00006a6c <memmove>:
    6a6c:	04a5fa63          	bgeu	a1,a0,6ac0 <memmove+0x54>
    6a70:	00c586b3          	add	a3,a1,a2
    6a74:	04d57663          	bgeu	a0,a3,6ac0 <memmove+0x54>
    6a78:	fff64593          	xori	a1,a2,-1
    6a7c:	00000793          	addi	a5,zero,0
    6a80:	fff78793          	addi	a5,a5,-1
    6a84:	00f59463          	bne	a1,a5,6a8c <memmove+0x20>
    6a88:	00008067          	jalr	zero,0(ra)
    6a8c:	00f68733          	add	a4,a3,a5
    6a90:	00074803          	lbu	a6,0(a4)
    6a94:	00c78733          	add	a4,a5,a2
    6a98:	00e50733          	add	a4,a0,a4
    6a9c:	01070023          	sb	a6,0(a4)
    6aa0:	fe1ff06f          	jal	zero,6a80 <memmove+0x14>
    6aa4:	00f58733          	add	a4,a1,a5
    6aa8:	00074683          	lbu	a3,0(a4)
    6aac:	00f50733          	add	a4,a0,a5
    6ab0:	00178793          	addi	a5,a5,1
    6ab4:	00d70023          	sb	a3,0(a4)
    6ab8:	fef616e3          	bne	a2,a5,6aa4 <memmove+0x38>
    6abc:	00008067          	jalr	zero,0(ra)
    6ac0:	00000793          	addi	a5,zero,0
    6ac4:	ff5ff06f          	jal	zero,6ab8 <memmove+0x4c>

00006ac8 <__malloc_lock>:
    6ac8:	00008067          	jalr	zero,0(ra)

00006acc <__malloc_unlock>:
    6acc:	00008067          	jalr	zero,0(ra)

00006ad0 <_Balloc>:
    6ad0:	04c52783          	lw	a5,76(a0)
    6ad4:	ff010113          	addi	sp,sp,-16
    6ad8:	00912223          	sw	s1,4(sp)
    6adc:	01212023          	sw	s2,0(sp)
    6ae0:	00112623          	sw	ra,12(sp)
    6ae4:	00812423          	sw	s0,8(sp)
    6ae8:	00050493          	addi	s1,a0,0
    6aec:	00058913          	addi	s2,a1,0
    6af0:	04078263          	beq	a5,zero,6b34 <_Balloc+0x64>
    6af4:	04c4a703          	lw	a4,76(s1)
    6af8:	00291793          	slli	a5,s2,0x2
    6afc:	00f707b3          	add	a5,a4,a5
    6b00:	0007a503          	lw	a0,0(a5)
    6b04:	06051063          	bne	a0,zero,6b64 <_Balloc+0x94>
    6b08:	00100413          	addi	s0,zero,1
    6b0c:	01241433          	sll	s0,s0,s2
    6b10:	00540613          	addi	a2,s0,5
    6b14:	00261613          	slli	a2,a2,0x2
    6b18:	00100593          	addi	a1,zero,1
    6b1c:	00048513          	addi	a0,s1,0
    6b20:	69c040ef          	jal	ra,b1bc <_calloc_r>
    6b24:	02050263          	beq	a0,zero,6b48 <_Balloc+0x78>
    6b28:	01252223          	sw	s2,4(a0)
    6b2c:	00852423          	sw	s0,8(a0)
    6b30:	03c0006f          	jal	zero,6b6c <_Balloc+0x9c>
    6b34:	02100613          	addi	a2,zero,33
    6b38:	00400593          	addi	a1,zero,4
    6b3c:	680040ef          	jal	ra,b1bc <_calloc_r>
    6b40:	04a4a623          	sw	a0,76(s1)
    6b44:	fa0518e3          	bne	a0,zero,6af4 <_Balloc+0x24>
    6b48:	00000513          	addi	a0,zero,0
    6b4c:	00c12083          	lw	ra,12(sp)
    6b50:	00812403          	lw	s0,8(sp)
    6b54:	00412483          	lw	s1,4(sp)
    6b58:	00012903          	lw	s2,0(sp)
    6b5c:	01010113          	addi	sp,sp,16
    6b60:	00008067          	jalr	zero,0(ra)
    6b64:	00052703          	lw	a4,0(a0)
    6b68:	00e7a023          	sw	a4,0(a5)
    6b6c:	00052823          	sw	zero,16(a0)
    6b70:	00052623          	sw	zero,12(a0)
    6b74:	fd9ff06f          	jal	zero,6b4c <_Balloc+0x7c>

00006b78 <_Bfree>:
    6b78:	02058063          	beq	a1,zero,6b98 <_Bfree+0x20>
    6b7c:	0045a783          	lw	a5,4(a1)
    6b80:	00279713          	slli	a4,a5,0x2
    6b84:	04c52783          	lw	a5,76(a0)
    6b88:	00e787b3          	add	a5,a5,a4
    6b8c:	0007a703          	lw	a4,0(a5)
    6b90:	00e5a023          	sw	a4,0(a1)
    6b94:	00b7a023          	sw	a1,0(a5)
    6b98:	00008067          	jalr	zero,0(ra)

00006b9c <__multadd>:
    6b9c:	fd010113          	addi	sp,sp,-48
    6ba0:	01312e23          	sw	s3,28(sp)
    6ba4:	00050993          	addi	s3,a0,0
    6ba8:	00010537          	lui	a0,0x10
    6bac:	02812423          	sw	s0,40(sp)
    6bb0:	02912223          	sw	s1,36(sp)
    6bb4:	00058413          	addi	s0,a1,0
    6bb8:	0105a483          	lw	s1,16(a1)
    6bbc:	02112623          	sw	ra,44(sp)
    6bc0:	03212023          	sw	s2,32(sp)
    6bc4:	01458593          	addi	a1,a1,20
    6bc8:	00000813          	addi	a6,zero,0
    6bcc:	fff50513          	addi	a0,a0,-1 # ffff <__subtf3+0xc8b>
    6bd0:	0005a783          	lw	a5,0(a1)
    6bd4:	00458593          	addi	a1,a1,4
    6bd8:	00180813          	addi	a6,a6,1
    6bdc:	00a7f733          	and	a4,a5,a0
    6be0:	02c70733          	mul	a4,a4,a2
    6be4:	0107d793          	srli	a5,a5,0x10
    6be8:	02c787b3          	mul	a5,a5,a2
    6bec:	00d70733          	add	a4,a4,a3
    6bf0:	01075693          	srli	a3,a4,0x10
    6bf4:	00a77733          	and	a4,a4,a0
    6bf8:	00d787b3          	add	a5,a5,a3
    6bfc:	0107d693          	srli	a3,a5,0x10
    6c00:	01079793          	slli	a5,a5,0x10
    6c04:	00e787b3          	add	a5,a5,a4
    6c08:	fef5ae23          	sw	a5,-4(a1)
    6c0c:	fc9842e3          	blt	a6,s1,6bd0 <__multadd+0x34>
    6c10:	06068463          	beq	a3,zero,6c78 <__multadd+0xdc>
    6c14:	00842783          	lw	a5,8(s0)
    6c18:	04f4c463          	blt	s1,a5,6c60 <__multadd+0xc4>
    6c1c:	00442583          	lw	a1,4(s0)
    6c20:	00098513          	addi	a0,s3,0
    6c24:	00d12623          	sw	a3,12(sp)
    6c28:	00158593          	addi	a1,a1,1
    6c2c:	ea5ff0ef          	jal	ra,6ad0 <_Balloc>
    6c30:	01042603          	lw	a2,16(s0)
    6c34:	00c40593          	addi	a1,s0,12
    6c38:	00050913          	addi	s2,a0,0
    6c3c:	00260613          	addi	a2,a2,2
    6c40:	00261613          	slli	a2,a2,0x2
    6c44:	00c50513          	addi	a0,a0,12
    6c48:	d4dff0ef          	jal	ra,6994 <memcpy>
    6c4c:	00040593          	addi	a1,s0,0
    6c50:	00098513          	addi	a0,s3,0
    6c54:	f25ff0ef          	jal	ra,6b78 <_Bfree>
    6c58:	00c12683          	lw	a3,12(sp)
    6c5c:	00090413          	addi	s0,s2,0
    6c60:	00448793          	addi	a5,s1,4
    6c64:	00279793          	slli	a5,a5,0x2
    6c68:	00f407b3          	add	a5,s0,a5
    6c6c:	00d7a223          	sw	a3,4(a5)
    6c70:	00148493          	addi	s1,s1,1
    6c74:	00942823          	sw	s1,16(s0)
    6c78:	00040513          	addi	a0,s0,0
    6c7c:	02c12083          	lw	ra,44(sp)
    6c80:	02812403          	lw	s0,40(sp)
    6c84:	02412483          	lw	s1,36(sp)
    6c88:	02012903          	lw	s2,32(sp)
    6c8c:	01c12983          	lw	s3,28(sp)
    6c90:	03010113          	addi	sp,sp,48
    6c94:	00008067          	jalr	zero,0(ra)

00006c98 <__s2b>:
    6c98:	fd010113          	addi	sp,sp,-48
    6c9c:	00868793          	addi	a5,a3,8
    6ca0:	01412c23          	sw	s4,24(sp)
    6ca4:	00068a13          	addi	s4,a3,0
    6ca8:	00900693          	addi	a3,zero,9
    6cac:	02812423          	sw	s0,40(sp)
    6cb0:	02912223          	sw	s1,36(sp)
    6cb4:	01312e23          	sw	s3,28(sp)
    6cb8:	00058413          	addi	s0,a1,0
    6cbc:	02d7c7b3          	div	a5,a5,a3
    6cc0:	02112623          	sw	ra,44(sp)
    6cc4:	03212023          	sw	s2,32(sp)
    6cc8:	01512a23          	sw	s5,20(sp)
    6ccc:	00050993          	addi	s3,a0,0
    6cd0:	00060493          	addi	s1,a2,0
    6cd4:	00100693          	addi	a3,zero,1
    6cd8:	00000593          	addi	a1,zero,0
    6cdc:	08f6c463          	blt	a3,a5,6d64 <__s2b+0xcc>
    6ce0:	00098513          	addi	a0,s3,0
    6ce4:	00e12623          	sw	a4,12(sp)
    6ce8:	de9ff0ef          	jal	ra,6ad0 <_Balloc>
    6cec:	00c12703          	lw	a4,12(sp)
    6cf0:	00100793          	addi	a5,zero,1
    6cf4:	00f52823          	sw	a5,16(a0)
    6cf8:	00e52a23          	sw	a4,20(a0)
    6cfc:	00900793          	addi	a5,zero,9
    6d00:	0697d863          	bge	a5,s1,6d70 <__s2b+0xd8>
    6d04:	00940a93          	addi	s5,s0,9
    6d08:	000a8913          	addi	s2,s5,0
    6d0c:	00940433          	add	s0,s0,s1
    6d10:	00190913          	addi	s2,s2,1
    6d14:	fff94683          	lbu	a3,-1(s2)
    6d18:	00050593          	addi	a1,a0,0
    6d1c:	00a00613          	addi	a2,zero,10
    6d20:	fd068693          	addi	a3,a3,-48
    6d24:	00098513          	addi	a0,s3,0
    6d28:	e75ff0ef          	jal	ra,6b9c <__multadd>
    6d2c:	fe8912e3          	bne	s2,s0,6d10 <__s2b+0x78>
    6d30:	ff848413          	addi	s0,s1,-8
    6d34:	008a8433          	add	s0,s5,s0
    6d38:	00048913          	addi	s2,s1,0
    6d3c:	05494063          	blt	s2,s4,6d7c <__s2b+0xe4>
    6d40:	02c12083          	lw	ra,44(sp)
    6d44:	02812403          	lw	s0,40(sp)
    6d48:	02412483          	lw	s1,36(sp)
    6d4c:	02012903          	lw	s2,32(sp)
    6d50:	01c12983          	lw	s3,28(sp)
    6d54:	01812a03          	lw	s4,24(sp)
    6d58:	01412a83          	lw	s5,20(sp)
    6d5c:	03010113          	addi	sp,sp,48
    6d60:	00008067          	jalr	zero,0(ra)
    6d64:	00169693          	slli	a3,a3,0x1
    6d68:	00158593          	addi	a1,a1,1
    6d6c:	f71ff06f          	jal	zero,6cdc <__s2b+0x44>
    6d70:	00a40413          	addi	s0,s0,10
    6d74:	00900493          	addi	s1,zero,9
    6d78:	fc1ff06f          	jal	zero,6d38 <__s2b+0xa0>
    6d7c:	409907b3          	sub	a5,s2,s1
    6d80:	00f407b3          	add	a5,s0,a5
    6d84:	0007c683          	lbu	a3,0(a5)
    6d88:	00050593          	addi	a1,a0,0
    6d8c:	00a00613          	addi	a2,zero,10
    6d90:	fd068693          	addi	a3,a3,-48
    6d94:	00098513          	addi	a0,s3,0
    6d98:	e05ff0ef          	jal	ra,6b9c <__multadd>
    6d9c:	00190913          	addi	s2,s2,1
    6da0:	f9dff06f          	jal	zero,6d3c <__s2b+0xa4>

00006da4 <__hi0bits>:
    6da4:	ffff0737          	lui	a4,0xffff0
    6da8:	00e57733          	and	a4,a0,a4
    6dac:	00050793          	addi	a5,a0,0
    6db0:	00000513          	addi	a0,zero,0
    6db4:	00071663          	bne	a4,zero,6dc0 <__hi0bits+0x1c>
    6db8:	01079793          	slli	a5,a5,0x10
    6dbc:	01000513          	addi	a0,zero,16
    6dc0:	ff000737          	lui	a4,0xff000
    6dc4:	00e7f733          	and	a4,a5,a4
    6dc8:	00071663          	bne	a4,zero,6dd4 <__hi0bits+0x30>
    6dcc:	00850513          	addi	a0,a0,8
    6dd0:	00879793          	slli	a5,a5,0x8
    6dd4:	f0000737          	lui	a4,0xf0000
    6dd8:	00e7f733          	and	a4,a5,a4
    6ddc:	00071663          	bne	a4,zero,6de8 <__hi0bits+0x44>
    6de0:	00450513          	addi	a0,a0,4
    6de4:	00479793          	slli	a5,a5,0x4
    6de8:	c0000737          	lui	a4,0xc0000
    6dec:	00e7f733          	and	a4,a5,a4
    6df0:	00071663          	bne	a4,zero,6dfc <__hi0bits+0x58>
    6df4:	00250513          	addi	a0,a0,2
    6df8:	00279793          	slli	a5,a5,0x2
    6dfc:	0007ca63          	blt	a5,zero,6e10 <__hi0bits+0x6c>
    6e00:	00179713          	slli	a4,a5,0x1
    6e04:	00150513          	addi	a0,a0,1
    6e08:	00074463          	blt	a4,zero,6e10 <__hi0bits+0x6c>
    6e0c:	02000513          	addi	a0,zero,32
    6e10:	00008067          	jalr	zero,0(ra)

00006e14 <__lo0bits>:
    6e14:	00052783          	lw	a5,0(a0)
    6e18:	0077f713          	andi	a4,a5,7
    6e1c:	02070e63          	beq	a4,zero,6e58 <__lo0bits+0x44>
    6e20:	0017f693          	andi	a3,a5,1
    6e24:	00000713          	addi	a4,zero,0
    6e28:	00069c63          	bne	a3,zero,6e40 <__lo0bits+0x2c>
    6e2c:	0027f713          	andi	a4,a5,2
    6e30:	00070c63          	beq	a4,zero,6e48 <__lo0bits+0x34>
    6e34:	0017d793          	srli	a5,a5,0x1
    6e38:	00f52023          	sw	a5,0(a0)
    6e3c:	00100713          	addi	a4,zero,1
    6e40:	00070513          	addi	a0,a4,0 # c0000000 <__heap_top+0xbff00000>
    6e44:	00008067          	jalr	zero,0(ra)
    6e48:	0027d793          	srli	a5,a5,0x2
    6e4c:	00f52023          	sw	a5,0(a0)
    6e50:	00200713          	addi	a4,zero,2
    6e54:	fedff06f          	jal	zero,6e40 <__lo0bits+0x2c>
    6e58:	01079693          	slli	a3,a5,0x10
    6e5c:	0106d693          	srli	a3,a3,0x10
    6e60:	00000713          	addi	a4,zero,0
    6e64:	00069663          	bne	a3,zero,6e70 <__lo0bits+0x5c>
    6e68:	0107d793          	srli	a5,a5,0x10
    6e6c:	01000713          	addi	a4,zero,16
    6e70:	0ff7f693          	andi	a3,a5,255
    6e74:	00069663          	bne	a3,zero,6e80 <__lo0bits+0x6c>
    6e78:	00870713          	addi	a4,a4,8
    6e7c:	0087d793          	srli	a5,a5,0x8
    6e80:	00f7f693          	andi	a3,a5,15
    6e84:	00069663          	bne	a3,zero,6e90 <__lo0bits+0x7c>
    6e88:	00470713          	addi	a4,a4,4
    6e8c:	0047d793          	srli	a5,a5,0x4
    6e90:	0037f693          	andi	a3,a5,3
    6e94:	00069663          	bne	a3,zero,6ea0 <__lo0bits+0x8c>
    6e98:	00270713          	addi	a4,a4,2
    6e9c:	0027d793          	srli	a5,a5,0x2
    6ea0:	0017f693          	andi	a3,a5,1
    6ea4:	00069863          	bne	a3,zero,6eb4 <__lo0bits+0xa0>
    6ea8:	0017d793          	srli	a5,a5,0x1
    6eac:	00170713          	addi	a4,a4,1
    6eb0:	00078663          	beq	a5,zero,6ebc <__lo0bits+0xa8>
    6eb4:	00f52023          	sw	a5,0(a0)
    6eb8:	f89ff06f          	jal	zero,6e40 <__lo0bits+0x2c>
    6ebc:	02000713          	addi	a4,zero,32
    6ec0:	f81ff06f          	jal	zero,6e40 <__lo0bits+0x2c>

00006ec4 <__i2b>:
    6ec4:	ff010113          	addi	sp,sp,-16
    6ec8:	00812423          	sw	s0,8(sp)
    6ecc:	00058413          	addi	s0,a1,0
    6ed0:	00100593          	addi	a1,zero,1
    6ed4:	00112623          	sw	ra,12(sp)
    6ed8:	bf9ff0ef          	jal	ra,6ad0 <_Balloc>
    6edc:	00852a23          	sw	s0,20(a0)
    6ee0:	00c12083          	lw	ra,12(sp)
    6ee4:	00812403          	lw	s0,8(sp)
    6ee8:	00100713          	addi	a4,zero,1
    6eec:	00e52823          	sw	a4,16(a0)
    6ef0:	01010113          	addi	sp,sp,16
    6ef4:	00008067          	jalr	zero,0(ra)

00006ef8 <__multiply>:
    6ef8:	0105a703          	lw	a4,16(a1)
    6efc:	01062783          	lw	a5,16(a2)
    6f00:	fd010113          	addi	sp,sp,-48
    6f04:	02912223          	sw	s1,36(sp)
    6f08:	02112623          	sw	ra,44(sp)
    6f0c:	02812423          	sw	s0,40(sp)
    6f10:	03212023          	sw	s2,32(sp)
    6f14:	01312e23          	sw	s3,28(sp)
    6f18:	00058493          	addi	s1,a1,0
    6f1c:	00f75663          	bge	a4,a5,6f28 <__multiply+0x30>
    6f20:	00060493          	addi	s1,a2,0
    6f24:	00058613          	addi	a2,a1,0
    6f28:	0104a983          	lw	s3,16(s1)
    6f2c:	01062903          	lw	s2,16(a2)
    6f30:	0084a783          	lw	a5,8(s1)
    6f34:	0044a583          	lw	a1,4(s1)
    6f38:	01298433          	add	s0,s3,s2
    6f3c:	0087d463          	bge	a5,s0,6f44 <__multiply+0x4c>
    6f40:	00158593          	addi	a1,a1,1
    6f44:	00c12623          	sw	a2,12(sp)
    6f48:	b89ff0ef          	jal	ra,6ad0 <_Balloc>
    6f4c:	00c12603          	lw	a2,12(sp)
    6f50:	01450813          	addi	a6,a0,20
    6f54:	00241313          	slli	t1,s0,0x2
    6f58:	00680333          	add	t1,a6,t1
    6f5c:	00080793          	addi	a5,a6,0
    6f60:	0467ec63          	bltu	a5,t1,6fb8 <__multiply+0xc0>
    6f64:	01448593          	addi	a1,s1,20
    6f68:	00299893          	slli	a7,s3,0x2
    6f6c:	01460613          	addi	a2,a2,20
    6f70:	00291e13          	slli	t3,s2,0x2
    6f74:	000106b7          	lui	a3,0x10
    6f78:	011588b3          	add	a7,a1,a7
    6f7c:	01c60e33          	add	t3,a2,t3
    6f80:	fff68693          	addi	a3,a3,-1 # ffff <__subtf3+0xc8b>
    6f84:	05c66063          	bltu	a2,t3,6fc4 <__multiply+0xcc>
    6f88:	00805863          	bge	zero,s0,6f98 <__multiply+0xa0>
    6f8c:	ffc30313          	addi	t1,t1,-4
    6f90:	00032783          	lw	a5,0(t1)
    6f94:	10078e63          	beq	a5,zero,70b0 <__multiply+0x1b8>
    6f98:	00852823          	sw	s0,16(a0)
    6f9c:	02c12083          	lw	ra,44(sp)
    6fa0:	02812403          	lw	s0,40(sp)
    6fa4:	02412483          	lw	s1,36(sp)
    6fa8:	02012903          	lw	s2,32(sp)
    6fac:	01c12983          	lw	s3,28(sp)
    6fb0:	03010113          	addi	sp,sp,48
    6fb4:	00008067          	jalr	zero,0(ra)
    6fb8:	0007a023          	sw	zero,0(a5)
    6fbc:	00478793          	addi	a5,a5,4
    6fc0:	fa1ff06f          	jal	zero,6f60 <__multiply+0x68>
    6fc4:	00062f83          	lw	t6,0(a2)
    6fc8:	00dfffb3          	and	t6,t6,a3
    6fcc:	060f8463          	beq	t6,zero,7034 <__multiply+0x13c>
    6fd0:	00080f13          	addi	t5,a6,0
    6fd4:	00058293          	addi	t0,a1,0
    6fd8:	00000493          	addi	s1,zero,0
    6fdc:	0002a703          	lw	a4,0(t0)
    6fe0:	000f2383          	lw	t2,0(t5)
    6fe4:	004f0f13          	addi	t5,t5,4
    6fe8:	00d77eb3          	and	t4,a4,a3
    6fec:	03fe8eb3          	mul	t4,t4,t6
    6ff0:	00d3f7b3          	and	a5,t2,a3
    6ff4:	0103d393          	srli	t2,t2,0x10
    6ff8:	00428293          	addi	t0,t0,4
    6ffc:	00fe8eb3          	add	t4,t4,a5
    7000:	01075793          	srli	a5,a4,0x10
    7004:	03f787b3          	mul	a5,a5,t6
    7008:	009e8eb3          	add	t4,t4,s1
    700c:	010ed713          	srli	a4,t4,0x10
    7010:	00defeb3          	and	t4,t4,a3
    7014:	007787b3          	add	a5,a5,t2
    7018:	00e787b3          	add	a5,a5,a4
    701c:	0107d493          	srli	s1,a5,0x10
    7020:	01079793          	slli	a5,a5,0x10
    7024:	01d7e7b3          	or	a5,a5,t4
    7028:	feff2e23          	sw	a5,-4(t5)
    702c:	fb12e8e3          	bltu	t0,a7,6fdc <__multiply+0xe4>
    7030:	009f2023          	sw	s1,0(t5)
    7034:	00265283          	lhu	t0,2(a2)
    7038:	06028663          	beq	t0,zero,70a4 <__multiply+0x1ac>
    703c:	00082783          	lw	a5,0(a6)
    7040:	00080e93          	addi	t4,a6,0
    7044:	00058f13          	addi	t5,a1,0
    7048:	00000f93          	addi	t6,zero,0
    704c:	000f2703          	lw	a4,0(t5)
    7050:	002ed383          	lhu	t2,2(t4)
    7054:	00d7f7b3          	and	a5,a5,a3
    7058:	00d77733          	and	a4,a4,a3
    705c:	02570733          	mul	a4,a4,t0
    7060:	004e8e93          	addi	t4,t4,4
    7064:	004f0f13          	addi	t5,t5,4
    7068:	00770733          	add	a4,a4,t2
    706c:	01f70733          	add	a4,a4,t6
    7070:	01071f93          	slli	t6,a4,0x10
    7074:	00ffe7b3          	or	a5,t6,a5
    7078:	fefeae23          	sw	a5,-4(t4)
    707c:	ffef5783          	lhu	a5,-2(t5)
    7080:	000eaf83          	lw	t6,0(t4)
    7084:	01075713          	srli	a4,a4,0x10
    7088:	025787b3          	mul	a5,a5,t0
    708c:	00dfffb3          	and	t6,t6,a3
    7090:	01f787b3          	add	a5,a5,t6
    7094:	00e787b3          	add	a5,a5,a4
    7098:	0107df93          	srli	t6,a5,0x10
    709c:	fb1f68e3          	bltu	t5,a7,704c <__multiply+0x154>
    70a0:	00fea023          	sw	a5,0(t4)
    70a4:	00460613          	addi	a2,a2,4
    70a8:	00480813          	addi	a6,a6,4
    70ac:	ed9ff06f          	jal	zero,6f84 <__multiply+0x8c>
    70b0:	fff40413          	addi	s0,s0,-1
    70b4:	ed5ff06f          	jal	zero,6f88 <__multiply+0x90>

000070b8 <__pow5mult>:
    70b8:	fe010113          	addi	sp,sp,-32
    70bc:	00912a23          	sw	s1,20(sp)
    70c0:	01212823          	sw	s2,16(sp)
    70c4:	01312623          	sw	s3,12(sp)
    70c8:	00112e23          	sw	ra,28(sp)
    70cc:	00812c23          	sw	s0,24(sp)
    70d0:	01412423          	sw	s4,8(sp)
    70d4:	00367793          	andi	a5,a2,3
    70d8:	00050913          	addi	s2,a0,0
    70dc:	00060493          	addi	s1,a2,0
    70e0:	00058993          	addi	s3,a1,0
    70e4:	02078463          	beq	a5,zero,710c <__pow5mult+0x54>
    70e8:	fff78793          	addi	a5,a5,-1
    70ec:	0000a717          	auipc	a4,0xa
    70f0:	6f470713          	addi	a4,a4,1780 # 117e0 <p05.3308>
    70f4:	00279793          	slli	a5,a5,0x2
    70f8:	00f707b3          	add	a5,a4,a5
    70fc:	0007a603          	lw	a2,0(a5)
    7100:	00000693          	addi	a3,zero,0
    7104:	a99ff0ef          	jal	ra,6b9c <__multadd>
    7108:	00050993          	addi	s3,a0,0
    710c:	4024d493          	srai	s1,s1,0x2
    7110:	08048063          	beq	s1,zero,7190 <__pow5mult+0xd8>
    7114:	04892403          	lw	s0,72(s2)
    7118:	00041e63          	bne	s0,zero,7134 <__pow5mult+0x7c>
    711c:	27100593          	addi	a1,zero,625
    7120:	00090513          	addi	a0,s2,0
    7124:	da1ff0ef          	jal	ra,6ec4 <__i2b>
    7128:	04a92423          	sw	a0,72(s2)
    712c:	00050413          	addi	s0,a0,0
    7130:	00052023          	sw	zero,0(a0)
    7134:	0014f793          	andi	a5,s1,1
    7138:	02078463          	beq	a5,zero,7160 <__pow5mult+0xa8>
    713c:	00098593          	addi	a1,s3,0
    7140:	00040613          	addi	a2,s0,0
    7144:	00090513          	addi	a0,s2,0
    7148:	db1ff0ef          	jal	ra,6ef8 <__multiply>
    714c:	00050a13          	addi	s4,a0,0
    7150:	00098593          	addi	a1,s3,0
    7154:	00090513          	addi	a0,s2,0
    7158:	a21ff0ef          	jal	ra,6b78 <_Bfree>
    715c:	000a0993          	addi	s3,s4,0
    7160:	4014d493          	srai	s1,s1,0x1
    7164:	02048663          	beq	s1,zero,7190 <__pow5mult+0xd8>
    7168:	00042503          	lw	a0,0(s0)
    716c:	00051e63          	bne	a0,zero,7188 <__pow5mult+0xd0>
    7170:	00040613          	addi	a2,s0,0
    7174:	00040593          	addi	a1,s0,0
    7178:	00090513          	addi	a0,s2,0
    717c:	d7dff0ef          	jal	ra,6ef8 <__multiply>
    7180:	00a42023          	sw	a0,0(s0)
    7184:	00052023          	sw	zero,0(a0)
    7188:	00050413          	addi	s0,a0,0
    718c:	fa9ff06f          	jal	zero,7134 <__pow5mult+0x7c>
    7190:	01c12083          	lw	ra,28(sp)
    7194:	01812403          	lw	s0,24(sp)
    7198:	00098513          	addi	a0,s3,0
    719c:	01412483          	lw	s1,20(sp)
    71a0:	01012903          	lw	s2,16(sp)
    71a4:	00c12983          	lw	s3,12(sp)
    71a8:	00812a03          	lw	s4,8(sp)
    71ac:	02010113          	addi	sp,sp,32
    71b0:	00008067          	jalr	zero,0(ra)

000071b4 <__lshift>:
    71b4:	fd010113          	addi	sp,sp,-48
    71b8:	02912223          	sw	s1,36(sp)
    71bc:	00058493          	addi	s1,a1,0
    71c0:	01312e23          	sw	s3,28(sp)
    71c4:	0104a983          	lw	s3,16(s1)
    71c8:	02812423          	sw	s0,40(sp)
    71cc:	0045a583          	lw	a1,4(a1)
    71d0:	40565413          	srai	s0,a2,0x5
    71d4:	0084a783          	lw	a5,8(s1)
    71d8:	013409b3          	add	s3,s0,s3
    71dc:	03212023          	sw	s2,32(sp)
    71e0:	01512a23          	sw	s5,20(sp)
    71e4:	02112623          	sw	ra,44(sp)
    71e8:	01412c23          	sw	s4,24(sp)
    71ec:	00050a93          	addi	s5,a0,0
    71f0:	00198913          	addi	s2,s3,1
    71f4:	0d27c663          	blt	a5,s2,72c0 <__lshift+0x10c>
    71f8:	000a8513          	addi	a0,s5,0
    71fc:	00c12623          	sw	a2,12(sp)
    7200:	8d1ff0ef          	jal	ra,6ad0 <_Balloc>
    7204:	00c12603          	lw	a2,12(sp)
    7208:	01450793          	addi	a5,a0,20
    720c:	00050a13          	addi	s4,a0,0
    7210:	00078693          	addi	a3,a5,0
    7214:	00000713          	addi	a4,zero,0
    7218:	00468693          	addi	a3,a3,4
    721c:	0a874863          	blt	a4,s0,72cc <__lshift+0x118>
    7220:	00045463          	bge	s0,zero,7228 <__lshift+0x74>
    7224:	00000413          	addi	s0,zero,0
    7228:	0104a683          	lw	a3,16(s1)
    722c:	00241413          	slli	s0,s0,0x2
    7230:	00878733          	add	a4,a5,s0
    7234:	00269693          	slli	a3,a3,0x2
    7238:	01448793          	addi	a5,s1,20
    723c:	01f67613          	andi	a2,a2,31
    7240:	00d786b3          	add	a3,a5,a3
    7244:	08060a63          	beq	a2,zero,72d8 <__lshift+0x124>
    7248:	02000813          	addi	a6,zero,32
    724c:	40c80833          	sub	a6,a6,a2
    7250:	00000593          	addi	a1,zero,0
    7254:	0007a503          	lw	a0,0(a5)
    7258:	00470713          	addi	a4,a4,4
    725c:	00478793          	addi	a5,a5,4
    7260:	00c51533          	sll	a0,a0,a2
    7264:	00b565b3          	or	a1,a0,a1
    7268:	feb72e23          	sw	a1,-4(a4)
    726c:	ffc7a583          	lw	a1,-4(a5)
    7270:	0105d5b3          	srl	a1,a1,a6
    7274:	fed7e0e3          	bltu	a5,a3,7254 <__lshift+0xa0>
    7278:	00b72023          	sw	a1,0(a4)
    727c:	00058463          	beq	a1,zero,7284 <__lshift+0xd0>
    7280:	00298913          	addi	s2,s3,2
    7284:	fff90913          	addi	s2,s2,-1
    7288:	012a2823          	sw	s2,16(s4)
    728c:	000a8513          	addi	a0,s5,0
    7290:	00048593          	addi	a1,s1,0
    7294:	8e5ff0ef          	jal	ra,6b78 <_Bfree>
    7298:	02c12083          	lw	ra,44(sp)
    729c:	02812403          	lw	s0,40(sp)
    72a0:	000a0513          	addi	a0,s4,0
    72a4:	02412483          	lw	s1,36(sp)
    72a8:	02012903          	lw	s2,32(sp)
    72ac:	01c12983          	lw	s3,28(sp)
    72b0:	01812a03          	lw	s4,24(sp)
    72b4:	01412a83          	lw	s5,20(sp)
    72b8:	03010113          	addi	sp,sp,48
    72bc:	00008067          	jalr	zero,0(ra)
    72c0:	00158593          	addi	a1,a1,1
    72c4:	00179793          	slli	a5,a5,0x1
    72c8:	f2dff06f          	jal	zero,71f4 <__lshift+0x40>
    72cc:	fe06ae23          	sw	zero,-4(a3)
    72d0:	00170713          	addi	a4,a4,1
    72d4:	f45ff06f          	jal	zero,7218 <__lshift+0x64>
    72d8:	00478793          	addi	a5,a5,4
    72dc:	ffc7a603          	lw	a2,-4(a5)
    72e0:	00470713          	addi	a4,a4,4
    72e4:	fec72e23          	sw	a2,-4(a4)
    72e8:	fed7e8e3          	bltu	a5,a3,72d8 <__lshift+0x124>
    72ec:	f99ff06f          	jal	zero,7284 <__lshift+0xd0>

000072f0 <__mcmp>:
    72f0:	01052783          	lw	a5,16(a0)
    72f4:	0105a703          	lw	a4,16(a1)
    72f8:	40e787b3          	sub	a5,a5,a4
    72fc:	02079c63          	bne	a5,zero,7334 <__mcmp+0x44>
    7300:	00271713          	slli	a4,a4,0x2
    7304:	01450513          	addi	a0,a0,20
    7308:	01458593          	addi	a1,a1,20
    730c:	00e506b3          	add	a3,a0,a4
    7310:	00e585b3          	add	a1,a1,a4
    7314:	ffc68693          	addi	a3,a3,-4
    7318:	ffc58593          	addi	a1,a1,-4
    731c:	0006a603          	lw	a2,0(a3)
    7320:	0005a703          	lw	a4,0(a1)
    7324:	00e60c63          	beq	a2,a4,733c <__mcmp+0x4c>
    7328:	fff00793          	addi	a5,zero,-1
    732c:	00e66463          	bltu	a2,a4,7334 <__mcmp+0x44>
    7330:	00100793          	addi	a5,zero,1
    7334:	00078513          	addi	a0,a5,0
    7338:	00008067          	jalr	zero,0(ra)
    733c:	fcd56ce3          	bltu	a0,a3,7314 <__mcmp+0x24>
    7340:	ff5ff06f          	jal	zero,7334 <__mcmp+0x44>

00007344 <__mdiff>:
    7344:	fe010113          	addi	sp,sp,-32
    7348:	00912a23          	sw	s1,20(sp)
    734c:	00058493          	addi	s1,a1,0
    7350:	01312623          	sw	s3,12(sp)
    7354:	00060593          	addi	a1,a2,0
    7358:	00050993          	addi	s3,a0,0
    735c:	00048513          	addi	a0,s1,0
    7360:	00812c23          	sw	s0,24(sp)
    7364:	00112e23          	sw	ra,28(sp)
    7368:	01212823          	sw	s2,16(sp)
    736c:	00060413          	addi	s0,a2,0
    7370:	f81ff0ef          	jal	ra,72f0 <__mcmp>
    7374:	02051c63          	bne	a0,zero,73ac <__mdiff+0x68>
    7378:	00000593          	addi	a1,zero,0
    737c:	00098513          	addi	a0,s3,0
    7380:	f50ff0ef          	jal	ra,6ad0 <_Balloc>
    7384:	00100793          	addi	a5,zero,1
    7388:	00f52823          	sw	a5,16(a0)
    738c:	00052a23          	sw	zero,20(a0)
    7390:	01c12083          	lw	ra,28(sp)
    7394:	01812403          	lw	s0,24(sp)
    7398:	01412483          	lw	s1,20(sp)
    739c:	01012903          	lw	s2,16(sp)
    73a0:	00c12983          	lw	s3,12(sp)
    73a4:	02010113          	addi	sp,sp,32
    73a8:	00008067          	jalr	zero,0(ra)
    73ac:	00100913          	addi	s2,zero,1
    73b0:	00054a63          	blt	a0,zero,73c4 <__mdiff+0x80>
    73b4:	00040793          	addi	a5,s0,0
    73b8:	00000913          	addi	s2,zero,0
    73bc:	00048413          	addi	s0,s1,0
    73c0:	00078493          	addi	s1,a5,0
    73c4:	00442583          	lw	a1,4(s0)
    73c8:	00098513          	addi	a0,s3,0
    73cc:	f04ff0ef          	jal	ra,6ad0 <_Balloc>
    73d0:	01042303          	lw	t1,16(s0)
    73d4:	0104a883          	lw	a7,16(s1)
    73d8:	01440613          	addi	a2,s0,20
    73dc:	00231e13          	slli	t3,t1,0x2
    73e0:	01448813          	addi	a6,s1,20
    73e4:	00289893          	slli	a7,a7,0x2
    73e8:	00010eb7          	lui	t4,0x10
    73ec:	01252623          	sw	s2,12(a0)
    73f0:	01c60e33          	add	t3,a2,t3
    73f4:	011808b3          	add	a7,a6,a7
    73f8:	01450693          	addi	a3,a0,20
    73fc:	00000f13          	addi	t5,zero,0
    7400:	fffe8e93          	addi	t4,t4,-1 # ffff <__subtf3+0xc8b>
    7404:	00062703          	lw	a4,0(a2)
    7408:	00082f83          	lw	t6,0(a6)
    740c:	00468693          	addi	a3,a3,4
    7410:	01d775b3          	and	a1,a4,t4
    7414:	01dff7b3          	and	a5,t6,t4
    7418:	01e585b3          	add	a1,a1,t5
    741c:	40f585b3          	sub	a1,a1,a5
    7420:	010fdf93          	srli	t6,t6,0x10
    7424:	01075793          	srli	a5,a4,0x10
    7428:	41f787b3          	sub	a5,a5,t6
    742c:	4105d713          	srai	a4,a1,0x10
    7430:	00e787b3          	add	a5,a5,a4
    7434:	4107df13          	srai	t5,a5,0x10
    7438:	01d5f5b3          	and	a1,a1,t4
    743c:	01079793          	slli	a5,a5,0x10
    7440:	00b7e7b3          	or	a5,a5,a1
    7444:	00480813          	addi	a6,a6,4
    7448:	fef6ae23          	sw	a5,-4(a3)
    744c:	00460613          	addi	a2,a2,4
    7450:	fb186ae3          	bltu	a6,a7,7404 <__mdiff+0xc0>
    7454:	000105b7          	lui	a1,0x10
    7458:	fff58593          	addi	a1,a1,-1 # ffff <__subtf3+0xc8b>
    745c:	01c66c63          	bltu	a2,t3,7474 <__mdiff+0x130>
    7460:	ffc68693          	addi	a3,a3,-4
    7464:	0006a783          	lw	a5,0(a3)
    7468:	04078263          	beq	a5,zero,74ac <__mdiff+0x168>
    746c:	00652823          	sw	t1,16(a0)
    7470:	f21ff06f          	jal	zero,7390 <__mdiff+0x4c>
    7474:	00062783          	lw	a5,0(a2)
    7478:	00468693          	addi	a3,a3,4
    747c:	00460613          	addi	a2,a2,4
    7480:	00b7f733          	and	a4,a5,a1
    7484:	01e70733          	add	a4,a4,t5
    7488:	41075813          	srai	a6,a4,0x10
    748c:	0107d793          	srli	a5,a5,0x10
    7490:	010787b3          	add	a5,a5,a6
    7494:	4107df13          	srai	t5,a5,0x10
    7498:	00b77733          	and	a4,a4,a1
    749c:	01079793          	slli	a5,a5,0x10
    74a0:	00e7e7b3          	or	a5,a5,a4
    74a4:	fef6ae23          	sw	a5,-4(a3)
    74a8:	fb5ff06f          	jal	zero,745c <__mdiff+0x118>
    74ac:	fff30313          	addi	t1,t1,-1
    74b0:	fb1ff06f          	jal	zero,7460 <__mdiff+0x11c>

000074b4 <__ulp>:
    74b4:	7ff007b7          	lui	a5,0x7ff00
    74b8:	00b7f5b3          	and	a1,a5,a1
    74bc:	fcc007b7          	lui	a5,0xfcc00
    74c0:	00f585b3          	add	a1,a1,a5
    74c4:	00b05863          	bge	zero,a1,74d4 <__ulp+0x20>
    74c8:	00000793          	addi	a5,zero,0
    74cc:	00078513          	addi	a0,a5,0 # fcc00000 <__heap_top+0xfcb00000>
    74d0:	00008067          	jalr	zero,0(ra)
    74d4:	40b005b3          	sub	a1,zero,a1
    74d8:	4145d793          	srai	a5,a1,0x14
    74dc:	01300713          	addi	a4,zero,19
    74e0:	00f74863          	blt	a4,a5,74f0 <__ulp+0x3c>
    74e4:	000805b7          	lui	a1,0x80
    74e8:	40f5d5b3          	sra	a1,a1,a5
    74ec:	fddff06f          	jal	zero,74c8 <__ulp+0x14>
    74f0:	fec78713          	addi	a4,a5,-20
    74f4:	01e00693          	addi	a3,zero,30
    74f8:	00000593          	addi	a1,zero,0
    74fc:	00100793          	addi	a5,zero,1
    7500:	fce6c6e3          	blt	a3,a4,74cc <__ulp+0x18>
    7504:	800007b7          	lui	a5,0x80000
    7508:	00e7d7b3          	srl	a5,a5,a4
    750c:	fc1ff06f          	jal	zero,74cc <__ulp+0x18>

00007510 <__b2d>:
    7510:	fd010113          	addi	sp,sp,-48
    7514:	02912223          	sw	s1,36(sp)
    7518:	01052483          	lw	s1,16(a0)
    751c:	01312e23          	sw	s3,28(sp)
    7520:	01450993          	addi	s3,a0,20
    7524:	00249493          	slli	s1,s1,0x2
    7528:	009984b3          	add	s1,s3,s1
    752c:	02812423          	sw	s0,40(sp)
    7530:	ffc4a403          	lw	s0,-4(s1)
    7534:	03212023          	sw	s2,32(sp)
    7538:	00b12623          	sw	a1,12(sp)
    753c:	00040513          	addi	a0,s0,0
    7540:	02112623          	sw	ra,44(sp)
    7544:	861ff0ef          	jal	ra,6da4 <__hi0bits>
    7548:	00c12583          	lw	a1,12(sp)
    754c:	02000793          	addi	a5,zero,32
    7550:	40a787b3          	sub	a5,a5,a0
    7554:	00f5a023          	sw	a5,0(a1) # 80000 <__preinit_array_end+0x6cf9c>
    7558:	00a00793          	addi	a5,zero,10
    755c:	ffc48913          	addi	s2,s1,-4
    7560:	04a7cc63          	blt	a5,a0,75b8 <__b2d+0xa8>
    7564:	00b00793          	addi	a5,zero,11
    7568:	40a787b3          	sub	a5,a5,a0
    756c:	3ff00737          	lui	a4,0x3ff00
    7570:	00f456b3          	srl	a3,s0,a5
    7574:	00e6e6b3          	or	a3,a3,a4
    7578:	00000713          	addi	a4,zero,0
    757c:	0129f463          	bgeu	s3,s2,7584 <__b2d+0x74>
    7580:	ff84a703          	lw	a4,-8(s1)
    7584:	01550513          	addi	a0,a0,21
    7588:	00a41533          	sll	a0,s0,a0
    758c:	00f757b3          	srl	a5,a4,a5
    7590:	00f567b3          	or	a5,a0,a5
    7594:	02c12083          	lw	ra,44(sp)
    7598:	02812403          	lw	s0,40(sp)
    759c:	02412483          	lw	s1,36(sp)
    75a0:	02012903          	lw	s2,32(sp)
    75a4:	01c12983          	lw	s3,28(sp)
    75a8:	00078513          	addi	a0,a5,0 # 80000000 <__heap_top+0x7ff00000>
    75ac:	00068593          	addi	a1,a3,0
    75b0:	03010113          	addi	sp,sp,48
    75b4:	00008067          	jalr	zero,0(ra)
    75b8:	00000793          	addi	a5,zero,0
    75bc:	0129f663          	bgeu	s3,s2,75c8 <__b2d+0xb8>
    75c0:	ff84a783          	lw	a5,-8(s1)
    75c4:	ff848913          	addi	s2,s1,-8
    75c8:	ff550513          	addi	a0,a0,-11
    75cc:	02050e63          	beq	a0,zero,7608 <__b2d+0xf8>
    75d0:	02000713          	addi	a4,zero,32
    75d4:	40a70633          	sub	a2,a4,a0
    75d8:	00c7d733          	srl	a4,a5,a2
    75dc:	00a41433          	sll	s0,s0,a0
    75e0:	00e46433          	or	s0,s0,a4
    75e4:	3ff006b7          	lui	a3,0x3ff00
    75e8:	00d466b3          	or	a3,s0,a3
    75ec:	00000713          	addi	a4,zero,0
    75f0:	0129f463          	bgeu	s3,s2,75f8 <__b2d+0xe8>
    75f4:	ffc92703          	lw	a4,-4(s2)
    75f8:	00a797b3          	sll	a5,a5,a0
    75fc:	00c75733          	srl	a4,a4,a2
    7600:	00e7e7b3          	or	a5,a5,a4
    7604:	f91ff06f          	jal	zero,7594 <__b2d+0x84>
    7608:	3ff006b7          	lui	a3,0x3ff00
    760c:	00d466b3          	or	a3,s0,a3
    7610:	f85ff06f          	jal	zero,7594 <__b2d+0x84>

00007614 <__d2b>:
    7614:	fd010113          	addi	sp,sp,-48
    7618:	02812423          	sw	s0,40(sp)
    761c:	00058413          	addi	s0,a1,0
    7620:	00100593          	addi	a1,zero,1
    7624:	02912223          	sw	s1,36(sp)
    7628:	03212023          	sw	s2,32(sp)
    762c:	00060493          	addi	s1,a2,0
    7630:	01312e23          	sw	s3,28(sp)
    7634:	01412c23          	sw	s4,24(sp)
    7638:	00070913          	addi	s2,a4,0 # 3ff00000 <__heap_top+0x3fe00000>
    763c:	02112623          	sw	ra,44(sp)
    7640:	00068a13          	addi	s4,a3,0 # 3ff00000 <__heap_top+0x3fe00000>
    7644:	c8cff0ef          	jal	ra,6ad0 <_Balloc>
    7648:	00100737          	lui	a4,0x100
    764c:	fff70793          	addi	a5,a4,-1 # fffff <__preinit_array_end+0xecf9b>
    7650:	0097f7b3          	and	a5,a5,s1
    7654:	0144d493          	srli	s1,s1,0x14
    7658:	7ff4f493          	andi	s1,s1,2047
    765c:	00050993          	addi	s3,a0,0
    7660:	08049a63          	bne	s1,zero,76f4 <__d2b+0xe0>
    7664:	00f12623          	sw	a5,12(sp)
    7668:	08040e63          	beq	s0,zero,7704 <__d2b+0xf0>
    766c:	00810513          	addi	a0,sp,8
    7670:	00812423          	sw	s0,8(sp)
    7674:	fa0ff0ef          	jal	ra,6e14 <__lo0bits>
    7678:	00812683          	lw	a3,8(sp)
    767c:	08050063          	beq	a0,zero,76fc <__d2b+0xe8>
    7680:	00c12703          	lw	a4,12(sp)
    7684:	02000793          	addi	a5,zero,32
    7688:	40a787b3          	sub	a5,a5,a0
    768c:	00f717b3          	sll	a5,a4,a5
    7690:	00d7e7b3          	or	a5,a5,a3
    7694:	00a75733          	srl	a4,a4,a0
    7698:	00f9aa23          	sw	a5,20(s3)
    769c:	00e12623          	sw	a4,12(sp)
    76a0:	00c12403          	lw	s0,12(sp)
    76a4:	0089ac23          	sw	s0,24(s3)
    76a8:	00803433          	sltu	s0,zero,s0
    76ac:	00140413          	addi	s0,s0,1
    76b0:	0089a823          	sw	s0,16(s3)
    76b4:	06048a63          	beq	s1,zero,7728 <__d2b+0x114>
    76b8:	bcd48493          	addi	s1,s1,-1075
    76bc:	00a484b3          	add	s1,s1,a0
    76c0:	03500793          	addi	a5,zero,53
    76c4:	009a2023          	sw	s1,0(s4)
    76c8:	40a78533          	sub	a0,a5,a0
    76cc:	00a92023          	sw	a0,0(s2)
    76d0:	02c12083          	lw	ra,44(sp)
    76d4:	02812403          	lw	s0,40(sp)
    76d8:	00098513          	addi	a0,s3,0
    76dc:	02412483          	lw	s1,36(sp)
    76e0:	02012903          	lw	s2,32(sp)
    76e4:	01c12983          	lw	s3,28(sp)
    76e8:	01812a03          	lw	s4,24(sp)
    76ec:	03010113          	addi	sp,sp,48
    76f0:	00008067          	jalr	zero,0(ra)
    76f4:	00e7e7b3          	or	a5,a5,a4
    76f8:	f6dff06f          	jal	zero,7664 <__d2b+0x50>
    76fc:	00d9aa23          	sw	a3,20(s3)
    7700:	fa1ff06f          	jal	zero,76a0 <__d2b+0x8c>
    7704:	00c10513          	addi	a0,sp,12
    7708:	f0cff0ef          	jal	ra,6e14 <__lo0bits>
    770c:	00c12783          	lw	a5,12(sp)
    7710:	02050513          	addi	a0,a0,32
    7714:	00100413          	addi	s0,zero,1
    7718:	00f9aa23          	sw	a5,20(s3)
    771c:	00100793          	addi	a5,zero,1
    7720:	00f9a823          	sw	a5,16(s3)
    7724:	f91ff06f          	jal	zero,76b4 <__d2b+0xa0>
    7728:	00241793          	slli	a5,s0,0x2
    772c:	bce50513          	addi	a0,a0,-1074
    7730:	00f987b3          	add	a5,s3,a5
    7734:	00aa2023          	sw	a0,0(s4)
    7738:	0107a503          	lw	a0,16(a5)
    773c:	00541413          	slli	s0,s0,0x5
    7740:	e64ff0ef          	jal	ra,6da4 <__hi0bits>
    7744:	40a40433          	sub	s0,s0,a0
    7748:	00892023          	sw	s0,0(s2)
    774c:	f85ff06f          	jal	zero,76d0 <__d2b+0xbc>

00007750 <__ratio>:
    7750:	fd010113          	addi	sp,sp,-48
    7754:	03212023          	sw	s2,32(sp)
    7758:	00058913          	addi	s2,a1,0
    775c:	00810593          	addi	a1,sp,8
    7760:	02112623          	sw	ra,44(sp)
    7764:	02812423          	sw	s0,40(sp)
    7768:	02912223          	sw	s1,36(sp)
    776c:	01312e23          	sw	s3,28(sp)
    7770:	01412c23          	sw	s4,24(sp)
    7774:	00050a13          	addi	s4,a0,0
    7778:	d99ff0ef          	jal	ra,7510 <__b2d>
    777c:	00050993          	addi	s3,a0,0
    7780:	00058493          	addi	s1,a1,0
    7784:	00058413          	addi	s0,a1,0
    7788:	00090513          	addi	a0,s2,0
    778c:	00c10593          	addi	a1,sp,12
    7790:	d81ff0ef          	jal	ra,7510 <__b2d>
    7794:	01092783          	lw	a5,16(s2)
    7798:	010a2703          	lw	a4,16(s4)
    779c:	00812683          	lw	a3,8(sp)
    77a0:	40f70733          	sub	a4,a4,a5
    77a4:	00c12783          	lw	a5,12(sp)
    77a8:	00571713          	slli	a4,a4,0x5
    77ac:	40f686b3          	sub	a3,a3,a5
    77b0:	00d707b3          	add	a5,a4,a3
    77b4:	04f05463          	bge	zero,a5,77fc <__ratio+0xac>
    77b8:	01479793          	slli	a5,a5,0x14
    77bc:	00058613          	addi	a2,a1,0
    77c0:	00978433          	add	s0,a5,s1
    77c4:	00060713          	addi	a4,a2,0
    77c8:	00040593          	addi	a1,s0,0
    77cc:	00050613          	addi	a2,a0,0
    77d0:	00070693          	addi	a3,a4,0
    77d4:	00098513          	addi	a0,s3,0
    77d8:	365050ef          	jal	ra,d33c <__divdf3>
    77dc:	02c12083          	lw	ra,44(sp)
    77e0:	02812403          	lw	s0,40(sp)
    77e4:	02412483          	lw	s1,36(sp)
    77e8:	02012903          	lw	s2,32(sp)
    77ec:	01c12983          	lw	s3,28(sp)
    77f0:	01812a03          	lw	s4,24(sp)
    77f4:	03010113          	addi	sp,sp,48
    77f8:	00008067          	jalr	zero,0(ra)
    77fc:	fff00737          	lui	a4,0xfff00
    7800:	02e787b3          	mul	a5,a5,a4
    7804:	00b78633          	add	a2,a5,a1
    7808:	fbdff06f          	jal	zero,77c4 <__ratio+0x74>

0000780c <_mprec_log10>:
    780c:	ff010113          	addi	sp,sp,-16
    7810:	00812423          	sw	s0,8(sp)
    7814:	00112623          	sw	ra,12(sp)
    7818:	01212223          	sw	s2,4(sp)
    781c:	01312023          	sw	s3,0(sp)
    7820:	01700793          	addi	a5,zero,23
    7824:	00050413          	addi	s0,a0,0
    7828:	02a7ca63          	blt	a5,a0,785c <_mprec_log10+0x50>
    782c:	00351413          	slli	s0,a0,0x3
    7830:	0000a797          	auipc	a5,0xa
    7834:	fb078793          	addi	a5,a5,-80 # 117e0 <p05.3308>
    7838:	00878433          	add	s0,a5,s0
    783c:	01042503          	lw	a0,16(s0)
    7840:	01442583          	lw	a1,20(s0)
    7844:	00c12083          	lw	ra,12(sp)
    7848:	00812403          	lw	s0,8(sp)
    784c:	00412903          	lw	s2,4(sp)
    7850:	00012983          	lw	s3,0(sp)
    7854:	01010113          	addi	sp,sp,16
    7858:	00008067          	jalr	zero,0(ra)
    785c:	0000b797          	auipc	a5,0xb
    7860:	1f478793          	addi	a5,a5,500 # 12a50 <__SDATA_BEGIN__>
    7864:	0007a503          	lw	a0,0(a5)
    7868:	0047a583          	lw	a1,4(a5)
    786c:	0000b797          	auipc	a5,0xb
    7870:	1ec78793          	addi	a5,a5,492 # 12a58 <__SDATA_BEGIN__+0x8>
    7874:	0007a903          	lw	s2,0(a5)
    7878:	0047a983          	lw	s3,4(a5)
    787c:	00090613          	addi	a2,s2,0
    7880:	00098693          	addi	a3,s3,0
    7884:	fff40413          	addi	s0,s0,-1
    7888:	1a0060ef          	jal	ra,da28 <__muldf3>
    788c:	fe0418e3          	bne	s0,zero,787c <_mprec_log10+0x70>
    7890:	fb5ff06f          	jal	zero,7844 <_mprec_log10+0x38>

00007894 <__copybits>:
    7894:	fff58793          	addi	a5,a1,-1
    7898:	01062703          	lw	a4,16(a2)
    789c:	4057d793          	srai	a5,a5,0x5
    78a0:	00178793          	addi	a5,a5,1
    78a4:	00279793          	slli	a5,a5,0x2
    78a8:	01460693          	addi	a3,a2,20
    78ac:	00271713          	slli	a4,a4,0x2
    78b0:	00f507b3          	add	a5,a0,a5
    78b4:	00e68733          	add	a4,a3,a4
    78b8:	00e6e663          	bltu	a3,a4,78c4 <__copybits+0x30>
    78bc:	00f56e63          	bltu	a0,a5,78d8 <__copybits+0x44>
    78c0:	00008067          	jalr	zero,0(ra)
    78c4:	00468693          	addi	a3,a3,4
    78c8:	ffc6a603          	lw	a2,-4(a3)
    78cc:	00450513          	addi	a0,a0,4
    78d0:	fec52e23          	sw	a2,-4(a0)
    78d4:	fe5ff06f          	jal	zero,78b8 <__copybits+0x24>
    78d8:	00450513          	addi	a0,a0,4
    78dc:	fe052e23          	sw	zero,-4(a0)
    78e0:	fddff06f          	jal	zero,78bc <__copybits+0x28>

000078e4 <__any_on>:
    78e4:	01052683          	lw	a3,16(a0)
    78e8:	4055d793          	srai	a5,a1,0x5
    78ec:	01450713          	addi	a4,a0,20
    78f0:	04f6c063          	blt	a3,a5,7930 <__any_on+0x4c>
    78f4:	02d7d463          	bge	a5,a3,791c <__any_on+0x38>
    78f8:	01f5f593          	andi	a1,a1,31
    78fc:	02058063          	beq	a1,zero,791c <__any_on+0x38>
    7900:	00279693          	slli	a3,a5,0x2
    7904:	00d706b3          	add	a3,a4,a3
    7908:	0006a603          	lw	a2,0(a3)
    790c:	00100513          	addi	a0,zero,1
    7910:	00b656b3          	srl	a3,a2,a1
    7914:	00b695b3          	sll	a1,a3,a1
    7918:	02b61863          	bne	a2,a1,7948 <__any_on+0x64>
    791c:	00279793          	slli	a5,a5,0x2
    7920:	00f707b3          	add	a5,a4,a5
    7924:	00f76a63          	bltu	a4,a5,7938 <__any_on+0x54>
    7928:	00000513          	addi	a0,zero,0
    792c:	00008067          	jalr	zero,0(ra)
    7930:	00068793          	addi	a5,a3,0
    7934:	fe9ff06f          	jal	zero,791c <__any_on+0x38>
    7938:	ffc78793          	addi	a5,a5,-4
    793c:	0007a683          	lw	a3,0(a5)
    7940:	fe0682e3          	beq	a3,zero,7924 <__any_on+0x40>
    7944:	00100513          	addi	a0,zero,1
    7948:	00008067          	jalr	zero,0(ra)

0000794c <_realloc_r>:
    794c:	fc010113          	addi	sp,sp,-64
    7950:	02812c23          	sw	s0,56(sp)
    7954:	02112e23          	sw	ra,60(sp)
    7958:	00058413          	addi	s0,a1,0
    795c:	02912a23          	sw	s1,52(sp)
    7960:	03212823          	sw	s2,48(sp)
    7964:	03312623          	sw	s3,44(sp)
    7968:	03412423          	sw	s4,40(sp)
    796c:	03512223          	sw	s5,36(sp)
    7970:	03612023          	sw	s6,32(sp)
    7974:	01712e23          	sw	s7,28(sp)
    7978:	00060593          	addi	a1,a2,0
    797c:	02041863          	bne	s0,zero,79ac <_realloc_r+0x60>
    7980:	03812403          	lw	s0,56(sp)
    7984:	03c12083          	lw	ra,60(sp)
    7988:	03412483          	lw	s1,52(sp)
    798c:	03012903          	lw	s2,48(sp)
    7990:	02c12983          	lw	s3,44(sp)
    7994:	02812a03          	lw	s4,40(sp)
    7998:	02412a83          	lw	s5,36(sp)
    799c:	02012b03          	lw	s6,32(sp)
    79a0:	01c12b83          	lw	s7,28(sp)
    79a4:	04010113          	addi	sp,sp,64
    79a8:	8edfe06f          	jal	zero,6294 <_malloc_r>
    79ac:	00050a93          	addi	s5,a0,0
    79b0:	00c12623          	sw	a2,12(sp)
    79b4:	914ff0ef          	jal	ra,6ac8 <__malloc_lock>
    79b8:	00c12583          	lw	a1,12(sp)
    79bc:	01600793          	addi	a5,zero,22
    79c0:	00b58993          	addi	s3,a1,11
    79c4:	0537f463          	bgeu	a5,s3,7a0c <_realloc_r+0xc0>
    79c8:	ff89fb13          	andi	s6,s3,-8
    79cc:	040b5263          	bge	s6,zero,7a10 <_realloc_r+0xc4>
    79d0:	00c00793          	addi	a5,zero,12
    79d4:	00faa023          	sw	a5,0(s5)
    79d8:	00000a13          	addi	s4,zero,0
    79dc:	03c12083          	lw	ra,60(sp)
    79e0:	03812403          	lw	s0,56(sp)
    79e4:	000a0513          	addi	a0,s4,0
    79e8:	03412483          	lw	s1,52(sp)
    79ec:	03012903          	lw	s2,48(sp)
    79f0:	02c12983          	lw	s3,44(sp)
    79f4:	02812a03          	lw	s4,40(sp)
    79f8:	02412a83          	lw	s5,36(sp)
    79fc:	02012b03          	lw	s6,32(sp)
    7a00:	01c12b83          	lw	s7,28(sp)
    7a04:	04010113          	addi	sp,sp,64
    7a08:	00008067          	jalr	zero,0(ra)
    7a0c:	01000b13          	addi	s6,zero,16
    7a10:	fcbb60e3          	bltu	s6,a1,79d0 <_realloc_r+0x84>
    7a14:	ffc42683          	lw	a3,-4(s0)
    7a18:	ff840b93          	addi	s7,s0,-8
    7a1c:	ffc6f913          	andi	s2,a3,-4
    7a20:	45695863          	bge	s2,s6,7e70 <_realloc_r+0x524>
    7a24:	d9418713          	addi	a4,gp,-620 # 12644 <__malloc_av_>
    7a28:	00872603          	lw	a2,8(a4) # fff00008 <__heap_top+0xffe00008>
    7a2c:	012b87b3          	add	a5,s7,s2
    7a30:	0047a703          	lw	a4,4(a5)
    7a34:	00f60c63          	beq	a2,a5,7a4c <_realloc_r+0x100>
    7a38:	ffe77513          	andi	a0,a4,-2
    7a3c:	00a78533          	add	a0,a5,a0
    7a40:	00452503          	lw	a0,4(a0)
    7a44:	00157513          	andi	a0,a0,1
    7a48:	06051463          	bne	a0,zero,7ab0 <_realloc_r+0x164>
    7a4c:	ffc77713          	andi	a4,a4,-4
    7a50:	00e909b3          	add	s3,s2,a4
    7a54:	04f61063          	bne	a2,a5,7a94 <_realloc_r+0x148>
    7a58:	010b0513          	addi	a0,s6,16
    7a5c:	04a9ce63          	blt	s3,a0,7ab8 <_realloc_r+0x16c>
    7a60:	016b8bb3          	add	s7,s7,s6
    7a64:	416989b3          	sub	s3,s3,s6
    7a68:	d971ae23          	sw	s7,-612(gp) # 1264c <__malloc_av_+0x8>
    7a6c:	0019e993          	ori	s3,s3,1
    7a70:	013ba223          	sw	s3,4(s7)
    7a74:	ffc42983          	lw	s3,-4(s0)
    7a78:	000a8513          	addi	a0,s5,0
    7a7c:	00040a13          	addi	s4,s0,0
    7a80:	0019f993          	andi	s3,s3,1
    7a84:	0169e9b3          	or	s3,s3,s6
    7a88:	ff342e23          	sw	s3,-4(s0)
    7a8c:	840ff0ef          	jal	ra,6acc <__malloc_unlock>
    7a90:	f4dff06f          	jal	zero,79dc <_realloc_r+0x90>
    7a94:	0369c263          	blt	s3,s6,7ab8 <_realloc_r+0x16c>
    7a98:	00c7a703          	lw	a4,12(a5)
    7a9c:	0087a783          	lw	a5,8(a5)
    7aa0:	00e7a623          	sw	a4,12(a5)
    7aa4:	00f72423          	sw	a5,8(a4)
    7aa8:	000b8493          	addi	s1,s7,0
    7aac:	1900006f          	jal	zero,7c3c <_realloc_r+0x2f0>
    7ab0:	00000713          	addi	a4,zero,0
    7ab4:	00000793          	addi	a5,zero,0
    7ab8:	0016f693          	andi	a3,a3,1
    7abc:	2c069863          	bne	a3,zero,7d8c <_realloc_r+0x440>
    7ac0:	ff842483          	lw	s1,-8(s0)
    7ac4:	409b84b3          	sub	s1,s7,s1
    7ac8:	0044aa03          	lw	s4,4(s1)
    7acc:	ffca7a13          	andi	s4,s4,-4
    7ad0:	012a0a33          	add	s4,s4,s2
    7ad4:	20078263          	beq	a5,zero,7cd8 <_realloc_r+0x38c>
    7ad8:	014709b3          	add	s3,a4,s4
    7adc:	0ef61663          	bne	a2,a5,7bc8 <_realloc_r+0x27c>
    7ae0:	010b0793          	addi	a5,s6,16
    7ae4:	1ef9ca63          	blt	s3,a5,7cd8 <_realloc_r+0x38c>
    7ae8:	0084a703          	lw	a4,8(s1)
    7aec:	00c4a783          	lw	a5,12(s1)
    7af0:	ffc90613          	addi	a2,s2,-4
    7af4:	00848a13          	addi	s4,s1,8
    7af8:	00f72623          	sw	a5,12(a4)
    7afc:	00e7a423          	sw	a4,8(a5)
    7b00:	02400713          	addi	a4,zero,36
    7b04:	0ac76a63          	bltu	a4,a2,7bb8 <_realloc_r+0x26c>
    7b08:	01300693          	addi	a3,zero,19
    7b0c:	000a0793          	addi	a5,s4,0
    7b10:	02c6f263          	bgeu	a3,a2,7b34 <_realloc_r+0x1e8>
    7b14:	00042783          	lw	a5,0(s0)
    7b18:	00f4a423          	sw	a5,8(s1)
    7b1c:	00442783          	lw	a5,4(s0)
    7b20:	00f4a623          	sw	a5,12(s1)
    7b24:	01b00793          	addi	a5,zero,27
    7b28:	04c7ea63          	bltu	a5,a2,7b7c <_realloc_r+0x230>
    7b2c:	00840413          	addi	s0,s0,8
    7b30:	01048793          	addi	a5,s1,16
    7b34:	00042703          	lw	a4,0(s0)
    7b38:	00e7a023          	sw	a4,0(a5)
    7b3c:	00442703          	lw	a4,4(s0)
    7b40:	00e7a223          	sw	a4,4(a5)
    7b44:	00842703          	lw	a4,8(s0)
    7b48:	00e7a423          	sw	a4,8(a5)
    7b4c:	016487b3          	add	a5,s1,s6
    7b50:	416989b3          	sub	s3,s3,s6
    7b54:	d8f1ae23          	sw	a5,-612(gp) # 1264c <__malloc_av_+0x8>
    7b58:	0019e993          	ori	s3,s3,1
    7b5c:	0137a223          	sw	s3,4(a5)
    7b60:	0044a783          	lw	a5,4(s1)
    7b64:	0017f793          	andi	a5,a5,1
    7b68:	0167e9b3          	or	s3,a5,s6
    7b6c:	0134a223          	sw	s3,4(s1)
    7b70:	000a8513          	addi	a0,s5,0
    7b74:	f59fe0ef          	jal	ra,6acc <__malloc_unlock>
    7b78:	e65ff06f          	jal	zero,79dc <_realloc_r+0x90>
    7b7c:	00842783          	lw	a5,8(s0)
    7b80:	00f4a823          	sw	a5,16(s1)
    7b84:	00c42783          	lw	a5,12(s0)
    7b88:	00f4aa23          	sw	a5,20(s1)
    7b8c:	00e60863          	beq	a2,a4,7b9c <_realloc_r+0x250>
    7b90:	01040413          	addi	s0,s0,16
    7b94:	01848793          	addi	a5,s1,24
    7b98:	f9dff06f          	jal	zero,7b34 <_realloc_r+0x1e8>
    7b9c:	01042783          	lw	a5,16(s0)
    7ba0:	01840413          	addi	s0,s0,24
    7ba4:	00f4ac23          	sw	a5,24(s1)
    7ba8:	ffc42703          	lw	a4,-4(s0)
    7bac:	02048793          	addi	a5,s1,32
    7bb0:	00e4ae23          	sw	a4,28(s1)
    7bb4:	f81ff06f          	jal	zero,7b34 <_realloc_r+0x1e8>
    7bb8:	00040593          	addi	a1,s0,0
    7bbc:	000a0513          	addi	a0,s4,0
    7bc0:	eadfe0ef          	jal	ra,6a6c <memmove>
    7bc4:	f89ff06f          	jal	zero,7b4c <_realloc_r+0x200>
    7bc8:	1169c863          	blt	s3,s6,7cd8 <_realloc_r+0x38c>
    7bcc:	00c7a703          	lw	a4,12(a5)
    7bd0:	0087a783          	lw	a5,8(a5)
    7bd4:	ffc90613          	addi	a2,s2,-4
    7bd8:	00848513          	addi	a0,s1,8
    7bdc:	00e7a623          	sw	a4,12(a5)
    7be0:	00f72423          	sw	a5,8(a4)
    7be4:	0084a703          	lw	a4,8(s1)
    7be8:	00c4a783          	lw	a5,12(s1)
    7bec:	00f72623          	sw	a5,12(a4)
    7bf0:	00e7a423          	sw	a4,8(a5)
    7bf4:	02400793          	addi	a5,zero,36
    7bf8:	0cc7ea63          	bltu	a5,a2,7ccc <_realloc_r+0x380>
    7bfc:	01300713          	addi	a4,zero,19
    7c00:	02c77263          	bgeu	a4,a2,7c24 <_realloc_r+0x2d8>
    7c04:	00042703          	lw	a4,0(s0)
    7c08:	00e4a423          	sw	a4,8(s1)
    7c0c:	00442703          	lw	a4,4(s0)
    7c10:	00e4a623          	sw	a4,12(s1)
    7c14:	01b00713          	addi	a4,zero,27
    7c18:	06c76c63          	bltu	a4,a2,7c90 <_realloc_r+0x344>
    7c1c:	00840413          	addi	s0,s0,8
    7c20:	01048513          	addi	a0,s1,16
    7c24:	00042783          	lw	a5,0(s0)
    7c28:	00f52023          	sw	a5,0(a0)
    7c2c:	00442783          	lw	a5,4(s0)
    7c30:	00f52223          	sw	a5,4(a0)
    7c34:	00842783          	lw	a5,8(s0)
    7c38:	00f52423          	sw	a5,8(a0)
    7c3c:	0044a703          	lw	a4,4(s1)
    7c40:	416986b3          	sub	a3,s3,s6
    7c44:	00f00613          	addi	a2,zero,15
    7c48:	00177713          	andi	a4,a4,1
    7c4c:	013487b3          	add	a5,s1,s3
    7c50:	22d67463          	bgeu	a2,a3,7e78 <_realloc_r+0x52c>
    7c54:	00eb69b3          	or	s3,s6,a4
    7c58:	0134a223          	sw	s3,4(s1)
    7c5c:	016485b3          	add	a1,s1,s6
    7c60:	0016e693          	ori	a3,a3,1
    7c64:	00d5a223          	sw	a3,4(a1)
    7c68:	0047a703          	lw	a4,4(a5)
    7c6c:	00858593          	addi	a1,a1,8
    7c70:	000a8513          	addi	a0,s5,0
    7c74:	00176713          	ori	a4,a4,1
    7c78:	00e7a223          	sw	a4,4(a5)
    7c7c:	bf1fb0ef          	jal	ra,386c <_free_r>
    7c80:	000a8513          	addi	a0,s5,0
    7c84:	e49fe0ef          	jal	ra,6acc <__malloc_unlock>
    7c88:	00848a13          	addi	s4,s1,8
    7c8c:	d51ff06f          	jal	zero,79dc <_realloc_r+0x90>
    7c90:	00842703          	lw	a4,8(s0)
    7c94:	00e4a823          	sw	a4,16(s1)
    7c98:	00c42703          	lw	a4,12(s0)
    7c9c:	00e4aa23          	sw	a4,20(s1)
    7ca0:	00f60863          	beq	a2,a5,7cb0 <_realloc_r+0x364>
    7ca4:	01040413          	addi	s0,s0,16
    7ca8:	01848513          	addi	a0,s1,24
    7cac:	f79ff06f          	jal	zero,7c24 <_realloc_r+0x2d8>
    7cb0:	01042783          	lw	a5,16(s0)
    7cb4:	02048513          	addi	a0,s1,32
    7cb8:	01840413          	addi	s0,s0,24
    7cbc:	00f4ac23          	sw	a5,24(s1)
    7cc0:	ffc42783          	lw	a5,-4(s0)
    7cc4:	00f4ae23          	sw	a5,28(s1)
    7cc8:	f5dff06f          	jal	zero,7c24 <_realloc_r+0x2d8>
    7ccc:	00040593          	addi	a1,s0,0
    7cd0:	d9dfe0ef          	jal	ra,6a6c <memmove>
    7cd4:	f69ff06f          	jal	zero,7c3c <_realloc_r+0x2f0>
    7cd8:	0b6a4a63          	blt	s4,s6,7d8c <_realloc_r+0x440>
    7cdc:	00c4a783          	lw	a5,12(s1)
    7ce0:	0084a703          	lw	a4,8(s1)
    7ce4:	ffc90613          	addi	a2,s2,-4
    7ce8:	00848513          	addi	a0,s1,8
    7cec:	00f72623          	sw	a5,12(a4)
    7cf0:	00e7a423          	sw	a4,8(a5)
    7cf4:	02400793          	addi	a5,zero,36
    7cf8:	08c7e463          	bltu	a5,a2,7d80 <_realloc_r+0x434>
    7cfc:	01300713          	addi	a4,zero,19
    7d00:	02c77263          	bgeu	a4,a2,7d24 <_realloc_r+0x3d8>
    7d04:	00042703          	lw	a4,0(s0)
    7d08:	00e4a423          	sw	a4,8(s1)
    7d0c:	00442703          	lw	a4,4(s0)
    7d10:	00e4a623          	sw	a4,12(s1)
    7d14:	01b00713          	addi	a4,zero,27
    7d18:	02c76663          	bltu	a4,a2,7d44 <_realloc_r+0x3f8>
    7d1c:	00840413          	addi	s0,s0,8
    7d20:	01048513          	addi	a0,s1,16
    7d24:	00042783          	lw	a5,0(s0)
    7d28:	00f52023          	sw	a5,0(a0)
    7d2c:	00442783          	lw	a5,4(s0)
    7d30:	00f52223          	sw	a5,4(a0)
    7d34:	00842783          	lw	a5,8(s0)
    7d38:	00f52423          	sw	a5,8(a0)
    7d3c:	000a0993          	addi	s3,s4,0
    7d40:	efdff06f          	jal	zero,7c3c <_realloc_r+0x2f0>
    7d44:	00842703          	lw	a4,8(s0)
    7d48:	00e4a823          	sw	a4,16(s1)
    7d4c:	00c42703          	lw	a4,12(s0)
    7d50:	00e4aa23          	sw	a4,20(s1)
    7d54:	00f60863          	beq	a2,a5,7d64 <_realloc_r+0x418>
    7d58:	01040413          	addi	s0,s0,16
    7d5c:	01848513          	addi	a0,s1,24
    7d60:	fc5ff06f          	jal	zero,7d24 <_realloc_r+0x3d8>
    7d64:	01042783          	lw	a5,16(s0)
    7d68:	02048513          	addi	a0,s1,32
    7d6c:	01840413          	addi	s0,s0,24
    7d70:	00f4ac23          	sw	a5,24(s1)
    7d74:	ffc42783          	lw	a5,-4(s0)
    7d78:	00f4ae23          	sw	a5,28(s1)
    7d7c:	fa9ff06f          	jal	zero,7d24 <_realloc_r+0x3d8>
    7d80:	00040593          	addi	a1,s0,0
    7d84:	ce9fe0ef          	jal	ra,6a6c <memmove>
    7d88:	fb5ff06f          	jal	zero,7d3c <_realloc_r+0x3f0>
    7d8c:	000a8513          	addi	a0,s5,0
    7d90:	d04fe0ef          	jal	ra,6294 <_malloc_r>
    7d94:	00050a13          	addi	s4,a0,0
    7d98:	dc050ce3          	beq	a0,zero,7b70 <_realloc_r+0x224>
    7d9c:	ffc42783          	lw	a5,-4(s0)
    7da0:	ff850713          	addi	a4,a0,-8
    7da4:	ffe7f793          	andi	a5,a5,-2
    7da8:	00fb87b3          	add	a5,s7,a5
    7dac:	00e79a63          	bne	a5,a4,7dc0 <_realloc_r+0x474>
    7db0:	ffc52983          	lw	s3,-4(a0)
    7db4:	ffc9f993          	andi	s3,s3,-4
    7db8:	012989b3          	add	s3,s3,s2
    7dbc:	cedff06f          	jal	zero,7aa8 <_realloc_r+0x15c>
    7dc0:	ffc90613          	addi	a2,s2,-4
    7dc4:	02400793          	addi	a5,zero,36
    7dc8:	08c7ee63          	bltu	a5,a2,7e64 <_realloc_r+0x518>
    7dcc:	01300713          	addi	a4,zero,19
    7dd0:	08c77463          	bgeu	a4,a2,7e58 <_realloc_r+0x50c>
    7dd4:	00042703          	lw	a4,0(s0)
    7dd8:	00e52023          	sw	a4,0(a0)
    7ddc:	00442703          	lw	a4,4(s0)
    7de0:	00e52223          	sw	a4,4(a0)
    7de4:	01b00713          	addi	a4,zero,27
    7de8:	02c76a63          	bltu	a4,a2,7e1c <_realloc_r+0x4d0>
    7dec:	00840713          	addi	a4,s0,8
    7df0:	00850793          	addi	a5,a0,8
    7df4:	00072683          	lw	a3,0(a4)
    7df8:	00d7a023          	sw	a3,0(a5)
    7dfc:	00472683          	lw	a3,4(a4)
    7e00:	00d7a223          	sw	a3,4(a5)
    7e04:	00872703          	lw	a4,8(a4)
    7e08:	00e7a423          	sw	a4,8(a5)
    7e0c:	00040593          	addi	a1,s0,0
    7e10:	000a8513          	addi	a0,s5,0
    7e14:	a59fb0ef          	jal	ra,386c <_free_r>
    7e18:	d59ff06f          	jal	zero,7b70 <_realloc_r+0x224>
    7e1c:	00842703          	lw	a4,8(s0)
    7e20:	00e52423          	sw	a4,8(a0)
    7e24:	00c42703          	lw	a4,12(s0)
    7e28:	00e52623          	sw	a4,12(a0)
    7e2c:	00f60863          	beq	a2,a5,7e3c <_realloc_r+0x4f0>
    7e30:	01040713          	addi	a4,s0,16
    7e34:	01050793          	addi	a5,a0,16
    7e38:	fbdff06f          	jal	zero,7df4 <_realloc_r+0x4a8>
    7e3c:	01042783          	lw	a5,16(s0)
    7e40:	01840713          	addi	a4,s0,24
    7e44:	00f52823          	sw	a5,16(a0)
    7e48:	01442683          	lw	a3,20(s0)
    7e4c:	01850793          	addi	a5,a0,24
    7e50:	00d52a23          	sw	a3,20(a0)
    7e54:	fa1ff06f          	jal	zero,7df4 <_realloc_r+0x4a8>
    7e58:	00050793          	addi	a5,a0,0
    7e5c:	00040713          	addi	a4,s0,0
    7e60:	f95ff06f          	jal	zero,7df4 <_realloc_r+0x4a8>
    7e64:	00040593          	addi	a1,s0,0
    7e68:	c05fe0ef          	jal	ra,6a6c <memmove>
    7e6c:	fa1ff06f          	jal	zero,7e0c <_realloc_r+0x4c0>
    7e70:	00090993          	addi	s3,s2,0
    7e74:	c35ff06f          	jal	zero,7aa8 <_realloc_r+0x15c>
    7e78:	00e9e9b3          	or	s3,s3,a4
    7e7c:	0134a223          	sw	s3,4(s1)
    7e80:	0047a703          	lw	a4,4(a5)
    7e84:	00176713          	ori	a4,a4,1
    7e88:	00e7a223          	sw	a4,4(a5)
    7e8c:	df5ff06f          	jal	zero,7c80 <_realloc_r+0x334>

00007e90 <_sbrk_r>:
    7e90:	ff010113          	addi	sp,sp,-16
    7e94:	00812423          	sw	s0,8(sp)
    7e98:	00050413          	addi	s0,a0,0
    7e9c:	00058513          	addi	a0,a1,0
    7ea0:	2201a423          	sw	zero,552(gp) # 12ad8 <errno>
    7ea4:	00112623          	sw	ra,12(sp)
    7ea8:	2a9040ef          	jal	ra,c950 <_sbrk>
    7eac:	fff00793          	addi	a5,zero,-1
    7eb0:	00f51a63          	bne	a0,a5,7ec4 <_sbrk_r+0x34>
    7eb4:	22818793          	addi	a5,gp,552 # 12ad8 <errno>
    7eb8:	0007a783          	lw	a5,0(a5)
    7ebc:	00078463          	beq	a5,zero,7ec4 <_sbrk_r+0x34>
    7ec0:	00f42023          	sw	a5,0(s0)
    7ec4:	00c12083          	lw	ra,12(sp)
    7ec8:	00812403          	lw	s0,8(sp)
    7ecc:	01010113          	addi	sp,sp,16
    7ed0:	00008067          	jalr	zero,0(ra)

00007ed4 <frexp>:
    7ed4:	ff010113          	addi	sp,sp,-16
    7ed8:	00912223          	sw	s1,4(sp)
    7edc:	800004b7          	lui	s1,0x80000
    7ee0:	00812423          	sw	s0,8(sp)
    7ee4:	00112623          	sw	ra,12(sp)
    7ee8:	fff4c493          	xori	s1,s1,-1
    7eec:	00b4f733          	and	a4,s1,a1
    7ef0:	00062023          	sw	zero,0(a2)
    7ef4:	7ff00837          	lui	a6,0x7ff00
    7ef8:	00050693          	addi	a3,a0,0
    7efc:	00058793          	addi	a5,a1,0
    7f00:	00060413          	addi	s0,a2,0
    7f04:	07075463          	bge	a4,a6,7f6c <frexp+0x98>
    7f08:	00a768b3          	or	a7,a4,a0
    7f0c:	06088063          	beq	a7,zero,7f6c <frexp+0x98>
    7f10:	0105f833          	and	a6,a1,a6
    7f14:	00058613          	addi	a2,a1,0
    7f18:	02081663          	bne	a6,zero,7f44 <frexp+0x70>
    7f1c:	0000b797          	auipc	a5,0xb
    7f20:	b4478793          	addi	a5,a5,-1212 # 12a60 <__SDATA_BEGIN__+0x10>
    7f24:	0007a603          	lw	a2,0(a5)
    7f28:	0047a683          	lw	a3,4(a5)
    7f2c:	2fd050ef          	jal	ra,da28 <__muldf3>
    7f30:	fca00793          	addi	a5,zero,-54
    7f34:	00050693          	addi	a3,a0,0
    7f38:	00058613          	addi	a2,a1,0
    7f3c:	00b4f733          	and	a4,s1,a1
    7f40:	00f42023          	sw	a5,0(s0)
    7f44:	00042783          	lw	a5,0(s0)
    7f48:	41475713          	srai	a4,a4,0x14
    7f4c:	c0270713          	addi	a4,a4,-1022
    7f50:	00e78733          	add	a4,a5,a4
    7f54:	801007b7          	lui	a5,0x80100
    7f58:	fff78793          	addi	a5,a5,-1 # 800fffff <__heap_top+0x7fffffff>
    7f5c:	00f67633          	and	a2,a2,a5
    7f60:	3fe007b7          	lui	a5,0x3fe00
    7f64:	00e42023          	sw	a4,0(s0)
    7f68:	00f667b3          	or	a5,a2,a5
    7f6c:	00c12083          	lw	ra,12(sp)
    7f70:	00812403          	lw	s0,8(sp)
    7f74:	00412483          	lw	s1,4(sp)
    7f78:	00068513          	addi	a0,a3,0
    7f7c:	00078593          	addi	a1,a5,0 # 3fe00000 <__heap_top+0x3fd00000>
    7f80:	01010113          	addi	sp,sp,16
    7f84:	00008067          	jalr	zero,0(ra)

00007f88 <_sprintf_r>:
    7f88:	f6010113          	addi	sp,sp,-160
    7f8c:	08f12a23          	sw	a5,148(sp)
    7f90:	800007b7          	lui	a5,0x80000
    7f94:	fff7c793          	xori	a5,a5,-1
    7f98:	00f12e23          	sw	a5,28(sp)
    7f9c:	00f12823          	sw	a5,16(sp)
    7fa0:	ffff07b7          	lui	a5,0xffff0
    7fa4:	08d12623          	sw	a3,140(sp)
    7fa8:	00b12423          	sw	a1,8(sp)
    7fac:	00b12c23          	sw	a1,24(sp)
    7fb0:	20878793          	addi	a5,a5,520 # ffff0208 <__heap_top+0xffef0208>
    7fb4:	08c10693          	addi	a3,sp,140
    7fb8:	00810593          	addi	a1,sp,8
    7fbc:	06112e23          	sw	ra,124(sp)
    7fc0:	00f12a23          	sw	a5,20(sp)
    7fc4:	08e12823          	sw	a4,144(sp)
    7fc8:	09012c23          	sw	a6,152(sp)
    7fcc:	09112e23          	sw	a7,156(sp)
    7fd0:	00d12223          	sw	a3,4(sp)
    7fd4:	398000ef          	jal	ra,836c <_svfprintf_r>
    7fd8:	00812783          	lw	a5,8(sp)
    7fdc:	00078023          	sb	zero,0(a5)
    7fe0:	07c12083          	lw	ra,124(sp)
    7fe4:	0a010113          	addi	sp,sp,160
    7fe8:	00008067          	jalr	zero,0(ra)

00007fec <sprintf>:
    7fec:	f6010113          	addi	sp,sp,-160
    7ff0:	08f12a23          	sw	a5,148(sp)
    7ff4:	800007b7          	lui	a5,0x80000
    7ff8:	fff7c793          	xori	a5,a5,-1
    7ffc:	00f12e23          	sw	a5,28(sp)
    8000:	00f12823          	sw	a5,16(sp)
    8004:	ffff07b7          	lui	a5,0xffff0
    8008:	20878793          	addi	a5,a5,520 # ffff0208 <__heap_top+0xffef0208>
    800c:	08c12423          	sw	a2,136(sp)
    8010:	08d12623          	sw	a3,140(sp)
    8014:	08e12823          	sw	a4,144(sp)
    8018:	09012c23          	sw	a6,152(sp)
    801c:	09112e23          	sw	a7,156(sp)
    8020:	00f12a23          	sw	a5,20(sp)
    8024:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    8028:	00a12423          	sw	a0,8(sp)
    802c:	00a12c23          	sw	a0,24(sp)
    8030:	0007a503          	lw	a0,0(a5)
    8034:	08810693          	addi	a3,sp,136
    8038:	00058613          	addi	a2,a1,0
    803c:	00810593          	addi	a1,sp,8
    8040:	06112e23          	sw	ra,124(sp)
    8044:	00d12223          	sw	a3,4(sp)
    8048:	324000ef          	jal	ra,836c <_svfprintf_r>
    804c:	00812783          	lw	a5,8(sp)
    8050:	00078023          	sb	zero,0(a5)
    8054:	07c12083          	lw	ra,124(sp)
    8058:	0a010113          	addi	sp,sp,160
    805c:	00008067          	jalr	zero,0(ra)

00008060 <__sread>:
    8060:	ff010113          	addi	sp,sp,-16
    8064:	00812423          	sw	s0,8(sp)
    8068:	00058413          	addi	s0,a1,0
    806c:	00e59583          	lh	a1,14(a1)
    8070:	00112623          	sw	ra,12(sp)
    8074:	584030ef          	jal	ra,b5f8 <_read_r>
    8078:	02054063          	blt	a0,zero,8098 <__sread+0x38>
    807c:	05042783          	lw	a5,80(s0)
    8080:	00a787b3          	add	a5,a5,a0
    8084:	04f42823          	sw	a5,80(s0)
    8088:	00c12083          	lw	ra,12(sp)
    808c:	00812403          	lw	s0,8(sp)
    8090:	01010113          	addi	sp,sp,16
    8094:	00008067          	jalr	zero,0(ra)
    8098:	00c45783          	lhu	a5,12(s0)
    809c:	fffff737          	lui	a4,0xfffff
    80a0:	fff70713          	addi	a4,a4,-1 # ffffefff <__heap_top+0xffefefff>
    80a4:	00e7f7b3          	and	a5,a5,a4
    80a8:	00f41623          	sh	a5,12(s0)
    80ac:	fddff06f          	jal	zero,8088 <__sread+0x28>

000080b0 <__seofread>:
    80b0:	00000513          	addi	a0,zero,0
    80b4:	00008067          	jalr	zero,0(ra)

000080b8 <__swrite>:
    80b8:	00c5d783          	lhu	a5,12(a1)
    80bc:	fe010113          	addi	sp,sp,-32
    80c0:	00812c23          	sw	s0,24(sp)
    80c4:	00912a23          	sw	s1,20(sp)
    80c8:	01212823          	sw	s2,16(sp)
    80cc:	01312623          	sw	s3,12(sp)
    80d0:	00112e23          	sw	ra,28(sp)
    80d4:	1007f793          	andi	a5,a5,256
    80d8:	00050493          	addi	s1,a0,0
    80dc:	00058413          	addi	s0,a1,0
    80e0:	00060913          	addi	s2,a2,0
    80e4:	00068993          	addi	s3,a3,0
    80e8:	00078a63          	beq	a5,zero,80fc <__swrite+0x44>
    80ec:	00e59583          	lh	a1,14(a1)
    80f0:	00200693          	addi	a3,zero,2
    80f4:	00000613          	addi	a2,zero,0
    80f8:	4b4030ef          	jal	ra,b5ac <_lseek_r>
    80fc:	00c45783          	lhu	a5,12(s0)
    8100:	fffff737          	lui	a4,0xfffff
    8104:	fff70713          	addi	a4,a4,-1 # ffffefff <__heap_top+0xffefefff>
    8108:	00e7f7b3          	and	a5,a5,a4
    810c:	00f41623          	sh	a5,12(s0)
    8110:	00e41583          	lh	a1,14(s0)
    8114:	01812403          	lw	s0,24(sp)
    8118:	01c12083          	lw	ra,28(sp)
    811c:	00098693          	addi	a3,s3,0
    8120:	00090613          	addi	a2,s2,0
    8124:	00c12983          	lw	s3,12(sp)
    8128:	01012903          	lw	s2,16(sp)
    812c:	00048513          	addi	a0,s1,0 # 80000000 <__heap_top+0x7ff00000>
    8130:	01412483          	lw	s1,20(sp)
    8134:	02010113          	addi	sp,sp,32
    8138:	0380306f          	jal	zero,b170 <_write_r>

0000813c <__sseek>:
    813c:	ff010113          	addi	sp,sp,-16
    8140:	00812423          	sw	s0,8(sp)
    8144:	00058413          	addi	s0,a1,0
    8148:	00e59583          	lh	a1,14(a1)
    814c:	00112623          	sw	ra,12(sp)
    8150:	45c030ef          	jal	ra,b5ac <_lseek_r>
    8154:	fff00793          	addi	a5,zero,-1
    8158:	00c45703          	lhu	a4,12(s0)
    815c:	02f51263          	bne	a0,a5,8180 <__sseek+0x44>
    8160:	fffff7b7          	lui	a5,0xfffff
    8164:	fff78793          	addi	a5,a5,-1 # ffffefff <__heap_top+0xffefefff>
    8168:	00e7f7b3          	and	a5,a5,a4
    816c:	00f41623          	sh	a5,12(s0)
    8170:	00c12083          	lw	ra,12(sp)
    8174:	00812403          	lw	s0,8(sp)
    8178:	01010113          	addi	sp,sp,16
    817c:	00008067          	jalr	zero,0(ra)
    8180:	000017b7          	lui	a5,0x1
    8184:	00f767b3          	or	a5,a4,a5
    8188:	00f41623          	sh	a5,12(s0)
    818c:	04a42823          	sw	a0,80(s0)
    8190:	fe1ff06f          	jal	zero,8170 <__sseek+0x34>

00008194 <__sclose>:
    8194:	00e59583          	lh	a1,14(a1)
    8198:	0c00306f          	jal	zero,b258 <_close_r>

0000819c <strcmp>:
    819c:	00b56733          	or	a4,a0,a1
    81a0:	fff00393          	addi	t2,zero,-1
    81a4:	00377713          	andi	a4,a4,3
    81a8:	10071063          	bne	a4,zero,82a8 <strcmp+0x10c>
    81ac:	7f7f87b7          	lui	a5,0x7f7f8
    81b0:	f7f78793          	addi	a5,a5,-129 # 7f7f7f7f <__heap_top+0x7f6f7f7f>
    81b4:	00052603          	lw	a2,0(a0)
    81b8:	0005a683          	lw	a3,0(a1)
    81bc:	00f672b3          	and	t0,a2,a5
    81c0:	00f66333          	or	t1,a2,a5
    81c4:	00f282b3          	add	t0,t0,a5
    81c8:	0062e2b3          	or	t0,t0,t1
    81cc:	10729263          	bne	t0,t2,82d0 <strcmp+0x134>
    81d0:	08d61663          	bne	a2,a3,825c <strcmp+0xc0>
    81d4:	00452603          	lw	a2,4(a0)
    81d8:	0045a683          	lw	a3,4(a1)
    81dc:	00f672b3          	and	t0,a2,a5
    81e0:	00f66333          	or	t1,a2,a5
    81e4:	00f282b3          	add	t0,t0,a5
    81e8:	0062e2b3          	or	t0,t0,t1
    81ec:	0c729e63          	bne	t0,t2,82c8 <strcmp+0x12c>
    81f0:	06d61663          	bne	a2,a3,825c <strcmp+0xc0>
    81f4:	00852603          	lw	a2,8(a0)
    81f8:	0085a683          	lw	a3,8(a1)
    81fc:	00f672b3          	and	t0,a2,a5
    8200:	00f66333          	or	t1,a2,a5
    8204:	00f282b3          	add	t0,t0,a5
    8208:	0062e2b3          	or	t0,t0,t1
    820c:	0c729863          	bne	t0,t2,82dc <strcmp+0x140>
    8210:	04d61663          	bne	a2,a3,825c <strcmp+0xc0>
    8214:	00c52603          	lw	a2,12(a0)
    8218:	00c5a683          	lw	a3,12(a1)
    821c:	00f672b3          	and	t0,a2,a5
    8220:	00f66333          	or	t1,a2,a5
    8224:	00f282b3          	add	t0,t0,a5
    8228:	0062e2b3          	or	t0,t0,t1
    822c:	0c729263          	bne	t0,t2,82f0 <strcmp+0x154>
    8230:	02d61663          	bne	a2,a3,825c <strcmp+0xc0>
    8234:	01052603          	lw	a2,16(a0)
    8238:	0105a683          	lw	a3,16(a1)
    823c:	00f672b3          	and	t0,a2,a5
    8240:	00f66333          	or	t1,a2,a5
    8244:	00f282b3          	add	t0,t0,a5
    8248:	0062e2b3          	or	t0,t0,t1
    824c:	0a729c63          	bne	t0,t2,8304 <strcmp+0x168>
    8250:	01450513          	addi	a0,a0,20
    8254:	01458593          	addi	a1,a1,20
    8258:	f4d60ee3          	beq	a2,a3,81b4 <strcmp+0x18>
    825c:	01061713          	slli	a4,a2,0x10
    8260:	01069793          	slli	a5,a3,0x10
    8264:	00f71e63          	bne	a4,a5,8280 <strcmp+0xe4>
    8268:	01065713          	srli	a4,a2,0x10
    826c:	0106d793          	srli	a5,a3,0x10
    8270:	40f70533          	sub	a0,a4,a5
    8274:	0ff57593          	andi	a1,a0,255
    8278:	02059063          	bne	a1,zero,8298 <strcmp+0xfc>
    827c:	00008067          	jalr	zero,0(ra)
    8280:	01075713          	srli	a4,a4,0x10
    8284:	0107d793          	srli	a5,a5,0x10
    8288:	40f70533          	sub	a0,a4,a5
    828c:	0ff57593          	andi	a1,a0,255
    8290:	00059463          	bne	a1,zero,8298 <strcmp+0xfc>
    8294:	00008067          	jalr	zero,0(ra)
    8298:	0ff77713          	andi	a4,a4,255
    829c:	0ff7f793          	andi	a5,a5,255
    82a0:	40f70533          	sub	a0,a4,a5
    82a4:	00008067          	jalr	zero,0(ra)
    82a8:	00054603          	lbu	a2,0(a0)
    82ac:	0005c683          	lbu	a3,0(a1)
    82b0:	00150513          	addi	a0,a0,1
    82b4:	00158593          	addi	a1,a1,1
    82b8:	00d61463          	bne	a2,a3,82c0 <strcmp+0x124>
    82bc:	fe0616e3          	bne	a2,zero,82a8 <strcmp+0x10c>
    82c0:	40d60533          	sub	a0,a2,a3
    82c4:	00008067          	jalr	zero,0(ra)
    82c8:	00450513          	addi	a0,a0,4
    82cc:	00458593          	addi	a1,a1,4
    82d0:	fcd61ce3          	bne	a2,a3,82a8 <strcmp+0x10c>
    82d4:	00000513          	addi	a0,zero,0
    82d8:	00008067          	jalr	zero,0(ra)
    82dc:	00850513          	addi	a0,a0,8
    82e0:	00858593          	addi	a1,a1,8
    82e4:	fcd612e3          	bne	a2,a3,82a8 <strcmp+0x10c>
    82e8:	00000513          	addi	a0,zero,0
    82ec:	00008067          	jalr	zero,0(ra)
    82f0:	00c50513          	addi	a0,a0,12
    82f4:	00c58593          	addi	a1,a1,12
    82f8:	fad618e3          	bne	a2,a3,82a8 <strcmp+0x10c>
    82fc:	00000513          	addi	a0,zero,0
    8300:	00008067          	jalr	zero,0(ra)
    8304:	01050513          	addi	a0,a0,16
    8308:	01058593          	addi	a1,a1,16
    830c:	f8d61ee3          	bne	a2,a3,82a8 <strcmp+0x10c>
    8310:	00000513          	addi	a0,zero,0
    8314:	00008067          	jalr	zero,0(ra)

00008318 <strcpy>:
    8318:	00050793          	addi	a5,a0,0
    831c:	0005c703          	lbu	a4,0(a1)
    8320:	00178793          	addi	a5,a5,1
    8324:	00158593          	addi	a1,a1,1
    8328:	fee78fa3          	sb	a4,-1(a5)
    832c:	fe0718e3          	bne	a4,zero,831c <strcpy+0x4>
    8330:	00008067          	jalr	zero,0(ra)

00008334 <strncpy>:
    8334:	00050793          	addi	a5,a0,0
    8338:	00060e63          	beq	a2,zero,8354 <strncpy+0x20>
    833c:	00158593          	addi	a1,a1,1
    8340:	fff5c703          	lbu	a4,-1(a1)
    8344:	00178793          	addi	a5,a5,1
    8348:	fff60613          	addi	a2,a2,-1
    834c:	fee78fa3          	sb	a4,-1(a5)
    8350:	fe0714e3          	bne	a4,zero,8338 <strncpy+0x4>
    8354:	00c78633          	add	a2,a5,a2
    8358:	00c79463          	bne	a5,a2,8360 <strncpy+0x2c>
    835c:	00008067          	jalr	zero,0(ra)
    8360:	00178793          	addi	a5,a5,1
    8364:	fe078fa3          	sb	zero,-1(a5)
    8368:	ff1ff06f          	jal	zero,8358 <strncpy+0x24>

0000836c <_svfprintf_r>:
    836c:	e3010113          	addi	sp,sp,-464
    8370:	1c112623          	sw	ra,460(sp)
    8374:	1c912223          	sw	s1,452(sp)
    8378:	1d212023          	sw	s2,448(sp)
    837c:	1b312e23          	sw	s3,444(sp)
    8380:	1b612823          	sw	s6,432(sp)
    8384:	00058993          	addi	s3,a1,0
    8388:	00060493          	addi	s1,a2,0
    838c:	00068b13          	addi	s6,a3,0
    8390:	1c812423          	sw	s0,456(sp)
    8394:	1b412c23          	sw	s4,440(sp)
    8398:	1b512a23          	sw	s5,436(sp)
    839c:	1b712623          	sw	s7,428(sp)
    83a0:	1b812423          	sw	s8,424(sp)
    83a4:	1b912223          	sw	s9,420(sp)
    83a8:	1ba12023          	sw	s10,416(sp)
    83ac:	19b12e23          	sw	s11,412(sp)
    83b0:	00050913          	addi	s2,a0,0
    83b4:	c4dfd0ef          	jal	ra,6000 <_localeconv_r>
    83b8:	00052783          	lw	a5,0(a0)
    83bc:	00078513          	addi	a0,a5,0
    83c0:	02f12423          	sw	a5,40(sp)
    83c4:	ae9f80ef          	jal	ra,eac <strlen>
    83c8:	00c9d783          	lhu	a5,12(s3)
    83cc:	00a12a23          	sw	a0,20(sp)
    83d0:	0c012823          	sw	zero,208(sp)
    83d4:	0c012a23          	sw	zero,212(sp)
    83d8:	0c012c23          	sw	zero,216(sp)
    83dc:	0c012e23          	sw	zero,220(sp)
    83e0:	0807f793          	andi	a5,a5,128
    83e4:	04078063          	beq	a5,zero,8424 <_svfprintf_r+0xb8>
    83e8:	0109a783          	lw	a5,16(s3)
    83ec:	02079c63          	bne	a5,zero,8424 <_svfprintf_r+0xb8>
    83f0:	04000593          	addi	a1,zero,64
    83f4:	00090513          	addi	a0,s2,0
    83f8:	e9dfd0ef          	jal	ra,6294 <_malloc_r>
    83fc:	00a9a023          	sw	a0,0(s3)
    8400:	00a9a823          	sw	a0,16(s3)
    8404:	00051c63          	bne	a0,zero,841c <_svfprintf_r+0xb0>
    8408:	00c00793          	addi	a5,zero,12
    840c:	00f92023          	sw	a5,0(s2)
    8410:	fff00793          	addi	a5,zero,-1
    8414:	00f12c23          	sw	a5,24(sp)
    8418:	7b40006f          	jal	zero,8bcc <_svfprintf_r+0x860>
    841c:	04000793          	addi	a5,zero,64
    8420:	00f9aa23          	sw	a5,20(s3)
    8424:	0ec10793          	addi	a5,sp,236
    8428:	0cf12223          	sw	a5,196(sp)
    842c:	0c012623          	sw	zero,204(sp)
    8430:	0c012423          	sw	zero,200(sp)
    8434:	00000a13          	addi	s4,zero,0
    8438:	00078c13          	addi	s8,a5,0
    843c:	02012a23          	sw	zero,52(sp)
    8440:	02012823          	sw	zero,48(sp)
    8444:	00012223          	sw	zero,4(sp)
    8448:	02012223          	sw	zero,36(sp)
    844c:	02012623          	sw	zero,44(sp)
    8450:	00012c23          	sw	zero,24(sp)
    8454:	00048413          	addi	s0,s1,0
    8458:	02500713          	addi	a4,zero,37
    845c:	00044783          	lbu	a5,0(s0)
    8460:	00078463          	beq	a5,zero,8468 <_svfprintf_r+0xfc>
    8464:	0ce79063          	bne	a5,a4,8524 <_svfprintf_r+0x1b8>
    8468:	40940ab3          	sub	s5,s0,s1
    846c:	040a8a63          	beq	s5,zero,84c0 <_svfprintf_r+0x154>
    8470:	0cc12783          	lw	a5,204(sp)
    8474:	009c2023          	sw	s1,0(s8)
    8478:	015c2223          	sw	s5,4(s8)
    847c:	015787b3          	add	a5,a5,s5
    8480:	0cf12623          	sw	a5,204(sp)
    8484:	0c812783          	lw	a5,200(sp)
    8488:	00700713          	addi	a4,zero,7
    848c:	008c0c13          	addi	s8,s8,8
    8490:	00178793          	addi	a5,a5,1
    8494:	0cf12423          	sw	a5,200(sp)
    8498:	00f75e63          	bge	a4,a5,84b4 <_svfprintf_r+0x148>
    849c:	0c410613          	addi	a2,sp,196
    84a0:	00098593          	addi	a1,s3,0
    84a4:	00090513          	addi	a0,s2,0
    84a8:	2f0030ef          	jal	ra,b798 <__ssprint_r>
    84ac:	70051a63          	bne	a0,zero,8bc0 <_svfprintf_r+0x854>
    84b0:	0ec10c13          	addi	s8,sp,236
    84b4:	01812783          	lw	a5,24(sp)
    84b8:	015787b3          	add	a5,a5,s5
    84bc:	00f12c23          	sw	a5,24(sp)
    84c0:	00044783          	lbu	a5,0(s0)
    84c4:	00079463          	bne	a5,zero,84cc <_svfprintf_r+0x160>
    84c8:	5b10106f          	jal	zero,a278 <_svfprintf_r+0x1f0c>
    84cc:	00140793          	addi	a5,s0,1
    84d0:	0a0103a3          	sb	zero,167(sp)
    84d4:	fff00d93          	addi	s11,zero,-1
    84d8:	00012e23          	sw	zero,28(sp)
    84dc:	00000413          	addi	s0,zero,0
    84e0:	00a00b93          	addi	s7,zero,10
    84e4:	00900d13          	addi	s10,zero,9
    84e8:	02a00c93          	addi	s9,zero,42
    84ec:	0007ca83          	lbu	s5,0(a5)
    84f0:	00178713          	addi	a4,a5,1
    84f4:	00e12823          	sw	a4,16(sp)
    84f8:	05a00693          	addi	a3,zero,90
    84fc:	fe0a8793          	addi	a5,s5,-32
    8500:	00f6f463          	bgeu	a3,a5,8508 <_svfprintf_r+0x19c>
    8504:	2740106f          	jal	zero,9778 <_svfprintf_r+0x140c>
    8508:	00009717          	auipc	a4,0x9
    850c:	40070713          	addi	a4,a4,1024 # 11908 <__mprec_bigtens+0x28>
    8510:	00279793          	slli	a5,a5,0x2
    8514:	00e787b3          	add	a5,a5,a4
    8518:	0007a783          	lw	a5,0(a5)
    851c:	00e787b3          	add	a5,a5,a4
    8520:	00078067          	jalr	zero,0(a5)
    8524:	00140413          	addi	s0,s0,1
    8528:	f35ff06f          	jal	zero,845c <_svfprintf_r+0xf0>
    852c:	00090513          	addi	a0,s2,0
    8530:	ad1fd0ef          	jal	ra,6000 <_localeconv_r>
    8534:	00452783          	lw	a5,4(a0)
    8538:	00078513          	addi	a0,a5,0
    853c:	02f12623          	sw	a5,44(sp)
    8540:	96df80ef          	jal	ra,eac <strlen>
    8544:	02a12223          	sw	a0,36(sp)
    8548:	00090513          	addi	a0,s2,0
    854c:	ab5fd0ef          	jal	ra,6000 <_localeconv_r>
    8550:	00852783          	lw	a5,8(a0)
    8554:	00f12223          	sw	a5,4(sp)
    8558:	02412783          	lw	a5,36(sp)
    855c:	00078c63          	beq	a5,zero,8574 <_svfprintf_r+0x208>
    8560:	00412783          	lw	a5,4(sp)
    8564:	00078863          	beq	a5,zero,8574 <_svfprintf_r+0x208>
    8568:	0007c783          	lbu	a5,0(a5)
    856c:	00078463          	beq	a5,zero,8574 <_svfprintf_r+0x208>
    8570:	40046413          	ori	s0,s0,1024
    8574:	01012783          	lw	a5,16(sp)
    8578:	f75ff06f          	jal	zero,84ec <_svfprintf_r+0x180>
    857c:	0a714783          	lbu	a5,167(sp)
    8580:	fe079ae3          	bne	a5,zero,8574 <_svfprintf_r+0x208>
    8584:	02000793          	addi	a5,zero,32
    8588:	0af103a3          	sb	a5,167(sp)
    858c:	fe9ff06f          	jal	zero,8574 <_svfprintf_r+0x208>
    8590:	00146413          	ori	s0,s0,1
    8594:	fe1ff06f          	jal	zero,8574 <_svfprintf_r+0x208>
    8598:	000b2783          	lw	a5,0(s6)
    859c:	004b0b13          	addi	s6,s6,4
    85a0:	00f12e23          	sw	a5,28(sp)
    85a4:	fc07d8e3          	bge	a5,zero,8574 <_svfprintf_r+0x208>
    85a8:	40f007b3          	sub	a5,zero,a5
    85ac:	00f12e23          	sw	a5,28(sp)
    85b0:	00446413          	ori	s0,s0,4
    85b4:	fc1ff06f          	jal	zero,8574 <_svfprintf_r+0x208>
    85b8:	02b00793          	addi	a5,zero,43
    85bc:	fcdff06f          	jal	zero,8588 <_svfprintf_r+0x21c>
    85c0:	01012703          	lw	a4,16(sp)
    85c4:	01012783          	lw	a5,16(sp)
    85c8:	00074a83          	lbu	s5,0(a4)
    85cc:	00178793          	addi	a5,a5,1
    85d0:	059a9063          	bne	s5,s9,8610 <_svfprintf_r+0x2a4>
    85d4:	000b2d83          	lw	s11,0(s6)
    85d8:	004b0713          	addi	a4,s6,4
    85dc:	000dd463          	bge	s11,zero,85e4 <_svfprintf_r+0x278>
    85e0:	fff00d93          	addi	s11,zero,-1
    85e4:	00070b13          	addi	s6,a4,0
    85e8:	00f12823          	sw	a5,16(sp)
    85ec:	f89ff06f          	jal	zero,8574 <_svfprintf_r+0x208>
    85f0:	037d8333          	mul	t1,s11,s7
    85f4:	00178793          	addi	a5,a5,1
    85f8:	fff7ca83          	lbu	s5,-1(a5)
    85fc:	00e30db3          	add	s11,t1,a4
    8600:	fd0a8713          	addi	a4,s5,-48
    8604:	feed76e3          	bgeu	s10,a4,85f0 <_svfprintf_r+0x284>
    8608:	00f12823          	sw	a5,16(sp)
    860c:	ef1ff06f          	jal	zero,84fc <_svfprintf_r+0x190>
    8610:	00000d93          	addi	s11,zero,0
    8614:	fedff06f          	jal	zero,8600 <_svfprintf_r+0x294>
    8618:	08046413          	ori	s0,s0,128
    861c:	f59ff06f          	jal	zero,8574 <_svfprintf_r+0x208>
    8620:	01012783          	lw	a5,16(sp)
    8624:	00012e23          	sw	zero,28(sp)
    8628:	01c12703          	lw	a4,28(sp)
    862c:	fd0a8a93          	addi	s5,s5,-48
    8630:	00178793          	addi	a5,a5,1
    8634:	03770733          	mul	a4,a4,s7
    8638:	00ea8733          	add	a4,s5,a4
    863c:	fff7ca83          	lbu	s5,-1(a5)
    8640:	00e12e23          	sw	a4,28(sp)
    8644:	fd0a8713          	addi	a4,s5,-48
    8648:	feed70e3          	bgeu	s10,a4,8628 <_svfprintf_r+0x2bc>
    864c:	fbdff06f          	jal	zero,8608 <_svfprintf_r+0x29c>
    8650:	00846413          	ori	s0,s0,8
    8654:	f21ff06f          	jal	zero,8574 <_svfprintf_r+0x208>
    8658:	01012783          	lw	a5,16(sp)
    865c:	0007c703          	lbu	a4,0(a5)
    8660:	06800793          	addi	a5,zero,104
    8664:	00f71c63          	bne	a4,a5,867c <_svfprintf_r+0x310>
    8668:	01012783          	lw	a5,16(sp)
    866c:	20046413          	ori	s0,s0,512
    8670:	00178793          	addi	a5,a5,1
    8674:	00f12823          	sw	a5,16(sp)
    8678:	efdff06f          	jal	zero,8574 <_svfprintf_r+0x208>
    867c:	04046413          	ori	s0,s0,64
    8680:	ef5ff06f          	jal	zero,8574 <_svfprintf_r+0x208>
    8684:	01012783          	lw	a5,16(sp)
    8688:	0007c703          	lbu	a4,0(a5)
    868c:	06c00793          	addi	a5,zero,108
    8690:	00f71c63          	bne	a4,a5,86a8 <_svfprintf_r+0x33c>
    8694:	01012783          	lw	a5,16(sp)
    8698:	00178793          	addi	a5,a5,1
    869c:	00f12823          	sw	a5,16(sp)
    86a0:	02046413          	ori	s0,s0,32
    86a4:	ed1ff06f          	jal	zero,8574 <_svfprintf_r+0x208>
    86a8:	01046413          	ori	s0,s0,16
    86ac:	ec9ff06f          	jal	zero,8574 <_svfprintf_r+0x208>
    86b0:	004b0793          	addi	a5,s6,4
    86b4:	00f12623          	sw	a5,12(sp)
    86b8:	000b2783          	lw	a5,0(s6)
    86bc:	0a0103a3          	sb	zero,167(sp)
    86c0:	12f10623          	sb	a5,300(sp)
    86c4:	00000b13          	addi	s6,zero,0
    86c8:	00100d93          	addi	s11,zero,1
    86cc:	00000d13          	addi	s10,zero,0
    86d0:	00012423          	sw	zero,8(sp)
    86d4:	00000b93          	addi	s7,zero,0
    86d8:	00000c93          	addi	s9,zero,0
    86dc:	12c10493          	addi	s1,sp,300
    86e0:	03a12023          	sw	s10,32(sp)
    86e4:	01bd5463          	bge	s10,s11,86ec <_svfprintf_r+0x380>
    86e8:	03b12023          	sw	s11,32(sp)
    86ec:	0a714703          	lbu	a4,167(sp)
    86f0:	00070863          	beq	a4,zero,8700 <_svfprintf_r+0x394>
    86f4:	02012783          	lw	a5,32(sp)
    86f8:	00178793          	addi	a5,a5,1
    86fc:	02f12023          	sw	a5,32(sp)
    8700:	00247793          	andi	a5,s0,2
    8704:	02f12c23          	sw	a5,56(sp)
    8708:	00078863          	beq	a5,zero,8718 <_svfprintf_r+0x3ac>
    870c:	02012783          	lw	a5,32(sp)
    8710:	00278793          	addi	a5,a5,2
    8714:	02f12023          	sw	a5,32(sp)
    8718:	08447793          	andi	a5,s0,132
    871c:	02f12e23          	sw	a5,60(sp)
    8720:	06079c63          	bne	a5,zero,8798 <_svfprintf_r+0x42c>
    8724:	01c12783          	lw	a5,28(sp)
    8728:	02012703          	lw	a4,32(sp)
    872c:	40e78733          	sub	a4,a5,a4
    8730:	06e05463          	bge	zero,a4,8798 <_svfprintf_r+0x42c>
    8734:	01000e93          	addi	t4,zero,16
    8738:	00009e17          	auipc	t3,0x9
    873c:	33ce0e13          	addi	t3,t3,828 # 11a74 <blanks.4498>
    8740:	00700f13          	addi	t5,zero,7
    8744:	0c812683          	lw	a3,200(sp)
    8748:	01cc2023          	sw	t3,0(s8)
    874c:	0cc12603          	lw	a2,204(sp)
    8750:	00168693          	addi	a3,a3,1
    8754:	008c0593          	addi	a1,s8,8
    8758:	00eed463          	bge	t4,a4,8760 <_svfprintf_r+0x3f4>
    875c:	0300106f          	jal	zero,978c <_svfprintf_r+0x1420>
    8760:	00ec2223          	sw	a4,4(s8)
    8764:	00c70733          	add	a4,a4,a2
    8768:	0ce12623          	sw	a4,204(sp)
    876c:	0cd12423          	sw	a3,200(sp)
    8770:	00700713          	addi	a4,zero,7
    8774:	00058c13          	addi	s8,a1,0
    8778:	02d75063          	bge	a4,a3,8798 <_svfprintf_r+0x42c>
    877c:	0c410613          	addi	a2,sp,196
    8780:	00098593          	addi	a1,s3,0
    8784:	00090513          	addi	a0,s2,0
    8788:	010030ef          	jal	ra,b798 <__ssprint_r>
    878c:	00050463          	beq	a0,zero,8794 <_svfprintf_r+0x428>
    8790:	2890106f          	jal	zero,a218 <_svfprintf_r+0x1eac>
    8794:	0ec10c13          	addi	s8,sp,236
    8798:	0a714703          	lbu	a4,167(sp)
    879c:	04070a63          	beq	a4,zero,87f0 <_svfprintf_r+0x484>
    87a0:	0a710713          	addi	a4,sp,167
    87a4:	00ec2023          	sw	a4,0(s8)
    87a8:	00100713          	addi	a4,zero,1
    87ac:	00ec2223          	sw	a4,4(s8)
    87b0:	0cc12703          	lw	a4,204(sp)
    87b4:	00700693          	addi	a3,zero,7
    87b8:	008c0c13          	addi	s8,s8,8
    87bc:	00170713          	addi	a4,a4,1
    87c0:	0ce12623          	sw	a4,204(sp)
    87c4:	0c812703          	lw	a4,200(sp)
    87c8:	00170713          	addi	a4,a4,1
    87cc:	0ce12423          	sw	a4,200(sp)
    87d0:	02e6d063          	bge	a3,a4,87f0 <_svfprintf_r+0x484>
    87d4:	0c410613          	addi	a2,sp,196
    87d8:	00098593          	addi	a1,s3,0
    87dc:	00090513          	addi	a0,s2,0
    87e0:	7b9020ef          	jal	ra,b798 <__ssprint_r>
    87e4:	00050463          	beq	a0,zero,87ec <_svfprintf_r+0x480>
    87e8:	2310106f          	jal	zero,a218 <_svfprintf_r+0x1eac>
    87ec:	0ec10c13          	addi	s8,sp,236
    87f0:	03812783          	lw	a5,56(sp)
    87f4:	04078a63          	beq	a5,zero,8848 <_svfprintf_r+0x4dc>
    87f8:	0a810713          	addi	a4,sp,168
    87fc:	00ec2023          	sw	a4,0(s8)
    8800:	00200713          	addi	a4,zero,2
    8804:	00ec2223          	sw	a4,4(s8)
    8808:	0cc12703          	lw	a4,204(sp)
    880c:	00700693          	addi	a3,zero,7
    8810:	008c0c13          	addi	s8,s8,8
    8814:	00270713          	addi	a4,a4,2
    8818:	0ce12623          	sw	a4,204(sp)
    881c:	0c812703          	lw	a4,200(sp)
    8820:	00170713          	addi	a4,a4,1
    8824:	0ce12423          	sw	a4,200(sp)
    8828:	02e6d063          	bge	a3,a4,8848 <_svfprintf_r+0x4dc>
    882c:	0c410613          	addi	a2,sp,196
    8830:	00098593          	addi	a1,s3,0
    8834:	00090513          	addi	a0,s2,0
    8838:	761020ef          	jal	ra,b798 <__ssprint_r>
    883c:	00050463          	beq	a0,zero,8844 <_svfprintf_r+0x4d8>
    8840:	1d90106f          	jal	zero,a218 <_svfprintf_r+0x1eac>
    8844:	0ec10c13          	addi	s8,sp,236
    8848:	03c12783          	lw	a5,60(sp)
    884c:	08000713          	addi	a4,zero,128
    8850:	06e79a63          	bne	a5,a4,88c4 <_svfprintf_r+0x558>
    8854:	01c12783          	lw	a5,28(sp)
    8858:	02012703          	lw	a4,32(sp)
    885c:	40e787b3          	sub	a5,a5,a4
    8860:	06f05263          	bge	zero,a5,88c4 <_svfprintf_r+0x558>
    8864:	01000813          	addi	a6,zero,16
    8868:	00700e13          	addi	t3,zero,7
    886c:	0c812703          	lw	a4,200(sp)
    8870:	00009597          	auipc	a1,0x9
    8874:	21458593          	addi	a1,a1,532 # 11a84 <zeroes.4499>
    8878:	00bc2023          	sw	a1,0(s8)
    887c:	0cc12683          	lw	a3,204(sp)
    8880:	00170713          	addi	a4,a4,1
    8884:	008c0613          	addi	a2,s8,8
    8888:	74f84ae3          	blt	a6,a5,97dc <_svfprintf_r+0x1470>
    888c:	00fc2223          	sw	a5,4(s8)
    8890:	00d787b3          	add	a5,a5,a3
    8894:	0cf12623          	sw	a5,204(sp)
    8898:	0ce12423          	sw	a4,200(sp)
    889c:	00700693          	addi	a3,zero,7
    88a0:	00060c13          	addi	s8,a2,0
    88a4:	02e6d063          	bge	a3,a4,88c4 <_svfprintf_r+0x558>
    88a8:	0c410613          	addi	a2,sp,196
    88ac:	00098593          	addi	a1,s3,0
    88b0:	00090513          	addi	a0,s2,0
    88b4:	6e5020ef          	jal	ra,b798 <__ssprint_r>
    88b8:	00050463          	beq	a0,zero,88c0 <_svfprintf_r+0x554>
    88bc:	15d0106f          	jal	zero,a218 <_svfprintf_r+0x1eac>
    88c0:	0ec10c13          	addi	s8,sp,236
    88c4:	41bd0d33          	sub	s10,s10,s11
    88c8:	07a05263          	bge	zero,s10,892c <_svfprintf_r+0x5c0>
    88cc:	01000793          	addi	a5,zero,16
    88d0:	00700813          	addi	a6,zero,7
    88d4:	0c812703          	lw	a4,200(sp)
    88d8:	0cc12683          	lw	a3,204(sp)
    88dc:	008c0613          	addi	a2,s8,8
    88e0:	00170713          	addi	a4,a4,1
    88e4:	75a7c0e3          	blt	a5,s10,9824 <_svfprintf_r+0x14b8>
    88e8:	01ac2223          	sw	s10,4(s8)
    88ec:	00009797          	auipc	a5,0x9
    88f0:	19878793          	addi	a5,a5,408 # 11a84 <zeroes.4499>
    88f4:	00dd0d33          	add	s10,s10,a3
    88f8:	00fc2023          	sw	a5,0(s8)
    88fc:	0da12623          	sw	s10,204(sp)
    8900:	0ce12423          	sw	a4,200(sp)
    8904:	00700693          	addi	a3,zero,7
    8908:	00060c13          	addi	s8,a2,0
    890c:	02e6d063          	bge	a3,a4,892c <_svfprintf_r+0x5c0>
    8910:	0c410613          	addi	a2,sp,196
    8914:	00098593          	addi	a1,s3,0
    8918:	00090513          	addi	a0,s2,0
    891c:	67d020ef          	jal	ra,b798 <__ssprint_r>
    8920:	00050463          	beq	a0,zero,8928 <_svfprintf_r+0x5bc>
    8924:	0f50106f          	jal	zero,a218 <_svfprintf_r+0x1eac>
    8928:	0ec10c13          	addi	s8,sp,236
    892c:	10047713          	andi	a4,s0,256
    8930:	0cc12d03          	lw	s10,204(sp)
    8934:	72071ee3          	bne	a4,zero,9870 <_svfprintf_r+0x1504>
    8938:	0c812783          	lw	a5,200(sp)
    893c:	01ad8333          	add	t1,s11,s10
    8940:	009c2023          	sw	s1,0(s8)
    8944:	00178793          	addi	a5,a5,1
    8948:	01bc2223          	sw	s11,4(s8)
    894c:	0c612623          	sw	t1,204(sp)
    8950:	0cf12423          	sw	a5,200(sp)
    8954:	00700713          	addi	a4,zero,7
    8958:	008c0c13          	addi	s8,s8,8
    895c:	00f74463          	blt	a4,a5,8964 <_svfprintf_r+0x5f8>
    8960:	1d80106f          	jal	zero,9b38 <_svfprintf_r+0x17cc>
    8964:	0c410613          	addi	a2,sp,196
    8968:	00098593          	addi	a1,s3,0
    896c:	00090513          	addi	a0,s2,0
    8970:	629020ef          	jal	ra,b798 <__ssprint_r>
    8974:	00050463          	beq	a0,zero,897c <_svfprintf_r+0x610>
    8978:	0a10106f          	jal	zero,a218 <_svfprintf_r+0x1eac>
    897c:	0ec10c13          	addi	s8,sp,236
    8980:	1b80106f          	jal	zero,9b38 <_svfprintf_r+0x17cc>
    8984:	01046413          	ori	s0,s0,16
    8988:	02047793          	andi	a5,s0,32
    898c:	06078463          	beq	a5,zero,89f4 <_svfprintf_r+0x688>
    8990:	007b0b13          	addi	s6,s6,7
    8994:	ff8b7b13          	andi	s6,s6,-8
    8998:	000b2d03          	lw	s10,0(s6)
    899c:	004b2c83          	lw	s9,4(s6)
    89a0:	008b0793          	addi	a5,s6,8
    89a4:	00f12623          	sw	a5,12(sp)
    89a8:	000cc463          	blt	s9,zero,89b0 <_svfprintf_r+0x644>
    89ac:	0ed0106f          	jal	zero,a298 <_svfprintf_r+0x1f2c>
    89b0:	41a00d33          	sub	s10,zero,s10
    89b4:	01a037b3          	sltu	a5,zero,s10
    89b8:	41900cb3          	sub	s9,zero,s9
    89bc:	40fc8cb3          	sub	s9,s9,a5
    89c0:	02d00793          	addi	a5,zero,45
    89c4:	0af103a3          	sb	a5,167(sp)
    89c8:	00100793          	addi	a5,zero,1
    89cc:	fff00713          	addi	a4,zero,-1
    89d0:	40ed8ee3          	beq	s11,a4,95ec <_svfprintf_r+0x1280>
    89d4:	00040713          	addi	a4,s0,0
    89d8:	019d66b3          	or	a3,s10,s9
    89dc:	f7f47413          	andi	s0,s0,-129
    89e0:	400696e3          	bne	a3,zero,95ec <_svfprintf_r+0x1280>
    89e4:	560d8ce3          	beq	s11,zero,975c <_svfprintf_r+0x13f0>
    89e8:	00100713          	addi	a4,zero,1
    89ec:	40e794e3          	bne	a5,a4,95f4 <_svfprintf_r+0x1288>
    89f0:	0bd0106f          	jal	zero,a2ac <_svfprintf_r+0x1f40>
    89f4:	004b0793          	addi	a5,s6,4
    89f8:	00f12623          	sw	a5,12(sp)
    89fc:	01047793          	andi	a5,s0,16
    8a00:	00078863          	beq	a5,zero,8a10 <_svfprintf_r+0x6a4>
    8a04:	000b2d03          	lw	s10,0(s6)
    8a08:	41fd5c93          	srai	s9,s10,0x1f
    8a0c:	f9dff06f          	jal	zero,89a8 <_svfprintf_r+0x63c>
    8a10:	04047793          	andi	a5,s0,64
    8a14:	000b2d03          	lw	s10,0(s6)
    8a18:	00078863          	beq	a5,zero,8a28 <_svfprintf_r+0x6bc>
    8a1c:	010d1d13          	slli	s10,s10,0x10
    8a20:	410d5d13          	srai	s10,s10,0x10
    8a24:	fe5ff06f          	jal	zero,8a08 <_svfprintf_r+0x69c>
    8a28:	20047793          	andi	a5,s0,512
    8a2c:	fc078ee3          	beq	a5,zero,8a08 <_svfprintf_r+0x69c>
    8a30:	018d1d13          	slli	s10,s10,0x18
    8a34:	418d5d13          	srai	s10,s10,0x18
    8a38:	fd1ff06f          	jal	zero,8a08 <_svfprintf_r+0x69c>
    8a3c:	00847793          	andi	a5,s0,8
    8a40:	0a078c63          	beq	a5,zero,8af8 <_svfprintf_r+0x78c>
    8a44:	004b0793          	addi	a5,s6,4
    8a48:	00f12623          	sw	a5,12(sp)
    8a4c:	000b2783          	lw	a5,0(s6)
    8a50:	0007a603          	lw	a2,0(a5)
    8a54:	0047a683          	lw	a3,4(a5)
    8a58:	0087a703          	lw	a4,8(a5)
    8a5c:	00c7a783          	lw	a5,12(a5)
    8a60:	0cc12823          	sw	a2,208(sp)
    8a64:	0cd12a23          	sw	a3,212(sp)
    8a68:	0ce12c23          	sw	a4,216(sp)
    8a6c:	0d010513          	addi	a0,sp,208
    8a70:	0cf12e23          	sw	a5,220(sp)
    8a74:	d20fd0ef          	jal	ra,5f94 <_ldcheck>
    8a78:	0aa12623          	sw	a0,172(sp)
    8a7c:	00200793          	addi	a5,zero,2
    8a80:	0af51c63          	bne	a0,a5,8b38 <_svfprintf_r+0x7cc>
    8a84:	0d012783          	lw	a5,208(sp)
    8a88:	08010593          	addi	a1,sp,128
    8a8c:	09010513          	addi	a0,sp,144
    8a90:	08f12823          	sw	a5,144(sp)
    8a94:	0d412783          	lw	a5,212(sp)
    8a98:	08012023          	sw	zero,128(sp)
    8a9c:	08012223          	sw	zero,132(sp)
    8aa0:	08f12a23          	sw	a5,148(sp)
    8aa4:	0d812783          	lw	a5,216(sp)
    8aa8:	08012423          	sw	zero,136(sp)
    8aac:	08012623          	sw	zero,140(sp)
    8ab0:	08f12c23          	sw	a5,152(sp)
    8ab4:	0dc12783          	lw	a5,220(sp)
    8ab8:	08f12e23          	sw	a5,156(sp)
    8abc:	75c050ef          	jal	ra,e218 <__letf2>
    8ac0:	00055663          	bge	a0,zero,8acc <_svfprintf_r+0x760>
    8ac4:	02d00793          	addi	a5,zero,45
    8ac8:	0af103a3          	sb	a5,167(sp)
    8acc:	04700793          	addi	a5,zero,71
    8ad0:	00009497          	auipc	s1,0x9
    8ad4:	a4848493          	addi	s1,s1,-1464 # 11518 <zeroes.4514+0x10>
    8ad8:	0157d663          	bge	a5,s5,8ae4 <_svfprintf_r+0x778>
    8adc:	00009497          	auipc	s1,0x9
    8ae0:	a4048493          	addi	s1,s1,-1472 # 1151c <zeroes.4514+0x14>
    8ae4:	f7f47413          	andi	s0,s0,-129
    8ae8:	00000b13          	addi	s6,zero,0
    8aec:	00300d93          	addi	s11,zero,3
    8af0:	00000d13          	addi	s10,zero,0
    8af4:	35d0006f          	jal	zero,9650 <_svfprintf_r+0x12e4>
    8af8:	007b0b13          	addi	s6,s6,7
    8afc:	ff8b7b13          	andi	s6,s6,-8
    8b00:	000b2583          	lw	a1,0(s6)
    8b04:	004b2603          	lw	a2,4(s6)
    8b08:	008b0793          	addi	a5,s6,8
    8b0c:	09010513          	addi	a0,sp,144
    8b10:	00f12623          	sw	a5,12(sp)
    8b14:	064080ef          	jal	ra,10b78 <__extenddftf2>
    8b18:	09012783          	lw	a5,144(sp)
    8b1c:	0cf12823          	sw	a5,208(sp)
    8b20:	09412783          	lw	a5,148(sp)
    8b24:	0cf12a23          	sw	a5,212(sp)
    8b28:	09812783          	lw	a5,152(sp)
    8b2c:	0cf12c23          	sw	a5,216(sp)
    8b30:	09c12783          	lw	a5,156(sp)
    8b34:	f39ff06f          	jal	zero,8a6c <_svfprintf_r+0x700>
    8b38:	00100793          	addi	a5,zero,1
    8b3c:	02f51863          	bne	a0,a5,8b6c <_svfprintf_r+0x800>
    8b40:	0dc12783          	lw	a5,220(sp)
    8b44:	0007d663          	bge	a5,zero,8b50 <_svfprintf_r+0x7e4>
    8b48:	02d00793          	addi	a5,zero,45
    8b4c:	0af103a3          	sb	a5,167(sp)
    8b50:	04700793          	addi	a5,zero,71
    8b54:	00009497          	auipc	s1,0x9
    8b58:	9cc48493          	addi	s1,s1,-1588 # 11520 <zeroes.4514+0x18>
    8b5c:	f957d4e3          	bge	a5,s5,8ae4 <_svfprintf_r+0x778>
    8b60:	00009497          	auipc	s1,0x9
    8b64:	9c448493          	addi	s1,s1,-1596 # 11524 <zeroes.4514+0x1c>
    8b68:	f7dff06f          	jal	zero,8ae4 <_svfprintf_r+0x778>
    8b6c:	fdfafb93          	andi	s7,s5,-33
    8b70:	04100793          	addi	a5,zero,65
    8b74:	08fb9c63          	bne	s7,a5,8c0c <_svfprintf_r+0x8a0>
    8b78:	03000793          	addi	a5,zero,48
    8b7c:	0af10423          	sb	a5,168(sp)
    8b80:	06100713          	addi	a4,zero,97
    8b84:	07800793          	addi	a5,zero,120
    8b88:	00ea8463          	beq	s5,a4,8b90 <_svfprintf_r+0x824>
    8b8c:	05800793          	addi	a5,zero,88
    8b90:	0af104a3          	sb	a5,169(sp)
    8b94:	06300793          	addi	a5,zero,99
    8b98:	00246413          	ori	s0,s0,2
    8b9c:	4fb7da63          	bge	a5,s11,9090 <_svfprintf_r+0xd24>
    8ba0:	001d8593          	addi	a1,s11,1
    8ba4:	00090513          	addi	a0,s2,0
    8ba8:	eecfd0ef          	jal	ra,6294 <_malloc_r>
    8bac:	00050493          	addi	s1,a0,0
    8bb0:	4e051663          	bne	a0,zero,909c <_svfprintf_r+0xd30>
    8bb4:	00c9d783          	lhu	a5,12(s3)
    8bb8:	0407e793          	ori	a5,a5,64
    8bbc:	00f99623          	sh	a5,12(s3)
    8bc0:	00c9d783          	lhu	a5,12(s3)
    8bc4:	0407f793          	andi	a5,a5,64
    8bc8:	840794e3          	bne	a5,zero,8410 <_svfprintf_r+0xa4>
    8bcc:	1cc12083          	lw	ra,460(sp)
    8bd0:	1c812403          	lw	s0,456(sp)
    8bd4:	01812503          	lw	a0,24(sp)
    8bd8:	1c412483          	lw	s1,452(sp)
    8bdc:	1c012903          	lw	s2,448(sp)
    8be0:	1bc12983          	lw	s3,444(sp)
    8be4:	1b812a03          	lw	s4,440(sp)
    8be8:	1b412a83          	lw	s5,436(sp)
    8bec:	1b012b03          	lw	s6,432(sp)
    8bf0:	1ac12b83          	lw	s7,428(sp)
    8bf4:	1a812c03          	lw	s8,424(sp)
    8bf8:	1a412c83          	lw	s9,420(sp)
    8bfc:	1a012d03          	lw	s10,416(sp)
    8c00:	19c12d83          	lw	s11,412(sp)
    8c04:	1d010113          	addi	sp,sp,464
    8c08:	00008067          	jalr	zero,0(ra)
    8c0c:	fff00793          	addi	a5,zero,-1
    8c10:	48fd8a63          	beq	s11,a5,90a4 <_svfprintf_r+0xd38>
    8c14:	04700793          	addi	a5,zero,71
    8c18:	00000b13          	addi	s6,zero,0
    8c1c:	00fb9863          	bne	s7,a5,8c2c <_svfprintf_r+0x8c0>
    8c20:	000d9663          	bne	s11,zero,8c2c <_svfprintf_r+0x8c0>
    8c24:	000d8b13          	addi	s6,s11,0
    8c28:	00100d93          	addi	s11,zero,1
    8c2c:	0dc12a03          	lw	s4,220(sp)
    8c30:	10046793          	ori	a5,s0,256
    8c34:	02f12023          	sw	a5,32(sp)
    8c38:	02012c23          	sw	zero,56(sp)
    8c3c:	0d012e03          	lw	t3,208(sp)
    8c40:	0d412883          	lw	a7,212(sp)
    8c44:	0d812d03          	lw	s10,216(sp)
    8c48:	000a5a63          	bge	s4,zero,8c5c <_svfprintf_r+0x8f0>
    8c4c:	800007b7          	lui	a5,0x80000
    8c50:	0147ca33          	xor	s4,a5,s4
    8c54:	02d00793          	addi	a5,zero,45
    8c58:	02f12c23          	sw	a5,56(sp)
    8c5c:	04100793          	addi	a5,zero,65
    8c60:	48fb9663          	bne	s7,a5,90ec <_svfprintf_r+0xd80>
    8c64:	09010513          	addi	a0,sp,144
    8c68:	09c12823          	sw	t3,144(sp)
    8c6c:	09112a23          	sw	a7,148(sp)
    8c70:	09a12c23          	sw	s10,152(sp)
    8c74:	09412e23          	sw	s4,156(sp)
    8c78:	118080ef          	jal	ra,10d90 <__trunctfdf2>
    8c7c:	0ac10613          	addi	a2,sp,172
    8c80:	a54ff0ef          	jal	ra,7ed4 <frexp>
    8c84:	00058613          	addi	a2,a1,0
    8c88:	00050593          	addi	a1,a0,0
    8c8c:	09010513          	addi	a0,sp,144
    8c90:	6e9070ef          	jal	ra,10b78 <__extenddftf2>
    8c94:	09012783          	lw	a5,144(sp)
    8c98:	06010613          	addi	a2,sp,96
    8c9c:	07010593          	addi	a1,sp,112
    8ca0:	06f12823          	sw	a5,112(sp)
    8ca4:	09412783          	lw	a5,148(sp)
    8ca8:	08010513          	addi	a0,sp,128
    8cac:	06012023          	sw	zero,96(sp)
    8cb0:	06f12a23          	sw	a5,116(sp)
    8cb4:	09812783          	lw	a5,152(sp)
    8cb8:	06012223          	sw	zero,100(sp)
    8cbc:	06012423          	sw	zero,104(sp)
    8cc0:	06f12c23          	sw	a5,120(sp)
    8cc4:	09c12783          	lw	a5,156(sp)
    8cc8:	06f12e23          	sw	a5,124(sp)
    8ccc:	3ffc07b7          	lui	a5,0x3ffc0
    8cd0:	06f12623          	sw	a5,108(sp)
    8cd4:	68c050ef          	jal	ra,e360 <__multf3>
    8cd8:	08012803          	lw	a6,128(sp)
    8cdc:	08412603          	lw	a2,132(sp)
    8ce0:	08812683          	lw	a3,136(sp)
    8ce4:	08c12d03          	lw	s10,140(sp)
    8ce8:	08010593          	addi	a1,sp,128
    8cec:	09010513          	addi	a0,sp,144
    8cf0:	09012823          	sw	a6,144(sp)
    8cf4:	05012023          	sw	a6,64(sp)
    8cf8:	08c12a23          	sw	a2,148(sp)
    8cfc:	02c12e23          	sw	a2,60(sp)
    8d00:	08d12c23          	sw	a3,152(sp)
    8d04:	00d12423          	sw	a3,8(sp)
    8d08:	09a12e23          	sw	s10,156(sp)
    8d0c:	08012023          	sw	zero,128(sp)
    8d10:	08012223          	sw	zero,132(sp)
    8d14:	08012423          	sw	zero,136(sp)
    8d18:	08012623          	sw	zero,140(sp)
    8d1c:	2e8050ef          	jal	ra,e004 <__eqtf2>
    8d20:	00812683          	lw	a3,8(sp)
    8d24:	03c12603          	lw	a2,60(sp)
    8d28:	04012803          	lw	a6,64(sp)
    8d2c:	00051663          	bne	a0,zero,8d38 <_svfprintf_r+0x9cc>
    8d30:	00100713          	addi	a4,zero,1
    8d34:	0ae12623          	sw	a4,172(sp)
    8d38:	00008797          	auipc	a5,0x8
    8d3c:	7f078793          	addi	a5,a5,2032 # 11528 <zeroes.4514+0x20>
    8d40:	06100713          	addi	a4,zero,97
    8d44:	00f12423          	sw	a5,8(sp)
    8d48:	00ea8863          	beq	s5,a4,8d58 <_svfprintf_r+0x9ec>
    8d4c:	00008797          	auipc	a5,0x8
    8d50:	7f078793          	addi	a5,a5,2032 # 1153c <zeroes.4514+0x34>
    8d54:	00f12423          	sw	a5,8(sp)
    8d58:	fffd8e13          	addi	t3,s11,-1
    8d5c:	00048c93          	addi	s9,s1,0
    8d60:	400307b7          	lui	a5,0x40030
    8d64:	08010593          	addi	a1,sp,128
    8d68:	08c12223          	sw	a2,132(sp)
    8d6c:	09010513          	addi	a0,sp,144
    8d70:	07010613          	addi	a2,sp,112
    8d74:	05c12423          	sw	t3,72(sp)
    8d78:	09012023          	sw	a6,128(sp)
    8d7c:	08d12423          	sw	a3,136(sp)
    8d80:	09a12623          	sw	s10,140(sp)
    8d84:	06f12e23          	sw	a5,124(sp)
    8d88:	06012823          	sw	zero,112(sp)
    8d8c:	06012a23          	sw	zero,116(sp)
    8d90:	06012c23          	sw	zero,120(sp)
    8d94:	5cc050ef          	jal	ra,e360 <__multf3>
    8d98:	09012603          	lw	a2,144(sp)
    8d9c:	09412683          	lw	a3,148(sp)
    8da0:	09812783          	lw	a5,152(sp)
    8da4:	09010513          	addi	a0,sp,144
    8da8:	04c12223          	sw	a2,68(sp)
    8dac:	04d12023          	sw	a3,64(sp)
    8db0:	02f12e23          	sw	a5,60(sp)
    8db4:	2e1070ef          	jal	ra,10894 <__fixtfsi>
    8db8:	00050593          	addi	a1,a0,0
    8dbc:	00050a13          	addi	s4,a0,0
    8dc0:	09010513          	addi	a0,sp,144
    8dc4:	09c12d03          	lw	s10,156(sp)
    8dc8:	41d070ef          	jal	ra,109e4 <__floatsitf>
    8dcc:	03c12783          	lw	a5,60(sp)
    8dd0:	04412603          	lw	a2,68(sp)
    8dd4:	04012683          	lw	a3,64(sp)
    8dd8:	06f12c23          	sw	a5,120(sp)
    8ddc:	09012783          	lw	a5,144(sp)
    8de0:	06c12823          	sw	a2,112(sp)
    8de4:	07010593          	addi	a1,sp,112
    8de8:	06f12023          	sw	a5,96(sp)
    8dec:	09412783          	lw	a5,148(sp)
    8df0:	06010613          	addi	a2,sp,96
    8df4:	08010513          	addi	a0,sp,128
    8df8:	06f12223          	sw	a5,100(sp)
    8dfc:	09812783          	lw	a5,152(sp)
    8e00:	07a12e23          	sw	s10,124(sp)
    8e04:	06d12a23          	sw	a3,116(sp)
    8e08:	06f12423          	sw	a5,104(sp)
    8e0c:	09c12783          	lw	a5,156(sp)
    8e10:	001c8c93          	addi	s9,s9,1
    8e14:	06f12623          	sw	a5,108(sp)
    8e18:	55c060ef          	jal	ra,f374 <__subtf3>
    8e1c:	00812783          	lw	a5,8(sp)
    8e20:	04812e03          	lw	t3,72(sp)
    8e24:	08c12e83          	lw	t4,140(sp)
    8e28:	014785b3          	add	a1,a5,s4
    8e2c:	0005c583          	lbu	a1,0(a1)
    8e30:	08012283          	lw	t0,128(sp)
    8e34:	08412f83          	lw	t6,132(sp)
    8e38:	08812f03          	lw	t5,136(sp)
    8e3c:	03c12e23          	sw	t3,60(sp)
    8e40:	febc8fa3          	sb	a1,-1(s9)
    8e44:	fff00793          	addi	a5,zero,-1
    8e48:	000e8d13          	addi	s10,t4,0
    8e4c:	06fe0c63          	beq	t3,a5,8ec4 <_svfprintf_r+0xb58>
    8e50:	fffe0e13          	addi	t3,t3,-1
    8e54:	08010593          	addi	a1,sp,128
    8e58:	09010513          	addi	a0,sp,144
    8e5c:	05d12e23          	sw	t4,92(sp)
    8e60:	05e12c23          	sw	t5,88(sp)
    8e64:	05f12a23          	sw	t6,84(sp)
    8e68:	04512823          	sw	t0,80(sp)
    8e6c:	05c12623          	sw	t3,76(sp)
    8e70:	08512823          	sw	t0,144(sp)
    8e74:	04512423          	sw	t0,72(sp)
    8e78:	09f12a23          	sw	t6,148(sp)
    8e7c:	05f12223          	sw	t6,68(sp)
    8e80:	09e12c23          	sw	t5,152(sp)
    8e84:	05e12023          	sw	t5,64(sp)
    8e88:	09d12e23          	sw	t4,156(sp)
    8e8c:	08012023          	sw	zero,128(sp)
    8e90:	08012223          	sw	zero,132(sp)
    8e94:	08012423          	sw	zero,136(sp)
    8e98:	08012623          	sw	zero,140(sp)
    8e9c:	168050ef          	jal	ra,e004 <__eqtf2>
    8ea0:	04012683          	lw	a3,64(sp)
    8ea4:	04412603          	lw	a2,68(sp)
    8ea8:	04812803          	lw	a6,72(sp)
    8eac:	04c12e03          	lw	t3,76(sp)
    8eb0:	05012283          	lw	t0,80(sp)
    8eb4:	05412f83          	lw	t6,84(sp)
    8eb8:	05812f03          	lw	t5,88(sp)
    8ebc:	05c12e83          	lw	t4,92(sp)
    8ec0:	ea0510e3          	bne	a0,zero,8d60 <_svfprintf_r+0x9f4>
    8ec4:	3ffe0d37          	lui	s10,0x3ffe0
    8ec8:	08010593          	addi	a1,sp,128
    8ecc:	09010513          	addi	a0,sp,144
    8ed0:	08512823          	sw	t0,144(sp)
    8ed4:	04512623          	sw	t0,76(sp)
    8ed8:	09f12a23          	sw	t6,148(sp)
    8edc:	05f12423          	sw	t6,72(sp)
    8ee0:	09e12c23          	sw	t5,152(sp)
    8ee4:	05e12223          	sw	t5,68(sp)
    8ee8:	09d12e23          	sw	t4,156(sp)
    8eec:	05d12023          	sw	t4,64(sp)
    8ef0:	08012023          	sw	zero,128(sp)
    8ef4:	08012223          	sw	zero,132(sp)
    8ef8:	08012423          	sw	zero,136(sp)
    8efc:	09a12623          	sw	s10,140(sp)
    8f00:	1d0050ef          	jal	ra,e0d0 <__getf2>
    8f04:	04a04663          	blt	zero,a0,8f50 <_svfprintf_r+0xbe4>
    8f08:	04c12283          	lw	t0,76(sp)
    8f0c:	04812f83          	lw	t6,72(sp)
    8f10:	04412f03          	lw	t5,68(sp)
    8f14:	04012e83          	lw	t4,64(sp)
    8f18:	08010593          	addi	a1,sp,128
    8f1c:	09010513          	addi	a0,sp,144
    8f20:	08512823          	sw	t0,144(sp)
    8f24:	09f12a23          	sw	t6,148(sp)
    8f28:	09e12c23          	sw	t5,152(sp)
    8f2c:	09d12e23          	sw	t4,156(sp)
    8f30:	08012023          	sw	zero,128(sp)
    8f34:	08012223          	sw	zero,132(sp)
    8f38:	08012423          	sw	zero,136(sp)
    8f3c:	09a12623          	sw	s10,140(sp)
    8f40:	0c4050ef          	jal	ra,e004 <__eqtf2>
    8f44:	18051a63          	bne	a0,zero,90d8 <_svfprintf_r+0xd6c>
    8f48:	001a7a13          	andi	s4,s4,1
    8f4c:	180a0663          	beq	s4,zero,90d8 <_svfprintf_r+0xd6c>
    8f50:	00812783          	lw	a5,8(sp)
    8f54:	0b912e23          	sw	s9,188(sp)
    8f58:	03000593          	addi	a1,zero,48
    8f5c:	00f7c603          	lbu	a2,15(a5) # 4003000f <__heap_top+0x3ff3000f>
    8f60:	0bc12683          	lw	a3,188(sp)
    8f64:	fff68793          	addi	a5,a3,-1
    8f68:	0af12e23          	sw	a5,188(sp)
    8f6c:	fff6c783          	lbu	a5,-1(a3)
    8f70:	14c78063          	beq	a5,a2,90b0 <_svfprintf_r+0xd44>
    8f74:	03900613          	addi	a2,zero,57
    8f78:	14c79063          	bne	a5,a2,90b8 <_svfprintf_r+0xd4c>
    8f7c:	00812783          	lw	a5,8(sp)
    8f80:	00a7c783          	lbu	a5,10(a5)
    8f84:	fef68fa3          	sb	a5,-1(a3)
    8f88:	000c8a13          	addi	s4,s9,0
    8f8c:	04700713          	addi	a4,zero,71
    8f90:	409a0a33          	sub	s4,s4,s1
    8f94:	0ac12c83          	lw	s9,172(sp)
    8f98:	2aeb9263          	bne	s7,a4,923c <_svfprintf_r+0xed0>
    8f9c:	ffd00713          	addi	a4,zero,-3
    8fa0:	00ecc463          	blt	s9,a4,8fa8 <_svfprintf_r+0xc3c>
    8fa4:	319ddc63          	bge	s11,s9,92bc <_svfprintf_r+0xf50>
    8fa8:	ffea8a93          	addi	s5,s5,-2
    8fac:	fffc8693          	addi	a3,s9,-1
    8fb0:	0ad12623          	sw	a3,172(sp)
    8fb4:	fdfaf613          	andi	a2,s5,-33
    8fb8:	04100513          	addi	a0,zero,65
    8fbc:	0ffaf713          	andi	a4,s5,255
    8fc0:	00000593          	addi	a1,zero,0
    8fc4:	00a61863          	bne	a2,a0,8fd4 <_svfprintf_r+0xc68>
    8fc8:	00f70713          	addi	a4,a4,15
    8fcc:	0ff77713          	andi	a4,a4,255
    8fd0:	00100593          	addi	a1,zero,1
    8fd4:	0ae10a23          	sb	a4,180(sp)
    8fd8:	02b00793          	addi	a5,zero,43
    8fdc:	0006d863          	bge	a3,zero,8fec <_svfprintf_r+0xc80>
    8fe0:	00100693          	addi	a3,zero,1
    8fe4:	419686b3          	sub	a3,a3,s9
    8fe8:	02d00793          	addi	a5,zero,45
    8fec:	0af10aa3          	sb	a5,181(sp)
    8ff0:	00900793          	addi	a5,zero,9
    8ff4:	28d7da63          	bge	a5,a3,9288 <_svfprintf_r+0xf1c>
    8ff8:	0c310713          	addi	a4,sp,195
    8ffc:	00070513          	addi	a0,a4,0
    9000:	00a00593          	addi	a1,zero,10
    9004:	06300813          	addi	a6,zero,99
    9008:	02b6e7b3          	rem	a5,a3,a1
    900c:	fff70613          	addi	a2,a4,-1
    9010:	03078793          	addi	a5,a5,48
    9014:	fef70fa3          	sb	a5,-1(a4)
    9018:	02b6c7b3          	div	a5,a3,a1
    901c:	24d84663          	blt	a6,a3,9268 <_svfprintf_r+0xefc>
    9020:	03078793          	addi	a5,a5,48
    9024:	fef60fa3          	sb	a5,-1(a2)
    9028:	ffe70713          	addi	a4,a4,-2
    902c:	0b610613          	addi	a2,sp,182
    9030:	24a76263          	bltu	a4,a0,9274 <_svfprintf_r+0xf08>
    9034:	0b410793          	addi	a5,sp,180
    9038:	40f607b3          	sub	a5,a2,a5
    903c:	02f12823          	sw	a5,48(sp)
    9040:	01478db3          	add	s11,a5,s4
    9044:	00100793          	addi	a5,zero,1
    9048:	0147c663          	blt	a5,s4,9054 <_svfprintf_r+0xce8>
    904c:	00147793          	andi	a5,s0,1
    9050:	00078663          	beq	a5,zero,905c <_svfprintf_r+0xcf0>
    9054:	01412783          	lw	a5,20(sp)
    9058:	00fd8db3          	add	s11,s11,a5
    905c:	bff47413          	andi	s0,s0,-1025
    9060:	10046793          	ori	a5,s0,256
    9064:	02f12023          	sw	a5,32(sp)
    9068:	00012423          	sw	zero,8(sp)
    906c:	00000b93          	addi	s7,zero,0
    9070:	00000c93          	addi	s9,zero,0
    9074:	03812783          	lw	a5,56(sp)
    9078:	00078663          	beq	a5,zero,9084 <_svfprintf_r+0xd18>
    907c:	02d00713          	addi	a4,zero,45
    9080:	0ae103a3          	sb	a4,167(sp)
    9084:	02012403          	lw	s0,32(sp)
    9088:	00000d13          	addi	s10,zero,0
    908c:	e54ff06f          	jal	zero,86e0 <_svfprintf_r+0x374>
    9090:	00000b13          	addi	s6,zero,0
    9094:	12c10493          	addi	s1,sp,300
    9098:	b95ff06f          	jal	zero,8c2c <_svfprintf_r+0x8c0>
    909c:	00050b13          	addi	s6,a0,0
    90a0:	b8dff06f          	jal	zero,8c2c <_svfprintf_r+0x8c0>
    90a4:	00000b13          	addi	s6,zero,0
    90a8:	00600d93          	addi	s11,zero,6
    90ac:	b81ff06f          	jal	zero,8c2c <_svfprintf_r+0x8c0>
    90b0:	feb68fa3          	sb	a1,-1(a3)
    90b4:	eadff06f          	jal	zero,8f60 <_svfprintf_r+0xbf4>
    90b8:	00178793          	addi	a5,a5,1
    90bc:	0ff7f793          	andi	a5,a5,255
    90c0:	ec5ff06f          	jal	zero,8f84 <_svfprintf_r+0xc18>
    90c4:	001a0a13          	addi	s4,s4,1
    90c8:	feea0fa3          	sb	a4,-1(s4)
    90cc:	414c87b3          	sub	a5,s9,s4
    90d0:	fe07dae3          	bge	a5,zero,90c4 <_svfprintf_r+0xd58>
    90d4:	eb9ff06f          	jal	zero,8f8c <_svfprintf_r+0xc20>
    90d8:	03c12783          	lw	a5,60(sp)
    90dc:	000c8a13          	addi	s4,s9,0
    90e0:	03000713          	addi	a4,zero,48
    90e4:	00fc8cb3          	add	s9,s9,a5
    90e8:	fe5ff06f          	jal	zero,90cc <_svfprintf_r+0xd60>
    90ec:	04600793          	addi	a5,zero,70
    90f0:	00fb8e63          	beq	s7,a5,910c <_svfprintf_r+0xda0>
    90f4:	04500793          	addi	a5,zero,69
    90f8:	001d8313          	addi	t1,s11,1
    90fc:	00fb8463          	beq	s7,a5,9104 <_svfprintf_r+0xd98>
    9100:	000d8313          	addi	t1,s11,0
    9104:	00200613          	addi	a2,zero,2
    9108:	00c0006f          	jal	zero,9114 <_svfprintf_r+0xda8>
    910c:	000d8313          	addi	t1,s11,0
    9110:	00300613          	addi	a2,zero,3
    9114:	0b010793          	addi	a5,sp,176
    9118:	00030693          	addi	a3,t1,0
    911c:	0bc10813          	addi	a6,sp,188
    9120:	0ac10713          	addi	a4,sp,172
    9124:	09010593          	addi	a1,sp,144
    9128:	00090513          	addi	a0,s2,0
    912c:	09c12823          	sw	t3,144(sp)
    9130:	05c12023          	sw	t3,64(sp)
    9134:	09112a23          	sw	a7,148(sp)
    9138:	03112e23          	sw	a7,60(sp)
    913c:	00612423          	sw	t1,8(sp)
    9140:	09a12c23          	sw	s10,152(sp)
    9144:	09412e23          	sw	s4,156(sp)
    9148:	a50fc0ef          	jal	ra,5398 <_ldtoa_r>
    914c:	04700793          	addi	a5,zero,71
    9150:	00050493          	addi	s1,a0,0
    9154:	00812303          	lw	t1,8(sp)
    9158:	03c12883          	lw	a7,60(sp)
    915c:	04012e03          	lw	t3,64(sp)
    9160:	00fb9a63          	bne	s7,a5,9174 <_svfprintf_r+0xe08>
    9164:	00147793          	andi	a5,s0,1
    9168:	00079663          	bne	a5,zero,9174 <_svfprintf_r+0xe08>
    916c:	0bc12a03          	lw	s4,188(sp)
    9170:	e1dff06f          	jal	zero,8f8c <_svfprintf_r+0xc20>
    9174:	04600793          	addi	a5,zero,70
    9178:	00648cb3          	add	s9,s1,t1
    917c:	06fb9663          	bne	s7,a5,91e8 <_svfprintf_r+0xe7c>
    9180:	0004c703          	lbu	a4,0(s1)
    9184:	03000793          	addi	a5,zero,48
    9188:	04f71c63          	bne	a4,a5,91e0 <_svfprintf_r+0xe74>
    918c:	08010593          	addi	a1,sp,128
    9190:	09010513          	addi	a0,sp,144
    9194:	09c12823          	sw	t3,144(sp)
    9198:	03c12e23          	sw	t3,60(sp)
    919c:	09112a23          	sw	a7,148(sp)
    91a0:	01112423          	sw	a7,8(sp)
    91a4:	04612023          	sw	t1,64(sp)
    91a8:	09a12c23          	sw	s10,152(sp)
    91ac:	09412e23          	sw	s4,156(sp)
    91b0:	08012023          	sw	zero,128(sp)
    91b4:	08012223          	sw	zero,132(sp)
    91b8:	08012423          	sw	zero,136(sp)
    91bc:	08012623          	sw	zero,140(sp)
    91c0:	645040ef          	jal	ra,e004 <__eqtf2>
    91c4:	00812883          	lw	a7,8(sp)
    91c8:	03c12e03          	lw	t3,60(sp)
    91cc:	00050a63          	beq	a0,zero,91e0 <_svfprintf_r+0xe74>
    91d0:	04012303          	lw	t1,64(sp)
    91d4:	00100793          	addi	a5,zero,1
    91d8:	406787b3          	sub	a5,a5,t1
    91dc:	0af12623          	sw	a5,172(sp)
    91e0:	0ac12783          	lw	a5,172(sp)
    91e4:	00fc8cb3          	add	s9,s9,a5
    91e8:	08010593          	addi	a1,sp,128
    91ec:	09010513          	addi	a0,sp,144
    91f0:	09c12823          	sw	t3,144(sp)
    91f4:	09112a23          	sw	a7,148(sp)
    91f8:	09a12c23          	sw	s10,152(sp)
    91fc:	09412e23          	sw	s4,156(sp)
    9200:	08012023          	sw	zero,128(sp)
    9204:	08012223          	sw	zero,132(sp)
    9208:	08012423          	sw	zero,136(sp)
    920c:	08012623          	sw	zero,140(sp)
    9210:	5f5040ef          	jal	ra,e004 <__eqtf2>
    9214:	00051463          	bne	a0,zero,921c <_svfprintf_r+0xeb0>
    9218:	0b912e23          	sw	s9,188(sp)
    921c:	03000713          	addi	a4,zero,48
    9220:	0100006f          	jal	zero,9230 <_svfprintf_r+0xec4>
    9224:	00178693          	addi	a3,a5,1
    9228:	0ad12e23          	sw	a3,188(sp)
    922c:	00e78023          	sb	a4,0(a5)
    9230:	0bc12783          	lw	a5,188(sp)
    9234:	ff97e8e3          	bltu	a5,s9,9224 <_svfprintf_r+0xeb8>
    9238:	f35ff06f          	jal	zero,916c <_svfprintf_r+0xe00>
    923c:	04600713          	addi	a4,zero,70
    9240:	d6eb96e3          	bne	s7,a4,8fac <_svfprintf_r+0xc40>
    9244:	00147713          	andi	a4,s0,1
    9248:	01b76733          	or	a4,a4,s11
    924c:	07905063          	bge	zero,s9,92ac <_svfprintf_r+0xf40>
    9250:	0c070063          	beq	a4,zero,9310 <_svfprintf_r+0xfa4>
    9254:	01412783          	lw	a5,20(sp)
    9258:	00fc8733          	add	a4,s9,a5
    925c:	00ed8db3          	add	s11,s11,a4
    9260:	06600a93          	addi	s5,zero,102
    9264:	0900006f          	jal	zero,92f4 <_svfprintf_r+0xf88>
    9268:	00060713          	addi	a4,a2,0
    926c:	00078693          	addi	a3,a5,0
    9270:	d99ff06f          	jal	zero,9008 <_svfprintf_r+0xc9c>
    9274:	00170713          	addi	a4,a4,1
    9278:	fff74783          	lbu	a5,-1(a4)
    927c:	00160613          	addi	a2,a2,1
    9280:	fef60fa3          	sb	a5,-1(a2)
    9284:	dadff06f          	jal	zero,9030 <_svfprintf_r+0xcc4>
    9288:	0b610713          	addi	a4,sp,182
    928c:	00059863          	bne	a1,zero,929c <_svfprintf_r+0xf30>
    9290:	03000793          	addi	a5,zero,48
    9294:	0af10b23          	sb	a5,182(sp)
    9298:	0b710713          	addi	a4,sp,183
    929c:	03068793          	addi	a5,a3,48
    92a0:	00170613          	addi	a2,a4,1
    92a4:	00f70023          	sb	a5,0(a4)
    92a8:	d8dff06f          	jal	zero,9034 <_svfprintf_r+0xcc8>
    92ac:	06070663          	beq	a4,zero,9318 <_svfprintf_r+0xfac>
    92b0:	01412783          	lw	a5,20(sp)
    92b4:	00178713          	addi	a4,a5,1
    92b8:	fa5ff06f          	jal	zero,925c <_svfprintf_r+0xef0>
    92bc:	034cc063          	blt	s9,s4,92dc <_svfprintf_r+0xf70>
    92c0:	00147713          	andi	a4,s0,1
    92c4:	000c8d93          	addi	s11,s9,0
    92c8:	00070663          	beq	a4,zero,92d4 <_svfprintf_r+0xf68>
    92cc:	01412783          	lw	a5,20(sp)
    92d0:	00fc8db3          	add	s11,s9,a5
    92d4:	06700a93          	addi	s5,zero,103
    92d8:	01c0006f          	jal	zero,92f4 <_svfprintf_r+0xf88>
    92dc:	01412783          	lw	a5,20(sp)
    92e0:	06700a93          	addi	s5,zero,103
    92e4:	00fa0db3          	add	s11,s4,a5
    92e8:	01904663          	blt	zero,s9,92f4 <_svfprintf_r+0xf88>
    92ec:	419d8333          	sub	t1,s11,s9
    92f0:	00130d93          	addi	s11,t1,1
    92f4:	40047b93          	andi	s7,s0,1024
    92f8:	00012423          	sw	zero,8(sp)
    92fc:	d60b8ce3          	beq	s7,zero,9074 <_svfprintf_r+0xd08>
    9300:	00000b93          	addi	s7,zero,0
    9304:	d79058e3          	bge	zero,s9,9074 <_svfprintf_r+0xd08>
    9308:	0ff00693          	addi	a3,zero,255
    930c:	0380006f          	jal	zero,9344 <_svfprintf_r+0xfd8>
    9310:	000c8d93          	addi	s11,s9,0
    9314:	f4dff06f          	jal	zero,9260 <_svfprintf_r+0xef4>
    9318:	06600a93          	addi	s5,zero,102
    931c:	00100d93          	addi	s11,zero,1
    9320:	fd5ff06f          	jal	zero,92f4 <_svfprintf_r+0xf88>
    9324:	03975663          	bge	a4,s9,9350 <_svfprintf_r+0xfe4>
    9328:	00412783          	lw	a5,4(sp)
    932c:	40ec8cb3          	sub	s9,s9,a4
    9330:	0017c703          	lbu	a4,1(a5)
    9334:	02070a63          	beq	a4,zero,9368 <_svfprintf_r+0xffc>
    9338:	00178793          	addi	a5,a5,1
    933c:	001b8b93          	addi	s7,s7,1
    9340:	00f12223          	sw	a5,4(sp)
    9344:	00412783          	lw	a5,4(sp)
    9348:	0007c703          	lbu	a4,0(a5)
    934c:	fcd71ce3          	bne	a4,a3,9324 <_svfprintf_r+0xfb8>
    9350:	00812783          	lw	a5,8(sp)
    9354:	00fb8733          	add	a4,s7,a5
    9358:	02412783          	lw	a5,36(sp)
    935c:	02f70733          	mul	a4,a4,a5
    9360:	01b70db3          	add	s11,a4,s11
    9364:	d11ff06f          	jal	zero,9074 <_svfprintf_r+0xd08>
    9368:	00812783          	lw	a5,8(sp)
    936c:	00178793          	addi	a5,a5,1
    9370:	00f12423          	sw	a5,8(sp)
    9374:	fd1ff06f          	jal	zero,9344 <_svfprintf_r+0xfd8>
    9378:	004b0713          	addi	a4,s6,4
    937c:	00e12623          	sw	a4,12(sp)
    9380:	02047713          	andi	a4,s0,32
    9384:	000b2783          	lw	a5,0(s6)
    9388:	02070063          	beq	a4,zero,93a8 <_svfprintf_r+0x103c>
    938c:	01812703          	lw	a4,24(sp)
    9390:	00e7a023          	sw	a4,0(a5)
    9394:	41f75713          	srai	a4,a4,0x1f
    9398:	00e7a223          	sw	a4,4(a5)
    939c:	00c12b03          	lw	s6,12(sp)
    93a0:	01012483          	lw	s1,16(sp)
    93a4:	8b0ff06f          	jal	zero,8454 <_svfprintf_r+0xe8>
    93a8:	01047713          	andi	a4,s0,16
    93ac:	00070863          	beq	a4,zero,93bc <_svfprintf_r+0x1050>
    93b0:	01812703          	lw	a4,24(sp)
    93b4:	00e7a023          	sw	a4,0(a5)
    93b8:	fe5ff06f          	jal	zero,939c <_svfprintf_r+0x1030>
    93bc:	04047713          	andi	a4,s0,64
    93c0:	00070863          	beq	a4,zero,93d0 <_svfprintf_r+0x1064>
    93c4:	01812703          	lw	a4,24(sp)
    93c8:	00e79023          	sh	a4,0(a5)
    93cc:	fd1ff06f          	jal	zero,939c <_svfprintf_r+0x1030>
    93d0:	20047413          	andi	s0,s0,512
    93d4:	fc040ee3          	beq	s0,zero,93b0 <_svfprintf_r+0x1044>
    93d8:	01812703          	lw	a4,24(sp)
    93dc:	00e78023          	sb	a4,0(a5)
    93e0:	fbdff06f          	jal	zero,939c <_svfprintf_r+0x1030>
    93e4:	01046413          	ori	s0,s0,16
    93e8:	02047793          	andi	a5,s0,32
    93ec:	02078663          	beq	a5,zero,9418 <_svfprintf_r+0x10ac>
    93f0:	007b0b13          	addi	s6,s6,7
    93f4:	ff8b7b13          	andi	s6,s6,-8
    93f8:	000b2d03          	lw	s10,0(s6)
    93fc:	004b2c83          	lw	s9,4(s6)
    9400:	008b0793          	addi	a5,s6,8
    9404:	00f12623          	sw	a5,12(sp)
    9408:	bff47413          	andi	s0,s0,-1025
    940c:	00000793          	addi	a5,zero,0
    9410:	0a0103a3          	sb	zero,167(sp)
    9414:	db8ff06f          	jal	zero,89cc <_svfprintf_r+0x660>
    9418:	004b0793          	addi	a5,s6,4
    941c:	00f12623          	sw	a5,12(sp)
    9420:	01047793          	andi	a5,s0,16
    9424:	00078663          	beq	a5,zero,9430 <_svfprintf_r+0x10c4>
    9428:	000b2d03          	lw	s10,0(s6)
    942c:	0100006f          	jal	zero,943c <_svfprintf_r+0x10d0>
    9430:	04047793          	andi	a5,s0,64
    9434:	00078863          	beq	a5,zero,9444 <_svfprintf_r+0x10d8>
    9438:	000b5d03          	lhu	s10,0(s6)
    943c:	00000c93          	addi	s9,zero,0
    9440:	fc9ff06f          	jal	zero,9408 <_svfprintf_r+0x109c>
    9444:	20047793          	andi	a5,s0,512
    9448:	fe0780e3          	beq	a5,zero,9428 <_svfprintf_r+0x10bc>
    944c:	000b4d03          	lbu	s10,0(s6)
    9450:	fedff06f          	jal	zero,943c <_svfprintf_r+0x10d0>
    9454:	004b0793          	addi	a5,s6,4
    9458:	00f12623          	sw	a5,12(sp)
    945c:	ffff87b7          	lui	a5,0xffff8
    9460:	8307c793          	xori	a5,a5,-2000
    9464:	0af11423          	sh	a5,168(sp)
    9468:	00008797          	auipc	a5,0x8
    946c:	0c078793          	addi	a5,a5,192 # 11528 <zeroes.4514+0x20>
    9470:	02f12a23          	sw	a5,52(sp)
    9474:	000b2d03          	lw	s10,0(s6)
    9478:	00000c93          	addi	s9,zero,0
    947c:	00246413          	ori	s0,s0,2
    9480:	00200793          	addi	a5,zero,2
    9484:	07800a93          	addi	s5,zero,120
    9488:	f89ff06f          	jal	zero,9410 <_svfprintf_r+0x10a4>
    948c:	004b0793          	addi	a5,s6,4
    9490:	00f12623          	sw	a5,12(sp)
    9494:	0a0103a3          	sb	zero,167(sp)
    9498:	fff00793          	addi	a5,zero,-1
    949c:	000b2483          	lw	s1,0(s6)
    94a0:	02fd8463          	beq	s11,a5,94c8 <_svfprintf_r+0x115c>
    94a4:	000d8613          	addi	a2,s11,0
    94a8:	00000593          	addi	a1,zero,0
    94ac:	00048513          	addi	a0,s1,0
    94b0:	cc0fd0ef          	jal	ra,6970 <memchr>
    94b4:	00050b13          	addi	s6,a0,0
    94b8:	e2050c63          	beq	a0,zero,8af0 <_svfprintf_r+0x784>
    94bc:	40950db3          	sub	s11,a0,s1
    94c0:	00000b13          	addi	s6,zero,0
    94c4:	e2cff06f          	jal	zero,8af0 <_svfprintf_r+0x784>
    94c8:	00048513          	addi	a0,s1,0
    94cc:	9e1f70ef          	jal	ra,eac <strlen>
    94d0:	00050d93          	addi	s11,a0,0
    94d4:	fedff06f          	jal	zero,94c0 <_svfprintf_r+0x1154>
    94d8:	01046413          	ori	s0,s0,16
    94dc:	02047793          	andi	a5,s0,32
    94e0:	02078263          	beq	a5,zero,9504 <_svfprintf_r+0x1198>
    94e4:	007b0b13          	addi	s6,s6,7
    94e8:	ff8b7b13          	andi	s6,s6,-8
    94ec:	000b2d03          	lw	s10,0(s6)
    94f0:	004b2c83          	lw	s9,4(s6)
    94f4:	008b0793          	addi	a5,s6,8
    94f8:	00f12623          	sw	a5,12(sp)
    94fc:	00100793          	addi	a5,zero,1
    9500:	f11ff06f          	jal	zero,9410 <_svfprintf_r+0x10a4>
    9504:	004b0793          	addi	a5,s6,4
    9508:	00f12623          	sw	a5,12(sp)
    950c:	01047793          	andi	a5,s0,16
    9510:	00078663          	beq	a5,zero,951c <_svfprintf_r+0x11b0>
    9514:	000b2d03          	lw	s10,0(s6)
    9518:	0100006f          	jal	zero,9528 <_svfprintf_r+0x11bc>
    951c:	04047793          	andi	a5,s0,64
    9520:	00078863          	beq	a5,zero,9530 <_svfprintf_r+0x11c4>
    9524:	000b5d03          	lhu	s10,0(s6)
    9528:	00000c93          	addi	s9,zero,0
    952c:	fd1ff06f          	jal	zero,94fc <_svfprintf_r+0x1190>
    9530:	20047793          	andi	a5,s0,512
    9534:	fe0780e3          	beq	a5,zero,9514 <_svfprintf_r+0x11a8>
    9538:	000b4d03          	lbu	s10,0(s6)
    953c:	fedff06f          	jal	zero,9528 <_svfprintf_r+0x11bc>
    9540:	00008797          	auipc	a5,0x8
    9544:	ffc78793          	addi	a5,a5,-4 # 1153c <zeroes.4514+0x34>
    9548:	02f12a23          	sw	a5,52(sp)
    954c:	02047793          	andi	a5,s0,32
    9550:	04078a63          	beq	a5,zero,95a4 <_svfprintf_r+0x1238>
    9554:	007b0b13          	addi	s6,s6,7
    9558:	ff8b7b13          	andi	s6,s6,-8
    955c:	000b2d03          	lw	s10,0(s6)
    9560:	004b2c83          	lw	s9,4(s6)
    9564:	008b0793          	addi	a5,s6,8
    9568:	00f12623          	sw	a5,12(sp)
    956c:	00147793          	andi	a5,s0,1
    9570:	00078e63          	beq	a5,zero,958c <_svfprintf_r+0x1220>
    9574:	019d67b3          	or	a5,s10,s9
    9578:	00078a63          	beq	a5,zero,958c <_svfprintf_r+0x1220>
    957c:	03000793          	addi	a5,zero,48
    9580:	0af10423          	sb	a5,168(sp)
    9584:	0b5104a3          	sb	s5,169(sp)
    9588:	00246413          	ori	s0,s0,2
    958c:	bff47413          	andi	s0,s0,-1025
    9590:	00200793          	addi	a5,zero,2
    9594:	e7dff06f          	jal	zero,9410 <_svfprintf_r+0x10a4>
    9598:	00008797          	auipc	a5,0x8
    959c:	f9078793          	addi	a5,a5,-112 # 11528 <zeroes.4514+0x20>
    95a0:	fa9ff06f          	jal	zero,9548 <_svfprintf_r+0x11dc>
    95a4:	004b0793          	addi	a5,s6,4
    95a8:	00f12623          	sw	a5,12(sp)
    95ac:	01047793          	andi	a5,s0,16
    95b0:	00078663          	beq	a5,zero,95bc <_svfprintf_r+0x1250>
    95b4:	000b2d03          	lw	s10,0(s6)
    95b8:	0100006f          	jal	zero,95c8 <_svfprintf_r+0x125c>
    95bc:	04047793          	andi	a5,s0,64
    95c0:	00078863          	beq	a5,zero,95d0 <_svfprintf_r+0x1264>
    95c4:	000b5d03          	lhu	s10,0(s6)
    95c8:	00000c93          	addi	s9,zero,0
    95cc:	fa1ff06f          	jal	zero,956c <_svfprintf_r+0x1200>
    95d0:	20047793          	andi	a5,s0,512
    95d4:	fe0780e3          	beq	a5,zero,95b4 <_svfprintf_r+0x1248>
    95d8:	000b4d03          	lbu	s10,0(s6)
    95dc:	fedff06f          	jal	zero,95c8 <_svfprintf_r+0x125c>
    95e0:	00040713          	addi	a4,s0,0
    95e4:	00100793          	addi	a5,zero,1
    95e8:	bf0ff06f          	jal	zero,89d8 <_svfprintf_r+0x66c>
    95ec:	00100713          	addi	a4,zero,1
    95f0:	4ae788e3          	beq	a5,a4,a2a0 <_svfprintf_r+0x1f34>
    95f4:	00200713          	addi	a4,zero,2
    95f8:	12e78663          	beq	a5,a4,9724 <_svfprintf_r+0x13b8>
    95fc:	19010793          	addi	a5,sp,400
    9600:	01dc9693          	slli	a3,s9,0x1d
    9604:	007d7713          	andi	a4,s10,7
    9608:	003d5d13          	srli	s10,s10,0x3
    960c:	03070713          	addi	a4,a4,48
    9610:	01a6ed33          	or	s10,a3,s10
    9614:	003cdc93          	srli	s9,s9,0x3
    9618:	fee78fa3          	sb	a4,-1(a5)
    961c:	019d66b3          	or	a3,s10,s9
    9620:	fff78493          	addi	s1,a5,-1
    9624:	02069e63          	bne	a3,zero,9660 <_svfprintf_r+0x12f4>
    9628:	00147693          	andi	a3,s0,1
    962c:	00068a63          	beq	a3,zero,9640 <_svfprintf_r+0x12d4>
    9630:	03000693          	addi	a3,zero,48
    9634:	00d70663          	beq	a4,a3,9640 <_svfprintf_r+0x12d4>
    9638:	fed48fa3          	sb	a3,-1(s1)
    963c:	ffe78493          	addi	s1,a5,-2
    9640:	19010793          	addi	a5,sp,400
    9644:	000d8d13          	addi	s10,s11,0
    9648:	00000b13          	addi	s6,zero,0
    964c:	40978db3          	sub	s11,a5,s1
    9650:	00012423          	sw	zero,8(sp)
    9654:	00000b93          	addi	s7,zero,0
    9658:	00000c93          	addi	s9,zero,0
    965c:	884ff06f          	jal	zero,86e0 <_svfprintf_r+0x374>
    9660:	00048793          	addi	a5,s1,0
    9664:	f9dff06f          	jal	zero,9600 <_svfprintf_r+0x1294>
    9668:	00000a13          	addi	s4,zero,0
    966c:	19010793          	addi	a5,sp,400
    9670:	40047b93          	andi	s7,s0,1024
    9674:	00900b13          	addi	s6,zero,9
    9678:	00a00613          	addi	a2,zero,10
    967c:	00000693          	addi	a3,zero,0
    9680:	000d0513          	addi	a0,s10,0 # 3ffe0000 <__heap_top+0x3fee0000>
    9684:	000c8593          	addi	a1,s9,0
    9688:	fff78493          	addi	s1,a5,-1
    968c:	00f12423          	sw	a5,8(sp)
    9690:	09d030ef          	jal	ra,cf2c <__umoddi3>
    9694:	00812783          	lw	a5,8(sp)
    9698:	03050513          	addi	a0,a0,48
    969c:	001a0a13          	addi	s4,s4,1
    96a0:	fea78fa3          	sb	a0,-1(a5)
    96a4:	040b8a63          	beq	s7,zero,96f8 <_svfprintf_r+0x138c>
    96a8:	00412783          	lw	a5,4(sp)
    96ac:	0007c783          	lbu	a5,0(a5)
    96b0:	04fa1463          	bne	s4,a5,96f8 <_svfprintf_r+0x138c>
    96b4:	0ff00793          	addi	a5,zero,255
    96b8:	04fa0063          	beq	s4,a5,96f8 <_svfprintf_r+0x138c>
    96bc:	000c9463          	bne	s9,zero,96c4 <_svfprintf_r+0x1358>
    96c0:	03ab7c63          	bgeu	s6,s10,96f8 <_svfprintf_r+0x138c>
    96c4:	02412783          	lw	a5,36(sp)
    96c8:	02c12583          	lw	a1,44(sp)
    96cc:	00000a13          	addi	s4,zero,0
    96d0:	40f484b3          	sub	s1,s1,a5
    96d4:	00078613          	addi	a2,a5,0
    96d8:	00048513          	addi	a0,s1,0
    96dc:	c59fe0ef          	jal	ra,8334 <strncpy>
    96e0:	00412783          	lw	a5,4(sp)
    96e4:	0017c783          	lbu	a5,1(a5)
    96e8:	00078863          	beq	a5,zero,96f8 <_svfprintf_r+0x138c>
    96ec:	00412783          	lw	a5,4(sp)
    96f0:	00178793          	addi	a5,a5,1
    96f4:	00f12223          	sw	a5,4(sp)
    96f8:	00a00613          	addi	a2,zero,10
    96fc:	00000693          	addi	a3,zero,0
    9700:	000d0513          	addi	a0,s10,0
    9704:	000c8593          	addi	a1,s9,0
    9708:	3f0030ef          	jal	ra,caf8 <__udivdi3>
    970c:	000c9463          	bne	s9,zero,9714 <_svfprintf_r+0x13a8>
    9710:	f3ab78e3          	bgeu	s6,s10,9640 <_svfprintf_r+0x12d4>
    9714:	00050d13          	addi	s10,a0,0
    9718:	00058c93          	addi	s9,a1,0
    971c:	00048793          	addi	a5,s1,0
    9720:	f59ff06f          	jal	zero,9678 <_svfprintf_r+0x130c>
    9724:	19010493          	addi	s1,sp,400
    9728:	03412703          	lw	a4,52(sp)
    972c:	00fd7793          	andi	a5,s10,15
    9730:	fff48493          	addi	s1,s1,-1
    9734:	00f707b3          	add	a5,a4,a5
    9738:	0007c783          	lbu	a5,0(a5)
    973c:	004d5d13          	srli	s10,s10,0x4
    9740:	00f48023          	sb	a5,0(s1)
    9744:	01cc9793          	slli	a5,s9,0x1c
    9748:	01a7ed33          	or	s10,a5,s10
    974c:	004cdc93          	srli	s9,s9,0x4
    9750:	019d67b3          	or	a5,s10,s9
    9754:	fc079ae3          	bne	a5,zero,9728 <_svfprintf_r+0x13bc>
    9758:	ee9ff06f          	jal	zero,9640 <_svfprintf_r+0x12d4>
    975c:	19010493          	addi	s1,sp,400
    9760:	ee0790e3          	bne	a5,zero,9640 <_svfprintf_r+0x12d4>
    9764:	00177713          	andi	a4,a4,1
    9768:	ec070ce3          	beq	a4,zero,9640 <_svfprintf_r+0x12d4>
    976c:	03000793          	addi	a5,zero,48
    9770:	18f107a3          	sb	a5,399(sp)
    9774:	3410006f          	jal	zero,a2b4 <_svfprintf_r+0x1f48>
    9778:	300a80e3          	beq	s5,zero,a278 <_svfprintf_r+0x1f0c>
    977c:	13510623          	sb	s5,300(sp)
    9780:	0a0103a3          	sb	zero,167(sp)
    9784:	01612623          	sw	s6,12(sp)
    9788:	f3dfe06f          	jal	zero,86c4 <_svfprintf_r+0x358>
    978c:	01060613          	addi	a2,a2,16
    9790:	01dc2223          	sw	t4,4(s8)
    9794:	0cc12623          	sw	a2,204(sp)
    9798:	0cd12423          	sw	a3,200(sp)
    979c:	02df5a63          	bge	t5,a3,97d0 <_svfprintf_r+0x1464>
    97a0:	0c410613          	addi	a2,sp,196
    97a4:	00098593          	addi	a1,s3,0
    97a8:	00090513          	addi	a0,s2,0
    97ac:	04e12023          	sw	a4,64(sp)
    97b0:	7e9010ef          	jal	ra,b798 <__ssprint_r>
    97b4:	260512e3          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    97b8:	04012703          	lw	a4,64(sp)
    97bc:	0ec10593          	addi	a1,sp,236
    97c0:	00700f13          	addi	t5,zero,7
    97c4:	00008e17          	auipc	t3,0x8
    97c8:	2b0e0e13          	addi	t3,t3,688 # 11a74 <blanks.4498>
    97cc:	01000e93          	addi	t4,zero,16
    97d0:	ff070713          	addi	a4,a4,-16
    97d4:	00058c13          	addi	s8,a1,0
    97d8:	f6dfe06f          	jal	zero,8744 <_svfprintf_r+0x3d8>
    97dc:	01068693          	addi	a3,a3,16
    97e0:	010c2223          	sw	a6,4(s8)
    97e4:	0cd12623          	sw	a3,204(sp)
    97e8:	0ce12423          	sw	a4,200(sp)
    97ec:	02ee5663          	bge	t3,a4,9818 <_svfprintf_r+0x14ac>
    97f0:	0c410613          	addi	a2,sp,196
    97f4:	00098593          	addi	a1,s3,0
    97f8:	00090513          	addi	a0,s2,0
    97fc:	02f12c23          	sw	a5,56(sp)
    9800:	799010ef          	jal	ra,b798 <__ssprint_r>
    9804:	20051ae3          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9808:	03812783          	lw	a5,56(sp)
    980c:	0ec10613          	addi	a2,sp,236
    9810:	00700e13          	addi	t3,zero,7
    9814:	01000813          	addi	a6,zero,16
    9818:	ff078793          	addi	a5,a5,-16
    981c:	00060c13          	addi	s8,a2,0
    9820:	84cff06f          	jal	zero,886c <_svfprintf_r+0x500>
    9824:	00008597          	auipc	a1,0x8
    9828:	26058593          	addi	a1,a1,608 # 11a84 <zeroes.4499>
    982c:	01068693          	addi	a3,a3,16
    9830:	00bc2023          	sw	a1,0(s8)
    9834:	00fc2223          	sw	a5,4(s8)
    9838:	0cd12623          	sw	a3,204(sp)
    983c:	0ce12423          	sw	a4,200(sp)
    9840:	02e85263          	bge	a6,a4,9864 <_svfprintf_r+0x14f8>
    9844:	0c410613          	addi	a2,sp,196
    9848:	00098593          	addi	a1,s3,0
    984c:	00090513          	addi	a0,s2,0
    9850:	749010ef          	jal	ra,b798 <__ssprint_r>
    9854:	1c0512e3          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9858:	0ec10613          	addi	a2,sp,236
    985c:	00700813          	addi	a6,zero,7
    9860:	01000793          	addi	a5,zero,16
    9864:	ff0d0d13          	addi	s10,s10,-16
    9868:	00060c13          	addi	s8,a2,0
    986c:	868ff06f          	jal	zero,88d4 <_svfprintf_r+0x568>
    9870:	06500713          	addi	a4,zero,101
    9874:	73575e63          	bge	a4,s5,9fb0 <_svfprintf_r+0x1c44>
    9878:	0d012703          	lw	a4,208(sp)
    987c:	08010593          	addi	a1,sp,128
    9880:	09010513          	addi	a0,sp,144
    9884:	08e12823          	sw	a4,144(sp)
    9888:	0d412703          	lw	a4,212(sp)
    988c:	08012023          	sw	zero,128(sp)
    9890:	08012223          	sw	zero,132(sp)
    9894:	08e12a23          	sw	a4,148(sp)
    9898:	0d812703          	lw	a4,216(sp)
    989c:	08012423          	sw	zero,136(sp)
    98a0:	08012623          	sw	zero,140(sp)
    98a4:	08e12c23          	sw	a4,152(sp)
    98a8:	0dc12703          	lw	a4,220(sp)
    98ac:	08e12e23          	sw	a4,156(sp)
    98b0:	754040ef          	jal	ra,e004 <__eqtf2>
    98b4:	12051c63          	bne	a0,zero,99ec <_svfprintf_r+0x1680>
    98b8:	00008797          	auipc	a5,0x8
    98bc:	c9878793          	addi	a5,a5,-872 # 11550 <zeroes.4514+0x48>
    98c0:	00fc2023          	sw	a5,0(s8)
    98c4:	00100793          	addi	a5,zero,1
    98c8:	00fc2223          	sw	a5,4(s8)
    98cc:	0c812783          	lw	a5,200(sp)
    98d0:	001d0d13          	addi	s10,s10,1
    98d4:	0da12623          	sw	s10,204(sp)
    98d8:	00178793          	addi	a5,a5,1
    98dc:	0cf12423          	sw	a5,200(sp)
    98e0:	00700713          	addi	a4,zero,7
    98e4:	008c0c13          	addi	s8,s8,8
    98e8:	00f75e63          	bge	a4,a5,9904 <_svfprintf_r+0x1598>
    98ec:	0c410613          	addi	a2,sp,196
    98f0:	00098593          	addi	a1,s3,0
    98f4:	00090513          	addi	a0,s2,0
    98f8:	6a1010ef          	jal	ra,b798 <__ssprint_r>
    98fc:	10051ee3          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9900:	0ec10c13          	addi	s8,sp,236
    9904:	0ac12783          	lw	a5,172(sp)
    9908:	0147c663          	blt	a5,s4,9914 <_svfprintf_r+0x15a8>
    990c:	00147793          	andi	a5,s0,1
    9910:	22078463          	beq	a5,zero,9b38 <_svfprintf_r+0x17cc>
    9914:	02812783          	lw	a5,40(sp)
    9918:	01412703          	lw	a4,20(sp)
    991c:	008c0c13          	addi	s8,s8,8
    9920:	fefc2c23          	sw	a5,-8(s8)
    9924:	01412783          	lw	a5,20(sp)
    9928:	fefc2e23          	sw	a5,-4(s8)
    992c:	0cc12783          	lw	a5,204(sp)
    9930:	00e787b3          	add	a5,a5,a4
    9934:	0cf12623          	sw	a5,204(sp)
    9938:	0c812783          	lw	a5,200(sp)
    993c:	00700713          	addi	a4,zero,7
    9940:	00178793          	addi	a5,a5,1
    9944:	0cf12423          	sw	a5,200(sp)
    9948:	00f75e63          	bge	a4,a5,9964 <_svfprintf_r+0x15f8>
    994c:	0c410613          	addi	a2,sp,196
    9950:	00098593          	addi	a1,s3,0
    9954:	00090513          	addi	a0,s2,0
    9958:	641010ef          	jal	ra,b798 <__ssprint_r>
    995c:	0a051ee3          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9960:	0ec10c13          	addi	s8,sp,236
    9964:	fffa0493          	addi	s1,s4,-1
    9968:	1c905863          	bge	zero,s1,9b38 <_svfprintf_r+0x17cc>
    996c:	01000a93          	addi	s5,zero,16
    9970:	00700b93          	addi	s7,zero,7
    9974:	0c812783          	lw	a5,200(sp)
    9978:	00008617          	auipc	a2,0x8
    997c:	10c60613          	addi	a2,a2,268 # 11a84 <zeroes.4499>
    9980:	00cc2023          	sw	a2,0(s8)
    9984:	0cc12703          	lw	a4,204(sp)
    9988:	00178793          	addi	a5,a5,1
    998c:	008c0693          	addi	a3,s8,8
    9990:	029ac263          	blt	s5,s1,99b4 <_svfprintf_r+0x1648>
    9994:	009c2223          	sw	s1,4(s8)
    9998:	00e484b3          	add	s1,s1,a4
    999c:	0c912623          	sw	s1,204(sp)
    99a0:	0cf12423          	sw	a5,200(sp)
    99a4:	00700713          	addi	a4,zero,7
    99a8:	00068c13          	addi	s8,a3,0
    99ac:	18f75663          	bge	a4,a5,9b38 <_svfprintf_r+0x17cc>
    99b0:	fb5fe06f          	jal	zero,8964 <_svfprintf_r+0x5f8>
    99b4:	01070713          	addi	a4,a4,16
    99b8:	015c2223          	sw	s5,4(s8)
    99bc:	0ce12623          	sw	a4,204(sp)
    99c0:	0cf12423          	sw	a5,200(sp)
    99c4:	00fbde63          	bge	s7,a5,99e0 <_svfprintf_r+0x1674>
    99c8:	0c410613          	addi	a2,sp,196
    99cc:	00098593          	addi	a1,s3,0
    99d0:	00090513          	addi	a0,s2,0
    99d4:	5c5010ef          	jal	ra,b798 <__ssprint_r>
    99d8:	040510e3          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    99dc:	0ec10693          	addi	a3,sp,236
    99e0:	ff048493          	addi	s1,s1,-16
    99e4:	00068c13          	addi	s8,a3,0
    99e8:	f8dff06f          	jal	zero,9974 <_svfprintf_r+0x1608>
    99ec:	0ac12703          	lw	a4,172(sp)
    99f0:	1ce04863          	blt	zero,a4,9bc0 <_svfprintf_r+0x1854>
    99f4:	00008797          	auipc	a5,0x8
    99f8:	b5c78793          	addi	a5,a5,-1188 # 11550 <zeroes.4514+0x48>
    99fc:	00fc2023          	sw	a5,0(s8)
    9a00:	00100793          	addi	a5,zero,1
    9a04:	00fc2223          	sw	a5,4(s8)
    9a08:	0c812783          	lw	a5,200(sp)
    9a0c:	001d0d13          	addi	s10,s10,1
    9a10:	0da12623          	sw	s10,204(sp)
    9a14:	00178793          	addi	a5,a5,1
    9a18:	0cf12423          	sw	a5,200(sp)
    9a1c:	00700713          	addi	a4,zero,7
    9a20:	008c0c13          	addi	s8,s8,8
    9a24:	00f75e63          	bge	a4,a5,9a40 <_svfprintf_r+0x16d4>
    9a28:	0c410613          	addi	a2,sp,196
    9a2c:	00098593          	addi	a1,s3,0
    9a30:	00090513          	addi	a0,s2,0
    9a34:	565010ef          	jal	ra,b798 <__ssprint_r>
    9a38:	7e051063          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9a3c:	0ec10c13          	addi	s8,sp,236
    9a40:	0ac12783          	lw	a5,172(sp)
    9a44:	00147693          	andi	a3,s0,1
    9a48:	0cc12703          	lw	a4,204(sp)
    9a4c:	00fa67b3          	or	a5,s4,a5
    9a50:	00d7e7b3          	or	a5,a5,a3
    9a54:	0e078263          	beq	a5,zero,9b38 <_svfprintf_r+0x17cc>
    9a58:	02812783          	lw	a5,40(sp)
    9a5c:	008c0893          	addi	a7,s8,8
    9a60:	00fc2023          	sw	a5,0(s8)
    9a64:	01412783          	lw	a5,20(sp)
    9a68:	00fc2223          	sw	a5,4(s8)
    9a6c:	00e787b3          	add	a5,a5,a4
    9a70:	0cf12623          	sw	a5,204(sp)
    9a74:	0c812783          	lw	a5,200(sp)
    9a78:	00700713          	addi	a4,zero,7
    9a7c:	00178793          	addi	a5,a5,1
    9a80:	0cf12423          	sw	a5,200(sp)
    9a84:	00f75e63          	bge	a4,a5,9aa0 <_svfprintf_r+0x1734>
    9a88:	0c410613          	addi	a2,sp,196
    9a8c:	00098593          	addi	a1,s3,0
    9a90:	00090513          	addi	a0,s2,0
    9a94:	505010ef          	jal	ra,b798 <__ssprint_r>
    9a98:	78051063          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9a9c:	0ec10893          	addi	a7,sp,236
    9aa0:	0ac12a83          	lw	s5,172(sp)
    9aa4:	060ad263          	bge	s5,zero,9b08 <_svfprintf_r+0x179c>
    9aa8:	41500ab3          	sub	s5,zero,s5
    9aac:	00088713          	addi	a4,a7,0
    9ab0:	01000b93          	addi	s7,zero,16
    9ab4:	00700c13          	addi	s8,zero,7
    9ab8:	0c812783          	lw	a5,200(sp)
    9abc:	00008617          	auipc	a2,0x8
    9ac0:	fc860613          	addi	a2,a2,-56 # 11a84 <zeroes.4499>
    9ac4:	00c72023          	sw	a2,0(a4)
    9ac8:	0cc12683          	lw	a3,204(sp)
    9acc:	00178793          	addi	a5,a5,1
    9ad0:	00888893          	addi	a7,a7,8
    9ad4:	0b5bca63          	blt	s7,s5,9b88 <_svfprintf_r+0x181c>
    9ad8:	01572223          	sw	s5,4(a4)
    9adc:	00da8ab3          	add	s5,s5,a3
    9ae0:	0d512623          	sw	s5,204(sp)
    9ae4:	0cf12423          	sw	a5,200(sp)
    9ae8:	00700713          	addi	a4,zero,7
    9aec:	00f75e63          	bge	a4,a5,9b08 <_svfprintf_r+0x179c>
    9af0:	0c410613          	addi	a2,sp,196
    9af4:	00098593          	addi	a1,s3,0
    9af8:	00090513          	addi	a0,s2,0
    9afc:	49d010ef          	jal	ra,b798 <__ssprint_r>
    9b00:	70051c63          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9b04:	0ec10893          	addi	a7,sp,236
    9b08:	0cc12783          	lw	a5,204(sp)
    9b0c:	0098a023          	sw	s1,0(a7)
    9b10:	0148a223          	sw	s4,4(a7)
    9b14:	014787b3          	add	a5,a5,s4
    9b18:	0cf12623          	sw	a5,204(sp)
    9b1c:	0c812783          	lw	a5,200(sp)
    9b20:	00700713          	addi	a4,zero,7
    9b24:	00888c13          	addi	s8,a7,8
    9b28:	00178793          	addi	a5,a5,1
    9b2c:	0cf12423          	sw	a5,200(sp)
    9b30:	00f75463          	bge	a4,a5,9b38 <_svfprintf_r+0x17cc>
    9b34:	e31fe06f          	jal	zero,8964 <_svfprintf_r+0x5f8>
    9b38:	00447413          	andi	s0,s0,4
    9b3c:	66041e63          	bne	s0,zero,a1b8 <_svfprintf_r+0x1e4c>
    9b40:	01c12a83          	lw	s5,28(sp)
    9b44:	02012783          	lw	a5,32(sp)
    9b48:	00fad463          	bge	s5,a5,9b50 <_svfprintf_r+0x17e4>
    9b4c:	00078a93          	addi	s5,a5,0
    9b50:	01812783          	lw	a5,24(sp)
    9b54:	015787b3          	add	a5,a5,s5
    9b58:	00f12c23          	sw	a5,24(sp)
    9b5c:	0cc12783          	lw	a5,204(sp)
    9b60:	00078c63          	beq	a5,zero,9b78 <_svfprintf_r+0x180c>
    9b64:	0c410613          	addi	a2,sp,196
    9b68:	00098593          	addi	a1,s3,0
    9b6c:	00090513          	addi	a0,s2,0
    9b70:	429010ef          	jal	ra,b798 <__ssprint_r>
    9b74:	6a051263          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9b78:	0c012423          	sw	zero,200(sp)
    9b7c:	6e0b1663          	bne	s6,zero,a268 <_svfprintf_r+0x1efc>
    9b80:	0ec10c13          	addi	s8,sp,236
    9b84:	819ff06f          	jal	zero,939c <_svfprintf_r+0x1030>
    9b88:	01068693          	addi	a3,a3,16
    9b8c:	01772223          	sw	s7,4(a4)
    9b90:	0cd12623          	sw	a3,204(sp)
    9b94:	0cf12423          	sw	a5,200(sp)
    9b98:	00fc5e63          	bge	s8,a5,9bb4 <_svfprintf_r+0x1848>
    9b9c:	0c410613          	addi	a2,sp,196
    9ba0:	00098593          	addi	a1,s3,0
    9ba4:	00090513          	addi	a0,s2,0
    9ba8:	3f1010ef          	jal	ra,b798 <__ssprint_r>
    9bac:	66051663          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9bb0:	0ec10893          	addi	a7,sp,236
    9bb4:	ff0a8a93          	addi	s5,s5,-16
    9bb8:	00088713          	addi	a4,a7,0
    9bbc:	efdff06f          	jal	zero,9ab8 <_svfprintf_r+0x174c>
    9bc0:	000c8a93          	addi	s5,s9,0
    9bc4:	019a5463          	bge	s4,s9,9bcc <_svfprintf_r+0x1860>
    9bc8:	000a0a93          	addi	s5,s4,0
    9bcc:	05505263          	bge	zero,s5,9c10 <_svfprintf_r+0x18a4>
    9bd0:	0c812703          	lw	a4,200(sp)
    9bd4:	01aa8d33          	add	s10,s5,s10
    9bd8:	009c2023          	sw	s1,0(s8)
    9bdc:	00170713          	addi	a4,a4,1
    9be0:	015c2223          	sw	s5,4(s8)
    9be4:	0da12623          	sw	s10,204(sp)
    9be8:	0ce12423          	sw	a4,200(sp)
    9bec:	00700693          	addi	a3,zero,7
    9bf0:	008c0c13          	addi	s8,s8,8
    9bf4:	00e6de63          	bge	a3,a4,9c10 <_svfprintf_r+0x18a4>
    9bf8:	0c410613          	addi	a2,sp,196
    9bfc:	00098593          	addi	a1,s3,0
    9c00:	00090513          	addi	a0,s2,0
    9c04:	395010ef          	jal	ra,b798 <__ssprint_r>
    9c08:	60051863          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9c0c:	0ec10c13          	addi	s8,sp,236
    9c10:	000ad463          	bge	s5,zero,9c18 <_svfprintf_r+0x18ac>
    9c14:	00000a93          	addi	s5,zero,0
    9c18:	415c8ab3          	sub	s5,s9,s5
    9c1c:	07505063          	bge	zero,s5,9c7c <_svfprintf_r+0x1910>
    9c20:	01000d13          	addi	s10,zero,16
    9c24:	00700d93          	addi	s11,zero,7
    9c28:	0c812703          	lw	a4,200(sp)
    9c2c:	00008797          	auipc	a5,0x8
    9c30:	e5878793          	addi	a5,a5,-424 # 11a84 <zeroes.4499>
    9c34:	00fc2023          	sw	a5,0(s8)
    9c38:	0cc12683          	lw	a3,204(sp)
    9c3c:	00170713          	addi	a4,a4,1
    9c40:	008c0613          	addi	a2,s8,8
    9c44:	1b5d4063          	blt	s10,s5,9de4 <_svfprintf_r+0x1a78>
    9c48:	015c2223          	sw	s5,4(s8)
    9c4c:	00da8ab3          	add	s5,s5,a3
    9c50:	0d512623          	sw	s5,204(sp)
    9c54:	0ce12423          	sw	a4,200(sp)
    9c58:	00700693          	addi	a3,zero,7
    9c5c:	00060c13          	addi	s8,a2,0
    9c60:	00e6de63          	bge	a3,a4,9c7c <_svfprintf_r+0x1910>
    9c64:	0c410613          	addi	a2,sp,196
    9c68:	00098593          	addi	a1,s3,0
    9c6c:	00090513          	addi	a0,s2,0
    9c70:	329010ef          	jal	ra,b798 <__ssprint_r>
    9c74:	5a051263          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9c78:	0ec10c13          	addi	s8,sp,236
    9c7c:	40047793          	andi	a5,s0,1024
    9c80:	01948ab3          	add	s5,s1,s9
    9c84:	02078263          	beq	a5,zero,9ca8 <_svfprintf_r+0x193c>
    9c88:	00700d13          	addi	s10,zero,7
    9c8c:	01448db3          	add	s11,s1,s4
    9c90:	00812783          	lw	a5,8(sp)
    9c94:	180b9463          	bne	s7,zero,9e1c <_svfprintf_r+0x1ab0>
    9c98:	18079463          	bne	a5,zero,9e20 <_svfprintf_r+0x1ab4>
    9c9c:	014487b3          	add	a5,s1,s4
    9ca0:	0157f463          	bgeu	a5,s5,9ca8 <_svfprintf_r+0x193c>
    9ca4:	00078a93          	addi	s5,a5,0
    9ca8:	0ac12783          	lw	a5,172(sp)
    9cac:	0147c663          	blt	a5,s4,9cb8 <_svfprintf_r+0x194c>
    9cb0:	00147793          	andi	a5,s0,1
    9cb4:	04078a63          	beq	a5,zero,9d08 <_svfprintf_r+0x199c>
    9cb8:	02812783          	lw	a5,40(sp)
    9cbc:	01412703          	lw	a4,20(sp)
    9cc0:	008c0c13          	addi	s8,s8,8
    9cc4:	fefc2c23          	sw	a5,-8(s8)
    9cc8:	01412783          	lw	a5,20(sp)
    9ccc:	fefc2e23          	sw	a5,-4(s8)
    9cd0:	0cc12783          	lw	a5,204(sp)
    9cd4:	00e787b3          	add	a5,a5,a4
    9cd8:	0cf12623          	sw	a5,204(sp)
    9cdc:	0c812783          	lw	a5,200(sp)
    9ce0:	00700713          	addi	a4,zero,7
    9ce4:	00178793          	addi	a5,a5,1
    9ce8:	0cf12423          	sw	a5,200(sp)
    9cec:	00f75e63          	bge	a4,a5,9d08 <_svfprintf_r+0x199c>
    9cf0:	0c410613          	addi	a2,sp,196
    9cf4:	00098593          	addi	a1,s3,0
    9cf8:	00090513          	addi	a0,s2,0
    9cfc:	29d010ef          	jal	ra,b798 <__ssprint_r>
    9d00:	50051c63          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9d04:	0ec10c13          	addi	s8,sp,236
    9d08:	014484b3          	add	s1,s1,s4
    9d0c:	415487b3          	sub	a5,s1,s5
    9d10:	0ac12483          	lw	s1,172(sp)
    9d14:	409a04b3          	sub	s1,s4,s1
    9d18:	0097d463          	bge	a5,s1,9d20 <_svfprintf_r+0x19b4>
    9d1c:	00078493          	addi	s1,a5,0
    9d20:	04905463          	bge	zero,s1,9d68 <_svfprintf_r+0x19fc>
    9d24:	0cc12783          	lw	a5,204(sp)
    9d28:	015c2023          	sw	s5,0(s8)
    9d2c:	009c2223          	sw	s1,4(s8)
    9d30:	00f487b3          	add	a5,s1,a5
    9d34:	0cf12623          	sw	a5,204(sp)
    9d38:	0c812783          	lw	a5,200(sp)
    9d3c:	00700713          	addi	a4,zero,7
    9d40:	008c0c13          	addi	s8,s8,8
    9d44:	00178793          	addi	a5,a5,1
    9d48:	0cf12423          	sw	a5,200(sp)
    9d4c:	00f75e63          	bge	a4,a5,9d68 <_svfprintf_r+0x19fc>
    9d50:	0c410613          	addi	a2,sp,196
    9d54:	00098593          	addi	a1,s3,0
    9d58:	00090513          	addi	a0,s2,0
    9d5c:	23d010ef          	jal	ra,b798 <__ssprint_r>
    9d60:	4a051c63          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9d64:	0ec10c13          	addi	s8,sp,236
    9d68:	00048793          	addi	a5,s1,0
    9d6c:	0004d463          	bge	s1,zero,9d74 <_svfprintf_r+0x1a08>
    9d70:	00000793          	addi	a5,zero,0
    9d74:	0ac12483          	lw	s1,172(sp)
    9d78:	409a04b3          	sub	s1,s4,s1
    9d7c:	40f484b3          	sub	s1,s1,a5
    9d80:	da905ce3          	bge	zero,s1,9b38 <_svfprintf_r+0x17cc>
    9d84:	01000a93          	addi	s5,zero,16
    9d88:	00700b93          	addi	s7,zero,7
    9d8c:	0c812783          	lw	a5,200(sp)
    9d90:	00008617          	auipc	a2,0x8
    9d94:	cf460613          	addi	a2,a2,-780 # 11a84 <zeroes.4499>
    9d98:	00cc2023          	sw	a2,0(s8)
    9d9c:	0cc12703          	lw	a4,204(sp)
    9da0:	00178793          	addi	a5,a5,1
    9da4:	008c0693          	addi	a3,s8,8
    9da8:	be9ad6e3          	bge	s5,s1,9994 <_svfprintf_r+0x1628>
    9dac:	01070713          	addi	a4,a4,16
    9db0:	015c2223          	sw	s5,4(s8)
    9db4:	0ce12623          	sw	a4,204(sp)
    9db8:	0cf12423          	sw	a5,200(sp)
    9dbc:	00fbde63          	bge	s7,a5,9dd8 <_svfprintf_r+0x1a6c>
    9dc0:	0c410613          	addi	a2,sp,196
    9dc4:	00098593          	addi	a1,s3,0
    9dc8:	00090513          	addi	a0,s2,0
    9dcc:	1cd010ef          	jal	ra,b798 <__ssprint_r>
    9dd0:	44051463          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9dd4:	0ec10693          	addi	a3,sp,236
    9dd8:	ff048493          	addi	s1,s1,-16
    9ddc:	00068c13          	addi	s8,a3,0
    9de0:	fadff06f          	jal	zero,9d8c <_svfprintf_r+0x1a20>
    9de4:	01068693          	addi	a3,a3,16
    9de8:	01ac2223          	sw	s10,4(s8)
    9dec:	0cd12623          	sw	a3,204(sp)
    9df0:	0ce12423          	sw	a4,200(sp)
    9df4:	00edde63          	bge	s11,a4,9e10 <_svfprintf_r+0x1aa4>
    9df8:	0c410613          	addi	a2,sp,196
    9dfc:	00098593          	addi	a1,s3,0
    9e00:	00090513          	addi	a0,s2,0
    9e04:	195010ef          	jal	ra,b798 <__ssprint_r>
    9e08:	40051863          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9e0c:	0ec10613          	addi	a2,sp,236
    9e10:	ff0a8a93          	addi	s5,s5,-16
    9e14:	00060c13          	addi	s8,a2,0
    9e18:	e11ff06f          	jal	zero,9c28 <_svfprintf_r+0x18bc>
    9e1c:	0e078663          	beq	a5,zero,9f08 <_svfprintf_r+0x1b9c>
    9e20:	00812783          	lw	a5,8(sp)
    9e24:	fff78793          	addi	a5,a5,-1
    9e28:	00f12423          	sw	a5,8(sp)
    9e2c:	02c12783          	lw	a5,44(sp)
    9e30:	02412703          	lw	a4,36(sp)
    9e34:	008c0c13          	addi	s8,s8,8
    9e38:	fefc2c23          	sw	a5,-8(s8)
    9e3c:	02412783          	lw	a5,36(sp)
    9e40:	fefc2e23          	sw	a5,-4(s8)
    9e44:	0cc12783          	lw	a5,204(sp)
    9e48:	00e787b3          	add	a5,a5,a4
    9e4c:	0cf12623          	sw	a5,204(sp)
    9e50:	0c812783          	lw	a5,200(sp)
    9e54:	00178793          	addi	a5,a5,1
    9e58:	0cf12423          	sw	a5,200(sp)
    9e5c:	00fd5e63          	bge	s10,a5,9e78 <_svfprintf_r+0x1b0c>
    9e60:	0c410613          	addi	a2,sp,196
    9e64:	00098593          	addi	a1,s3,0
    9e68:	00090513          	addi	a0,s2,0
    9e6c:	12d010ef          	jal	ra,b798 <__ssprint_r>
    9e70:	3a051463          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9e74:	0ec10c13          	addi	s8,sp,236
    9e78:	00412783          	lw	a5,4(sp)
    9e7c:	415d8733          	sub	a4,s11,s5
    9e80:	0007c783          	lbu	a5,0(a5)
    9e84:	00f75463          	bge	a4,a5,9e8c <_svfprintf_r+0x1b20>
    9e88:	00070793          	addi	a5,a4,0
    9e8c:	04f05663          	bge	zero,a5,9ed8 <_svfprintf_r+0x1b6c>
    9e90:	0cc12703          	lw	a4,204(sp)
    9e94:	015c2023          	sw	s5,0(s8)
    9e98:	00fc2223          	sw	a5,4(s8)
    9e9c:	00e78733          	add	a4,a5,a4
    9ea0:	0ce12623          	sw	a4,204(sp)
    9ea4:	0c812703          	lw	a4,200(sp)
    9ea8:	008c0c13          	addi	s8,s8,8
    9eac:	00170713          	addi	a4,a4,1
    9eb0:	0ce12423          	sw	a4,200(sp)
    9eb4:	02ed5263          	bge	s10,a4,9ed8 <_svfprintf_r+0x1b6c>
    9eb8:	0c410613          	addi	a2,sp,196
    9ebc:	00098593          	addi	a1,s3,0
    9ec0:	00090513          	addi	a0,s2,0
    9ec4:	02f12c23          	sw	a5,56(sp)
    9ec8:	0d1010ef          	jal	ra,b798 <__ssprint_r>
    9ecc:	34051663          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9ed0:	03812783          	lw	a5,56(sp)
    9ed4:	0ec10c13          	addi	s8,sp,236
    9ed8:	00078713          	addi	a4,a5,0
    9edc:	0007d463          	bge	a5,zero,9ee4 <_svfprintf_r+0x1b78>
    9ee0:	00000713          	addi	a4,zero,0
    9ee4:	00412783          	lw	a5,4(sp)
    9ee8:	01000813          	addi	a6,zero,16
    9eec:	0007c783          	lbu	a5,0(a5)
    9ef0:	40e787b3          	sub	a5,a5,a4
    9ef4:	06f04463          	blt	zero,a5,9f5c <_svfprintf_r+0x1bf0>
    9ef8:	00412783          	lw	a5,4(sp)
    9efc:	0007c783          	lbu	a5,0(a5)
    9f00:	00fa8ab3          	add	s5,s5,a5
    9f04:	d8dff06f          	jal	zero,9c90 <_svfprintf_r+0x1924>
    9f08:	00412783          	lw	a5,4(sp)
    9f0c:	fffb8b93          	addi	s7,s7,-1
    9f10:	fff78793          	addi	a5,a5,-1
    9f14:	00f12223          	sw	a5,4(sp)
    9f18:	f15ff06f          	jal	zero,9e2c <_svfprintf_r+0x1ac0>
    9f1c:	01068693          	addi	a3,a3,16
    9f20:	010c2223          	sw	a6,4(s8)
    9f24:	0cd12623          	sw	a3,204(sp)
    9f28:	0ce12423          	sw	a4,200(sp)
    9f2c:	02ed5463          	bge	s10,a4,9f54 <_svfprintf_r+0x1be8>
    9f30:	0c410613          	addi	a2,sp,196
    9f34:	00098593          	addi	a1,s3,0
    9f38:	00090513          	addi	a0,s2,0
    9f3c:	02f12c23          	sw	a5,56(sp)
    9f40:	059010ef          	jal	ra,b798 <__ssprint_r>
    9f44:	2c051a63          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9f48:	03812783          	lw	a5,56(sp)
    9f4c:	0ec10613          	addi	a2,sp,236
    9f50:	01000813          	addi	a6,zero,16
    9f54:	ff078793          	addi	a5,a5,-16
    9f58:	00060c13          	addi	s8,a2,0
    9f5c:	0c812703          	lw	a4,200(sp)
    9f60:	00008597          	auipc	a1,0x8
    9f64:	b2458593          	addi	a1,a1,-1244 # 11a84 <zeroes.4499>
    9f68:	00bc2023          	sw	a1,0(s8)
    9f6c:	0cc12683          	lw	a3,204(sp)
    9f70:	00170713          	addi	a4,a4,1
    9f74:	008c0613          	addi	a2,s8,8
    9f78:	faf842e3          	blt	a6,a5,9f1c <_svfprintf_r+0x1bb0>
    9f7c:	00fc2223          	sw	a5,4(s8)
    9f80:	00d787b3          	add	a5,a5,a3
    9f84:	0cf12623          	sw	a5,204(sp)
    9f88:	0ce12423          	sw	a4,200(sp)
    9f8c:	00060c13          	addi	s8,a2,0
    9f90:	f6ed54e3          	bge	s10,a4,9ef8 <_svfprintf_r+0x1b8c>
    9f94:	0c410613          	addi	a2,sp,196
    9f98:	00098593          	addi	a1,s3,0
    9f9c:	00090513          	addi	a0,s2,0
    9fa0:	7f8010ef          	jal	ra,b798 <__ssprint_r>
    9fa4:	26051a63          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    9fa8:	0ec10c13          	addi	s8,sp,236
    9fac:	f4dff06f          	jal	zero,9ef8 <_svfprintf_r+0x1b8c>
    9fb0:	0c812783          	lw	a5,200(sp)
    9fb4:	00100713          	addi	a4,zero,1
    9fb8:	009c2023          	sw	s1,0(s8)
    9fbc:	001d0d13          	addi	s10,s10,1
    9fc0:	00178793          	addi	a5,a5,1
    9fc4:	008c0b93          	addi	s7,s8,8
    9fc8:	01474663          	blt	a4,s4,9fd4 <_svfprintf_r+0x1c68>
    9fcc:	00147693          	andi	a3,s0,1
    9fd0:	1c068863          	beq	a3,zero,a1a0 <_svfprintf_r+0x1e34>
    9fd4:	00100713          	addi	a4,zero,1
    9fd8:	00ec2223          	sw	a4,4(s8)
    9fdc:	0da12623          	sw	s10,204(sp)
    9fe0:	0cf12423          	sw	a5,200(sp)
    9fe4:	00700713          	addi	a4,zero,7
    9fe8:	00f75e63          	bge	a4,a5,a004 <_svfprintf_r+0x1c98>
    9fec:	0c410613          	addi	a2,sp,196
    9ff0:	00098593          	addi	a1,s3,0
    9ff4:	00090513          	addi	a0,s2,0
    9ff8:	7a0010ef          	jal	ra,b798 <__ssprint_r>
    9ffc:	20051e63          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    a000:	0ec10b93          	addi	s7,sp,236
    a004:	02812783          	lw	a5,40(sp)
    a008:	01412703          	lw	a4,20(sp)
    a00c:	008b8b93          	addi	s7,s7,8
    a010:	fefbac23          	sw	a5,-8(s7)
    a014:	01412783          	lw	a5,20(sp)
    a018:	fefbae23          	sw	a5,-4(s7)
    a01c:	0cc12783          	lw	a5,204(sp)
    a020:	00e787b3          	add	a5,a5,a4
    a024:	0cf12623          	sw	a5,204(sp)
    a028:	0c812783          	lw	a5,200(sp)
    a02c:	00700713          	addi	a4,zero,7
    a030:	00178793          	addi	a5,a5,1
    a034:	0cf12423          	sw	a5,200(sp)
    a038:	00f75e63          	bge	a4,a5,a054 <_svfprintf_r+0x1ce8>
    a03c:	0c410613          	addi	a2,sp,196
    a040:	00098593          	addi	a1,s3,0
    a044:	00090513          	addi	a0,s2,0
    a048:	750010ef          	jal	ra,b798 <__ssprint_r>
    a04c:	1c051663          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    a050:	0ec10b93          	addi	s7,sp,236
    a054:	0d012783          	lw	a5,208(sp)
    a058:	08010593          	addi	a1,sp,128
    a05c:	09010513          	addi	a0,sp,144
    a060:	08f12823          	sw	a5,144(sp)
    a064:	0d412783          	lw	a5,212(sp)
    a068:	fffa0a93          	addi	s5,s4,-1
    a06c:	08012023          	sw	zero,128(sp)
    a070:	08f12a23          	sw	a5,148(sp)
    a074:	0d812783          	lw	a5,216(sp)
    a078:	08012223          	sw	zero,132(sp)
    a07c:	08012423          	sw	zero,136(sp)
    a080:	08f12c23          	sw	a5,152(sp)
    a084:	0dc12783          	lw	a5,220(sp)
    a088:	08012623          	sw	zero,140(sp)
    a08c:	08f12e23          	sw	a5,156(sp)
    a090:	775030ef          	jal	ra,e004 <__eqtf2>
    a094:	08050663          	beq	a0,zero,a120 <_svfprintf_r+0x1db4>
    a098:	0cc12783          	lw	a5,204(sp)
    a09c:	0c812703          	lw	a4,200(sp)
    a0a0:	00148493          	addi	s1,s1,1
    a0a4:	fff78793          	addi	a5,a5,-1
    a0a8:	014787b3          	add	a5,a5,s4
    a0ac:	00170713          	addi	a4,a4,1
    a0b0:	009ba023          	sw	s1,0(s7)
    a0b4:	015ba223          	sw	s5,4(s7)
    a0b8:	0cf12623          	sw	a5,204(sp)
    a0bc:	0ce12423          	sw	a4,200(sp)
    a0c0:	00700793          	addi	a5,zero,7
    a0c4:	008b8b93          	addi	s7,s7,8
    a0c8:	00e7de63          	bge	a5,a4,a0e4 <_svfprintf_r+0x1d78>
    a0cc:	0c410613          	addi	a2,sp,196
    a0d0:	00098593          	addi	a1,s3,0
    a0d4:	00090513          	addi	a0,s2,0
    a0d8:	6c0010ef          	jal	ra,b798 <__ssprint_r>
    a0dc:	12051e63          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    a0e0:	0ec10b93          	addi	s7,sp,236
    a0e4:	0b410793          	addi	a5,sp,180
    a0e8:	00fba023          	sw	a5,0(s7)
    a0ec:	03012783          	lw	a5,48(sp)
    a0f0:	03012703          	lw	a4,48(sp)
    a0f4:	008b8c13          	addi	s8,s7,8
    a0f8:	00fba223          	sw	a5,4(s7)
    a0fc:	0cc12783          	lw	a5,204(sp)
    a100:	00e787b3          	add	a5,a5,a4
    a104:	0cf12623          	sw	a5,204(sp)
    a108:	0c812783          	lw	a5,200(sp)
    a10c:	00700713          	addi	a4,zero,7
    a110:	00178793          	addi	a5,a5,1
    a114:	0cf12423          	sw	a5,200(sp)
    a118:	a2f750e3          	bge	a4,a5,9b38 <_svfprintf_r+0x17cc>
    a11c:	849fe06f          	jal	zero,8964 <_svfprintf_r+0x5f8>
    a120:	fd5052e3          	bge	zero,s5,a0e4 <_svfprintf_r+0x1d78>
    a124:	01000493          	addi	s1,zero,16
    a128:	00700c13          	addi	s8,zero,7
    a12c:	0c812703          	lw	a4,200(sp)
    a130:	00008617          	auipc	a2,0x8
    a134:	95460613          	addi	a2,a2,-1708 # 11a84 <zeroes.4499>
    a138:	00cba023          	sw	a2,0(s7)
    a13c:	0cc12783          	lw	a5,204(sp)
    a140:	00170713          	addi	a4,a4,1
    a144:	008b8693          	addi	a3,s7,8
    a148:	0354c063          	blt	s1,s5,a168 <_svfprintf_r+0x1dfc>
    a14c:	00fa87b3          	add	a5,s5,a5
    a150:	015ba223          	sw	s5,4(s7)
    a154:	0cf12623          	sw	a5,204(sp)
    a158:	0ce12423          	sw	a4,200(sp)
    a15c:	00700793          	addi	a5,zero,7
    a160:	00068b93          	addi	s7,a3,0
    a164:	f65ff06f          	jal	zero,a0c8 <_svfprintf_r+0x1d5c>
    a168:	01078793          	addi	a5,a5,16
    a16c:	009ba223          	sw	s1,4(s7)
    a170:	0cf12623          	sw	a5,204(sp)
    a174:	0ce12423          	sw	a4,200(sp)
    a178:	00ec5e63          	bge	s8,a4,a194 <_svfprintf_r+0x1e28>
    a17c:	0c410613          	addi	a2,sp,196
    a180:	00098593          	addi	a1,s3,0
    a184:	00090513          	addi	a0,s2,0
    a188:	610010ef          	jal	ra,b798 <__ssprint_r>
    a18c:	08051663          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    a190:	0ec10693          	addi	a3,sp,236
    a194:	ff0a8a93          	addi	s5,s5,-16
    a198:	00068b93          	addi	s7,a3,0
    a19c:	f91ff06f          	jal	zero,a12c <_svfprintf_r+0x1dc0>
    a1a0:	00ec2223          	sw	a4,4(s8)
    a1a4:	0da12623          	sw	s10,204(sp)
    a1a8:	0cf12423          	sw	a5,200(sp)
    a1ac:	00700713          	addi	a4,zero,7
    a1b0:	f2f75ae3          	bge	a4,a5,a0e4 <_svfprintf_r+0x1d78>
    a1b4:	f19ff06f          	jal	zero,a0cc <_svfprintf_r+0x1d60>
    a1b8:	01c12783          	lw	a5,28(sp)
    a1bc:	02012703          	lw	a4,32(sp)
    a1c0:	40e78433          	sub	s0,a5,a4
    a1c4:	96805ee3          	bge	zero,s0,9b40 <_svfprintf_r+0x17d4>
    a1c8:	01000a93          	addi	s5,zero,16
    a1cc:	00008497          	auipc	s1,0x8
    a1d0:	8a848493          	addi	s1,s1,-1880 # 11a74 <blanks.4498>
    a1d4:	00700b93          	addi	s7,zero,7
    a1d8:	0c812783          	lw	a5,200(sp)
    a1dc:	009c2023          	sw	s1,0(s8)
    a1e0:	0cc12703          	lw	a4,204(sp)
    a1e4:	00178793          	addi	a5,a5,1
    a1e8:	048ac463          	blt	s5,s0,a230 <_svfprintf_r+0x1ec4>
    a1ec:	008c2223          	sw	s0,4(s8)
    a1f0:	00e40433          	add	s0,s0,a4
    a1f4:	0c812623          	sw	s0,204(sp)
    a1f8:	0cf12423          	sw	a5,200(sp)
    a1fc:	00700713          	addi	a4,zero,7
    a200:	94f750e3          	bge	a4,a5,9b40 <_svfprintf_r+0x17d4>
    a204:	0c410613          	addi	a2,sp,196
    a208:	00098593          	addi	a1,s3,0
    a20c:	00090513          	addi	a0,s2,0
    a210:	588010ef          	jal	ra,b798 <__ssprint_r>
    a214:	920506e3          	beq	a0,zero,9b40 <_svfprintf_r+0x17d4>
    a218:	000b1463          	bne	s6,zero,a220 <_svfprintf_r+0x1eb4>
    a21c:	9a5fe06f          	jal	zero,8bc0 <_svfprintf_r+0x854>
    a220:	000b0593          	addi	a1,s6,0
    a224:	00090513          	addi	a0,s2,0
    a228:	e44f90ef          	jal	ra,386c <_free_r>
    a22c:	995fe06f          	jal	zero,8bc0 <_svfprintf_r+0x854>
    a230:	01070713          	addi	a4,a4,16
    a234:	015c2223          	sw	s5,4(s8)
    a238:	0ce12623          	sw	a4,204(sp)
    a23c:	0cf12423          	sw	a5,200(sp)
    a240:	008c0c13          	addi	s8,s8,8
    a244:	00fbde63          	bge	s7,a5,a260 <_svfprintf_r+0x1ef4>
    a248:	0c410613          	addi	a2,sp,196
    a24c:	00098593          	addi	a1,s3,0
    a250:	00090513          	addi	a0,s2,0
    a254:	544010ef          	jal	ra,b798 <__ssprint_r>
    a258:	fc0510e3          	bne	a0,zero,a218 <_svfprintf_r+0x1eac>
    a25c:	0ec10c13          	addi	s8,sp,236
    a260:	ff040413          	addi	s0,s0,-16
    a264:	f75ff06f          	jal	zero,a1d8 <_svfprintf_r+0x1e6c>
    a268:	000b0593          	addi	a1,s6,0
    a26c:	00090513          	addi	a0,s2,0
    a270:	dfcf90ef          	jal	ra,386c <_free_r>
    a274:	90dff06f          	jal	zero,9b80 <_svfprintf_r+0x1814>
    a278:	0cc12783          	lw	a5,204(sp)
    a27c:	00079463          	bne	a5,zero,a284 <_svfprintf_r+0x1f18>
    a280:	941fe06f          	jal	zero,8bc0 <_svfprintf_r+0x854>
    a284:	0c410613          	addi	a2,sp,196
    a288:	00098593          	addi	a1,s3,0
    a28c:	00090513          	addi	a0,s2,0
    a290:	508010ef          	jal	ra,b798 <__ssprint_r>
    a294:	92dfe06f          	jal	zero,8bc0 <_svfprintf_r+0x854>
    a298:	fff00793          	addi	a5,zero,-1
    a29c:	b4fd9263          	bne	s11,a5,95e0 <_svfprintf_r+0x1274>
    a2a0:	bc0c9463          	bne	s9,zero,9668 <_svfprintf_r+0x12fc>
    a2a4:	00900793          	addi	a5,zero,9
    a2a8:	bda7e063          	bltu	a5,s10,9668 <_svfprintf_r+0x12fc>
    a2ac:	030d0d13          	addi	s10,s10,48
    a2b0:	19a107a3          	sb	s10,399(sp)
    a2b4:	18f10493          	addi	s1,sp,399
    a2b8:	b88ff06f          	jal	zero,9640 <_svfprintf_r+0x12d4>

0000a2bc <__sprint_r>:
    a2bc:	00862783          	lw	a5,8(a2)
    a2c0:	fd010113          	addi	sp,sp,-48
    a2c4:	02812423          	sw	s0,40(sp)
    a2c8:	02112623          	sw	ra,44(sp)
    a2cc:	02912223          	sw	s1,36(sp)
    a2d0:	03212023          	sw	s2,32(sp)
    a2d4:	01312e23          	sw	s3,28(sp)
    a2d8:	01412c23          	sw	s4,24(sp)
    a2dc:	01512a23          	sw	s5,20(sp)
    a2e0:	01612823          	sw	s6,16(sp)
    a2e4:	01712623          	sw	s7,12(sp)
    a2e8:	01812423          	sw	s8,8(sp)
    a2ec:	00060413          	addi	s0,a2,0
    a2f0:	02079e63          	bne	a5,zero,a32c <__sprint_r+0x70>
    a2f4:	00062223          	sw	zero,4(a2)
    a2f8:	00000513          	addi	a0,zero,0
    a2fc:	02c12083          	lw	ra,44(sp)
    a300:	02812403          	lw	s0,40(sp)
    a304:	02412483          	lw	s1,36(sp)
    a308:	02012903          	lw	s2,32(sp)
    a30c:	01c12983          	lw	s3,28(sp)
    a310:	01812a03          	lw	s4,24(sp)
    a314:	01412a83          	lw	s5,20(sp)
    a318:	01012b03          	lw	s6,16(sp)
    a31c:	00c12b83          	lw	s7,12(sp)
    a320:	00812c03          	lw	s8,8(sp)
    a324:	03010113          	addi	sp,sp,48
    a328:	00008067          	jalr	zero,0(ra)
    a32c:	0645a783          	lw	a5,100(a1)
    a330:	00058993          	addi	s3,a1,0
    a334:	01279713          	slli	a4,a5,0x12
    a338:	06075863          	bge	a4,zero,a3a8 <__sprint_r+0xec>
    a33c:	00062483          	lw	s1,0(a2)
    a340:	00050a93          	addi	s5,a0,0
    a344:	fff00b13          	addi	s6,zero,-1
    a348:	0044a903          	lw	s2,4(s1)
    a34c:	0004ac03          	lw	s8,0(s1)
    a350:	00000a13          	addi	s4,zero,0
    a354:	00295b93          	srli	s7,s2,0x2
    a358:	037a4663          	blt	s4,s7,a384 <__sprint_r+0xc8>
    a35c:	00842783          	lw	a5,8(s0)
    a360:	ffc97913          	andi	s2,s2,-4
    a364:	00848493          	addi	s1,s1,8
    a368:	412787b3          	sub	a5,a5,s2
    a36c:	00f42423          	sw	a5,8(s0)
    a370:	fc079ce3          	bne	a5,zero,a348 <__sprint_r+0x8c>
    a374:	00000513          	addi	a0,zero,0
    a378:	00042423          	sw	zero,8(s0)
    a37c:	00042223          	sw	zero,4(s0)
    a380:	f7dff06f          	jal	zero,a2fc <__sprint_r+0x40>
    a384:	002a1793          	slli	a5,s4,0x2
    a388:	00fc07b3          	add	a5,s8,a5
    a38c:	0007a583          	lw	a1,0(a5)
    a390:	00098613          	addi	a2,s3,0
    a394:	000a8513          	addi	a0,s5,0
    a398:	104010ef          	jal	ra,b49c <_fputwc_r>
    a39c:	01650a63          	beq	a0,s6,a3b0 <__sprint_r+0xf4>
    a3a0:	001a0a13          	addi	s4,s4,1
    a3a4:	fb5ff06f          	jal	zero,a358 <__sprint_r+0x9c>
    a3a8:	f18f90ef          	jal	ra,3ac0 <__sfvwrite_r>
    a3ac:	fcdff06f          	jal	zero,a378 <__sprint_r+0xbc>
    a3b0:	fff00513          	addi	a0,zero,-1
    a3b4:	fc5ff06f          	jal	zero,a378 <__sprint_r+0xbc>

0000a3b8 <_vfiprintf_r>:
    a3b8:	ee010113          	addi	sp,sp,-288
    a3bc:	10812c23          	sw	s0,280(sp)
    a3c0:	11212823          	sw	s2,272(sp)
    a3c4:	11312623          	sw	s3,268(sp)
    a3c8:	11512223          	sw	s5,260(sp)
    a3cc:	10112e23          	sw	ra,284(sp)
    a3d0:	10912a23          	sw	s1,276(sp)
    a3d4:	11412423          	sw	s4,264(sp)
    a3d8:	11612023          	sw	s6,256(sp)
    a3dc:	0f712e23          	sw	s7,252(sp)
    a3e0:	0f812c23          	sw	s8,248(sp)
    a3e4:	0f912a23          	sw	s9,244(sp)
    a3e8:	0fa12823          	sw	s10,240(sp)
    a3ec:	0fb12623          	sw	s11,236(sp)
    a3f0:	00050993          	addi	s3,a0,0
    a3f4:	00058413          	addi	s0,a1,0
    a3f8:	00060a93          	addi	s5,a2,0
    a3fc:	00068913          	addi	s2,a3,0
    a400:	00050863          	beq	a0,zero,a410 <_vfiprintf_r+0x58>
    a404:	03852783          	lw	a5,56(a0)
    a408:	00079463          	bne	a5,zero,a410 <_vfiprintf_r+0x58>
    a40c:	9a8f90ef          	jal	ra,35b4 <__sinit>
    a410:	00c41783          	lh	a5,12(s0)
    a414:	01279713          	slli	a4,a5,0x12
    a418:	02074263          	blt	a4,zero,a43c <_vfiprintf_r+0x84>
    a41c:	000026b7          	lui	a3,0x2
    a420:	06442703          	lw	a4,100(s0)
    a424:	00d7e7b3          	or	a5,a5,a3
    a428:	00f41623          	sh	a5,12(s0)
    a42c:	ffffe7b7          	lui	a5,0xffffe
    a430:	fff78793          	addi	a5,a5,-1 # ffffdfff <__heap_top+0xffefdfff>
    a434:	00f777b3          	and	a5,a4,a5
    a438:	06f42223          	sw	a5,100(s0)
    a43c:	00c45783          	lhu	a5,12(s0)
    a440:	0087f793          	andi	a5,a5,8
    a444:	04078063          	beq	a5,zero,a484 <_vfiprintf_r+0xcc>
    a448:	01042783          	lw	a5,16(s0)
    a44c:	02078c63          	beq	a5,zero,a484 <_vfiprintf_r+0xcc>
    a450:	00c45783          	lhu	a5,12(s0)
    a454:	00a00713          	addi	a4,zero,10
    a458:	01a7f793          	andi	a5,a5,26
    a45c:	06e79e63          	bne	a5,a4,a4d8 <_vfiprintf_r+0x120>
    a460:	00e41783          	lh	a5,14(s0)
    a464:	0607ca63          	blt	a5,zero,a4d8 <_vfiprintf_r+0x120>
    a468:	00090693          	addi	a3,s2,0
    a46c:	000a8613          	addi	a2,s5,0
    a470:	00040593          	addi	a1,s0,0
    a474:	00098513          	addi	a0,s3,0
    a478:	3f1000ef          	jal	ra,b068 <__sbprintf>
    a47c:	00050b93          	addi	s7,a0,0
    a480:	0180006f          	jal	zero,a498 <_vfiprintf_r+0xe0>
    a484:	00040593          	addi	a1,s0,0
    a488:	00098513          	addi	a0,s3,0
    a48c:	abdf80ef          	jal	ra,2f48 <__swsetup_r>
    a490:	fc0500e3          	beq	a0,zero,a450 <_vfiprintf_r+0x98>
    a494:	fff00b93          	addi	s7,zero,-1
    a498:	11c12083          	lw	ra,284(sp)
    a49c:	11812403          	lw	s0,280(sp)
    a4a0:	000b8513          	addi	a0,s7,0
    a4a4:	11412483          	lw	s1,276(sp)
    a4a8:	11012903          	lw	s2,272(sp)
    a4ac:	10c12983          	lw	s3,268(sp)
    a4b0:	10812a03          	lw	s4,264(sp)
    a4b4:	10412a83          	lw	s5,260(sp)
    a4b8:	10012b03          	lw	s6,256(sp)
    a4bc:	0fc12b83          	lw	s7,252(sp)
    a4c0:	0f812c03          	lw	s8,248(sp)
    a4c4:	0f412c83          	lw	s9,244(sp)
    a4c8:	0f012d03          	lw	s10,240(sp)
    a4cc:	0ec12d83          	lw	s11,236(sp)
    a4d0:	12010113          	addi	sp,sp,288
    a4d4:	00008067          	jalr	zero,0(ra)
    a4d8:	03c10b13          	addi	s6,sp,60
    a4dc:	03612823          	sw	s6,48(sp)
    a4e0:	02012c23          	sw	zero,56(sp)
    a4e4:	02012a23          	sw	zero,52(sp)
    a4e8:	000b0713          	addi	a4,s6,0
    a4ec:	00012423          	sw	zero,8(sp)
    a4f0:	00012223          	sw	zero,4(sp)
    a4f4:	00012623          	sw	zero,12(sp)
    a4f8:	00012823          	sw	zero,16(sp)
    a4fc:	00000b93          	addi	s7,zero,0
    a500:	000a8493          	addi	s1,s5,0
    a504:	02500693          	addi	a3,zero,37
    a508:	0004c783          	lbu	a5,0(s1)
    a50c:	00078463          	beq	a5,zero,a514 <_vfiprintf_r+0x15c>
    a510:	0ad79463          	bne	a5,a3,a5b8 <_vfiprintf_r+0x200>
    a514:	41548a33          	sub	s4,s1,s5
    a518:	040a0663          	beq	s4,zero,a564 <_vfiprintf_r+0x1ac>
    a51c:	03812783          	lw	a5,56(sp)
    a520:	01572023          	sw	s5,0(a4)
    a524:	01472223          	sw	s4,4(a4)
    a528:	014787b3          	add	a5,a5,s4
    a52c:	02f12c23          	sw	a5,56(sp)
    a530:	03412783          	lw	a5,52(sp)
    a534:	00700693          	addi	a3,zero,7
    a538:	00870713          	addi	a4,a4,8
    a53c:	00178793          	addi	a5,a5,1
    a540:	02f12a23          	sw	a5,52(sp)
    a544:	00f6de63          	bge	a3,a5,a560 <_vfiprintf_r+0x1a8>
    a548:	03010613          	addi	a2,sp,48
    a54c:	00040593          	addi	a1,s0,0
    a550:	00098513          	addi	a0,s3,0
    a554:	d69ff0ef          	jal	ra,a2bc <__sprint_r>
    a558:	260518e3          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    a55c:	000b0713          	addi	a4,s6,0
    a560:	014b8bb3          	add	s7,s7,s4
    a564:	0004c783          	lbu	a5,0(s1)
    a568:	2a0784e3          	beq	a5,zero,b010 <_vfiprintf_r+0xc58>
    a56c:	00148693          	addi	a3,s1,1
    a570:	020105a3          	sb	zero,43(sp)
    a574:	fff00493          	addi	s1,zero,-1
    a578:	00000a13          	addi	s4,zero,0
    a57c:	00000d13          	addi	s10,zero,0
    a580:	00900c13          	addi	s8,zero,9
    a584:	02a00c93          	addi	s9,zero,42
    a588:	0006c603          	lbu	a2,0(a3) # 2000 <_vfprintf_r+0x1138>
    a58c:	00168a93          	addi	s5,a3,1
    a590:	05a00513          	addi	a0,zero,90
    a594:	fe060693          	addi	a3,a2,-32
    a598:	0ed564e3          	bltu	a0,a3,ae80 <_vfiprintf_r+0xac8>
    a59c:	00007797          	auipc	a5,0x7
    a5a0:	4f878793          	addi	a5,a5,1272 # 11a94 <zeroes.4499+0x10>
    a5a4:	00269693          	slli	a3,a3,0x2
    a5a8:	00f686b3          	add	a3,a3,a5
    a5ac:	0006a683          	lw	a3,0(a3)
    a5b0:	00f686b3          	add	a3,a3,a5
    a5b4:	00068067          	jalr	zero,0(a3)
    a5b8:	00148493          	addi	s1,s1,1
    a5bc:	f4dff06f          	jal	zero,a508 <_vfiprintf_r+0x150>
    a5c0:	00007797          	auipc	a5,0x7
    a5c4:	f6878793          	addi	a5,a5,-152 # 11528 <zeroes.4514+0x20>
    a5c8:	00f12423          	sw	a5,8(sp)
    a5cc:	020d7693          	andi	a3,s10,32
    a5d0:	6c068063          	beq	a3,zero,ac90 <_vfiprintf_r+0x8d8>
    a5d4:	00790913          	addi	s2,s2,7
    a5d8:	ff897913          	andi	s2,s2,-8
    a5dc:	00092d83          	lw	s11,0(s2)
    a5e0:	00492c83          	lw	s9,4(s2)
    a5e4:	00890c13          	addi	s8,s2,8
    a5e8:	001d7693          	andi	a3,s10,1
    a5ec:	00068e63          	beq	a3,zero,a608 <_vfiprintf_r+0x250>
    a5f0:	019de6b3          	or	a3,s11,s9
    a5f4:	00068a63          	beq	a3,zero,a608 <_vfiprintf_r+0x250>
    a5f8:	03000693          	addi	a3,zero,48
    a5fc:	02d10623          	sb	a3,44(sp)
    a600:	02c106a3          	sb	a2,45(sp)
    a604:	002d6d13          	ori	s10,s10,2
    a608:	bffd7d13          	andi	s10,s10,-1025
    a60c:	3140006f          	jal	zero,a920 <_vfiprintf_r+0x568>
    a610:	00098513          	addi	a0,s3,0
    a614:	00e12023          	sw	a4,0(sp)
    a618:	9e9fb0ef          	jal	ra,6000 <_localeconv_r>
    a61c:	00452783          	lw	a5,4(a0)
    a620:	00078513          	addi	a0,a5,0
    a624:	00f12823          	sw	a5,16(sp)
    a628:	885f60ef          	jal	ra,eac <strlen>
    a62c:	00a12623          	sw	a0,12(sp)
    a630:	00098513          	addi	a0,s3,0
    a634:	9cdfb0ef          	jal	ra,6000 <_localeconv_r>
    a638:	00852783          	lw	a5,8(a0)
    a63c:	00012703          	lw	a4,0(sp)
    a640:	00f12223          	sw	a5,4(sp)
    a644:	00c12783          	lw	a5,12(sp)
    a648:	00078c63          	beq	a5,zero,a660 <_vfiprintf_r+0x2a8>
    a64c:	00412783          	lw	a5,4(sp)
    a650:	00078863          	beq	a5,zero,a660 <_vfiprintf_r+0x2a8>
    a654:	0007c683          	lbu	a3,0(a5)
    a658:	00068463          	beq	a3,zero,a660 <_vfiprintf_r+0x2a8>
    a65c:	400d6d13          	ori	s10,s10,1024
    a660:	000a8693          	addi	a3,s5,0
    a664:	f25ff06f          	jal	zero,a588 <_vfiprintf_r+0x1d0>
    a668:	02b14683          	lbu	a3,43(sp)
    a66c:	fe069ae3          	bne	a3,zero,a660 <_vfiprintf_r+0x2a8>
    a670:	02000693          	addi	a3,zero,32
    a674:	02d105a3          	sb	a3,43(sp)
    a678:	fe9ff06f          	jal	zero,a660 <_vfiprintf_r+0x2a8>
    a67c:	001d6d13          	ori	s10,s10,1
    a680:	fe1ff06f          	jal	zero,a660 <_vfiprintf_r+0x2a8>
    a684:	00092a03          	lw	s4,0(s2)
    a688:	00490913          	addi	s2,s2,4
    a68c:	fc0a5ae3          	bge	s4,zero,a660 <_vfiprintf_r+0x2a8>
    a690:	41400a33          	sub	s4,zero,s4
    a694:	004d6d13          	ori	s10,s10,4
    a698:	fc9ff06f          	jal	zero,a660 <_vfiprintf_r+0x2a8>
    a69c:	02b00693          	addi	a3,zero,43
    a6a0:	fd5ff06f          	jal	zero,a674 <_vfiprintf_r+0x2bc>
    a6a4:	000ac603          	lbu	a2,0(s5)
    a6a8:	001a8693          	addi	a3,s5,1
    a6ac:	05961263          	bne	a2,s9,a6f0 <_vfiprintf_r+0x338>
    a6b0:	00092483          	lw	s1,0(s2)
    a6b4:	00490613          	addi	a2,s2,4
    a6b8:	0004d463          	bge	s1,zero,a6c0 <_vfiprintf_r+0x308>
    a6bc:	fff00493          	addi	s1,zero,-1
    a6c0:	00060913          	addi	s2,a2,0
    a6c4:	00068a93          	addi	s5,a3,0
    a6c8:	f99ff06f          	jal	zero,a660 <_vfiprintf_r+0x2a8>
    a6cc:	00a00793          	addi	a5,zero,10
    a6d0:	02f484b3          	mul	s1,s1,a5
    a6d4:	00168693          	addi	a3,a3,1
    a6d8:	fff6c603          	lbu	a2,-1(a3)
    a6dc:	00b484b3          	add	s1,s1,a1
    a6e0:	fd060593          	addi	a1,a2,-48
    a6e4:	febc74e3          	bgeu	s8,a1,a6cc <_vfiprintf_r+0x314>
    a6e8:	00068a93          	addi	s5,a3,0
    a6ec:	ea9ff06f          	jal	zero,a594 <_vfiprintf_r+0x1dc>
    a6f0:	00000493          	addi	s1,zero,0
    a6f4:	fedff06f          	jal	zero,a6e0 <_vfiprintf_r+0x328>
    a6f8:	080d6d13          	ori	s10,s10,128
    a6fc:	f65ff06f          	jal	zero,a660 <_vfiprintf_r+0x2a8>
    a700:	000a8693          	addi	a3,s5,0
    a704:	00000a13          	addi	s4,zero,0
    a708:	00a00793          	addi	a5,zero,10
    a70c:	02fa0a33          	mul	s4,s4,a5
    a710:	fd060613          	addi	a2,a2,-48
    a714:	00168693          	addi	a3,a3,1
    a718:	01460a33          	add	s4,a2,s4
    a71c:	fff6c603          	lbu	a2,-1(a3)
    a720:	fd060593          	addi	a1,a2,-48
    a724:	febc72e3          	bgeu	s8,a1,a708 <_vfiprintf_r+0x350>
    a728:	fc1ff06f          	jal	zero,a6e8 <_vfiprintf_r+0x330>
    a72c:	000ac603          	lbu	a2,0(s5)
    a730:	06800693          	addi	a3,zero,104
    a734:	00d61863          	bne	a2,a3,a744 <_vfiprintf_r+0x38c>
    a738:	001a8a93          	addi	s5,s5,1
    a73c:	200d6d13          	ori	s10,s10,512
    a740:	f21ff06f          	jal	zero,a660 <_vfiprintf_r+0x2a8>
    a744:	040d6d13          	ori	s10,s10,64
    a748:	f19ff06f          	jal	zero,a660 <_vfiprintf_r+0x2a8>
    a74c:	000ac603          	lbu	a2,0(s5)
    a750:	06c00693          	addi	a3,zero,108
    a754:	00d61863          	bne	a2,a3,a764 <_vfiprintf_r+0x3ac>
    a758:	001a8a93          	addi	s5,s5,1
    a75c:	020d6d13          	ori	s10,s10,32
    a760:	f01ff06f          	jal	zero,a660 <_vfiprintf_r+0x2a8>
    a764:	010d6d13          	ori	s10,s10,16
    a768:	ef9ff06f          	jal	zero,a660 <_vfiprintf_r+0x2a8>
    a76c:	00092683          	lw	a3,0(s2)
    a770:	00490c13          	addi	s8,s2,4
    a774:	020105a3          	sb	zero,43(sp)
    a778:	06d10e23          	sb	a3,124(sp)
    a77c:	00100493          	addi	s1,zero,1
    a780:	00000c93          	addi	s9,zero,0
    a784:	07c10913          	addi	s2,sp,124
    a788:	1d80006f          	jal	zero,a960 <_vfiprintf_r+0x5a8>
    a78c:	010d6d13          	ori	s10,s10,16
    a790:	020d7693          	andi	a3,s10,32
    a794:	06068263          	beq	a3,zero,a7f8 <_vfiprintf_r+0x440>
    a798:	00790913          	addi	s2,s2,7
    a79c:	ff897913          	andi	s2,s2,-8
    a7a0:	00092d83          	lw	s11,0(s2)
    a7a4:	00492c83          	lw	s9,4(s2)
    a7a8:	00890c13          	addi	s8,s2,8
    a7ac:	080cd0e3          	bge	s9,zero,b02c <_vfiprintf_r+0xc74>
    a7b0:	41b00333          	sub	t1,zero,s11
    a7b4:	006036b3          	sltu	a3,zero,t1
    a7b8:	41900833          	sub	a6,zero,s9
    a7bc:	40d80cb3          	sub	s9,a6,a3
    a7c0:	02d00693          	addi	a3,zero,45
    a7c4:	02d105a3          	sb	a3,43(sp)
    a7c8:	00030d93          	addi	s11,t1,0
    a7cc:	00100693          	addi	a3,zero,1
    a7d0:	fff00613          	addi	a2,zero,-1
    a7d4:	50c48063          	beq	s1,a2,acd4 <_vfiprintf_r+0x91c>
    a7d8:	000d0613          	addi	a2,s10,0
    a7dc:	019de5b3          	or	a1,s11,s9
    a7e0:	f7fd7d13          	andi	s10,s10,-129
    a7e4:	4e059863          	bne	a1,zero,acd4 <_vfiprintf_r+0x91c>
    a7e8:	66048e63          	beq	s1,zero,ae64 <_vfiprintf_r+0xaac>
    a7ec:	00100613          	addi	a2,zero,1
    a7f0:	4ec69663          	bne	a3,a2,acdc <_vfiprintf_r+0x924>
    a7f4:	04d0006f          	jal	zero,b040 <_vfiprintf_r+0xc88>
    a7f8:	010d7693          	andi	a3,s10,16
    a7fc:	00490c13          	addi	s8,s2,4
    a800:	00068863          	beq	a3,zero,a810 <_vfiprintf_r+0x458>
    a804:	00092d83          	lw	s11,0(s2)
    a808:	41fddc93          	srai	s9,s11,0x1f
    a80c:	fa1ff06f          	jal	zero,a7ac <_vfiprintf_r+0x3f4>
    a810:	040d7693          	andi	a3,s10,64
    a814:	00092303          	lw	t1,0(s2)
    a818:	00068863          	beq	a3,zero,a828 <_vfiprintf_r+0x470>
    a81c:	01031d93          	slli	s11,t1,0x10
    a820:	410ddd93          	srai	s11,s11,0x10
    a824:	fe5ff06f          	jal	zero,a808 <_vfiprintf_r+0x450>
    a828:	200d7693          	andi	a3,s10,512
    a82c:	00030d93          	addi	s11,t1,0
    a830:	fc068ce3          	beq	a3,zero,a808 <_vfiprintf_r+0x450>
    a834:	01831d93          	slli	s11,t1,0x18
    a838:	418ddd93          	srai	s11,s11,0x18
    a83c:	fcdff06f          	jal	zero,a808 <_vfiprintf_r+0x450>
    a840:	020d7613          	andi	a2,s10,32
    a844:	00092683          	lw	a3,0(s2)
    a848:	00490913          	addi	s2,s2,4
    a84c:	00060a63          	beq	a2,zero,a860 <_vfiprintf_r+0x4a8>
    a850:	41fbd793          	srai	a5,s7,0x1f
    a854:	0176a023          	sw	s7,0(a3)
    a858:	00f6a223          	sw	a5,4(a3)
    a85c:	ca5ff06f          	jal	zero,a500 <_vfiprintf_r+0x148>
    a860:	010d7613          	andi	a2,s10,16
    a864:	00060663          	beq	a2,zero,a870 <_vfiprintf_r+0x4b8>
    a868:	0176a023          	sw	s7,0(a3)
    a86c:	c95ff06f          	jal	zero,a500 <_vfiprintf_r+0x148>
    a870:	040d7613          	andi	a2,s10,64
    a874:	00060663          	beq	a2,zero,a880 <_vfiprintf_r+0x4c8>
    a878:	01769023          	sh	s7,0(a3)
    a87c:	c85ff06f          	jal	zero,a500 <_vfiprintf_r+0x148>
    a880:	200d7793          	andi	a5,s10,512
    a884:	fe0782e3          	beq	a5,zero,a868 <_vfiprintf_r+0x4b0>
    a888:	01768023          	sb	s7,0(a3)
    a88c:	c75ff06f          	jal	zero,a500 <_vfiprintf_r+0x148>
    a890:	010d6d13          	ori	s10,s10,16
    a894:	020d7693          	andi	a3,s10,32
    a898:	02068463          	beq	a3,zero,a8c0 <_vfiprintf_r+0x508>
    a89c:	00790913          	addi	s2,s2,7
    a8a0:	ff897913          	andi	s2,s2,-8
    a8a4:	00092d83          	lw	s11,0(s2)
    a8a8:	00492c83          	lw	s9,4(s2)
    a8ac:	00890c13          	addi	s8,s2,8
    a8b0:	bffd7d13          	andi	s10,s10,-1025
    a8b4:	00000693          	addi	a3,zero,0
    a8b8:	020105a3          	sb	zero,43(sp)
    a8bc:	f15ff06f          	jal	zero,a7d0 <_vfiprintf_r+0x418>
    a8c0:	010d7693          	andi	a3,s10,16
    a8c4:	00490c13          	addi	s8,s2,4
    a8c8:	00068663          	beq	a3,zero,a8d4 <_vfiprintf_r+0x51c>
    a8cc:	00092d83          	lw	s11,0(s2)
    a8d0:	0100006f          	jal	zero,a8e0 <_vfiprintf_r+0x528>
    a8d4:	040d7693          	andi	a3,s10,64
    a8d8:	00068863          	beq	a3,zero,a8e8 <_vfiprintf_r+0x530>
    a8dc:	00095d83          	lhu	s11,0(s2)
    a8e0:	00000c93          	addi	s9,zero,0
    a8e4:	fcdff06f          	jal	zero,a8b0 <_vfiprintf_r+0x4f8>
    a8e8:	200d7693          	andi	a3,s10,512
    a8ec:	fe0680e3          	beq	a3,zero,a8cc <_vfiprintf_r+0x514>
    a8f0:	00094d83          	lbu	s11,0(s2)
    a8f4:	fedff06f          	jal	zero,a8e0 <_vfiprintf_r+0x528>
    a8f8:	ffff86b7          	lui	a3,0xffff8
    a8fc:	00092d83          	lw	s11,0(s2)
    a900:	8306c693          	xori	a3,a3,-2000
    a904:	00007797          	auipc	a5,0x7
    a908:	c2478793          	addi	a5,a5,-988 # 11528 <zeroes.4514+0x20>
    a90c:	00490c13          	addi	s8,s2,4
    a910:	00000c93          	addi	s9,zero,0
    a914:	002d6d13          	ori	s10,s10,2
    a918:	02d11623          	sh	a3,44(sp)
    a91c:	00f12423          	sw	a5,8(sp)
    a920:	00200693          	addi	a3,zero,2
    a924:	f95ff06f          	jal	zero,a8b8 <_vfiprintf_r+0x500>
    a928:	020105a3          	sb	zero,43(sp)
    a92c:	fff00693          	addi	a3,zero,-1
    a930:	00e12023          	sw	a4,0(sp)
    a934:	00490c13          	addi	s8,s2,4
    a938:	00092903          	lw	s2,0(s2)
    a93c:	2cd48863          	beq	s1,a3,ac0c <_vfiprintf_r+0x854>
    a940:	00048613          	addi	a2,s1,0
    a944:	00000593          	addi	a1,zero,0
    a948:	00090513          	addi	a0,s2,0
    a94c:	824fc0ef          	jal	ra,6970 <memchr>
    a950:	00000c93          	addi	s9,zero,0
    a954:	00012703          	lw	a4,0(sp)
    a958:	00050463          	beq	a0,zero,a960 <_vfiprintf_r+0x5a8>
    a95c:	412504b3          	sub	s1,a0,s2
    a960:	01912023          	sw	s9,0(sp)
    a964:	009cd463          	bge	s9,s1,a96c <_vfiprintf_r+0x5b4>
    a968:	00912023          	sw	s1,0(sp)
    a96c:	02b14683          	lbu	a3,43(sp)
    a970:	00068863          	beq	a3,zero,a980 <_vfiprintf_r+0x5c8>
    a974:	00012783          	lw	a5,0(sp)
    a978:	00178793          	addi	a5,a5,1
    a97c:	00f12023          	sw	a5,0(sp)
    a980:	002d7d93          	andi	s11,s10,2
    a984:	000d8863          	beq	s11,zero,a994 <_vfiprintf_r+0x5dc>
    a988:	00012783          	lw	a5,0(sp)
    a98c:	00278793          	addi	a5,a5,2
    a990:	00f12023          	sw	a5,0(sp)
    a994:	084d7793          	andi	a5,s10,132
    a998:	00f12a23          	sw	a5,20(sp)
    a99c:	06079663          	bne	a5,zero,aa08 <_vfiprintf_r+0x650>
    a9a0:	00012783          	lw	a5,0(sp)
    a9a4:	40fa06b3          	sub	a3,s4,a5
    a9a8:	06d05063          	bge	zero,a3,aa08 <_vfiprintf_r+0x650>
    a9ac:	01000893          	addi	a7,zero,16
    a9b0:	00007817          	auipc	a6,0x7
    a9b4:	25080813          	addi	a6,a6,592 # 11c00 <blanks.4489>
    a9b8:	00700313          	addi	t1,zero,7
    a9bc:	03412603          	lw	a2,52(sp)
    a9c0:	01072023          	sw	a6,0(a4)
    a9c4:	03812583          	lw	a1,56(sp)
    a9c8:	00160613          	addi	a2,a2,1
    a9cc:	00870513          	addi	a0,a4,8
    a9d0:	4cd8c263          	blt	a7,a3,ae94 <_vfiprintf_r+0xadc>
    a9d4:	00d72223          	sw	a3,4(a4)
    a9d8:	00b686b3          	add	a3,a3,a1
    a9dc:	02d12c23          	sw	a3,56(sp)
    a9e0:	02c12a23          	sw	a2,52(sp)
    a9e4:	00700693          	addi	a3,zero,7
    a9e8:	00050713          	addi	a4,a0,0
    a9ec:	00c6de63          	bge	a3,a2,aa08 <_vfiprintf_r+0x650>
    a9f0:	03010613          	addi	a2,sp,48
    a9f4:	00040593          	addi	a1,s0,0
    a9f8:	00098513          	addi	a0,s3,0
    a9fc:	8c1ff0ef          	jal	ra,a2bc <__sprint_r>
    aa00:	5c051463          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    aa04:	000b0713          	addi	a4,s6,0
    aa08:	02b14683          	lbu	a3,43(sp)
    aa0c:	04068863          	beq	a3,zero,aa5c <_vfiprintf_r+0x6a4>
    aa10:	02b10613          	addi	a2,sp,43
    aa14:	00c72023          	sw	a2,0(a4)
    aa18:	00100613          	addi	a2,zero,1
    aa1c:	03412683          	lw	a3,52(sp)
    aa20:	00c72223          	sw	a2,4(a4)
    aa24:	03812603          	lw	a2,56(sp)
    aa28:	00168693          	addi	a3,a3,1 # ffff8001 <__heap_top+0xffef8001>
    aa2c:	02d12a23          	sw	a3,52(sp)
    aa30:	00160613          	addi	a2,a2,1
    aa34:	02c12c23          	sw	a2,56(sp)
    aa38:	00700613          	addi	a2,zero,7
    aa3c:	00870713          	addi	a4,a4,8
    aa40:	00d65e63          	bge	a2,a3,aa5c <_vfiprintf_r+0x6a4>
    aa44:	03010613          	addi	a2,sp,48
    aa48:	00040593          	addi	a1,s0,0
    aa4c:	00098513          	addi	a0,s3,0
    aa50:	86dff0ef          	jal	ra,a2bc <__sprint_r>
    aa54:	56051a63          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    aa58:	000b0713          	addi	a4,s6,0
    aa5c:	040d8863          	beq	s11,zero,aaac <_vfiprintf_r+0x6f4>
    aa60:	02c10613          	addi	a2,sp,44
    aa64:	00c72023          	sw	a2,0(a4)
    aa68:	00200613          	addi	a2,zero,2
    aa6c:	03412683          	lw	a3,52(sp)
    aa70:	00c72223          	sw	a2,4(a4)
    aa74:	03812603          	lw	a2,56(sp)
    aa78:	00168693          	addi	a3,a3,1
    aa7c:	02d12a23          	sw	a3,52(sp)
    aa80:	00260613          	addi	a2,a2,2
    aa84:	02c12c23          	sw	a2,56(sp)
    aa88:	00700613          	addi	a2,zero,7
    aa8c:	00870713          	addi	a4,a4,8
    aa90:	00d65e63          	bge	a2,a3,aaac <_vfiprintf_r+0x6f4>
    aa94:	03010613          	addi	a2,sp,48
    aa98:	00040593          	addi	a1,s0,0
    aa9c:	00098513          	addi	a0,s3,0
    aaa0:	81dff0ef          	jal	ra,a2bc <__sprint_r>
    aaa4:	52051263          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    aaa8:	000b0713          	addi	a4,s6,0
    aaac:	01412783          	lw	a5,20(sp)
    aab0:	08000693          	addi	a3,zero,128
    aab4:	06d79663          	bne	a5,a3,ab20 <_vfiprintf_r+0x768>
    aab8:	00012783          	lw	a5,0(sp)
    aabc:	40fa0db3          	sub	s11,s4,a5
    aac0:	07b05063          	bge	zero,s11,ab20 <_vfiprintf_r+0x768>
    aac4:	01000893          	addi	a7,zero,16
    aac8:	00007817          	auipc	a6,0x7
    aacc:	14880813          	addi	a6,a6,328 # 11c10 <zeroes.4490>
    aad0:	00700313          	addi	t1,zero,7
    aad4:	03412683          	lw	a3,52(sp)
    aad8:	01072023          	sw	a6,0(a4)
    aadc:	03812603          	lw	a2,56(sp)
    aae0:	00168693          	addi	a3,a3,1
    aae4:	00870593          	addi	a1,a4,8
    aae8:	3fb8ce63          	blt	a7,s11,aee4 <_vfiprintf_r+0xb2c>
    aaec:	01b72223          	sw	s11,4(a4)
    aaf0:	00cd8db3          	add	s11,s11,a2
    aaf4:	03b12c23          	sw	s11,56(sp)
    aaf8:	02d12a23          	sw	a3,52(sp)
    aafc:	00700613          	addi	a2,zero,7
    ab00:	00058713          	addi	a4,a1,0
    ab04:	00d65e63          	bge	a2,a3,ab20 <_vfiprintf_r+0x768>
    ab08:	03010613          	addi	a2,sp,48
    ab0c:	00040593          	addi	a1,s0,0
    ab10:	00098513          	addi	a0,s3,0
    ab14:	fa8ff0ef          	jal	ra,a2bc <__sprint_r>
    ab18:	4a051863          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    ab1c:	000b0713          	addi	a4,s6,0
    ab20:	409c8cb3          	sub	s9,s9,s1
    ab24:	07905063          	bge	zero,s9,ab84 <_vfiprintf_r+0x7cc>
    ab28:	01000813          	addi	a6,zero,16
    ab2c:	00007d97          	auipc	s11,0x7
    ab30:	0e4d8d93          	addi	s11,s11,228 # 11c10 <zeroes.4490>
    ab34:	00700893          	addi	a7,zero,7
    ab38:	03412683          	lw	a3,52(sp)
    ab3c:	01b72023          	sw	s11,0(a4)
    ab40:	03812603          	lw	a2,56(sp)
    ab44:	00168693          	addi	a3,a3,1
    ab48:	00870593          	addi	a1,a4,8
    ab4c:	3f984063          	blt	a6,s9,af2c <_vfiprintf_r+0xb74>
    ab50:	01972223          	sw	s9,4(a4)
    ab54:	00cc8cb3          	add	s9,s9,a2
    ab58:	03912c23          	sw	s9,56(sp)
    ab5c:	02d12a23          	sw	a3,52(sp)
    ab60:	00700613          	addi	a2,zero,7
    ab64:	00058713          	addi	a4,a1,0
    ab68:	00d65e63          	bge	a2,a3,ab84 <_vfiprintf_r+0x7cc>
    ab6c:	03010613          	addi	a2,sp,48
    ab70:	00040593          	addi	a1,s0,0
    ab74:	00098513          	addi	a0,s3,0
    ab78:	f44ff0ef          	jal	ra,a2bc <__sprint_r>
    ab7c:	44051663          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    ab80:	000b0713          	addi	a4,s6,0
    ab84:	03812683          	lw	a3,56(sp)
    ab88:	00972223          	sw	s1,4(a4)
    ab8c:	01272023          	sw	s2,0(a4)
    ab90:	009684b3          	add	s1,a3,s1
    ab94:	03412683          	lw	a3,52(sp)
    ab98:	02912c23          	sw	s1,56(sp)
    ab9c:	00700613          	addi	a2,zero,7
    aba0:	00168693          	addi	a3,a3,1
    aba4:	02d12a23          	sw	a3,52(sp)
    aba8:	00870713          	addi	a4,a4,8
    abac:	00d65e63          	bge	a2,a3,abc8 <_vfiprintf_r+0x810>
    abb0:	03010613          	addi	a2,sp,48
    abb4:	00040593          	addi	a1,s0,0
    abb8:	00098513          	addi	a0,s3,0
    abbc:	f00ff0ef          	jal	ra,a2bc <__sprint_r>
    abc0:	40051463          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    abc4:	000b0713          	addi	a4,s6,0
    abc8:	004d7793          	andi	a5,s10,4
    abcc:	3a079063          	bne	a5,zero,af6c <_vfiprintf_r+0xbb4>
    abd0:	00012783          	lw	a5,0(sp)
    abd4:	00fa5463          	bge	s4,a5,abdc <_vfiprintf_r+0x824>
    abd8:	00078a13          	addi	s4,a5,0
    abdc:	03812783          	lw	a5,56(sp)
    abe0:	014b8bb3          	add	s7,s7,s4
    abe4:	00078c63          	beq	a5,zero,abfc <_vfiprintf_r+0x844>
    abe8:	03010613          	addi	a2,sp,48
    abec:	00040593          	addi	a1,s0,0
    abf0:	00098513          	addi	a0,s3,0
    abf4:	ec8ff0ef          	jal	ra,a2bc <__sprint_r>
    abf8:	3c051863          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    abfc:	02012a23          	sw	zero,52(sp)
    ac00:	000c0913          	addi	s2,s8,0
    ac04:	000b0713          	addi	a4,s6,0
    ac08:	8f9ff06f          	jal	zero,a500 <_vfiprintf_r+0x148>
    ac0c:	00090513          	addi	a0,s2,0
    ac10:	a9cf60ef          	jal	ra,eac <strlen>
    ac14:	00050493          	addi	s1,a0,0
    ac18:	00000c93          	addi	s9,zero,0
    ac1c:	00012703          	lw	a4,0(sp)
    ac20:	d41ff06f          	jal	zero,a960 <_vfiprintf_r+0x5a8>
    ac24:	010d6d13          	ori	s10,s10,16
    ac28:	020d7693          	andi	a3,s10,32
    ac2c:	02068063          	beq	a3,zero,ac4c <_vfiprintf_r+0x894>
    ac30:	00790913          	addi	s2,s2,7
    ac34:	ff897913          	andi	s2,s2,-8
    ac38:	00092d83          	lw	s11,0(s2)
    ac3c:	00492c83          	lw	s9,4(s2)
    ac40:	00890c13          	addi	s8,s2,8
    ac44:	00100693          	addi	a3,zero,1
    ac48:	c71ff06f          	jal	zero,a8b8 <_vfiprintf_r+0x500>
    ac4c:	010d7693          	andi	a3,s10,16
    ac50:	00490c13          	addi	s8,s2,4
    ac54:	00068663          	beq	a3,zero,ac60 <_vfiprintf_r+0x8a8>
    ac58:	00092d83          	lw	s11,0(s2)
    ac5c:	0100006f          	jal	zero,ac6c <_vfiprintf_r+0x8b4>
    ac60:	040d7693          	andi	a3,s10,64
    ac64:	00068863          	beq	a3,zero,ac74 <_vfiprintf_r+0x8bc>
    ac68:	00095d83          	lhu	s11,0(s2)
    ac6c:	00000c93          	addi	s9,zero,0
    ac70:	fd5ff06f          	jal	zero,ac44 <_vfiprintf_r+0x88c>
    ac74:	200d7693          	andi	a3,s10,512
    ac78:	fe0680e3          	beq	a3,zero,ac58 <_vfiprintf_r+0x8a0>
    ac7c:	00094d83          	lbu	s11,0(s2)
    ac80:	fedff06f          	jal	zero,ac6c <_vfiprintf_r+0x8b4>
    ac84:	00007797          	auipc	a5,0x7
    ac88:	8b878793          	addi	a5,a5,-1864 # 1153c <zeroes.4514+0x34>
    ac8c:	93dff06f          	jal	zero,a5c8 <_vfiprintf_r+0x210>
    ac90:	010d7693          	andi	a3,s10,16
    ac94:	00490c13          	addi	s8,s2,4
    ac98:	00068663          	beq	a3,zero,aca4 <_vfiprintf_r+0x8ec>
    ac9c:	00092d83          	lw	s11,0(s2)
    aca0:	0100006f          	jal	zero,acb0 <_vfiprintf_r+0x8f8>
    aca4:	040d7693          	andi	a3,s10,64
    aca8:	00068863          	beq	a3,zero,acb8 <_vfiprintf_r+0x900>
    acac:	00095d83          	lhu	s11,0(s2)
    acb0:	00000c93          	addi	s9,zero,0
    acb4:	935ff06f          	jal	zero,a5e8 <_vfiprintf_r+0x230>
    acb8:	200d7693          	andi	a3,s10,512
    acbc:	fe0680e3          	beq	a3,zero,ac9c <_vfiprintf_r+0x8e4>
    acc0:	00094d83          	lbu	s11,0(s2)
    acc4:	fedff06f          	jal	zero,acb0 <_vfiprintf_r+0x8f8>
    acc8:	000d0613          	addi	a2,s10,0
    accc:	00100693          	addi	a3,zero,1
    acd0:	b0dff06f          	jal	zero,a7dc <_vfiprintf_r+0x424>
    acd4:	00100613          	addi	a2,zero,1
    acd8:	34c68e63          	beq	a3,a2,b034 <_vfiprintf_r+0xc7c>
    acdc:	00200613          	addi	a2,zero,2
    ace0:	14c68663          	beq	a3,a2,ae2c <_vfiprintf_r+0xa74>
    ace4:	0e010693          	addi	a3,sp,224
    ace8:	01dc9593          	slli	a1,s9,0x1d
    acec:	007df613          	andi	a2,s11,7
    acf0:	003dd313          	srli	t1,s11,0x3
    acf4:	03060613          	addi	a2,a2,48
    acf8:	0065edb3          	or	s11,a1,t1
    acfc:	003cdc93          	srli	s9,s9,0x3
    ad00:	fec68fa3          	sb	a2,-1(a3)
    ad04:	019de5b3          	or	a1,s11,s9
    ad08:	fff68913          	addi	s2,a3,-1
    ad0c:	02059663          	bne	a1,zero,ad38 <_vfiprintf_r+0x980>
    ad10:	001d7593          	andi	a1,s10,1
    ad14:	00058a63          	beq	a1,zero,ad28 <_vfiprintf_r+0x970>
    ad18:	03000593          	addi	a1,zero,48
    ad1c:	00b60663          	beq	a2,a1,ad28 <_vfiprintf_r+0x970>
    ad20:	feb90fa3          	sb	a1,-1(s2)
    ad24:	ffe68913          	addi	s2,a3,-2
    ad28:	0e010793          	addi	a5,sp,224
    ad2c:	00048c93          	addi	s9,s1,0
    ad30:	412784b3          	sub	s1,a5,s2
    ad34:	c2dff06f          	jal	zero,a960 <_vfiprintf_r+0x5a8>
    ad38:	00090693          	addi	a3,s2,0
    ad3c:	fadff06f          	jal	zero,ace8 <_vfiprintf_r+0x930>
    ad40:	400d7793          	andi	a5,s10,1024
    ad44:	00000893          	addi	a7,zero,0
    ad48:	0e010e13          	addi	t3,sp,224
    ad4c:	00f12023          	sw	a5,0(sp)
    ad50:	00a00613          	addi	a2,zero,10
    ad54:	00000693          	addi	a3,zero,0
    ad58:	000d8513          	addi	a0,s11,0
    ad5c:	000c8593          	addi	a1,s9,0
    ad60:	01112e23          	sw	a7,28(sp)
    ad64:	00e12c23          	sw	a4,24(sp)
    ad68:	fffe0913          	addi	s2,t3,-1
    ad6c:	01c12a23          	sw	t3,20(sp)
    ad70:	1bc020ef          	jal	ra,cf2c <__umoddi3>
    ad74:	01412e03          	lw	t3,20(sp)
    ad78:	01c12883          	lw	a7,28(sp)
    ad7c:	00012783          	lw	a5,0(sp)
    ad80:	03050513          	addi	a0,a0,48
    ad84:	feae0fa3          	sb	a0,-1(t3)
    ad88:	00188893          	addi	a7,a7,1
    ad8c:	01812703          	lw	a4,24(sp)
    ad90:	04078e63          	beq	a5,zero,adec <_vfiprintf_r+0xa34>
    ad94:	00412783          	lw	a5,4(sp)
    ad98:	0007c683          	lbu	a3,0(a5)
    ad9c:	05169863          	bne	a3,a7,adec <_vfiprintf_r+0xa34>
    ada0:	0ff00793          	addi	a5,zero,255
    ada4:	04f88463          	beq	a7,a5,adec <_vfiprintf_r+0xa34>
    ada8:	000c9663          	bne	s9,zero,adb4 <_vfiprintf_r+0x9fc>
    adac:	00900793          	addi	a5,zero,9
    adb0:	03b7fe63          	bgeu	a5,s11,adec <_vfiprintf_r+0xa34>
    adb4:	00c12783          	lw	a5,12(sp)
    adb8:	01012583          	lw	a1,16(sp)
    adbc:	00e12a23          	sw	a4,20(sp)
    adc0:	40f90933          	sub	s2,s2,a5
    adc4:	00078613          	addi	a2,a5,0
    adc8:	00090513          	addi	a0,s2,0
    adcc:	d68fd0ef          	jal	ra,8334 <strncpy>
    add0:	00412783          	lw	a5,4(sp)
    add4:	00000893          	addi	a7,zero,0
    add8:	01412703          	lw	a4,20(sp)
    addc:	0017c683          	lbu	a3,1(a5)
    ade0:	00068663          	beq	a3,zero,adec <_vfiprintf_r+0xa34>
    ade4:	00178793          	addi	a5,a5,1
    ade8:	00f12223          	sw	a5,4(sp)
    adec:	00a00613          	addi	a2,zero,10
    adf0:	00000693          	addi	a3,zero,0
    adf4:	000d8513          	addi	a0,s11,0
    adf8:	000c8593          	addi	a1,s9,0
    adfc:	01112c23          	sw	a7,24(sp)
    ae00:	00e12a23          	sw	a4,20(sp)
    ae04:	4f5010ef          	jal	ra,caf8 <__udivdi3>
    ae08:	01412703          	lw	a4,20(sp)
    ae0c:	01812883          	lw	a7,24(sp)
    ae10:	000c9663          	bne	s9,zero,ae1c <_vfiprintf_r+0xa64>
    ae14:	00900793          	addi	a5,zero,9
    ae18:	f1b7f8e3          	bgeu	a5,s11,ad28 <_vfiprintf_r+0x970>
    ae1c:	00050d93          	addi	s11,a0,0
    ae20:	00058c93          	addi	s9,a1,0
    ae24:	00090e13          	addi	t3,s2,0
    ae28:	f29ff06f          	jal	zero,ad50 <_vfiprintf_r+0x998>
    ae2c:	0e010913          	addi	s2,sp,224
    ae30:	00812783          	lw	a5,8(sp)
    ae34:	00fdf693          	andi	a3,s11,15
    ae38:	fff90913          	addi	s2,s2,-1
    ae3c:	00d786b3          	add	a3,a5,a3
    ae40:	0006c683          	lbu	a3,0(a3)
    ae44:	004dd313          	srli	t1,s11,0x4
    ae48:	00d90023          	sb	a3,0(s2)
    ae4c:	01cc9693          	slli	a3,s9,0x1c
    ae50:	0066edb3          	or	s11,a3,t1
    ae54:	004cdc93          	srli	s9,s9,0x4
    ae58:	019de6b3          	or	a3,s11,s9
    ae5c:	fc069ae3          	bne	a3,zero,ae30 <_vfiprintf_r+0xa78>
    ae60:	ec9ff06f          	jal	zero,ad28 <_vfiprintf_r+0x970>
    ae64:	0e010913          	addi	s2,sp,224
    ae68:	ec0690e3          	bne	a3,zero,ad28 <_vfiprintf_r+0x970>
    ae6c:	00167613          	andi	a2,a2,1
    ae70:	ea060ce3          	beq	a2,zero,ad28 <_vfiprintf_r+0x970>
    ae74:	03000693          	addi	a3,zero,48
    ae78:	0cd10fa3          	sb	a3,223(sp)
    ae7c:	1cc0006f          	jal	zero,b048 <_vfiprintf_r+0xc90>
    ae80:	18060863          	beq	a2,zero,b010 <_vfiprintf_r+0xc58>
    ae84:	06c10e23          	sb	a2,124(sp)
    ae88:	020105a3          	sb	zero,43(sp)
    ae8c:	00090c13          	addi	s8,s2,0
    ae90:	8edff06f          	jal	zero,a77c <_vfiprintf_r+0x3c4>
    ae94:	01058593          	addi	a1,a1,16
    ae98:	01172223          	sw	a7,4(a4)
    ae9c:	02b12c23          	sw	a1,56(sp)
    aea0:	02c12a23          	sw	a2,52(sp)
    aea4:	02c35a63          	bge	t1,a2,aed8 <_vfiprintf_r+0xb20>
    aea8:	03010613          	addi	a2,sp,48
    aeac:	00040593          	addi	a1,s0,0
    aeb0:	00098513          	addi	a0,s3,0
    aeb4:	00d12c23          	sw	a3,24(sp)
    aeb8:	c04ff0ef          	jal	ra,a2bc <__sprint_r>
    aebc:	10051663          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    aec0:	01812683          	lw	a3,24(sp)
    aec4:	000b0513          	addi	a0,s6,0
    aec8:	00700313          	addi	t1,zero,7
    aecc:	00007817          	auipc	a6,0x7
    aed0:	d3480813          	addi	a6,a6,-716 # 11c00 <blanks.4489>
    aed4:	01000893          	addi	a7,zero,16
    aed8:	ff068693          	addi	a3,a3,-16
    aedc:	00050713          	addi	a4,a0,0
    aee0:	addff06f          	jal	zero,a9bc <_vfiprintf_r+0x604>
    aee4:	01060613          	addi	a2,a2,16
    aee8:	01172223          	sw	a7,4(a4)
    aeec:	02c12c23          	sw	a2,56(sp)
    aef0:	02d12a23          	sw	a3,52(sp)
    aef4:	02d35663          	bge	t1,a3,af20 <_vfiprintf_r+0xb68>
    aef8:	03010613          	addi	a2,sp,48
    aefc:	00040593          	addi	a1,s0,0
    af00:	00098513          	addi	a0,s3,0
    af04:	bb8ff0ef          	jal	ra,a2bc <__sprint_r>
    af08:	0c051063          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    af0c:	000b0593          	addi	a1,s6,0
    af10:	00700313          	addi	t1,zero,7
    af14:	00007817          	auipc	a6,0x7
    af18:	cfc80813          	addi	a6,a6,-772 # 11c10 <zeroes.4490>
    af1c:	01000893          	addi	a7,zero,16
    af20:	ff0d8d93          	addi	s11,s11,-16
    af24:	00058713          	addi	a4,a1,0
    af28:	badff06f          	jal	zero,aad4 <_vfiprintf_r+0x71c>
    af2c:	01060613          	addi	a2,a2,16
    af30:	01072223          	sw	a6,4(a4)
    af34:	02c12c23          	sw	a2,56(sp)
    af38:	02d12a23          	sw	a3,52(sp)
    af3c:	02d8d263          	bge	a7,a3,af60 <_vfiprintf_r+0xba8>
    af40:	03010613          	addi	a2,sp,48
    af44:	00040593          	addi	a1,s0,0
    af48:	00098513          	addi	a0,s3,0
    af4c:	b70ff0ef          	jal	ra,a2bc <__sprint_r>
    af50:	06051c63          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    af54:	000b0593          	addi	a1,s6,0
    af58:	00700893          	addi	a7,zero,7
    af5c:	01000813          	addi	a6,zero,16
    af60:	ff0c8c93          	addi	s9,s9,-16
    af64:	00058713          	addi	a4,a1,0
    af68:	bd1ff06f          	jal	zero,ab38 <_vfiprintf_r+0x780>
    af6c:	00012783          	lw	a5,0(sp)
    af70:	40fa04b3          	sub	s1,s4,a5
    af74:	c4905ee3          	bge	zero,s1,abd0 <_vfiprintf_r+0x818>
    af78:	01000c93          	addi	s9,zero,16
    af7c:	00007917          	auipc	s2,0x7
    af80:	c8490913          	addi	s2,s2,-892 # 11c00 <blanks.4489>
    af84:	00700d93          	addi	s11,zero,7
    af88:	03412783          	lw	a5,52(sp)
    af8c:	01272023          	sw	s2,0(a4)
    af90:	03812683          	lw	a3,56(sp)
    af94:	00178793          	addi	a5,a5,1
    af98:	049cc063          	blt	s9,s1,afd8 <_vfiprintf_r+0xc20>
    af9c:	00972223          	sw	s1,4(a4)
    afa0:	00d484b3          	add	s1,s1,a3
    afa4:	02912c23          	sw	s1,56(sp)
    afa8:	02f12a23          	sw	a5,52(sp)
    afac:	00700713          	addi	a4,zero,7
    afb0:	c2f750e3          	bge	a4,a5,abd0 <_vfiprintf_r+0x818>
    afb4:	03010613          	addi	a2,sp,48
    afb8:	00040593          	addi	a1,s0,0
    afbc:	00098513          	addi	a0,s3,0
    afc0:	afcff0ef          	jal	ra,a2bc <__sprint_r>
    afc4:	c00506e3          	beq	a0,zero,abd0 <_vfiprintf_r+0x818>
    afc8:	00c45783          	lhu	a5,12(s0)
    afcc:	0407f793          	andi	a5,a5,64
    afd0:	cc078463          	beq	a5,zero,a498 <_vfiprintf_r+0xe0>
    afd4:	cc0ff06f          	jal	zero,a494 <_vfiprintf_r+0xdc>
    afd8:	01068693          	addi	a3,a3,16
    afdc:	01972223          	sw	s9,4(a4)
    afe0:	02d12c23          	sw	a3,56(sp)
    afe4:	02f12a23          	sw	a5,52(sp)
    afe8:	00870713          	addi	a4,a4,8
    afec:	00fdde63          	bge	s11,a5,b008 <_vfiprintf_r+0xc50>
    aff0:	03010613          	addi	a2,sp,48
    aff4:	00040593          	addi	a1,s0,0
    aff8:	00098513          	addi	a0,s3,0
    affc:	ac0ff0ef          	jal	ra,a2bc <__sprint_r>
    b000:	fc0514e3          	bne	a0,zero,afc8 <_vfiprintf_r+0xc10>
    b004:	000b0713          	addi	a4,s6,0
    b008:	ff048493          	addi	s1,s1,-16
    b00c:	f7dff06f          	jal	zero,af88 <_vfiprintf_r+0xbd0>
    b010:	03812783          	lw	a5,56(sp)
    b014:	fa078ae3          	beq	a5,zero,afc8 <_vfiprintf_r+0xc10>
    b018:	03010613          	addi	a2,sp,48
    b01c:	00040593          	addi	a1,s0,0
    b020:	00098513          	addi	a0,s3,0
    b024:	a98ff0ef          	jal	ra,a2bc <__sprint_r>
    b028:	fa1ff06f          	jal	zero,afc8 <_vfiprintf_r+0xc10>
    b02c:	fff00693          	addi	a3,zero,-1
    b030:	c8d49ce3          	bne	s1,a3,acc8 <_vfiprintf_r+0x910>
    b034:	d00c96e3          	bne	s9,zero,ad40 <_vfiprintf_r+0x988>
    b038:	00900693          	addi	a3,zero,9
    b03c:	d1b6e2e3          	bltu	a3,s11,ad40 <_vfiprintf_r+0x988>
    b040:	030d8313          	addi	t1,s11,48
    b044:	0c610fa3          	sb	t1,223(sp)
    b048:	0df10913          	addi	s2,sp,223
    b04c:	cddff06f          	jal	zero,ad28 <_vfiprintf_r+0x970>

0000b050 <vfiprintf>:
    b050:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    b054:	00060693          	addi	a3,a2,0
    b058:	00058613          	addi	a2,a1,0
    b05c:	00050593          	addi	a1,a0,0
    b060:	0007a503          	lw	a0,0(a5)
    b064:	b54ff06f          	jal	zero,a3b8 <_vfiprintf_r>

0000b068 <__sbprintf>:
    b068:	00c5d783          	lhu	a5,12(a1)
    b06c:	b8010113          	addi	sp,sp,-1152
    b070:	46812c23          	sw	s0,1144(sp)
    b074:	ffd7f793          	andi	a5,a5,-3
    b078:	00f11a23          	sh	a5,20(sp)
    b07c:	0645a783          	lw	a5,100(a1)
    b080:	00058413          	addi	s0,a1,0
    b084:	46912a23          	sw	s1,1140(sp)
    b088:	06f12623          	sw	a5,108(sp)
    b08c:	00e5d783          	lhu	a5,14(a1)
    b090:	47212823          	sw	s2,1136(sp)
    b094:	46112e23          	sw	ra,1148(sp)
    b098:	00f11b23          	sh	a5,22(sp)
    b09c:	01c5a783          	lw	a5,28(a1)
    b0a0:	00050913          	addi	s2,a0,0
    b0a4:	02012023          	sw	zero,32(sp)
    b0a8:	02f12223          	sw	a5,36(sp)
    b0ac:	0245a783          	lw	a5,36(a1)
    b0b0:	00810593          	addi	a1,sp,8
    b0b4:	02f12623          	sw	a5,44(sp)
    b0b8:	07010793          	addi	a5,sp,112
    b0bc:	00f12423          	sw	a5,8(sp)
    b0c0:	00f12c23          	sw	a5,24(sp)
    b0c4:	40000793          	addi	a5,zero,1024
    b0c8:	00f12823          	sw	a5,16(sp)
    b0cc:	00f12e23          	sw	a5,28(sp)
    b0d0:	ae8ff0ef          	jal	ra,a3b8 <_vfiprintf_r>
    b0d4:	00050493          	addi	s1,a0,0
    b0d8:	00054c63          	blt	a0,zero,b0f0 <__sbprintf+0x88>
    b0dc:	00810593          	addi	a1,sp,8
    b0e0:	00090513          	addi	a0,s2,0
    b0e4:	b34f80ef          	jal	ra,3418 <_fflush_r>
    b0e8:	00050463          	beq	a0,zero,b0f0 <__sbprintf+0x88>
    b0ec:	fff00493          	addi	s1,zero,-1
    b0f0:	01415783          	lhu	a5,20(sp)
    b0f4:	0407f793          	andi	a5,a5,64
    b0f8:	00078863          	beq	a5,zero,b108 <__sbprintf+0xa0>
    b0fc:	00c45783          	lhu	a5,12(s0)
    b100:	0407e793          	ori	a5,a5,64
    b104:	00f41623          	sh	a5,12(s0)
    b108:	47c12083          	lw	ra,1148(sp)
    b10c:	47812403          	lw	s0,1144(sp)
    b110:	00048513          	addi	a0,s1,0
    b114:	47012903          	lw	s2,1136(sp)
    b118:	47412483          	lw	s1,1140(sp)
    b11c:	48010113          	addi	sp,sp,1152
    b120:	00008067          	jalr	zero,0(ra)

0000b124 <_wctomb_r>:
    b124:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    b128:	0007a783          	lw	a5,0(a5)
    b12c:	0347a783          	lw	a5,52(a5)
    b130:	00079463          	bne	a5,zero,b138 <_wctomb_r+0x14>
    b134:	c2818793          	addi	a5,gp,-984 # 124d8 <__global_locale>
    b138:	0e07a303          	lw	t1,224(a5)
    b13c:	00030067          	jalr	zero,0(t1)

0000b140 <__ascii_wctomb>:
    b140:	02058463          	beq	a1,zero,b168 <__ascii_wctomb+0x28>
    b144:	0ff00793          	addi	a5,zero,255
    b148:	00c7fa63          	bgeu	a5,a2,b15c <__ascii_wctomb+0x1c>
    b14c:	08a00793          	addi	a5,zero,138
    b150:	00f52023          	sw	a5,0(a0)
    b154:	fff00513          	addi	a0,zero,-1
    b158:	00008067          	jalr	zero,0(ra)
    b15c:	00c58023          	sb	a2,0(a1)
    b160:	00100513          	addi	a0,zero,1
    b164:	00008067          	jalr	zero,0(ra)
    b168:	00000513          	addi	a0,zero,0
    b16c:	00008067          	jalr	zero,0(ra)

0000b170 <_write_r>:
    b170:	ff010113          	addi	sp,sp,-16
    b174:	00812423          	sw	s0,8(sp)
    b178:	00050413          	addi	s0,a0,0
    b17c:	00058513          	addi	a0,a1,0
    b180:	00060593          	addi	a1,a2,0
    b184:	00068613          	addi	a2,a3,0
    b188:	2201a423          	sw	zero,552(gp) # 12ad8 <errno>
    b18c:	00112623          	sw	ra,12(sp)
    b190:	08d010ef          	jal	ra,ca1c <_write>
    b194:	fff00793          	addi	a5,zero,-1
    b198:	00f51a63          	bne	a0,a5,b1ac <_write_r+0x3c>
    b19c:	22818793          	addi	a5,gp,552 # 12ad8 <errno>
    b1a0:	0007a783          	lw	a5,0(a5)
    b1a4:	00078463          	beq	a5,zero,b1ac <_write_r+0x3c>
    b1a8:	00f42023          	sw	a5,0(s0)
    b1ac:	00c12083          	lw	ra,12(sp)
    b1b0:	00812403          	lw	s0,8(sp)
    b1b4:	01010113          	addi	sp,sp,16
    b1b8:	00008067          	jalr	zero,0(ra)

0000b1bc <_calloc_r>:
    b1bc:	02c585b3          	mul	a1,a1,a2
    b1c0:	ff010113          	addi	sp,sp,-16
    b1c4:	00812423          	sw	s0,8(sp)
    b1c8:	00112623          	sw	ra,12(sp)
    b1cc:	8c8fb0ef          	jal	ra,6294 <_malloc_r>
    b1d0:	00050413          	addi	s0,a0,0
    b1d4:	04050263          	beq	a0,zero,b218 <_calloc_r+0x5c>
    b1d8:	ffc52603          	lw	a2,-4(a0)
    b1dc:	02400713          	addi	a4,zero,36
    b1e0:	ffc67613          	andi	a2,a2,-4
    b1e4:	ffc60613          	addi	a2,a2,-4
    b1e8:	06c76263          	bltu	a4,a2,b24c <_calloc_r+0x90>
    b1ec:	01300693          	addi	a3,zero,19
    b1f0:	00050793          	addi	a5,a0,0
    b1f4:	00c6fc63          	bgeu	a3,a2,b20c <_calloc_r+0x50>
    b1f8:	00052023          	sw	zero,0(a0)
    b1fc:	00052223          	sw	zero,4(a0)
    b200:	01b00793          	addi	a5,zero,27
    b204:	02c7e463          	bltu	a5,a2,b22c <_calloc_r+0x70>
    b208:	00850793          	addi	a5,a0,8
    b20c:	0007a023          	sw	zero,0(a5)
    b210:	0007a223          	sw	zero,4(a5)
    b214:	0007a423          	sw	zero,8(a5)
    b218:	00040513          	addi	a0,s0,0
    b21c:	00c12083          	lw	ra,12(sp)
    b220:	00812403          	lw	s0,8(sp)
    b224:	01010113          	addi	sp,sp,16
    b228:	00008067          	jalr	zero,0(ra)
    b22c:	00052423          	sw	zero,8(a0)
    b230:	00052623          	sw	zero,12(a0)
    b234:	01050793          	addi	a5,a0,16
    b238:	fce61ae3          	bne	a2,a4,b20c <_calloc_r+0x50>
    b23c:	00052823          	sw	zero,16(a0)
    b240:	01850793          	addi	a5,a0,24
    b244:	00052a23          	sw	zero,20(a0)
    b248:	fc5ff06f          	jal	zero,b20c <_calloc_r+0x50>
    b24c:	00000593          	addi	a1,zero,0
    b250:	a19f50ef          	jal	ra,c68 <memset>
    b254:	fc5ff06f          	jal	zero,b218 <_calloc_r+0x5c>

0000b258 <_close_r>:
    b258:	ff010113          	addi	sp,sp,-16
    b25c:	00812423          	sw	s0,8(sp)
    b260:	00050413          	addi	s0,a0,0
    b264:	00058513          	addi	a0,a1,0
    b268:	2201a423          	sw	zero,552(gp) # 12ad8 <errno>
    b26c:	00112623          	sw	ra,12(sp)
    b270:	50c010ef          	jal	ra,c77c <_close>
    b274:	fff00793          	addi	a5,zero,-1
    b278:	00f51a63          	bne	a0,a5,b28c <_close_r+0x34>
    b27c:	22818793          	addi	a5,gp,552 # 12ad8 <errno>
    b280:	0007a783          	lw	a5,0(a5)
    b284:	00078463          	beq	a5,zero,b28c <_close_r+0x34>
    b288:	00f42023          	sw	a5,0(s0)
    b28c:	00c12083          	lw	ra,12(sp)
    b290:	00812403          	lw	s0,8(sp)
    b294:	01010113          	addi	sp,sp,16
    b298:	00008067          	jalr	zero,0(ra)

0000b29c <_fclose_r>:
    b29c:	ff010113          	addi	sp,sp,-16
    b2a0:	00112623          	sw	ra,12(sp)
    b2a4:	00812423          	sw	s0,8(sp)
    b2a8:	00912223          	sw	s1,4(sp)
    b2ac:	01212023          	sw	s2,0(sp)
    b2b0:	02059263          	bne	a1,zero,b2d4 <_fclose_r+0x38>
    b2b4:	00000913          	addi	s2,zero,0
    b2b8:	00c12083          	lw	ra,12(sp)
    b2bc:	00812403          	lw	s0,8(sp)
    b2c0:	00090513          	addi	a0,s2,0
    b2c4:	00412483          	lw	s1,4(sp)
    b2c8:	00012903          	lw	s2,0(sp)
    b2cc:	01010113          	addi	sp,sp,16
    b2d0:	00008067          	jalr	zero,0(ra)
    b2d4:	00050493          	addi	s1,a0,0
    b2d8:	00058413          	addi	s0,a1,0
    b2dc:	00050863          	beq	a0,zero,b2ec <_fclose_r+0x50>
    b2e0:	03852783          	lw	a5,56(a0)
    b2e4:	00079463          	bne	a5,zero,b2ec <_fclose_r+0x50>
    b2e8:	accf80ef          	jal	ra,35b4 <__sinit>
    b2ec:	00c41783          	lh	a5,12(s0)
    b2f0:	fc0782e3          	beq	a5,zero,b2b4 <_fclose_r+0x18>
    b2f4:	00040593          	addi	a1,s0,0
    b2f8:	00048513          	addi	a0,s1,0
    b2fc:	f15f70ef          	jal	ra,3210 <__sflush_r>
    b300:	02c42783          	lw	a5,44(s0)
    b304:	00050913          	addi	s2,a0,0
    b308:	00078c63          	beq	a5,zero,b320 <_fclose_r+0x84>
    b30c:	01c42583          	lw	a1,28(s0)
    b310:	00048513          	addi	a0,s1,0
    b314:	000780e7          	jalr	ra,0(a5)
    b318:	00055463          	bge	a0,zero,b320 <_fclose_r+0x84>
    b31c:	fff00913          	addi	s2,zero,-1
    b320:	00c45783          	lhu	a5,12(s0)
    b324:	0807f793          	andi	a5,a5,128
    b328:	00078863          	beq	a5,zero,b338 <_fclose_r+0x9c>
    b32c:	01042583          	lw	a1,16(s0)
    b330:	00048513          	addi	a0,s1,0
    b334:	d38f80ef          	jal	ra,386c <_free_r>
    b338:	03042583          	lw	a1,48(s0)
    b33c:	00058c63          	beq	a1,zero,b354 <_fclose_r+0xb8>
    b340:	04040793          	addi	a5,s0,64
    b344:	00f58663          	beq	a1,a5,b350 <_fclose_r+0xb4>
    b348:	00048513          	addi	a0,s1,0
    b34c:	d20f80ef          	jal	ra,386c <_free_r>
    b350:	02042823          	sw	zero,48(s0)
    b354:	04442583          	lw	a1,68(s0)
    b358:	00058863          	beq	a1,zero,b368 <_fclose_r+0xcc>
    b35c:	00048513          	addi	a0,s1,0
    b360:	d0cf80ef          	jal	ra,386c <_free_r>
    b364:	04042223          	sw	zero,68(s0)
    b368:	bbcf80ef          	jal	ra,3724 <__sfp_lock_acquire>
    b36c:	00041623          	sh	zero,12(s0)
    b370:	bb8f80ef          	jal	ra,3728 <__sfp_lock_release>
    b374:	f45ff06f          	jal	zero,b2b8 <_fclose_r+0x1c>

0000b378 <fclose>:
    b378:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    b37c:	00050593          	addi	a1,a0,0
    b380:	0007a503          	lw	a0,0(a5)
    b384:	f19ff06f          	jal	zero,b29c <_fclose_r>

0000b388 <__fputwc>:
    b388:	fd010113          	addi	sp,sp,-48
    b38c:	02812423          	sw	s0,40(sp)
    b390:	02912223          	sw	s1,36(sp)
    b394:	01412c23          	sw	s4,24(sp)
    b398:	02112623          	sw	ra,44(sp)
    b39c:	03212023          	sw	s2,32(sp)
    b3a0:	01312e23          	sw	s3,28(sp)
    b3a4:	01512a23          	sw	s5,20(sp)
    b3a8:	01612823          	sw	s6,16(sp)
    b3ac:	00050a13          	addi	s4,a0,0
    b3b0:	00058493          	addi	s1,a1,0
    b3b4:	00060413          	addi	s0,a2,0
    b3b8:	cfdfa0ef          	jal	ra,60b4 <__locale_mb_cur_max>
    b3bc:	00100793          	addi	a5,zero,1
    b3c0:	04f51a63          	bne	a0,a5,b414 <__fputwc+0x8c>
    b3c4:	fff48793          	addi	a5,s1,-1
    b3c8:	0fe00713          	addi	a4,zero,254
    b3cc:	04f76463          	bltu	a4,a5,b414 <__fputwc+0x8c>
    b3d0:	00910623          	sb	s1,12(sp)
    b3d4:	00100993          	addi	s3,zero,1
    b3d8:	00000913          	addi	s2,zero,0
    b3dc:	fff00a93          	addi	s5,zero,-1
    b3e0:	00a00b13          	addi	s6,zero,10
    b3e4:	07391263          	bne	s2,s3,b448 <__fputwc+0xc0>
    b3e8:	00048513          	addi	a0,s1,0
    b3ec:	02c12083          	lw	ra,44(sp)
    b3f0:	02812403          	lw	s0,40(sp)
    b3f4:	02412483          	lw	s1,36(sp)
    b3f8:	02012903          	lw	s2,32(sp)
    b3fc:	01c12983          	lw	s3,28(sp)
    b400:	01812a03          	lw	s4,24(sp)
    b404:	01412a83          	lw	s5,20(sp)
    b408:	01012b03          	lw	s6,16(sp)
    b40c:	03010113          	addi	sp,sp,48
    b410:	00008067          	jalr	zero,0(ra)
    b414:	05c40693          	addi	a3,s0,92
    b418:	00048613          	addi	a2,s1,0
    b41c:	00c10593          	addi	a1,sp,12
    b420:	000a0513          	addi	a0,s4,0
    b424:	2bc010ef          	jal	ra,c6e0 <_wcrtomb_r>
    b428:	fff00793          	addi	a5,zero,-1
    b42c:	00050993          	addi	s3,a0,0
    b430:	faf514e3          	bne	a0,a5,b3d8 <__fputwc+0x50>
    b434:	00c45783          	lhu	a5,12(s0)
    b438:	0407e793          	ori	a5,a5,64
    b43c:	00f41623          	sh	a5,12(s0)
    b440:	fff00513          	addi	a0,zero,-1
    b444:	fa9ff06f          	jal	zero,b3ec <__fputwc+0x64>
    b448:	00c10793          	addi	a5,sp,12
    b44c:	012787b3          	add	a5,a5,s2
    b450:	0007c583          	lbu	a1,0(a5)
    b454:	00842783          	lw	a5,8(s0)
    b458:	fff78793          	addi	a5,a5,-1
    b45c:	00f42423          	sw	a5,8(s0)
    b460:	0007d863          	bge	a5,zero,b470 <__fputwc+0xe8>
    b464:	01842703          	lw	a4,24(s0)
    b468:	02e7c063          	blt	a5,a4,b488 <__fputwc+0x100>
    b46c:	01658e63          	beq	a1,s6,b488 <__fputwc+0x100>
    b470:	00042783          	lw	a5,0(s0)
    b474:	00178713          	addi	a4,a5,1
    b478:	00e42023          	sw	a4,0(s0)
    b47c:	00b78023          	sb	a1,0(a5)
    b480:	00190913          	addi	s2,s2,1
    b484:	f61ff06f          	jal	zero,b3e4 <__fputwc+0x5c>
    b488:	00040613          	addi	a2,s0,0
    b48c:	000a0513          	addi	a0,s4,0
    b490:	10c010ef          	jal	ra,c59c <__swbuf_r>
    b494:	ff5516e3          	bne	a0,s5,b480 <__fputwc+0xf8>
    b498:	fa9ff06f          	jal	zero,b440 <__fputwc+0xb8>

0000b49c <_fputwc_r>:
    b49c:	00c61783          	lh	a5,12(a2)
    b4a0:	01279713          	slli	a4,a5,0x12
    b4a4:	02074063          	blt	a4,zero,b4c4 <_fputwc_r+0x28>
    b4a8:	06462703          	lw	a4,100(a2)
    b4ac:	000026b7          	lui	a3,0x2
    b4b0:	00d7e7b3          	or	a5,a5,a3
    b4b4:	00f61623          	sh	a5,12(a2)
    b4b8:	000027b7          	lui	a5,0x2
    b4bc:	00f767b3          	or	a5,a4,a5
    b4c0:	06f62223          	sw	a5,100(a2)
    b4c4:	ec5ff06f          	jal	zero,b388 <__fputwc>

0000b4c8 <fputwc>:
    b4c8:	fe010113          	addi	sp,sp,-32
    b4cc:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    b4d0:	00812c23          	sw	s0,24(sp)
    b4d4:	0007a403          	lw	s0,0(a5) # 2000 <_vfprintf_r+0x1138>
    b4d8:	00912a23          	sw	s1,20(sp)
    b4dc:	00112e23          	sw	ra,28(sp)
    b4e0:	00050493          	addi	s1,a0,0
    b4e4:	00058613          	addi	a2,a1,0
    b4e8:	00040e63          	beq	s0,zero,b504 <fputwc+0x3c>
    b4ec:	03842783          	lw	a5,56(s0)
    b4f0:	00079a63          	bne	a5,zero,b504 <fputwc+0x3c>
    b4f4:	00040513          	addi	a0,s0,0
    b4f8:	00b12623          	sw	a1,12(sp)
    b4fc:	8b8f80ef          	jal	ra,35b4 <__sinit>
    b500:	00c12603          	lw	a2,12(sp)
    b504:	00040513          	addi	a0,s0,0
    b508:	01812403          	lw	s0,24(sp)
    b50c:	01c12083          	lw	ra,28(sp)
    b510:	00048593          	addi	a1,s1,0
    b514:	01412483          	lw	s1,20(sp)
    b518:	02010113          	addi	sp,sp,32
    b51c:	f81ff06f          	jal	zero,b49c <_fputwc_r>

0000b520 <_fstat_r>:
    b520:	ff010113          	addi	sp,sp,-16
    b524:	00812423          	sw	s0,8(sp)
    b528:	00050413          	addi	s0,a0,0
    b52c:	00058513          	addi	a0,a1,0
    b530:	00060593          	addi	a1,a2,0
    b534:	2201a423          	sw	zero,552(gp) # 12ad8 <errno>
    b538:	00112623          	sw	ra,12(sp)
    b53c:	2d8010ef          	jal	ra,c814 <_fstat>
    b540:	fff00793          	addi	a5,zero,-1
    b544:	00f51a63          	bne	a0,a5,b558 <_fstat_r+0x38>
    b548:	22818793          	addi	a5,gp,552 # 12ad8 <errno>
    b54c:	0007a783          	lw	a5,0(a5)
    b550:	00078463          	beq	a5,zero,b558 <_fstat_r+0x38>
    b554:	00f42023          	sw	a5,0(s0)
    b558:	00c12083          	lw	ra,12(sp)
    b55c:	00812403          	lw	s0,8(sp)
    b560:	01010113          	addi	sp,sp,16
    b564:	00008067          	jalr	zero,0(ra)

0000b568 <_isatty_r>:
    b568:	ff010113          	addi	sp,sp,-16
    b56c:	00812423          	sw	s0,8(sp)
    b570:	00050413          	addi	s0,a0,0
    b574:	00058513          	addi	a0,a1,0
    b578:	2201a423          	sw	zero,552(gp) # 12ad8 <errno>
    b57c:	00112623          	sw	ra,12(sp)
    b580:	300010ef          	jal	ra,c880 <_isatty>
    b584:	fff00793          	addi	a5,zero,-1
    b588:	00f51a63          	bne	a0,a5,b59c <_isatty_r+0x34>
    b58c:	22818793          	addi	a5,gp,552 # 12ad8 <errno>
    b590:	0007a783          	lw	a5,0(a5)
    b594:	00078463          	beq	a5,zero,b59c <_isatty_r+0x34>
    b598:	00f42023          	sw	a5,0(s0)
    b59c:	00c12083          	lw	ra,12(sp)
    b5a0:	00812403          	lw	s0,8(sp)
    b5a4:	01010113          	addi	sp,sp,16
    b5a8:	00008067          	jalr	zero,0(ra)

0000b5ac <_lseek_r>:
    b5ac:	ff010113          	addi	sp,sp,-16
    b5b0:	00812423          	sw	s0,8(sp)
    b5b4:	00050413          	addi	s0,a0,0
    b5b8:	00058513          	addi	a0,a1,0
    b5bc:	00060593          	addi	a1,a2,0
    b5c0:	00068613          	addi	a2,a3,0 # 2000 <_vfprintf_r+0x1138>
    b5c4:	2201a423          	sw	zero,552(gp) # 12ad8 <errno>
    b5c8:	00112623          	sw	ra,12(sp)
    b5cc:	2ec010ef          	jal	ra,c8b8 <_lseek>
    b5d0:	fff00793          	addi	a5,zero,-1
    b5d4:	00f51a63          	bne	a0,a5,b5e8 <_lseek_r+0x3c>
    b5d8:	22818793          	addi	a5,gp,552 # 12ad8 <errno>
    b5dc:	0007a783          	lw	a5,0(a5)
    b5e0:	00078463          	beq	a5,zero,b5e8 <_lseek_r+0x3c>
    b5e4:	00f42023          	sw	a5,0(s0)
    b5e8:	00c12083          	lw	ra,12(sp)
    b5ec:	00812403          	lw	s0,8(sp)
    b5f0:	01010113          	addi	sp,sp,16
    b5f4:	00008067          	jalr	zero,0(ra)

0000b5f8 <_read_r>:
    b5f8:	ff010113          	addi	sp,sp,-16
    b5fc:	00812423          	sw	s0,8(sp)
    b600:	00050413          	addi	s0,a0,0
    b604:	00058513          	addi	a0,a1,0
    b608:	00060593          	addi	a1,a2,0
    b60c:	00068613          	addi	a2,a3,0
    b610:	2201a423          	sw	zero,552(gp) # 12ad8 <errno>
    b614:	00112623          	sw	ra,12(sp)
    b618:	2ec010ef          	jal	ra,c904 <_read>
    b61c:	fff00793          	addi	a5,zero,-1
    b620:	00f51a63          	bne	a0,a5,b634 <_read_r+0x3c>
    b624:	22818793          	addi	a5,gp,552 # 12ad8 <errno>
    b628:	0007a783          	lw	a5,0(a5)
    b62c:	00078463          	beq	a5,zero,b634 <_read_r+0x3c>
    b630:	00f42023          	sw	a5,0(s0)
    b634:	00c12083          	lw	ra,12(sp)
    b638:	00812403          	lw	s0,8(sp)
    b63c:	01010113          	addi	sp,sp,16
    b640:	00008067          	jalr	zero,0(ra)

0000b644 <cleanup_glue>:
    b644:	ff010113          	addi	sp,sp,-16
    b648:	00812423          	sw	s0,8(sp)
    b64c:	00058413          	addi	s0,a1,0
    b650:	0005a583          	lw	a1,0(a1)
    b654:	00912223          	sw	s1,4(sp)
    b658:	00112623          	sw	ra,12(sp)
    b65c:	00050493          	addi	s1,a0,0
    b660:	00058463          	beq	a1,zero,b668 <cleanup_glue+0x24>
    b664:	fe1ff0ef          	jal	ra,b644 <cleanup_glue>
    b668:	00040593          	addi	a1,s0,0
    b66c:	00812403          	lw	s0,8(sp)
    b670:	00c12083          	lw	ra,12(sp)
    b674:	00048513          	addi	a0,s1,0
    b678:	00412483          	lw	s1,4(sp)
    b67c:	01010113          	addi	sp,sp,16
    b680:	9ecf806f          	jal	zero,386c <_free_r>

0000b684 <_reclaim_reent>:
    b684:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    b688:	0007a783          	lw	a5,0(a5)
    b68c:	10a78463          	beq	a5,a0,b794 <_reclaim_reent+0x110>
    b690:	04c52783          	lw	a5,76(a0)
    b694:	fe010113          	addi	sp,sp,-32
    b698:	00812c23          	sw	s0,24(sp)
    b69c:	00912a23          	sw	s1,20(sp)
    b6a0:	01212823          	sw	s2,16(sp)
    b6a4:	00112e23          	sw	ra,28(sp)
    b6a8:	01312623          	sw	s3,12(sp)
    b6ac:	00050413          	addi	s0,a0,0
    b6b0:	00000493          	addi	s1,zero,0
    b6b4:	08000913          	addi	s2,zero,128
    b6b8:	06079a63          	bne	a5,zero,b72c <_reclaim_reent+0xa8>
    b6bc:	04042583          	lw	a1,64(s0)
    b6c0:	00058663          	beq	a1,zero,b6cc <_reclaim_reent+0x48>
    b6c4:	00040513          	addi	a0,s0,0
    b6c8:	9a4f80ef          	jal	ra,386c <_free_r>
    b6cc:	14842583          	lw	a1,328(s0)
    b6d0:	14c40493          	addi	s1,s0,332
    b6d4:	08059063          	bne	a1,zero,b754 <_reclaim_reent+0xd0>
    b6d8:	05442583          	lw	a1,84(s0)
    b6dc:	08059863          	bne	a1,zero,b76c <_reclaim_reent+0xe8>
    b6e0:	03842783          	lw	a5,56(s0)
    b6e4:	08078a63          	beq	a5,zero,b778 <_reclaim_reent+0xf4>
    b6e8:	03c42783          	lw	a5,60(s0)
    b6ec:	00040513          	addi	a0,s0,0
    b6f0:	000780e7          	jalr	ra,0(a5)
    b6f4:	2e042583          	lw	a1,736(s0)
    b6f8:	08058063          	beq	a1,zero,b778 <_reclaim_reent+0xf4>
    b6fc:	00040513          	addi	a0,s0,0
    b700:	01812403          	lw	s0,24(sp)
    b704:	01c12083          	lw	ra,28(sp)
    b708:	01412483          	lw	s1,20(sp)
    b70c:	01012903          	lw	s2,16(sp)
    b710:	00c12983          	lw	s3,12(sp)
    b714:	02010113          	addi	sp,sp,32
    b718:	f2dff06f          	jal	zero,b644 <cleanup_glue>
    b71c:	009585b3          	add	a1,a1,s1
    b720:	0005a583          	lw	a1,0(a1)
    b724:	00059e63          	bne	a1,zero,b740 <_reclaim_reent+0xbc>
    b728:	00448493          	addi	s1,s1,4
    b72c:	04c42583          	lw	a1,76(s0)
    b730:	ff2496e3          	bne	s1,s2,b71c <_reclaim_reent+0x98>
    b734:	00040513          	addi	a0,s0,0
    b738:	934f80ef          	jal	ra,386c <_free_r>
    b73c:	f81ff06f          	jal	zero,b6bc <_reclaim_reent+0x38>
    b740:	0005a983          	lw	s3,0(a1)
    b744:	00040513          	addi	a0,s0,0
    b748:	924f80ef          	jal	ra,386c <_free_r>
    b74c:	00098593          	addi	a1,s3,0
    b750:	fd5ff06f          	jal	zero,b724 <_reclaim_reent+0xa0>
    b754:	f89582e3          	beq	a1,s1,b6d8 <_reclaim_reent+0x54>
    b758:	0005a903          	lw	s2,0(a1)
    b75c:	00040513          	addi	a0,s0,0
    b760:	90cf80ef          	jal	ra,386c <_free_r>
    b764:	00090593          	addi	a1,s2,0
    b768:	fedff06f          	jal	zero,b754 <_reclaim_reent+0xd0>
    b76c:	00040513          	addi	a0,s0,0
    b770:	8fcf80ef          	jal	ra,386c <_free_r>
    b774:	f6dff06f          	jal	zero,b6e0 <_reclaim_reent+0x5c>
    b778:	01c12083          	lw	ra,28(sp)
    b77c:	01812403          	lw	s0,24(sp)
    b780:	01412483          	lw	s1,20(sp)
    b784:	01012903          	lw	s2,16(sp)
    b788:	00c12983          	lw	s3,12(sp)
    b78c:	02010113          	addi	sp,sp,32
    b790:	00008067          	jalr	zero,0(ra)
    b794:	00008067          	jalr	zero,0(ra)

0000b798 <__ssprint_r>:
    b798:	00862783          	lw	a5,8(a2)
    b79c:	fd010113          	addi	sp,sp,-48
    b7a0:	01312e23          	sw	s3,28(sp)
    b7a4:	02112623          	sw	ra,44(sp)
    b7a8:	02812423          	sw	s0,40(sp)
    b7ac:	02912223          	sw	s1,36(sp)
    b7b0:	03212023          	sw	s2,32(sp)
    b7b4:	01412c23          	sw	s4,24(sp)
    b7b8:	01512a23          	sw	s5,20(sp)
    b7bc:	01612823          	sw	s6,16(sp)
    b7c0:	01712623          	sw	s7,12(sp)
    b7c4:	01812423          	sw	s8,8(sp)
    b7c8:	01912223          	sw	s9,4(sp)
    b7cc:	01a12023          	sw	s10,0(sp)
    b7d0:	00060993          	addi	s3,a2,0
    b7d4:	12078463          	beq	a5,zero,b8fc <__ssprint_r+0x164>
    b7d8:	00062a83          	lw	s5,0(a2)
    b7dc:	00050a13          	addi	s4,a0,0
    b7e0:	00058413          	addi	s0,a1,0
    b7e4:	00000b13          	addi	s6,zero,0
    b7e8:	00000913          	addi	s2,zero,0
    b7ec:	00300b93          	addi	s7,zero,3
    b7f0:	00200c13          	addi	s8,zero,2
    b7f4:	08090063          	beq	s2,zero,b874 <__ssprint_r+0xdc>
    b7f8:	00842d03          	lw	s10,8(s0)
    b7fc:	0da96063          	bltu	s2,s10,b8bc <__ssprint_r+0x124>
    b800:	00c45783          	lhu	a5,12(s0)
    b804:	4807f713          	andi	a4,a5,1152
    b808:	0a070a63          	beq	a4,zero,b8bc <__ssprint_r+0x124>
    b80c:	00042483          	lw	s1,0(s0)
    b810:	01042583          	lw	a1,16(s0)
    b814:	40b48cb3          	sub	s9,s1,a1
    b818:	01442483          	lw	s1,20(s0)
    b81c:	001c8713          	addi	a4,s9,1
    b820:	01270733          	add	a4,a4,s2
    b824:	029b84b3          	mul	s1,s7,s1
    b828:	0384c4b3          	div	s1,s1,s8
    b82c:	00e4f463          	bgeu	s1,a4,b834 <__ssprint_r+0x9c>
    b830:	00070493          	addi	s1,a4,0
    b834:	4007f793          	andi	a5,a5,1024
    b838:	10078263          	beq	a5,zero,b93c <__ssprint_r+0x1a4>
    b83c:	00048593          	addi	a1,s1,0
    b840:	000a0513          	addi	a0,s4,0
    b844:	a51fa0ef          	jal	ra,6294 <_malloc_r>
    b848:	00050d13          	addi	s10,a0,0
    b84c:	02051c63          	bne	a0,zero,b884 <__ssprint_r+0xec>
    b850:	00c00793          	addi	a5,zero,12
    b854:	00fa2023          	sw	a5,0(s4)
    b858:	00c45783          	lhu	a5,12(s0)
    b85c:	fff00513          	addi	a0,zero,-1
    b860:	0407e793          	ori	a5,a5,64
    b864:	00f41623          	sh	a5,12(s0)
    b868:	0009a423          	sw	zero,8(s3)
    b86c:	0009a223          	sw	zero,4(s3)
    b870:	0940006f          	jal	zero,b904 <__ssprint_r+0x16c>
    b874:	000aab03          	lw	s6,0(s5)
    b878:	004aa903          	lw	s2,4(s5)
    b87c:	008a8a93          	addi	s5,s5,8
    b880:	f75ff06f          	jal	zero,b7f4 <__ssprint_r+0x5c>
    b884:	01042583          	lw	a1,16(s0)
    b888:	000c8613          	addi	a2,s9,0
    b88c:	908fb0ef          	jal	ra,6994 <memcpy>
    b890:	00c45783          	lhu	a5,12(s0)
    b894:	b7f7f793          	andi	a5,a5,-1153
    b898:	0807e793          	ori	a5,a5,128
    b89c:	00f41623          	sh	a5,12(s0)
    b8a0:	01a42823          	sw	s10,16(s0)
    b8a4:	00942a23          	sw	s1,20(s0)
    b8a8:	019d0d33          	add	s10,s10,s9
    b8ac:	419484b3          	sub	s1,s1,s9
    b8b0:	01a42023          	sw	s10,0(s0)
    b8b4:	00942423          	sw	s1,8(s0)
    b8b8:	00090d13          	addi	s10,s2,0
    b8bc:	01a97463          	bgeu	s2,s10,b8c4 <__ssprint_r+0x12c>
    b8c0:	00090d13          	addi	s10,s2,0
    b8c4:	00042503          	lw	a0,0(s0)
    b8c8:	000d0613          	addi	a2,s10,0
    b8cc:	000b0593          	addi	a1,s6,0
    b8d0:	99cfb0ef          	jal	ra,6a6c <memmove>
    b8d4:	00842783          	lw	a5,8(s0)
    b8d8:	41a787b3          	sub	a5,a5,s10
    b8dc:	00f42423          	sw	a5,8(s0)
    b8e0:	00042783          	lw	a5,0(s0)
    b8e4:	01a78d33          	add	s10,a5,s10
    b8e8:	0089a783          	lw	a5,8(s3)
    b8ec:	01a42023          	sw	s10,0(s0)
    b8f0:	41278933          	sub	s2,a5,s2
    b8f4:	0129a423          	sw	s2,8(s3)
    b8f8:	f6091ee3          	bne	s2,zero,b874 <__ssprint_r+0xdc>
    b8fc:	0009a223          	sw	zero,4(s3)
    b900:	00000513          	addi	a0,zero,0
    b904:	02c12083          	lw	ra,44(sp)
    b908:	02812403          	lw	s0,40(sp)
    b90c:	02412483          	lw	s1,36(sp)
    b910:	02012903          	lw	s2,32(sp)
    b914:	01c12983          	lw	s3,28(sp)
    b918:	01812a03          	lw	s4,24(sp)
    b91c:	01412a83          	lw	s5,20(sp)
    b920:	01012b03          	lw	s6,16(sp)
    b924:	00c12b83          	lw	s7,12(sp)
    b928:	00812c03          	lw	s8,8(sp)
    b92c:	00412c83          	lw	s9,4(sp)
    b930:	00012d03          	lw	s10,0(sp)
    b934:	03010113          	addi	sp,sp,48
    b938:	00008067          	jalr	zero,0(ra)
    b93c:	00048613          	addi	a2,s1,0
    b940:	000a0513          	addi	a0,s4,0
    b944:	808fc0ef          	jal	ra,794c <_realloc_r>
    b948:	00050d13          	addi	s10,a0,0
    b94c:	f4051ae3          	bne	a0,zero,b8a0 <__ssprint_r+0x108>
    b950:	01042583          	lw	a1,16(s0)
    b954:	000a0513          	addi	a0,s4,0
    b958:	f15f70ef          	jal	ra,386c <_free_r>
    b95c:	ef5ff06f          	jal	zero,b850 <__ssprint_r+0xb8>

0000b960 <_svfiprintf_r>:
    b960:	00c5d783          	lhu	a5,12(a1)
    b964:	ee010113          	addi	sp,sp,-288
    b968:	10912a23          	sw	s1,276(sp)
    b96c:	11212823          	sw	s2,272(sp)
    b970:	11412423          	sw	s4,264(sp)
    b974:	11512223          	sw	s5,260(sp)
    b978:	10112e23          	sw	ra,284(sp)
    b97c:	10812c23          	sw	s0,280(sp)
    b980:	11312623          	sw	s3,268(sp)
    b984:	11612023          	sw	s6,256(sp)
    b988:	0f712e23          	sw	s7,252(sp)
    b98c:	0f812c23          	sw	s8,248(sp)
    b990:	0f912a23          	sw	s9,244(sp)
    b994:	0fa12823          	sw	s10,240(sp)
    b998:	0fb12623          	sw	s11,236(sp)
    b99c:	0807f793          	andi	a5,a5,128
    b9a0:	00050a13          	addi	s4,a0,0
    b9a4:	00058913          	addi	s2,a1,0
    b9a8:	00060a93          	addi	s5,a2,0
    b9ac:	00068493          	addi	s1,a3,0
    b9b0:	02078c63          	beq	a5,zero,b9e8 <_svfiprintf_r+0x88>
    b9b4:	0105a783          	lw	a5,16(a1)
    b9b8:	02079863          	bne	a5,zero,b9e8 <_svfiprintf_r+0x88>
    b9bc:	04000593          	addi	a1,zero,64
    b9c0:	8d5fa0ef          	jal	ra,6294 <_malloc_r>
    b9c4:	00a92023          	sw	a0,0(s2)
    b9c8:	00a92823          	sw	a0,16(s2)
    b9cc:	00051a63          	bne	a0,zero,b9e0 <_svfiprintf_r+0x80>
    b9d0:	00c00793          	addi	a5,zero,12
    b9d4:	00fa2023          	sw	a5,0(s4)
    b9d8:	fff00b93          	addi	s7,zero,-1
    b9dc:	3090006f          	jal	zero,c4e4 <_svfiprintf_r+0xb84>
    b9e0:	04000793          	addi	a5,zero,64
    b9e4:	00f92a23          	sw	a5,20(s2)
    b9e8:	03c10b13          	addi	s6,sp,60
    b9ec:	03612823          	sw	s6,48(sp)
    b9f0:	02012c23          	sw	zero,56(sp)
    b9f4:	02012a23          	sw	zero,52(sp)
    b9f8:	000b0713          	addi	a4,s6,0
    b9fc:	00012623          	sw	zero,12(sp)
    ba00:	00012223          	sw	zero,4(sp)
    ba04:	00012423          	sw	zero,8(sp)
    ba08:	00012823          	sw	zero,16(sp)
    ba0c:	00000b93          	addi	s7,zero,0
    ba10:	000a8413          	addi	s0,s5,0
    ba14:	02500693          	addi	a3,zero,37
    ba18:	00044783          	lbu	a5,0(s0)
    ba1c:	00078463          	beq	a5,zero,ba24 <_svfiprintf_r+0xc4>
    ba20:	0ad79463          	bne	a5,a3,bac8 <_svfiprintf_r+0x168>
    ba24:	415409b3          	sub	s3,s0,s5
    ba28:	04098663          	beq	s3,zero,ba74 <_svfiprintf_r+0x114>
    ba2c:	03812783          	lw	a5,56(sp)
    ba30:	01572023          	sw	s5,0(a4)
    ba34:	01372223          	sw	s3,4(a4)
    ba38:	013787b3          	add	a5,a5,s3
    ba3c:	02f12c23          	sw	a5,56(sp)
    ba40:	03412783          	lw	a5,52(sp)
    ba44:	00700693          	addi	a3,zero,7
    ba48:	00870713          	addi	a4,a4,8
    ba4c:	00178793          	addi	a5,a5,1
    ba50:	02f12a23          	sw	a5,52(sp)
    ba54:	00f6de63          	bge	a3,a5,ba70 <_svfiprintf_r+0x110>
    ba58:	03010613          	addi	a2,sp,48
    ba5c:	00090593          	addi	a1,s2,0
    ba60:	000a0513          	addi	a0,s4,0
    ba64:	d35ff0ef          	jal	ra,b798 <__ssprint_r>
    ba68:	260518e3          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    ba6c:	000b0713          	addi	a4,s6,0
    ba70:	013b8bb3          	add	s7,s7,s3
    ba74:	00044783          	lbu	a5,0(s0)
    ba78:	2e0782e3          	beq	a5,zero,c55c <_svfiprintf_r+0xbfc>
    ba7c:	00140693          	addi	a3,s0,1
    ba80:	020105a3          	sb	zero,43(sp)
    ba84:	fff00413          	addi	s0,zero,-1
    ba88:	00000993          	addi	s3,zero,0
    ba8c:	00000d13          	addi	s10,zero,0
    ba90:	00900c13          	addi	s8,zero,9
    ba94:	02a00c93          	addi	s9,zero,42
    ba98:	0006c603          	lbu	a2,0(a3)
    ba9c:	00168a93          	addi	s5,a3,1
    baa0:	05a00513          	addi	a0,zero,90
    baa4:	fe060693          	addi	a3,a2,-32
    baa8:	0ed564e3          	bltu	a0,a3,c390 <_svfiprintf_r+0xa30>
    baac:	00006797          	auipc	a5,0x6
    bab0:	27878793          	addi	a5,a5,632 # 11d24 <_ctype_+0x104>
    bab4:	00269693          	slli	a3,a3,0x2
    bab8:	00f686b3          	add	a3,a3,a5
    babc:	0006a683          	lw	a3,0(a3)
    bac0:	00f686b3          	add	a3,a3,a5
    bac4:	00068067          	jalr	zero,0(a3)
    bac8:	00140413          	addi	s0,s0,1
    bacc:	f4dff06f          	jal	zero,ba18 <_svfiprintf_r+0xb8>
    bad0:	00006797          	auipc	a5,0x6
    bad4:	a5878793          	addi	a5,a5,-1448 # 11528 <zeroes.4514+0x20>
    bad8:	00f12623          	sw	a5,12(sp)
    badc:	020d7693          	andi	a3,s10,32
    bae0:	6c068063          	beq	a3,zero,c1a0 <_svfiprintf_r+0x840>
    bae4:	00748493          	addi	s1,s1,7
    bae8:	ff84f493          	andi	s1,s1,-8
    baec:	0004ad83          	lw	s11,0(s1)
    baf0:	0044ac83          	lw	s9,4(s1)
    baf4:	00848c13          	addi	s8,s1,8
    baf8:	001d7693          	andi	a3,s10,1
    bafc:	00068e63          	beq	a3,zero,bb18 <_svfiprintf_r+0x1b8>
    bb00:	019de6b3          	or	a3,s11,s9
    bb04:	00068a63          	beq	a3,zero,bb18 <_svfiprintf_r+0x1b8>
    bb08:	03000693          	addi	a3,zero,48
    bb0c:	02d10623          	sb	a3,44(sp)
    bb10:	02c106a3          	sb	a2,45(sp)
    bb14:	002d6d13          	ori	s10,s10,2
    bb18:	bffd7d13          	andi	s10,s10,-1025
    bb1c:	3140006f          	jal	zero,be30 <_svfiprintf_r+0x4d0>
    bb20:	000a0513          	addi	a0,s4,0
    bb24:	00e12023          	sw	a4,0(sp)
    bb28:	cd8fa0ef          	jal	ra,6000 <_localeconv_r>
    bb2c:	00452783          	lw	a5,4(a0)
    bb30:	00078513          	addi	a0,a5,0
    bb34:	00f12823          	sw	a5,16(sp)
    bb38:	b74f50ef          	jal	ra,eac <strlen>
    bb3c:	00a12423          	sw	a0,8(sp)
    bb40:	000a0513          	addi	a0,s4,0
    bb44:	cbcfa0ef          	jal	ra,6000 <_localeconv_r>
    bb48:	00852783          	lw	a5,8(a0)
    bb4c:	00012703          	lw	a4,0(sp)
    bb50:	00f12223          	sw	a5,4(sp)
    bb54:	00812783          	lw	a5,8(sp)
    bb58:	00078c63          	beq	a5,zero,bb70 <_svfiprintf_r+0x210>
    bb5c:	00412783          	lw	a5,4(sp)
    bb60:	00078863          	beq	a5,zero,bb70 <_svfiprintf_r+0x210>
    bb64:	0007c683          	lbu	a3,0(a5)
    bb68:	00068463          	beq	a3,zero,bb70 <_svfiprintf_r+0x210>
    bb6c:	400d6d13          	ori	s10,s10,1024
    bb70:	000a8693          	addi	a3,s5,0
    bb74:	f25ff06f          	jal	zero,ba98 <_svfiprintf_r+0x138>
    bb78:	02b14683          	lbu	a3,43(sp)
    bb7c:	fe069ae3          	bne	a3,zero,bb70 <_svfiprintf_r+0x210>
    bb80:	02000693          	addi	a3,zero,32
    bb84:	02d105a3          	sb	a3,43(sp)
    bb88:	fe9ff06f          	jal	zero,bb70 <_svfiprintf_r+0x210>
    bb8c:	001d6d13          	ori	s10,s10,1
    bb90:	fe1ff06f          	jal	zero,bb70 <_svfiprintf_r+0x210>
    bb94:	0004a983          	lw	s3,0(s1)
    bb98:	00448493          	addi	s1,s1,4
    bb9c:	fc09dae3          	bge	s3,zero,bb70 <_svfiprintf_r+0x210>
    bba0:	413009b3          	sub	s3,zero,s3
    bba4:	004d6d13          	ori	s10,s10,4
    bba8:	fc9ff06f          	jal	zero,bb70 <_svfiprintf_r+0x210>
    bbac:	02b00693          	addi	a3,zero,43
    bbb0:	fd5ff06f          	jal	zero,bb84 <_svfiprintf_r+0x224>
    bbb4:	000ac603          	lbu	a2,0(s5)
    bbb8:	001a8693          	addi	a3,s5,1
    bbbc:	05961263          	bne	a2,s9,bc00 <_svfiprintf_r+0x2a0>
    bbc0:	0004a403          	lw	s0,0(s1)
    bbc4:	00448613          	addi	a2,s1,4
    bbc8:	00045463          	bge	s0,zero,bbd0 <_svfiprintf_r+0x270>
    bbcc:	fff00413          	addi	s0,zero,-1
    bbd0:	00060493          	addi	s1,a2,0
    bbd4:	00068a93          	addi	s5,a3,0
    bbd8:	f99ff06f          	jal	zero,bb70 <_svfiprintf_r+0x210>
    bbdc:	00a00793          	addi	a5,zero,10
    bbe0:	02f40433          	mul	s0,s0,a5
    bbe4:	00168693          	addi	a3,a3,1
    bbe8:	fff6c603          	lbu	a2,-1(a3)
    bbec:	00b40433          	add	s0,s0,a1
    bbf0:	fd060593          	addi	a1,a2,-48
    bbf4:	febc74e3          	bgeu	s8,a1,bbdc <_svfiprintf_r+0x27c>
    bbf8:	00068a93          	addi	s5,a3,0
    bbfc:	ea9ff06f          	jal	zero,baa4 <_svfiprintf_r+0x144>
    bc00:	00000413          	addi	s0,zero,0
    bc04:	fedff06f          	jal	zero,bbf0 <_svfiprintf_r+0x290>
    bc08:	080d6d13          	ori	s10,s10,128
    bc0c:	f65ff06f          	jal	zero,bb70 <_svfiprintf_r+0x210>
    bc10:	000a8693          	addi	a3,s5,0
    bc14:	00000993          	addi	s3,zero,0
    bc18:	00a00793          	addi	a5,zero,10
    bc1c:	02f989b3          	mul	s3,s3,a5
    bc20:	fd060613          	addi	a2,a2,-48
    bc24:	00168693          	addi	a3,a3,1
    bc28:	013609b3          	add	s3,a2,s3
    bc2c:	fff6c603          	lbu	a2,-1(a3)
    bc30:	fd060593          	addi	a1,a2,-48
    bc34:	febc72e3          	bgeu	s8,a1,bc18 <_svfiprintf_r+0x2b8>
    bc38:	fc1ff06f          	jal	zero,bbf8 <_svfiprintf_r+0x298>
    bc3c:	000ac603          	lbu	a2,0(s5)
    bc40:	06800693          	addi	a3,zero,104
    bc44:	00d61863          	bne	a2,a3,bc54 <_svfiprintf_r+0x2f4>
    bc48:	001a8a93          	addi	s5,s5,1
    bc4c:	200d6d13          	ori	s10,s10,512
    bc50:	f21ff06f          	jal	zero,bb70 <_svfiprintf_r+0x210>
    bc54:	040d6d13          	ori	s10,s10,64
    bc58:	f19ff06f          	jal	zero,bb70 <_svfiprintf_r+0x210>
    bc5c:	000ac603          	lbu	a2,0(s5)
    bc60:	06c00693          	addi	a3,zero,108
    bc64:	00d61863          	bne	a2,a3,bc74 <_svfiprintf_r+0x314>
    bc68:	001a8a93          	addi	s5,s5,1
    bc6c:	020d6d13          	ori	s10,s10,32
    bc70:	f01ff06f          	jal	zero,bb70 <_svfiprintf_r+0x210>
    bc74:	010d6d13          	ori	s10,s10,16
    bc78:	ef9ff06f          	jal	zero,bb70 <_svfiprintf_r+0x210>
    bc7c:	0004a683          	lw	a3,0(s1)
    bc80:	00448c13          	addi	s8,s1,4
    bc84:	020105a3          	sb	zero,43(sp)
    bc88:	06d10e23          	sb	a3,124(sp)
    bc8c:	00100413          	addi	s0,zero,1
    bc90:	00000c93          	addi	s9,zero,0
    bc94:	07c10493          	addi	s1,sp,124
    bc98:	1d80006f          	jal	zero,be70 <_svfiprintf_r+0x510>
    bc9c:	010d6d13          	ori	s10,s10,16
    bca0:	020d7693          	andi	a3,s10,32
    bca4:	06068263          	beq	a3,zero,bd08 <_svfiprintf_r+0x3a8>
    bca8:	00748493          	addi	s1,s1,7
    bcac:	ff84f493          	andi	s1,s1,-8
    bcb0:	0004ad83          	lw	s11,0(s1)
    bcb4:	0044ac83          	lw	s9,4(s1)
    bcb8:	00848c13          	addi	s8,s1,8
    bcbc:	0a0cdee3          	bge	s9,zero,c578 <_svfiprintf_r+0xc18>
    bcc0:	41b00333          	sub	t1,zero,s11
    bcc4:	006036b3          	sltu	a3,zero,t1
    bcc8:	41900833          	sub	a6,zero,s9
    bccc:	40d80cb3          	sub	s9,a6,a3
    bcd0:	02d00693          	addi	a3,zero,45
    bcd4:	02d105a3          	sb	a3,43(sp)
    bcd8:	00030d93          	addi	s11,t1,0
    bcdc:	00100693          	addi	a3,zero,1
    bce0:	fff00613          	addi	a2,zero,-1
    bce4:	50c40063          	beq	s0,a2,c1e4 <_svfiprintf_r+0x884>
    bce8:	000d0613          	addi	a2,s10,0
    bcec:	019de5b3          	or	a1,s11,s9
    bcf0:	f7fd7d13          	andi	s10,s10,-129
    bcf4:	4e059863          	bne	a1,zero,c1e4 <_svfiprintf_r+0x884>
    bcf8:	66040e63          	beq	s0,zero,c374 <_svfiprintf_r+0xa14>
    bcfc:	00100613          	addi	a2,zero,1
    bd00:	4ec69663          	bne	a3,a2,c1ec <_svfiprintf_r+0x88c>
    bd04:	0890006f          	jal	zero,c58c <_svfiprintf_r+0xc2c>
    bd08:	010d7693          	andi	a3,s10,16
    bd0c:	00448c13          	addi	s8,s1,4
    bd10:	00068863          	beq	a3,zero,bd20 <_svfiprintf_r+0x3c0>
    bd14:	0004ad83          	lw	s11,0(s1)
    bd18:	41fddc93          	srai	s9,s11,0x1f
    bd1c:	fa1ff06f          	jal	zero,bcbc <_svfiprintf_r+0x35c>
    bd20:	040d7693          	andi	a3,s10,64
    bd24:	0004a303          	lw	t1,0(s1)
    bd28:	00068863          	beq	a3,zero,bd38 <_svfiprintf_r+0x3d8>
    bd2c:	01031d93          	slli	s11,t1,0x10
    bd30:	410ddd93          	srai	s11,s11,0x10
    bd34:	fe5ff06f          	jal	zero,bd18 <_svfiprintf_r+0x3b8>
    bd38:	200d7693          	andi	a3,s10,512
    bd3c:	00030d93          	addi	s11,t1,0
    bd40:	fc068ce3          	beq	a3,zero,bd18 <_svfiprintf_r+0x3b8>
    bd44:	01831d93          	slli	s11,t1,0x18
    bd48:	418ddd93          	srai	s11,s11,0x18
    bd4c:	fcdff06f          	jal	zero,bd18 <_svfiprintf_r+0x3b8>
    bd50:	020d7613          	andi	a2,s10,32
    bd54:	0004a683          	lw	a3,0(s1)
    bd58:	00448493          	addi	s1,s1,4
    bd5c:	00060a63          	beq	a2,zero,bd70 <_svfiprintf_r+0x410>
    bd60:	41fbd793          	srai	a5,s7,0x1f
    bd64:	0176a023          	sw	s7,0(a3)
    bd68:	00f6a223          	sw	a5,4(a3)
    bd6c:	ca5ff06f          	jal	zero,ba10 <_svfiprintf_r+0xb0>
    bd70:	010d7613          	andi	a2,s10,16
    bd74:	00060663          	beq	a2,zero,bd80 <_svfiprintf_r+0x420>
    bd78:	0176a023          	sw	s7,0(a3)
    bd7c:	c95ff06f          	jal	zero,ba10 <_svfiprintf_r+0xb0>
    bd80:	040d7613          	andi	a2,s10,64
    bd84:	00060663          	beq	a2,zero,bd90 <_svfiprintf_r+0x430>
    bd88:	01769023          	sh	s7,0(a3)
    bd8c:	c85ff06f          	jal	zero,ba10 <_svfiprintf_r+0xb0>
    bd90:	200d7793          	andi	a5,s10,512
    bd94:	fe0782e3          	beq	a5,zero,bd78 <_svfiprintf_r+0x418>
    bd98:	01768023          	sb	s7,0(a3)
    bd9c:	c75ff06f          	jal	zero,ba10 <_svfiprintf_r+0xb0>
    bda0:	010d6d13          	ori	s10,s10,16
    bda4:	020d7693          	andi	a3,s10,32
    bda8:	02068463          	beq	a3,zero,bdd0 <_svfiprintf_r+0x470>
    bdac:	00748493          	addi	s1,s1,7
    bdb0:	ff84f493          	andi	s1,s1,-8
    bdb4:	0004ad83          	lw	s11,0(s1)
    bdb8:	0044ac83          	lw	s9,4(s1)
    bdbc:	00848c13          	addi	s8,s1,8
    bdc0:	bffd7d13          	andi	s10,s10,-1025
    bdc4:	00000693          	addi	a3,zero,0
    bdc8:	020105a3          	sb	zero,43(sp)
    bdcc:	f15ff06f          	jal	zero,bce0 <_svfiprintf_r+0x380>
    bdd0:	010d7693          	andi	a3,s10,16
    bdd4:	00448c13          	addi	s8,s1,4
    bdd8:	00068663          	beq	a3,zero,bde4 <_svfiprintf_r+0x484>
    bddc:	0004ad83          	lw	s11,0(s1)
    bde0:	0100006f          	jal	zero,bdf0 <_svfiprintf_r+0x490>
    bde4:	040d7693          	andi	a3,s10,64
    bde8:	00068863          	beq	a3,zero,bdf8 <_svfiprintf_r+0x498>
    bdec:	0004dd83          	lhu	s11,0(s1)
    bdf0:	00000c93          	addi	s9,zero,0
    bdf4:	fcdff06f          	jal	zero,bdc0 <_svfiprintf_r+0x460>
    bdf8:	200d7693          	andi	a3,s10,512
    bdfc:	fe0680e3          	beq	a3,zero,bddc <_svfiprintf_r+0x47c>
    be00:	0004cd83          	lbu	s11,0(s1)
    be04:	fedff06f          	jal	zero,bdf0 <_svfiprintf_r+0x490>
    be08:	ffff86b7          	lui	a3,0xffff8
    be0c:	0004ad83          	lw	s11,0(s1)
    be10:	8306c693          	xori	a3,a3,-2000
    be14:	00005797          	auipc	a5,0x5
    be18:	71478793          	addi	a5,a5,1812 # 11528 <zeroes.4514+0x20>
    be1c:	00448c13          	addi	s8,s1,4
    be20:	00000c93          	addi	s9,zero,0
    be24:	002d6d13          	ori	s10,s10,2
    be28:	02d11623          	sh	a3,44(sp)
    be2c:	00f12623          	sw	a5,12(sp)
    be30:	00200693          	addi	a3,zero,2
    be34:	f95ff06f          	jal	zero,bdc8 <_svfiprintf_r+0x468>
    be38:	020105a3          	sb	zero,43(sp)
    be3c:	fff00693          	addi	a3,zero,-1
    be40:	00e12023          	sw	a4,0(sp)
    be44:	00448c13          	addi	s8,s1,4
    be48:	0004a483          	lw	s1,0(s1)
    be4c:	2cd40863          	beq	s0,a3,c11c <_svfiprintf_r+0x7bc>
    be50:	00040613          	addi	a2,s0,0
    be54:	00000593          	addi	a1,zero,0
    be58:	00048513          	addi	a0,s1,0
    be5c:	b15fa0ef          	jal	ra,6970 <memchr>
    be60:	00000c93          	addi	s9,zero,0
    be64:	00012703          	lw	a4,0(sp)
    be68:	00050463          	beq	a0,zero,be70 <_svfiprintf_r+0x510>
    be6c:	40950433          	sub	s0,a0,s1
    be70:	01912023          	sw	s9,0(sp)
    be74:	008cd463          	bge	s9,s0,be7c <_svfiprintf_r+0x51c>
    be78:	00812023          	sw	s0,0(sp)
    be7c:	02b14683          	lbu	a3,43(sp)
    be80:	00068863          	beq	a3,zero,be90 <_svfiprintf_r+0x530>
    be84:	00012783          	lw	a5,0(sp)
    be88:	00178793          	addi	a5,a5,1
    be8c:	00f12023          	sw	a5,0(sp)
    be90:	002d7d93          	andi	s11,s10,2
    be94:	000d8863          	beq	s11,zero,bea4 <_svfiprintf_r+0x544>
    be98:	00012783          	lw	a5,0(sp)
    be9c:	00278793          	addi	a5,a5,2
    bea0:	00f12023          	sw	a5,0(sp)
    bea4:	084d7793          	andi	a5,s10,132
    bea8:	00f12a23          	sw	a5,20(sp)
    beac:	06079663          	bne	a5,zero,bf18 <_svfiprintf_r+0x5b8>
    beb0:	00012783          	lw	a5,0(sp)
    beb4:	40f986b3          	sub	a3,s3,a5
    beb8:	06d05063          	bge	zero,a3,bf18 <_svfiprintf_r+0x5b8>
    bebc:	01000893          	addi	a7,zero,16
    bec0:	00006817          	auipc	a6,0x6
    bec4:	fd080813          	addi	a6,a6,-48 # 11e90 <blanks.4475>
    bec8:	00700313          	addi	t1,zero,7
    becc:	03412603          	lw	a2,52(sp)
    bed0:	01072023          	sw	a6,0(a4)
    bed4:	03812583          	lw	a1,56(sp)
    bed8:	00160613          	addi	a2,a2,1
    bedc:	00870513          	addi	a0,a4,8
    bee0:	4cd8c263          	blt	a7,a3,c3a4 <_svfiprintf_r+0xa44>
    bee4:	00d72223          	sw	a3,4(a4)
    bee8:	00b686b3          	add	a3,a3,a1
    beec:	02d12c23          	sw	a3,56(sp)
    bef0:	02c12a23          	sw	a2,52(sp)
    bef4:	00700693          	addi	a3,zero,7
    bef8:	00050713          	addi	a4,a0,0
    befc:	00c6de63          	bge	a3,a2,bf18 <_svfiprintf_r+0x5b8>
    bf00:	03010613          	addi	a2,sp,48
    bf04:	00090593          	addi	a1,s2,0
    bf08:	000a0513          	addi	a0,s4,0
    bf0c:	88dff0ef          	jal	ra,b798 <__ssprint_r>
    bf10:	5c051463          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    bf14:	000b0713          	addi	a4,s6,0
    bf18:	02b14683          	lbu	a3,43(sp)
    bf1c:	04068863          	beq	a3,zero,bf6c <_svfiprintf_r+0x60c>
    bf20:	02b10613          	addi	a2,sp,43
    bf24:	00c72023          	sw	a2,0(a4)
    bf28:	00100613          	addi	a2,zero,1
    bf2c:	03412683          	lw	a3,52(sp)
    bf30:	00c72223          	sw	a2,4(a4)
    bf34:	03812603          	lw	a2,56(sp)
    bf38:	00168693          	addi	a3,a3,1 # ffff8001 <__heap_top+0xffef8001>
    bf3c:	02d12a23          	sw	a3,52(sp)
    bf40:	00160613          	addi	a2,a2,1
    bf44:	02c12c23          	sw	a2,56(sp)
    bf48:	00700613          	addi	a2,zero,7
    bf4c:	00870713          	addi	a4,a4,8
    bf50:	00d65e63          	bge	a2,a3,bf6c <_svfiprintf_r+0x60c>
    bf54:	03010613          	addi	a2,sp,48
    bf58:	00090593          	addi	a1,s2,0
    bf5c:	000a0513          	addi	a0,s4,0
    bf60:	839ff0ef          	jal	ra,b798 <__ssprint_r>
    bf64:	56051a63          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    bf68:	000b0713          	addi	a4,s6,0
    bf6c:	040d8863          	beq	s11,zero,bfbc <_svfiprintf_r+0x65c>
    bf70:	02c10613          	addi	a2,sp,44
    bf74:	00c72023          	sw	a2,0(a4)
    bf78:	00200613          	addi	a2,zero,2
    bf7c:	03412683          	lw	a3,52(sp)
    bf80:	00c72223          	sw	a2,4(a4)
    bf84:	03812603          	lw	a2,56(sp)
    bf88:	00168693          	addi	a3,a3,1
    bf8c:	02d12a23          	sw	a3,52(sp)
    bf90:	00260613          	addi	a2,a2,2
    bf94:	02c12c23          	sw	a2,56(sp)
    bf98:	00700613          	addi	a2,zero,7
    bf9c:	00870713          	addi	a4,a4,8
    bfa0:	00d65e63          	bge	a2,a3,bfbc <_svfiprintf_r+0x65c>
    bfa4:	03010613          	addi	a2,sp,48
    bfa8:	00090593          	addi	a1,s2,0
    bfac:	000a0513          	addi	a0,s4,0
    bfb0:	fe8ff0ef          	jal	ra,b798 <__ssprint_r>
    bfb4:	52051263          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    bfb8:	000b0713          	addi	a4,s6,0
    bfbc:	01412783          	lw	a5,20(sp)
    bfc0:	08000693          	addi	a3,zero,128
    bfc4:	06d79663          	bne	a5,a3,c030 <_svfiprintf_r+0x6d0>
    bfc8:	00012783          	lw	a5,0(sp)
    bfcc:	40f98db3          	sub	s11,s3,a5
    bfd0:	07b05063          	bge	zero,s11,c030 <_svfiprintf_r+0x6d0>
    bfd4:	01000893          	addi	a7,zero,16
    bfd8:	00006817          	auipc	a6,0x6
    bfdc:	ec880813          	addi	a6,a6,-312 # 11ea0 <zeroes.4476>
    bfe0:	00700313          	addi	t1,zero,7
    bfe4:	03412683          	lw	a3,52(sp)
    bfe8:	01072023          	sw	a6,0(a4)
    bfec:	03812603          	lw	a2,56(sp)
    bff0:	00168693          	addi	a3,a3,1
    bff4:	00870593          	addi	a1,a4,8
    bff8:	3fb8ce63          	blt	a7,s11,c3f4 <_svfiprintf_r+0xa94>
    bffc:	01b72223          	sw	s11,4(a4)
    c000:	00cd8db3          	add	s11,s11,a2
    c004:	03b12c23          	sw	s11,56(sp)
    c008:	02d12a23          	sw	a3,52(sp)
    c00c:	00700613          	addi	a2,zero,7
    c010:	00058713          	addi	a4,a1,0
    c014:	00d65e63          	bge	a2,a3,c030 <_svfiprintf_r+0x6d0>
    c018:	03010613          	addi	a2,sp,48
    c01c:	00090593          	addi	a1,s2,0
    c020:	000a0513          	addi	a0,s4,0
    c024:	f74ff0ef          	jal	ra,b798 <__ssprint_r>
    c028:	4a051863          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    c02c:	000b0713          	addi	a4,s6,0
    c030:	408c8cb3          	sub	s9,s9,s0
    c034:	07905063          	bge	zero,s9,c094 <_svfiprintf_r+0x734>
    c038:	01000813          	addi	a6,zero,16
    c03c:	00006d97          	auipc	s11,0x6
    c040:	e64d8d93          	addi	s11,s11,-412 # 11ea0 <zeroes.4476>
    c044:	00700893          	addi	a7,zero,7
    c048:	03412683          	lw	a3,52(sp)
    c04c:	01b72023          	sw	s11,0(a4)
    c050:	03812603          	lw	a2,56(sp)
    c054:	00168693          	addi	a3,a3,1
    c058:	00870593          	addi	a1,a4,8
    c05c:	3f984063          	blt	a6,s9,c43c <_svfiprintf_r+0xadc>
    c060:	01972223          	sw	s9,4(a4)
    c064:	00cc8cb3          	add	s9,s9,a2
    c068:	03912c23          	sw	s9,56(sp)
    c06c:	02d12a23          	sw	a3,52(sp)
    c070:	00700613          	addi	a2,zero,7
    c074:	00058713          	addi	a4,a1,0
    c078:	00d65e63          	bge	a2,a3,c094 <_svfiprintf_r+0x734>
    c07c:	03010613          	addi	a2,sp,48
    c080:	00090593          	addi	a1,s2,0
    c084:	000a0513          	addi	a0,s4,0
    c088:	f10ff0ef          	jal	ra,b798 <__ssprint_r>
    c08c:	44051663          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    c090:	000b0713          	addi	a4,s6,0
    c094:	03812683          	lw	a3,56(sp)
    c098:	00872223          	sw	s0,4(a4)
    c09c:	00972023          	sw	s1,0(a4)
    c0a0:	00868433          	add	s0,a3,s0
    c0a4:	03412683          	lw	a3,52(sp)
    c0a8:	02812c23          	sw	s0,56(sp)
    c0ac:	00700613          	addi	a2,zero,7
    c0b0:	00168693          	addi	a3,a3,1
    c0b4:	02d12a23          	sw	a3,52(sp)
    c0b8:	00870713          	addi	a4,a4,8
    c0bc:	00d65e63          	bge	a2,a3,c0d8 <_svfiprintf_r+0x778>
    c0c0:	03010613          	addi	a2,sp,48
    c0c4:	00090593          	addi	a1,s2,0
    c0c8:	000a0513          	addi	a0,s4,0
    c0cc:	eccff0ef          	jal	ra,b798 <__ssprint_r>
    c0d0:	40051463          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    c0d4:	000b0713          	addi	a4,s6,0
    c0d8:	004d7793          	andi	a5,s10,4
    c0dc:	3a079063          	bne	a5,zero,c47c <_svfiprintf_r+0xb1c>
    c0e0:	00012783          	lw	a5,0(sp)
    c0e4:	00f9d463          	bge	s3,a5,c0ec <_svfiprintf_r+0x78c>
    c0e8:	00078993          	addi	s3,a5,0
    c0ec:	03812783          	lw	a5,56(sp)
    c0f0:	013b8bb3          	add	s7,s7,s3
    c0f4:	00078c63          	beq	a5,zero,c10c <_svfiprintf_r+0x7ac>
    c0f8:	03010613          	addi	a2,sp,48
    c0fc:	00090593          	addi	a1,s2,0
    c100:	000a0513          	addi	a0,s4,0
    c104:	e94ff0ef          	jal	ra,b798 <__ssprint_r>
    c108:	3c051863          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    c10c:	02012a23          	sw	zero,52(sp)
    c110:	000c0493          	addi	s1,s8,0
    c114:	000b0713          	addi	a4,s6,0
    c118:	8f9ff06f          	jal	zero,ba10 <_svfiprintf_r+0xb0>
    c11c:	00048513          	addi	a0,s1,0
    c120:	d8df40ef          	jal	ra,eac <strlen>
    c124:	00050413          	addi	s0,a0,0
    c128:	00000c93          	addi	s9,zero,0
    c12c:	00012703          	lw	a4,0(sp)
    c130:	d41ff06f          	jal	zero,be70 <_svfiprintf_r+0x510>
    c134:	010d6d13          	ori	s10,s10,16
    c138:	020d7693          	andi	a3,s10,32
    c13c:	02068063          	beq	a3,zero,c15c <_svfiprintf_r+0x7fc>
    c140:	00748493          	addi	s1,s1,7
    c144:	ff84f493          	andi	s1,s1,-8
    c148:	0004ad83          	lw	s11,0(s1)
    c14c:	0044ac83          	lw	s9,4(s1)
    c150:	00848c13          	addi	s8,s1,8
    c154:	00100693          	addi	a3,zero,1
    c158:	c71ff06f          	jal	zero,bdc8 <_svfiprintf_r+0x468>
    c15c:	010d7693          	andi	a3,s10,16
    c160:	00448c13          	addi	s8,s1,4
    c164:	00068663          	beq	a3,zero,c170 <_svfiprintf_r+0x810>
    c168:	0004ad83          	lw	s11,0(s1)
    c16c:	0100006f          	jal	zero,c17c <_svfiprintf_r+0x81c>
    c170:	040d7693          	andi	a3,s10,64
    c174:	00068863          	beq	a3,zero,c184 <_svfiprintf_r+0x824>
    c178:	0004dd83          	lhu	s11,0(s1)
    c17c:	00000c93          	addi	s9,zero,0
    c180:	fd5ff06f          	jal	zero,c154 <_svfiprintf_r+0x7f4>
    c184:	200d7693          	andi	a3,s10,512
    c188:	fe0680e3          	beq	a3,zero,c168 <_svfiprintf_r+0x808>
    c18c:	0004cd83          	lbu	s11,0(s1)
    c190:	fedff06f          	jal	zero,c17c <_svfiprintf_r+0x81c>
    c194:	00005797          	auipc	a5,0x5
    c198:	3a878793          	addi	a5,a5,936 # 1153c <zeroes.4514+0x34>
    c19c:	93dff06f          	jal	zero,bad8 <_svfiprintf_r+0x178>
    c1a0:	010d7693          	andi	a3,s10,16
    c1a4:	00448c13          	addi	s8,s1,4
    c1a8:	00068663          	beq	a3,zero,c1b4 <_svfiprintf_r+0x854>
    c1ac:	0004ad83          	lw	s11,0(s1)
    c1b0:	0100006f          	jal	zero,c1c0 <_svfiprintf_r+0x860>
    c1b4:	040d7693          	andi	a3,s10,64
    c1b8:	00068863          	beq	a3,zero,c1c8 <_svfiprintf_r+0x868>
    c1bc:	0004dd83          	lhu	s11,0(s1)
    c1c0:	00000c93          	addi	s9,zero,0
    c1c4:	935ff06f          	jal	zero,baf8 <_svfiprintf_r+0x198>
    c1c8:	200d7693          	andi	a3,s10,512
    c1cc:	fe0680e3          	beq	a3,zero,c1ac <_svfiprintf_r+0x84c>
    c1d0:	0004cd83          	lbu	s11,0(s1)
    c1d4:	fedff06f          	jal	zero,c1c0 <_svfiprintf_r+0x860>
    c1d8:	000d0613          	addi	a2,s10,0
    c1dc:	00100693          	addi	a3,zero,1
    c1e0:	b0dff06f          	jal	zero,bcec <_svfiprintf_r+0x38c>
    c1e4:	00100613          	addi	a2,zero,1
    c1e8:	38c68c63          	beq	a3,a2,c580 <_svfiprintf_r+0xc20>
    c1ec:	00200613          	addi	a2,zero,2
    c1f0:	14c68663          	beq	a3,a2,c33c <_svfiprintf_r+0x9dc>
    c1f4:	0e010693          	addi	a3,sp,224
    c1f8:	01dc9593          	slli	a1,s9,0x1d
    c1fc:	007df613          	andi	a2,s11,7
    c200:	003dd313          	srli	t1,s11,0x3
    c204:	03060613          	addi	a2,a2,48
    c208:	0065edb3          	or	s11,a1,t1
    c20c:	003cdc93          	srli	s9,s9,0x3
    c210:	fec68fa3          	sb	a2,-1(a3)
    c214:	019de5b3          	or	a1,s11,s9
    c218:	fff68493          	addi	s1,a3,-1
    c21c:	02059663          	bne	a1,zero,c248 <_svfiprintf_r+0x8e8>
    c220:	001d7593          	andi	a1,s10,1
    c224:	00058a63          	beq	a1,zero,c238 <_svfiprintf_r+0x8d8>
    c228:	03000593          	addi	a1,zero,48
    c22c:	00b60663          	beq	a2,a1,c238 <_svfiprintf_r+0x8d8>
    c230:	feb48fa3          	sb	a1,-1(s1)
    c234:	ffe68493          	addi	s1,a3,-2
    c238:	0e010793          	addi	a5,sp,224
    c23c:	00040c93          	addi	s9,s0,0
    c240:	40978433          	sub	s0,a5,s1
    c244:	c2dff06f          	jal	zero,be70 <_svfiprintf_r+0x510>
    c248:	00048693          	addi	a3,s1,0
    c24c:	fadff06f          	jal	zero,c1f8 <_svfiprintf_r+0x898>
    c250:	400d7793          	andi	a5,s10,1024
    c254:	00000893          	addi	a7,zero,0
    c258:	0e010e13          	addi	t3,sp,224
    c25c:	00f12023          	sw	a5,0(sp)
    c260:	00a00613          	addi	a2,zero,10
    c264:	00000693          	addi	a3,zero,0
    c268:	000d8513          	addi	a0,s11,0
    c26c:	000c8593          	addi	a1,s9,0
    c270:	01112e23          	sw	a7,28(sp)
    c274:	00e12c23          	sw	a4,24(sp)
    c278:	fffe0493          	addi	s1,t3,-1
    c27c:	01c12a23          	sw	t3,20(sp)
    c280:	4ad000ef          	jal	ra,cf2c <__umoddi3>
    c284:	01412e03          	lw	t3,20(sp)
    c288:	01c12883          	lw	a7,28(sp)
    c28c:	00012783          	lw	a5,0(sp)
    c290:	03050513          	addi	a0,a0,48
    c294:	feae0fa3          	sb	a0,-1(t3)
    c298:	00188893          	addi	a7,a7,1
    c29c:	01812703          	lw	a4,24(sp)
    c2a0:	04078e63          	beq	a5,zero,c2fc <_svfiprintf_r+0x99c>
    c2a4:	00412783          	lw	a5,4(sp)
    c2a8:	0007c683          	lbu	a3,0(a5)
    c2ac:	05169863          	bne	a3,a7,c2fc <_svfiprintf_r+0x99c>
    c2b0:	0ff00793          	addi	a5,zero,255
    c2b4:	04f88463          	beq	a7,a5,c2fc <_svfiprintf_r+0x99c>
    c2b8:	000c9663          	bne	s9,zero,c2c4 <_svfiprintf_r+0x964>
    c2bc:	00900793          	addi	a5,zero,9
    c2c0:	03b7fe63          	bgeu	a5,s11,c2fc <_svfiprintf_r+0x99c>
    c2c4:	00812783          	lw	a5,8(sp)
    c2c8:	01012583          	lw	a1,16(sp)
    c2cc:	00e12a23          	sw	a4,20(sp)
    c2d0:	40f484b3          	sub	s1,s1,a5
    c2d4:	00078613          	addi	a2,a5,0
    c2d8:	00048513          	addi	a0,s1,0
    c2dc:	858fc0ef          	jal	ra,8334 <strncpy>
    c2e0:	00412783          	lw	a5,4(sp)
    c2e4:	00000893          	addi	a7,zero,0
    c2e8:	01412703          	lw	a4,20(sp)
    c2ec:	0017c683          	lbu	a3,1(a5)
    c2f0:	00068663          	beq	a3,zero,c2fc <_svfiprintf_r+0x99c>
    c2f4:	00178793          	addi	a5,a5,1
    c2f8:	00f12223          	sw	a5,4(sp)
    c2fc:	00a00613          	addi	a2,zero,10
    c300:	00000693          	addi	a3,zero,0
    c304:	000d8513          	addi	a0,s11,0
    c308:	000c8593          	addi	a1,s9,0
    c30c:	01112c23          	sw	a7,24(sp)
    c310:	00e12a23          	sw	a4,20(sp)
    c314:	7e4000ef          	jal	ra,caf8 <__udivdi3>
    c318:	01412703          	lw	a4,20(sp)
    c31c:	01812883          	lw	a7,24(sp)
    c320:	000c9663          	bne	s9,zero,c32c <_svfiprintf_r+0x9cc>
    c324:	00900793          	addi	a5,zero,9
    c328:	f1b7f8e3          	bgeu	a5,s11,c238 <_svfiprintf_r+0x8d8>
    c32c:	00050d93          	addi	s11,a0,0
    c330:	00058c93          	addi	s9,a1,0
    c334:	00048e13          	addi	t3,s1,0
    c338:	f29ff06f          	jal	zero,c260 <_svfiprintf_r+0x900>
    c33c:	0e010493          	addi	s1,sp,224
    c340:	00c12783          	lw	a5,12(sp)
    c344:	00fdf693          	andi	a3,s11,15
    c348:	fff48493          	addi	s1,s1,-1
    c34c:	00d786b3          	add	a3,a5,a3
    c350:	0006c683          	lbu	a3,0(a3)
    c354:	004dd313          	srli	t1,s11,0x4
    c358:	00d48023          	sb	a3,0(s1)
    c35c:	01cc9693          	slli	a3,s9,0x1c
    c360:	0066edb3          	or	s11,a3,t1
    c364:	004cdc93          	srli	s9,s9,0x4
    c368:	019de6b3          	or	a3,s11,s9
    c36c:	fc069ae3          	bne	a3,zero,c340 <_svfiprintf_r+0x9e0>
    c370:	ec9ff06f          	jal	zero,c238 <_svfiprintf_r+0x8d8>
    c374:	0e010493          	addi	s1,sp,224
    c378:	ec0690e3          	bne	a3,zero,c238 <_svfiprintf_r+0x8d8>
    c37c:	00167613          	andi	a2,a2,1
    c380:	ea060ce3          	beq	a2,zero,c238 <_svfiprintf_r+0x8d8>
    c384:	03000693          	addi	a3,zero,48
    c388:	0cd10fa3          	sb	a3,223(sp)
    c38c:	2080006f          	jal	zero,c594 <_svfiprintf_r+0xc34>
    c390:	1c060663          	beq	a2,zero,c55c <_svfiprintf_r+0xbfc>
    c394:	06c10e23          	sb	a2,124(sp)
    c398:	020105a3          	sb	zero,43(sp)
    c39c:	00048c13          	addi	s8,s1,0
    c3a0:	8edff06f          	jal	zero,bc8c <_svfiprintf_r+0x32c>
    c3a4:	01058593          	addi	a1,a1,16
    c3a8:	01172223          	sw	a7,4(a4)
    c3ac:	02b12c23          	sw	a1,56(sp)
    c3b0:	02c12a23          	sw	a2,52(sp)
    c3b4:	02c35a63          	bge	t1,a2,c3e8 <_svfiprintf_r+0xa88>
    c3b8:	03010613          	addi	a2,sp,48
    c3bc:	00090593          	addi	a1,s2,0
    c3c0:	000a0513          	addi	a0,s4,0
    c3c4:	00d12c23          	sw	a3,24(sp)
    c3c8:	bd0ff0ef          	jal	ra,b798 <__ssprint_r>
    c3cc:	10051663          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    c3d0:	01812683          	lw	a3,24(sp)
    c3d4:	000b0513          	addi	a0,s6,0
    c3d8:	00700313          	addi	t1,zero,7
    c3dc:	00006817          	auipc	a6,0x6
    c3e0:	ab480813          	addi	a6,a6,-1356 # 11e90 <blanks.4475>
    c3e4:	01000893          	addi	a7,zero,16
    c3e8:	ff068693          	addi	a3,a3,-16
    c3ec:	00050713          	addi	a4,a0,0
    c3f0:	addff06f          	jal	zero,becc <_svfiprintf_r+0x56c>
    c3f4:	01060613          	addi	a2,a2,16
    c3f8:	01172223          	sw	a7,4(a4)
    c3fc:	02c12c23          	sw	a2,56(sp)
    c400:	02d12a23          	sw	a3,52(sp)
    c404:	02d35663          	bge	t1,a3,c430 <_svfiprintf_r+0xad0>
    c408:	03010613          	addi	a2,sp,48
    c40c:	00090593          	addi	a1,s2,0
    c410:	000a0513          	addi	a0,s4,0
    c414:	b84ff0ef          	jal	ra,b798 <__ssprint_r>
    c418:	0c051063          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    c41c:	000b0593          	addi	a1,s6,0
    c420:	00700313          	addi	t1,zero,7
    c424:	00006817          	auipc	a6,0x6
    c428:	a7c80813          	addi	a6,a6,-1412 # 11ea0 <zeroes.4476>
    c42c:	01000893          	addi	a7,zero,16
    c430:	ff0d8d93          	addi	s11,s11,-16
    c434:	00058713          	addi	a4,a1,0
    c438:	badff06f          	jal	zero,bfe4 <_svfiprintf_r+0x684>
    c43c:	01060613          	addi	a2,a2,16
    c440:	01072223          	sw	a6,4(a4)
    c444:	02c12c23          	sw	a2,56(sp)
    c448:	02d12a23          	sw	a3,52(sp)
    c44c:	02d8d263          	bge	a7,a3,c470 <_svfiprintf_r+0xb10>
    c450:	03010613          	addi	a2,sp,48
    c454:	00090593          	addi	a1,s2,0
    c458:	000a0513          	addi	a0,s4,0
    c45c:	b3cff0ef          	jal	ra,b798 <__ssprint_r>
    c460:	06051c63          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    c464:	000b0593          	addi	a1,s6,0
    c468:	00700893          	addi	a7,zero,7
    c46c:	01000813          	addi	a6,zero,16
    c470:	ff0c8c93          	addi	s9,s9,-16
    c474:	00058713          	addi	a4,a1,0
    c478:	bd1ff06f          	jal	zero,c048 <_svfiprintf_r+0x6e8>
    c47c:	00012783          	lw	a5,0(sp)
    c480:	40f98433          	sub	s0,s3,a5
    c484:	c4805ee3          	bge	zero,s0,c0e0 <_svfiprintf_r+0x780>
    c488:	01000c93          	addi	s9,zero,16
    c48c:	00006497          	auipc	s1,0x6
    c490:	a0448493          	addi	s1,s1,-1532 # 11e90 <blanks.4475>
    c494:	00700d93          	addi	s11,zero,7
    c498:	03412783          	lw	a5,52(sp)
    c49c:	00972023          	sw	s1,0(a4)
    c4a0:	03812683          	lw	a3,56(sp)
    c4a4:	00178793          	addi	a5,a5,1
    c4a8:	068cce63          	blt	s9,s0,c524 <_svfiprintf_r+0xbc4>
    c4ac:	008686b3          	add	a3,a3,s0
    c4b0:	00872223          	sw	s0,4(a4)
    c4b4:	02d12c23          	sw	a3,56(sp)
    c4b8:	02f12a23          	sw	a5,52(sp)
    c4bc:	00700713          	addi	a4,zero,7
    c4c0:	c2f750e3          	bge	a4,a5,c0e0 <_svfiprintf_r+0x780>
    c4c4:	03010613          	addi	a2,sp,48
    c4c8:	00090593          	addi	a1,s2,0
    c4cc:	000a0513          	addi	a0,s4,0
    c4d0:	ac8ff0ef          	jal	ra,b798 <__ssprint_r>
    c4d4:	c00506e3          	beq	a0,zero,c0e0 <_svfiprintf_r+0x780>
    c4d8:	00c95783          	lhu	a5,12(s2)
    c4dc:	0407f793          	andi	a5,a5,64
    c4e0:	ce079c63          	bne	a5,zero,b9d8 <_svfiprintf_r+0x78>
    c4e4:	11c12083          	lw	ra,284(sp)
    c4e8:	11812403          	lw	s0,280(sp)
    c4ec:	000b8513          	addi	a0,s7,0
    c4f0:	11412483          	lw	s1,276(sp)
    c4f4:	11012903          	lw	s2,272(sp)
    c4f8:	10c12983          	lw	s3,268(sp)
    c4fc:	10812a03          	lw	s4,264(sp)
    c500:	10412a83          	lw	s5,260(sp)
    c504:	10012b03          	lw	s6,256(sp)
    c508:	0fc12b83          	lw	s7,252(sp)
    c50c:	0f812c03          	lw	s8,248(sp)
    c510:	0f412c83          	lw	s9,244(sp)
    c514:	0f012d03          	lw	s10,240(sp)
    c518:	0ec12d83          	lw	s11,236(sp)
    c51c:	12010113          	addi	sp,sp,288
    c520:	00008067          	jalr	zero,0(ra)
    c524:	01068693          	addi	a3,a3,16
    c528:	01972223          	sw	s9,4(a4)
    c52c:	02d12c23          	sw	a3,56(sp)
    c530:	02f12a23          	sw	a5,52(sp)
    c534:	00870713          	addi	a4,a4,8
    c538:	00fdde63          	bge	s11,a5,c554 <_svfiprintf_r+0xbf4>
    c53c:	03010613          	addi	a2,sp,48
    c540:	00090593          	addi	a1,s2,0
    c544:	000a0513          	addi	a0,s4,0
    c548:	a50ff0ef          	jal	ra,b798 <__ssprint_r>
    c54c:	f80516e3          	bne	a0,zero,c4d8 <_svfiprintf_r+0xb78>
    c550:	000b0713          	addi	a4,s6,0
    c554:	ff040413          	addi	s0,s0,-16
    c558:	f41ff06f          	jal	zero,c498 <_svfiprintf_r+0xb38>
    c55c:	03812783          	lw	a5,56(sp)
    c560:	f6078ce3          	beq	a5,zero,c4d8 <_svfiprintf_r+0xb78>
    c564:	03010613          	addi	a2,sp,48
    c568:	00090593          	addi	a1,s2,0
    c56c:	000a0513          	addi	a0,s4,0
    c570:	a28ff0ef          	jal	ra,b798 <__ssprint_r>
    c574:	f65ff06f          	jal	zero,c4d8 <_svfiprintf_r+0xb78>
    c578:	fff00693          	addi	a3,zero,-1
    c57c:	c4d41ee3          	bne	s0,a3,c1d8 <_svfiprintf_r+0x878>
    c580:	cc0c98e3          	bne	s9,zero,c250 <_svfiprintf_r+0x8f0>
    c584:	00900693          	addi	a3,zero,9
    c588:	cdb6e4e3          	bltu	a3,s11,c250 <_svfiprintf_r+0x8f0>
    c58c:	030d8313          	addi	t1,s11,48
    c590:	0c610fa3          	sb	t1,223(sp)
    c594:	0df10493          	addi	s1,sp,223
    c598:	ca1ff06f          	jal	zero,c238 <_svfiprintf_r+0x8d8>

0000c59c <__swbuf_r>:
    c59c:	fe010113          	addi	sp,sp,-32
    c5a0:	00812c23          	sw	s0,24(sp)
    c5a4:	00912a23          	sw	s1,20(sp)
    c5a8:	01212823          	sw	s2,16(sp)
    c5ac:	00112e23          	sw	ra,28(sp)
    c5b0:	01312623          	sw	s3,12(sp)
    c5b4:	00050913          	addi	s2,a0,0
    c5b8:	00058493          	addi	s1,a1,0
    c5bc:	00060413          	addi	s0,a2,0
    c5c0:	00050863          	beq	a0,zero,c5d0 <__swbuf_r+0x34>
    c5c4:	03852783          	lw	a5,56(a0)
    c5c8:	00079463          	bne	a5,zero,c5d0 <__swbuf_r+0x34>
    c5cc:	fe9f60ef          	jal	ra,35b4 <__sinit>
    c5d0:	01842783          	lw	a5,24(s0)
    c5d4:	00f42423          	sw	a5,8(s0)
    c5d8:	00c45783          	lhu	a5,12(s0)
    c5dc:	0087f793          	andi	a5,a5,8
    c5e0:	0a078863          	beq	a5,zero,c690 <__swbuf_r+0xf4>
    c5e4:	01042783          	lw	a5,16(s0)
    c5e8:	0a078463          	beq	a5,zero,c690 <__swbuf_r+0xf4>
    c5ec:	00c41783          	lh	a5,12(s0)
    c5f0:	0ff4f993          	andi	s3,s1,255
    c5f4:	0ff4f493          	andi	s1,s1,255
    c5f8:	01279713          	slli	a4,a5,0x12
    c5fc:	0a075663          	bge	a4,zero,c6a8 <__swbuf_r+0x10c>
    c600:	01042783          	lw	a5,16(s0)
    c604:	00042503          	lw	a0,0(s0)
    c608:	40f50533          	sub	a0,a0,a5
    c60c:	01442783          	lw	a5,20(s0)
    c610:	00f54a63          	blt	a0,a5,c624 <__swbuf_r+0x88>
    c614:	00040593          	addi	a1,s0,0
    c618:	00090513          	addi	a0,s2,0
    c61c:	dfdf60ef          	jal	ra,3418 <_fflush_r>
    c620:	08051063          	bne	a0,zero,c6a0 <__swbuf_r+0x104>
    c624:	00842783          	lw	a5,8(s0)
    c628:	00150513          	addi	a0,a0,1
    c62c:	fff78793          	addi	a5,a5,-1
    c630:	00f42423          	sw	a5,8(s0)
    c634:	00042783          	lw	a5,0(s0)
    c638:	00178713          	addi	a4,a5,1
    c63c:	00e42023          	sw	a4,0(s0)
    c640:	01378023          	sb	s3,0(a5)
    c644:	01442783          	lw	a5,20(s0)
    c648:	00a78c63          	beq	a5,a0,c660 <__swbuf_r+0xc4>
    c64c:	00c45783          	lhu	a5,12(s0)
    c650:	0017f793          	andi	a5,a5,1
    c654:	00078e63          	beq	a5,zero,c670 <__swbuf_r+0xd4>
    c658:	00a00793          	addi	a5,zero,10
    c65c:	00f49a63          	bne	s1,a5,c670 <__swbuf_r+0xd4>
    c660:	00040593          	addi	a1,s0,0
    c664:	00090513          	addi	a0,s2,0
    c668:	db1f60ef          	jal	ra,3418 <_fflush_r>
    c66c:	02051a63          	bne	a0,zero,c6a0 <__swbuf_r+0x104>
    c670:	01c12083          	lw	ra,28(sp)
    c674:	01812403          	lw	s0,24(sp)
    c678:	00048513          	addi	a0,s1,0
    c67c:	01012903          	lw	s2,16(sp)
    c680:	01412483          	lw	s1,20(sp)
    c684:	00c12983          	lw	s3,12(sp)
    c688:	02010113          	addi	sp,sp,32
    c68c:	00008067          	jalr	zero,0(ra)
    c690:	00040593          	addi	a1,s0,0
    c694:	00090513          	addi	a0,s2,0
    c698:	8b1f60ef          	jal	ra,2f48 <__swsetup_r>
    c69c:	f40508e3          	beq	a0,zero,c5ec <__swbuf_r+0x50>
    c6a0:	fff00493          	addi	s1,zero,-1
    c6a4:	fcdff06f          	jal	zero,c670 <__swbuf_r+0xd4>
    c6a8:	00002737          	lui	a4,0x2
    c6ac:	00e7e7b3          	or	a5,a5,a4
    c6b0:	00f41623          	sh	a5,12(s0)
    c6b4:	06442783          	lw	a5,100(s0)
    c6b8:	ffffe737          	lui	a4,0xffffe
    c6bc:	fff70713          	addi	a4,a4,-1 # ffffdfff <__heap_top+0xffefdfff>
    c6c0:	00e7f7b3          	and	a5,a5,a4
    c6c4:	06f42223          	sw	a5,100(s0)
    c6c8:	f39ff06f          	jal	zero,c600 <__swbuf_r+0x64>

0000c6cc <__swbuf>:
    c6cc:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    c6d0:	00058613          	addi	a2,a1,0
    c6d4:	00050593          	addi	a1,a0,0
    c6d8:	0007a503          	lw	a0,0(a5)
    c6dc:	ec1ff06f          	jal	zero,c59c <__swbuf_r>

0000c6e0 <_wcrtomb_r>:
    c6e0:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    c6e4:	0007a783          	lw	a5,0(a5)
    c6e8:	fe010113          	addi	sp,sp,-32
    c6ec:	00812c23          	sw	s0,24(sp)
    c6f0:	00912a23          	sw	s1,20(sp)
    c6f4:	00112e23          	sw	ra,28(sp)
    c6f8:	00050413          	addi	s0,a0,0
    c6fc:	00068493          	addi	s1,a3,0
    c700:	0347a783          	lw	a5,52(a5)
    c704:	04059663          	bne	a1,zero,c750 <_wcrtomb_r+0x70>
    c708:	00079463          	bne	a5,zero,c710 <_wcrtomb_r+0x30>
    c70c:	c2818793          	addi	a5,gp,-984 # 124d8 <__global_locale>
    c710:	0e07a783          	lw	a5,224(a5)
    c714:	00048693          	addi	a3,s1,0
    c718:	00000613          	addi	a2,zero,0
    c71c:	00410593          	addi	a1,sp,4
    c720:	00040513          	addi	a0,s0,0
    c724:	000780e7          	jalr	ra,0(a5)
    c728:	fff00793          	addi	a5,zero,-1
    c72c:	00f51863          	bne	a0,a5,c73c <_wcrtomb_r+0x5c>
    c730:	0004a023          	sw	zero,0(s1)
    c734:	08a00793          	addi	a5,zero,138
    c738:	00f42023          	sw	a5,0(s0)
    c73c:	01c12083          	lw	ra,28(sp)
    c740:	01812403          	lw	s0,24(sp)
    c744:	01412483          	lw	s1,20(sp)
    c748:	02010113          	addi	sp,sp,32
    c74c:	00008067          	jalr	zero,0(ra)
    c750:	00079463          	bne	a5,zero,c758 <_wcrtomb_r+0x78>
    c754:	c2818793          	addi	a5,gp,-984 # 124d8 <__global_locale>
    c758:	0e07a783          	lw	a5,224(a5)
    c75c:	00048693          	addi	a3,s1,0
    c760:	fc1ff06f          	jal	zero,c720 <_wcrtomb_r+0x40>

0000c764 <wcrtomb>:
    c764:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    c768:	00060693          	addi	a3,a2,0
    c76c:	00058613          	addi	a2,a1,0
    c770:	00050593          	addi	a1,a0,0
    c774:	0007a503          	lw	a0,0(a5)
    c778:	f69ff06f          	jal	zero,c6e0 <_wcrtomb_r>

0000c77c <_close>:
    c77c:	ff010113          	addi	sp,sp,-16
    c780:	00112623          	sw	ra,12(sp)
    c784:	00812423          	sw	s0,8(sp)
    c788:	00000593          	addi	a1,zero,0
    c78c:	00000613          	addi	a2,zero,0
    c790:	00000693          	addi	a3,zero,0
    c794:	00000713          	addi	a4,zero,0
    c798:	00000793          	addi	a5,zero,0
    c79c:	03900893          	addi	a7,zero,57
    c7a0:	00000073          	ecall
    c7a4:	00050413          	addi	s0,a0,0
    c7a8:	00055a63          	bge	a0,zero,c7bc <_close+0x40>
    c7ac:	40800433          	sub	s0,zero,s0
    c7b0:	33c000ef          	jal	ra,caec <__errno>
    c7b4:	00852023          	sw	s0,0(a0)
    c7b8:	fff00413          	addi	s0,zero,-1
    c7bc:	00040513          	addi	a0,s0,0
    c7c0:	00c12083          	lw	ra,12(sp)
    c7c4:	00812403          	lw	s0,8(sp)
    c7c8:	01010113          	addi	sp,sp,16
    c7cc:	00008067          	jalr	zero,0(ra)

0000c7d0 <_exit>:
    c7d0:	00000593          	addi	a1,zero,0
    c7d4:	00000613          	addi	a2,zero,0
    c7d8:	00000693          	addi	a3,zero,0
    c7dc:	00000713          	addi	a4,zero,0
    c7e0:	00000793          	addi	a5,zero,0
    c7e4:	05d00893          	addi	a7,zero,93
    c7e8:	00000073          	ecall
    c7ec:	02055263          	bge	a0,zero,c810 <_exit+0x40>
    c7f0:	ff010113          	addi	sp,sp,-16
    c7f4:	00812423          	sw	s0,8(sp)
    c7f8:	00050413          	addi	s0,a0,0
    c7fc:	00112623          	sw	ra,12(sp)
    c800:	40800433          	sub	s0,zero,s0
    c804:	2e8000ef          	jal	ra,caec <__errno>
    c808:	00852023          	sw	s0,0(a0)
    c80c:	0000006f          	jal	zero,c80c <_exit+0x3c>
    c810:	0000006f          	jal	zero,c810 <_exit+0x40>

0000c814 <_fstat>:
    c814:	f7010113          	addi	sp,sp,-144
    c818:	08912223          	sw	s1,132(sp)
    c81c:	08112623          	sw	ra,140(sp)
    c820:	00058493          	addi	s1,a1,0
    c824:	08812423          	sw	s0,136(sp)
    c828:	00010593          	addi	a1,sp,0
    c82c:	00000613          	addi	a2,zero,0
    c830:	00000693          	addi	a3,zero,0
    c834:	00000713          	addi	a4,zero,0
    c838:	00000793          	addi	a5,zero,0
    c83c:	05000893          	addi	a7,zero,80
    c840:	00000073          	ecall
    c844:	00050413          	addi	s0,a0,0
    c848:	00055a63          	bge	a0,zero,c85c <_fstat+0x48>
    c84c:	40800433          	sub	s0,zero,s0
    c850:	29c000ef          	jal	ra,caec <__errno>
    c854:	00852023          	sw	s0,0(a0)
    c858:	fff00413          	addi	s0,zero,-1
    c85c:	00048513          	addi	a0,s1,0
    c860:	00010593          	addi	a1,sp,0
    c864:	204000ef          	jal	ra,ca68 <_conv_stat>
    c868:	00040513          	addi	a0,s0,0
    c86c:	08c12083          	lw	ra,140(sp)
    c870:	08812403          	lw	s0,136(sp)
    c874:	08412483          	lw	s1,132(sp)
    c878:	09010113          	addi	sp,sp,144
    c87c:	00008067          	jalr	zero,0(ra)

0000c880 <_isatty>:
    c880:	f9010113          	addi	sp,sp,-112
    c884:	00810593          	addi	a1,sp,8
    c888:	06112623          	sw	ra,108(sp)
    c88c:	f89ff0ef          	jal	ra,c814 <_fstat>
    c890:	fff00793          	addi	a5,zero,-1
    c894:	00f50e63          	beq	a0,a5,c8b0 <_isatty+0x30>
    c898:	00c12503          	lw	a0,12(sp)
    c89c:	00d55513          	srli	a0,a0,0xd
    c8a0:	00157513          	andi	a0,a0,1
    c8a4:	06c12083          	lw	ra,108(sp)
    c8a8:	07010113          	addi	sp,sp,112
    c8ac:	00008067          	jalr	zero,0(ra)
    c8b0:	00000513          	addi	a0,zero,0
    c8b4:	ff1ff06f          	jal	zero,c8a4 <_isatty+0x24>

0000c8b8 <_lseek>:
    c8b8:	ff010113          	addi	sp,sp,-16
    c8bc:	00112623          	sw	ra,12(sp)
    c8c0:	00812423          	sw	s0,8(sp)
    c8c4:	00000693          	addi	a3,zero,0
    c8c8:	00000713          	addi	a4,zero,0
    c8cc:	00000793          	addi	a5,zero,0
    c8d0:	03e00893          	addi	a7,zero,62
    c8d4:	00000073          	ecall
    c8d8:	00050413          	addi	s0,a0,0
    c8dc:	00055a63          	bge	a0,zero,c8f0 <_lseek+0x38>
    c8e0:	40800433          	sub	s0,zero,s0
    c8e4:	208000ef          	jal	ra,caec <__errno>
    c8e8:	00852023          	sw	s0,0(a0)
    c8ec:	fff00413          	addi	s0,zero,-1
    c8f0:	00040513          	addi	a0,s0,0
    c8f4:	00c12083          	lw	ra,12(sp)
    c8f8:	00812403          	lw	s0,8(sp)
    c8fc:	01010113          	addi	sp,sp,16
    c900:	00008067          	jalr	zero,0(ra)

0000c904 <_read>:
    c904:	ff010113          	addi	sp,sp,-16
    c908:	00112623          	sw	ra,12(sp)
    c90c:	00812423          	sw	s0,8(sp)
    c910:	00000693          	addi	a3,zero,0
    c914:	00000713          	addi	a4,zero,0
    c918:	00000793          	addi	a5,zero,0
    c91c:	03f00893          	addi	a7,zero,63
    c920:	00000073          	ecall
    c924:	00050413          	addi	s0,a0,0
    c928:	00055a63          	bge	a0,zero,c93c <_read+0x38>
    c92c:	40800433          	sub	s0,zero,s0
    c930:	1bc000ef          	jal	ra,caec <__errno>
    c934:	00852023          	sw	s0,0(a0)
    c938:	fff00413          	addi	s0,zero,-1
    c93c:	00040513          	addi	a0,s0,0
    c940:	00c12083          	lw	ra,12(sp)
    c944:	00812403          	lw	s0,8(sp)
    c948:	01010113          	addi	sp,sp,16
    c94c:	00008067          	jalr	zero,0(ra)

0000c950 <_sbrk>:
    c950:	ff010113          	addi	sp,sp,-16
    c954:	00912223          	sw	s1,4(sp)
    c958:	1e018493          	addi	s1,gp,480 # 12a90 <heap_end.1852>
    c95c:	0004a783          	lw	a5,0(s1)
    c960:	01212023          	sw	s2,0(sp)
    c964:	00112623          	sw	ra,12(sp)
    c968:	00812423          	sw	s0,8(sp)
    c96c:	00050913          	addi	s2,a0,0
    c970:	04079a63          	bne	a5,zero,c9c4 <_sbrk+0x74>
    c974:	00000513          	addi	a0,zero,0
    c978:	00000593          	addi	a1,zero,0
    c97c:	00000613          	addi	a2,zero,0
    c980:	00000693          	addi	a3,zero,0
    c984:	00000713          	addi	a4,zero,0
    c988:	0d600893          	addi	a7,zero,214
    c98c:	00000073          	ecall
    c990:	00050413          	addi	s0,a0,0
    c994:	02055663          	bge	a0,zero,c9c0 <_sbrk+0x70>
    c998:	154000ef          	jal	ra,caec <__errno>
    c99c:	40800433          	sub	s0,zero,s0
    c9a0:	00852023          	sw	s0,0(a0)
    c9a4:	fff00513          	addi	a0,zero,-1
    c9a8:	00c12083          	lw	ra,12(sp)
    c9ac:	00812403          	lw	s0,8(sp)
    c9b0:	00412483          	lw	s1,4(sp)
    c9b4:	00012903          	lw	s2,0(sp)
    c9b8:	01010113          	addi	sp,sp,16
    c9bc:	00008067          	jalr	zero,0(ra)
    c9c0:	1ea1a023          	sw	a0,480(gp) # 12a90 <heap_end.1852>
    c9c4:	0004a503          	lw	a0,0(s1)
    c9c8:	00000593          	addi	a1,zero,0
    c9cc:	00000613          	addi	a2,zero,0
    c9d0:	00a90533          	add	a0,s2,a0
    c9d4:	00000693          	addi	a3,zero,0
    c9d8:	00000713          	addi	a4,zero,0
    c9dc:	00000793          	addi	a5,zero,0
    c9e0:	0d600893          	addi	a7,zero,214
    c9e4:	00000073          	ecall
    c9e8:	00050413          	addi	s0,a0,0
    c9ec:	00055a63          	bge	a0,zero,ca00 <_sbrk+0xb0>
    c9f0:	40800433          	sub	s0,zero,s0
    c9f4:	0f8000ef          	jal	ra,caec <__errno>
    c9f8:	00852023          	sw	s0,0(a0)
    c9fc:	fff00413          	addi	s0,zero,-1
    ca00:	0004a783          	lw	a5,0(s1)
    ca04:	fff00513          	addi	a0,zero,-1
    ca08:	00f90933          	add	s2,s2,a5
    ca0c:	f9241ee3          	bne	s0,s2,c9a8 <_sbrk+0x58>
    ca10:	1e81a023          	sw	s0,480(gp) # 12a90 <heap_end.1852>
    ca14:	00078513          	addi	a0,a5,0
    ca18:	f91ff06f          	jal	zero,c9a8 <_sbrk+0x58>

0000ca1c <_write>:
    ca1c:	ff010113          	addi	sp,sp,-16
    ca20:	00112623          	sw	ra,12(sp)
    ca24:	00812423          	sw	s0,8(sp)
    ca28:	00000693          	addi	a3,zero,0
    ca2c:	00000713          	addi	a4,zero,0
    ca30:	00000793          	addi	a5,zero,0
    ca34:	04000893          	addi	a7,zero,64
    ca38:	00000073          	ecall
    ca3c:	00050413          	addi	s0,a0,0
    ca40:	00055a63          	bge	a0,zero,ca54 <_write+0x38>
    ca44:	40800433          	sub	s0,zero,s0
    ca48:	0a4000ef          	jal	ra,caec <__errno>
    ca4c:	00852023          	sw	s0,0(a0)
    ca50:	fff00413          	addi	s0,zero,-1
    ca54:	00040513          	addi	a0,s0,0
    ca58:	00c12083          	lw	ra,12(sp)
    ca5c:	00812403          	lw	s0,8(sp)
    ca60:	01010113          	addi	sp,sp,16
    ca64:	00008067          	jalr	zero,0(ra)

0000ca68 <_conv_stat>:
    ca68:	0005a783          	lw	a5,0(a1)
    ca6c:	0485a703          	lw	a4,72(a1)
    ca70:	00f51023          	sh	a5,0(a0)
    ca74:	0085a783          	lw	a5,8(a1)
    ca78:	00f51123          	sh	a5,2(a0)
    ca7c:	0105a783          	lw	a5,16(a1)
    ca80:	00f52223          	sw	a5,4(a0)
    ca84:	0145a783          	lw	a5,20(a1)
    ca88:	00f51423          	sh	a5,8(a0)
    ca8c:	0185a783          	lw	a5,24(a1)
    ca90:	00f51523          	sh	a5,10(a0)
    ca94:	01c5a783          	lw	a5,28(a1)
    ca98:	00f51623          	sh	a5,12(a0)
    ca9c:	0205a783          	lw	a5,32(a1)
    caa0:	00f51723          	sh	a5,14(a0)
    caa4:	0305a783          	lw	a5,48(a1)
    caa8:	00f52823          	sw	a5,16(a0)
    caac:	0405a783          	lw	a5,64(a1)
    cab0:	04f52423          	sw	a5,72(a0)
    cab4:	0385a783          	lw	a5,56(a1)
    cab8:	04f52223          	sw	a5,68(a0)
    cabc:	04c5a783          	lw	a5,76(a1)
    cac0:	00e52c23          	sw	a4,24(a0)
    cac4:	0585a703          	lw	a4,88(a1)
    cac8:	00f52e23          	sw	a5,28(a0)
    cacc:	05c5a783          	lw	a5,92(a1)
    cad0:	02e52423          	sw	a4,40(a0)
    cad4:	0685a703          	lw	a4,104(a1)
    cad8:	02f52623          	sw	a5,44(a0)
    cadc:	06c5a783          	lw	a5,108(a1)
    cae0:	02e52c23          	sw	a4,56(a0)
    cae4:	02f52e23          	sw	a5,60(a0)
    cae8:	00008067          	jalr	zero,0(ra)

0000caec <__errno>:
    caec:	1c418793          	addi	a5,gp,452 # 12a74 <_impure_ptr>
    caf0:	0007a503          	lw	a0,0(a5)
    caf4:	00008067          	jalr	zero,0(ra)

0000caf8 <__udivdi3>:
    caf8:	00058793          	addi	a5,a1,0
    cafc:	00060813          	addi	a6,a2,0
    cb00:	00068713          	addi	a4,a3,0
    cb04:	00050313          	addi	t1,a0,0
    cb08:	28069663          	bne	a3,zero,cd94 <__udivdi3+0x29c>
    cb0c:	00005897          	auipc	a7,0x5
    cb10:	45888893          	addi	a7,a7,1112 # 11f64 <__clz_tab>
    cb14:	0ec5f663          	bgeu	a1,a2,cc00 <__udivdi3+0x108>
    cb18:	00010737          	lui	a4,0x10
    cb1c:	0ce67863          	bgeu	a2,a4,cbec <__udivdi3+0xf4>
    cb20:	0ff00713          	addi	a4,zero,255
    cb24:	00c73733          	sltu	a4,a4,a2
    cb28:	00371713          	slli	a4,a4,0x3
    cb2c:	00e656b3          	srl	a3,a2,a4
    cb30:	00d888b3          	add	a7,a7,a3
    cb34:	0008c683          	lbu	a3,0(a7)
    cb38:	00e68733          	add	a4,a3,a4
    cb3c:	02000693          	addi	a3,zero,32
    cb40:	40e686b3          	sub	a3,a3,a4
    cb44:	00068c63          	beq	a3,zero,cb5c <__udivdi3+0x64>
    cb48:	00d797b3          	sll	a5,a5,a3
    cb4c:	00e55733          	srl	a4,a0,a4
    cb50:	00d61833          	sll	a6,a2,a3
    cb54:	00f765b3          	or	a1,a4,a5
    cb58:	00d51333          	sll	t1,a0,a3
    cb5c:	01085513          	srli	a0,a6,0x10
    cb60:	02a5f733          	remu	a4,a1,a0
    cb64:	01081613          	slli	a2,a6,0x10
    cb68:	01065613          	srli	a2,a2,0x10
    cb6c:	01035693          	srli	a3,t1,0x10
    cb70:	02a5d5b3          	divu	a1,a1,a0
    cb74:	01071713          	slli	a4,a4,0x10
    cb78:	00d766b3          	or	a3,a4,a3
    cb7c:	02b607b3          	mul	a5,a2,a1
    cb80:	00058713          	addi	a4,a1,0
    cb84:	00f6fe63          	bgeu	a3,a5,cba0 <__udivdi3+0xa8>
    cb88:	010686b3          	add	a3,a3,a6
    cb8c:	fff58713          	addi	a4,a1,-1
    cb90:	0106e863          	bltu	a3,a6,cba0 <__udivdi3+0xa8>
    cb94:	00f6f663          	bgeu	a3,a5,cba0 <__udivdi3+0xa8>
    cb98:	ffe58713          	addi	a4,a1,-2
    cb9c:	010686b3          	add	a3,a3,a6
    cba0:	40f686b3          	sub	a3,a3,a5
    cba4:	02a6f7b3          	remu	a5,a3,a0
    cba8:	01031313          	slli	t1,t1,0x10
    cbac:	01035313          	srli	t1,t1,0x10
    cbb0:	02a6d6b3          	divu	a3,a3,a0
    cbb4:	01079793          	slli	a5,a5,0x10
    cbb8:	0067e333          	or	t1,a5,t1
    cbbc:	02d605b3          	mul	a1,a2,a3
    cbc0:	00068513          	addi	a0,a3,0
    cbc4:	00b37c63          	bgeu	t1,a1,cbdc <__udivdi3+0xe4>
    cbc8:	00680333          	add	t1,a6,t1
    cbcc:	fff68513          	addi	a0,a3,-1
    cbd0:	01036663          	bltu	t1,a6,cbdc <__udivdi3+0xe4>
    cbd4:	00b37463          	bgeu	t1,a1,cbdc <__udivdi3+0xe4>
    cbd8:	ffe68513          	addi	a0,a3,-2
    cbdc:	01071713          	slli	a4,a4,0x10
    cbe0:	00a76733          	or	a4,a4,a0
    cbe4:	00000593          	addi	a1,zero,0
    cbe8:	0e40006f          	jal	zero,cccc <__udivdi3+0x1d4>
    cbec:	010006b7          	lui	a3,0x1000
    cbf0:	01000713          	addi	a4,zero,16
    cbf4:	f2d66ce3          	bltu	a2,a3,cb2c <__udivdi3+0x34>
    cbf8:	01800713          	addi	a4,zero,24
    cbfc:	f31ff06f          	jal	zero,cb2c <__udivdi3+0x34>
    cc00:	00061663          	bne	a2,zero,cc0c <__udivdi3+0x114>
    cc04:	00100693          	addi	a3,zero,1
    cc08:	02c6d833          	divu	a6,a3,a2
    cc0c:	000106b7          	lui	a3,0x10
    cc10:	0cd87263          	bgeu	a6,a3,ccd4 <__udivdi3+0x1dc>
    cc14:	0ff00693          	addi	a3,zero,255
    cc18:	0106f463          	bgeu	a3,a6,cc20 <__udivdi3+0x128>
    cc1c:	00800713          	addi	a4,zero,8
    cc20:	00e856b3          	srl	a3,a6,a4
    cc24:	00d888b3          	add	a7,a7,a3
    cc28:	0008c683          	lbu	a3,0(a7)
    cc2c:	00e686b3          	add	a3,a3,a4
    cc30:	02000713          	addi	a4,zero,32
    cc34:	40d70733          	sub	a4,a4,a3
    cc38:	0a071863          	bne	a4,zero,cce8 <__udivdi3+0x1f0>
    cc3c:	410787b3          	sub	a5,a5,a6
    cc40:	00100593          	addi	a1,zero,1
    cc44:	01085613          	srli	a2,a6,0x10
    cc48:	01081893          	slli	a7,a6,0x10
    cc4c:	0108d893          	srli	a7,a7,0x10
    cc50:	01035693          	srli	a3,t1,0x10
    cc54:	02c7f733          	remu	a4,a5,a2
    cc58:	02c7d7b3          	divu	a5,a5,a2
    cc5c:	01071713          	slli	a4,a4,0x10
    cc60:	00d766b3          	or	a3,a4,a3
    cc64:	02f88533          	mul	a0,a7,a5
    cc68:	00078713          	addi	a4,a5,0
    cc6c:	00a6fe63          	bgeu	a3,a0,cc88 <__udivdi3+0x190>
    cc70:	010686b3          	add	a3,a3,a6
    cc74:	fff78713          	addi	a4,a5,-1
    cc78:	0106e863          	bltu	a3,a6,cc88 <__udivdi3+0x190>
    cc7c:	00a6f663          	bgeu	a3,a0,cc88 <__udivdi3+0x190>
    cc80:	ffe78713          	addi	a4,a5,-2
    cc84:	010686b3          	add	a3,a3,a6
    cc88:	40a686b3          	sub	a3,a3,a0
    cc8c:	02c6f7b3          	remu	a5,a3,a2
    cc90:	01031313          	slli	t1,t1,0x10
    cc94:	01035313          	srli	t1,t1,0x10
    cc98:	02c6d6b3          	divu	a3,a3,a2
    cc9c:	01079793          	slli	a5,a5,0x10
    cca0:	0067e333          	or	t1,a5,t1
    cca4:	02d888b3          	mul	a7,a7,a3
    cca8:	00068513          	addi	a0,a3,0 # 10000 <__subtf3+0xc8c>
    ccac:	01137c63          	bgeu	t1,a7,ccc4 <__udivdi3+0x1cc>
    ccb0:	00680333          	add	t1,a6,t1
    ccb4:	fff68513          	addi	a0,a3,-1
    ccb8:	01036663          	bltu	t1,a6,ccc4 <__udivdi3+0x1cc>
    ccbc:	01137463          	bgeu	t1,a7,ccc4 <__udivdi3+0x1cc>
    ccc0:	ffe68513          	addi	a0,a3,-2
    ccc4:	01071713          	slli	a4,a4,0x10
    ccc8:	00a76733          	or	a4,a4,a0
    cccc:	00070513          	addi	a0,a4,0 # 10000 <__subtf3+0xc8c>
    ccd0:	00008067          	jalr	zero,0(ra)
    ccd4:	010006b7          	lui	a3,0x1000
    ccd8:	01000713          	addi	a4,zero,16
    ccdc:	f4d862e3          	bltu	a6,a3,cc20 <__udivdi3+0x128>
    cce0:	01800713          	addi	a4,zero,24
    cce4:	f3dff06f          	jal	zero,cc20 <__udivdi3+0x128>
    cce8:	00e81833          	sll	a6,a6,a4
    ccec:	00d7d5b3          	srl	a1,a5,a3
    ccf0:	00e51333          	sll	t1,a0,a4
    ccf4:	00d556b3          	srl	a3,a0,a3
    ccf8:	01085513          	srli	a0,a6,0x10
    ccfc:	00e797b3          	sll	a5,a5,a4
    cd00:	02a5f733          	remu	a4,a1,a0
    cd04:	00f6e8b3          	or	a7,a3,a5
    cd08:	01081793          	slli	a5,a6,0x10
    cd0c:	0107d793          	srli	a5,a5,0x10
    cd10:	0108d613          	srli	a2,a7,0x10
    cd14:	02a5d5b3          	divu	a1,a1,a0
    cd18:	01071713          	slli	a4,a4,0x10
    cd1c:	00c76733          	or	a4,a4,a2
    cd20:	02b786b3          	mul	a3,a5,a1
    cd24:	00058613          	addi	a2,a1,0
    cd28:	00d77e63          	bgeu	a4,a3,cd44 <__udivdi3+0x24c>
    cd2c:	01070733          	add	a4,a4,a6
    cd30:	fff58613          	addi	a2,a1,-1
    cd34:	01076863          	bltu	a4,a6,cd44 <__udivdi3+0x24c>
    cd38:	00d77663          	bgeu	a4,a3,cd44 <__udivdi3+0x24c>
    cd3c:	ffe58613          	addi	a2,a1,-2
    cd40:	01070733          	add	a4,a4,a6
    cd44:	40d706b3          	sub	a3,a4,a3
    cd48:	02a6f733          	remu	a4,a3,a0
    cd4c:	01089893          	slli	a7,a7,0x10
    cd50:	0108d893          	srli	a7,a7,0x10
    cd54:	02a6d6b3          	divu	a3,a3,a0
    cd58:	01071713          	slli	a4,a4,0x10
    cd5c:	02d785b3          	mul	a1,a5,a3
    cd60:	011767b3          	or	a5,a4,a7
    cd64:	00068713          	addi	a4,a3,0 # 1000000 <__heap_top+0xf00000>
    cd68:	00b7fe63          	bgeu	a5,a1,cd84 <__udivdi3+0x28c>
    cd6c:	010787b3          	add	a5,a5,a6
    cd70:	fff68713          	addi	a4,a3,-1
    cd74:	0107e863          	bltu	a5,a6,cd84 <__udivdi3+0x28c>
    cd78:	00b7f663          	bgeu	a5,a1,cd84 <__udivdi3+0x28c>
    cd7c:	ffe68713          	addi	a4,a3,-2
    cd80:	010787b3          	add	a5,a5,a6
    cd84:	40b787b3          	sub	a5,a5,a1
    cd88:	01061593          	slli	a1,a2,0x10
    cd8c:	00e5e5b3          	or	a1,a1,a4
    cd90:	eb5ff06f          	jal	zero,cc44 <__udivdi3+0x14c>
    cd94:	18d5e663          	bltu	a1,a3,cf20 <__udivdi3+0x428>
    cd98:	00010737          	lui	a4,0x10
    cd9c:	04e6f463          	bgeu	a3,a4,cde4 <__udivdi3+0x2ec>
    cda0:	0ff00813          	addi	a6,zero,255
    cda4:	00d83733          	sltu	a4,a6,a3
    cda8:	00371713          	slli	a4,a4,0x3
    cdac:	00e6d833          	srl	a6,a3,a4
    cdb0:	00005597          	auipc	a1,0x5
    cdb4:	1b458593          	addi	a1,a1,436 # 11f64 <__clz_tab>
    cdb8:	010585b3          	add	a1,a1,a6
    cdbc:	0005c803          	lbu	a6,0(a1)
    cdc0:	02000593          	addi	a1,zero,32
    cdc4:	00e80833          	add	a6,a6,a4
    cdc8:	410585b3          	sub	a1,a1,a6
    cdcc:	02059663          	bne	a1,zero,cdf8 <__udivdi3+0x300>
    cdd0:	00100713          	addi	a4,zero,1
    cdd4:	eef6ece3          	bltu	a3,a5,cccc <__udivdi3+0x1d4>
    cdd8:	00c53533          	sltu	a0,a0,a2
    cddc:	00154713          	xori	a4,a0,1
    cde0:	eedff06f          	jal	zero,cccc <__udivdi3+0x1d4>
    cde4:	010005b7          	lui	a1,0x1000
    cde8:	01000713          	addi	a4,zero,16
    cdec:	fcb6e0e3          	bltu	a3,a1,cdac <__udivdi3+0x2b4>
    cdf0:	01800713          	addi	a4,zero,24
    cdf4:	fb9ff06f          	jal	zero,cdac <__udivdi3+0x2b4>
    cdf8:	01065733          	srl	a4,a2,a6
    cdfc:	00b696b3          	sll	a3,a3,a1
    ce00:	00d766b3          	or	a3,a4,a3
    ce04:	0106de93          	srli	t4,a3,0x10
    ce08:	0107d733          	srl	a4,a5,a6
    ce0c:	03d778b3          	remu	a7,a4,t4
    ce10:	00b797b3          	sll	a5,a5,a1
    ce14:	01055833          	srl	a6,a0,a6
    ce18:	00f86333          	or	t1,a6,a5
    ce1c:	01069793          	slli	a5,a3,0x10
    ce20:	0107d793          	srli	a5,a5,0x10
    ce24:	01035813          	srli	a6,t1,0x10
    ce28:	00b61633          	sll	a2,a2,a1
    ce2c:	03d75733          	divu	a4,a4,t4
    ce30:	01089893          	slli	a7,a7,0x10
    ce34:	0108e833          	or	a6,a7,a6
    ce38:	02e78f33          	mul	t5,a5,a4
    ce3c:	00070e13          	addi	t3,a4,0 # 10000 <__subtf3+0xc8c>
    ce40:	01e87e63          	bgeu	a6,t5,ce5c <__udivdi3+0x364>
    ce44:	00d80833          	add	a6,a6,a3
    ce48:	fff70e13          	addi	t3,a4,-1
    ce4c:	00d86863          	bltu	a6,a3,ce5c <__udivdi3+0x364>
    ce50:	01e87663          	bgeu	a6,t5,ce5c <__udivdi3+0x364>
    ce54:	ffe70e13          	addi	t3,a4,-2
    ce58:	00d80833          	add	a6,a6,a3
    ce5c:	41e80833          	sub	a6,a6,t5
    ce60:	03d878b3          	remu	a7,a6,t4
    ce64:	03d85833          	divu	a6,a6,t4
    ce68:	01089893          	slli	a7,a7,0x10
    ce6c:	03078eb3          	mul	t4,a5,a6
    ce70:	01031793          	slli	a5,t1,0x10
    ce74:	0107d793          	srli	a5,a5,0x10
    ce78:	00f8e7b3          	or	a5,a7,a5
    ce7c:	00080713          	addi	a4,a6,0
    ce80:	01d7fe63          	bgeu	a5,t4,ce9c <__udivdi3+0x3a4>
    ce84:	00d787b3          	add	a5,a5,a3
    ce88:	fff80713          	addi	a4,a6,-1
    ce8c:	00d7e863          	bltu	a5,a3,ce9c <__udivdi3+0x3a4>
    ce90:	01d7f663          	bgeu	a5,t4,ce9c <__udivdi3+0x3a4>
    ce94:	ffe80713          	addi	a4,a6,-2
    ce98:	00d787b3          	add	a5,a5,a3
    ce9c:	010e1e13          	slli	t3,t3,0x10
    cea0:	41d787b3          	sub	a5,a5,t4
    cea4:	00010eb7          	lui	t4,0x10
    cea8:	00ee6733          	or	a4,t3,a4
    ceac:	fffe8813          	addi	a6,t4,-1 # ffff <__subtf3+0xc8b>
    ceb0:	01077333          	and	t1,a4,a6
    ceb4:	01075893          	srli	a7,a4,0x10
    ceb8:	01067833          	and	a6,a2,a6
    cebc:	01065613          	srli	a2,a2,0x10
    cec0:	03030e33          	mul	t3,t1,a6
    cec4:	03088833          	mul	a6,a7,a6
    cec8:	010e5693          	srli	a3,t3,0x10
    cecc:	02c30333          	mul	t1,t1,a2
    ced0:	01030333          	add	t1,t1,a6
    ced4:	006686b3          	add	a3,a3,t1
    ced8:	02c888b3          	mul	a7,a7,a2
    cedc:	0106f463          	bgeu	a3,a6,cee4 <__udivdi3+0x3ec>
    cee0:	01d888b3          	add	a7,a7,t4
    cee4:	0106d613          	srli	a2,a3,0x10
    cee8:	011608b3          	add	a7,a2,a7
    ceec:	0317e663          	bltu	a5,a7,cf18 <__udivdi3+0x420>
    cef0:	cf179ae3          	bne	a5,a7,cbe4 <__udivdi3+0xec>
    cef4:	000107b7          	lui	a5,0x10
    cef8:	fff78793          	addi	a5,a5,-1 # ffff <__subtf3+0xc8b>
    cefc:	00f6f6b3          	and	a3,a3,a5
    cf00:	01069693          	slli	a3,a3,0x10
    cf04:	00fe7e33          	and	t3,t3,a5
    cf08:	00b51533          	sll	a0,a0,a1
    cf0c:	01c686b3          	add	a3,a3,t3
    cf10:	00000593          	addi	a1,zero,0
    cf14:	dad57ce3          	bgeu	a0,a3,cccc <__udivdi3+0x1d4>
    cf18:	fff70713          	addi	a4,a4,-1
    cf1c:	cc9ff06f          	jal	zero,cbe4 <__udivdi3+0xec>
    cf20:	00000593          	addi	a1,zero,0
    cf24:	00000713          	addi	a4,zero,0
    cf28:	da5ff06f          	jal	zero,cccc <__udivdi3+0x1d4>

0000cf2c <__umoddi3>:
    cf2c:	00060893          	addi	a7,a2,0
    cf30:	00068713          	addi	a4,a3,0
    cf34:	00050793          	addi	a5,a0,0
    cf38:	00058813          	addi	a6,a1,0 # 1000000 <__heap_top+0xf00000>
    cf3c:	22069c63          	bne	a3,zero,d174 <__umoddi3+0x248>
    cf40:	00005697          	auipc	a3,0x5
    cf44:	02468693          	addi	a3,a3,36 # 11f64 <__clz_tab>
    cf48:	0cc5fc63          	bgeu	a1,a2,d020 <__umoddi3+0xf4>
    cf4c:	00010337          	lui	t1,0x10
    cf50:	0a667e63          	bgeu	a2,t1,d00c <__umoddi3+0xe0>
    cf54:	0ff00313          	addi	t1,zero,255
    cf58:	00c37463          	bgeu	t1,a2,cf60 <__umoddi3+0x34>
    cf5c:	00800713          	addi	a4,zero,8
    cf60:	00e65333          	srl	t1,a2,a4
    cf64:	006686b3          	add	a3,a3,t1
    cf68:	0006ce03          	lbu	t3,0(a3)
    cf6c:	02000313          	addi	t1,zero,32
    cf70:	00ee0e33          	add	t3,t3,a4
    cf74:	41c30333          	sub	t1,t1,t3
    cf78:	00030c63          	beq	t1,zero,cf90 <__umoddi3+0x64>
    cf7c:	006595b3          	sll	a1,a1,t1
    cf80:	01c55e33          	srl	t3,a0,t3
    cf84:	006618b3          	sll	a7,a2,t1
    cf88:	00be6833          	or	a6,t3,a1
    cf8c:	006517b3          	sll	a5,a0,t1
    cf90:	0108d613          	srli	a2,a7,0x10
    cf94:	02c87733          	remu	a4,a6,a2
    cf98:	01089513          	slli	a0,a7,0x10
    cf9c:	01055513          	srli	a0,a0,0x10
    cfa0:	0107d693          	srli	a3,a5,0x10
    cfa4:	02c85833          	divu	a6,a6,a2
    cfa8:	01071713          	slli	a4,a4,0x10
    cfac:	00d766b3          	or	a3,a4,a3
    cfb0:	03050833          	mul	a6,a0,a6
    cfb4:	0106fa63          	bgeu	a3,a6,cfc8 <__umoddi3+0x9c>
    cfb8:	011686b3          	add	a3,a3,a7
    cfbc:	0116e663          	bltu	a3,a7,cfc8 <__umoddi3+0x9c>
    cfc0:	0106f463          	bgeu	a3,a6,cfc8 <__umoddi3+0x9c>
    cfc4:	011686b3          	add	a3,a3,a7
    cfc8:	410686b3          	sub	a3,a3,a6
    cfcc:	02c6f733          	remu	a4,a3,a2
    cfd0:	01079793          	slli	a5,a5,0x10
    cfd4:	0107d793          	srli	a5,a5,0x10
    cfd8:	02c6d6b3          	divu	a3,a3,a2
    cfdc:	02d506b3          	mul	a3,a0,a3
    cfe0:	01071513          	slli	a0,a4,0x10
    cfe4:	00f567b3          	or	a5,a0,a5
    cfe8:	00d7fa63          	bgeu	a5,a3,cffc <__umoddi3+0xd0>
    cfec:	011787b3          	add	a5,a5,a7
    cff0:	0117e663          	bltu	a5,a7,cffc <__umoddi3+0xd0>
    cff4:	00d7f463          	bgeu	a5,a3,cffc <__umoddi3+0xd0>
    cff8:	011787b3          	add	a5,a5,a7
    cffc:	40d787b3          	sub	a5,a5,a3
    d000:	0067d533          	srl	a0,a5,t1
    d004:	00000593          	addi	a1,zero,0
    d008:	00008067          	jalr	zero,0(ra)
    d00c:	01000337          	lui	t1,0x1000
    d010:	01000713          	addi	a4,zero,16
    d014:	f46666e3          	bltu	a2,t1,cf60 <__umoddi3+0x34>
    d018:	01800713          	addi	a4,zero,24
    d01c:	f45ff06f          	jal	zero,cf60 <__umoddi3+0x34>
    d020:	00061663          	bne	a2,zero,d02c <__umoddi3+0x100>
    d024:	00100613          	addi	a2,zero,1
    d028:	031658b3          	divu	a7,a2,a7
    d02c:	00010637          	lui	a2,0x10
    d030:	0ac8f263          	bgeu	a7,a2,d0d4 <__umoddi3+0x1a8>
    d034:	0ff00613          	addi	a2,zero,255
    d038:	01167463          	bgeu	a2,a7,d040 <__umoddi3+0x114>
    d03c:	00800713          	addi	a4,zero,8
    d040:	00e8d633          	srl	a2,a7,a4
    d044:	00c686b3          	add	a3,a3,a2
    d048:	0006ce03          	lbu	t3,0(a3)
    d04c:	02000313          	addi	t1,zero,32
    d050:	00ee0e33          	add	t3,t3,a4
    d054:	41c30333          	sub	t1,t1,t3
    d058:	08031863          	bne	t1,zero,d0e8 <__umoddi3+0x1bc>
    d05c:	411585b3          	sub	a1,a1,a7
    d060:	0108d713          	srli	a4,a7,0x10
    d064:	01089513          	slli	a0,a7,0x10
    d068:	01055513          	srli	a0,a0,0x10
    d06c:	0107d613          	srli	a2,a5,0x10
    d070:	02e5f6b3          	remu	a3,a1,a4
    d074:	02e5d5b3          	divu	a1,a1,a4
    d078:	01069693          	slli	a3,a3,0x10
    d07c:	00c6e6b3          	or	a3,a3,a2
    d080:	02b505b3          	mul	a1,a0,a1
    d084:	00b6fa63          	bgeu	a3,a1,d098 <__umoddi3+0x16c>
    d088:	011686b3          	add	a3,a3,a7
    d08c:	0116e663          	bltu	a3,a7,d098 <__umoddi3+0x16c>
    d090:	00b6f463          	bgeu	a3,a1,d098 <__umoddi3+0x16c>
    d094:	011686b3          	add	a3,a3,a7
    d098:	40b685b3          	sub	a1,a3,a1
    d09c:	02e5f6b3          	remu	a3,a1,a4
    d0a0:	01079793          	slli	a5,a5,0x10
    d0a4:	0107d793          	srli	a5,a5,0x10
    d0a8:	02e5d5b3          	divu	a1,a1,a4
    d0ac:	02b505b3          	mul	a1,a0,a1
    d0b0:	01069513          	slli	a0,a3,0x10
    d0b4:	00f567b3          	or	a5,a0,a5
    d0b8:	00b7fa63          	bgeu	a5,a1,d0cc <__umoddi3+0x1a0>
    d0bc:	011787b3          	add	a5,a5,a7
    d0c0:	0117e663          	bltu	a5,a7,d0cc <__umoddi3+0x1a0>
    d0c4:	00b7f463          	bgeu	a5,a1,d0cc <__umoddi3+0x1a0>
    d0c8:	011787b3          	add	a5,a5,a7
    d0cc:	40b787b3          	sub	a5,a5,a1
    d0d0:	f31ff06f          	jal	zero,d000 <__umoddi3+0xd4>
    d0d4:	01000637          	lui	a2,0x1000
    d0d8:	01000713          	addi	a4,zero,16
    d0dc:	f6c8e2e3          	bltu	a7,a2,d040 <__umoddi3+0x114>
    d0e0:	01800713          	addi	a4,zero,24
    d0e4:	f5dff06f          	jal	zero,d040 <__umoddi3+0x114>
    d0e8:	006898b3          	sll	a7,a7,t1
    d0ec:	01c5d733          	srl	a4,a1,t3
    d0f0:	006517b3          	sll	a5,a0,t1
    d0f4:	01c55e33          	srl	t3,a0,t3
    d0f8:	0108d513          	srli	a0,a7,0x10
    d0fc:	02a776b3          	remu	a3,a4,a0
    d100:	006595b3          	sll	a1,a1,t1
    d104:	00be6e33          	or	t3,t3,a1
    d108:	01089593          	slli	a1,a7,0x10
    d10c:	0105d593          	srli	a1,a1,0x10
    d110:	010e5613          	srli	a2,t3,0x10
    d114:	02a75733          	divu	a4,a4,a0
    d118:	01069693          	slli	a3,a3,0x10
    d11c:	00c6e6b3          	or	a3,a3,a2
    d120:	02e58733          	mul	a4,a1,a4
    d124:	00e6fa63          	bgeu	a3,a4,d138 <__umoddi3+0x20c>
    d128:	011686b3          	add	a3,a3,a7
    d12c:	0116e663          	bltu	a3,a7,d138 <__umoddi3+0x20c>
    d130:	00e6f463          	bgeu	a3,a4,d138 <__umoddi3+0x20c>
    d134:	011686b3          	add	a3,a3,a7
    d138:	40e68633          	sub	a2,a3,a4
    d13c:	02a676b3          	remu	a3,a2,a0
    d140:	010e1e13          	slli	t3,t3,0x10
    d144:	010e5e13          	srli	t3,t3,0x10
    d148:	02a65633          	divu	a2,a2,a0
    d14c:	01069693          	slli	a3,a3,0x10
    d150:	02c58633          	mul	a2,a1,a2
    d154:	01c6e5b3          	or	a1,a3,t3
    d158:	00c5fa63          	bgeu	a1,a2,d16c <__umoddi3+0x240>
    d15c:	011585b3          	add	a1,a1,a7
    d160:	0115e663          	bltu	a1,a7,d16c <__umoddi3+0x240>
    d164:	00c5f463          	bgeu	a1,a2,d16c <__umoddi3+0x240>
    d168:	011585b3          	add	a1,a1,a7
    d16c:	40c585b3          	sub	a1,a1,a2
    d170:	ef1ff06f          	jal	zero,d060 <__umoddi3+0x134>
    d174:	e8d5eae3          	bltu	a1,a3,d008 <__umoddi3+0xdc>
    d178:	00010737          	lui	a4,0x10
    d17c:	04e6fc63          	bgeu	a3,a4,d1d4 <__umoddi3+0x2a8>
    d180:	0ff00e93          	addi	t4,zero,255
    d184:	00deb733          	sltu	a4,t4,a3
    d188:	00371713          	slli	a4,a4,0x3
    d18c:	00e6d333          	srl	t1,a3,a4
    d190:	00005897          	auipc	a7,0x5
    d194:	dd488893          	addi	a7,a7,-556 # 11f64 <__clz_tab>
    d198:	006888b3          	add	a7,a7,t1
    d19c:	0008ce83          	lbu	t4,0(a7)
    d1a0:	02000e13          	addi	t3,zero,32
    d1a4:	00ee8eb3          	add	t4,t4,a4
    d1a8:	41de0e33          	sub	t3,t3,t4
    d1ac:	020e1e63          	bne	t3,zero,d1e8 <__umoddi3+0x2bc>
    d1b0:	00b6e463          	bltu	a3,a1,d1b8 <__umoddi3+0x28c>
    d1b4:	00c56a63          	bltu	a0,a2,d1c8 <__umoddi3+0x29c>
    d1b8:	40c507b3          	sub	a5,a0,a2
    d1bc:	40d585b3          	sub	a1,a1,a3
    d1c0:	00f53533          	sltu	a0,a0,a5
    d1c4:	40a58833          	sub	a6,a1,a0
    d1c8:	00078513          	addi	a0,a5,0
    d1cc:	00080593          	addi	a1,a6,0
    d1d0:	e39ff06f          	jal	zero,d008 <__umoddi3+0xdc>
    d1d4:	010008b7          	lui	a7,0x1000
    d1d8:	01000713          	addi	a4,zero,16
    d1dc:	fb16e8e3          	bltu	a3,a7,d18c <__umoddi3+0x260>
    d1e0:	01800713          	addi	a4,zero,24
    d1e4:	fa9ff06f          	jal	zero,d18c <__umoddi3+0x260>
    d1e8:	01d65733          	srl	a4,a2,t4
    d1ec:	01c696b3          	sll	a3,a3,t3
    d1f0:	00d766b3          	or	a3,a4,a3
    d1f4:	0106d813          	srli	a6,a3,0x10
    d1f8:	01d5d733          	srl	a4,a1,t4
    d1fc:	03077333          	remu	t1,a4,a6
    d200:	01c595b3          	sll	a1,a1,t3
    d204:	01d557b3          	srl	a5,a0,t4
    d208:	00b7e7b3          	or	a5,a5,a1
    d20c:	01069593          	slli	a1,a3,0x10
    d210:	0105d593          	srli	a1,a1,0x10
    d214:	0107d893          	srli	a7,a5,0x10
    d218:	01c61633          	sll	a2,a2,t3
    d21c:	01c51533          	sll	a0,a0,t3
    d220:	03075733          	divu	a4,a4,a6
    d224:	01031313          	slli	t1,t1,0x10
    d228:	011368b3          	or	a7,t1,a7
    d22c:	02e58f33          	mul	t5,a1,a4
    d230:	00070313          	addi	t1,a4,0 # 10000 <__subtf3+0xc8c>
    d234:	01e8fe63          	bgeu	a7,t5,d250 <__umoddi3+0x324>
    d238:	00d888b3          	add	a7,a7,a3
    d23c:	fff70313          	addi	t1,a4,-1
    d240:	00d8e863          	bltu	a7,a3,d250 <__umoddi3+0x324>
    d244:	01e8f663          	bgeu	a7,t5,d250 <__umoddi3+0x324>
    d248:	ffe70313          	addi	t1,a4,-2
    d24c:	00d888b3          	add	a7,a7,a3
    d250:	41e888b3          	sub	a7,a7,t5
    d254:	0308ff33          	remu	t5,a7,a6
    d258:	0308d8b3          	divu	a7,a7,a6
    d25c:	010f1f13          	slli	t5,t5,0x10
    d260:	03158833          	mul	a6,a1,a7
    d264:	01079593          	slli	a1,a5,0x10
    d268:	0105d593          	srli	a1,a1,0x10
    d26c:	00bf65b3          	or	a1,t5,a1
    d270:	00088793          	addi	a5,a7,0 # 1000000 <__heap_top+0xf00000>
    d274:	0105fe63          	bgeu	a1,a6,d290 <__umoddi3+0x364>
    d278:	00d585b3          	add	a1,a1,a3
    d27c:	fff88793          	addi	a5,a7,-1
    d280:	00d5e863          	bltu	a1,a3,d290 <__umoddi3+0x364>
    d284:	0105f663          	bgeu	a1,a6,d290 <__umoddi3+0x364>
    d288:	ffe88793          	addi	a5,a7,-2
    d28c:	00d585b3          	add	a1,a1,a3
    d290:	01031313          	slli	t1,t1,0x10
    d294:	00010f37          	lui	t5,0x10
    d298:	00f36333          	or	t1,t1,a5
    d29c:	ffff0793          	addi	a5,t5,-1 # ffff <__subtf3+0xc8b>
    d2a0:	00f378b3          	and	a7,t1,a5
    d2a4:	410585b3          	sub	a1,a1,a6
    d2a8:	01035313          	srli	t1,t1,0x10
    d2ac:	01065813          	srli	a6,a2,0x10
    d2b0:	00f677b3          	and	a5,a2,a5
    d2b4:	02f88733          	mul	a4,a7,a5
    d2b8:	02f307b3          	mul	a5,t1,a5
    d2bc:	030888b3          	mul	a7,a7,a6
    d2c0:	03030333          	mul	t1,t1,a6
    d2c4:	00f888b3          	add	a7,a7,a5
    d2c8:	01075813          	srli	a6,a4,0x10
    d2cc:	01180833          	add	a6,a6,a7
    d2d0:	00f87463          	bgeu	a6,a5,d2d8 <__umoddi3+0x3ac>
    d2d4:	01e30333          	add	t1,t1,t5
    d2d8:	01085793          	srli	a5,a6,0x10
    d2dc:	00678333          	add	t1,a5,t1
    d2e0:	000107b7          	lui	a5,0x10
    d2e4:	fff78793          	addi	a5,a5,-1 # ffff <__subtf3+0xc8b>
    d2e8:	00f87833          	and	a6,a6,a5
    d2ec:	01081813          	slli	a6,a6,0x10
    d2f0:	00f77733          	and	a4,a4,a5
    d2f4:	00e80733          	add	a4,a6,a4
    d2f8:	0065e663          	bltu	a1,t1,d304 <__umoddi3+0x3d8>
    d2fc:	00659e63          	bne	a1,t1,d318 <__umoddi3+0x3ec>
    d300:	00e57c63          	bgeu	a0,a4,d318 <__umoddi3+0x3ec>
    d304:	40c70633          	sub	a2,a4,a2
    d308:	00c73733          	sltu	a4,a4,a2
    d30c:	00d70733          	add	a4,a4,a3
    d310:	40e30333          	sub	t1,t1,a4
    d314:	00060713          	addi	a4,a2,0 # 1000000 <__heap_top+0xf00000>
    d318:	40e50733          	sub	a4,a0,a4
    d31c:	00e53533          	sltu	a0,a0,a4
    d320:	406585b3          	sub	a1,a1,t1
    d324:	40a585b3          	sub	a1,a1,a0
    d328:	01d597b3          	sll	a5,a1,t4
    d32c:	01c75733          	srl	a4,a4,t3
    d330:	00e7e533          	or	a0,a5,a4
    d334:	01c5d5b3          	srl	a1,a1,t3
    d338:	cd1ff06f          	jal	zero,d008 <__umoddi3+0xdc>

0000d33c <__divdf3>:
    d33c:	fd010113          	addi	sp,sp,-48
    d340:	02812423          	sw	s0,40(sp)
    d344:	02912223          	sw	s1,36(sp)
    d348:	01612823          	sw	s6,16(sp)
    d34c:	00050413          	addi	s0,a0,0
    d350:	00050b13          	addi	s6,a0,0
    d354:	001004b7          	lui	s1,0x100
    d358:	0145d513          	srli	a0,a1,0x14
    d35c:	03212023          	sw	s2,32(sp)
    d360:	01312e23          	sw	s3,28(sp)
    d364:	01712623          	sw	s7,12(sp)
    d368:	fff48493          	addi	s1,s1,-1 # fffff <__preinit_array_end+0xecf9b>
    d36c:	02112623          	sw	ra,44(sp)
    d370:	01412c23          	sw	s4,24(sp)
    d374:	01512a23          	sw	s5,20(sp)
    d378:	7ff57513          	andi	a0,a0,2047
    d37c:	00060b93          	addi	s7,a2,0
    d380:	00068993          	addi	s3,a3,0
    d384:	00b4f4b3          	and	s1,s1,a1
    d388:	01f5d913          	srli	s2,a1,0x1f
    d38c:	0a050663          	beq	a0,zero,d438 <__divdf3+0xfc>
    d390:	7ff00793          	addi	a5,zero,2047
    d394:	10f50663          	beq	a0,a5,d4a0 <__divdf3+0x164>
    d398:	01db5a93          	srli	s5,s6,0x1d
    d39c:	00349493          	slli	s1,s1,0x3
    d3a0:	009ae4b3          	or	s1,s5,s1
    d3a4:	00800ab7          	lui	s5,0x800
    d3a8:	0154eab3          	or	s5,s1,s5
    d3ac:	003b1413          	slli	s0,s6,0x3
    d3b0:	c0150a13          	addi	s4,a0,-1023
    d3b4:	00000b13          	addi	s6,zero,0
    d3b8:	0149d513          	srli	a0,s3,0x14
    d3bc:	001004b7          	lui	s1,0x100
    d3c0:	fff48493          	addi	s1,s1,-1 # fffff <__preinit_array_end+0xecf9b>
    d3c4:	7ff57513          	andi	a0,a0,2047
    d3c8:	0134f4b3          	and	s1,s1,s3
    d3cc:	000b8813          	addi	a6,s7,0
    d3d0:	01f9d993          	srli	s3,s3,0x1f
    d3d4:	10050263          	beq	a0,zero,d4d8 <__divdf3+0x19c>
    d3d8:	7ff00793          	addi	a5,zero,2047
    d3dc:	16f50263          	beq	a0,a5,d540 <__divdf3+0x204>
    d3e0:	01dbd793          	srli	a5,s7,0x1d
    d3e4:	00349493          	slli	s1,s1,0x3
    d3e8:	0097e7b3          	or	a5,a5,s1
    d3ec:	008008b7          	lui	a7,0x800
    d3f0:	0117e8b3          	or	a7,a5,a7
    d3f4:	003b9813          	slli	a6,s7,0x3
    d3f8:	c0150513          	addi	a0,a0,-1023
    d3fc:	00000793          	addi	a5,zero,0
    d400:	002b1713          	slli	a4,s6,0x2
    d404:	00f76733          	or	a4,a4,a5
    d408:	fff70713          	addi	a4,a4,-1
    d40c:	00e00693          	addi	a3,zero,14
    d410:	01394633          	xor	a2,s2,s3
    d414:	40aa0533          	sub	a0,s4,a0
    d418:	16e6e063          	bltu	a3,a4,d578 <__divdf3+0x23c>
    d41c:	00005697          	auipc	a3,0x5
    d420:	a9468693          	addi	a3,a3,-1388 # 11eb0 <zeroes.4476+0x10>
    d424:	00271713          	slli	a4,a4,0x2
    d428:	00d70733          	add	a4,a4,a3
    d42c:	00072703          	lw	a4,0(a4)
    d430:	00d70733          	add	a4,a4,a3
    d434:	00070067          	jalr	zero,0(a4)
    d438:	0164eab3          	or	s5,s1,s6
    d43c:	060a8e63          	beq	s5,zero,d4b8 <__divdf3+0x17c>
    d440:	04048063          	beq	s1,zero,d480 <__divdf3+0x144>
    d444:	00048513          	addi	a0,s1,0
    d448:	499030ef          	jal	ra,110e0 <__clzsi2>
    d44c:	ff550793          	addi	a5,a0,-11
    d450:	01c00713          	addi	a4,zero,28
    d454:	02f74e63          	blt	a4,a5,d490 <__divdf3+0x154>
    d458:	01d00a93          	addi	s5,zero,29
    d45c:	ff850413          	addi	s0,a0,-8
    d460:	40fa8ab3          	sub	s5,s5,a5
    d464:	008494b3          	sll	s1,s1,s0
    d468:	015b5ab3          	srl	s5,s6,s5
    d46c:	009aeab3          	or	s5,s5,s1
    d470:	008b1433          	sll	s0,s6,s0
    d474:	c0d00a13          	addi	s4,zero,-1011
    d478:	40aa0a33          	sub	s4,s4,a0
    d47c:	f39ff06f          	jal	zero,d3b4 <__divdf3+0x78>
    d480:	000b0513          	addi	a0,s6,0
    d484:	45d030ef          	jal	ra,110e0 <__clzsi2>
    d488:	02050513          	addi	a0,a0,32
    d48c:	fc1ff06f          	jal	zero,d44c <__divdf3+0x110>
    d490:	fd850493          	addi	s1,a0,-40
    d494:	009b1ab3          	sll	s5,s6,s1
    d498:	00000413          	addi	s0,zero,0
    d49c:	fd9ff06f          	jal	zero,d474 <__divdf3+0x138>
    d4a0:	0164eab3          	or	s5,s1,s6
    d4a4:	020a8263          	beq	s5,zero,d4c8 <__divdf3+0x18c>
    d4a8:	00048a93          	addi	s5,s1,0
    d4ac:	7ff00a13          	addi	s4,zero,2047
    d4b0:	00300b13          	addi	s6,zero,3
    d4b4:	f05ff06f          	jal	zero,d3b8 <__divdf3+0x7c>
    d4b8:	00000413          	addi	s0,zero,0
    d4bc:	00000a13          	addi	s4,zero,0
    d4c0:	00100b13          	addi	s6,zero,1
    d4c4:	ef5ff06f          	jal	zero,d3b8 <__divdf3+0x7c>
    d4c8:	00000413          	addi	s0,zero,0
    d4cc:	7ff00a13          	addi	s4,zero,2047
    d4d0:	00200b13          	addi	s6,zero,2
    d4d4:	ee5ff06f          	jal	zero,d3b8 <__divdf3+0x7c>
    d4d8:	0174e8b3          	or	a7,s1,s7
    d4dc:	06088e63          	beq	a7,zero,d558 <__divdf3+0x21c>
    d4e0:	04048063          	beq	s1,zero,d520 <__divdf3+0x1e4>
    d4e4:	00048513          	addi	a0,s1,0
    d4e8:	3f9030ef          	jal	ra,110e0 <__clzsi2>
    d4ec:	ff550893          	addi	a7,a0,-11
    d4f0:	01c00793          	addi	a5,zero,28
    d4f4:	0317ce63          	blt	a5,a7,d530 <__divdf3+0x1f4>
    d4f8:	01d00793          	addi	a5,zero,29
    d4fc:	ff850813          	addi	a6,a0,-8
    d500:	411787b3          	sub	a5,a5,a7
    d504:	010494b3          	sll	s1,s1,a6
    d508:	00fbd7b3          	srl	a5,s7,a5
    d50c:	0097e8b3          	or	a7,a5,s1
    d510:	010b9833          	sll	a6,s7,a6
    d514:	c0d00793          	addi	a5,zero,-1011
    d518:	40a78533          	sub	a0,a5,a0
    d51c:	ee1ff06f          	jal	zero,d3fc <__divdf3+0xc0>
    d520:	000b8513          	addi	a0,s7,0
    d524:	3bd030ef          	jal	ra,110e0 <__clzsi2>
    d528:	02050513          	addi	a0,a0,32
    d52c:	fc1ff06f          	jal	zero,d4ec <__divdf3+0x1b0>
    d530:	fd850793          	addi	a5,a0,-40
    d534:	00fb98b3          	sll	a7,s7,a5
    d538:	00000813          	addi	a6,zero,0
    d53c:	fd9ff06f          	jal	zero,d514 <__divdf3+0x1d8>
    d540:	0174e8b3          	or	a7,s1,s7
    d544:	02088263          	beq	a7,zero,d568 <__divdf3+0x22c>
    d548:	00048893          	addi	a7,s1,0
    d54c:	7ff00513          	addi	a0,zero,2047
    d550:	00300793          	addi	a5,zero,3
    d554:	eadff06f          	jal	zero,d400 <__divdf3+0xc4>
    d558:	00000813          	addi	a6,zero,0
    d55c:	00000513          	addi	a0,zero,0
    d560:	00100793          	addi	a5,zero,1
    d564:	e9dff06f          	jal	zero,d400 <__divdf3+0xc4>
    d568:	00000813          	addi	a6,zero,0
    d56c:	7ff00513          	addi	a0,zero,2047
    d570:	00200793          	addi	a5,zero,2
    d574:	e8dff06f          	jal	zero,d400 <__divdf3+0xc4>
    d578:	0158e663          	bltu	a7,s5,d584 <__divdf3+0x248>
    d57c:	371a9063          	bne	s5,a7,d8dc <__divdf3+0x5a0>
    d580:	35046e63          	bltu	s0,a6,d8dc <__divdf3+0x5a0>
    d584:	01fa9713          	slli	a4,s5,0x1f
    d588:	00145793          	srli	a5,s0,0x1
    d58c:	01f41293          	slli	t0,s0,0x1f
    d590:	001ada93          	srli	s5,s5,0x1
    d594:	00f76433          	or	s0,a4,a5
    d598:	00889793          	slli	a5,a7,0x8
    d59c:	01885893          	srli	a7,a6,0x18
    d5a0:	00f8e7b3          	or	a5,a7,a5
    d5a4:	0107de13          	srli	t3,a5,0x10
    d5a8:	00881593          	slli	a1,a6,0x8
    d5ac:	03cad833          	divu	a6,s5,t3
    d5b0:	01079313          	slli	t1,a5,0x10
    d5b4:	01035313          	srli	t1,t1,0x10
    d5b8:	01045713          	srli	a4,s0,0x10
    d5bc:	03caf4b3          	remu	s1,s5,t3
    d5c0:	00080f93          	addi	t6,a6,0
    d5c4:	030306b3          	mul	a3,t1,a6
    d5c8:	01049a93          	slli	s5,s1,0x10
    d5cc:	01576733          	or	a4,a4,s5
    d5d0:	00d77e63          	bgeu	a4,a3,d5ec <__divdf3+0x2b0>
    d5d4:	00f70733          	add	a4,a4,a5
    d5d8:	fff80f93          	addi	t6,a6,-1
    d5dc:	00f76863          	bltu	a4,a5,d5ec <__divdf3+0x2b0>
    d5e0:	00d77663          	bgeu	a4,a3,d5ec <__divdf3+0x2b0>
    d5e4:	ffe80f93          	addi	t6,a6,-2
    d5e8:	00f70733          	add	a4,a4,a5
    d5ec:	40d70733          	sub	a4,a4,a3
    d5f0:	03c758b3          	divu	a7,a4,t3
    d5f4:	01041413          	slli	s0,s0,0x10
    d5f8:	01045413          	srli	s0,s0,0x10
    d5fc:	03c77733          	remu	a4,a4,t3
    d600:	00088693          	addi	a3,a7,0 # 800000 <__heap_top+0x700000>
    d604:	03130833          	mul	a6,t1,a7
    d608:	01071713          	slli	a4,a4,0x10
    d60c:	00e46733          	or	a4,s0,a4
    d610:	01077e63          	bgeu	a4,a6,d62c <__divdf3+0x2f0>
    d614:	00f70733          	add	a4,a4,a5
    d618:	fff88693          	addi	a3,a7,-1
    d61c:	00f76863          	bltu	a4,a5,d62c <__divdf3+0x2f0>
    d620:	01077663          	bgeu	a4,a6,d62c <__divdf3+0x2f0>
    d624:	ffe88693          	addi	a3,a7,-2
    d628:	00f70733          	add	a4,a4,a5
    d62c:	010f9f93          	slli	t6,t6,0x10
    d630:	00dfefb3          	or	t6,t6,a3
    d634:	000106b7          	lui	a3,0x10
    d638:	fff68e93          	addi	t4,a3,-1 # ffff <__subtf3+0xc8b>
    d63c:	41070433          	sub	s0,a4,a6
    d640:	0105df13          	srli	t5,a1,0x10
    d644:	010fd713          	srli	a4,t6,0x10
    d648:	01dff833          	and	a6,t6,t4
    d64c:	01d5feb3          	and	t4,a1,t4
    d650:	03d803b3          	mul	t2,a6,t4
    d654:	03d704b3          	mul	s1,a4,t4
    d658:	030f0833          	mul	a6,t5,a6
    d65c:	03e708b3          	mul	a7,a4,t5
    d660:	00980733          	add	a4,a6,s1
    d664:	0103d813          	srli	a6,t2,0x10
    d668:	00e80833          	add	a6,a6,a4
    d66c:	00987463          	bgeu	a6,s1,d674 <__divdf3+0x338>
    d670:	00d888b3          	add	a7,a7,a3
    d674:	01085713          	srli	a4,a6,0x10
    d678:	01170733          	add	a4,a4,a7
    d67c:	000108b7          	lui	a7,0x10
    d680:	fff88893          	addi	a7,a7,-1 # ffff <__subtf3+0xc8b>
    d684:	011876b3          	and	a3,a6,a7
    d688:	01069693          	slli	a3,a3,0x10
    d68c:	0113f3b3          	and	t2,t2,a7
    d690:	007686b3          	add	a3,a3,t2
    d694:	00e46863          	bltu	s0,a4,d6a4 <__divdf3+0x368>
    d698:	000f8893          	addi	a7,t6,0
    d69c:	04e41463          	bne	s0,a4,d6e4 <__divdf3+0x3a8>
    d6a0:	04d2f263          	bgeu	t0,a3,d6e4 <__divdf3+0x3a8>
    d6a4:	00b282b3          	add	t0,t0,a1
    d6a8:	00b2b833          	sltu	a6,t0,a1
    d6ac:	00f80833          	add	a6,a6,a5
    d6b0:	01040433          	add	s0,s0,a6
    d6b4:	ffff8893          	addi	a7,t6,-1
    d6b8:	0087e663          	bltu	a5,s0,d6c4 <__divdf3+0x388>
    d6bc:	02879463          	bne	a5,s0,d6e4 <__divdf3+0x3a8>
    d6c0:	02b2e263          	bltu	t0,a1,d6e4 <__divdf3+0x3a8>
    d6c4:	00e46663          	bltu	s0,a4,d6d0 <__divdf3+0x394>
    d6c8:	00871e63          	bne	a4,s0,d6e4 <__divdf3+0x3a8>
    d6cc:	00d2fc63          	bgeu	t0,a3,d6e4 <__divdf3+0x3a8>
    d6d0:	00b282b3          	add	t0,t0,a1
    d6d4:	00b2b833          	sltu	a6,t0,a1
    d6d8:	00f80833          	add	a6,a6,a5
    d6dc:	ffef8893          	addi	a7,t6,-2
    d6e0:	01040433          	add	s0,s0,a6
    d6e4:	40d286b3          	sub	a3,t0,a3
    d6e8:	40e40433          	sub	s0,s0,a4
    d6ec:	00d2b733          	sltu	a4,t0,a3
    d6f0:	40e40433          	sub	s0,s0,a4
    d6f4:	fff00813          	addi	a6,zero,-1
    d6f8:	12878463          	beq	a5,s0,d820 <__divdf3+0x4e4>
    d6fc:	03c452b3          	divu	t0,s0,t3
    d700:	0106d713          	srli	a4,a3,0x10
    d704:	03c47433          	remu	s0,s0,t3
    d708:	00028813          	addi	a6,t0,0
    d70c:	02530fb3          	mul	t6,t1,t0
    d710:	01041413          	slli	s0,s0,0x10
    d714:	00876433          	or	s0,a4,s0
    d718:	01f47e63          	bgeu	s0,t6,d734 <__divdf3+0x3f8>
    d71c:	00f40433          	add	s0,s0,a5
    d720:	fff28813          	addi	a6,t0,-1
    d724:	00f46863          	bltu	s0,a5,d734 <__divdf3+0x3f8>
    d728:	01f47663          	bgeu	s0,t6,d734 <__divdf3+0x3f8>
    d72c:	ffe28813          	addi	a6,t0,-2
    d730:	00f40433          	add	s0,s0,a5
    d734:	41f40433          	sub	s0,s0,t6
    d738:	03c45fb3          	divu	t6,s0,t3
    d73c:	01069693          	slli	a3,a3,0x10
    d740:	0106d693          	srli	a3,a3,0x10
    d744:	03c47433          	remu	s0,s0,t3
    d748:	000f8713          	addi	a4,t6,0
    d74c:	03f30333          	mul	t1,t1,t6
    d750:	01041413          	slli	s0,s0,0x10
    d754:	0086e433          	or	s0,a3,s0
    d758:	00647e63          	bgeu	s0,t1,d774 <__divdf3+0x438>
    d75c:	00f40433          	add	s0,s0,a5
    d760:	ffff8713          	addi	a4,t6,-1
    d764:	00f46863          	bltu	s0,a5,d774 <__divdf3+0x438>
    d768:	00647663          	bgeu	s0,t1,d774 <__divdf3+0x438>
    d76c:	ffef8713          	addi	a4,t6,-2
    d770:	00f40433          	add	s0,s0,a5
    d774:	01081813          	slli	a6,a6,0x10
    d778:	00e86833          	or	a6,a6,a4
    d77c:	01081693          	slli	a3,a6,0x10
    d780:	0106d693          	srli	a3,a3,0x10
    d784:	40640433          	sub	s0,s0,t1
    d788:	01085313          	srli	t1,a6,0x10
    d78c:	03d68fb3          	mul	t6,a3,t4
    d790:	026f0e33          	mul	t3,t5,t1
    d794:	03d30eb3          	mul	t4,t1,t4
    d798:	02df0f33          	mul	t5,t5,a3
    d79c:	010fd693          	srli	a3,t6,0x10
    d7a0:	01df0f33          	add	t5,t5,t4
    d7a4:	01e686b3          	add	a3,a3,t5
    d7a8:	01d6f663          	bgeu	a3,t4,d7b4 <__divdf3+0x478>
    d7ac:	00010737          	lui	a4,0x10
    d7b0:	00ee0e33          	add	t3,t3,a4
    d7b4:	0106d313          	srli	t1,a3,0x10
    d7b8:	01c30333          	add	t1,t1,t3
    d7bc:	00010e37          	lui	t3,0x10
    d7c0:	fffe0e13          	addi	t3,t3,-1 # ffff <__subtf3+0xc8b>
    d7c4:	01c6f733          	and	a4,a3,t3
    d7c8:	01071713          	slli	a4,a4,0x10
    d7cc:	01cfffb3          	and	t6,t6,t3
    d7d0:	01f70733          	add	a4,a4,t6
    d7d4:	00646663          	bltu	s0,t1,d7e0 <__divdf3+0x4a4>
    d7d8:	24641463          	bne	s0,t1,da20 <__divdf3+0x6e4>
    d7dc:	04070263          	beq	a4,zero,d820 <__divdf3+0x4e4>
    d7e0:	00878433          	add	s0,a5,s0
    d7e4:	fff80693          	addi	a3,a6,-1
    d7e8:	02f46463          	bltu	s0,a5,d810 <__divdf3+0x4d4>
    d7ec:	00646663          	bltu	s0,t1,d7f8 <__divdf3+0x4bc>
    d7f0:	22641663          	bne	s0,t1,da1c <__divdf3+0x6e0>
    d7f4:	02e5f063          	bgeu	a1,a4,d814 <__divdf3+0x4d8>
    d7f8:	ffe80693          	addi	a3,a6,-2
    d7fc:	00159813          	slli	a6,a1,0x1
    d800:	00b835b3          	sltu	a1,a6,a1
    d804:	00f587b3          	add	a5,a1,a5
    d808:	00f40433          	add	s0,s0,a5
    d80c:	00080593          	addi	a1,a6,0
    d810:	00641663          	bne	s0,t1,d81c <__divdf3+0x4e0>
    d814:	00068813          	addi	a6,a3,0
    d818:	00b70463          	beq	a4,a1,d820 <__divdf3+0x4e4>
    d81c:	0016e813          	ori	a6,a3,1
    d820:	3ff50693          	addi	a3,a0,1023
    d824:	10d05a63          	bge	zero,a3,d938 <__divdf3+0x5fc>
    d828:	00787793          	andi	a5,a6,7
    d82c:	02078063          	beq	a5,zero,d84c <__divdf3+0x510>
    d830:	00f87793          	andi	a5,a6,15
    d834:	00400713          	addi	a4,zero,4
    d838:	00e78a63          	beq	a5,a4,d84c <__divdf3+0x510>
    d83c:	00480793          	addi	a5,a6,4
    d840:	0107b833          	sltu	a6,a5,a6
    d844:	010888b3          	add	a7,a7,a6
    d848:	00078813          	addi	a6,a5,0
    d84c:	00789793          	slli	a5,a7,0x7
    d850:	0007da63          	bge	a5,zero,d864 <__divdf3+0x528>
    d854:	ff0007b7          	lui	a5,0xff000
    d858:	fff78793          	addi	a5,a5,-1 # feffffff <__heap_top+0xfeefffff>
    d85c:	00f8f8b3          	and	a7,a7,a5
    d860:	40050693          	addi	a3,a0,1024
    d864:	7fe00793          	addi	a5,zero,2046
    d868:	18d7ca63          	blt	a5,a3,d9fc <__divdf3+0x6c0>
    d86c:	00385813          	srli	a6,a6,0x3
    d870:	01d89713          	slli	a4,a7,0x1d
    d874:	01076733          	or	a4,a4,a6
    d878:	0038d793          	srli	a5,a7,0x3
    d87c:	001005b7          	lui	a1,0x100
    d880:	fff58593          	addi	a1,a1,-1 # fffff <__preinit_array_end+0xecf9b>
    d884:	00b7f7b3          	and	a5,a5,a1
    d888:	801005b7          	lui	a1,0x80100
    d88c:	fff58593          	addi	a1,a1,-1 # 800fffff <__heap_top+0x7fffffff>
    d890:	7ff6f693          	andi	a3,a3,2047
    d894:	01469693          	slli	a3,a3,0x14
    d898:	00b7f7b3          	and	a5,a5,a1
    d89c:	02c12083          	lw	ra,44(sp)
    d8a0:	02812403          	lw	s0,40(sp)
    d8a4:	01f61613          	slli	a2,a2,0x1f
    d8a8:	00d7e7b3          	or	a5,a5,a3
    d8ac:	00c7e6b3          	or	a3,a5,a2
    d8b0:	02412483          	lw	s1,36(sp)
    d8b4:	02012903          	lw	s2,32(sp)
    d8b8:	01c12983          	lw	s3,28(sp)
    d8bc:	01812a03          	lw	s4,24(sp)
    d8c0:	01412a83          	lw	s5,20(sp)
    d8c4:	01012b03          	lw	s6,16(sp)
    d8c8:	00c12b83          	lw	s7,12(sp)
    d8cc:	00070513          	addi	a0,a4,0 # 10000 <__subtf3+0xc8c>
    d8d0:	00068593          	addi	a1,a3,0
    d8d4:	03010113          	addi	sp,sp,48
    d8d8:	00008067          	jalr	zero,0(ra)
    d8dc:	fff50513          	addi	a0,a0,-1
    d8e0:	00000293          	addi	t0,zero,0
    d8e4:	cb5ff06f          	jal	zero,d598 <__divdf3+0x25c>
    d8e8:	00090613          	addi	a2,s2,0
    d8ec:	000a8893          	addi	a7,s5,0 # 800000 <__heap_top+0x700000>
    d8f0:	00040813          	addi	a6,s0,0
    d8f4:	000b0793          	addi	a5,s6,0
    d8f8:	00200713          	addi	a4,zero,2
    d8fc:	10e78063          	beq	a5,a4,d9fc <__divdf3+0x6c0>
    d900:	00300713          	addi	a4,zero,3
    d904:	0ee78263          	beq	a5,a4,d9e8 <__divdf3+0x6ac>
    d908:	00100713          	addi	a4,zero,1
    d90c:	f0e79ae3          	bne	a5,a4,d820 <__divdf3+0x4e4>
    d910:	00000793          	addi	a5,zero,0
    d914:	00000713          	addi	a4,zero,0
    d918:	0940006f          	jal	zero,d9ac <__divdf3+0x670>
    d91c:	00098613          	addi	a2,s3,0
    d920:	fd9ff06f          	jal	zero,d8f8 <__divdf3+0x5bc>
    d924:	000808b7          	lui	a7,0x80
    d928:	00000813          	addi	a6,zero,0
    d92c:	00000613          	addi	a2,zero,0
    d930:	00300793          	addi	a5,zero,3
    d934:	fc5ff06f          	jal	zero,d8f8 <__divdf3+0x5bc>
    d938:	00100793          	addi	a5,zero,1
    d93c:	40d787b3          	sub	a5,a5,a3
    d940:	03800713          	addi	a4,zero,56
    d944:	fcf746e3          	blt	a4,a5,d910 <__divdf3+0x5d4>
    d948:	01f00713          	addi	a4,zero,31
    d94c:	06f74463          	blt	a4,a5,d9b4 <__divdf3+0x678>
    d950:	41e50513          	addi	a0,a0,1054
    d954:	00a89733          	sll	a4,a7,a0
    d958:	00f856b3          	srl	a3,a6,a5
    d95c:	00a81533          	sll	a0,a6,a0
    d960:	00d76733          	or	a4,a4,a3
    d964:	00a03533          	sltu	a0,zero,a0
    d968:	00a76733          	or	a4,a4,a0
    d96c:	00f8d7b3          	srl	a5,a7,a5
    d970:	00777693          	andi	a3,a4,7
    d974:	02068063          	beq	a3,zero,d994 <__divdf3+0x658>
    d978:	00f77693          	andi	a3,a4,15
    d97c:	00400593          	addi	a1,zero,4
    d980:	00b68a63          	beq	a3,a1,d994 <__divdf3+0x658>
    d984:	00470693          	addi	a3,a4,4
    d988:	00e6b733          	sltu	a4,a3,a4
    d98c:	00e787b3          	add	a5,a5,a4
    d990:	00068713          	addi	a4,a3,0
    d994:	00879693          	slli	a3,a5,0x8
    d998:	0606ca63          	blt	a3,zero,da0c <__divdf3+0x6d0>
    d99c:	01d79813          	slli	a6,a5,0x1d
    d9a0:	00375713          	srli	a4,a4,0x3
    d9a4:	00e86733          	or	a4,a6,a4
    d9a8:	0037d793          	srli	a5,a5,0x3
    d9ac:	00000693          	addi	a3,zero,0
    d9b0:	ecdff06f          	jal	zero,d87c <__divdf3+0x540>
    d9b4:	fe100713          	addi	a4,zero,-31
    d9b8:	40d70733          	sub	a4,a4,a3
    d9bc:	02000593          	addi	a1,zero,32
    d9c0:	00e8d733          	srl	a4,a7,a4
    d9c4:	00000693          	addi	a3,zero,0
    d9c8:	00b78663          	beq	a5,a1,d9d4 <__divdf3+0x698>
    d9cc:	43e50513          	addi	a0,a0,1086
    d9d0:	00a896b3          	sll	a3,a7,a0
    d9d4:	0106e6b3          	or	a3,a3,a6
    d9d8:	00d036b3          	sltu	a3,zero,a3
    d9dc:	00d76733          	or	a4,a4,a3
    d9e0:	00000793          	addi	a5,zero,0
    d9e4:	f8dff06f          	jal	zero,d970 <__divdf3+0x634>
    d9e8:	000807b7          	lui	a5,0x80
    d9ec:	00000713          	addi	a4,zero,0
    d9f0:	7ff00693          	addi	a3,zero,2047
    d9f4:	00000613          	addi	a2,zero,0
    d9f8:	e85ff06f          	jal	zero,d87c <__divdf3+0x540>
    d9fc:	00000793          	addi	a5,zero,0
    da00:	00000713          	addi	a4,zero,0
    da04:	7ff00693          	addi	a3,zero,2047
    da08:	e75ff06f          	jal	zero,d87c <__divdf3+0x540>
    da0c:	00000793          	addi	a5,zero,0
    da10:	00000713          	addi	a4,zero,0
    da14:	00100693          	addi	a3,zero,1
    da18:	e65ff06f          	jal	zero,d87c <__divdf3+0x540>
    da1c:	00068813          	addi	a6,a3,0
    da20:	00080693          	addi	a3,a6,0
    da24:	df9ff06f          	jal	zero,d81c <__divdf3+0x4e0>

0000da28 <__muldf3>:
    da28:	fd010113          	addi	sp,sp,-48
    da2c:	03212023          	sw	s2,32(sp)
    da30:	01512a23          	sw	s5,20(sp)
    da34:	00100937          	lui	s2,0x100
    da38:	0145da93          	srli	s5,a1,0x14
    da3c:	01312e23          	sw	s3,28(sp)
    da40:	01412c23          	sw	s4,24(sp)
    da44:	01612823          	sw	s6,16(sp)
    da48:	01712623          	sw	s7,12(sp)
    da4c:	fff90913          	addi	s2,s2,-1 # fffff <__preinit_array_end+0xecf9b>
    da50:	02112623          	sw	ra,44(sp)
    da54:	02812423          	sw	s0,40(sp)
    da58:	02912223          	sw	s1,36(sp)
    da5c:	7ffafa93          	andi	s5,s5,2047
    da60:	00050b13          	addi	s6,a0,0
    da64:	00060b93          	addi	s7,a2,0
    da68:	00068a13          	addi	s4,a3,0
    da6c:	00b97933          	and	s2,s2,a1
    da70:	01f5d993          	srli	s3,a1,0x1f
    da74:	0a0a8863          	beq	s5,zero,db24 <__muldf3+0xfc>
    da78:	7ff00793          	addi	a5,zero,2047
    da7c:	10fa8663          	beq	s5,a5,db88 <__muldf3+0x160>
    da80:	01d55413          	srli	s0,a0,0x1d
    da84:	00391913          	slli	s2,s2,0x3
    da88:	01246933          	or	s2,s0,s2
    da8c:	00800437          	lui	s0,0x800
    da90:	00896433          	or	s0,s2,s0
    da94:	00351493          	slli	s1,a0,0x3
    da98:	c01a8a93          	addi	s5,s5,-1023
    da9c:	00000b13          	addi	s6,zero,0
    daa0:	014a5513          	srli	a0,s4,0x14
    daa4:	00100937          	lui	s2,0x100
    daa8:	fff90913          	addi	s2,s2,-1 # fffff <__preinit_array_end+0xecf9b>
    daac:	7ff57513          	andi	a0,a0,2047
    dab0:	01497933          	and	s2,s2,s4
    dab4:	000b8713          	addi	a4,s7,0
    dab8:	01fa5a13          	srli	s4,s4,0x1f
    dabc:	10050463          	beq	a0,zero,dbc4 <__muldf3+0x19c>
    dac0:	7ff00793          	addi	a5,zero,2047
    dac4:	16f50463          	beq	a0,a5,dc2c <__muldf3+0x204>
    dac8:	01dbd793          	srli	a5,s7,0x1d
    dacc:	00391913          	slli	s2,s2,0x3
    dad0:	0127e933          	or	s2,a5,s2
    dad4:	008007b7          	lui	a5,0x800
    dad8:	00f967b3          	or	a5,s2,a5
    dadc:	003b9713          	slli	a4,s7,0x3
    dae0:	c0150513          	addi	a0,a0,-1023
    dae4:	00000693          	addi	a3,zero,0
    dae8:	002b1593          	slli	a1,s6,0x2
    daec:	00d5e5b3          	or	a1,a1,a3
    daf0:	00aa8533          	add	a0,s5,a0
    daf4:	fff58593          	addi	a1,a1,-1
    daf8:	00e00893          	addi	a7,zero,14
    dafc:	0149c633          	xor	a2,s3,s4
    db00:	00150813          	addi	a6,a0,1
    db04:	16b8e063          	bltu	a7,a1,dc64 <__muldf3+0x23c>
    db08:	00004517          	auipc	a0,0x4
    db0c:	3e450513          	addi	a0,a0,996 # 11eec <zeroes.4476+0x4c>
    db10:	00259593          	slli	a1,a1,0x2
    db14:	00a585b3          	add	a1,a1,a0
    db18:	0005a583          	lw	a1,0(a1)
    db1c:	00a585b3          	add	a1,a1,a0
    db20:	00058067          	jalr	zero,0(a1)
    db24:	00a96433          	or	s0,s2,a0
    db28:	06040e63          	beq	s0,zero,dba4 <__muldf3+0x17c>
    db2c:	04090063          	beq	s2,zero,db6c <__muldf3+0x144>
    db30:	00090513          	addi	a0,s2,0
    db34:	5ac030ef          	jal	ra,110e0 <__clzsi2>
    db38:	ff550793          	addi	a5,a0,-11
    db3c:	01c00713          	addi	a4,zero,28
    db40:	02f74c63          	blt	a4,a5,db78 <__muldf3+0x150>
    db44:	01d00413          	addi	s0,zero,29
    db48:	ff850493          	addi	s1,a0,-8
    db4c:	40f40433          	sub	s0,s0,a5
    db50:	00991933          	sll	s2,s2,s1
    db54:	008b5433          	srl	s0,s6,s0
    db58:	01246433          	or	s0,s0,s2
    db5c:	009b14b3          	sll	s1,s6,s1
    db60:	c0d00a93          	addi	s5,zero,-1011
    db64:	40aa8ab3          	sub	s5,s5,a0
    db68:	f35ff06f          	jal	zero,da9c <__muldf3+0x74>
    db6c:	574030ef          	jal	ra,110e0 <__clzsi2>
    db70:	02050513          	addi	a0,a0,32
    db74:	fc5ff06f          	jal	zero,db38 <__muldf3+0x110>
    db78:	fd850413          	addi	s0,a0,-40
    db7c:	008b1433          	sll	s0,s6,s0
    db80:	00000493          	addi	s1,zero,0
    db84:	fddff06f          	jal	zero,db60 <__muldf3+0x138>
    db88:	00a96433          	or	s0,s2,a0
    db8c:	02040463          	beq	s0,zero,dbb4 <__muldf3+0x18c>
    db90:	00050493          	addi	s1,a0,0
    db94:	00090413          	addi	s0,s2,0
    db98:	7ff00a93          	addi	s5,zero,2047
    db9c:	00300b13          	addi	s6,zero,3
    dba0:	f01ff06f          	jal	zero,daa0 <__muldf3+0x78>
    dba4:	00000493          	addi	s1,zero,0
    dba8:	00000a93          	addi	s5,zero,0
    dbac:	00100b13          	addi	s6,zero,1
    dbb0:	ef1ff06f          	jal	zero,daa0 <__muldf3+0x78>
    dbb4:	00000493          	addi	s1,zero,0
    dbb8:	7ff00a93          	addi	s5,zero,2047
    dbbc:	00200b13          	addi	s6,zero,2
    dbc0:	ee1ff06f          	jal	zero,daa0 <__muldf3+0x78>
    dbc4:	017967b3          	or	a5,s2,s7
    dbc8:	06078e63          	beq	a5,zero,dc44 <__muldf3+0x21c>
    dbcc:	04090063          	beq	s2,zero,dc0c <__muldf3+0x1e4>
    dbd0:	00090513          	addi	a0,s2,0
    dbd4:	50c030ef          	jal	ra,110e0 <__clzsi2>
    dbd8:	ff550693          	addi	a3,a0,-11
    dbdc:	01c00793          	addi	a5,zero,28
    dbe0:	02d7ce63          	blt	a5,a3,dc1c <__muldf3+0x1f4>
    dbe4:	01d00793          	addi	a5,zero,29
    dbe8:	ff850713          	addi	a4,a0,-8
    dbec:	40d787b3          	sub	a5,a5,a3
    dbf0:	00e91933          	sll	s2,s2,a4
    dbf4:	00fbd7b3          	srl	a5,s7,a5
    dbf8:	0127e7b3          	or	a5,a5,s2
    dbfc:	00eb9733          	sll	a4,s7,a4
    dc00:	c0d00693          	addi	a3,zero,-1011
    dc04:	40a68533          	sub	a0,a3,a0
    dc08:	eddff06f          	jal	zero,dae4 <__muldf3+0xbc>
    dc0c:	000b8513          	addi	a0,s7,0
    dc10:	4d0030ef          	jal	ra,110e0 <__clzsi2>
    dc14:	02050513          	addi	a0,a0,32
    dc18:	fc1ff06f          	jal	zero,dbd8 <__muldf3+0x1b0>
    dc1c:	fd850793          	addi	a5,a0,-40
    dc20:	00fb97b3          	sll	a5,s7,a5
    dc24:	00000713          	addi	a4,zero,0
    dc28:	fd9ff06f          	jal	zero,dc00 <__muldf3+0x1d8>
    dc2c:	017967b3          	or	a5,s2,s7
    dc30:	02078263          	beq	a5,zero,dc54 <__muldf3+0x22c>
    dc34:	00090793          	addi	a5,s2,0
    dc38:	7ff00513          	addi	a0,zero,2047
    dc3c:	00300693          	addi	a3,zero,3
    dc40:	ea9ff06f          	jal	zero,dae8 <__muldf3+0xc0>
    dc44:	00000713          	addi	a4,zero,0
    dc48:	00000513          	addi	a0,zero,0
    dc4c:	00100693          	addi	a3,zero,1
    dc50:	e99ff06f          	jal	zero,dae8 <__muldf3+0xc0>
    dc54:	00000713          	addi	a4,zero,0
    dc58:	7ff00513          	addi	a0,zero,2047
    dc5c:	00200693          	addi	a3,zero,2
    dc60:	e89ff06f          	jal	zero,dae8 <__muldf3+0xc0>
    dc64:	00010f37          	lui	t5,0x10
    dc68:	ffff0393          	addi	t2,t5,-1 # ffff <__subtf3+0xc8b>
    dc6c:	0104d693          	srli	a3,s1,0x10
    dc70:	01075e13          	srli	t3,a4,0x10
    dc74:	0074f4b3          	and	s1,s1,t2
    dc78:	00777733          	and	a4,a4,t2
    dc7c:	029e0333          	mul	t1,t3,s1
    dc80:	029705b3          	mul	a1,a4,s1
    dc84:	02e68fb3          	mul	t6,a3,a4
    dc88:	01f30eb3          	add	t4,t1,t6
    dc8c:	0105d313          	srli	t1,a1,0x10
    dc90:	01d30333          	add	t1,t1,t4
    dc94:	03c688b3          	mul	a7,a3,t3
    dc98:	01f37463          	bgeu	t1,t6,dca0 <__muldf3+0x278>
    dc9c:	01e888b3          	add	a7,a7,t5
    dca0:	01035913          	srli	s2,t1,0x10
    dca4:	00737333          	and	t1,t1,t2
    dca8:	0075f5b3          	and	a1,a1,t2
    dcac:	0107df93          	srli	t6,a5,0x10
    dcb0:	0077f3b3          	and	t2,a5,t2
    dcb4:	01031313          	slli	t1,t1,0x10
    dcb8:	00b30333          	add	t1,t1,a1
    dcbc:	027687b3          	mul	a5,a3,t2
    dcc0:	029385b3          	mul	a1,t2,s1
    dcc4:	029f84b3          	mul	s1,t6,s1
    dcc8:	00f48eb3          	add	t4,s1,a5
    dccc:	0105d493          	srli	s1,a1,0x10
    dcd0:	01d484b3          	add	s1,s1,t4
    dcd4:	03f686b3          	mul	a3,a3,t6
    dcd8:	00f4f663          	bgeu	s1,a5,dce4 <__muldf3+0x2bc>
    dcdc:	000107b7          	lui	a5,0x10
    dce0:	00f686b3          	add	a3,a3,a5
    dce4:	0104df13          	srli	t5,s1,0x10
    dce8:	000109b7          	lui	s3,0x10
    dcec:	00df0f33          	add	t5,t5,a3
    dcf0:	fff98693          	addi	a3,s3,-1 # ffff <__subtf3+0xc8b>
    dcf4:	00d4f4b3          	and	s1,s1,a3
    dcf8:	00d5f5b3          	and	a1,a1,a3
    dcfc:	01045793          	srli	a5,s0,0x10
    dd00:	01049493          	slli	s1,s1,0x10
    dd04:	00d47433          	and	s0,s0,a3
    dd08:	00b484b3          	add	s1,s1,a1
    dd0c:	028706b3          	mul	a3,a4,s0
    dd10:	00990933          	add	s2,s2,s1
    dd14:	02e78eb3          	mul	t4,a5,a4
    dd18:	028e05b3          	mul	a1,t3,s0
    dd1c:	02fe0733          	mul	a4,t3,a5
    dd20:	01d58e33          	add	t3,a1,t4
    dd24:	0106d593          	srli	a1,a3,0x10
    dd28:	01c585b3          	add	a1,a1,t3
    dd2c:	01d5f463          	bgeu	a1,t4,dd34 <__muldf3+0x30c>
    dd30:	01370733          	add	a4,a4,s3
    dd34:	0105de13          	srli	t3,a1,0x10
    dd38:	000109b7          	lui	s3,0x10
    dd3c:	00ee02b3          	add	t0,t3,a4
    dd40:	fff98713          	addi	a4,s3,-1 # ffff <__subtf3+0xc8b>
    dd44:	00e5f5b3          	and	a1,a1,a4
    dd48:	00e6f6b3          	and	a3,a3,a4
    dd4c:	02838e33          	mul	t3,t2,s0
    dd50:	01059593          	slli	a1,a1,0x10
    dd54:	00d585b3          	add	a1,a1,a3
    dd58:	02778733          	mul	a4,a5,t2
    dd5c:	028f8433          	mul	s0,t6,s0
    dd60:	02ff8eb3          	mul	t4,t6,a5
    dd64:	00e40433          	add	s0,s0,a4
    dd68:	010e5793          	srli	a5,t3,0x10
    dd6c:	00878433          	add	s0,a5,s0
    dd70:	00e47463          	bgeu	s0,a4,dd78 <__muldf3+0x350>
    dd74:	013e8eb3          	add	t4,t4,s3
    dd78:	000107b7          	lui	a5,0x10
    dd7c:	fff78793          	addi	a5,a5,-1 # ffff <__subtf3+0xc8b>
    dd80:	00f476b3          	and	a3,s0,a5
    dd84:	00fe7e33          	and	t3,t3,a5
    dd88:	01069693          	slli	a3,a3,0x10
    dd8c:	012888b3          	add	a7,a7,s2
    dd90:	01c686b3          	add	a3,a3,t3
    dd94:	0098b4b3          	sltu	s1,a7,s1
    dd98:	01e686b3          	add	a3,a3,t5
    dd9c:	009687b3          	add	a5,a3,s1
    dda0:	00b888b3          	add	a7,a7,a1
    dda4:	00b8b5b3          	sltu	a1,a7,a1
    dda8:	00578e33          	add	t3,a5,t0
    ddac:	00be0fb3          	add	t6,t3,a1
    ddb0:	01e6b6b3          	sltu	a3,a3,t5
    ddb4:	0097b7b3          	sltu	a5,a5,s1
    ddb8:	00f6e7b3          	or	a5,a3,a5
    ddbc:	01045413          	srli	s0,s0,0x10
    ddc0:	005e3e33          	sltu	t3,t3,t0
    ddc4:	00bfb5b3          	sltu	a1,t6,a1
    ddc8:	008787b3          	add	a5,a5,s0
    ddcc:	00be65b3          	or	a1,t3,a1
    ddd0:	00b787b3          	add	a5,a5,a1
    ddd4:	01d787b3          	add	a5,a5,t4
    ddd8:	017fd713          	srli	a4,t6,0x17
    dddc:	00979793          	slli	a5,a5,0x9
    dde0:	00e7e7b3          	or	a5,a5,a4
    dde4:	00989713          	slli	a4,a7,0x9
    dde8:	00676733          	or	a4,a4,t1
    ddec:	00e03733          	sltu	a4,zero,a4
    ddf0:	0178d893          	srli	a7,a7,0x17
    ddf4:	009f9693          	slli	a3,t6,0x9
    ddf8:	01176733          	or	a4,a4,a7
    ddfc:	00d76733          	or	a4,a4,a3
    de00:	00779693          	slli	a3,a5,0x7
    de04:	1006da63          	bge	a3,zero,df18 <__muldf3+0x4f0>
    de08:	00175693          	srli	a3,a4,0x1
    de0c:	00177713          	andi	a4,a4,1
    de10:	00e6e733          	or	a4,a3,a4
    de14:	01f79693          	slli	a3,a5,0x1f
    de18:	00d76733          	or	a4,a4,a3
    de1c:	0017d793          	srli	a5,a5,0x1
    de20:	3ff80593          	addi	a1,a6,1023
    de24:	0eb05e63          	bge	zero,a1,df20 <__muldf3+0x4f8>
    de28:	00777693          	andi	a3,a4,7
    de2c:	02068063          	beq	a3,zero,de4c <__muldf3+0x424>
    de30:	00f77693          	andi	a3,a4,15
    de34:	00400513          	addi	a0,zero,4
    de38:	00a68a63          	beq	a3,a0,de4c <__muldf3+0x424>
    de3c:	00470693          	addi	a3,a4,4
    de40:	00e6b733          	sltu	a4,a3,a4
    de44:	00e787b3          	add	a5,a5,a4
    de48:	00068713          	addi	a4,a3,0
    de4c:	00779693          	slli	a3,a5,0x7
    de50:	0006da63          	bge	a3,zero,de64 <__muldf3+0x43c>
    de54:	ff0006b7          	lui	a3,0xff000
    de58:	fff68693          	addi	a3,a3,-1 # feffffff <__heap_top+0xfeefffff>
    de5c:	00d7f7b3          	and	a5,a5,a3
    de60:	40080593          	addi	a1,a6,1024
    de64:	7fe00693          	addi	a3,zero,2046
    de68:	16b6ce63          	blt	a3,a1,dfe4 <__muldf3+0x5bc>
    de6c:	00375693          	srli	a3,a4,0x3
    de70:	01d79713          	slli	a4,a5,0x1d
    de74:	00d76733          	or	a4,a4,a3
    de78:	0037d793          	srli	a5,a5,0x3
    de7c:	001006b7          	lui	a3,0x100
    de80:	fff68693          	addi	a3,a3,-1 # fffff <__preinit_array_end+0xecf9b>
    de84:	00d7f7b3          	and	a5,a5,a3
    de88:	7ff5f693          	andi	a3,a1,2047
    de8c:	801005b7          	lui	a1,0x80100
    de90:	fff58593          	addi	a1,a1,-1 # 800fffff <__heap_top+0x7fffffff>
    de94:	01469693          	slli	a3,a3,0x14
    de98:	00b7f7b3          	and	a5,a5,a1
    de9c:	02c12083          	lw	ra,44(sp)
    dea0:	02812403          	lw	s0,40(sp)
    dea4:	01f61613          	slli	a2,a2,0x1f
    dea8:	00d7e7b3          	or	a5,a5,a3
    deac:	00c7e6b3          	or	a3,a5,a2
    deb0:	02412483          	lw	s1,36(sp)
    deb4:	02012903          	lw	s2,32(sp)
    deb8:	01c12983          	lw	s3,28(sp)
    debc:	01812a03          	lw	s4,24(sp)
    dec0:	01412a83          	lw	s5,20(sp)
    dec4:	01012b03          	lw	s6,16(sp)
    dec8:	00c12b83          	lw	s7,12(sp)
    decc:	00070513          	addi	a0,a4,0
    ded0:	00068593          	addi	a1,a3,0
    ded4:	03010113          	addi	sp,sp,48
    ded8:	00008067          	jalr	zero,0(ra)
    dedc:	00098613          	addi	a2,s3,0
    dee0:	00040793          	addi	a5,s0,0 # 800000 <__heap_top+0x700000>
    dee4:	00048713          	addi	a4,s1,0
    dee8:	000b0693          	addi	a3,s6,0
    deec:	00200593          	addi	a1,zero,2
    def0:	0eb68a63          	beq	a3,a1,dfe4 <__muldf3+0x5bc>
    def4:	00300593          	addi	a1,zero,3
    def8:	0cb68c63          	beq	a3,a1,dfd0 <__muldf3+0x5a8>
    defc:	00100593          	addi	a1,zero,1
    df00:	f2b690e3          	bne	a3,a1,de20 <__muldf3+0x3f8>
    df04:	00000793          	addi	a5,zero,0
    df08:	00000713          	addi	a4,zero,0
    df0c:	0880006f          	jal	zero,df94 <__muldf3+0x56c>
    df10:	000a0613          	addi	a2,s4,0
    df14:	fd9ff06f          	jal	zero,deec <__muldf3+0x4c4>
    df18:	00050813          	addi	a6,a0,0
    df1c:	f05ff06f          	jal	zero,de20 <__muldf3+0x3f8>
    df20:	00100513          	addi	a0,zero,1
    df24:	40b50533          	sub	a0,a0,a1
    df28:	03800693          	addi	a3,zero,56
    df2c:	fca6cce3          	blt	a3,a0,df04 <__muldf3+0x4dc>
    df30:	01f00693          	addi	a3,zero,31
    df34:	06a6c463          	blt	a3,a0,df9c <__muldf3+0x574>
    df38:	41e80813          	addi	a6,a6,1054
    df3c:	010796b3          	sll	a3,a5,a6
    df40:	00a755b3          	srl	a1,a4,a0
    df44:	01071733          	sll	a4,a4,a6
    df48:	00b6e6b3          	or	a3,a3,a1
    df4c:	00e03733          	sltu	a4,zero,a4
    df50:	00e6e733          	or	a4,a3,a4
    df54:	00a7d7b3          	srl	a5,a5,a0
    df58:	00777693          	andi	a3,a4,7
    df5c:	02068063          	beq	a3,zero,df7c <__muldf3+0x554>
    df60:	00f77693          	andi	a3,a4,15
    df64:	00400593          	addi	a1,zero,4
    df68:	00b68a63          	beq	a3,a1,df7c <__muldf3+0x554>
    df6c:	00470693          	addi	a3,a4,4
    df70:	00e6b733          	sltu	a4,a3,a4
    df74:	00e787b3          	add	a5,a5,a4
    df78:	00068713          	addi	a4,a3,0
    df7c:	00879693          	slli	a3,a5,0x8
    df80:	0606ca63          	blt	a3,zero,dff4 <__muldf3+0x5cc>
    df84:	01d79693          	slli	a3,a5,0x1d
    df88:	00375713          	srli	a4,a4,0x3
    df8c:	00e6e733          	or	a4,a3,a4
    df90:	0037d793          	srli	a5,a5,0x3
    df94:	00000593          	addi	a1,zero,0
    df98:	ee5ff06f          	jal	zero,de7c <__muldf3+0x454>
    df9c:	fe100693          	addi	a3,zero,-31
    dfa0:	40b686b3          	sub	a3,a3,a1
    dfa4:	02000893          	addi	a7,zero,32
    dfa8:	00d7d6b3          	srl	a3,a5,a3
    dfac:	00000593          	addi	a1,zero,0
    dfb0:	01150663          	beq	a0,a7,dfbc <__muldf3+0x594>
    dfb4:	43e80813          	addi	a6,a6,1086
    dfb8:	010795b3          	sll	a1,a5,a6
    dfbc:	00e5e733          	or	a4,a1,a4
    dfc0:	00e03733          	sltu	a4,zero,a4
    dfc4:	00e6e733          	or	a4,a3,a4
    dfc8:	00000793          	addi	a5,zero,0
    dfcc:	f8dff06f          	jal	zero,df58 <__muldf3+0x530>
    dfd0:	000807b7          	lui	a5,0x80
    dfd4:	00000713          	addi	a4,zero,0
    dfd8:	7ff00593          	addi	a1,zero,2047
    dfdc:	00000613          	addi	a2,zero,0
    dfe0:	e9dff06f          	jal	zero,de7c <__muldf3+0x454>
    dfe4:	00000793          	addi	a5,zero,0
    dfe8:	00000713          	addi	a4,zero,0
    dfec:	7ff00593          	addi	a1,zero,2047
    dff0:	e8dff06f          	jal	zero,de7c <__muldf3+0x454>
    dff4:	00000793          	addi	a5,zero,0
    dff8:	00000713          	addi	a4,zero,0
    dffc:	00100593          	addi	a1,zero,1
    e000:	e7dff06f          	jal	zero,de7c <__muldf3+0x454>

0000e004 <__eqtf2>:
    e004:	00c52783          	lw	a5,12(a0)
    e008:	0005af03          	lw	t5,0(a1)
    e00c:	0045af83          	lw	t6,4(a1)
    e010:	0085a283          	lw	t0,8(a1)
    e014:	00c5a583          	lw	a1,12(a1)
    e018:	00008737          	lui	a4,0x8
    e01c:	0107d693          	srli	a3,a5,0x10
    e020:	fff70713          	addi	a4,a4,-1 # 7fff <sprintf+0x13>
    e024:	01079813          	slli	a6,a5,0x10
    e028:	01059e93          	slli	t4,a1,0x10
    e02c:	01f7d613          	srli	a2,a5,0x1f
    e030:	00e6f6b3          	and	a3,a3,a4
    e034:	0105d793          	srli	a5,a1,0x10
    e038:	ff010113          	addi	sp,sp,-16
    e03c:	00052883          	lw	a7,0(a0)
    e040:	00452303          	lw	t1,4(a0)
    e044:	00852e03          	lw	t3,8(a0)
    e048:	01085813          	srli	a6,a6,0x10
    e04c:	010ede93          	srli	t4,t4,0x10
    e050:	00e7f7b3          	and	a5,a5,a4
    e054:	01f5d593          	srli	a1,a1,0x1f
    e058:	02e69063          	bne	a3,a4,e078 <__eqtf2+0x74>
    e05c:	0068e733          	or	a4,a7,t1
    e060:	01c76733          	or	a4,a4,t3
    e064:	01076733          	or	a4,a4,a6
    e068:	00100513          	addi	a0,zero,1
    e06c:	04071a63          	bne	a4,zero,e0c0 <__eqtf2+0xbc>
    e070:	04d79863          	bne	a5,a3,e0c0 <__eqtf2+0xbc>
    e074:	0080006f          	jal	zero,e07c <__eqtf2+0x78>
    e078:	00e79c63          	bne	a5,a4,e090 <__eqtf2+0x8c>
    e07c:	01ff6733          	or	a4,t5,t6
    e080:	00576733          	or	a4,a4,t0
    e084:	01d76733          	or	a4,a4,t4
    e088:	00100513          	addi	a0,zero,1
    e08c:	02071a63          	bne	a4,zero,e0c0 <__eqtf2+0xbc>
    e090:	00100513          	addi	a0,zero,1
    e094:	02d79663          	bne	a5,a3,e0c0 <__eqtf2+0xbc>
    e098:	03e89463          	bne	a7,t5,e0c0 <__eqtf2+0xbc>
    e09c:	03f31263          	bne	t1,t6,e0c0 <__eqtf2+0xbc>
    e0a0:	025e1063          	bne	t3,t0,e0c0 <__eqtf2+0xbc>
    e0a4:	01d81e63          	bne	a6,t4,e0c0 <__eqtf2+0xbc>
    e0a8:	02b60063          	beq	a2,a1,e0c8 <__eqtf2+0xc4>
    e0ac:	00079a63          	bne	a5,zero,e0c0 <__eqtf2+0xbc>
    e0b0:	0068e533          	or	a0,a7,t1
    e0b4:	01c56533          	or	a0,a0,t3
    e0b8:	01056533          	or	a0,a0,a6
    e0bc:	00a03533          	sltu	a0,zero,a0
    e0c0:	01010113          	addi	sp,sp,16
    e0c4:	00008067          	jalr	zero,0(ra)
    e0c8:	00000513          	addi	a0,zero,0
    e0cc:	ff5ff06f          	jal	zero,e0c0 <__eqtf2+0xbc>

0000e0d0 <__getf2>:
    e0d0:	00c52783          	lw	a5,12(a0)
    e0d4:	00c5a603          	lw	a2,12(a1)
    e0d8:	0005a283          	lw	t0,0(a1)
    e0dc:	0045a883          	lw	a7,4(a1)
    e0e0:	0085af03          	lw	t5,8(a1)
    e0e4:	000085b7          	lui	a1,0x8
    e0e8:	0107d693          	srli	a3,a5,0x10
    e0ec:	fff58593          	addi	a1,a1,-1 # 7fff <sprintf+0x13>
    e0f0:	01079313          	slli	t1,a5,0x10
    e0f4:	01061e13          	slli	t3,a2,0x10
    e0f8:	01065713          	srli	a4,a2,0x10
    e0fc:	00b6f6b3          	and	a3,a3,a1
    e100:	ff010113          	addi	sp,sp,-16
    e104:	00052f83          	lw	t6,0(a0)
    e108:	00452803          	lw	a6,4(a0)
    e10c:	00852e83          	lw	t4,8(a0)
    e110:	01035313          	srli	t1,t1,0x10
    e114:	01f7d793          	srli	a5,a5,0x1f
    e118:	010e5e13          	srli	t3,t3,0x10
    e11c:	00b77733          	and	a4,a4,a1
    e120:	01f65613          	srli	a2,a2,0x1f
    e124:	02b69063          	bne	a3,a1,e144 <__getf2+0x74>
    e128:	01f865b3          	or	a1,a6,t6
    e12c:	01d5e5b3          	or	a1,a1,t4
    e130:	0065e5b3          	or	a1,a1,t1
    e134:	ffe00513          	addi	a0,zero,-2
    e138:	0c058863          	beq	a1,zero,e208 <__getf2+0x138>
    e13c:	01010113          	addi	sp,sp,16
    e140:	00008067          	jalr	zero,0(ra)
    e144:	00b71c63          	bne	a4,a1,e15c <__getf2+0x8c>
    e148:	0058e5b3          	or	a1,a7,t0
    e14c:	01e5e5b3          	or	a1,a1,t5
    e150:	01c5e5b3          	or	a1,a1,t3
    e154:	ffe00513          	addi	a0,zero,-2
    e158:	fe0592e3          	bne	a1,zero,e13c <__getf2+0x6c>
    e15c:	0a069863          	bne	a3,zero,e20c <__getf2+0x13c>
    e160:	01f86533          	or	a0,a6,t6
    e164:	01d56533          	or	a0,a0,t4
    e168:	00656533          	or	a0,a0,t1
    e16c:	00153513          	sltiu	a0,a0,1
    e170:	00071a63          	bne	a4,zero,e184 <__getf2+0xb4>
    e174:	0058e5b3          	or	a1,a7,t0
    e178:	01e5e5b3          	or	a1,a1,t5
    e17c:	01c5e5b3          	or	a1,a1,t3
    e180:	06058663          	beq	a1,zero,e1ec <__getf2+0x11c>
    e184:	00051a63          	bne	a0,zero,e198 <__getf2+0xc8>
    e188:	00c78e63          	beq	a5,a2,e1a4 <__getf2+0xd4>
    e18c:	00100513          	addi	a0,zero,1
    e190:	fa0786e3          	beq	a5,zero,e13c <__getf2+0x6c>
    e194:	0080006f          	jal	zero,e19c <__getf2+0xcc>
    e198:	fa0612e3          	bne	a2,zero,e13c <__getf2+0x6c>
    e19c:	fff00513          	addi	a0,zero,-1
    e1a0:	f9dff06f          	jal	zero,e13c <__getf2+0x6c>
    e1a4:	fed744e3          	blt	a4,a3,e18c <__getf2+0xbc>
    e1a8:	00e6da63          	bge	a3,a4,e1bc <__getf2+0xec>
    e1ac:	fff00513          	addi	a0,zero,-1
    e1b0:	f80786e3          	beq	a5,zero,e13c <__getf2+0x6c>
    e1b4:	00100513          	addi	a0,zero,1
    e1b8:	f85ff06f          	jal	zero,e13c <__getf2+0x6c>
    e1bc:	fc6e68e3          	bltu	t3,t1,e18c <__getf2+0xbc>
    e1c0:	03c31c63          	bne	t1,t3,e1f8 <__getf2+0x128>
    e1c4:	fddf64e3          	bltu	t5,t4,e18c <__getf2+0xbc>
    e1c8:	03df1c63          	bne	t5,t4,e200 <__getf2+0x130>
    e1cc:	fd08e0e3          	bltu	a7,a6,e18c <__getf2+0xbc>
    e1d0:	01089463          	bne	a7,a6,e1d8 <__getf2+0x108>
    e1d4:	fbf2ece3          	bltu	t0,t6,e18c <__getf2+0xbc>
    e1d8:	fd186ae3          	bltu	a6,a7,e1ac <__getf2+0xdc>
    e1dc:	00000513          	addi	a0,zero,0
    e1e0:	f5089ee3          	bne	a7,a6,e13c <__getf2+0x6c>
    e1e4:	f45ffce3          	bgeu	t6,t0,e13c <__getf2+0x6c>
    e1e8:	fc5ff06f          	jal	zero,e1ac <__getf2+0xdc>
    e1ec:	fa0500e3          	beq	a0,zero,e18c <__getf2+0xbc>
    e1f0:	00000513          	addi	a0,zero,0
    e1f4:	f49ff06f          	jal	zero,e13c <__getf2+0x6c>
    e1f8:	fbc36ae3          	bltu	t1,t3,e1ac <__getf2+0xdc>
    e1fc:	ff5ff06f          	jal	zero,e1f0 <__getf2+0x120>
    e200:	fbeee6e3          	bltu	t4,t5,e1ac <__getf2+0xdc>
    e204:	fedff06f          	jal	zero,e1f0 <__getf2+0x120>
    e208:	f4d700e3          	beq	a4,a3,e148 <__getf2+0x78>
    e20c:	f6071ee3          	bne	a4,zero,e188 <__getf2+0xb8>
    e210:	00000513          	addi	a0,zero,0
    e214:	f61ff06f          	jal	zero,e174 <__getf2+0xa4>

0000e218 <__letf2>:
    e218:	00c52783          	lw	a5,12(a0)
    e21c:	00c5a603          	lw	a2,12(a1)
    e220:	0005a283          	lw	t0,0(a1)
    e224:	0045a883          	lw	a7,4(a1)
    e228:	0085af03          	lw	t5,8(a1)
    e22c:	000085b7          	lui	a1,0x8
    e230:	0107d693          	srli	a3,a5,0x10
    e234:	fff58593          	addi	a1,a1,-1 # 7fff <sprintf+0x13>
    e238:	01079313          	slli	t1,a5,0x10
    e23c:	01061e13          	slli	t3,a2,0x10
    e240:	01065713          	srli	a4,a2,0x10
    e244:	00b6f6b3          	and	a3,a3,a1
    e248:	ff010113          	addi	sp,sp,-16
    e24c:	00052f83          	lw	t6,0(a0)
    e250:	00452803          	lw	a6,4(a0)
    e254:	00852e83          	lw	t4,8(a0)
    e258:	01035313          	srli	t1,t1,0x10
    e25c:	01f7d793          	srli	a5,a5,0x1f
    e260:	010e5e13          	srli	t3,t3,0x10
    e264:	00b77733          	and	a4,a4,a1
    e268:	01f65613          	srli	a2,a2,0x1f
    e26c:	02b69063          	bne	a3,a1,e28c <__letf2+0x74>
    e270:	01f865b3          	or	a1,a6,t6
    e274:	01d5e5b3          	or	a1,a1,t4
    e278:	0065e5b3          	or	a1,a1,t1
    e27c:	00200513          	addi	a0,zero,2
    e280:	0c058863          	beq	a1,zero,e350 <__letf2+0x138>
    e284:	01010113          	addi	sp,sp,16
    e288:	00008067          	jalr	zero,0(ra)
    e28c:	00b71c63          	bne	a4,a1,e2a4 <__letf2+0x8c>
    e290:	0058e5b3          	or	a1,a7,t0
    e294:	01e5e5b3          	or	a1,a1,t5
    e298:	01c5e5b3          	or	a1,a1,t3
    e29c:	00200513          	addi	a0,zero,2
    e2a0:	fe0592e3          	bne	a1,zero,e284 <__letf2+0x6c>
    e2a4:	0a069863          	bne	a3,zero,e354 <__letf2+0x13c>
    e2a8:	01f86533          	or	a0,a6,t6
    e2ac:	01d56533          	or	a0,a0,t4
    e2b0:	00656533          	or	a0,a0,t1
    e2b4:	00153513          	sltiu	a0,a0,1
    e2b8:	00071a63          	bne	a4,zero,e2cc <__letf2+0xb4>
    e2bc:	0058e5b3          	or	a1,a7,t0
    e2c0:	01e5e5b3          	or	a1,a1,t5
    e2c4:	01c5e5b3          	or	a1,a1,t3
    e2c8:	06058663          	beq	a1,zero,e334 <__letf2+0x11c>
    e2cc:	00051a63          	bne	a0,zero,e2e0 <__letf2+0xc8>
    e2d0:	00c78e63          	beq	a5,a2,e2ec <__letf2+0xd4>
    e2d4:	00100513          	addi	a0,zero,1
    e2d8:	fa0786e3          	beq	a5,zero,e284 <__letf2+0x6c>
    e2dc:	0080006f          	jal	zero,e2e4 <__letf2+0xcc>
    e2e0:	fa0612e3          	bne	a2,zero,e284 <__letf2+0x6c>
    e2e4:	fff00513          	addi	a0,zero,-1
    e2e8:	f9dff06f          	jal	zero,e284 <__letf2+0x6c>
    e2ec:	fed744e3          	blt	a4,a3,e2d4 <__letf2+0xbc>
    e2f0:	00e6da63          	bge	a3,a4,e304 <__letf2+0xec>
    e2f4:	fff00513          	addi	a0,zero,-1
    e2f8:	f80786e3          	beq	a5,zero,e284 <__letf2+0x6c>
    e2fc:	00100513          	addi	a0,zero,1
    e300:	f85ff06f          	jal	zero,e284 <__letf2+0x6c>
    e304:	fc6e68e3          	bltu	t3,t1,e2d4 <__letf2+0xbc>
    e308:	03c31c63          	bne	t1,t3,e340 <__letf2+0x128>
    e30c:	fddf64e3          	bltu	t5,t4,e2d4 <__letf2+0xbc>
    e310:	03df1c63          	bne	t5,t4,e348 <__letf2+0x130>
    e314:	fd08e0e3          	bltu	a7,a6,e2d4 <__letf2+0xbc>
    e318:	01089463          	bne	a7,a6,e320 <__letf2+0x108>
    e31c:	fbf2ece3          	bltu	t0,t6,e2d4 <__letf2+0xbc>
    e320:	fd186ae3          	bltu	a6,a7,e2f4 <__letf2+0xdc>
    e324:	00000513          	addi	a0,zero,0
    e328:	f5089ee3          	bne	a7,a6,e284 <__letf2+0x6c>
    e32c:	f45ffce3          	bgeu	t6,t0,e284 <__letf2+0x6c>
    e330:	fc5ff06f          	jal	zero,e2f4 <__letf2+0xdc>
    e334:	fa0500e3          	beq	a0,zero,e2d4 <__letf2+0xbc>
    e338:	00000513          	addi	a0,zero,0
    e33c:	f49ff06f          	jal	zero,e284 <__letf2+0x6c>
    e340:	fbc36ae3          	bltu	t1,t3,e2f4 <__letf2+0xdc>
    e344:	ff5ff06f          	jal	zero,e338 <__letf2+0x120>
    e348:	fbeee6e3          	bltu	t4,t5,e2f4 <__letf2+0xdc>
    e34c:	fedff06f          	jal	zero,e338 <__letf2+0x120>
    e350:	f4d700e3          	beq	a4,a3,e290 <__letf2+0x78>
    e354:	f6071ee3          	bne	a4,zero,e2d0 <__letf2+0xb8>
    e358:	00000513          	addi	a0,zero,0
    e35c:	f61ff06f          	jal	zero,e2bc <__letf2+0xa4>

0000e360 <__multf3>:
    e360:	f4010113          	addi	sp,sp,-192
    e364:	0b312623          	sw	s3,172(sp)
    e368:	00c5a983          	lw	s3,12(a1)
    e36c:	0005a683          	lw	a3,0(a1)
    e370:	0045a783          	lw	a5,4(a1)
    e374:	00a12623          	sw	a0,12(sp)
    e378:	0085a503          	lw	a0,8(a1)
    e37c:	01099713          	slli	a4,s3,0x10
    e380:	0b212823          	sw	s2,176(sp)
    e384:	0b412423          	sw	s4,168(sp)
    e388:	0b512223          	sw	s5,164(sp)
    e38c:	0b612023          	sw	s6,160(sp)
    e390:	00062a03          	lw	s4,0(a2)
    e394:	00462b03          	lw	s6,4(a2)
    e398:	00862a83          	lw	s5,8(a2)
    e39c:	00c62903          	lw	s2,12(a2)
    e3a0:	00008637          	lui	a2,0x8
    e3a4:	0a912a23          	sw	s1,180(sp)
    e3a8:	01075713          	srli	a4,a4,0x10
    e3ac:	0109d493          	srli	s1,s3,0x10
    e3b0:	fff60613          	addi	a2,a2,-1 # 7fff <sprintf+0x13>
    e3b4:	07312623          	sw	s3,108(sp)
    e3b8:	0a112e23          	sw	ra,188(sp)
    e3bc:	0a812c23          	sw	s0,184(sp)
    e3c0:	09712e23          	sw	s7,156(sp)
    e3c4:	09812c23          	sw	s8,152(sp)
    e3c8:	09912a23          	sw	s9,148(sp)
    e3cc:	09a12823          	sw	s10,144(sp)
    e3d0:	09b12623          	sw	s11,140(sp)
    e3d4:	06d12023          	sw	a3,96(sp)
    e3d8:	06f12223          	sw	a5,100(sp)
    e3dc:	06a12423          	sw	a0,104(sp)
    e3e0:	02d12823          	sw	a3,48(sp)
    e3e4:	02f12a23          	sw	a5,52(sp)
    e3e8:	02a12c23          	sw	a0,56(sp)
    e3ec:	02e12e23          	sw	a4,60(sp)
    e3f0:	00c4f4b3          	and	s1,s1,a2
    e3f4:	01f9d993          	srli	s3,s3,0x1f
    e3f8:	12048a63          	beq	s1,zero,e52c <__multf3+0x1cc>
    e3fc:	24c48863          	beq	s1,a2,e64c <__multf3+0x2ec>
    e400:	000107b7          	lui	a5,0x10
    e404:	00f767b3          	or	a5,a4,a5
    e408:	02f12e23          	sw	a5,60(sp)
    e40c:	03010613          	addi	a2,sp,48
    e410:	03c10793          	addi	a5,sp,60
    e414:	0007a703          	lw	a4,0(a5) # 10000 <__subtf3+0xc8c>
    e418:	ffc7a683          	lw	a3,-4(a5)
    e41c:	ffc78793          	addi	a5,a5,-4
    e420:	00371713          	slli	a4,a4,0x3
    e424:	01d6d693          	srli	a3,a3,0x1d
    e428:	00d76733          	or	a4,a4,a3
    e42c:	00e7a223          	sw	a4,4(a5)
    e430:	fef612e3          	bne	a2,a5,e414 <__multf3+0xb4>
    e434:	03012783          	lw	a5,48(sp)
    e438:	ffffc537          	lui	a0,0xffffc
    e43c:	00150513          	addi	a0,a0,1 # ffffc001 <__heap_top+0xffefc001>
    e440:	00379793          	slli	a5,a5,0x3
    e444:	02f12823          	sw	a5,48(sp)
    e448:	00a484b3          	add	s1,s1,a0
    e44c:	00000b93          	addi	s7,zero,0
    e450:	01091513          	slli	a0,s2,0x10
    e454:	00008737          	lui	a4,0x8
    e458:	01095793          	srli	a5,s2,0x10
    e45c:	01055513          	srli	a0,a0,0x10
    e460:	fff70713          	addi	a4,a4,-1 # 7fff <sprintf+0x13>
    e464:	07212623          	sw	s2,108(sp)
    e468:	07412023          	sw	s4,96(sp)
    e46c:	07612223          	sw	s6,100(sp)
    e470:	07512423          	sw	s5,104(sp)
    e474:	05412023          	sw	s4,64(sp)
    e478:	05612223          	sw	s6,68(sp)
    e47c:	05512423          	sw	s5,72(sp)
    e480:	04a12623          	sw	a0,76(sp)
    e484:	00e7f7b3          	and	a5,a5,a4
    e488:	01f95913          	srli	s2,s2,0x1f
    e48c:	1e078463          	beq	a5,zero,e674 <__multf3+0x314>
    e490:	30e78263          	beq	a5,a4,e794 <__multf3+0x434>
    e494:	00010ab7          	lui	s5,0x10
    e498:	01556ab3          	or	s5,a0,s5
    e49c:	05512623          	sw	s5,76(sp)
    e4a0:	04010593          	addi	a1,sp,64
    e4a4:	04c10713          	addi	a4,sp,76
    e4a8:	00072683          	lw	a3,0(a4)
    e4ac:	ffc72603          	lw	a2,-4(a4)
    e4b0:	ffc70713          	addi	a4,a4,-4
    e4b4:	00369693          	slli	a3,a3,0x3
    e4b8:	01d65613          	srli	a2,a2,0x1d
    e4bc:	00c6e6b3          	or	a3,a3,a2
    e4c0:	00d72223          	sw	a3,4(a4)
    e4c4:	fee592e3          	bne	a1,a4,e4a8 <__multf3+0x148>
    e4c8:	04012703          	lw	a4,64(sp)
    e4cc:	ffffc537          	lui	a0,0xffffc
    e4d0:	00150513          	addi	a0,a0,1 # ffffc001 <__heap_top+0xffefc001>
    e4d4:	00371713          	slli	a4,a4,0x3
    e4d8:	04e12023          	sw	a4,64(sp)
    e4dc:	00a787b3          	add	a5,a5,a0
    e4e0:	00000713          	addi	a4,zero,0
    e4e4:	00f487b3          	add	a5,s1,a5
    e4e8:	02f12023          	sw	a5,32(sp)
    e4ec:	00178793          	addi	a5,a5,1
    e4f0:	00f12e23          	sw	a5,28(sp)
    e4f4:	002b9793          	slli	a5,s7,0x2
    e4f8:	0129c6b3          	xor	a3,s3,s2
    e4fc:	00e7e7b3          	or	a5,a5,a4
    e500:	00d12823          	sw	a3,16(sp)
    e504:	fff78793          	addi	a5,a5,-1
    e508:	00e00693          	addi	a3,zero,14
    e50c:	2af6e863          	bltu	a3,a5,e7bc <__multf3+0x45c>
    e510:	00004697          	auipc	a3,0x4
    e514:	a1868693          	addi	a3,a3,-1512 # 11f28 <zeroes.4476+0x88>
    e518:	00279793          	slli	a5,a5,0x2
    e51c:	00d787b3          	add	a5,a5,a3
    e520:	0007a783          	lw	a5,0(a5)
    e524:	00d787b3          	add	a5,a5,a3
    e528:	00078067          	jalr	zero,0(a5)
    e52c:	00d7e633          	or	a2,a5,a3
    e530:	00a66633          	or	a2,a2,a0
    e534:	00e66633          	or	a2,a2,a4
    e538:	12060863          	beq	a2,zero,e668 <__multf3+0x308>
    e53c:	06070063          	beq	a4,zero,e59c <__multf3+0x23c>
    e540:	00070513          	addi	a0,a4,0
    e544:	39d020ef          	jal	ra,110e0 <__clzsi2>
    e548:	ff450693          	addi	a3,a0,-12
    e54c:	4056d793          	srai	a5,a3,0x5
    e550:	01f6f693          	andi	a3,a3,31
    e554:	06068e63          	beq	a3,zero,e5d0 <__multf3+0x270>
    e558:	ffc00713          	addi	a4,zero,-4
    e55c:	02e78733          	mul	a4,a5,a4
    e560:	03010313          	addi	t1,sp,48
    e564:	02000813          	addi	a6,zero,32
    e568:	00279593          	slli	a1,a5,0x2
    e56c:	40d80833          	sub	a6,a6,a3
    e570:	00c70713          	addi	a4,a4,12
    e574:	00e30733          	add	a4,t1,a4
    e578:	08e31463          	bne	t1,a4,e600 <__multf3+0x2a0>
    e57c:	08010713          	addi	a4,sp,128
    e580:	00b705b3          	add	a1,a4,a1
    e584:	03012703          	lw	a4,48(sp)
    e588:	fff78793          	addi	a5,a5,-1
    e58c:	00d716b3          	sll	a3,a4,a3
    e590:	fad5a823          	sw	a3,-80(a1)
    e594:	fff00693          	addi	a3,zero,-1
    e598:	0a00006f          	jal	zero,e638 <__multf3+0x2d8>
    e59c:	00050863          	beq	a0,zero,e5ac <__multf3+0x24c>
    e5a0:	341020ef          	jal	ra,110e0 <__clzsi2>
    e5a4:	02050513          	addi	a0,a0,32
    e5a8:	fa1ff06f          	jal	zero,e548 <__multf3+0x1e8>
    e5ac:	00078a63          	beq	a5,zero,e5c0 <__multf3+0x260>
    e5b0:	00078513          	addi	a0,a5,0
    e5b4:	32d020ef          	jal	ra,110e0 <__clzsi2>
    e5b8:	04050513          	addi	a0,a0,64
    e5bc:	f8dff06f          	jal	zero,e548 <__multf3+0x1e8>
    e5c0:	00068513          	addi	a0,a3,0
    e5c4:	31d020ef          	jal	ra,110e0 <__clzsi2>
    e5c8:	06050513          	addi	a0,a0,96
    e5cc:	f7dff06f          	jal	zero,e548 <__multf3+0x1e8>
    e5d0:	ffc00613          	addi	a2,zero,-4
    e5d4:	02c78633          	mul	a2,a5,a2
    e5d8:	03c10713          	addi	a4,sp,60
    e5dc:	00300693          	addi	a3,zero,3
    e5e0:	00c705b3          	add	a1,a4,a2
    e5e4:	0005a583          	lw	a1,0(a1)
    e5e8:	fff68693          	addi	a3,a3,-1
    e5ec:	ffc70713          	addi	a4,a4,-4
    e5f0:	00b72223          	sw	a1,4(a4)
    e5f4:	fef6d6e3          	bge	a3,a5,e5e0 <__multf3+0x280>
    e5f8:	fff78793          	addi	a5,a5,-1
    e5fc:	f99ff06f          	jal	zero,e594 <__multf3+0x234>
    e600:	ffc72603          	lw	a2,-4(a4)
    e604:	00072883          	lw	a7,0(a4)
    e608:	00b70e33          	add	t3,a4,a1
    e60c:	01065633          	srl	a2,a2,a6
    e610:	00d898b3          	sll	a7,a7,a3
    e614:	01166633          	or	a2,a2,a7
    e618:	00ce2023          	sw	a2,0(t3)
    e61c:	ffc70713          	addi	a4,a4,-4
    e620:	f59ff06f          	jal	zero,e578 <__multf3+0x218>
    e624:	00279713          	slli	a4,a5,0x2
    e628:	03010613          	addi	a2,sp,48
    e62c:	00e60733          	add	a4,a2,a4
    e630:	00072023          	sw	zero,0(a4)
    e634:	fff78793          	addi	a5,a5,-1
    e638:	fed796e3          	bne	a5,a3,e624 <__multf3+0x2c4>
    e63c:	ffffc4b7          	lui	s1,0xffffc
    e640:	01148493          	addi	s1,s1,17 # ffffc011 <__heap_top+0xffefc011>
    e644:	40a484b3          	sub	s1,s1,a0
    e648:	e05ff06f          	jal	zero,e44c <__multf3+0xec>
    e64c:	00d7e7b3          	or	a5,a5,a3
    e650:	00a7e7b3          	or	a5,a5,a0
    e654:	00e7e7b3          	or	a5,a5,a4
    e658:	00300b93          	addi	s7,zero,3
    e65c:	de079ae3          	bne	a5,zero,e450 <__multf3+0xf0>
    e660:	00200b93          	addi	s7,zero,2
    e664:	dedff06f          	jal	zero,e450 <__multf3+0xf0>
    e668:	00000493          	addi	s1,zero,0
    e66c:	00100b93          	addi	s7,zero,1
    e670:	de1ff06f          	jal	zero,e450 <__multf3+0xf0>
    e674:	016a67b3          	or	a5,s4,s6
    e678:	0157e7b3          	or	a5,a5,s5
    e67c:	00a7e7b3          	or	a5,a5,a0
    e680:	12078863          	beq	a5,zero,e7b0 <__multf3+0x450>
    e684:	04050e63          	beq	a0,zero,e6e0 <__multf3+0x380>
    e688:	259020ef          	jal	ra,110e0 <__clzsi2>
    e68c:	ff450613          	addi	a2,a0,-12
    e690:	40565713          	srai	a4,a2,0x5
    e694:	01f67613          	andi	a2,a2,31
    e698:	08060063          	beq	a2,zero,e718 <__multf3+0x3b8>
    e69c:	ffc00693          	addi	a3,zero,-4
    e6a0:	02d706b3          	mul	a3,a4,a3
    e6a4:	04010313          	addi	t1,sp,64
    e6a8:	02000813          	addi	a6,zero,32
    e6ac:	00271593          	slli	a1,a4,0x2
    e6b0:	40c80833          	sub	a6,a6,a2
    e6b4:	00c68693          	addi	a3,a3,12
    e6b8:	00d306b3          	add	a3,t1,a3
    e6bc:	08d31663          	bne	t1,a3,e748 <__multf3+0x3e8>
    e6c0:	08010793          	addi	a5,sp,128
    e6c4:	00b785b3          	add	a1,a5,a1
    e6c8:	04012783          	lw	a5,64(sp)
    e6cc:	fff70713          	addi	a4,a4,-1
    e6d0:	00c79633          	sll	a2,a5,a2
    e6d4:	fcc5a023          	sw	a2,-64(a1)
    e6d8:	fff00693          	addi	a3,zero,-1
    e6dc:	0a40006f          	jal	zero,e780 <__multf3+0x420>
    e6e0:	000a8a63          	beq	s5,zero,e6f4 <__multf3+0x394>
    e6e4:	000a8513          	addi	a0,s5,0 # 10000 <__subtf3+0xc8c>
    e6e8:	1f9020ef          	jal	ra,110e0 <__clzsi2>
    e6ec:	02050513          	addi	a0,a0,32
    e6f0:	f9dff06f          	jal	zero,e68c <__multf3+0x32c>
    e6f4:	000b0a63          	beq	s6,zero,e708 <__multf3+0x3a8>
    e6f8:	000b0513          	addi	a0,s6,0
    e6fc:	1e5020ef          	jal	ra,110e0 <__clzsi2>
    e700:	04050513          	addi	a0,a0,64
    e704:	f89ff06f          	jal	zero,e68c <__multf3+0x32c>
    e708:	000a0513          	addi	a0,s4,0
    e70c:	1d5020ef          	jal	ra,110e0 <__clzsi2>
    e710:	06050513          	addi	a0,a0,96
    e714:	f79ff06f          	jal	zero,e68c <__multf3+0x32c>
    e718:	ffc00613          	addi	a2,zero,-4
    e71c:	02c70633          	mul	a2,a4,a2
    e720:	04c10793          	addi	a5,sp,76
    e724:	00300693          	addi	a3,zero,3
    e728:	00c785b3          	add	a1,a5,a2
    e72c:	0005a583          	lw	a1,0(a1)
    e730:	fff68693          	addi	a3,a3,-1
    e734:	ffc78793          	addi	a5,a5,-4
    e738:	00b7a223          	sw	a1,4(a5)
    e73c:	fee6d6e3          	bge	a3,a4,e728 <__multf3+0x3c8>
    e740:	fff70713          	addi	a4,a4,-1
    e744:	f95ff06f          	jal	zero,e6d8 <__multf3+0x378>
    e748:	ffc6a783          	lw	a5,-4(a3)
    e74c:	0006a883          	lw	a7,0(a3)
    e750:	00b68e33          	add	t3,a3,a1
    e754:	0107d7b3          	srl	a5,a5,a6
    e758:	00c898b3          	sll	a7,a7,a2
    e75c:	0117e7b3          	or	a5,a5,a7
    e760:	00fe2023          	sw	a5,0(t3)
    e764:	ffc68693          	addi	a3,a3,-4
    e768:	f55ff06f          	jal	zero,e6bc <__multf3+0x35c>
    e76c:	00271793          	slli	a5,a4,0x2
    e770:	04010613          	addi	a2,sp,64
    e774:	00f607b3          	add	a5,a2,a5
    e778:	0007a023          	sw	zero,0(a5)
    e77c:	fff70713          	addi	a4,a4,-1
    e780:	fed716e3          	bne	a4,a3,e76c <__multf3+0x40c>
    e784:	ffffc7b7          	lui	a5,0xffffc
    e788:	01178793          	addi	a5,a5,17 # ffffc011 <__heap_top+0xffefc011>
    e78c:	40a787b3          	sub	a5,a5,a0
    e790:	d51ff06f          	jal	zero,e4e0 <__multf3+0x180>
    e794:	016a6a33          	or	s4,s4,s6
    e798:	015a6ab3          	or	s5,s4,s5
    e79c:	00aaeab3          	or	s5,s5,a0
    e7a0:	00300713          	addi	a4,zero,3
    e7a4:	d40a90e3          	bne	s5,zero,e4e4 <__multf3+0x184>
    e7a8:	00200713          	addi	a4,zero,2
    e7ac:	d39ff06f          	jal	zero,e4e4 <__multf3+0x184>
    e7b0:	00000793          	addi	a5,zero,0
    e7b4:	00100713          	addi	a4,zero,1
    e7b8:	d2dff06f          	jal	zero,e4e4 <__multf3+0x184>
    e7bc:	03012703          	lw	a4,48(sp)
    e7c0:	04012e03          	lw	t3,64(sp)
    e7c4:	00010537          	lui	a0,0x10
    e7c8:	fff50693          	addi	a3,a0,-1 # ffff <__subtf3+0xc8b>
    e7cc:	01075f93          	srli	t6,a4,0x10
    e7d0:	010e5a93          	srli	s5,t3,0x10
    e7d4:	00d77733          	and	a4,a4,a3
    e7d8:	00de7e33          	and	t3,t3,a3
    e7dc:	02ea87b3          	mul	a5,s5,a4
    e7e0:	02ee0633          	mul	a2,t3,a4
    e7e4:	03cf8833          	mul	a6,t6,t3
    e7e8:	010785b3          	add	a1,a5,a6
    e7ec:	01065793          	srli	a5,a2,0x10
    e7f0:	00b787b3          	add	a5,a5,a1
    e7f4:	035f8b33          	mul	s6,t6,s5
    e7f8:	0107f463          	bgeu	a5,a6,e800 <__multf3+0x4a0>
    e7fc:	00ab0b33          	add	s6,s6,a0
    e800:	04412f03          	lw	t5,68(sp)
    e804:	0107d293          	srli	t0,a5,0x10
    e808:	00d7f7b3          	and	a5,a5,a3
    e80c:	00d67633          	and	a2,a2,a3
    e810:	01079793          	slli	a5,a5,0x10
    e814:	00c787b3          	add	a5,a5,a2
    e818:	010f5493          	srli	s1,t5,0x10
    e81c:	00df7f33          	and	t5,t5,a3
    e820:	02f12223          	sw	a5,36(sp)
    e824:	06f12023          	sw	a5,96(sp)
    e828:	02ef06b3          	mul	a3,t5,a4
    e82c:	02e487b3          	mul	a5,s1,a4
    e830:	03ef8633          	mul	a2,t6,t5
    e834:	00c78533          	add	a0,a5,a2
    e838:	0106d793          	srli	a5,a3,0x10
    e83c:	00a787b3          	add	a5,a5,a0
    e840:	029f8a33          	mul	s4,t6,s1
    e844:	00c7f663          	bgeu	a5,a2,e850 <__multf3+0x4f0>
    e848:	00010637          	lui	a2,0x10
    e84c:	00ca0a33          	add	s4,s4,a2
    e850:	00010637          	lui	a2,0x10
    e854:	fff60593          	addi	a1,a2,-1 # ffff <__subtf3+0xc8b>
    e858:	00b7f533          	and	a0,a5,a1
    e85c:	0107dd93          	srli	s11,a5,0x10
    e860:	03412783          	lw	a5,52(sp)
    e864:	00b6f6b3          	and	a3,a3,a1
    e868:	01051513          	slli	a0,a0,0x10
    e86c:	0107d913          	srli	s2,a5,0x10
    e870:	00b7f5b3          	and	a1,a5,a1
    e874:	00d50533          	add	a0,a0,a3
    e878:	02ba87b3          	mul	a5,s5,a1
    e87c:	00a282b3          	add	t0,t0,a0
    e880:	02be06b3          	mul	a3,t3,a1
    e884:	03c90333          	mul	t1,s2,t3
    e888:	00678833          	add	a6,a5,t1
    e88c:	0106d793          	srli	a5,a3,0x10
    e890:	010787b3          	add	a5,a5,a6
    e894:	032a88b3          	mul	a7,s5,s2
    e898:	0067f463          	bgeu	a5,t1,e8a0 <__multf3+0x540>
    e89c:	00c888b3          	add	a7,a7,a2
    e8a0:	00010337          	lui	t1,0x10
    e8a4:	fff30613          	addi	a2,t1,-1 # ffff <__subtf3+0xc8b>
    e8a8:	0107d993          	srli	s3,a5,0x10
    e8ac:	00c7f833          	and	a6,a5,a2
    e8b0:	00c6f6b3          	and	a3,a3,a2
    e8b4:	011989b3          	add	s3,s3,a7
    e8b8:	01081813          	slli	a6,a6,0x10
    e8bc:	03e588b3          	mul	a7,a1,t5
    e8c0:	00d80833          	add	a6,a6,a3
    e8c4:	03e90633          	mul	a2,s2,t5
    e8c8:	0108d693          	srli	a3,a7,0x10
    e8cc:	02b487b3          	mul	a5,s1,a1
    e8d0:	00c787b3          	add	a5,a5,a2
    e8d4:	00f687b3          	add	a5,a3,a5
    e8d8:	03248eb3          	mul	t4,s1,s2
    e8dc:	00c7f463          	bgeu	a5,a2,e8e4 <__multf3+0x584>
    e8e0:	006e8eb3          	add	t4,t4,t1
    e8e4:	0107d693          	srli	a3,a5,0x10
    e8e8:	01d686b3          	add	a3,a3,t4
    e8ec:	000103b7          	lui	t2,0x10
    e8f0:	04812e83          	lw	t4,72(sp)
    e8f4:	fff38613          	addi	a2,t2,-1 # ffff <__subtf3+0xc8b>
    e8f8:	02d12423          	sw	a3,40(sp)
    e8fc:	00c7f6b3          	and	a3,a5,a2
    e900:	00c8f8b3          	and	a7,a7,a2
    e904:	010ed413          	srli	s0,t4,0x10
    e908:	01069693          	slli	a3,a3,0x10
    e90c:	00cefeb3          	and	t4,t4,a2
    e910:	011686b3          	add	a3,a3,a7
    e914:	02ee8333          	mul	t1,t4,a4
    e918:	02e408b3          	mul	a7,s0,a4
    e91c:	03df8bb3          	mul	s7,t6,t4
    e920:	017887b3          	add	a5,a7,s7
    e924:	01035893          	srli	a7,t1,0x10
    e928:	00f888b3          	add	a7,a7,a5
    e92c:	028f8633          	mul	a2,t6,s0
    e930:	0178f463          	bgeu	a7,s7,e938 <__multf3+0x5d8>
    e934:	00760633          	add	a2,a2,t2
    e938:	0108d793          	srli	a5,a7,0x10
    e93c:	00010c37          	lui	s8,0x10
    e940:	00c787b3          	add	a5,a5,a2
    e944:	fffc0613          	addi	a2,s8,-1 # ffff <__subtf3+0xc8b>
    e948:	02f12623          	sw	a5,44(sp)
    e94c:	00c8f7b3          	and	a5,a7,a2
    e950:	03812883          	lw	a7,56(sp)
    e954:	00c37333          	and	t1,t1,a2
    e958:	01079793          	slli	a5,a5,0x10
    e95c:	0108d393          	srli	t2,a7,0x10
    e960:	00c8f633          	and	a2,a7,a2
    e964:	006787b3          	add	a5,a5,t1
    e968:	03c608b3          	mul	a7,a2,t3
    e96c:	03c38cb3          	mul	s9,t2,t3
    e970:	0108dd13          	srli	s10,a7,0x10
    e974:	02ca8333          	mul	t1,s5,a2
    e978:	01930333          	add	t1,t1,s9
    e97c:	006d0333          	add	t1,s10,t1
    e980:	027a8bb3          	mul	s7,s5,t2
    e984:	01937463          	bgeu	t1,s9,e98c <__multf3+0x62c>
    e988:	018b8bb3          	add	s7,s7,s8
    e98c:	01035c13          	srli	s8,t1,0x10
    e990:	017c0bb3          	add	s7,s8,s7
    e994:	00010c37          	lui	s8,0x10
    e998:	005b02b3          	add	t0,s6,t0
    e99c:	fffc0c93          	addi	s9,s8,-1 # ffff <__subtf3+0xc8b>
    e9a0:	00a2b533          	sltu	a0,t0,a0
    e9a4:	01937333          	and	t1,t1,s9
    e9a8:	00ad8db3          	add	s11,s11,a0
    e9ac:	01031313          	slli	t1,t1,0x10
    e9b0:	0198f8b3          	and	a7,a7,s9
    e9b4:	014d8a33          	add	s4,s11,s4
    e9b8:	011308b3          	add	a7,t1,a7
    e9bc:	01028333          	add	t1,t0,a6
    e9c0:	01033833          	sltu	a6,t1,a6
    e9c4:	00612a23          	sw	t1,20(sp)
    e9c8:	06612223          	sw	t1,100(sp)
    e9cc:	013a0333          	add	t1,s4,s3
    e9d0:	01030b33          	add	s6,t1,a6
    e9d4:	013339b3          	sltu	s3,t1,s3
    e9d8:	010b3833          	sltu	a6,s6,a6
    e9dc:	0109e833          	or	a6,s3,a6
    e9e0:	00aa3533          	sltu	a0,s4,a0
    e9e4:	00a80533          	add	a0,a6,a0
    e9e8:	02812803          	lw	a6,40(sp)
    e9ec:	00db02b3          	add	t0,s6,a3
    e9f0:	02812983          	lw	s3,40(sp)
    e9f4:	00d2b6b3          	sltu	a3,t0,a3
    e9f8:	01050533          	add	a0,a0,a6
    e9fc:	02c12303          	lw	t1,44(sp)
    ea00:	00d50833          	add	a6,a0,a3
    ea04:	00f282b3          	add	t0,t0,a5
    ea08:	01353533          	sltu	a0,a0,s3
    ea0c:	00d836b3          	sltu	a3,a6,a3
    ea10:	00f2b7b3          	sltu	a5,t0,a5
    ea14:	00680db3          	add	s11,a6,t1
    ea18:	00d566b3          	or	a3,a0,a3
    ea1c:	02c12503          	lw	a0,44(sp)
    ea20:	00fd8333          	add	t1,s11,a5
    ea24:	011282b3          	add	t0,t0,a7
    ea28:	0112b8b3          	sltu	a7,t0,a7
    ea2c:	00f337b3          	sltu	a5,t1,a5
    ea30:	00512c23          	sw	t0,24(sp)
    ea34:	06512423          	sw	t0,104(sp)
    ea38:	017302b3          	add	t0,t1,s7
    ea3c:	04c12303          	lw	t1,76(sp)
    ea40:	01128d33          	add	s10,t0,a7
    ea44:	00adbdb3          	sltu	s11,s11,a0
    ea48:	00fde7b3          	or	a5,s11,a5
    ea4c:	0172bbb3          	sltu	s7,t0,s7
    ea50:	011d38b3          	sltu	a7,s10,a7
    ea54:	00f686b3          	add	a3,a3,a5
    ea58:	01035293          	srli	t0,t1,0x10
    ea5c:	011bea33          	or	s4,s7,a7
    ea60:	01937333          	and	t1,t1,s9
    ea64:	02e307b3          	mul	a5,t1,a4
    ea68:	01468a33          	add	s4,a3,s4
    ea6c:	02e28733          	mul	a4,t0,a4
    ea70:	0107d893          	srli	a7,a5,0x10
    ea74:	026f86b3          	mul	a3,t6,t1
    ea78:	00d70733          	add	a4,a4,a3
    ea7c:	00e888b3          	add	a7,a7,a4
    ea80:	025f8fb3          	mul	t6,t6,t0
    ea84:	00d8f463          	bgeu	a7,a3,ea8c <__multf3+0x72c>
    ea88:	018f8fb3          	add	t6,t6,s8
    ea8c:	03c12983          	lw	s3,60(sp)
    ea90:	000106b7          	lui	a3,0x10
    ea94:	fff68513          	addi	a0,a3,-1 # ffff <__subtf3+0xc8b>
    ea98:	0108d713          	srli	a4,a7,0x10
    ea9c:	00a8f8b3          	and	a7,a7,a0
    eaa0:	01f70733          	add	a4,a4,t6
    eaa4:	00a7f7b3          	and	a5,a5,a0
    eaa8:	0109df93          	srli	t6,s3,0x10
    eaac:	01089893          	slli	a7,a7,0x10
    eab0:	00a9f9b3          	and	s3,s3,a0
    eab4:	00f888b3          	add	a7,a7,a5
    eab8:	03fa8b33          	mul	s6,s5,t6
    eabc:	00070d93          	addi	s11,a4,0
    eac0:	033e07b3          	mul	a5,t3,s3
    eac4:	033a8ab3          	mul	s5,s5,s3
    eac8:	0107d813          	srli	a6,a5,0x10
    eacc:	03cf8e33          	mul	t3,t6,t3
    ead0:	01ca8ab3          	add	s5,s5,t3
    ead4:	01580ab3          	add	s5,a6,s5
    ead8:	01caf463          	bgeu	s5,t3,eae0 <__multf3+0x780>
    eadc:	00db0b33          	add	s6,s6,a3
    eae0:	010ad813          	srli	a6,s5,0x10
    eae4:	01680733          	add	a4,a6,s6
    eae8:	00010b37          	lui	s6,0x10
    eaec:	02e12423          	sw	a4,40(sp)
    eaf0:	fffb0713          	addi	a4,s6,-1 # ffff <__subtf3+0xc8b>
    eaf4:	00eaf833          	and	a6,s5,a4
    eaf8:	00e7f7b3          	and	a5,a5,a4
    eafc:	01081813          	slli	a6,a6,0x10
    eb00:	00f80833          	add	a6,a6,a5
    eb04:	02be86b3          	mul	a3,t4,a1
    eb08:	03d90e33          	mul	t3,s2,t4
    eb0c:	0106d513          	srli	a0,a3,0x10
    eb10:	02b407b3          	mul	a5,s0,a1
    eb14:	01c787b3          	add	a5,a5,t3
    eb18:	00f507b3          	add	a5,a0,a5
    eb1c:	02890733          	mul	a4,s2,s0
    eb20:	01c7f463          	bgeu	a5,t3,eb28 <__multf3+0x7c8>
    eb24:	01670733          	add	a4,a4,s6
    eb28:	0107d513          	srli	a0,a5,0x10
    eb2c:	00e50733          	add	a4,a0,a4
    eb30:	00010b37          	lui	s6,0x10
    eb34:	02e12623          	sw	a4,44(sp)
    eb38:	fffb0713          	addi	a4,s6,-1 # ffff <__subtf3+0xc8b>
    eb3c:	00e7f533          	and	a0,a5,a4
    eb40:	00e6f6b3          	and	a3,a3,a4
    eb44:	03e38e33          	mul	t3,t2,t5
    eb48:	01051513          	slli	a0,a0,0x10
    eb4c:	00d50533          	add	a0,a0,a3
    eb50:	03e60733          	mul	a4,a2,t5
    eb54:	02c487b3          	mul	a5,s1,a2
    eb58:	01075693          	srli	a3,a4,0x10
    eb5c:	01c787b3          	add	a5,a5,t3
    eb60:	00f687b3          	add	a5,a3,a5
    eb64:	02748ab3          	mul	s5,s1,t2
    eb68:	01c7f463          	bgeu	a5,t3,eb70 <__multf3+0x810>
    eb6c:	016a8ab3          	add	s5,s5,s6
    eb70:	000106b7          	lui	a3,0x10
    eb74:	fff68e13          	addi	t3,a3,-1 # ffff <__subtf3+0xc8b>
    eb78:	01c7f6b3          	and	a3,a5,t3
    eb7c:	0107db93          	srli	s7,a5,0x10
    eb80:	011d07b3          	add	a5,s10,a7
    eb84:	01c77733          	and	a4,a4,t3
    eb88:	0117b8b3          	sltu	a7,a5,a7
    eb8c:	01ba0a33          	add	s4,s4,s11
    eb90:	01069693          	slli	a3,a3,0x10
    eb94:	00e686b3          	add	a3,a3,a4
    eb98:	011a0d33          	add	s10,s4,a7
    eb9c:	02812703          	lw	a4,40(sp)
    eba0:	011d38b3          	sltu	a7,s10,a7
    eba4:	01ba3a33          	sltu	s4,s4,s11
    eba8:	010787b3          	add	a5,a5,a6
    ebac:	011a6a33          	or	s4,s4,a7
    ebb0:	02812883          	lw	a7,40(sp)
    ebb4:	0107b833          	sltu	a6,a5,a6
    ebb8:	00ed0b33          	add	s6,s10,a4
    ebbc:	02c12703          	lw	a4,44(sp)
    ebc0:	010b0cb3          	add	s9,s6,a6
    ebc4:	00a787b3          	add	a5,a5,a0
    ebc8:	011b3b33          	sltu	s6,s6,a7
    ebcc:	010cb833          	sltu	a6,s9,a6
    ebd0:	00a7b533          	sltu	a0,a5,a0
    ebd4:	00ec8733          	add	a4,s9,a4
    ebd8:	010b6b33          	or	s6,s6,a6
    ebdc:	02c12803          	lw	a6,44(sp)
    ebe0:	00a70c33          	add	s8,a4,a0
    ebe4:	015b8bb3          	add	s7,s7,s5
    ebe8:	00d787b3          	add	a5,a5,a3
    ebec:	00d7b6b3          	sltu	a3,a5,a3
    ebf0:	017c0ab3          	add	s5,s8,s7
    ebf4:	00da8e33          	add	t3,s5,a3
    ebf8:	01073733          	sltu	a4,a4,a6
    ebfc:	00ac3533          	sltu	a0,s8,a0
    ec00:	00a76733          	or	a4,a4,a0
    ec04:	00de36b3          	sltu	a3,t3,a3
    ec08:	016a0a33          	add	s4,s4,s6
    ec0c:	017abab3          	sltu	s5,s5,s7
    ec10:	00ea0a33          	add	s4,s4,a4
    ec14:	00daeab3          	or	s5,s5,a3
    ec18:	015a06b3          	add	a3,s4,s5
    ec1c:	02ce8833          	mul	a6,t4,a2
    ec20:	06f12623          	sw	a5,108(sp)
    ec24:	03d38a33          	mul	s4,t2,t4
    ec28:	01085513          	srli	a0,a6,0x10
    ec2c:	02c40733          	mul	a4,s0,a2
    ec30:	01470733          	add	a4,a4,s4
    ec34:	00e50733          	add	a4,a0,a4
    ec38:	027408b3          	mul	a7,s0,t2
    ec3c:	01477663          	bgeu	a4,s4,ec48 <__multf3+0x8e8>
    ec40:	00010537          	lui	a0,0x10
    ec44:	00a888b3          	add	a7,a7,a0
    ec48:	00010a37          	lui	s4,0x10
    ec4c:	01075513          	srli	a0,a4,0x10
    ec50:	fffa0a93          	addi	s5,s4,-1 # ffff <__subtf3+0xc8b>
    ec54:	011508b3          	add	a7,a0,a7
    ec58:	01577533          	and	a0,a4,s5
    ec5c:	01587833          	and	a6,a6,s5
    ec60:	01051513          	slli	a0,a0,0x10
    ec64:	02690ab3          	mul	s5,s2,t1
    ec68:	01050533          	add	a0,a0,a6
    ec6c:	02b30833          	mul	a6,t1,a1
    ec70:	02b285b3          	mul	a1,t0,a1
    ec74:	01085713          	srli	a4,a6,0x10
    ec78:	015585b3          	add	a1,a1,s5
    ec7c:	00b70733          	add	a4,a4,a1
    ec80:	02590933          	mul	s2,s2,t0
    ec84:	01577463          	bgeu	a4,s5,ec8c <__multf3+0x92c>
    ec88:	01490933          	add	s2,s2,s4
    ec8c:	00010ab7          	lui	s5,0x10
    ec90:	01075593          	srli	a1,a4,0x10
    ec94:	fffa8a13          	addi	s4,s5,-1 # ffff <__subtf3+0xc8b>
    ec98:	01487833          	and	a6,a6,s4
    ec9c:	01258933          	add	s2,a1,s2
    eca0:	014775b3          	and	a1,a4,s4
    eca4:	01059593          	slli	a1,a1,0x10
    eca8:	03e98733          	mul	a4,s3,t5
    ecac:	010585b3          	add	a1,a1,a6
    ecb0:	03ef8f33          	mul	t5,t6,t5
    ecb4:	01075813          	srli	a6,a4,0x10
    ecb8:	03f48a33          	mul	s4,s1,t6
    ecbc:	033484b3          	mul	s1,s1,s3
    ecc0:	01e484b3          	add	s1,s1,t5
    ecc4:	009804b3          	add	s1,a6,s1
    ecc8:	01e4f463          	bgeu	s1,t5,ecd0 <__multf3+0x970>
    eccc:	015a0a33          	add	s4,s4,s5
    ecd0:	0104db13          	srli	s6,s1,0x10
    ecd4:	014b0b33          	add	s6,s6,s4
    ecd8:	00010a37          	lui	s4,0x10
    ecdc:	fffa0f13          	addi	t5,s4,-1 # ffff <__subtf3+0xc8b>
    ece0:	01e4f833          	and	a6,s1,t5
    ece4:	01e77733          	and	a4,a4,t5
    ece8:	026384b3          	mul	s1,t2,t1
    ecec:	01081813          	slli	a6,a6,0x10
    ecf0:	00e80833          	add	a6,a6,a4
    ecf4:	02660f33          	mul	t5,a2,t1
    ecf8:	02c28633          	mul	a2,t0,a2
    ecfc:	010f5713          	srli	a4,t5,0x10
    ed00:	00960633          	add	a2,a2,s1
    ed04:	00c70633          	add	a2,a4,a2
    ed08:	025383b3          	mul	t2,t2,t0
    ed0c:	00967463          	bgeu	a2,s1,ed14 <__multf3+0x9b4>
    ed10:	014383b3          	add	t2,t2,s4
    ed14:	00010a37          	lui	s4,0x10
    ed18:	01065713          	srli	a4,a2,0x10
    ed1c:	fffa0493          	addi	s1,s4,-1 # ffff <__subtf3+0xc8b>
    ed20:	007703b3          	add	t2,a4,t2
    ed24:	00967733          	and	a4,a2,s1
    ed28:	009f7f33          	and	t5,t5,s1
    ed2c:	01071713          	slli	a4,a4,0x10
    ed30:	01e70733          	add	a4,a4,t5
    ed34:	03340633          	mul	a2,s0,s3
    ed38:	033e8f33          	mul	t5,t4,s3
    ed3c:	03df8eb3          	mul	t4,t6,t4
    ed40:	010f5a93          	srli	s5,t5,0x10
    ed44:	01d60633          	add	a2,a2,t4
    ed48:	00ca8633          	add	a2,s5,a2
    ed4c:	03f404b3          	mul	s1,s0,t6
    ed50:	01d67463          	bgeu	a2,t4,ed58 <__multf3+0x9f8>
    ed54:	014484b3          	add	s1,s1,s4
    ed58:	01065c13          	srli	s8,a2,0x10
    ed5c:	00010cb7          	lui	s9,0x10
    ed60:	009c0c33          	add	s8,s8,s1
    ed64:	00ae0e33          	add	t3,t3,a0
    ed68:	fffc8493          	addi	s1,s9,-1 # ffff <__subtf3+0xc8b>
    ed6c:	00ae3533          	sltu	a0,t3,a0
    ed70:	011686b3          	add	a3,a3,a7
    ed74:	00967633          	and	a2,a2,s1
    ed78:	00a68db3          	add	s11,a3,a0
    ed7c:	009f7f33          	and	t5,t5,s1
    ed80:	00be0e33          	add	t3,t3,a1
    ed84:	01061613          	slli	a2,a2,0x10
    ed88:	01e60633          	add	a2,a2,t5
    ed8c:	00be35b3          	sltu	a1,t3,a1
    ed90:	012d8f33          	add	t5,s11,s2
    ed94:	010e0e33          	add	t3,t3,a6
    ed98:	00bf0d33          	add	s10,t5,a1
    ed9c:	016d0eb3          	add	t4,s10,s6
    eda0:	07c12823          	sw	t3,112(sp)
    eda4:	010e3e33          	sltu	t3,t3,a6
    eda8:	01ce8a33          	add	s4,t4,t3
    edac:	0116b6b3          	sltu	a3,a3,a7
    edb0:	00bd35b3          	sltu	a1,s10,a1
    edb4:	00adb533          	sltu	a0,s11,a0
    edb8:	012f3933          	sltu	s2,t5,s2
    edbc:	00a6e533          	or	a0,a3,a0
    edc0:	00b96933          	or	s2,s2,a1
    edc4:	016ebeb3          	sltu	t4,t4,s6
    edc8:	01ca3e33          	sltu	t3,s4,t3
    edcc:	01250533          	add	a0,a0,s2
    edd0:	01ceeeb3          	or	t4,t4,t3
    edd4:	00ea0833          	add	a6,s4,a4
    edd8:	01d50533          	add	a0,a0,t4
    eddc:	00e83733          	sltu	a4,a6,a4
    ede0:	00750533          	add	a0,a0,t2
    ede4:	00e506b3          	add	a3,a0,a4
    ede8:	007533b3          	sltu	t2,a0,t2
    edec:	03330533          	mul	a0,t1,s3
    edf0:	00c80833          	add	a6,a6,a2
    edf4:	00e6b733          	sltu	a4,a3,a4
    edf8:	00c83633          	sltu	a2,a6,a2
    edfc:	018686b3          	add	a3,a3,s8
    ee00:	00c685b3          	add	a1,a3,a2
    ee04:	0186bc33          	sltu	s8,a3,s8
    ee08:	00c5b633          	sltu	a2,a1,a2
    ee0c:	07012a23          	sw	a6,116(sp)
    ee10:	00e3e733          	or	a4,t2,a4
    ee14:	026f8333          	mul	t1,t6,t1
    ee18:	01055693          	srli	a3,a0,0x10
    ee1c:	00cc6633          	or	a2,s8,a2
    ee20:	033289b3          	mul	s3,t0,s3
    ee24:	006989b3          	add	s3,s3,t1
    ee28:	03f28fb3          	mul	t6,t0,t6
    ee2c:	013682b3          	add	t0,a3,s3
    ee30:	0062f463          	bgeu	t0,t1,ee38 <__multf3+0xad8>
    ee34:	019f8fb3          	add	t6,t6,s9
    ee38:	0092f6b3          	and	a3,t0,s1
    ee3c:	01069693          	slli	a3,a3,0x10
    ee40:	009574b3          	and	s1,a0,s1
    ee44:	009684b3          	add	s1,a3,s1
    ee48:	0102d293          	srli	t0,t0,0x10
    ee4c:	009585b3          	add	a1,a1,s1
    ee50:	00e282b3          	add	t0,t0,a4
    ee54:	01412683          	lw	a3,20(sp)
    ee58:	02412703          	lw	a4,36(sp)
    ee5c:	0095b4b3          	sltu	s1,a1,s1
    ee60:	00c282b3          	add	t0,t0,a2
    ee64:	009282b3          	add	t0,t0,s1
    ee68:	01f28fb3          	add	t6,t0,t6
    ee6c:	00d762b3          	or	t0,a4,a3
    ee70:	01812703          	lw	a4,24(sp)
    ee74:	00d79793          	slli	a5,a5,0xd
    ee78:	06b12c23          	sw	a1,120(sp)
    ee7c:	005762b3          	or	t0,a4,t0
    ee80:	07f12e23          	sw	t6,124(sp)
    ee84:	0057e7b3          	or	a5,a5,t0
    ee88:	06010713          	addi	a4,sp,96
    ee8c:	07010593          	addi	a1,sp,112
    ee90:	00c72683          	lw	a3,12(a4)
    ee94:	01072603          	lw	a2,16(a4)
    ee98:	00470713          	addi	a4,a4,4
    ee9c:	0136d693          	srli	a3,a3,0x13
    eea0:	00d61613          	slli	a2,a2,0xd
    eea4:	00c6e6b3          	or	a3,a3,a2
    eea8:	fed72e23          	sw	a3,-4(a4)
    eeac:	fee592e3          	bne	a1,a4,ee90 <__multf3+0xb30>
    eeb0:	06012703          	lw	a4,96(sp)
    eeb4:	06812683          	lw	a3,104(sp)
    eeb8:	00f037b3          	sltu	a5,zero,a5
    eebc:	00e7e7b3          	or	a5,a5,a4
    eec0:	04d12c23          	sw	a3,88(sp)
    eec4:	06c12703          	lw	a4,108(sp)
    eec8:	06412683          	lw	a3,100(sp)
    eecc:	04f12823          	sw	a5,80(sp)
    eed0:	04e12e23          	sw	a4,92(sp)
    eed4:	04d12a23          	sw	a3,84(sp)
    eed8:	00b71693          	slli	a3,a4,0xb
    eedc:	2206dc63          	bge	a3,zero,f114 <__multf3+0xdb4>
    eee0:	01f79793          	slli	a5,a5,0x1f
    eee4:	05010713          	addi	a4,sp,80
    eee8:	05c10593          	addi	a1,sp,92
    eeec:	00072683          	lw	a3,0(a4)
    eef0:	00472603          	lw	a2,4(a4)
    eef4:	00470713          	addi	a4,a4,4
    eef8:	0016d693          	srli	a3,a3,0x1
    eefc:	01f61613          	slli	a2,a2,0x1f
    ef00:	00c6e6b3          	or	a3,a3,a2
    ef04:	fed72e23          	sw	a3,-4(a4)
    ef08:	fee592e3          	bne	a1,a4,eeec <__multf3+0xb8c>
    ef0c:	05c12703          	lw	a4,92(sp)
    ef10:	00f037b3          	sltu	a5,zero,a5
    ef14:	00175713          	srli	a4,a4,0x1
    ef18:	04e12e23          	sw	a4,92(sp)
    ef1c:	05012703          	lw	a4,80(sp)
    ef20:	00f767b3          	or	a5,a4,a5
    ef24:	04f12823          	sw	a5,80(sp)
    ef28:	01c12703          	lw	a4,28(sp)
    ef2c:	000047b7          	lui	a5,0x4
    ef30:	fff78793          	addi	a5,a5,-1 # 3fff <_fwalk_reent+0x3f>
    ef34:	00f707b3          	add	a5,a4,a5
    ef38:	20f05063          	bge	zero,a5,f138 <__multf3+0xdd8>
    ef3c:	05012703          	lw	a4,80(sp)
    ef40:	00777693          	andi	a3,a4,7
    ef44:	04068463          	beq	a3,zero,ef8c <__multf3+0xc2c>
    ef48:	00f77693          	andi	a3,a4,15
    ef4c:	00400613          	addi	a2,zero,4
    ef50:	02c68e63          	beq	a3,a2,ef8c <__multf3+0xc2c>
    ef54:	05412683          	lw	a3,84(sp)
    ef58:	00470713          	addi	a4,a4,4
    ef5c:	04e12823          	sw	a4,80(sp)
    ef60:	00473713          	sltiu	a4,a4,4
    ef64:	00d706b3          	add	a3,a4,a3
    ef68:	00e6b733          	sltu	a4,a3,a4
    ef6c:	04d12a23          	sw	a3,84(sp)
    ef70:	05812683          	lw	a3,88(sp)
    ef74:	00d706b3          	add	a3,a4,a3
    ef78:	04d12c23          	sw	a3,88(sp)
    ef7c:	00e6b6b3          	sltu	a3,a3,a4
    ef80:	05c12703          	lw	a4,92(sp)
    ef84:	00e686b3          	add	a3,a3,a4
    ef88:	04d12e23          	sw	a3,92(sp)
    ef8c:	05c12703          	lw	a4,92(sp)
    ef90:	00b71693          	slli	a3,a4,0xb
    ef94:	0206d063          	bge	a3,zero,efb4 <__multf3+0xc54>
    ef98:	fff007b7          	lui	a5,0xfff00
    ef9c:	fff78793          	addi	a5,a5,-1 # ffefffff <__heap_top+0xffdfffff>
    efa0:	00f77733          	and	a4,a4,a5
    efa4:	04e12e23          	sw	a4,92(sp)
    efa8:	01c12703          	lw	a4,28(sp)
    efac:	000047b7          	lui	a5,0x4
    efb0:	00f707b3          	add	a5,a4,a5
    efb4:	05010713          	addi	a4,sp,80
    efb8:	05c10593          	addi	a1,sp,92
    efbc:	00072683          	lw	a3,0(a4)
    efc0:	00472603          	lw	a2,4(a4)
    efc4:	00470713          	addi	a4,a4,4
    efc8:	0036d693          	srli	a3,a3,0x3
    efcc:	01d61613          	slli	a2,a2,0x1d
    efd0:	00c6e6b3          	or	a3,a3,a2
    efd4:	fed72e23          	sw	a3,-4(a4)
    efd8:	feb712e3          	bne	a4,a1,efbc <__multf3+0xc5c>
    efdc:	00008737          	lui	a4,0x8
    efe0:	ffe70693          	addi	a3,a4,-2 # 7ffe <sprintf+0x12>
    efe4:	12f6ce63          	blt	a3,a5,f120 <__multf3+0xdc0>
    efe8:	05c12703          	lw	a4,92(sp)
    efec:	00375713          	srli	a4,a4,0x3
    eff0:	04e12e23          	sw	a4,92(sp)
    eff4:	05c12703          	lw	a4,92(sp)
    eff8:	800106b7          	lui	a3,0x80010
    effc:	fff68693          	addi	a3,a3,-1 # 8000ffff <__heap_top+0x7ff0ffff>
    f000:	06e11623          	sh	a4,108(sp)
    f004:	00008737          	lui	a4,0x8
    f008:	fff70713          	addi	a4,a4,-1 # 7fff <sprintf+0x13>
    f00c:	00e7f7b3          	and	a5,a5,a4
    f010:	06c12703          	lw	a4,108(sp)
    f014:	01079793          	slli	a5,a5,0x10
    f018:	0bc12083          	lw	ra,188(sp)
    f01c:	00d77733          	and	a4,a4,a3
    f020:	00f767b3          	or	a5,a4,a5
    f024:	01012703          	lw	a4,16(sp)
    f028:	800006b7          	lui	a3,0x80000
    f02c:	fff6c693          	xori	a3,a3,-1
    f030:	01f71713          	slli	a4,a4,0x1f
    f034:	00d7f7b3          	and	a5,a5,a3
    f038:	00e7e7b3          	or	a5,a5,a4
    f03c:	00c12683          	lw	a3,12(sp)
    f040:	05012703          	lw	a4,80(sp)
    f044:	0b812403          	lw	s0,184(sp)
    f048:	00f6a623          	sw	a5,12(a3) # 8000000c <__heap_top+0x7ff0000c>
    f04c:	00e6a023          	sw	a4,0(a3)
    f050:	05412703          	lw	a4,84(sp)
    f054:	0b412483          	lw	s1,180(sp)
    f058:	0b012903          	lw	s2,176(sp)
    f05c:	00e6a223          	sw	a4,4(a3)
    f060:	05812703          	lw	a4,88(sp)
    f064:	0ac12983          	lw	s3,172(sp)
    f068:	0a812a03          	lw	s4,168(sp)
    f06c:	00e6a423          	sw	a4,8(a3)
    f070:	0a412a83          	lw	s5,164(sp)
    f074:	0a012b03          	lw	s6,160(sp)
    f078:	09c12b83          	lw	s7,156(sp)
    f07c:	09812c03          	lw	s8,152(sp)
    f080:	09412c83          	lw	s9,148(sp)
    f084:	09012d03          	lw	s10,144(sp)
    f088:	08c12d83          	lw	s11,140(sp)
    f08c:	00068513          	addi	a0,a3,0
    f090:	0c010113          	addi	sp,sp,192
    f094:	00008067          	jalr	zero,0(ra)
    f098:	01312823          	sw	s3,16(sp)
    f09c:	03012783          	lw	a5,48(sp)
    f0a0:	04f12823          	sw	a5,80(sp)
    f0a4:	03412783          	lw	a5,52(sp)
    f0a8:	04f12a23          	sw	a5,84(sp)
    f0ac:	03812783          	lw	a5,56(sp)
    f0b0:	04f12c23          	sw	a5,88(sp)
    f0b4:	03c12783          	lw	a5,60(sp)
    f0b8:	04f12e23          	sw	a5,92(sp)
    f0bc:	00200793          	addi	a5,zero,2
    f0c0:	26fb8c63          	beq	s7,a5,f338 <__multf3+0xfd8>
    f0c4:	00300793          	addi	a5,zero,3
    f0c8:	28fb8663          	beq	s7,a5,f354 <__multf3+0xff4>
    f0cc:	00100793          	addi	a5,zero,1
    f0d0:	e4fb9ce3          	bne	s7,a5,ef28 <__multf3+0xbc8>
    f0d4:	04012e23          	sw	zero,92(sp)
    f0d8:	04012c23          	sw	zero,88(sp)
    f0dc:	04012a23          	sw	zero,84(sp)
    f0e0:	04012823          	sw	zero,80(sp)
    f0e4:	2140006f          	jal	zero,f2f8 <__multf3+0xf98>
    f0e8:	01212823          	sw	s2,16(sp)
    f0ec:	04012783          	lw	a5,64(sp)
    f0f0:	00070b93          	addi	s7,a4,0
    f0f4:	04f12823          	sw	a5,80(sp)
    f0f8:	04412783          	lw	a5,68(sp)
    f0fc:	04f12a23          	sw	a5,84(sp)
    f100:	04812783          	lw	a5,72(sp)
    f104:	04f12c23          	sw	a5,88(sp)
    f108:	04c12783          	lw	a5,76(sp)
    f10c:	04f12e23          	sw	a5,92(sp)
    f110:	fadff06f          	jal	zero,f0bc <__multf3+0xd5c>
    f114:	02012783          	lw	a5,32(sp)
    f118:	00f12e23          	sw	a5,28(sp)
    f11c:	e0dff06f          	jal	zero,ef28 <__multf3+0xbc8>
    f120:	04012e23          	sw	zero,92(sp)
    f124:	04012c23          	sw	zero,88(sp)
    f128:	04012a23          	sw	zero,84(sp)
    f12c:	04012823          	sw	zero,80(sp)
    f130:	fff70793          	addi	a5,a4,-1
    f134:	ec1ff06f          	jal	zero,eff4 <__multf3+0xc94>
    f138:	00100713          	addi	a4,zero,1
    f13c:	40f707b3          	sub	a5,a4,a5
    f140:	07400713          	addi	a4,zero,116
    f144:	1af74e63          	blt	a4,a5,f300 <__multf3+0xfa0>
    f148:	4057d893          	srai	a7,a5,0x5
    f14c:	00000713          	addi	a4,zero,0
    f150:	01f7f793          	andi	a5,a5,31
    f154:	00000693          	addi	a3,zero,0
    f158:	00269613          	slli	a2,a3,0x2
    f15c:	03169a63          	bne	a3,a7,f190 <__multf3+0xe30>
    f160:	04079463          	bne	a5,zero,f1a8 <__multf3+0xe48>
    f164:	00300513          	addi	a0,zero,3
    f168:	05010593          	addi	a1,sp,80
    f16c:	40d506b3          	sub	a3,a0,a3
    f170:	00c58533          	add	a0,a1,a2
    f174:	00052503          	lw	a0,0(a0) # 10000 <__subtf3+0xc8c>
    f178:	00178793          	addi	a5,a5,1 # 4001 <_fwalk_reent+0x41>
    f17c:	00458593          	addi	a1,a1,4
    f180:	fea5ae23          	sw	a0,-4(a1)
    f184:	fef6d6e3          	bge	a3,a5,f170 <__multf3+0xe10>
    f188:	00400613          	addi	a2,zero,4
    f18c:	0b80006f          	jal	zero,f244 <__multf3+0xee4>
    f190:	05010593          	addi	a1,sp,80
    f194:	00c58633          	add	a2,a1,a2
    f198:	00062603          	lw	a2,0(a2)
    f19c:	00168693          	addi	a3,a3,1
    f1a0:	00c76733          	or	a4,a4,a2
    f1a4:	fb5ff06f          	jal	zero,f158 <__multf3+0xdf8>
    f1a8:	08010693          	addi	a3,sp,128
    f1ac:	00c686b3          	add	a3,a3,a2
    f1b0:	fd06a683          	lw	a3,-48(a3)
    f1b4:	02000813          	addi	a6,zero,32
    f1b8:	40f80833          	sub	a6,a6,a5
    f1bc:	010696b3          	sll	a3,a3,a6
    f1c0:	00d76733          	or	a4,a4,a3
    f1c4:	05010693          	addi	a3,sp,80
    f1c8:	00c68633          	add	a2,a3,a2
    f1cc:	00300693          	addi	a3,zero,3
    f1d0:	00000513          	addi	a0,zero,0
    f1d4:	411686b3          	sub	a3,a3,a7
    f1d8:	00460613          	addi	a2,a2,4
    f1dc:	02d54463          	blt	a0,a3,f204 <__multf3+0xea4>
    f1e0:	08010613          	addi	a2,sp,128
    f1e4:	00269693          	slli	a3,a3,0x2
    f1e8:	00d606b3          	add	a3,a2,a3
    f1ec:	05c12603          	lw	a2,92(sp)
    f1f0:	00f657b3          	srl	a5,a2,a5
    f1f4:	fcf6a823          	sw	a5,-48(a3)
    f1f8:	00400793          	addi	a5,zero,4
    f1fc:	411787b3          	sub	a5,a5,a7
    f200:	f89ff06f          	jal	zero,f188 <__multf3+0xe28>
    f204:	00251313          	slli	t1,a0,0x2
    f208:	05010593          	addi	a1,sp,80
    f20c:	00658333          	add	t1,a1,t1
    f210:	00062e03          	lw	t3,0(a2)
    f214:	ffc62583          	lw	a1,-4(a2)
    f218:	00150513          	addi	a0,a0,1
    f21c:	010e1e33          	sll	t3,t3,a6
    f220:	00f5d5b3          	srl	a1,a1,a5
    f224:	01c5e5b3          	or	a1,a1,t3
    f228:	00b32023          	sw	a1,0(t1)
    f22c:	fadff06f          	jal	zero,f1d8 <__multf3+0xe78>
    f230:	00279693          	slli	a3,a5,0x2
    f234:	05010593          	addi	a1,sp,80
    f238:	00d586b3          	add	a3,a1,a3
    f23c:	0006a023          	sw	zero,0(a3)
    f240:	00178793          	addi	a5,a5,1
    f244:	fec796e3          	bne	a5,a2,f230 <__multf3+0xed0>
    f248:	05012683          	lw	a3,80(sp)
    f24c:	00e03733          	sltu	a4,zero,a4
    f250:	00d76733          	or	a4,a4,a3
    f254:	04e12823          	sw	a4,80(sp)
    f258:	00777693          	andi	a3,a4,7
    f25c:	04068263          	beq	a3,zero,f2a0 <__multf3+0xf40>
    f260:	00f77693          	andi	a3,a4,15
    f264:	02f68e63          	beq	a3,a5,f2a0 <__multf3+0xf40>
    f268:	05412783          	lw	a5,84(sp)
    f26c:	00470713          	addi	a4,a4,4
    f270:	04e12823          	sw	a4,80(sp)
    f274:	00473713          	sltiu	a4,a4,4
    f278:	00f707b3          	add	a5,a4,a5
    f27c:	00e7b733          	sltu	a4,a5,a4
    f280:	04f12a23          	sw	a5,84(sp)
    f284:	05812783          	lw	a5,88(sp)
    f288:	00f707b3          	add	a5,a4,a5
    f28c:	04f12c23          	sw	a5,88(sp)
    f290:	00e7b7b3          	sltu	a5,a5,a4
    f294:	05c12703          	lw	a4,92(sp)
    f298:	00e787b3          	add	a5,a5,a4
    f29c:	04f12e23          	sw	a5,92(sp)
    f2a0:	05c12783          	lw	a5,92(sp)
    f2a4:	00c79713          	slli	a4,a5,0xc
    f2a8:	00075e63          	bge	a4,zero,f2c4 <__multf3+0xf64>
    f2ac:	04012e23          	sw	zero,92(sp)
    f2b0:	04012c23          	sw	zero,88(sp)
    f2b4:	04012a23          	sw	zero,84(sp)
    f2b8:	04012823          	sw	zero,80(sp)
    f2bc:	00100793          	addi	a5,zero,1
    f2c0:	d35ff06f          	jal	zero,eff4 <__multf3+0xc94>
    f2c4:	05010793          	addi	a5,sp,80
    f2c8:	05c10613          	addi	a2,sp,92
    f2cc:	0007a703          	lw	a4,0(a5)
    f2d0:	0047a683          	lw	a3,4(a5)
    f2d4:	00478793          	addi	a5,a5,4
    f2d8:	00375713          	srli	a4,a4,0x3
    f2dc:	01d69693          	slli	a3,a3,0x1d
    f2e0:	00d76733          	or	a4,a4,a3
    f2e4:	fee7ae23          	sw	a4,-4(a5)
    f2e8:	fef612e3          	bne	a2,a5,f2cc <__multf3+0xf6c>
    f2ec:	05c12783          	lw	a5,92(sp)
    f2f0:	0037d793          	srli	a5,a5,0x3
    f2f4:	04f12e23          	sw	a5,92(sp)
    f2f8:	00000793          	addi	a5,zero,0
    f2fc:	cf9ff06f          	jal	zero,eff4 <__multf3+0xc94>
    f300:	05412783          	lw	a5,84(sp)
    f304:	05012703          	lw	a4,80(sp)
    f308:	00f76733          	or	a4,a4,a5
    f30c:	05812783          	lw	a5,88(sp)
    f310:	00f76733          	or	a4,a4,a5
    f314:	05c12783          	lw	a5,92(sp)
    f318:	00f76733          	or	a4,a4,a5
    f31c:	00000793          	addi	a5,zero,0
    f320:	cc070ae3          	beq	a4,zero,eff4 <__multf3+0xc94>
    f324:	04012e23          	sw	zero,92(sp)
    f328:	04012c23          	sw	zero,88(sp)
    f32c:	04012a23          	sw	zero,84(sp)
    f330:	04012823          	sw	zero,80(sp)
    f334:	cc1ff06f          	jal	zero,eff4 <__multf3+0xc94>
    f338:	000087b7          	lui	a5,0x8
    f33c:	04012e23          	sw	zero,92(sp)
    f340:	04012c23          	sw	zero,88(sp)
    f344:	04012a23          	sw	zero,84(sp)
    f348:	04012823          	sw	zero,80(sp)
    f34c:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    f350:	ca5ff06f          	jal	zero,eff4 <__multf3+0xc94>
    f354:	000087b7          	lui	a5,0x8
    f358:	04f12e23          	sw	a5,92(sp)
    f35c:	04012c23          	sw	zero,88(sp)
    f360:	04012a23          	sw	zero,84(sp)
    f364:	04012823          	sw	zero,80(sp)
    f368:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    f36c:	00012823          	sw	zero,16(sp)
    f370:	c85ff06f          	jal	zero,eff4 <__multf3+0xc94>

0000f374 <__subtf3>:
    f374:	fa010113          	addi	sp,sp,-96
    f378:	0085a783          	lw	a5,8(a1)
    f37c:	05212823          	sw	s2,80(sp)
    f380:	00c5a903          	lw	s2,12(a1)
    f384:	0045a703          	lw	a4,4(a1)
    f388:	04912a23          	sw	s1,84(sp)
    f38c:	00050493          	addi	s1,a0,0
    f390:	0005a503          	lw	a0,0(a1)
    f394:	02f12c23          	sw	a5,56(sp)
    f398:	00f12c23          	sw	a5,24(sp)
    f39c:	00062303          	lw	t1,0(a2)
    f3a0:	01091793          	slli	a5,s2,0x10
    f3a4:	00462883          	lw	a7,4(a2)
    f3a8:	00862683          	lw	a3,8(a2)
    f3ac:	00c62803          	lw	a6,12(a2)
    f3b0:	04812c23          	sw	s0,88(sp)
    f3b4:	0107d793          	srli	a5,a5,0x10
    f3b8:	00191413          	slli	s0,s2,0x1
    f3bc:	03212e23          	sw	s2,60(sp)
    f3c0:	04112e23          	sw	ra,92(sp)
    f3c4:	05312623          	sw	s3,76(sp)
    f3c8:	05412423          	sw	s4,72(sp)
    f3cc:	05512223          	sw	s5,68(sp)
    f3d0:	02a12823          	sw	a0,48(sp)
    f3d4:	02e12a23          	sw	a4,52(sp)
    f3d8:	00a12823          	sw	a0,16(sp)
    f3dc:	00e12a23          	sw	a4,20(sp)
    f3e0:	00f12e23          	sw	a5,28(sp)
    f3e4:	01145413          	srli	s0,s0,0x11
    f3e8:	01f95913          	srli	s2,s2,0x1f
    f3ec:	01010e13          	addi	t3,sp,16
    f3f0:	01c10593          	addi	a1,sp,28
    f3f4:	0005a783          	lw	a5,0(a1)
    f3f8:	ffc5a703          	lw	a4,-4(a1)
    f3fc:	ffc58593          	addi	a1,a1,-4
    f400:	00379793          	slli	a5,a5,0x3
    f404:	01d75713          	srli	a4,a4,0x1d
    f408:	00e7e7b3          	or	a5,a5,a4
    f40c:	00f5a223          	sw	a5,4(a1)
    f410:	febe12e3          	bne	t3,a1,f3f4 <__subtf3+0x80>
    f414:	01012703          	lw	a4,16(sp)
    f418:	01081793          	slli	a5,a6,0x10
    f41c:	00181613          	slli	a2,a6,0x1
    f420:	00371713          	slli	a4,a4,0x3
    f424:	0107d793          	srli	a5,a5,0x10
    f428:	02612823          	sw	t1,48(sp)
    f42c:	03112a23          	sw	a7,52(sp)
    f430:	03012e23          	sw	a6,60(sp)
    f434:	02612023          	sw	t1,32(sp)
    f438:	03112223          	sw	a7,36(sp)
    f43c:	00e12823          	sw	a4,16(sp)
    f440:	02d12c23          	sw	a3,56(sp)
    f444:	02d12423          	sw	a3,40(sp)
    f448:	02f12623          	sw	a5,44(sp)
    f44c:	01165613          	srli	a2,a2,0x11
    f450:	01f85813          	srli	a6,a6,0x1f
    f454:	02010313          	addi	t1,sp,32
    f458:	02c10893          	addi	a7,sp,44
    f45c:	0008a783          	lw	a5,0(a7) # 80000 <__preinit_array_end+0x6cf9c>
    f460:	ffc8a683          	lw	a3,-4(a7)
    f464:	ffc88893          	addi	a7,a7,-4
    f468:	00379793          	slli	a5,a5,0x3
    f46c:	01d6d693          	srli	a3,a3,0x1d
    f470:	00d7e7b3          	or	a5,a5,a3
    f474:	00f8a223          	sw	a5,4(a7)
    f478:	ff1312e3          	bne	t1,a7,f45c <__subtf3+0xe8>
    f47c:	02012783          	lw	a5,32(sp)
    f480:	000086b7          	lui	a3,0x8
    f484:	fff68693          	addi	a3,a3,-1 # 7fff <sprintf+0x13>
    f488:	00379793          	slli	a5,a5,0x3
    f48c:	02f12023          	sw	a5,32(sp)
    f490:	02d61063          	bne	a2,a3,f4b0 <__subtf3+0x13c>
    f494:	02812503          	lw	a0,40(sp)
    f498:	02412683          	lw	a3,36(sp)
    f49c:	00a6e6b3          	or	a3,a3,a0
    f4a0:	02c12503          	lw	a0,44(sp)
    f4a4:	00a6e6b3          	or	a3,a3,a0
    f4a8:	00f6e6b3          	or	a3,a3,a5
    f4ac:	00069463          	bne	a3,zero,f4b4 <__subtf3+0x140>
    f4b0:	00184813          	xori	a6,a6,1
    f4b4:	40c40533          	sub	a0,s0,a2
    f4b8:	152810e3          	bne	a6,s2,fdf8 <__subtf3+0xa84>
    f4bc:	30a05463          	bge	zero,a0,f7c4 <__subtf3+0x450>
    f4c0:	0c061663          	bne	a2,zero,f58c <__subtf3+0x218>
    f4c4:	02412583          	lw	a1,36(sp)
    f4c8:	02812603          	lw	a2,40(sp)
    f4cc:	02c12803          	lw	a6,44(sp)
    f4d0:	00c5e6b3          	or	a3,a1,a2
    f4d4:	0106e6b3          	or	a3,a3,a6
    f4d8:	00f6e6b3          	or	a3,a3,a5
    f4dc:	02069063          	bne	a3,zero,f4fc <__subtf3+0x188>
    f4e0:	01412783          	lw	a5,20(sp)
    f4e4:	02e12823          	sw	a4,48(sp)
    f4e8:	02f12a23          	sw	a5,52(sp)
    f4ec:	01812783          	lw	a5,24(sp)
    f4f0:	02f12c23          	sw	a5,56(sp)
    f4f4:	01c12783          	lw	a5,28(sp)
    f4f8:	30c0006f          	jal	zero,f804 <__subtf3+0x490>
    f4fc:	fff50693          	addi	a3,a0,-1
    f500:	06069063          	bne	a3,zero,f560 <__subtf3+0x1ec>
    f504:	01412683          	lw	a3,20(sp)
    f508:	00f707b3          	add	a5,a4,a5
    f50c:	00e7b733          	sltu	a4,a5,a4
    f510:	00d585b3          	add	a1,a1,a3
    f514:	02f12823          	sw	a5,48(sp)
    f518:	00e587b3          	add	a5,a1,a4
    f51c:	00e7b733          	sltu	a4,a5,a4
    f520:	02f12a23          	sw	a5,52(sp)
    f524:	01812783          	lw	a5,24(sp)
    f528:	00d5b6b3          	sltu	a3,a1,a3
    f52c:	00e6e733          	or	a4,a3,a4
    f530:	00f606b3          	add	a3,a2,a5
    f534:	00e68633          	add	a2,a3,a4
    f538:	00e63733          	sltu	a4,a2,a4
    f53c:	00f6b7b3          	sltu	a5,a3,a5
    f540:	00e7e7b3          	or	a5,a5,a4
    f544:	01c12703          	lw	a4,28(sp)
    f548:	02c12c23          	sw	a2,56(sp)
    f54c:	00e80833          	add	a6,a6,a4
    f550:	010787b3          	add	a5,a5,a6
    f554:	02f12e23          	sw	a5,60(sp)
    f558:	00100413          	addi	s0,zero,1
    f55c:	1dc0006f          	jal	zero,f738 <__subtf3+0x3c4>
    f560:	000087b7          	lui	a5,0x8
    f564:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    f568:	f6f50ce3          	beq	a0,a5,f4e0 <__subtf3+0x16c>
    f56c:	07400793          	addi	a5,zero,116
    f570:	06d7d263          	bge	a5,a3,f5d4 <__subtf3+0x260>
    f574:	00100793          	addi	a5,zero,1
    f578:	02012623          	sw	zero,44(sp)
    f57c:	02012423          	sw	zero,40(sp)
    f580:	02012223          	sw	zero,36(sp)
    f584:	02f12023          	sw	a5,32(sp)
    f588:	1480006f          	jal	zero,f6d0 <__subtf3+0x35c>
    f58c:	000087b7          	lui	a5,0x8
    f590:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    f594:	02f41263          	bne	s0,a5,f5b8 <__subtf3+0x244>
    f598:	01412783          	lw	a5,20(sp)
    f59c:	02e12823          	sw	a4,48(sp)
    f5a0:	02f12a23          	sw	a5,52(sp)
    f5a4:	01812783          	lw	a5,24(sp)
    f5a8:	02f12c23          	sw	a5,56(sp)
    f5ac:	01c12783          	lw	a5,28(sp)
    f5b0:	02f12e23          	sw	a5,60(sp)
    f5b4:	2580006f          	jal	zero,f80c <__subtf3+0x498>
    f5b8:	02c12783          	lw	a5,44(sp)
    f5bc:	00080737          	lui	a4,0x80
    f5c0:	00e7e7b3          	or	a5,a5,a4
    f5c4:	02f12623          	sw	a5,44(sp)
    f5c8:	07400793          	addi	a5,zero,116
    f5cc:	faa7c4e3          	blt	a5,a0,f574 <__subtf3+0x200>
    f5d0:	00050693          	addi	a3,a0,0
    f5d4:	4056de13          	srai	t3,a3,0x5
    f5d8:	01f6f793          	andi	a5,a3,31
    f5dc:	00000613          	addi	a2,zero,0
    f5e0:	00000713          	addi	a4,zero,0
    f5e4:	00271693          	slli	a3,a4,0x2
    f5e8:	03c71863          	bne	a4,t3,f618 <__subtf3+0x2a4>
    f5ec:	04079063          	bne	a5,zero,f62c <__subtf3+0x2b8>
    f5f0:	00300593          	addi	a1,zero,3
    f5f4:	40e58733          	sub	a4,a1,a4
    f5f8:	00d885b3          	add	a1,a7,a3
    f5fc:	0005a583          	lw	a1,0(a1)
    f600:	00178793          	addi	a5,a5,1
    f604:	00488893          	addi	a7,a7,4
    f608:	feb8ae23          	sw	a1,-4(a7)
    f60c:	fef756e3          	bge	a4,a5,f5f8 <__subtf3+0x284>
    f610:	00400693          	addi	a3,zero,4
    f614:	0a80006f          	jal	zero,f6bc <__subtf3+0x348>
    f618:	00d306b3          	add	a3,t1,a3
    f61c:	0006a683          	lw	a3,0(a3)
    f620:	00170713          	addi	a4,a4,1 # 80001 <__preinit_array_end+0x6cf9d>
    f624:	00d66633          	or	a2,a2,a3
    f628:	fbdff06f          	jal	zero,f5e4 <__subtf3+0x270>
    f62c:	04010713          	addi	a4,sp,64
    f630:	00d70733          	add	a4,a4,a3
    f634:	fe072703          	lw	a4,-32(a4)
    f638:	02000813          	addi	a6,zero,32
    f63c:	40f80833          	sub	a6,a6,a5
    f640:	01071733          	sll	a4,a4,a6
    f644:	00e66633          	or	a2,a2,a4
    f648:	00300713          	addi	a4,zero,3
    f64c:	00d306b3          	add	a3,t1,a3
    f650:	00000513          	addi	a0,zero,0
    f654:	41c70733          	sub	a4,a4,t3
    f658:	00468693          	addi	a3,a3,4
    f65c:	02e54463          	blt	a0,a4,f684 <__subtf3+0x310>
    f660:	04010693          	addi	a3,sp,64
    f664:	00271713          	slli	a4,a4,0x2
    f668:	00e68733          	add	a4,a3,a4
    f66c:	02c12683          	lw	a3,44(sp)
    f670:	00f6d7b3          	srl	a5,a3,a5
    f674:	fef72023          	sw	a5,-32(a4)
    f678:	00400793          	addi	a5,zero,4
    f67c:	41c787b3          	sub	a5,a5,t3
    f680:	f91ff06f          	jal	zero,f610 <__subtf3+0x29c>
    f684:	ffc6a583          	lw	a1,-4(a3)
    f688:	0006ae83          	lw	t4,0(a3)
    f68c:	00251893          	slli	a7,a0,0x2
    f690:	00f5d5b3          	srl	a1,a1,a5
    f694:	010e9eb3          	sll	t4,t4,a6
    f698:	011308b3          	add	a7,t1,a7
    f69c:	01d5e5b3          	or	a1,a1,t4
    f6a0:	00b8a023          	sw	a1,0(a7)
    f6a4:	00150513          	addi	a0,a0,1
    f6a8:	fb1ff06f          	jal	zero,f658 <__subtf3+0x2e4>
    f6ac:	00279713          	slli	a4,a5,0x2
    f6b0:	00e30733          	add	a4,t1,a4
    f6b4:	00072023          	sw	zero,0(a4)
    f6b8:	00178793          	addi	a5,a5,1
    f6bc:	fed798e3          	bne	a5,a3,f6ac <__subtf3+0x338>
    f6c0:	02012783          	lw	a5,32(sp)
    f6c4:	00c03633          	sltu	a2,zero,a2
    f6c8:	00c7e633          	or	a2,a5,a2
    f6cc:	02c12023          	sw	a2,32(sp)
    f6d0:	01012683          	lw	a3,16(sp)
    f6d4:	02012783          	lw	a5,32(sp)
    f6d8:	01412703          	lw	a4,20(sp)
    f6dc:	02812583          	lw	a1,40(sp)
    f6e0:	00f687b3          	add	a5,a3,a5
    f6e4:	00d7b6b3          	sltu	a3,a5,a3
    f6e8:	02f12823          	sw	a5,48(sp)
    f6ec:	02412783          	lw	a5,36(sp)
    f6f0:	02c12503          	lw	a0,44(sp)
    f6f4:	00f707b3          	add	a5,a4,a5
    f6f8:	00d78633          	add	a2,a5,a3
    f6fc:	00e7b733          	sltu	a4,a5,a4
    f700:	00d637b3          	sltu	a5,a2,a3
    f704:	00f767b3          	or	a5,a4,a5
    f708:	01812703          	lw	a4,24(sp)
    f70c:	01c12683          	lw	a3,28(sp)
    f710:	02c12a23          	sw	a2,52(sp)
    f714:	00b705b3          	add	a1,a4,a1
    f718:	00f58633          	add	a2,a1,a5
    f71c:	00e5b733          	sltu	a4,a1,a4
    f720:	00f637b3          	sltu	a5,a2,a5
    f724:	00a686b3          	add	a3,a3,a0
    f728:	00f76733          	or	a4,a4,a5
    f72c:	00e68733          	add	a4,a3,a4
    f730:	02c12c23          	sw	a2,56(sp)
    f734:	02e12e23          	sw	a4,60(sp)
    f738:	03c12783          	lw	a5,60(sp)
    f73c:	00c79713          	slli	a4,a5,0xc
    f740:	0c075663          	bge	a4,zero,f80c <__subtf3+0x498>
    f744:	fff80737          	lui	a4,0xfff80
    f748:	fff70713          	addi	a4,a4,-1 # fff7ffff <__heap_top+0xffe7ffff>
    f74c:	00e7f7b3          	and	a5,a5,a4
    f750:	02f12e23          	sw	a5,60(sp)
    f754:	03012783          	lw	a5,48(sp)
    f758:	00140413          	addi	s0,s0,1
    f75c:	03c10593          	addi	a1,sp,60
    f760:	01f79713          	slli	a4,a5,0x1f
    f764:	03010793          	addi	a5,sp,48
    f768:	0007a683          	lw	a3,0(a5)
    f76c:	0047a603          	lw	a2,4(a5)
    f770:	00478793          	addi	a5,a5,4
    f774:	0016d693          	srli	a3,a3,0x1
    f778:	01f61613          	slli	a2,a2,0x1f
    f77c:	00c6e6b3          	or	a3,a3,a2
    f780:	fed7ae23          	sw	a3,-4(a5)
    f784:	fef592e3          	bne	a1,a5,f768 <__subtf3+0x3f4>
    f788:	03c12783          	lw	a5,60(sp)
    f78c:	0017d793          	srli	a5,a5,0x1
    f790:	02f12e23          	sw	a5,60(sp)
    f794:	00e037b3          	sltu	a5,zero,a4
    f798:	03012703          	lw	a4,48(sp)
    f79c:	00f767b3          	or	a5,a4,a5
    f7a0:	02f12823          	sw	a5,48(sp)
    f7a4:	000087b7          	lui	a5,0x8
    f7a8:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    f7ac:	06f41063          	bne	s0,a5,f80c <__subtf3+0x498>
    f7b0:	02012e23          	sw	zero,60(sp)
    f7b4:	02012c23          	sw	zero,56(sp)
    f7b8:	02012a23          	sw	zero,52(sp)
    f7bc:	02012823          	sw	zero,48(sp)
    f7c0:	04c0006f          	jal	zero,f80c <__subtf3+0x498>
    f7c4:	40050c63          	beq	a0,zero,fbdc <__subtf3+0x868>
    f7c8:	40860533          	sub	a0,a2,s0
    f7cc:	24041063          	bne	s0,zero,fa0c <__subtf3+0x698>
    f7d0:	01412883          	lw	a7,20(sp)
    f7d4:	01812803          	lw	a6,24(sp)
    f7d8:	01c12303          	lw	t1,28(sp)
    f7dc:	0108e6b3          	or	a3,a7,a6
    f7e0:	0066e6b3          	or	a3,a3,t1
    f7e4:	00e6e6b3          	or	a3,a3,a4
    f7e8:	18069c63          	bne	a3,zero,f980 <__subtf3+0x60c>
    f7ec:	02f12823          	sw	a5,48(sp)
    f7f0:	02412783          	lw	a5,36(sp)
    f7f4:	02f12a23          	sw	a5,52(sp)
    f7f8:	02812783          	lw	a5,40(sp)
    f7fc:	02f12c23          	sw	a5,56(sp)
    f800:	02c12783          	lw	a5,44(sp)
    f804:	02f12e23          	sw	a5,60(sp)
    f808:	00050413          	addi	s0,a0,0
    f80c:	03012783          	lw	a5,48(sp)
    f810:	0077f713          	andi	a4,a5,7
    f814:	04070463          	beq	a4,zero,f85c <__subtf3+0x4e8>
    f818:	00f7f713          	andi	a4,a5,15
    f81c:	00400693          	addi	a3,zero,4
    f820:	02d70e63          	beq	a4,a3,f85c <__subtf3+0x4e8>
    f824:	03412703          	lw	a4,52(sp)
    f828:	00478793          	addi	a5,a5,4
    f82c:	02f12823          	sw	a5,48(sp)
    f830:	0047b793          	sltiu	a5,a5,4
    f834:	00e78733          	add	a4,a5,a4
    f838:	00f737b3          	sltu	a5,a4,a5
    f83c:	02e12a23          	sw	a4,52(sp)
    f840:	03812703          	lw	a4,56(sp)
    f844:	00e78733          	add	a4,a5,a4
    f848:	02e12c23          	sw	a4,56(sp)
    f84c:	00f73733          	sltu	a4,a4,a5
    f850:	03c12783          	lw	a5,60(sp)
    f854:	00f70733          	add	a4,a4,a5
    f858:	02e12e23          	sw	a4,60(sp)
    f85c:	03c12783          	lw	a5,60(sp)
    f860:	00c79713          	slli	a4,a5,0xc
    f864:	02075463          	bge	a4,zero,f88c <__subtf3+0x518>
    f868:	00008737          	lui	a4,0x8
    f86c:	00140413          	addi	s0,s0,1
    f870:	fff70713          	addi	a4,a4,-1 # 7fff <sprintf+0x13>
    f874:	00e41463          	bne	s0,a4,f87c <__subtf3+0x508>
    f878:	0080106f          	jal	zero,10880 <__subtf3+0x150c>
    f87c:	fff80737          	lui	a4,0xfff80
    f880:	fff70713          	addi	a4,a4,-1 # fff7ffff <__heap_top+0xffe7ffff>
    f884:	00e7f7b3          	and	a5,a5,a4
    f888:	02f12e23          	sw	a5,60(sp)
    f88c:	03010793          	addi	a5,sp,48
    f890:	03c10613          	addi	a2,sp,60
    f894:	0007a703          	lw	a4,0(a5)
    f898:	0047a683          	lw	a3,4(a5)
    f89c:	00478793          	addi	a5,a5,4
    f8a0:	00375713          	srli	a4,a4,0x3
    f8a4:	01d69693          	slli	a3,a3,0x1d
    f8a8:	00d76733          	or	a4,a4,a3
    f8ac:	fee7ae23          	sw	a4,-4(a5)
    f8b0:	fef612e3          	bne	a2,a5,f894 <__subtf3+0x520>
    f8b4:	03c12783          	lw	a5,60(sp)
    f8b8:	000086b7          	lui	a3,0x8
    f8bc:	0037d713          	srli	a4,a5,0x3
    f8c0:	02e12e23          	sw	a4,60(sp)
    f8c4:	fff68793          	addi	a5,a3,-1 # 7fff <sprintf+0x13>
    f8c8:	02f41a63          	bne	s0,a5,f8fc <__subtf3+0x588>
    f8cc:	03412603          	lw	a2,52(sp)
    f8d0:	03012783          	lw	a5,48(sp)
    f8d4:	00c7e7b3          	or	a5,a5,a2
    f8d8:	03812603          	lw	a2,56(sp)
    f8dc:	00c7e7b3          	or	a5,a5,a2
    f8e0:	00e7e7b3          	or	a5,a5,a4
    f8e4:	00078c63          	beq	a5,zero,f8fc <__subtf3+0x588>
    f8e8:	02d12e23          	sw	a3,60(sp)
    f8ec:	02012c23          	sw	zero,56(sp)
    f8f0:	02012a23          	sw	zero,52(sp)
    f8f4:	02012823          	sw	zero,48(sp)
    f8f8:	00000913          	addi	s2,zero,0
    f8fc:	03c12783          	lw	a5,60(sp)
    f900:	80010737          	lui	a4,0x80010
    f904:	fff70713          	addi	a4,a4,-1 # 8000ffff <__heap_top+0x7ff0ffff>
    f908:	00f11623          	sh	a5,12(sp)
    f90c:	000087b7          	lui	a5,0x8
    f910:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    f914:	00f47433          	and	s0,s0,a5
    f918:	01041793          	slli	a5,s0,0x10
    f91c:	00c12403          	lw	s0,12(sp)
    f920:	05c12083          	lw	ra,92(sp)
    f924:	00048513          	addi	a0,s1,0
    f928:	00e47433          	and	s0,s0,a4
    f92c:	00f46433          	or	s0,s0,a5
    f930:	01f91793          	slli	a5,s2,0x1f
    f934:	80000937          	lui	s2,0x80000
    f938:	fff94913          	xori	s2,s2,-1
    f93c:	01247433          	and	s0,s0,s2
    f940:	00f46933          	or	s2,s0,a5
    f944:	03012783          	lw	a5,48(sp)
    f948:	05812403          	lw	s0,88(sp)
    f94c:	0124a623          	sw	s2,12(s1)
    f950:	00f4a023          	sw	a5,0(s1)
    f954:	03412783          	lw	a5,52(sp)
    f958:	05012903          	lw	s2,80(sp)
    f95c:	04c12983          	lw	s3,76(sp)
    f960:	00f4a223          	sw	a5,4(s1)
    f964:	03812783          	lw	a5,56(sp)
    f968:	04812a03          	lw	s4,72(sp)
    f96c:	04412a83          	lw	s5,68(sp)
    f970:	00f4a423          	sw	a5,8(s1)
    f974:	05412483          	lw	s1,84(sp)
    f978:	06010113          	addi	sp,sp,96
    f97c:	00008067          	jalr	zero,0(ra)
    f980:	fff50693          	addi	a3,a0,-1
    f984:	04069e63          	bne	a3,zero,f9e0 <__subtf3+0x66c>
    f988:	02412683          	lw	a3,36(sp)
    f98c:	00f70733          	add	a4,a4,a5
    f990:	00f737b3          	sltu	a5,a4,a5
    f994:	00d88633          	add	a2,a7,a3
    f998:	02e12823          	sw	a4,48(sp)
    f99c:	00f60733          	add	a4,a2,a5
    f9a0:	00f737b3          	sltu	a5,a4,a5
    f9a4:	02e12a23          	sw	a4,52(sp)
    f9a8:	02812703          	lw	a4,40(sp)
    f9ac:	00d636b3          	sltu	a3,a2,a3
    f9b0:	00f6e7b3          	or	a5,a3,a5
    f9b4:	00e806b3          	add	a3,a6,a4
    f9b8:	00f68633          	add	a2,a3,a5
    f9bc:	00f637b3          	sltu	a5,a2,a5
    f9c0:	00e6b733          	sltu	a4,a3,a4
    f9c4:	00f76733          	or	a4,a4,a5
    f9c8:	02c12783          	lw	a5,44(sp)
    f9cc:	02c12c23          	sw	a2,56(sp)
    f9d0:	00f30333          	add	t1,t1,a5
    f9d4:	00670733          	add	a4,a4,t1
    f9d8:	02e12e23          	sw	a4,60(sp)
    f9dc:	b7dff06f          	jal	zero,f558 <__subtf3+0x1e4>
    f9e0:	00008737          	lui	a4,0x8
    f9e4:	fff70713          	addi	a4,a4,-1 # 7fff <sprintf+0x13>
    f9e8:	e0e502e3          	beq	a0,a4,f7ec <__subtf3+0x478>
    f9ec:	07400793          	addi	a5,zero,116
    f9f0:	06d7d463          	bge	a5,a3,fa58 <__subtf3+0x6e4>
    f9f4:	00100793          	addi	a5,zero,1
    f9f8:	00012e23          	sw	zero,28(sp)
    f9fc:	00012c23          	sw	zero,24(sp)
    fa00:	00012a23          	sw	zero,20(sp)
    fa04:	00f12823          	sw	a5,16(sp)
    fa08:	1640006f          	jal	zero,fb6c <__subtf3+0x7f8>
    fa0c:	00008737          	lui	a4,0x8
    fa10:	fff70713          	addi	a4,a4,-1 # 7fff <sprintf+0x13>
    fa14:	02e61463          	bne	a2,a4,fa3c <__subtf3+0x6c8>
    fa18:	02f12823          	sw	a5,48(sp)
    fa1c:	02412783          	lw	a5,36(sp)
    fa20:	00060413          	addi	s0,a2,0
    fa24:	02f12a23          	sw	a5,52(sp)
    fa28:	02812783          	lw	a5,40(sp)
    fa2c:	02f12c23          	sw	a5,56(sp)
    fa30:	02c12783          	lw	a5,44(sp)
    fa34:	02f12e23          	sw	a5,60(sp)
    fa38:	dd5ff06f          	jal	zero,f80c <__subtf3+0x498>
    fa3c:	01c12783          	lw	a5,28(sp)
    fa40:	00080737          	lui	a4,0x80
    fa44:	00e7e7b3          	or	a5,a5,a4
    fa48:	00f12e23          	sw	a5,28(sp)
    fa4c:	07400793          	addi	a5,zero,116
    fa50:	faa7c2e3          	blt	a5,a0,f9f4 <__subtf3+0x680>
    fa54:	00050693          	addi	a3,a0,0
    fa58:	02000793          	addi	a5,zero,32
    fa5c:	02f6c533          	div	a0,a3,a5
    fa60:	00000713          	addi	a4,zero,0
    fa64:	02f6e7b3          	rem	a5,a3,a5
    fa68:	00000693          	addi	a3,zero,0
    fa6c:	04a74063          	blt	a4,a0,faac <__subtf3+0x738>
    fa70:	00050813          	addi	a6,a0,0
    fa74:	00055463          	bge	a0,zero,fa7c <__subtf3+0x708>
    fa78:	00000813          	addi	a6,zero,0
    fa7c:	00251713          	slli	a4,a0,0x2
    fa80:	04079263          	bne	a5,zero,fac4 <__subtf3+0x750>
    fa84:	00300813          	addi	a6,zero,3
    fa88:	40a80533          	sub	a0,a6,a0
    fa8c:	00e58833          	add	a6,a1,a4
    fa90:	00082803          	lw	a6,0(a6)
    fa94:	00178793          	addi	a5,a5,1
    fa98:	00458593          	addi	a1,a1,4
    fa9c:	ff05ae23          	sw	a6,-4(a1)
    faa0:	fef556e3          	bge	a0,a5,fa8c <__subtf3+0x718>
    faa4:	00300593          	addi	a1,zero,3
    faa8:	0b00006f          	jal	zero,fb58 <__subtf3+0x7e4>
    faac:	00271813          	slli	a6,a4,0x2
    fab0:	010e0833          	add	a6,t3,a6
    fab4:	00082803          	lw	a6,0(a6)
    fab8:	00170713          	addi	a4,a4,1 # 80001 <__preinit_array_end+0x6cf9d>
    fabc:	0106e6b3          	or	a3,a3,a6
    fac0:	fadff06f          	jal	zero,fa6c <__subtf3+0x6f8>
    fac4:	04010593          	addi	a1,sp,64
    fac8:	00281813          	slli	a6,a6,0x2
    facc:	01058833          	add	a6,a1,a6
    fad0:	fd082583          	lw	a1,-48(a6)
    fad4:	02000313          	addi	t1,zero,32
    fad8:	40f30333          	sub	t1,t1,a5
    fadc:	006595b3          	sll	a1,a1,t1
    fae0:	00b6e6b3          	or	a3,a3,a1
    fae4:	00ee05b3          	add	a1,t3,a4
    fae8:	00300713          	addi	a4,zero,3
    faec:	00000893          	addi	a7,zero,0
    faf0:	40a70733          	sub	a4,a4,a0
    faf4:	00458593          	addi	a1,a1,4
    faf8:	02e8c463          	blt	a7,a4,fb20 <__subtf3+0x7ac>
    fafc:	04010593          	addi	a1,sp,64
    fb00:	00271713          	slli	a4,a4,0x2
    fb04:	00e58733          	add	a4,a1,a4
    fb08:	01c12583          	lw	a1,28(sp)
    fb0c:	00f5d7b3          	srl	a5,a1,a5
    fb10:	fcf72823          	sw	a5,-48(a4)
    fb14:	00400793          	addi	a5,zero,4
    fb18:	40a787b3          	sub	a5,a5,a0
    fb1c:	f89ff06f          	jal	zero,faa4 <__subtf3+0x730>
    fb20:	ffc5a803          	lw	a6,-4(a1)
    fb24:	0005af03          	lw	t5,0(a1)
    fb28:	00289e93          	slli	t4,a7,0x2
    fb2c:	00f85833          	srl	a6,a6,a5
    fb30:	006f1f33          	sll	t5,t5,t1
    fb34:	01de0eb3          	add	t4,t3,t4
    fb38:	01e86833          	or	a6,a6,t5
    fb3c:	010ea023          	sw	a6,0(t4)
    fb40:	00188893          	addi	a7,a7,1
    fb44:	fb1ff06f          	jal	zero,faf4 <__subtf3+0x780>
    fb48:	00279713          	slli	a4,a5,0x2
    fb4c:	00ee0733          	add	a4,t3,a4
    fb50:	00072023          	sw	zero,0(a4)
    fb54:	00178793          	addi	a5,a5,1
    fb58:	fef5d8e3          	bge	a1,a5,fb48 <__subtf3+0x7d4>
    fb5c:	01012783          	lw	a5,16(sp)
    fb60:	00d036b3          	sltu	a3,zero,a3
    fb64:	00d7e6b3          	or	a3,a5,a3
    fb68:	00d12823          	sw	a3,16(sp)
    fb6c:	02012683          	lw	a3,32(sp)
    fb70:	01012783          	lw	a5,16(sp)
    fb74:	02412703          	lw	a4,36(sp)
    fb78:	01812503          	lw	a0,24(sp)
    fb7c:	00f687b3          	add	a5,a3,a5
    fb80:	00d7b6b3          	sltu	a3,a5,a3
    fb84:	02f12823          	sw	a5,48(sp)
    fb88:	01412783          	lw	a5,20(sp)
    fb8c:	01c12803          	lw	a6,28(sp)
    fb90:	00060413          	addi	s0,a2,0
    fb94:	00f707b3          	add	a5,a4,a5
    fb98:	00d785b3          	add	a1,a5,a3
    fb9c:	00e7b733          	sltu	a4,a5,a4
    fba0:	00d5b7b3          	sltu	a5,a1,a3
    fba4:	00f767b3          	or	a5,a4,a5
    fba8:	02812703          	lw	a4,40(sp)
    fbac:	02c12683          	lw	a3,44(sp)
    fbb0:	02b12a23          	sw	a1,52(sp)
    fbb4:	00a70533          	add	a0,a4,a0
    fbb8:	00f505b3          	add	a1,a0,a5
    fbbc:	00e53733          	sltu	a4,a0,a4
    fbc0:	00f5b7b3          	sltu	a5,a1,a5
    fbc4:	010686b3          	add	a3,a3,a6
    fbc8:	00f76733          	or	a4,a4,a5
    fbcc:	00e68733          	add	a4,a3,a4
    fbd0:	02b12c23          	sw	a1,56(sp)
    fbd4:	02e12e23          	sw	a4,60(sp)
    fbd8:	b61ff06f          	jal	zero,f738 <__subtf3+0x3c4>
    fbdc:	00008fb7          	lui	t6,0x8
    fbe0:	00140f13          	addi	t5,s0,1
    fbe4:	ffef8613          	addi	a2,t6,-2 # 7ffe <sprintf+0x12>
    fbe8:	00cf7633          	and	a2,t5,a2
    fbec:	02412683          	lw	a3,36(sp)
    fbf0:	02812583          	lw	a1,40(sp)
    fbf4:	02c12503          	lw	a0,44(sp)
    fbf8:	01412303          	lw	t1,20(sp)
    fbfc:	01812883          	lw	a7,24(sp)
    fc00:	01c12e03          	lw	t3,28(sp)
    fc04:	03010813          	addi	a6,sp,48
    fc08:	03c10e93          	addi	t4,sp,60
    fc0c:	14061663          	bne	a2,zero,fd58 <__subtf3+0x9e4>
    fc10:	01136633          	or	a2,t1,a7
    fc14:	01c66633          	or	a2,a2,t3
    fc18:	00e66633          	or	a2,a2,a4
    fc1c:	0a041663          	bne	s0,zero,fcc8 <__subtf3+0x954>
    fc20:	00061c63          	bne	a2,zero,fc38 <__subtf3+0x8c4>
    fc24:	02f12823          	sw	a5,48(sp)
    fc28:	02d12a23          	sw	a3,52(sp)
    fc2c:	02b12c23          	sw	a1,56(sp)
    fc30:	02a12e23          	sw	a0,60(sp)
    fc34:	bd9ff06f          	jal	zero,f80c <__subtf3+0x498>
    fc38:	00b6e633          	or	a2,a3,a1
    fc3c:	00a66633          	or	a2,a2,a0
    fc40:	00f66633          	or	a2,a2,a5
    fc44:	00061c63          	bne	a2,zero,fc5c <__subtf3+0x8e8>
    fc48:	02e12823          	sw	a4,48(sp)
    fc4c:	02612a23          	sw	t1,52(sp)
    fc50:	03112c23          	sw	a7,56(sp)
    fc54:	03c12e23          	sw	t3,60(sp)
    fc58:	bb5ff06f          	jal	zero,f80c <__subtf3+0x498>
    fc5c:	00f707b3          	add	a5,a4,a5
    fc60:	00e7b733          	sltu	a4,a5,a4
    fc64:	006686b3          	add	a3,a3,t1
    fc68:	02f12823          	sw	a5,48(sp)
    fc6c:	00e687b3          	add	a5,a3,a4
    fc70:	00e7b733          	sltu	a4,a5,a4
    fc74:	0066b6b3          	sltu	a3,a3,t1
    fc78:	00e6e733          	or	a4,a3,a4
    fc7c:	011585b3          	add	a1,a1,a7
    fc80:	02f12a23          	sw	a5,52(sp)
    fc84:	00e587b3          	add	a5,a1,a4
    fc88:	0115b633          	sltu	a2,a1,a7
    fc8c:	00e7b733          	sltu	a4,a5,a4
    fc90:	00e66733          	or	a4,a2,a4
    fc94:	01c50633          	add	a2,a0,t3
    fc98:	00c70633          	add	a2,a4,a2
    fc9c:	02f12c23          	sw	a5,56(sp)
    fca0:	00c61793          	slli	a5,a2,0xc
    fca4:	0007c663          	blt	a5,zero,fcb0 <__subtf3+0x93c>
    fca8:	02c12e23          	sw	a2,60(sp)
    fcac:	b61ff06f          	jal	zero,f80c <__subtf3+0x498>
    fcb0:	fff80737          	lui	a4,0xfff80
    fcb4:	fff70713          	addi	a4,a4,-1 # fff7ffff <__heap_top+0xffe7ffff>
    fcb8:	00e67633          	and	a2,a2,a4
    fcbc:	02c12e23          	sw	a2,60(sp)
    fcc0:	00100413          	addi	s0,zero,1
    fcc4:	b49ff06f          	jal	zero,f80c <__subtf3+0x498>
    fcc8:	00061e63          	bne	a2,zero,fce4 <__subtf3+0x970>
    fccc:	02f12823          	sw	a5,48(sp)
    fcd0:	02d12a23          	sw	a3,52(sp)
    fcd4:	02b12c23          	sw	a1,56(sp)
    fcd8:	02a12e23          	sw	a0,60(sp)
    fcdc:	ffff8413          	addi	s0,t6,-1
    fce0:	b2dff06f          	jal	zero,f80c <__subtf3+0x498>
    fce4:	00b6e633          	or	a2,a3,a1
    fce8:	00a66633          	or	a2,a2,a0
    fcec:	00f667b3          	or	a5,a2,a5
    fcf0:	00079c63          	bne	a5,zero,fd08 <__subtf3+0x994>
    fcf4:	02e12823          	sw	a4,48(sp)
    fcf8:	02612a23          	sw	t1,52(sp)
    fcfc:	03112c23          	sw	a7,56(sp)
    fd00:	03c12e23          	sw	t3,60(sp)
    fd04:	fd9ff06f          	jal	zero,fcdc <__subtf3+0x968>
    fd08:	03f12e23          	sw	t6,60(sp)
    fd0c:	02012c23          	sw	zero,56(sp)
    fd10:	02012a23          	sw	zero,52(sp)
    fd14:	02012823          	sw	zero,48(sp)
    fd18:	000e8793          	addi	a5,t4,0
    fd1c:	0007a703          	lw	a4,0(a5)
    fd20:	ffc7a683          	lw	a3,-4(a5)
    fd24:	ffc78793          	addi	a5,a5,-4
    fd28:	00371713          	slli	a4,a4,0x3
    fd2c:	01d6d693          	srli	a3,a3,0x1d
    fd30:	00d76733          	or	a4,a4,a3
    fd34:	00e7a223          	sw	a4,4(a5)
    fd38:	fef812e3          	bne	a6,a5,fd1c <__subtf3+0x9a8>
    fd3c:	03012783          	lw	a5,48(sp)
    fd40:	00008437          	lui	s0,0x8
    fd44:	00000913          	addi	s2,zero,0
    fd48:	00379793          	slli	a5,a5,0x3
    fd4c:	02f12823          	sw	a5,48(sp)
    fd50:	fff40413          	addi	s0,s0,-1 # 7fff <sprintf+0x13>
    fd54:	ab9ff06f          	jal	zero,f80c <__subtf3+0x498>
    fd58:	00f707b3          	add	a5,a4,a5
    fd5c:	00e7b733          	sltu	a4,a5,a4
    fd60:	006686b3          	add	a3,a3,t1
    fd64:	02f12823          	sw	a5,48(sp)
    fd68:	00e687b3          	add	a5,a3,a4
    fd6c:	00e7b733          	sltu	a4,a5,a4
    fd70:	0066b6b3          	sltu	a3,a3,t1
    fd74:	00e6e733          	or	a4,a3,a4
    fd78:	01158633          	add	a2,a1,a7
    fd7c:	00e606b3          	add	a3,a2,a4
    fd80:	00e6b733          	sltu	a4,a3,a4
    fd84:	01163633          	sltu	a2,a2,a7
    fd88:	00e66633          	or	a2,a2,a4
    fd8c:	01c50733          	add	a4,a0,t3
    fd90:	00e60633          	add	a2,a2,a4
    fd94:	02f12a23          	sw	a5,52(sp)
    fd98:	02d12c23          	sw	a3,56(sp)
    fd9c:	02c12e23          	sw	a2,60(sp)
    fda0:	00080793          	addi	a5,a6,0
    fda4:	0007a703          	lw	a4,0(a5)
    fda8:	0047a683          	lw	a3,4(a5)
    fdac:	00478793          	addi	a5,a5,4
    fdb0:	00175713          	srli	a4,a4,0x1
    fdb4:	01f69693          	slli	a3,a3,0x1f
    fdb8:	00d76733          	or	a4,a4,a3
    fdbc:	fee7ae23          	sw	a4,-4(a5)
    fdc0:	fefe92e3          	bne	t4,a5,fda4 <__subtf3+0xa30>
    fdc4:	000087b7          	lui	a5,0x8
    fdc8:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    fdcc:	00ff0c63          	beq	t5,a5,fde4 <__subtf3+0xa70>
    fdd0:	03c12783          	lw	a5,60(sp)
    fdd4:	0017d793          	srli	a5,a5,0x1
    fdd8:	02f12e23          	sw	a5,60(sp)
    fddc:	000f0413          	addi	s0,t5,0
    fde0:	a2dff06f          	jal	zero,f80c <__subtf3+0x498>
    fde4:	02012e23          	sw	zero,60(sp)
    fde8:	02012c23          	sw	zero,56(sp)
    fdec:	02012a23          	sw	zero,52(sp)
    fdf0:	02012823          	sw	zero,48(sp)
    fdf4:	fe9ff06f          	jal	zero,fddc <__subtf3+0xa68>
    fdf8:	28a05263          	bge	zero,a0,1007c <__subtf3+0xd08>
    fdfc:	0c061263          	bne	a2,zero,fec0 <__subtf3+0xb4c>
    fe00:	02412803          	lw	a6,36(sp)
    fe04:	02812603          	lw	a2,40(sp)
    fe08:	02c12e03          	lw	t3,44(sp)
    fe0c:	00c865b3          	or	a1,a6,a2
    fe10:	01c5e5b3          	or	a1,a1,t3
    fe14:	00f5e5b3          	or	a1,a1,a5
    fe18:	ec058463          	beq	a1,zero,f4e0 <__subtf3+0x16c>
    fe1c:	fff50693          	addi	a3,a0,-1
    fe20:	06069a63          	bne	a3,zero,fe94 <__subtf3+0xb20>
    fe24:	01412883          	lw	a7,20(sp)
    fe28:	40f707b3          	sub	a5,a4,a5
    fe2c:	00f735b3          	sltu	a1,a4,a5
    fe30:	41088533          	sub	a0,a7,a6
    fe34:	00a8b333          	sltu	t1,a7,a0
    fe38:	40b50533          	sub	a0,a0,a1
    fe3c:	02f12823          	sw	a5,48(sp)
    fe40:	02a12a23          	sw	a0,52(sp)
    fe44:	00000593          	addi	a1,zero,0
    fe48:	00f77663          	bgeu	a4,a5,fe54 <__subtf3+0xae0>
    fe4c:	411805b3          	sub	a1,a6,a7
    fe50:	0015b593          	sltiu	a1,a1,1
    fe54:	01812803          	lw	a6,24(sp)
    fe58:	0065e5b3          	or	a1,a1,t1
    fe5c:	40c80533          	sub	a0,a6,a2
    fe60:	00a837b3          	sltu	a5,a6,a0
    fe64:	40b50533          	sub	a0,a0,a1
    fe68:	02a12c23          	sw	a0,56(sp)
    fe6c:	00058663          	beq	a1,zero,fe78 <__subtf3+0xb04>
    fe70:	41060633          	sub	a2,a2,a6
    fe74:	00163693          	sltiu	a3,a2,1
    fe78:	01c12703          	lw	a4,28(sp)
    fe7c:	00f6e7b3          	or	a5,a3,a5
    fe80:	41c70733          	sub	a4,a4,t3
    fe84:	40f707b3          	sub	a5,a4,a5
    fe88:	02f12e23          	sw	a5,60(sp)
    fe8c:	00100413          	addi	s0,zero,1
    fe90:	1cc0006f          	jal	zero,1005c <__subtf3+0xce8>
    fe94:	000087b7          	lui	a5,0x8
    fe98:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    fe9c:	e4f50263          	beq	a0,a5,f4e0 <__subtf3+0x16c>
    fea0:	07400793          	addi	a5,zero,116
    fea4:	04d7d263          	bge	a5,a3,fee8 <__subtf3+0xb74>
    fea8:	00100793          	addi	a5,zero,1
    feac:	02012623          	sw	zero,44(sp)
    feb0:	02012423          	sw	zero,40(sp)
    feb4:	02012223          	sw	zero,36(sp)
    feb8:	02f12023          	sw	a5,32(sp)
    febc:	1280006f          	jal	zero,ffe4 <__subtf3+0xc70>
    fec0:	000087b7          	lui	a5,0x8
    fec4:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
    fec8:	ecf40863          	beq	s0,a5,f598 <__subtf3+0x224>
    fecc:	02c12783          	lw	a5,44(sp)
    fed0:	00080737          	lui	a4,0x80
    fed4:	00e7e7b3          	or	a5,a5,a4
    fed8:	02f12623          	sw	a5,44(sp)
    fedc:	07400793          	addi	a5,zero,116
    fee0:	fca7c4e3          	blt	a5,a0,fea8 <__subtf3+0xb34>
    fee4:	00050693          	addi	a3,a0,0
    fee8:	4056de13          	srai	t3,a3,0x5
    feec:	01f6f793          	andi	a5,a3,31
    fef0:	00000613          	addi	a2,zero,0
    fef4:	00000713          	addi	a4,zero,0
    fef8:	00271693          	slli	a3,a4,0x2
    fefc:	03c71863          	bne	a4,t3,ff2c <__subtf3+0xbb8>
    ff00:	04079063          	bne	a5,zero,ff40 <__subtf3+0xbcc>
    ff04:	00300593          	addi	a1,zero,3
    ff08:	40e58733          	sub	a4,a1,a4
    ff0c:	00d885b3          	add	a1,a7,a3
    ff10:	0005a583          	lw	a1,0(a1)
    ff14:	00178793          	addi	a5,a5,1
    ff18:	00488893          	addi	a7,a7,4
    ff1c:	feb8ae23          	sw	a1,-4(a7)
    ff20:	fef756e3          	bge	a4,a5,ff0c <__subtf3+0xb98>
    ff24:	00400693          	addi	a3,zero,4
    ff28:	0a80006f          	jal	zero,ffd0 <__subtf3+0xc5c>
    ff2c:	00d306b3          	add	a3,t1,a3
    ff30:	0006a683          	lw	a3,0(a3)
    ff34:	00170713          	addi	a4,a4,1 # 80001 <__preinit_array_end+0x6cf9d>
    ff38:	00d66633          	or	a2,a2,a3
    ff3c:	fbdff06f          	jal	zero,fef8 <__subtf3+0xb84>
    ff40:	04010713          	addi	a4,sp,64
    ff44:	00d70733          	add	a4,a4,a3
    ff48:	fe072703          	lw	a4,-32(a4)
    ff4c:	02000813          	addi	a6,zero,32
    ff50:	40f80833          	sub	a6,a6,a5
    ff54:	01071733          	sll	a4,a4,a6
    ff58:	00e66633          	or	a2,a2,a4
    ff5c:	00300713          	addi	a4,zero,3
    ff60:	00d306b3          	add	a3,t1,a3
    ff64:	00000513          	addi	a0,zero,0
    ff68:	41c70733          	sub	a4,a4,t3
    ff6c:	00468693          	addi	a3,a3,4
    ff70:	02e54463          	blt	a0,a4,ff98 <__subtf3+0xc24>
    ff74:	04010693          	addi	a3,sp,64
    ff78:	00271713          	slli	a4,a4,0x2
    ff7c:	00e68733          	add	a4,a3,a4
    ff80:	02c12683          	lw	a3,44(sp)
    ff84:	00f6d7b3          	srl	a5,a3,a5
    ff88:	fef72023          	sw	a5,-32(a4)
    ff8c:	00400793          	addi	a5,zero,4
    ff90:	41c787b3          	sub	a5,a5,t3
    ff94:	f91ff06f          	jal	zero,ff24 <__subtf3+0xbb0>
    ff98:	ffc6a583          	lw	a1,-4(a3)
    ff9c:	0006ae83          	lw	t4,0(a3)
    ffa0:	00251893          	slli	a7,a0,0x2
    ffa4:	00f5d5b3          	srl	a1,a1,a5
    ffa8:	010e9eb3          	sll	t4,t4,a6
    ffac:	011308b3          	add	a7,t1,a7
    ffb0:	01d5e5b3          	or	a1,a1,t4
    ffb4:	00b8a023          	sw	a1,0(a7)
    ffb8:	00150513          	addi	a0,a0,1
    ffbc:	fb1ff06f          	jal	zero,ff6c <__subtf3+0xbf8>
    ffc0:	00279713          	slli	a4,a5,0x2
    ffc4:	00e30733          	add	a4,t1,a4
    ffc8:	00072023          	sw	zero,0(a4)
    ffcc:	00178793          	addi	a5,a5,1
    ffd0:	fed798e3          	bne	a5,a3,ffc0 <__subtf3+0xc4c>
    ffd4:	02012783          	lw	a5,32(sp)
    ffd8:	00c03633          	sltu	a2,zero,a2
    ffdc:	00c7e633          	or	a2,a5,a2
    ffe0:	02c12023          	sw	a2,32(sp)
    ffe4:	01412683          	lw	a3,20(sp)
    ffe8:	01012583          	lw	a1,16(sp)
    ffec:	02012703          	lw	a4,32(sp)
    fff0:	02412783          	lw	a5,36(sp)
    fff4:	40e58733          	sub	a4,a1,a4
    fff8:	40f687b3          	sub	a5,a3,a5
    fffc:	00f6b633          	sltu	a2,a3,a5
   10000:	00e5b6b3          	sltu	a3,a1,a4
   10004:	40d786b3          	sub	a3,a5,a3
   10008:	02d12a23          	sw	a3,52(sp)
   1000c:	02e12823          	sw	a4,48(sp)
   10010:	00000693          	addi	a3,zero,0
   10014:	00e5f463          	bgeu	a1,a4,1001c <__subtf3+0xca8>
   10018:	0017b693          	sltiu	a3,a5,1
   1001c:	00c6e6b3          	or	a3,a3,a2
   10020:	02812703          	lw	a4,40(sp)
   10024:	01812603          	lw	a2,24(sp)
   10028:	40e60733          	sub	a4,a2,a4
   1002c:	40d707b3          	sub	a5,a4,a3
   10030:	02f12c23          	sw	a5,56(sp)
   10034:	00e635b3          	sltu	a1,a2,a4
   10038:	00000613          	addi	a2,zero,0
   1003c:	00068463          	beq	a3,zero,10044 <__subtf3+0xcd0>
   10040:	00173613          	sltiu	a2,a4,1
   10044:	01c12783          	lw	a5,28(sp)
   10048:	02c12703          	lw	a4,44(sp)
   1004c:	00b66633          	or	a2,a2,a1
   10050:	40e787b3          	sub	a5,a5,a4
   10054:	40c787b3          	sub	a5,a5,a2
   10058:	02f12e23          	sw	a5,60(sp)
   1005c:	03c12783          	lw	a5,60(sp)
   10060:	00c79713          	slli	a4,a5,0xc
   10064:	fa075463          	bge	a4,zero,f80c <__subtf3+0x498>
   10068:	00080737          	lui	a4,0x80
   1006c:	fff70713          	addi	a4,a4,-1 # 7ffff <__preinit_array_end+0x6cf9b>
   10070:	00e7f7b3          	and	a5,a5,a4
   10074:	02f12e23          	sw	a5,60(sp)
   10078:	59c0006f          	jal	zero,10614 <__subtf3+0x12a0>
   1007c:	2c050e63          	beq	a0,zero,10358 <__subtf3+0xfe4>
   10080:	408606b3          	sub	a3,a2,s0
   10084:	0e041663          	bne	s0,zero,10170 <__subtf3+0xdfc>
   10088:	01412303          	lw	t1,20(sp)
   1008c:	01812883          	lw	a7,24(sp)
   10090:	01c12f03          	lw	t5,28(sp)
   10094:	01136eb3          	or	t4,t1,a7
   10098:	01eeeeb3          	or	t4,t4,t5
   1009c:	00eeeeb3          	or	t4,t4,a4
   100a0:	020e9663          	bne	t4,zero,100cc <__subtf3+0xd58>
   100a4:	02f12823          	sw	a5,48(sp)
   100a8:	02412783          	lw	a5,36(sp)
   100ac:	00068413          	addi	s0,a3,0
   100b0:	02f12a23          	sw	a5,52(sp)
   100b4:	02812783          	lw	a5,40(sp)
   100b8:	02f12c23          	sw	a5,56(sp)
   100bc:	02c12783          	lw	a5,44(sp)
   100c0:	02f12e23          	sw	a5,60(sp)
   100c4:	00080913          	addi	s2,a6,0
   100c8:	f44ff06f          	jal	zero,f80c <__subtf3+0x498>
   100cc:	fff68513          	addi	a0,a3,-1
   100d0:	06051a63          	bne	a0,zero,10144 <__subtf3+0xdd0>
   100d4:	02412583          	lw	a1,36(sp)
   100d8:	40e78733          	sub	a4,a5,a4
   100dc:	00e7b6b3          	sltu	a3,a5,a4
   100e0:	40658633          	sub	a2,a1,t1
   100e4:	00c5be33          	sltu	t3,a1,a2
   100e8:	40d60633          	sub	a2,a2,a3
   100ec:	02e12823          	sw	a4,48(sp)
   100f0:	02c12a23          	sw	a2,52(sp)
   100f4:	00000693          	addi	a3,zero,0
   100f8:	00e7f663          	bgeu	a5,a4,10104 <__subtf3+0xd90>
   100fc:	40b306b3          	sub	a3,t1,a1
   10100:	0016b693          	sltiu	a3,a3,1
   10104:	02812583          	lw	a1,40(sp)
   10108:	01c6e733          	or	a4,a3,t3
   1010c:	411586b3          	sub	a3,a1,a7
   10110:	00d5b633          	sltu	a2,a1,a3
   10114:	40e686b3          	sub	a3,a3,a4
   10118:	02d12c23          	sw	a3,56(sp)
   1011c:	00070663          	beq	a4,zero,10128 <__subtf3+0xdb4>
   10120:	40b888b3          	sub	a7,a7,a1
   10124:	0018b513          	sltiu	a0,a7,1
   10128:	02c12783          	lw	a5,44(sp)
   1012c:	00c56533          	or	a0,a0,a2
   10130:	00080913          	addi	s2,a6,0
   10134:	41e787b3          	sub	a5,a5,t5
   10138:	40a78533          	sub	a0,a5,a0
   1013c:	02a12e23          	sw	a0,60(sp)
   10140:	d4dff06f          	jal	zero,fe8c <__subtf3+0xb18>
   10144:	00008737          	lui	a4,0x8
   10148:	fff70713          	addi	a4,a4,-1 # 7fff <sprintf+0x13>
   1014c:	f4e68ce3          	beq	a3,a4,100a4 <__subtf3+0xd30>
   10150:	07400793          	addi	a5,zero,116
   10154:	0aa7dc63          	bge	a5,a0,1020c <__subtf3+0xe98>
   10158:	00100793          	addi	a5,zero,1
   1015c:	00012e23          	sw	zero,28(sp)
   10160:	00012c23          	sw	zero,24(sp)
   10164:	00012a23          	sw	zero,20(sp)
   10168:	00f12823          	sw	a5,16(sp)
   1016c:	1680006f          	jal	zero,102d4 <__subtf3+0xf60>
   10170:	00008737          	lui	a4,0x8
   10174:	fff70713          	addi	a4,a4,-1 # 7fff <sprintf+0x13>
   10178:	02e61463          	bne	a2,a4,101a0 <__subtf3+0xe2c>
   1017c:	02f12823          	sw	a5,48(sp)
   10180:	02412783          	lw	a5,36(sp)
   10184:	00060413          	addi	s0,a2,0
   10188:	02f12a23          	sw	a5,52(sp)
   1018c:	02812783          	lw	a5,40(sp)
   10190:	02f12c23          	sw	a5,56(sp)
   10194:	02c12783          	lw	a5,44(sp)
   10198:	02f12e23          	sw	a5,60(sp)
   1019c:	f29ff06f          	jal	zero,100c4 <__subtf3+0xd50>
   101a0:	01c12783          	lw	a5,28(sp)
   101a4:	00080737          	lui	a4,0x80
   101a8:	00e7e7b3          	or	a5,a5,a4
   101ac:	00f12e23          	sw	a5,28(sp)
   101b0:	07400793          	addi	a5,zero,116
   101b4:	fad7c2e3          	blt	a5,a3,10158 <__subtf3+0xde4>
   101b8:	02000793          	addi	a5,zero,32
   101bc:	02f6c533          	div	a0,a3,a5
   101c0:	00000713          	addi	a4,zero,0
   101c4:	02f6e7b3          	rem	a5,a3,a5
   101c8:	00000693          	addi	a3,zero,0
   101cc:	04a74463          	blt	a4,a0,10214 <__subtf3+0xea0>
   101d0:	00050893          	addi	a7,a0,0
   101d4:	00055463          	bge	a0,zero,101dc <__subtf3+0xe68>
   101d8:	00000893          	addi	a7,zero,0
   101dc:	00251713          	slli	a4,a0,0x2
   101e0:	04079663          	bne	a5,zero,1022c <__subtf3+0xeb8>
   101e4:	00300893          	addi	a7,zero,3
   101e8:	40a88533          	sub	a0,a7,a0
   101ec:	00e588b3          	add	a7,a1,a4
   101f0:	0008a883          	lw	a7,0(a7)
   101f4:	00178793          	addi	a5,a5,1
   101f8:	00458593          	addi	a1,a1,4
   101fc:	ff15ae23          	sw	a7,-4(a1)
   10200:	fef556e3          	bge	a0,a5,101ec <__subtf3+0xe78>
   10204:	00300593          	addi	a1,zero,3
   10208:	0b80006f          	jal	zero,102c0 <__subtf3+0xf4c>
   1020c:	00050693          	addi	a3,a0,0
   10210:	fa9ff06f          	jal	zero,101b8 <__subtf3+0xe44>
   10214:	00271893          	slli	a7,a4,0x2
   10218:	011e08b3          	add	a7,t3,a7
   1021c:	0008a883          	lw	a7,0(a7)
   10220:	00170713          	addi	a4,a4,1 # 80001 <__preinit_array_end+0x6cf9d>
   10224:	0116e6b3          	or	a3,a3,a7
   10228:	fa5ff06f          	jal	zero,101cc <__subtf3+0xe58>
   1022c:	04010593          	addi	a1,sp,64
   10230:	00289893          	slli	a7,a7,0x2
   10234:	011588b3          	add	a7,a1,a7
   10238:	fd08a583          	lw	a1,-48(a7)
   1023c:	02000e93          	addi	t4,zero,32
   10240:	40fe8eb3          	sub	t4,t4,a5
   10244:	01d595b3          	sll	a1,a1,t4
   10248:	00b6e6b3          	or	a3,a3,a1
   1024c:	00ee05b3          	add	a1,t3,a4
   10250:	00300713          	addi	a4,zero,3
   10254:	00000313          	addi	t1,zero,0
   10258:	40a70733          	sub	a4,a4,a0
   1025c:	00458593          	addi	a1,a1,4
   10260:	02e34463          	blt	t1,a4,10288 <__subtf3+0xf14>
   10264:	04010593          	addi	a1,sp,64
   10268:	00271713          	slli	a4,a4,0x2
   1026c:	00e58733          	add	a4,a1,a4
   10270:	01c12583          	lw	a1,28(sp)
   10274:	00f5d7b3          	srl	a5,a1,a5
   10278:	fcf72823          	sw	a5,-48(a4)
   1027c:	00400793          	addi	a5,zero,4
   10280:	40a787b3          	sub	a5,a5,a0
   10284:	f81ff06f          	jal	zero,10204 <__subtf3+0xe90>
   10288:	ffc5a883          	lw	a7,-4(a1)
   1028c:	0005af83          	lw	t6,0(a1)
   10290:	00231f13          	slli	t5,t1,0x2
   10294:	00f8d8b3          	srl	a7,a7,a5
   10298:	01df9fb3          	sll	t6,t6,t4
   1029c:	01ee0f33          	add	t5,t3,t5
   102a0:	01f8e8b3          	or	a7,a7,t6
   102a4:	011f2023          	sw	a7,0(t5)
   102a8:	00130313          	addi	t1,t1,1
   102ac:	fb1ff06f          	jal	zero,1025c <__subtf3+0xee8>
   102b0:	00279713          	slli	a4,a5,0x2
   102b4:	00ee0733          	add	a4,t3,a4
   102b8:	00072023          	sw	zero,0(a4)
   102bc:	00178793          	addi	a5,a5,1
   102c0:	fef5d8e3          	bge	a1,a5,102b0 <__subtf3+0xf3c>
   102c4:	01012783          	lw	a5,16(sp)
   102c8:	00d036b3          	sltu	a3,zero,a3
   102cc:	00d7e6b3          	or	a3,a5,a3
   102d0:	00d12823          	sw	a3,16(sp)
   102d4:	02412683          	lw	a3,36(sp)
   102d8:	02012503          	lw	a0,32(sp)
   102dc:	01012703          	lw	a4,16(sp)
   102e0:	01412783          	lw	a5,20(sp)
   102e4:	40e50733          	sub	a4,a0,a4
   102e8:	40f687b3          	sub	a5,a3,a5
   102ec:	00f6b5b3          	sltu	a1,a3,a5
   102f0:	00e536b3          	sltu	a3,a0,a4
   102f4:	40d786b3          	sub	a3,a5,a3
   102f8:	02d12a23          	sw	a3,52(sp)
   102fc:	02e12823          	sw	a4,48(sp)
   10300:	00000693          	addi	a3,zero,0
   10304:	00e57463          	bgeu	a0,a4,1030c <__subtf3+0xf98>
   10308:	0017b693          	sltiu	a3,a5,1
   1030c:	00b6e6b3          	or	a3,a3,a1
   10310:	01812703          	lw	a4,24(sp)
   10314:	02812583          	lw	a1,40(sp)
   10318:	40e58733          	sub	a4,a1,a4
   1031c:	40d707b3          	sub	a5,a4,a3
   10320:	02f12c23          	sw	a5,56(sp)
   10324:	00e5b533          	sltu	a0,a1,a4
   10328:	00000593          	addi	a1,zero,0
   1032c:	00068463          	beq	a3,zero,10334 <__subtf3+0xfc0>
   10330:	00173593          	sltiu	a1,a4,1
   10334:	02c12783          	lw	a5,44(sp)
   10338:	01c12703          	lw	a4,28(sp)
   1033c:	00a5e5b3          	or	a1,a1,a0
   10340:	00060413          	addi	s0,a2,0
   10344:	40e787b3          	sub	a5,a5,a4
   10348:	40b787b3          	sub	a5,a5,a1
   1034c:	02f12e23          	sw	a5,60(sp)
   10350:	00080913          	addi	s2,a6,0
   10354:	d09ff06f          	jal	zero,1005c <__subtf3+0xce8>
   10358:	00008fb7          	lui	t6,0x8
   1035c:	ffef8693          	addi	a3,t6,-2 # 7ffe <sprintf+0x12>
   10360:	00140593          	addi	a1,s0,1
   10364:	00d5f5b3          	and	a1,a1,a3
   10368:	02412603          	lw	a2,36(sp)
   1036c:	01412683          	lw	a3,20(sp)
   10370:	01812883          	lw	a7,24(sp)
   10374:	01c12e83          	lw	t4,28(sp)
   10378:	02812303          	lw	t1,40(sp)
   1037c:	02c12e03          	lw	t3,44(sp)
   10380:	1c059c63          	bne	a1,zero,10558 <__subtf3+0x11e4>
   10384:	006665b3          	or	a1,a2,t1
   10388:	0116ef33          	or	t5,a3,a7
   1038c:	01c5e5b3          	or	a1,a1,t3
   10390:	01df6f33          	or	t5,t5,t4
   10394:	00f5e5b3          	or	a1,a1,a5
   10398:	00ef6f33          	or	t5,t5,a4
   1039c:	10041863          	bne	s0,zero,104ac <__subtf3+0x1138>
   103a0:	020f1463          	bne	t5,zero,103c8 <__subtf3+0x1054>
   103a4:	02f12823          	sw	a5,48(sp)
   103a8:	02c12a23          	sw	a2,52(sp)
   103ac:	02612c23          	sw	t1,56(sp)
   103b0:	03c12e23          	sw	t3,60(sp)
   103b4:	00080913          	addi	s2,a6,0
   103b8:	c4059a63          	bne	a1,zero,f80c <__subtf3+0x498>
   103bc:	00000413          	addi	s0,zero,0
   103c0:	00000913          	addi	s2,zero,0
   103c4:	c48ff06f          	jal	zero,f80c <__subtf3+0x498>
   103c8:	00059c63          	bne	a1,zero,103e0 <__subtf3+0x106c>
   103cc:	02e12823          	sw	a4,48(sp)
   103d0:	02d12a23          	sw	a3,52(sp)
   103d4:	03112c23          	sw	a7,56(sp)
   103d8:	03d12e23          	sw	t4,60(sp)
   103dc:	c30ff06f          	jal	zero,f80c <__subtf3+0x498>
   103e0:	40f705b3          	sub	a1,a4,a5
   103e4:	40c682b3          	sub	t0,a3,a2
   103e8:	00b73fb3          	sltu	t6,a4,a1
   103ec:	0056bf33          	sltu	t5,a3,t0
   103f0:	41f282b3          	sub	t0,t0,t6
   103f4:	02b12823          	sw	a1,48(sp)
   103f8:	02512a23          	sw	t0,52(sp)
   103fc:	00000f93          	addi	t6,zero,0
   10400:	00b77663          	bgeu	a4,a1,1040c <__subtf3+0x1098>
   10404:	40d60fb3          	sub	t6,a2,a3
   10408:	001fbf93          	sltiu	t6,t6,1
   1040c:	406883b3          	sub	t2,a7,t1
   10410:	01efefb3          	or	t6,t6,t5
   10414:	41f38a33          	sub	s4,t2,t6
   10418:	03412c23          	sw	s4,56(sp)
   1041c:	0078bab3          	sltu	s5,a7,t2
   10420:	00000993          	addi	s3,zero,0
   10424:	000f8463          	beq	t6,zero,1042c <__subtf3+0x10b8>
   10428:	0013b993          	sltiu	s3,t2,1
   1042c:	41ce8f33          	sub	t5,t4,t3
   10430:	0159e9b3          	or	s3,s3,s5
   10434:	413f0f33          	sub	t5,t5,s3
   10438:	03e12e23          	sw	t5,60(sp)
   1043c:	00cf1f93          	slli	t6,t5,0xc
   10440:	040fde63          	bge	t6,zero,1049c <__subtf3+0x1128>
   10444:	40e78733          	sub	a4,a5,a4
   10448:	40d606b3          	sub	a3,a2,a3
   1044c:	00e7b5b3          	sltu	a1,a5,a4
   10450:	40b685b3          	sub	a1,a3,a1
   10454:	02b12a23          	sw	a1,52(sp)
   10458:	02e12823          	sw	a4,48(sp)
   1045c:	00d63633          	sltu	a2,a2,a3
   10460:	00000593          	addi	a1,zero,0
   10464:	00e7f463          	bgeu	a5,a4,1046c <__subtf3+0x10f8>
   10468:	0016b593          	sltiu	a1,a3,1
   1046c:	41130733          	sub	a4,t1,a7
   10470:	00c5e633          	or	a2,a1,a2
   10474:	00e337b3          	sltu	a5,t1,a4
   10478:	40c70733          	sub	a4,a4,a2
   1047c:	02e12c23          	sw	a4,56(sp)
   10480:	00060463          	beq	a2,zero,10488 <__subtf3+0x1114>
   10484:	0013b513          	sltiu	a0,t2,1
   10488:	41de0733          	sub	a4,t3,t4
   1048c:	00f567b3          	or	a5,a0,a5
   10490:	40f70e33          	sub	t3,a4,a5
   10494:	03c12e23          	sw	t3,60(sp)
   10498:	c2dff06f          	jal	zero,100c4 <__subtf3+0xd50>
   1049c:	0055e5b3          	or	a1,a1,t0
   104a0:	0145e5b3          	or	a1,a1,s4
   104a4:	01e5e5b3          	or	a1,a1,t5
   104a8:	f11ff06f          	jal	zero,103b8 <__subtf3+0x1044>
   104ac:	03010513          	addi	a0,sp,48
   104b0:	040f1c63          	bne	t5,zero,10508 <__subtf3+0x1194>
   104b4:	02059e63          	bne	a1,zero,104f0 <__subtf3+0x117c>
   104b8:	03f12e23          	sw	t6,60(sp)
   104bc:	02012c23          	sw	zero,56(sp)
   104c0:	02012a23          	sw	zero,52(sp)
   104c4:	02012823          	sw	zero,48(sp)
   104c8:	03c10793          	addi	a5,sp,60
   104cc:	0007a703          	lw	a4,0(a5)
   104d0:	ffc7a683          	lw	a3,-4(a5)
   104d4:	ffc78793          	addi	a5,a5,-4
   104d8:	00371713          	slli	a4,a4,0x3
   104dc:	01d6d693          	srli	a3,a3,0x1d
   104e0:	00d76733          	or	a4,a4,a3
   104e4:	00e7a223          	sw	a4,4(a5)
   104e8:	fef512e3          	bne	a0,a5,104cc <__subtf3+0x1158>
   104ec:	851ff06f          	jal	zero,fd3c <__subtf3+0x9c8>
   104f0:	02f12823          	sw	a5,48(sp)
   104f4:	02c12a23          	sw	a2,52(sp)
   104f8:	02612c23          	sw	t1,56(sp)
   104fc:	03c12e23          	sw	t3,60(sp)
   10500:	00080913          	addi	s2,a6,0
   10504:	fd8ff06f          	jal	zero,fcdc <__subtf3+0x968>
   10508:	00059c63          	bne	a1,zero,10520 <__subtf3+0x11ac>
   1050c:	02e12823          	sw	a4,48(sp)
   10510:	02d12a23          	sw	a3,52(sp)
   10514:	03112c23          	sw	a7,56(sp)
   10518:	03d12e23          	sw	t4,60(sp)
   1051c:	fc0ff06f          	jal	zero,fcdc <__subtf3+0x968>
   10520:	03f12e23          	sw	t6,60(sp)
   10524:	02012c23          	sw	zero,56(sp)
   10528:	02012a23          	sw	zero,52(sp)
   1052c:	02012823          	sw	zero,48(sp)
   10530:	03c10793          	addi	a5,sp,60
   10534:	0007a703          	lw	a4,0(a5)
   10538:	ffc7a683          	lw	a3,-4(a5)
   1053c:	ffc78793          	addi	a5,a5,-4
   10540:	00371713          	slli	a4,a4,0x3
   10544:	01d6d693          	srli	a3,a3,0x1d
   10548:	00d76733          	or	a4,a4,a3
   1054c:	00e7a223          	sw	a4,4(a5)
   10550:	fef512e3          	bne	a0,a5,10534 <__subtf3+0x11c0>
   10554:	fe8ff06f          	jal	zero,fd3c <__subtf3+0x9c8>
   10558:	40f705b3          	sub	a1,a4,a5
   1055c:	40c682b3          	sub	t0,a3,a2
   10560:	00b73fb3          	sltu	t6,a4,a1
   10564:	0056bf33          	sltu	t5,a3,t0
   10568:	41f282b3          	sub	t0,t0,t6
   1056c:	02b12823          	sw	a1,48(sp)
   10570:	02512a23          	sw	t0,52(sp)
   10574:	00000f93          	addi	t6,zero,0
   10578:	00b77663          	bgeu	a4,a1,10584 <__subtf3+0x1210>
   1057c:	40d60fb3          	sub	t6,a2,a3
   10580:	001fbf93          	sltiu	t6,t6,1
   10584:	406883b3          	sub	t2,a7,t1
   10588:	01efefb3          	or	t6,t6,t5
   1058c:	41f38a33          	sub	s4,t2,t6
   10590:	03412c23          	sw	s4,56(sp)
   10594:	0078bab3          	sltu	s5,a7,t2
   10598:	00000993          	addi	s3,zero,0
   1059c:	000f8463          	beq	t6,zero,105a4 <__subtf3+0x1230>
   105a0:	0013b993          	sltiu	s3,t2,1
   105a4:	41ce8f33          	sub	t5,t4,t3
   105a8:	0159e9b3          	or	s3,s3,s5
   105ac:	413f0f33          	sub	t5,t5,s3
   105b0:	03e12e23          	sw	t5,60(sp)
   105b4:	00cf1f93          	slli	t6,t5,0xc
   105b8:	0a0fde63          	bge	t6,zero,10674 <__subtf3+0x1300>
   105bc:	40e78733          	sub	a4,a5,a4
   105c0:	40d606b3          	sub	a3,a2,a3
   105c4:	00e7b5b3          	sltu	a1,a5,a4
   105c8:	40b685b3          	sub	a1,a3,a1
   105cc:	02b12a23          	sw	a1,52(sp)
   105d0:	02e12823          	sw	a4,48(sp)
   105d4:	00d63633          	sltu	a2,a2,a3
   105d8:	00000593          	addi	a1,zero,0
   105dc:	00e7f463          	bgeu	a5,a4,105e4 <__subtf3+0x1270>
   105e0:	0016b593          	sltiu	a1,a3,1
   105e4:	41130733          	sub	a4,t1,a7
   105e8:	00c5e633          	or	a2,a1,a2
   105ec:	00e336b3          	sltu	a3,t1,a4
   105f0:	40c70733          	sub	a4,a4,a2
   105f4:	02e12c23          	sw	a4,56(sp)
   105f8:	00060463          	beq	a2,zero,10600 <__subtf3+0x128c>
   105fc:	0013b513          	sltiu	a0,t2,1
   10600:	41de0733          	sub	a4,t3,t4
   10604:	00d567b3          	or	a5,a0,a3
   10608:	40f707b3          	sub	a5,a4,a5
   1060c:	02f12e23          	sw	a5,60(sp)
   10610:	00080913          	addi	s2,a6,0
   10614:	03c12503          	lw	a0,60(sp)
   10618:	06050863          	beq	a0,zero,10688 <__subtf3+0x1314>
   1061c:	2c5000ef          	jal	ra,110e0 <__clzsi2>
   10620:	ff450513          	addi	a0,a0,-12
   10624:	02000693          	addi	a3,zero,32
   10628:	02d56833          	rem	a6,a0,a3
   1062c:	02d547b3          	div	a5,a0,a3
   10630:	08080863          	beq	a6,zero,106c0 <__subtf3+0x134c>
   10634:	ffc00713          	addi	a4,zero,-4
   10638:	03010313          	addi	t1,sp,48
   1063c:	00279593          	slli	a1,a5,0x2
   10640:	410686b3          	sub	a3,a3,a6
   10644:	02e78733          	mul	a4,a5,a4
   10648:	00c70713          	addi	a4,a4,12
   1064c:	00e30733          	add	a4,t1,a4
   10650:	0ae31063          	bne	t1,a4,106f0 <__subtf3+0x137c>
   10654:	04010713          	addi	a4,sp,64
   10658:	00b705b3          	add	a1,a4,a1
   1065c:	03012703          	lw	a4,48(sp)
   10660:	fff78793          	addi	a5,a5,-1
   10664:	01071833          	sll	a6,a4,a6
   10668:	ff05a823          	sw	a6,-16(a1)
   1066c:	fff00693          	addi	a3,zero,-1
   10670:	0b80006f          	jal	zero,10728 <__subtf3+0x13b4>
   10674:	0055e5b3          	or	a1,a1,t0
   10678:	0145e5b3          	or	a1,a1,s4
   1067c:	01e5e5b3          	or	a1,a1,t5
   10680:	d2058ee3          	beq	a1,zero,103bc <__subtf3+0x1048>
   10684:	f91ff06f          	jal	zero,10614 <__subtf3+0x12a0>
   10688:	03812503          	lw	a0,56(sp)
   1068c:	00050863          	beq	a0,zero,1069c <__subtf3+0x1328>
   10690:	251000ef          	jal	ra,110e0 <__clzsi2>
   10694:	02050513          	addi	a0,a0,32
   10698:	f89ff06f          	jal	zero,10620 <__subtf3+0x12ac>
   1069c:	03412503          	lw	a0,52(sp)
   106a0:	00050863          	beq	a0,zero,106b0 <__subtf3+0x133c>
   106a4:	23d000ef          	jal	ra,110e0 <__clzsi2>
   106a8:	04050513          	addi	a0,a0,64
   106ac:	f75ff06f          	jal	zero,10620 <__subtf3+0x12ac>
   106b0:	03012503          	lw	a0,48(sp)
   106b4:	22d000ef          	jal	ra,110e0 <__clzsi2>
   106b8:	06050513          	addi	a0,a0,96
   106bc:	f65ff06f          	jal	zero,10620 <__subtf3+0x12ac>
   106c0:	ffc00613          	addi	a2,zero,-4
   106c4:	02c78633          	mul	a2,a5,a2
   106c8:	03c10713          	addi	a4,sp,60
   106cc:	00300693          	addi	a3,zero,3
   106d0:	00c705b3          	add	a1,a4,a2
   106d4:	0005a583          	lw	a1,0(a1)
   106d8:	fff68693          	addi	a3,a3,-1
   106dc:	ffc70713          	addi	a4,a4,-4
   106e0:	00b72223          	sw	a1,4(a4)
   106e4:	fef6d6e3          	bge	a3,a5,106d0 <__subtf3+0x135c>
   106e8:	fff78793          	addi	a5,a5,-1
   106ec:	f81ff06f          	jal	zero,1066c <__subtf3+0x12f8>
   106f0:	ffc72603          	lw	a2,-4(a4)
   106f4:	00072883          	lw	a7,0(a4)
   106f8:	00b70e33          	add	t3,a4,a1
   106fc:	00d65633          	srl	a2,a2,a3
   10700:	010898b3          	sll	a7,a7,a6
   10704:	01166633          	or	a2,a2,a7
   10708:	00ce2023          	sw	a2,0(t3)
   1070c:	ffc70713          	addi	a4,a4,-4
   10710:	f41ff06f          	jal	zero,10650 <__subtf3+0x12dc>
   10714:	00279713          	slli	a4,a5,0x2
   10718:	03010613          	addi	a2,sp,48
   1071c:	00e60733          	add	a4,a2,a4
   10720:	00072023          	sw	zero,0(a4)
   10724:	fff78793          	addi	a5,a5,-1
   10728:	fed796e3          	bne	a5,a3,10714 <__subtf3+0x13a0>
   1072c:	12854e63          	blt	a0,s0,10868 <__subtf3+0x14f4>
   10730:	40850433          	sub	s0,a0,s0
   10734:	00140413          	addi	s0,s0,1
   10738:	02000793          	addi	a5,zero,32
   1073c:	02f44833          	div	a6,s0,a5
   10740:	00000513          	addi	a0,zero,0
   10744:	00000713          	addi	a4,zero,0
   10748:	02f46433          	rem	s0,s0,a5
   1074c:	05074263          	blt	a4,a6,10790 <__subtf3+0x141c>
   10750:	00080693          	addi	a3,a6,0
   10754:	00085463          	bge	a6,zero,1075c <__subtf3+0x13e8>
   10758:	00000693          	addi	a3,zero,0
   1075c:	00281713          	slli	a4,a6,0x2
   10760:	04041663          	bne	s0,zero,107ac <__subtf3+0x1438>
   10764:	00300793          	addi	a5,zero,3
   10768:	03010693          	addi	a3,sp,48
   1076c:	41078833          	sub	a6,a5,a6
   10770:	00e687b3          	add	a5,a3,a4
   10774:	0007a783          	lw	a5,0(a5)
   10778:	00140413          	addi	s0,s0,1
   1077c:	00468693          	addi	a3,a3,4
   10780:	fef6ae23          	sw	a5,-4(a3)
   10784:	fe8856e3          	bge	a6,s0,10770 <__subtf3+0x13fc>
   10788:	00300713          	addi	a4,zero,3
   1078c:	0c00006f          	jal	zero,1084c <__subtf3+0x14d8>
   10790:	00271793          	slli	a5,a4,0x2
   10794:	03010693          	addi	a3,sp,48
   10798:	00f687b3          	add	a5,a3,a5
   1079c:	0007a783          	lw	a5,0(a5)
   107a0:	00170713          	addi	a4,a4,1
   107a4:	00f56533          	or	a0,a0,a5
   107a8:	fa5ff06f          	jal	zero,1074c <__subtf3+0x13d8>
   107ac:	04010793          	addi	a5,sp,64
   107b0:	00269693          	slli	a3,a3,0x2
   107b4:	00d786b3          	add	a3,a5,a3
   107b8:	ff06a783          	lw	a5,-16(a3)
   107bc:	02000593          	addi	a1,zero,32
   107c0:	408585b3          	sub	a1,a1,s0
   107c4:	00b797b3          	sll	a5,a5,a1
   107c8:	00f56533          	or	a0,a0,a5
   107cc:	03010793          	addi	a5,sp,48
   107d0:	00e78733          	add	a4,a5,a4
   107d4:	00300793          	addi	a5,zero,3
   107d8:	00000613          	addi	a2,zero,0
   107dc:	410787b3          	sub	a5,a5,a6
   107e0:	00470713          	addi	a4,a4,4
   107e4:	02f64463          	blt	a2,a5,1080c <__subtf3+0x1498>
   107e8:	04010713          	addi	a4,sp,64
   107ec:	00279793          	slli	a5,a5,0x2
   107f0:	00f707b3          	add	a5,a4,a5
   107f4:	03c12703          	lw	a4,60(sp)
   107f8:	00875433          	srl	s0,a4,s0
   107fc:	fe87a823          	sw	s0,-16(a5)
   10800:	00400413          	addi	s0,zero,4
   10804:	41040433          	sub	s0,s0,a6
   10808:	f81ff06f          	jal	zero,10788 <__subtf3+0x1414>
   1080c:	00261893          	slli	a7,a2,0x2
   10810:	03010693          	addi	a3,sp,48
   10814:	011688b3          	add	a7,a3,a7
   10818:	00072303          	lw	t1,0(a4)
   1081c:	ffc72683          	lw	a3,-4(a4)
   10820:	00160613          	addi	a2,a2,1
   10824:	00b31333          	sll	t1,t1,a1
   10828:	0086d6b3          	srl	a3,a3,s0
   1082c:	0066e6b3          	or	a3,a3,t1
   10830:	00d8a023          	sw	a3,0(a7)
   10834:	fadff06f          	jal	zero,107e0 <__subtf3+0x146c>
   10838:	00241793          	slli	a5,s0,0x2
   1083c:	03010693          	addi	a3,sp,48
   10840:	00f687b3          	add	a5,a3,a5
   10844:	0007a023          	sw	zero,0(a5)
   10848:	00140413          	addi	s0,s0,1
   1084c:	fe8756e3          	bge	a4,s0,10838 <__subtf3+0x14c4>
   10850:	03012703          	lw	a4,48(sp)
   10854:	00a037b3          	sltu	a5,zero,a0
   10858:	00000413          	addi	s0,zero,0
   1085c:	00f767b3          	or	a5,a4,a5
   10860:	02f12823          	sw	a5,48(sp)
   10864:	fa9fe06f          	jal	zero,f80c <__subtf3+0x498>
   10868:	03c12783          	lw	a5,60(sp)
   1086c:	fff80737          	lui	a4,0xfff80
   10870:	fff70713          	addi	a4,a4,-1 # fff7ffff <__heap_top+0xffe7ffff>
   10874:	40a40433          	sub	s0,s0,a0
   10878:	00e7f7b3          	and	a5,a5,a4
   1087c:	d35fe06f          	jal	zero,f5b0 <__subtf3+0x23c>
   10880:	02012e23          	sw	zero,60(sp)
   10884:	02012c23          	sw	zero,56(sp)
   10888:	02012a23          	sw	zero,52(sp)
   1088c:	02012823          	sw	zero,48(sp)
   10890:	ffdfe06f          	jal	zero,f88c <__subtf3+0x518>

00010894 <__fixtfsi>:
   10894:	00c52703          	lw	a4,12(a0)
   10898:	00852783          	lw	a5,8(a0)
   1089c:	00452683          	lw	a3,4(a0)
   108a0:	00052603          	lw	a2,0(a0)
   108a4:	fe010113          	addi	sp,sp,-32
   108a8:	00f12423          	sw	a5,8(sp)
   108ac:	00e12623          	sw	a4,12(sp)
   108b0:	00f12c23          	sw	a5,24(sp)
   108b4:	01071593          	slli	a1,a4,0x10
   108b8:	00171793          	slli	a5,a4,0x1
   108bc:	01f75813          	srli	a6,a4,0x1f
   108c0:	00004737          	lui	a4,0x4
   108c4:	00d12223          	sw	a3,4(sp)
   108c8:	00d12a23          	sw	a3,20(sp)
   108cc:	00c12023          	sw	a2,0(sp)
   108d0:	0117d693          	srli	a3,a5,0x11
   108d4:	00c12823          	sw	a2,16(sp)
   108d8:	ffe70793          	addi	a5,a4,-2 # 3ffe <_fwalk_reent+0x3e>
   108dc:	00000513          	addi	a0,zero,0
   108e0:	00d7dc63          	bge	a5,a3,108f8 <__fixtfsi+0x64>
   108e4:	01d70793          	addi	a5,a4,29
   108e8:	00d7dc63          	bge	a5,a3,10900 <__fixtfsi+0x6c>
   108ec:	80000537          	lui	a0,0x80000
   108f0:	fff54513          	xori	a0,a0,-1
   108f4:	00a80533          	add	a0,a6,a0
   108f8:	02010113          	addi	sp,sp,32
   108fc:	00008067          	jalr	zero,0(ra)
   10900:	000107b7          	lui	a5,0x10
   10904:	0105d593          	srli	a1,a1,0x10
   10908:	00f5e5b3          	or	a1,a1,a5
   1090c:	06f70793          	addi	a5,a4,111
   10910:	40d787b3          	sub	a5,a5,a3
   10914:	4057d713          	srai	a4,a5,0x5
   10918:	00b12e23          	sw	a1,28(sp)
   1091c:	01f7f793          	andi	a5,a5,31
   10920:	08079863          	bne	a5,zero,109b0 <__fixtfsi+0x11c>
   10924:	00271793          	slli	a5,a4,0x2
   10928:	02010693          	addi	a3,sp,32
   1092c:	00f687b3          	add	a5,a3,a5
   10930:	ff07a783          	lw	a5,-16(a5) # fff0 <__subtf3+0xc7c>
   10934:	00200613          	addi	a2,zero,2
   10938:	00f12823          	sw	a5,16(sp)
   1093c:	00200793          	addi	a5,zero,2
   10940:	00e78463          	beq	a5,a4,10948 <__fixtfsi+0xb4>
   10944:	00100613          	addi	a2,zero,1
   10948:	00400713          	addi	a4,zero,4
   1094c:	00261793          	slli	a5,a2,0x2
   10950:	01010693          	addi	a3,sp,16
   10954:	00f687b3          	add	a5,a3,a5
   10958:	0007a023          	sw	zero,0(a5)
   1095c:	00160613          	addi	a2,a2,1
   10960:	fee616e3          	bne	a2,a4,1094c <__fixtfsi+0xb8>
   10964:	01012503          	lw	a0,16(sp)
   10968:	f80808e3          	beq	a6,zero,108f8 <__fixtfsi+0x64>
   1096c:	40a00533          	sub	a0,zero,a0
   10970:	f89ff06f          	jal	zero,108f8 <__fixtfsi+0x64>
   10974:	ff062683          	lw	a3,-16(a2)
   10978:	ff072303          	lw	t1,-16(a4)
   1097c:	011696b3          	sll	a3,a3,a7
   10980:	00f35333          	srl	t1,t1,a5
   10984:	0066e6b3          	or	a3,a3,t1
   10988:	00d12823          	sw	a3,16(sp)
   1098c:	00100693          	addi	a3,zero,1
   10990:	fea6c2e3          	blt	a3,a0,10974 <__fixtfsi+0xe0>
   10994:	00168613          	addi	a2,a3,1
   10998:	02010713          	addi	a4,sp,32
   1099c:	00269693          	slli	a3,a3,0x2
   109a0:	00d706b3          	add	a3,a4,a3
   109a4:	00f5d7b3          	srl	a5,a1,a5
   109a8:	fef6a823          	sw	a5,-16(a3)
   109ac:	f9dff06f          	jal	zero,10948 <__fixtfsi+0xb4>
   109b0:	00170613          	addi	a2,a4,1
   109b4:	02010893          	addi	a7,sp,32
   109b8:	00300513          	addi	a0,zero,3
   109bc:	00261613          	slli	a2,a2,0x2
   109c0:	40e50533          	sub	a0,a0,a4
   109c4:	00c88633          	add	a2,a7,a2
   109c8:	00271713          	slli	a4,a4,0x2
   109cc:	02000893          	addi	a7,zero,32
   109d0:	02010313          	addi	t1,sp,32
   109d4:	00000693          	addi	a3,zero,0
   109d8:	40f888b3          	sub	a7,a7,a5
   109dc:	00e30733          	add	a4,t1,a4
   109e0:	fb1ff06f          	jal	zero,10990 <__fixtfsi+0xfc>

000109e4 <__floatsitf>:
   109e4:	fd010113          	addi	sp,sp,-48
   109e8:	02912223          	sw	s1,36(sp)
   109ec:	02112623          	sw	ra,44(sp)
   109f0:	02812423          	sw	s0,40(sp)
   109f4:	03212023          	sw	s2,32(sp)
   109f8:	00050493          	addi	s1,a0,0 # 80000000 <__heap_top+0x7ff00000>
   109fc:	16058063          	beq	a1,zero,10b5c <__floatsitf+0x178>
   10a00:	00058413          	addi	s0,a1,0
   10a04:	01f5d913          	srli	s2,a1,0x1f
   10a08:	0005d463          	bge	a1,zero,10a10 <__floatsitf+0x2c>
   10a0c:	40b00433          	sub	s0,zero,a1
   10a10:	00040513          	addi	a0,s0,0
   10a14:	6cc000ef          	jal	ra,110e0 <__clzsi2>
   10a18:	000047b7          	lui	a5,0x4
   10a1c:	01e78793          	addi	a5,a5,30 # 401e <_fwalk_reent+0x5e>
   10a20:	40a787b3          	sub	a5,a5,a0
   10a24:	05150513          	addi	a0,a0,81
   10a28:	00812823          	sw	s0,16(sp)
   10a2c:	00012a23          	sw	zero,20(sp)
   10a30:	00012c23          	sw	zero,24(sp)
   10a34:	00012e23          	sw	zero,28(sp)
   10a38:	01f57593          	andi	a1,a0,31
   10a3c:	04058063          	beq	a1,zero,10a7c <__floatsitf+0x98>
   10a40:	05f00693          	addi	a3,zero,95
   10a44:	00300713          	addi	a4,zero,3
   10a48:	00a6cc63          	blt	a3,a0,10a60 <__floatsitf+0x7c>
   10a4c:	02000713          	addi	a4,zero,32
   10a50:	40b70733          	sub	a4,a4,a1
   10a54:	00e45733          	srl	a4,s0,a4
   10a58:	00e12e23          	sw	a4,28(sp)
   10a5c:	00200713          	addi	a4,zero,2
   10a60:	fff70693          	addi	a3,a4,-1
   10a64:	02010613          	addi	a2,sp,32
   10a68:	00271713          	slli	a4,a4,0x2
   10a6c:	00e60733          	add	a4,a2,a4
   10a70:	00b41433          	sll	s0,s0,a1
   10a74:	fe872823          	sw	s0,-16(a4)
   10a78:	0500006f          	jal	zero,10ac8 <__floatsitf+0xe4>
   10a7c:	40555613          	srai	a2,a0,0x5
   10a80:	00300693          	addi	a3,zero,3
   10a84:	40c686b3          	sub	a3,a3,a2
   10a88:	02010713          	addi	a4,sp,32
   10a8c:	00269693          	slli	a3,a3,0x2
   10a90:	00d706b3          	add	a3,a4,a3
   10a94:	ff06a703          	lw	a4,-16(a3)
   10a98:	00200693          	addi	a3,zero,2
   10a9c:	00e12e23          	sw	a4,28(sp)
   10aa0:	05f00713          	addi	a4,zero,95
   10aa4:	02a74263          	blt	a4,a0,10ac8 <__floatsitf+0xe4>
   10aa8:	00200713          	addi	a4,zero,2
   10aac:	40c70733          	sub	a4,a4,a2
   10ab0:	02010693          	addi	a3,sp,32
   10ab4:	00271713          	slli	a4,a4,0x2
   10ab8:	00e68733          	add	a4,a3,a4
   10abc:	ff072703          	lw	a4,-16(a4)
   10ac0:	00100693          	addi	a3,zero,1
   10ac4:	00e12c23          	sw	a4,24(sp)
   10ac8:	fff00613          	addi	a2,zero,-1
   10acc:	00269713          	slli	a4,a3,0x2
   10ad0:	01010593          	addi	a1,sp,16
   10ad4:	00e58733          	add	a4,a1,a4
   10ad8:	00072023          	sw	zero,0(a4)
   10adc:	fff68693          	addi	a3,a3,-1
   10ae0:	fec696e3          	bne	a3,a2,10acc <__floatsitf+0xe8>
   10ae4:	01c12703          	lw	a4,28(sp)
   10ae8:	800106b7          	lui	a3,0x80010
   10aec:	fff68693          	addi	a3,a3,-1 # 8000ffff <__heap_top+0x7ff0ffff>
   10af0:	00e11623          	sh	a4,12(sp)
   10af4:	00008737          	lui	a4,0x8
   10af8:	fff70713          	addi	a4,a4,-1 # 7fff <sprintf+0x13>
   10afc:	00e7f7b3          	and	a5,a5,a4
   10b00:	01079713          	slli	a4,a5,0x10
   10b04:	00c12783          	lw	a5,12(sp)
   10b08:	01f91913          	slli	s2,s2,0x1f
   10b0c:	02c12083          	lw	ra,44(sp)
   10b10:	00d7f7b3          	and	a5,a5,a3
   10b14:	00e7e7b3          	or	a5,a5,a4
   10b18:	80000737          	lui	a4,0x80000
   10b1c:	fff74713          	xori	a4,a4,-1
   10b20:	00e7f7b3          	and	a5,a5,a4
   10b24:	01012703          	lw	a4,16(sp)
   10b28:	02812403          	lw	s0,40(sp)
   10b2c:	0127e7b3          	or	a5,a5,s2
   10b30:	00e4a023          	sw	a4,0(s1)
   10b34:	01412703          	lw	a4,20(sp)
   10b38:	00f4a623          	sw	a5,12(s1)
   10b3c:	00048513          	addi	a0,s1,0
   10b40:	00e4a223          	sw	a4,4(s1)
   10b44:	01812703          	lw	a4,24(sp)
   10b48:	02012903          	lw	s2,32(sp)
   10b4c:	00e4a423          	sw	a4,8(s1)
   10b50:	02412483          	lw	s1,36(sp)
   10b54:	03010113          	addi	sp,sp,48
   10b58:	00008067          	jalr	zero,0(ra)
   10b5c:	00012e23          	sw	zero,28(sp)
   10b60:	00012c23          	sw	zero,24(sp)
   10b64:	00012a23          	sw	zero,20(sp)
   10b68:	00012823          	sw	zero,16(sp)
   10b6c:	00000793          	addi	a5,zero,0
   10b70:	00000913          	addi	s2,zero,0
   10b74:	f71ff06f          	jal	zero,10ae4 <__floatsitf+0x100>

00010b78 <__extenddftf2>:
   10b78:	00100737          	lui	a4,0x100
   10b7c:	01465793          	srli	a5,a2,0x14
   10b80:	fff70713          	addi	a4,a4,-1 # fffff <__preinit_array_end+0xecf9b>
   10b84:	7ff7f793          	andi	a5,a5,2047
   10b88:	fd010113          	addi	sp,sp,-48
   10b8c:	00c77733          	and	a4,a4,a2
   10b90:	00178693          	addi	a3,a5,1
   10b94:	02812423          	sw	s0,40(sp)
   10b98:	02912223          	sw	s1,36(sp)
   10b9c:	02112623          	sw	ra,44(sp)
   10ba0:	00b12823          	sw	a1,16(sp)
   10ba4:	00e12a23          	sw	a4,20(sp)
   10ba8:	00012e23          	sw	zero,28(sp)
   10bac:	00012c23          	sw	zero,24(sp)
   10bb0:	7fe6f693          	andi	a3,a3,2046
   10bb4:	00050493          	addi	s1,a0,0
   10bb8:	01f65413          	srli	s0,a2,0x1f
   10bbc:	0a068463          	beq	a3,zero,10c64 <__extenddftf2+0xec>
   10bc0:	000046b7          	lui	a3,0x4
   10bc4:	c0068693          	addi	a3,a3,-1024 # 3c00 <__sfvwrite_r+0x140>
   10bc8:	0045d513          	srli	a0,a1,0x4
   10bcc:	00d787b3          	add	a5,a5,a3
   10bd0:	00475693          	srli	a3,a4,0x4
   10bd4:	01c71713          	slli	a4,a4,0x1c
   10bd8:	00a76733          	or	a4,a4,a0
   10bdc:	01c59593          	slli	a1,a1,0x1c
   10be0:	00d12e23          	sw	a3,28(sp)
   10be4:	00e12c23          	sw	a4,24(sp)
   10be8:	00b12a23          	sw	a1,20(sp)
   10bec:	00012823          	sw	zero,16(sp)
   10bf0:	01c12703          	lw	a4,28(sp)
   10bf4:	00008537          	lui	a0,0x8
   10bf8:	fff50513          	addi	a0,a0,-1 # 7fff <sprintf+0x13>
   10bfc:	00e11623          	sh	a4,12(sp)
   10c00:	00c12703          	lw	a4,12(sp)
   10c04:	800106b7          	lui	a3,0x80010
   10c08:	00a7f7b3          	and	a5,a5,a0
   10c0c:	fff68693          	addi	a3,a3,-1 # 8000ffff <__heap_top+0x7ff0ffff>
   10c10:	00d77733          	and	a4,a4,a3
   10c14:	01079793          	slli	a5,a5,0x10
   10c18:	00f767b3          	or	a5,a4,a5
   10c1c:	80000737          	lui	a4,0x80000
   10c20:	fff74713          	xori	a4,a4,-1
   10c24:	00e7f7b3          	and	a5,a5,a4
   10c28:	01f41413          	slli	s0,s0,0x1f
   10c2c:	0087e433          	or	s0,a5,s0
   10c30:	01012783          	lw	a5,16(sp)
   10c34:	0084a623          	sw	s0,12(s1)
   10c38:	02c12083          	lw	ra,44(sp)
   10c3c:	00f4a023          	sw	a5,0(s1)
   10c40:	01412783          	lw	a5,20(sp)
   10c44:	02812403          	lw	s0,40(sp)
   10c48:	00048513          	addi	a0,s1,0
   10c4c:	00f4a223          	sw	a5,4(s1)
   10c50:	01812783          	lw	a5,24(sp)
   10c54:	00f4a423          	sw	a5,8(s1)
   10c58:	02412483          	lw	s1,36(sp)
   10c5c:	03010113          	addi	sp,sp,48
   10c60:	00008067          	jalr	zero,0(ra)
   10c64:	00b76533          	or	a0,a4,a1
   10c68:	0e079663          	bne	a5,zero,10d54 <__extenddftf2+0x1dc>
   10c6c:	f80502e3          	beq	a0,zero,10bf0 <__extenddftf2+0x78>
   10c70:	04070e63          	beq	a4,zero,10ccc <__extenddftf2+0x154>
   10c74:	00070513          	addi	a0,a4,0 # 80000000 <__heap_top+0x7ff00000>
   10c78:	468000ef          	jal	ra,110e0 <__clzsi2>
   10c7c:	03150613          	addi	a2,a0,49
   10c80:	40565713          	srai	a4,a2,0x5
   10c84:	01f67613          	andi	a2,a2,31
   10c88:	04060863          	beq	a2,zero,10cd8 <__extenddftf2+0x160>
   10c8c:	ffc00693          	addi	a3,zero,-4
   10c90:	02d706b3          	mul	a3,a4,a3
   10c94:	01010313          	addi	t1,sp,16
   10c98:	02000793          	addi	a5,zero,32
   10c9c:	00271813          	slli	a6,a4,0x2
   10ca0:	40c787b3          	sub	a5,a5,a2
   10ca4:	00c68693          	addi	a3,a3,12
   10ca8:	00d306b3          	add	a3,t1,a3
   10cac:	08d31263          	bne	t1,a3,10d30 <__extenddftf2+0x1b8>
   10cb0:	02010793          	addi	a5,sp,32
   10cb4:	01078833          	add	a6,a5,a6
   10cb8:	01012783          	lw	a5,16(sp)
   10cbc:	fff70713          	addi	a4,a4,-1
   10cc0:	00c79633          	sll	a2,a5,a2
   10cc4:	fec82823          	sw	a2,-16(a6)
   10cc8:	03c0006f          	jal	zero,10d04 <__extenddftf2+0x18c>
   10ccc:	414000ef          	jal	ra,110e0 <__clzsi2>
   10cd0:	02050513          	addi	a0,a0,32
   10cd4:	fa9ff06f          	jal	zero,10c7c <__extenddftf2+0x104>
   10cd8:	ffc00613          	addi	a2,zero,-4
   10cdc:	02c70633          	mul	a2,a4,a2
   10ce0:	01c10693          	addi	a3,sp,28
   10ce4:	00300793          	addi	a5,zero,3
   10ce8:	00c685b3          	add	a1,a3,a2
   10cec:	0005a583          	lw	a1,0(a1)
   10cf0:	fff78793          	addi	a5,a5,-1
   10cf4:	ffc68693          	addi	a3,a3,-4
   10cf8:	00b6a223          	sw	a1,4(a3)
   10cfc:	fee7d6e3          	bge	a5,a4,10ce8 <__extenddftf2+0x170>
   10d00:	fff70713          	addi	a4,a4,-1
   10d04:	fff00693          	addi	a3,zero,-1
   10d08:	00271793          	slli	a5,a4,0x2
   10d0c:	01010613          	addi	a2,sp,16
   10d10:	00f607b3          	add	a5,a2,a5
   10d14:	0007a023          	sw	zero,0(a5)
   10d18:	fff70713          	addi	a4,a4,-1
   10d1c:	fed716e3          	bne	a4,a3,10d08 <__extenddftf2+0x190>
   10d20:	000047b7          	lui	a5,0x4
   10d24:	c0c78793          	addi	a5,a5,-1012 # 3c0c <__sfvwrite_r+0x14c>
   10d28:	40a787b3          	sub	a5,a5,a0
   10d2c:	ec5ff06f          	jal	zero,10bf0 <__extenddftf2+0x78>
   10d30:	ffc6a583          	lw	a1,-4(a3)
   10d34:	0006a883          	lw	a7,0(a3)
   10d38:	01068e33          	add	t3,a3,a6
   10d3c:	00f5d5b3          	srl	a1,a1,a5
   10d40:	00c898b3          	sll	a7,a7,a2
   10d44:	0115e5b3          	or	a1,a1,a7
   10d48:	00be2023          	sw	a1,0(t3)
   10d4c:	ffc68693          	addi	a3,a3,-4
   10d50:	f5dff06f          	jal	zero,10cac <__extenddftf2+0x134>
   10d54:	000087b7          	lui	a5,0x8
   10d58:	02050863          	beq	a0,zero,10d88 <__extenddftf2+0x210>
   10d5c:	01c71793          	slli	a5,a4,0x1c
   10d60:	0045d693          	srli	a3,a1,0x4
   10d64:	00d7e7b3          	or	a5,a5,a3
   10d68:	00f12c23          	sw	a5,24(sp)
   10d6c:	00475713          	srli	a4,a4,0x4
   10d70:	000087b7          	lui	a5,0x8
   10d74:	01c59593          	slli	a1,a1,0x1c
   10d78:	00f76733          	or	a4,a4,a5
   10d7c:	00b12a23          	sw	a1,20(sp)
   10d80:	00012823          	sw	zero,16(sp)
   10d84:	00e12e23          	sw	a4,28(sp)
   10d88:	fff78793          	addi	a5,a5,-1 # 7fff <sprintf+0x13>
   10d8c:	e65ff06f          	jal	zero,10bf0 <__extenddftf2+0x78>

00010d90 <__trunctfdf2>:
   10d90:	00c52583          	lw	a1,12(a0)
   10d94:	00852783          	lw	a5,8(a0)
   10d98:	00452703          	lw	a4,4(a0)
   10d9c:	fe010113          	addi	sp,sp,-32
   10da0:	00052683          	lw	a3,0(a0)
   10da4:	00f12423          	sw	a5,8(sp)
   10da8:	00f12c23          	sw	a5,24(sp)
   10dac:	01059793          	slli	a5,a1,0x10
   10db0:	00e12223          	sw	a4,4(sp)
   10db4:	00e12a23          	sw	a4,20(sp)
   10db8:	0107d793          	srli	a5,a5,0x10
   10dbc:	00159713          	slli	a4,a1,0x1
   10dc0:	00b12623          	sw	a1,12(sp)
   10dc4:	00d12023          	sw	a3,0(sp)
   10dc8:	00d12823          	sw	a3,16(sp)
   10dcc:	00f12e23          	sw	a5,28(sp)
   10dd0:	01175713          	srli	a4,a4,0x11
   10dd4:	01f5d593          	srli	a1,a1,0x1f
   10dd8:	01010313          	addi	t1,sp,16
   10ddc:	01c10613          	addi	a2,sp,28
   10de0:	00062783          	lw	a5,0(a2)
   10de4:	ffc62683          	lw	a3,-4(a2)
   10de8:	ffc60613          	addi	a2,a2,-4
   10dec:	00379793          	slli	a5,a5,0x3
   10df0:	01d6d693          	srli	a3,a3,0x1d
   10df4:	00d7e7b3          	or	a5,a5,a3
   10df8:	00f62223          	sw	a5,4(a2)
   10dfc:	fec312e3          	bne	t1,a2,10de0 <__trunctfdf2+0x50>
   10e00:	01012683          	lw	a3,16(sp)
   10e04:	00170793          	addi	a5,a4,1
   10e08:	00369513          	slli	a0,a3,0x3
   10e0c:	000086b7          	lui	a3,0x8
   10e10:	ffe68693          	addi	a3,a3,-2 # 7ffe <sprintf+0x12>
   10e14:	00a12823          	sw	a0,16(sp)
   10e18:	00d7f7b3          	and	a5,a5,a3
   10e1c:	1a078a63          	beq	a5,zero,10fd0 <__trunctfdf2+0x240>
   10e20:	ffffc7b7          	lui	a5,0xffffc
   10e24:	40078793          	addi	a5,a5,1024 # ffffc400 <__heap_top+0xffefc400>
   10e28:	00f70733          	add	a4,a4,a5
   10e2c:	7fe00793          	addi	a5,zero,2046
   10e30:	1ee7cc63          	blt	a5,a4,11028 <__trunctfdf2+0x298>
   10e34:	06e05863          	bge	zero,a4,10ea4 <__trunctfdf2+0x114>
   10e38:	01812803          	lw	a6,24(sp)
   10e3c:	01c12603          	lw	a2,28(sp)
   10e40:	01412783          	lw	a5,20(sp)
   10e44:	01c85693          	srli	a3,a6,0x1c
   10e48:	00461613          	slli	a2,a2,0x4
   10e4c:	00d66633          	or	a2,a2,a3
   10e50:	00479693          	slli	a3,a5,0x4
   10e54:	00a6e6b3          	or	a3,a3,a0
   10e58:	01c7d793          	srli	a5,a5,0x1c
   10e5c:	00481813          	slli	a6,a6,0x4
   10e60:	00d036b3          	sltu	a3,zero,a3
   10e64:	0107e7b3          	or	a5,a5,a6
   10e68:	00f6e6b3          	or	a3,a3,a5
   10e6c:	00c12a23          	sw	a2,20(sp)
   10e70:	00d12823          	sw	a3,16(sp)
   10e74:	01012683          	lw	a3,16(sp)
   10e78:	01412783          	lw	a5,20(sp)
   10e7c:	0076f613          	andi	a2,a3,7
   10e80:	1a060a63          	beq	a2,zero,11034 <__trunctfdf2+0x2a4>
   10e84:	00f6f613          	andi	a2,a3,15
   10e88:	00400513          	addi	a0,zero,4
   10e8c:	1aa60463          	beq	a2,a0,11034 <__trunctfdf2+0x2a4>
   10e90:	00468613          	addi	a2,a3,4
   10e94:	00d636b3          	sltu	a3,a2,a3
   10e98:	00d787b3          	add	a5,a5,a3
   10e9c:	00060693          	addi	a3,a2,0
   10ea0:	1940006f          	jal	zero,11034 <__trunctfdf2+0x2a4>
   10ea4:	fcc00793          	addi	a5,zero,-52
   10ea8:	00f75c63          	bge	a4,a5,10ec0 <__trunctfdf2+0x130>
   10eac:	00012a23          	sw	zero,20(sp)
   10eb0:	00100793          	addi	a5,zero,1
   10eb4:	00f12823          	sw	a5,16(sp)
   10eb8:	00000713          	addi	a4,zero,0
   10ebc:	fb9ff06f          	jal	zero,10e74 <__trunctfdf2+0xe4>
   10ec0:	01c12783          	lw	a5,28(sp)
   10ec4:	000806b7          	lui	a3,0x80
   10ec8:	00000e13          	addi	t3,zero,0
   10ecc:	00d7e7b3          	or	a5,a5,a3
   10ed0:	00f12e23          	sw	a5,28(sp)
   10ed4:	03d00793          	addi	a5,zero,61
   10ed8:	40e78733          	sub	a4,a5,a4
   10edc:	40575513          	srai	a0,a4,0x5
   10ee0:	00030693          	addi	a3,t1,0
   10ee4:	01f77713          	andi	a4,a4,31
   10ee8:	00000793          	addi	a5,zero,0
   10eec:	0006a803          	lw	a6,0(a3) # 80000 <__preinit_array_end+0x6cf9c>
   10ef0:	00178793          	addi	a5,a5,1
   10ef4:	00468693          	addi	a3,a3,4
   10ef8:	010e6e33          	or	t3,t3,a6
   10efc:	fef518e3          	bne	a0,a5,10eec <__trunctfdf2+0x15c>
   10f00:	00251693          	slli	a3,a0,0x2
   10f04:	04071663          	bne	a4,zero,10f50 <__trunctfdf2+0x1c0>
   10f08:	00300793          	addi	a5,zero,3
   10f0c:	40a78533          	sub	a0,a5,a0
   10f10:	00d607b3          	add	a5,a2,a3
   10f14:	0007a783          	lw	a5,0(a5)
   10f18:	00170713          	addi	a4,a4,1
   10f1c:	00460613          	addi	a2,a2,4
   10f20:	fef62e23          	sw	a5,-4(a2)
   10f24:	fee556e3          	bge	a0,a4,10f10 <__trunctfdf2+0x180>
   10f28:	00400693          	addi	a3,zero,4
   10f2c:	00271793          	slli	a5,a4,0x2
   10f30:	00f307b3          	add	a5,t1,a5
   10f34:	0007a023          	sw	zero,0(a5)
   10f38:	00170713          	addi	a4,a4,1
   10f3c:	fed718e3          	bne	a4,a3,10f2c <__trunctfdf2+0x19c>
   10f40:	01012703          	lw	a4,16(sp)
   10f44:	01c037b3          	sltu	a5,zero,t3
   10f48:	00f767b3          	or	a5,a4,a5
   10f4c:	f69ff06f          	jal	zero,10eb4 <__trunctfdf2+0x124>
   10f50:	02010793          	addi	a5,sp,32
   10f54:	00d787b3          	add	a5,a5,a3
   10f58:	ff07a783          	lw	a5,-16(a5)
   10f5c:	02000893          	addi	a7,zero,32
   10f60:	40e888b3          	sub	a7,a7,a4
   10f64:	011797b3          	sll	a5,a5,a7
   10f68:	00fe6e33          	or	t3,t3,a5
   10f6c:	00300793          	addi	a5,zero,3
   10f70:	00d306b3          	add	a3,t1,a3
   10f74:	00000813          	addi	a6,zero,0
   10f78:	40a787b3          	sub	a5,a5,a0
   10f7c:	00468693          	addi	a3,a3,4
   10f80:	02f84463          	blt	a6,a5,10fa8 <__trunctfdf2+0x218>
   10f84:	02010693          	addi	a3,sp,32
   10f88:	00279793          	slli	a5,a5,0x2
   10f8c:	00f687b3          	add	a5,a3,a5
   10f90:	01c12683          	lw	a3,28(sp)
   10f94:	00e6d733          	srl	a4,a3,a4
   10f98:	fee7a823          	sw	a4,-16(a5)
   10f9c:	00400713          	addi	a4,zero,4
   10fa0:	40a70733          	sub	a4,a4,a0
   10fa4:	f85ff06f          	jal	zero,10f28 <__trunctfdf2+0x198>
   10fa8:	ffc6a603          	lw	a2,-4(a3)
   10fac:	0006af03          	lw	t5,0(a3)
   10fb0:	00281e93          	slli	t4,a6,0x2
   10fb4:	00e65633          	srl	a2,a2,a4
   10fb8:	011f1f33          	sll	t5,t5,a7
   10fbc:	01d30eb3          	add	t4,t1,t4
   10fc0:	01e66633          	or	a2,a2,t5
   10fc4:	00cea023          	sw	a2,0(t4)
   10fc8:	00180813          	addi	a6,a6,1
   10fcc:	fb1ff06f          	jal	zero,10f7c <__trunctfdf2+0x1ec>
   10fd0:	01412603          	lw	a2,20(sp)
   10fd4:	01812783          	lw	a5,24(sp)
   10fd8:	01c12803          	lw	a6,28(sp)
   10fdc:	00f666b3          	or	a3,a2,a5
   10fe0:	0106e6b3          	or	a3,a3,a6
   10fe4:	00a6e6b3          	or	a3,a3,a0
   10fe8:	00071863          	bne	a4,zero,10ff8 <__trunctfdf2+0x268>
   10fec:	00d036b3          	sltu	a3,zero,a3
   10ff0:	00000793          	addi	a5,zero,0
   10ff4:	e89ff06f          	jal	zero,10e7c <__trunctfdf2+0xec>
   10ff8:	0c068a63          	beq	a3,zero,110cc <__trunctfdf2+0x33c>
   10ffc:	01c65693          	srli	a3,a2,0x1c
   11000:	00481813          	slli	a6,a6,0x4
   11004:	00479613          	slli	a2,a5,0x4
   11008:	01c7d793          	srli	a5,a5,0x1c
   1100c:	00400737          	lui	a4,0x400
   11010:	00c6e6b3          	or	a3,a3,a2
   11014:	0107e7b3          	or	a5,a5,a6
   11018:	00e7e7b3          	or	a5,a5,a4
   1101c:	ff86f693          	andi	a3,a3,-8
   11020:	7ff00713          	addi	a4,zero,2047
   11024:	e59ff06f          	jal	zero,10e7c <__trunctfdf2+0xec>
   11028:	00000793          	addi	a5,zero,0
   1102c:	00000693          	addi	a3,zero,0
   11030:	7ff00713          	addi	a4,zero,2047
   11034:	00879613          	slli	a2,a5,0x8
   11038:	00065e63          	bge	a2,zero,11054 <__trunctfdf2+0x2c4>
   1103c:	00170713          	addi	a4,a4,1 # 400001 <__heap_top+0x300001>
   11040:	7ff00613          	addi	a2,zero,2047
   11044:	08c70863          	beq	a4,a2,110d4 <__trunctfdf2+0x344>
   11048:	ff800637          	lui	a2,0xff800
   1104c:	fff60613          	addi	a2,a2,-1 # ff7fffff <__heap_top+0xff6fffff>
   11050:	00c7f7b3          	and	a5,a5,a2
   11054:	01d79613          	slli	a2,a5,0x1d
   11058:	0036d693          	srli	a3,a3,0x3
   1105c:	00d666b3          	or	a3,a2,a3
   11060:	7ff00613          	addi	a2,zero,2047
   11064:	0037d793          	srli	a5,a5,0x3
   11068:	00c71e63          	bne	a4,a2,11084 <__trunctfdf2+0x2f4>
   1106c:	00f6e6b3          	or	a3,a3,a5
   11070:	00000793          	addi	a5,zero,0
   11074:	00068863          	beq	a3,zero,11084 <__trunctfdf2+0x2f4>
   11078:	000807b7          	lui	a5,0x80
   1107c:	00000693          	addi	a3,zero,0
   11080:	00000593          	addi	a1,zero,0
   11084:	00100637          	lui	a2,0x100
   11088:	fff60613          	addi	a2,a2,-1 # fffff <__preinit_array_end+0xecf9b>
   1108c:	00c7f7b3          	and	a5,a5,a2
   11090:	80100637          	lui	a2,0x80100
   11094:	7ff77713          	andi	a4,a4,2047
   11098:	fff60613          	addi	a2,a2,-1 # 800fffff <__heap_top+0x7fffffff>
   1109c:	01471713          	slli	a4,a4,0x14
   110a0:	00c7f7b3          	and	a5,a5,a2
   110a4:	00e7e7b3          	or	a5,a5,a4
   110a8:	80000737          	lui	a4,0x80000
   110ac:	fff74713          	xori	a4,a4,-1
   110b0:	01f59593          	slli	a1,a1,0x1f
   110b4:	00e7f7b3          	and	a5,a5,a4
   110b8:	00b7e733          	or	a4,a5,a1
   110bc:	00068513          	addi	a0,a3,0
   110c0:	00070593          	addi	a1,a4,0 # 80000000 <__heap_top+0x7ff00000>
   110c4:	02010113          	addi	sp,sp,32
   110c8:	00008067          	jalr	zero,0(ra)
   110cc:	00000793          	addi	a5,zero,0
   110d0:	f61ff06f          	jal	zero,11030 <__trunctfdf2+0x2a0>
   110d4:	00000793          	addi	a5,zero,0
   110d8:	00000693          	addi	a3,zero,0
   110dc:	f79ff06f          	jal	zero,11054 <__trunctfdf2+0x2c4>

000110e0 <__clzsi2>:
   110e0:	000107b7          	lui	a5,0x10
   110e4:	02f57a63          	bgeu	a0,a5,11118 <__clzsi2+0x38>
   110e8:	0ff00793          	addi	a5,zero,255
   110ec:	00a7b7b3          	sltu	a5,a5,a0
   110f0:	00379793          	slli	a5,a5,0x3
   110f4:	02000713          	addi	a4,zero,32
   110f8:	40f70733          	sub	a4,a4,a5
   110fc:	00f557b3          	srl	a5,a0,a5
   11100:	00001517          	auipc	a0,0x1
   11104:	e6450513          	addi	a0,a0,-412 # 11f64 <__clz_tab>
   11108:	00f507b3          	add	a5,a0,a5
   1110c:	0007c503          	lbu	a0,0(a5) # 10000 <__subtf3+0xc8c>
   11110:	40a70533          	sub	a0,a4,a0
   11114:	00008067          	jalr	zero,0(ra)
   11118:	01000737          	lui	a4,0x1000
   1111c:	01000793          	addi	a5,zero,16
   11120:	fce56ae3          	bltu	a0,a4,110f4 <__clzsi2+0x14>
   11124:	01800793          	addi	a5,zero,24
   11128:	fcdff06f          	jal	zero,110f4 <__clzsi2+0x14>
