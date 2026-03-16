            ; CODE XREF from sym.func.100005c58 @ 0x100005c5c(x)
┌ 940: sym.func.10000450c (int64_t arg1, int64_t arg2, int64_t arg_10h, int64_t arg_20h, int64_t arg_30h, int64_t arg_40h, int64_t arg_50h);
│           0x10000450c      stp x28, x27, [sp, -0x60]!
│           0x100004510      stp x26, x25, [arg_40hx10]
│           0x100004514      stp x24, x23, [arg_40hx20]
│           0x100004518      stp x22, x21, [arg_40hx30]
│           0x10000451c      stp x20, x19, [arg_40hx40]
│           0x100004520      stp x29, x30, [arg_40hx50]
│           0x100004524      add x29, sp, 0x50
│           0x100004528      sub sp, sp, 0x40
│           0x10000452c      stp x1, x0, [x29, -0x88]                  ; arg2
│           0x100004530      mov x0, 0
│           0x100004534      bl sym.imp.Foundation.URLRequest...VMa
│           0x100004538      ldur x8, [x0, -8]
│           0x10000453c      stp x8, x0, [x29, -0x78]
│           0x100004540      ldr x8, [x8, 0x40]
│           0x100004544      mov x9, x8
│           0x100004548      adrp x16, segment.__DATA_CONST            ; 0x100010000
│           0x10000454c      ldr x16, [x16, 0x1f0]                     ; [0x1000101f0:4]=60 ; "<"
│           0x100004550      blr x16
│           0x100004554      mov x9, sp
│           0x100004558      add x8, x8, 0xf
│           0x10000455c      and x8, x8, 0xfffffffffffffff0
│           0x100004560      sub x26, x9, x8
│           0x100004564      mov sp, x26
│           0x100004568      adrp x0, segment.__DATA                   ; 0x100014000
│           0x10000456c      add x0, x0, 0x748                         ; int64_t arg1
│           0x100004570      adrp x1, 0x10000a000
│           0x100004574      add x1, x1, 0x608                         ; int64_t arg2
│           0x100004578      bl sym.func.100005ae0
│           0x10000457c      ldur x8, [x0, -8]
│           0x100004580      ldr x9, [x8, 0x40]
│           0x100004584      add x8, x9, 0xf
│           0x100004588      and x8, x8, 0xfffffffffffffff0
│           0x10000458c      adrp x16, segment.__DATA_CONST            ; 0x100010000
│           0x100004590      ldr x16, [x16, 0x1f0]                     ; [0x1000101f0:4]=60 ; "<"
│           0x100004594      blr x16
│           0x100004598      mov x9, sp
│           0x10000459c      sub x28, x9, x8
│           0x1000045a0      mov sp, x28
│           0x1000045a4      mov x0, 0
│           0x1000045a8      bl sym.imp.Foundation.URL...VMa
│           0x1000045ac      mov x25, x0
│           0x1000045b0      ldur x23, [x0, -8]
│           0x1000045b4      ldr x8, [x23, 0x40]
│           0x1000045b8      mov x9, x8
│           0x1000045bc      adrp x16, segment.__DATA_CONST            ; 0x100010000
│           0x1000045c0      ldr x16, [x16, 0x1f0]                     ; [0x1000101f0:4]=60 ; "<"
│           0x1000045c4      blr x16
│           0x1000045c8      mov x9, sp
│           0x1000045cc      add x10, x8, 0xf
│           0x1000045d0      and x12, x10, 0xfffffffffffffff0
│           0x1000045d4      sub x19, x9, x12
│           0x1000045d8      mov sp, x19
│           0x1000045dc      mov x9, x8
│           0x1000045e0      adrp x16, segment.__DATA_CONST            ; 0x100010000
│           0x1000045e4      ldr x16, [x16, 0x1f0]                     ; [0x1000101f0:4]=60 ; "<"
│           0x1000045e8      blr x16
│           0x1000045ec      mov x8, sp
│           0x1000045f0      sub x27, x8, x12
│           0x1000045f4      mov sp, x27
│           0x1000045f8      adrp x8, segment.__DATA                   ; 0x100014000
│           0x1000045fc      ldr x0, [x8, 0x4f0]                       ; [0x1000144f0:4]=283
│                                                                      ; reloc.WKWebView ; void *arg0
│           0x100004600      bl sym.imp.objc_allocWithZone             ; void *objc_allocWithZone(void *arg0)
│           0x100004604      adrp x20, segment.__DATA                  ; 0x100014000
│           0x100004608      ldr x1, [x20, 0x320]                      ; [0x100014320:4]=0xb768 ; "h\xb7" ; char *selector
│           0x10000460c      bl sym.imp.objc_msgSend                   ; void *objc_msgSend(void *instance, char *selector)
│           0x100004610      mov x22, x0
│           0x100004614      mov x0, 0
│           0x100004618      bl sym.func.1000050a0
│           0x10000461c      bl sym.imp.objc_allocWithZone             ; void *objc_allocWithZone(void *arg0)
│           0x100004620      ldr x1, [x20, 0x320]                      ; [0x100014320:4]=0xb768 ; "h\xb7" ; char *selector
│           0x100004624      bl sym.imp.objc_msgSend                   ; void *objc_msgSend(void *instance, char *selector)
│           0x100004628      mov x20, x0
│           0x10000462c      adrp x8, segment.__DATA                   ; 0x100014000
│           0x100004630      ldr x1, [x8, 0x350]                       ; [0x100014350:4]=0xb89c ; reloc.fixup.setNavigationDelegate: ; char *selector
│           0x100004634      mov x0, x22                               ; void *instance
│           0x100004638      mov x2, x20
│           0x10000463c      bl sym.imp.objc_msgSend                   ; void *objc_msgSend(void *instance, char *selector)
│           0x100004640      adrp x1, 0x10000a000
│           0x100004644      add x1, x1, 0xbb9                         ; 0x10000abb9 ; "delegate"
│           0x100004648      mov x0, x22
│           0x10000464c      stur x20, [x29, -0x68]
│           0x100004650      mov x2, x20
│           0x100004654      mov w3, 1
│           0x100004658      bl sym.imp.objc_setAssociatedObject
│           0x10000465c      adrp x8, segment.__DATA                   ; 0x100014000
│           0x100004660      ldr x0, [x8, 0x4e8]                       ; [0x1000144e8:4]=282
│                                                                      ; reloc.NSUserDefaults ; void *arg0
│           0x100004664      bl sym.imp.objc_opt_self                  ; void *objc_opt_self(void *arg0)
│           0x100004668      adrp x8, segment.__DATA                   ; 0x100014000
│           0x10000466c      ldr x1, [x8, 0x340]                       ; [0x100014340:4]=0xb8e0 ; reloc.fixup.standardUserDefaults ; char *selector
│           0x100004670      bl sym.imp.objc_msgSend                   ; void *objc_msgSend(void *instance, char *selector)
│           0x100004674      mov x29, x29
│           0x100004678      bl sym.imp.objc_retainAutoreleasedReturnValue ; void objc_retainAutoreleasedReturnValue(void *instance)
│           0x10000467c      mov x21, x0
│           0x100004680      mov x0, 0x7375                            ; 'us'
│           0x100004684      movk x0, 0x7265, lsl 16                   ; 'er'
│           0x100004688      movk x0, 0x616e, lsl 32                   ; 'na'
│           0x10000468c      movk x0, 0x656d, lsl 48                   ; 'me'
│           0x100004690      mov x1, -0x1800000000000000
│           0x100004694      bl sym.imp.Foundationbool_...ridgeToObjectiveCSo8NSStringCyF_ ; Foundationbool(...ridgeToObjectiveCSo8NSStringCyF)
│           0x100004698      mov x24, x0
│           0x10000469c      adrp x8, segment.__DATA                   ; 0x100014000
│           0x1000046a0      ldr x1, [x8, 0x358]                       ; [0x100014358:4]=0xb8f5 ; reloc.fixup.stringForKey: ; char *selector
│           0x1000046a4      mov x0, x21                               ; void *instance
│           0x1000046a8      mov x2, x24
│           0x1000046ac      bl sym.imp.objc_msgSend                   ; void *objc_msgSend(void *instance, char *selector)
│           0x1000046b0      mov x29, x29
│           0x1000046b4      bl sym.imp.objc_retainAutoreleasedReturnValue ; void objc_retainAutoreleasedReturnValue(void *instance)
│           0x1000046b8      mov x20, x0
│           0x1000046bc      bl sym.imp.objc_release_x21
│           0x1000046c0      bl sym.imp.objc_release_x24
│       ┌─< 0x1000046c4      cbz x20, 0x1000046e0
│       │   0x1000046c8      mov x0, x20
│       │   0x1000046cc      bl sym.imp.Foundation_...nconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ_ ; Foundation(...nconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ)
│       │   0x1000046d0      mov x24, x0
│       │   0x1000046d4      mov x21, x1
│       │   0x1000046d8      bl sym.imp.objc_release_x20
│      ┌──< 0x1000046dc      b 0x1000046e8
│      ││   ; CODE XREF from sym.func.10000450c @ 0x1000046c4(x)
│      │└─> 0x1000046e0      mov x24, 0
│      │    0x1000046e4      mov x21, -0x2000000000000000
│      │    ; CODE XREF from sym.func.10000450c @ 0x1000046dc(x)
│      └──> 0x1000046e8      adrp x8, 0x10000a000
│           0x1000046ec      add x8, x8, 0xbd0                         ; 0x10000abd0 ; "https://owasp.org/login?next=https://owasp.org/home&user="
│           0x1000046f0      mov x9, 0x37                              ; '7'
│           0x1000046f4      movk x9, 0xd000, lsl 48
│           0x1000046f8      sub x8, x8, 0x20
│           0x1000046fc      orr x8, x8, 0x8000000000000000
│           0x100004700      add x9, x9, 2
│           0x100004704      stp x9, x8, [x29, -0x60]
│           0x100004708      sub x20, x29, 0x60
│           0x10000470c      mov x0, x24
│           0x100004710      mov x1, x21
│           0x100004714      bl sym.imp.append_...ySSF_                ; append(...ySSF)
│           0x100004718      mov x0, x21                               ; void *arg0
│           0x10000471c      bl sym.imp.swift_bridgeObjectRelease      ; void swift_bridgeObjectRelease(void *arg0)
│           0x100004720      ldp x0, x20, [x29, -0x60]
│           0x100004724      mov x8, x28
│           0x100004728      mov x1, x20
│           0x10000472c      bl sym.imp.Foundation.URL.string_...cfC_  ; Foundation.URL.string(...cfC)
│           0x100004730      mov x0, x20                               ; void *arg0
│           0x100004734      bl sym.imp.swift_bridgeObjectRelease      ; void swift_bridgeObjectRelease(void *arg0)
│           0x100004738      ldr x8, [x23, 0x30]
│           0x10000473c      mov x0, x28
│           0x100004740      mov w1, 1
│           0x100004744      mov x2, x25
│           0x100004748      blr x8
│           0x10000474c      cmp w0, 1
│       ┌─< 0x100004750      b.ne 0x100004770
│       │   0x100004754      adrp x1, segment.__DATA                   ; 0x100014000
│       │   0x100004758      add x1, x1, 0x748                         ; int64_t arg2
│       │   0x10000475c      adrp x2, 0x10000a000
│       │   0x100004760      add x2, x2, 0x608                         ; int64_t arg3
│       │   0x100004764      mov x0, x28                               ; void *arg1
│       │   0x100004768      bl sym.func.100005b30
│      ┌──< 0x10000476c      b 0x100004800
│      ││   ; CODE XREF from sym.func.10000450c @ 0x100004750(x)
│      │└─> 0x100004770      ldr x8, [x23, 0x20]
│      │    0x100004774      mov x0, x27
│      │    0x100004778      mov x1, x28
│      │    0x10000477c      mov x2, x25
│      │    0x100004780      blr x8
│      │    0x100004784      ldr x8, [x23, 0x10]
│      │    0x100004788      mov x0, x19
│      │    0x10000478c      mov x1, x27
│      │    0x100004790      mov x2, x25
│      │    0x100004794      blr x8
│      │    0x100004798      mov x8, 0x404e000000000000
│      │    0x10000479c      fmov d0, x8
│      │    0x1000047a0      mov x8, x26
│      │    0x1000047a4      mov x0, x19
│      │    0x1000047a8      mov x1, 0
│      │    0x1000047ac      bl sym.imp.Foundation.URLRequest.url.cachePolicy.timeoutInterval.URL.NSURLRequestCache...E0VSdtcfC
│      │    0x1000047b0      mov x20, x26
│      │    0x1000047b4      bl sym.imp.Foundation.URLRequest._bridgeToObjectiveC.NSURLRequest_...F_
│      │    0x1000047b8      mov x19, x0
│      │    0x1000047bc      ldp x8, x1, [x29, -0x78]
│      │    0x1000047c0      ldr x8, [x8, 8]
│      │    0x1000047c4      mov x0, x26
│      │    0x1000047c8      blr x8
│      │    0x1000047cc      adrp x8, segment.__DATA                   ; 0x100014000
│      │    0x1000047d0      ldr x1, [x8, 0x330]                       ; [0x100014330:4]=0xb7a2 ; reloc.fixup.loadRequest: ; char *selector
│      │    0x1000047d4      mov x0, x22                               ; void *instance
│      │    0x1000047d8      mov x2, x19
│      │    0x1000047dc      bl sym.imp.objc_msgSend                   ; void *objc_msgSend(void *instance, char *selector)
│      │    0x1000047e0      mov x29, x29
│      │    0x1000047e4      bl sym.imp.objc_retainAutoreleasedReturnValue ; void objc_retainAutoreleasedReturnValue(void *instance)
│      │    0x1000047e8      bl sym.imp.objc_release                   ; void objc_release(void *instance)
│      │    0x1000047ec      bl sym.imp.objc_release_x19
│      │    0x1000047f0      ldr x8, [x23, 8]
│      │    0x1000047f4      mov x0, x27
│      │    0x1000047f8      mov x1, x25
│      │    0x1000047fc      blr x8
│      │    ; CODE XREF from sym.func.10000450c @ 0x10000476c(x)
│      └──> 0x100004800      adrp x8, segment.__DATA                   ; 0x100014000
│           0x100004804      ldr x0, [x8, 0x4f8]                       ; [0x1000144f8:4]=284
│                                                                      ; reloc.UIViewController ; void *arg0
│           0x100004808      bl sym.imp.objc_allocWithZone             ; void *objc_allocWithZone(void *arg0)
│           0x10000480c      adrp x8, segment.__DATA                   ; 0x100014000
│           0x100004810      ldr x1, [x8, 0x320]                       ; [0x100014320:4]=0xb768 ; "h\xb7" ; char *selector
│           0x100004814      bl sym.imp.objc_msgSend                   ; void *objc_msgSend(void *instance, char *selector)
│           0x100004818      mov x19, x0
│           0x10000481c      adrp x8, segment.__DATA                   ; 0x100014000
│           0x100004820      ldr x1, [x8, 0x360]                       ; [0x100014360:4]=0xb8c5 ; reloc.fixup.setView: ; char *selector
│           0x100004824      mov x2, x22
│           0x100004828      bl sym.imp.objc_msgSend                   ; void *objc_msgSend(void *instance, char *selector)
│           0x10000482c      bl sym.func.100004a90
│           0x100004830      mov x21, x0
│           0x100004834      bl sym.func.1000048b8
│           0x100004838      mov x20, x0
│           0x10000483c      bl sym.imp.objc_release_x21
│       ┌─< 0x100004840      cbz x20, 0x100004868
│       │   0x100004844      adrp x8, segment.__DATA                   ; 0x100014000
│       │   0x100004848      ldr x1, [x8, 0x368]                       ; [0x100014368:4]=0xb803 ; reloc.fixup.presentViewController:animated: ; char *selector
│       │   0x10000484c      mov x0, x20                               ; void *instance
│       │   0x100004850      mov x2, x19
│       │   0x100004854      mov w3, 1
│       │   0x100004858      mov x4, 0
│       │   0x10000485c      bl sym.imp.objc_msgSend                   ; void *objc_msgSend(void *instance, char *selector)
│       │   0x100004860      bl sym.imp.objc_release_x20
│      ┌──< 0x100004864      b 0x100004888
│      ││   ; CODE XREF from sym.func.10000450c @ 0x100004840(x)
│      │└─> 0x100004868      adrp x8, 0x10000a000
│      │    0x10000486c      add x8, x8, 0xc10                         ; 0x10000ac10 ; "Failed to present web view (no active view controller)."
│      │    0x100004870      sub x8, x8, 0x20
│      │    0x100004874      orr x1, x8, 0x8000000000000000
│      │    0x100004878      mov x0, 0x37                              ; '7'
│      │    0x10000487c      movk x0, 0xd000, lsl 48
│      │    0x100004880      ldp x20, x8, [x29, -0x88]
│      │    0x100004884      blr x8
│      │    ; CODE XREF from sym.func.10000450c @ 0x100004864(x)
│      └──> 0x100004888      bl sym.imp.objc_release_x19
│           0x10000488c      bl sym.imp.objc_release_x22
│           0x100004890      ldur x8, [x29, -0x68]
│           0x100004894      bl sym.imp.objc_release_x8
│           0x100004898      sub sp, x29, 0x50
│           0x10000489c      ldp x29, x30, [arg_40hx50]
│           0x1000048a0      ldp x20, x19, [arg_40hx40]
│           0x1000048a4      ldp x22, x21, [arg_40hx30]
│           0x1000048a8      ldp x24, x23, [arg_40hx20]
│           0x1000048ac      ldp x26, x25, [arg_40hx10]
│           0x1000048b0      ldp x28, x27, [sp], 0x60
└           0x1000048b4      ret
