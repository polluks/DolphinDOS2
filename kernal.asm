; =============================================
; DolphinDOS 2 - C64 Kernal ROM
; ACME assembler format
; =============================================

!cpu 6502
* = $5685

    jsr $bc0f                                ; $5685
    lda $61                                  ; $5688
    cmp #$88                                 ; $568a
    bcc $5691                                ; $568c
    jsr $bad4                                ; $568e
    jsr $bccc                                ; $5691
    lda $07                                  ; $5694
    clc                                      ; $5696
    adc #$81                                 ; $5697
    beq $568e                                ; $5699
    sec                                      ; $569b
    sbc #$01                                 ; $569c
    pha                                      ; $569e
    ldx #$05                                 ; $569f
    lda $69,x                                ; $56a1
    ldy $61,x                                ; $56a3
    sta $61,x                                ; $56a5
    sty $69,x                                ; $56a7
    dex                                      ; $56a9
    bpl $56a1                                ; $56aa
    lda $56                                  ; $56ac
    sta $70                                  ; $56ae
    jsr $b853                                ; $56b0
    jsr $bfb4                                ; $56b3
    lda #$c4                                 ; $56b6
    ldy #$bf                                 ; $56b8
    jsr $e059                                ; $56ba
    lda #$00                                 ; $56bd
    sta $6f                                  ; $56bf
    pla                                      ; $56c1
    jsr $bab9                                ; $56c2
    rts                                      ; $56c5
    sta $71                                  ; $56c6
    sty $72                                  ; $56c8
    jsr $bbca                                ; $56ca
    lda #$57                                 ; $56cd
    jsr $ba28                                ; $56cf
    jsr $e05d                                ; $56d2
    lda #$57                                 ; $56d5
    ldy #$00                                 ; $56d7
    jmp $ba28                                ; $56d9
    sta $71                                  ; $56dc
    sty $72                                  ; $56de
    jsr $bbc7                                ; $56e0
    lda ($71),y                              ; $56e3
    sta $67                                  ; $56e5
    ldy $71                                  ; $56e7
    iny                                      ; $56e9
    tya                                      ; $56ea
    bne $56ef                                ; $56eb
    inc $72                                  ; $56ed
    sta $71                                  ; $56ef
    ldy $72                                  ; $56f1
    jsr $ba28                                ; $56f3
    lda $71                                  ; $56f6
    ldy $72                                  ; $56f8
    clc                                      ; $56fa
    adc #$05                                 ; $56fb
    bcc $5700                                ; $56fd
    iny                                      ; $56ff
    sta $71                                  ; $5700
    sty $72                                  ; $5702
    jsr $b867                                ; $5704
    lda #$5c                                 ; $5707
    ldy #$00                                 ; $5709
    dec $67                                  ; $570b
    bne $56f3                                ; $570d
    rts                                      ; $570f
    tya                                      ; $5710
    and $44,x                                ; $5711
    !byte $7a                                ; $5713 (undefined opcode)
    brk                                      ; $5714
    pla                                      ; $5715
    plp                                      ; $5716
    lda ($46),y                              ; $5717
    brk                                      ; $5719
    jsr $bc2b                                ; $571a
    bmi $5756                                ; $571d
    bne $5741                                ; $571f
    jsr $fff3                                ; $5721
    stx $22                                  ; $5724
    sty $23                                  ; $5726
    ldy #$04                                 ; $5728
    lda ($22),y                              ; $572a
    sta $62                                  ; $572c
    iny                                      ; $572e
    lda ($22),y                              ; $572f
    sta $64                                  ; $5731
    ldy #$08                                 ; $5733
    lda ($22),y                              ; $5735
    sta $63                                  ; $5737
    iny                                      ; $5739
    lda ($22),y                              ; $573a
    sta $65                                  ; $573c
    jmp $e0e3                                ; $573e
    lda #$8b                                 ; $5741
    ldy #$00                                 ; $5743
    jsr $bba2                                ; $5745
    lda #$8d                                 ; $5748
    ldy #$e0                                 ; $574a
    jsr $ba28                                ; $574c
    lda #$92                                 ; $574f
    ldy #$e0                                 ; $5751
    jsr $b867                                ; $5753
    ldx $65                                  ; $5756
    lda $62                                  ; $5758
    sta $65                                  ; $575a
    stx $62                                  ; $575c
    ldx $63                                  ; $575e
    lda $64                                  ; $5760
    sta $63                                  ; $5762
    stx $64                                  ; $5764
    lda #$00                                 ; $5766
    sta $66                                  ; $5768
    lda $61                                  ; $576a
    sta $70                                  ; $576c
    lda #$80                                 ; $576e
    sta $61                                  ; $5770
    jsr $b8d7                                ; $5772
    ldx #$8b                                 ; $5775
    ldy #$00                                 ; $5777
    jmp $bbd4                                ; $5779
    tax                                      ; $577c
    bne $5781                                ; $577d
    ldx #$1e                                 ; $577f
    jmp $a437                                ; $5781
    pha                                      ; $5784
    lda $0294                                ; $5785
    beq $578b                                ; $5788
    tax                                      ; $578a
    pla                                      ; $578b
    jmp $ffba                                ; $578c
    jsr $ffd2                                ; $578f
    bcs $577c                                ; $5792
    rts                                      ; $5794
    jsr $ffcf                                ; $5795
    jmp $f775                                ; $5798
    jsr $e4ad                                ; $579b
    bcs $577c                                ; $579e
    rts                                      ; $57a0
    jsr $ffc6                                ; $57a1
    bcs $577c                                ; $57a4
    rts                                      ; $57a6
    jsr $ffe4                                ; $57a7
    bcs $577c                                ; $57aa
    rts                                      ; $57ac
    jmp $f2be                                ; $57ad
    jsr $b7f7                                ; $57b0
    lda #$e1                                 ; $57b3
    pha                                      ; $57b5
    lda #$46                                 ; $57b6
    pha                                      ; $57b8
    lda $030f                                ; $57b9
    pha                                      ; $57bc
    lda $030c                                ; $57bd
    ldx $030d                                ; $57c0
    ldy $030e                                ; $57c3
    plp                                      ; $57c6
    jmp ($0014)                              ; $57c7
    php                                      ; $57ca
    sta $030c                                ; $57cb
    stx $030d                                ; $57ce
    sty $030e                                ; $57d1
    pla                                      ; $57d4
    sta $030f                                ; $57d5
    rts                                      ; $57d8
    jsr $e1d4                                ; $57d9
    ldx $2d                                  ; $57dc
    ldy $2e                                  ; $57de
    lda #$2b                                 ; $57e0
    jsr $ffd8                                ; $57e2
    bcs $577c                                ; $57e5
    rts                                      ; $57e7
    lda #$01                                 ; $57e8
    bit $00a9                                ; $57ea
    sta $0a                                  ; $57ed
    jsr $e1d4                                ; $57ef
    lda $0a                                  ; $57f2
    ldx $2b                                  ; $57f4
    ldy $2c                                  ; $57f6
    jsr $ffd5                                ; $57f8
    bcs $5854                                ; $57fb
    lda $0a                                  ; $57fd
    beq $5818                                ; $57ff
    ldx #$1c                                 ; $5801
    jsr $ffb7                                ; $5803
    and #$10                                 ; $5806
    bne $5821                                ; $5808
    lda $7a                                  ; $580a
    cmp #$02                                 ; $580c
    beq $5817                                ; $580e
    lda #$64                                 ; $5810
    ldy #$a3                                 ; $5812
    jmp $ab1e                                ; $5814
    rts                                      ; $5817
    jsr $ffb7                                ; $5818
    and #$bf                                 ; $581b
    beq $5824                                ; $581d
    ldx #$1d                                 ; $581f
    jmp $a437                                ; $5821
    lda $7b                                  ; $5824
    cmp #$02                                 ; $5826
    bne $5838                                ; $5828
    jmp $f58e                                ; $582a
    rol $76a9                                ; $582d
    ldy #$a3                                 ; $5830
    jsr $ab1e                                ; $5832
    jmp $a52a                                ; $5835
    jsr $a68e                                ; $5838
    jsr $a533                                ; $583b
    jmp $a677                                ; $583e
    jsr $e219                                ; $5841
    jsr $ffc0                                ; $5844
    bcs $5854                                ; $5847
    rts                                      ; $5849
    jsr $e219                                ; $584a
    lda $49                                  ; $584d
    jsr $ffc3                                ; $584f
    bcc $5817                                ; $5852
    jmp $e0f9                                ; $5854
    lda #$00                                 ; $5857
    jsr $ffbd                                ; $5859
    ldx #$08                                 ; $585c
    ldy #$01                                 ; $585e
    jsr $e101                                ; $5860
    jsr $e206                                ; $5863
    jsr $e257                                ; $5866
    jsr $f14a                                ; $5869
    jsr $e200                                ; $586c
    ldy #$00                                 ; $586f
    stx $49                                  ; $5871
    jsr $ffba                                ; $5873
    jsr $f14a                                ; $5876
    jsr $e200                                ; $5879
    txa                                      ; $587c
    tay                                      ; $587d
    ldx $49                                  ; $587e
    jmp $ffba                                ; $5880
    jsr $e20e                                ; $5883
    jmp $b79e                                ; $5886
    jsr $0079                                ; $5889
    bne $5890                                ; $588c
    pla                                      ; $588e
    pla                                      ; $588f
    rts                                      ; $5890
    jsr $aefd                                ; $5891
    jsr $0079                                ; $5894
    bne $5890                                ; $5897
    jmp $af08                                ; $5899
    lda #$00                                 ; $589c
    jsr $ffbd                                ; $589e
    jsr $e211                                ; $58a1
    jsr $b79e                                ; $58a4
    stx $49                                  ; $58a7
    txa                                      ; $58a9
    ldx #$08                                 ; $58aa
    ldy #$0f                                 ; $58ac
    jsr $e101                                ; $58ae
    jsr $e206                                ; $58b1
    jsr $e200                                ; $58b4
    stx $4a                                  ; $58b7
    ldy #$00                                 ; $58b9
    lda $49                                  ; $58bb
    cpx #$03                                 ; $58bd
    bne $58c2                                ; $58bf
    dey                                      ; $58c1
    jsr $ffba                                ; $58c2
    jsr $e206                                ; $58c5
    jsr $e200                                ; $58c8
    txa                                      ; $58cb
    tay                                      ; $58cc
    ldx $4a                                  ; $58cd
    lda $49                                  ; $58cf
    jsr $ffba                                ; $58d1
    jsr $e206                                ; $58d4
    jsr $e20e                                ; $58d7
    jsr $ad9e                                ; $58da
    jsr $b6a3                                ; $58dd
    ldx $22                                  ; $58e0
    ldy $23                                  ; $58e2
    jmp $ffbd                                ; $58e4
    lda #$e0                                 ; $58e7
    ldy #$e2                                 ; $58e9
    jsr $b867                                ; $58eb
    jsr $bc0c                                ; $58ee
    lda #$e5                                 ; $58f1
    ldy #$e2                                 ; $58f3
    ldx $6e                                  ; $58f5
    jsr $bb07                                ; $58f7
    jsr $bc0c                                ; $58fa
    jsr $bccc                                ; $58fd
    lda #$00                                 ; $5900
    sta $6f                                  ; $5902
    jsr $b853                                ; $5904
    lda #$ea                                 ; $5907
    ldy #$e2                                 ; $5909
    jsr $b850                                ; $590b
    lda $66                                  ; $590e
    pha                                      ; $5910
    bpl $5920                                ; $5911
    jsr $b849                                ; $5913
    lda $66                                  ; $5916
    bmi $5923                                ; $5918
    lda $12                                  ; $591a
    eor #$ff                                 ; $591c
    sta $12                                  ; $591e
    jsr $bfb4                                ; $5920
    lda #$ea                                 ; $5923
    ldy #$e2                                 ; $5925
    jsr $b867                                ; $5927
    pla                                      ; $592a
    bpl $5930                                ; $592b
    jsr $bfb4                                ; $592d
    lda #$ef                                 ; $5930
    ldy #$e2                                 ; $5932
    jmp $e043                                ; $5934
    jsr $bbca                                ; $5937
    lda #$00                                 ; $593a
    sta $12                                  ; $593c
    jsr $e26b                                ; $593e
    ldx #$4e                                 ; $5941
    ldy #$00                                 ; $5943
    jsr $e0f6                                ; $5945
    lda #$57                                 ; $5948
    ldy #$00                                 ; $594a
    jsr $bba2                                ; $594c
    lda #$00                                 ; $594f
    sta $66                                  ; $5951
    lda $12                                  ; $5953
    jsr $e2dc                                ; $5955
    lda #$4e                                 ; $5958
    ldy #$00                                 ; $595a
    jmp $bb0f                                ; $595c
    pha                                      ; $595f
    jmp $e29d                                ; $5960
    sta ($49,x)                              ; $5963
    !byte $0f                                ; $5965 (undefined opcode)
    !byte $da                                ; $5966 (undefined opcode)
    ldx #$83                                 ; $5967
    eor #$0f                                 ; $5969
    !byte $da                                ; $596b (undefined opcode)
    ldx #$7f                                 ; $596c
    brk                                      ; $596e
    brk                                      ; $596f
    brk                                      ; $5970
    brk                                      ; $5971
    ora $84                                  ; $5972
    inc $1a                                  ; $5974
    and $861b                                ; $5976
    plp                                      ; $5979
    !byte $07                                ; $597a (undefined opcode)
    !byte $fb                                ; $597b (undefined opcode)
    sed                                      ; $597c
    !byte $87                                ; $597d (undefined opcode)
    sta $8968,y                              ; $597e
    ora ($87,x)                              ; $5981
    !byte $23                                ; $5983 (undefined opcode)
    and $df,x                                ; $5984
    sbc ($86,x)                              ; $5986
    lda $5d                                  ; $5988
    !byte $e7                                ; $598a (undefined opcode)
    plp                                      ; $598b
    !byte $83                                ; $598c (undefined opcode)
    eor #$0f                                 ; $598d
    !byte $da                                ; $598f (undefined opcode)
    ldx #$a5                                 ; $5990
    ror $48                                  ; $5992
    bpl $5999                                ; $5994
    jsr $bfb4                                ; $5996
    lda $61                                  ; $5999
    pha                                      ; $599b
    cmp #$81                                 ; $599c
    bcc $59a7                                ; $599e
    lda #$bc                                 ; $59a0
    ldy #$b9                                 ; $59a2
    jsr $bb0f                                ; $59a4
    lda #$3e                                 ; $59a7
    ldy #$e3                                 ; $59a9
    jsr $e043                                ; $59ab
    pla                                      ; $59ae
    cmp #$81                                 ; $59af
    bcc $59ba                                ; $59b1
    lda #$e0                                 ; $59b3
    ldy #$e2                                 ; $59b5
    jsr $b850                                ; $59b7
    pla                                      ; $59ba
    bpl $59c0                                ; $59bb
    jmp $bfb4                                ; $59bd
    rts                                      ; $59c0
    !byte $0b                                ; $59c1 (undefined opcode)
    ror $b3,x                                ; $59c2
    !byte $83                                ; $59c4 (undefined opcode)
    lda $79d3,x                              ; $59c5
    asl $a6f4,x                              ; $59c8
    sbc $7b,x                                ; $59cb
    !byte $83                                ; $59cd (undefined opcode)
    !byte $fc                                ; $59ce (undefined opcode)
    bcs $59e1                                ; $59cf
    !byte $7c                                ; $59d1 (undefined opcode)
    !byte $0c                                ; $59d2 (undefined opcode)
    !byte $1f                                ; $59d3 (undefined opcode)
    !byte $67                                ; $59d4 (undefined opcode)
    dex                                      ; $59d5
    !byte $7c                                ; $59d6 (undefined opcode)
    dec $cb53,x                              ; $59d7
    cmp ($7d,x)                              ; $59da
    !byte $14                                ; $59dc (undefined opcode)
    !byte $64                                ; $59dd (undefined opcode)
    bvs $5a2c                                ; $59de
    adc $eab7,x                              ; $59e0
    eor ($7a),y                              ; $59e3
    adc $3063,x                              ; $59e5
    dey                                      ; $59e8
    ror $927e,x                              ; $59e9
    !byte $44                                ; $59ec (undefined opcode)
    sta $7e3a,y                              ; $59ed
    jmp $91cc                                ; $59f0
    !byte $c7                                ; $59f3 (undefined opcode)
    !byte $7f                                ; $59f4 (undefined opcode)
    tax                                      ; $59f5
    tax                                      ; $59f6
    tax                                      ; $59f7
    !byte $13                                ; $59f8 (undefined opcode)
    sta ($00,x)                              ; $59f9
    brk                                      ; $59fb
    brk                                      ; $59fc
    brk                                      ; $59fd
    jsr $ffcc                                ; $59fe
    lda #$00                                 ; $5a01
    sta $13                                  ; $5a03
    jsr $a67a                                ; $5a05
    cli                                      ; $5a08
    ldx #$80                                 ; $5a09
    jmp ($0300)                              ; $5a0b
    txa                                      ; $5a0e
    bmi $5a14                                ; $5a0f
    jmp $f79c                                ; $5a11
    jmp $a474                                ; $5a14
    jsr $e453                                ; $5a17
    jsr $e3bf                                ; $5a1a
    jsr $e422                                ; $5a1d
    ldx #$fb                                 ; $5a20
    txs                                      ; $5a22
    bne $5a09                                ; $5a23
    inc $7a                                  ; $5a25
    bne $5a2b                                ; $5a27
    inc $7b                                  ; $5a29
    lda $ea60                                ; $5a2b
    cmp #$3a                                 ; $5a2e
    bcs $5a3c                                ; $5a30
    cmp #$20                                 ; $5a32
    beq $5a25                                ; $5a34
    sec                                      ; $5a36
    sbc #$30                                 ; $5a37
    sec                                      ; $5a39
    sbc #$d0                                 ; $5a3a
    rts                                      ; $5a3c
    !byte $80                                ; $5a3d (undefined opcode)
    !byte $4f                                ; $5a3e (undefined opcode)
    !byte $c7                                ; $5a3f (undefined opcode)
    !byte $52                                ; $5a40 (undefined opcode)
    cli                                      ; $5a41
    lda #$4c                                 ; $5a42
    sta $54                                  ; $5a44
    sta $0310                                ; $5a46
    lda #$48                                 ; $5a49
    ldy #$b2                                 ; $5a4b
    sta $0311                                ; $5a4d
    sty $0312                                ; $5a50
    lda #$91                                 ; $5a53
    ldy #$b3                                 ; $5a55
    sta $05                                  ; $5a57
    sty $06                                  ; $5a59
    lda #$aa                                 ; $5a5b
    ldy #$b1                                 ; $5a5d
    sta $03                                  ; $5a5f
    sty $04                                  ; $5a61
    ldx #$1c                                 ; $5a63
    lda $e3a2,x                              ; $5a65
    sta $73,x                                ; $5a68
    dex                                      ; $5a6a
    bpl $5a65                                ; $5a6b
    lda #$03                                 ; $5a6d
    sta $53                                  ; $5a6f
    lda #$00                                 ; $5a71
    sta $68                                  ; $5a73
    sta $13                                  ; $5a75
    sta $18                                  ; $5a77
    ldx #$01                                 ; $5a79
    stx $01fd                                ; $5a7b
    stx $01fc                                ; $5a7e
    ldx #$19                                 ; $5a81
    stx $16                                  ; $5a83
    sec                                      ; $5a85
    jsr $ff9c                                ; $5a86
    stx $2b                                  ; $5a89
    sty $2c                                  ; $5a8b
    sec                                      ; $5a8d
    jsr $ff99                                ; $5a8e
    stx $37                                  ; $5a91
    sty $38                                  ; $5a93
    stx $33                                  ; $5a95
    sty $34                                  ; $5a97
    ldy #$00                                 ; $5a99
    tya                                      ; $5a9b
    sta ($2b),y                              ; $5a9c
    inc $2b                                  ; $5a9e
    bne $5aa4                                ; $5aa0
    inc $2c                                  ; $5aa2
    rts                                      ; $5aa4
    lda $2b                                  ; $5aa5
    ldy $2c                                  ; $5aa7
    jsr $a408                                ; $5aa9
    lda #$73                                 ; $5aac
    ldy #$e4                                 ; $5aae
    jsr $ab1e                                ; $5ab0
    lda $37                                  ; $5ab3
    sec                                      ; $5ab5
    sbc $2b                                  ; $5ab6
    tax                                      ; $5ab8
    lda $38                                  ; $5ab9
    sbc $2c                                  ; $5abb
    jsr $bdcd                                ; $5abd
    lda #$60                                 ; $5ac0
    ldy #$e4                                 ; $5ac2
    jsr $ab1e                                ; $5ac4
    jmp $a644                                ; $5ac7
    !byte $8b                                ; $5aca (undefined opcode)
    !byte $e3                                ; $5acb (undefined opcode)
    !byte $83                                ; $5acc (undefined opcode)
    ldy $7c                                  ; $5acd
    lda $1a                                  ; $5acf
    !byte $a7                                ; $5ad1 (undefined opcode)
    cpx $a7                                  ; $5ad2
    stx $ae                                  ; $5ad4
    ldx #$0b                                 ; $5ad6
    lda $e447,x                              ; $5ad8
    sta $0300,x                              ; $5adb
    dex                                      ; $5ade
    bpl $5ad8                                ; $5adf
    bmi $5b3a                                ; $5ae1
    jsr $4142                                ; $5ae3
    !byte $53                                ; $5ae6 (undefined opcode)
    eor #$43                                 ; $5ae7
    jsr $5942                                ; $5ae9
    !byte $54                                ; $5aec (undefined opcode)
    eor $53                                  ; $5aed
    jsr $5246                                ; $5aef
    eor $45                                  ; $5af2
    ora $9300                                ; $5af4
    ora $2020                                ; $5af7
    jsr $2a20                                ; $5afa
    rol                                    ; $5afd
    rol                                    ; $5afe
    rol                                    ; $5aff
    jsr $4f43                                ; $5b00
    eor $4f4d                                ; $5b03
    !byte $44                                ; $5b06 (undefined opcode)
    !byte $4f                                ; $5b07 (undefined opcode)
    !byte $52                                ; $5b08 (undefined opcode)
    eor $20                                  ; $5b09
    rol $34,x                                ; $5b0b
    jsr $4142                                ; $5b0d
    !byte $53                                ; $5b10 (undefined opcode)
    eor #$43                                 ; $5b11
    jsr $3256                                ; $5b13
    jsr $2a2a                                ; $5b16
    rol                                    ; $5b19
    rol                                    ; $5b1a
    ora $200d                                ; $5b1b
    !byte $44                                ; $5b1e (undefined opcode)
    !byte $4f                                ; $5b1f (undefined opcode)
    jmp $4850                                ; $5b20
    eor #$4e                                 ; $5b23
    !byte $44                                ; $5b25 (undefined opcode)
    !byte $4f                                ; $5b26 (undefined opcode)
    !byte $53                                ; $5b27 (undefined opcode)
    jsr $2e32                                ; $5b28
    bmi $5b4d                                ; $5b2b
    jsr $8100                                ; $5b2d
    pha                                      ; $5b30
    jsr $ffc9                                ; $5b31
    tax                                      ; $5b34
    pla                                      ; $5b35
    bcc $5b39                                ; $5b36
    txa                                      ; $5b38
    rts                                      ; $5b39
    lda #$87                                 ; $5b3a
    ldx #$f3                                 ; $5b3c
    sta $0297                                ; $5b3e
    stx $0298                                ; $5b41
    rts                                      ; $5b44
    sei                                      ; $5b45
    cld                                      ; $5b46
    txs                                      ; $5b47
    inx                                      ; $5b48
    txa                                      ; $5b49
    sta $01                                  ; $5b4a
    sta $0100,x                              ; $5b4c
    inx                                      ; $5b4f
    bne $5b4c                                ; $5b50
    inc $f1                                  ; $5b52
    bne $5b4c                                ; $5b54
    lda #$37                                 ; $5b56
    sta $01                                  ; $5b58
    jmp $fcef                                ; $5b5a
    lda $0286                                ; $5b5d
    sta ($f3),y                              ; $5b60
    rts                                      ; $5b62
    adc #$02                                 ; $5b63
    ldy $91                                  ; $5b65
    iny                                      ; $5b67
    bne $5b6e                                ; $5b68
    cmp $a1                                  ; $5b6a
    bne $5b65                                ; $5b6c
    rts                                      ; $5b6e
; =============================================================================
; PARALLEL_SEND_BYTE - Send one byte via parallel port
; Entry: A = byte to send
; Uses: $DD01 (parallel data), $DD00 (handshake via CLK line bit 2)
; =============================================================================
    sta $dd01      ; Write byte to parallel data port (directly to 1541) ; $5b6f
    lda $dd0d      ; Read CIA#2 ICR to clear any pending FLAG interrupt ; $5b72
    lda $dd00      ; Read current port A state ; $5b75
    and #$fb       ; Clear bit 2 (CLK OUT low = "data ready") ; $5b78
    sta $dd00      ; Signal to drive: byte is ready on port ; $5b7a
    ora #$04       ; Set bit 2 (CLK OUT high = "idle/done") ; $5b7d
    sta $dd00      ; Complete handshake cycle ; $5b7f
    rts                                      ; $5b82
    ldx #$00                                 ; $5b83
    ldy #$dc                                 ; $5b85
    rts                                      ; $5b87
    ldx #$28                                 ; $5b88
    ldy #$19                                 ; $5b8a
    rts                                      ; $5b8c
    bcs $5b96                                ; $5b8d
    stx $d6                                  ; $5b8f
    sty $d3                                  ; $5b91
    jsr $e56c                                ; $5b93
    ldx $d6                                  ; $5b96
    ldy $d3                                  ; $5b98
    rts                                      ; $5b9a
    jsr $e5a0                                ; $5b9b
    lda #$00                                 ; $5b9e
    sta $0291                                ; $5ba0
    sta $cf                                  ; $5ba3
    lda #$48                                 ; $5ba5
    sta $028f                                ; $5ba7
    lda #$eb                                 ; $5baa
    sta $0290                                ; $5bac
    lda #$04                                 ; $5baf
    sta $028b                                ; $5bb1
    sta $0288                                ; $5bb4
    lda #$0e                                 ; $5bb7
    sta $0286                                ; $5bb9
    lda #$0a                                 ; $5bbc
    sta $0289                                ; $5bbe
    lda #$0c                                 ; $5bc1
    sta $cd                                  ; $5bc3
    sta $cc                                  ; $5bc5
    lda $0288                                ; $5bc7
    ora #$80                                 ; $5bca
    tay                                      ; $5bcc
    lda #$00                                 ; $5bcd
    tax                                      ; $5bcf
    sty $d9,x                                ; $5bd0
    clc                                      ; $5bd2
    adc #$28                                 ; $5bd3
    bcc $5bd8                                ; $5bd5
    iny                                      ; $5bd7
    inx                                      ; $5bd8
    cpx #$1a                                 ; $5bd9
    bne $5bd0                                ; $5bdb
    lda #$ff                                 ; $5bdd
    sta $d9,x                                ; $5bdf
    ldx #$18                                 ; $5be1
    jsr $e9ff                                ; $5be3
    dex                                      ; $5be6
    bpl $5be3                                ; $5be7
    ldy #$00                                 ; $5be9
    sty $d3                                  ; $5beb
    sty $d6                                  ; $5bed
    ldx $d6                                  ; $5bef
    lda $d3                                  ; $5bf1
    ldy $d9,x                                ; $5bf3
    bmi $5bff                                ; $5bf5
    clc                                      ; $5bf7
    adc #$28                                 ; $5bf8
    sta $d3                                  ; $5bfa
    dex                                      ; $5bfc
    bpl $5bf3                                ; $5bfd
    jsr $e9f0                                ; $5bff
    lda #$27                                 ; $5c02
    inx                                      ; $5c04
    ldy $d9,x                                ; $5c05
    bmi $5c0f                                ; $5c07
    clc                                      ; $5c09
    adc #$28                                 ; $5c0a
    inx                                      ; $5c0c
    bpl $5c05                                ; $5c0d
    sta $d5                                  ; $5c0f
    jmp $ea24                                ; $5c11
    jmp $fba9                                ; $5c14
    jmp $e101                                ; $5c17
    jmp $f894                                ; $5c1a
    jsr $e5a0                                ; $5c1d
    jmp $e566                                ; $5c20
    lda #$03                                 ; $5c23
    sta $9a                                  ; $5c25
    lda #$00                                 ; $5c27
    sta $99                                  ; $5c29
    ldx #$2f                                 ; $5c2b
    lda $ecb8,x                              ; $5c2d
    sta $cfff,x                              ; $5c30
    dex                                      ; $5c33
    bne $5c2d                                ; $5c34
    rts                                      ; $5c36
    ldy $0277                                ; $5c37
    ldx #$00                                 ; $5c3a
    lda $0278,x                              ; $5c3c
    sta $0277,x                              ; $5c3f
    inx                                      ; $5c42
    cpx $c6                                  ; $5c43
    bne $5c3c                                ; $5c45
    dec $c6                                  ; $5c47
    tya                                      ; $5c49
    cli                                      ; $5c4a
    clc                                      ; $5c4b
    rts                                      ; $5c4c
    jsr $e716                                ; $5c4d
    lda $c6                                  ; $5c50
    sta $cc                                  ; $5c52
    sta $0292                                ; $5c54
    beq $5c50                                ; $5c57
    sei                                      ; $5c59
    lda $cf                                  ; $5c5a
    beq $5c6a                                ; $5c5c
    lda $ce                                  ; $5c5e
    ldx $0287                                ; $5c60
    ldy #$00                                 ; $5c63
    sty $cf                                  ; $5c65
    jsr $ea13                                ; $5c67
    jsr $f533                                ; $5c6a
    cmp #$83                                 ; $5c6d
    bne $5c81                                ; $5c6f
    ldx #$09                                 ; $5c71
    sei                                      ; $5c73
    stx $c6                                  ; $5c74
    lda $ece6,x                              ; $5c76
    sta $0276,x                              ; $5c79
    dex                                      ; $5c7c
    bne $5c76                                ; $5c7d
    beq $5c50                                ; $5c7f
    cmp #$0d                                 ; $5c81
    bne $5c4d                                ; $5c83
    ldy $d5                                  ; $5c85
    sty $d0                                  ; $5c87
    lda ($d1),y                              ; $5c89
    cmp #$20                                 ; $5c8b
    bne $5c92                                ; $5c8d
    dey                                      ; $5c8f
    bne $5c89                                ; $5c90
    iny                                      ; $5c92
    sty $c8                                  ; $5c93
    ldy #$00                                 ; $5c95
    sty $0292                                ; $5c97
    sty $d3                                  ; $5c9a
    sty $d4                                  ; $5c9c
    lda $c9                                  ; $5c9e
    bmi $5cbd                                ; $5ca0
    ldx $d6                                  ; $5ca2
    jsr $fd9c                                ; $5ca4
    cpx $c9                                  ; $5ca7
    bne $5cbd                                ; $5ca9
    lda $ca                                  ; $5cab
    sta $d3                                  ; $5cad
    cmp $c8                                  ; $5caf
    bcc $5cbd                                ; $5cb1
    bcs $5ce0                                ; $5cb3
    tya                                      ; $5cb5
    pha                                      ; $5cb6
    txa                                      ; $5cb7
    pha                                      ; $5cb8
    lda $d0                                  ; $5cb9
    beq $5c50                                ; $5cbb
    ldy $d3                                  ; $5cbd
    lda ($d1),y                              ; $5cbf
    sta $d7                                  ; $5cc1
    and #$3f                                 ; $5cc3
    asl $d7                                  ; $5cc5
    bit $d7                                  ; $5cc7
    bpl $5ccd                                ; $5cc9
    ora #$80                                 ; $5ccb
    bcc $5cd3                                ; $5ccd
    ldx $d4                                  ; $5ccf
    bne $5cd7                                ; $5cd1
    bvs $5cd7                                ; $5cd3
    ora #$40                                 ; $5cd5
    inc $d3                                  ; $5cd7
    jsr $e684                                ; $5cd9
    cpy $c8                                  ; $5cdc
    bne $5cf7                                ; $5cde
    lda #$00                                 ; $5ce0
    sta $d0                                  ; $5ce2
    lda #$0d                                 ; $5ce4
    ldx $99                                  ; $5ce6
    cpx #$03                                 ; $5ce8
    beq $5cf2                                ; $5cea
    ldx $9a                                  ; $5cec
    cpx #$03                                 ; $5cee
    beq $5cf5                                ; $5cf0
    jsr $e716                                ; $5cf2
    lda #$0d                                 ; $5cf5
    sta $d7                                  ; $5cf7
    pla                                      ; $5cf9
    tax                                      ; $5cfa
    pla                                      ; $5cfb
    tay                                      ; $5cfc
    lda $d7                                  ; $5cfd
    cmp #$de                                 ; $5cff
    bne $5d05                                ; $5d01
    lda #$ff                                 ; $5d03
    clc                                      ; $5d05
    rts                                      ; $5d06
    cmp #$22                                 ; $5d07
    bne $5d13                                ; $5d09
    lda $d4                                  ; $5d0b
    eor #$01                                 ; $5d0d
    sta $d4                                  ; $5d0f
    lda #$22                                 ; $5d11
    rts                                      ; $5d13
    ora #$40                                 ; $5d14
    ldx $c7                                  ; $5d16
    beq $5d1c                                ; $5d18
    ora #$80                                 ; $5d1a
    ldx $d8                                  ; $5d1c
    beq $5d22                                ; $5d1e
    lsr $d4                                  ; $5d20
    ldx $0286                                ; $5d22
    jsr $ea13                                ; $5d25
    jsr $e6b6                                ; $5d28
    lda $d8                                  ; $5d2b
    beq $5d31                                ; $5d2d
    dec $d8                                  ; $5d2f
    pla                                      ; $5d31
    tay                                      ; $5d32
    pla                                      ; $5d33
    tax                                      ; $5d34
    pla                                      ; $5d35
    clc                                      ; $5d36
    cli                                      ; $5d37
    rts                                      ; $5d38
    jsr $e8b3                                ; $5d39
    inc $d3                                  ; $5d3c
    lda $d5                                  ; $5d3e
    cmp $d3                                  ; $5d40
    bcs $5d83                                ; $5d42
    cmp #$4f                                 ; $5d44
    beq $5d7a                                ; $5d46
    lda $0292                                ; $5d48
    beq $5d50                                ; $5d4b
    jmp $e967                                ; $5d4d
    ldx $d6                                  ; $5d50
    cpx #$19                                 ; $5d52
    bcc $5d5d                                ; $5d54
    jsr $e8ea                                ; $5d56
    dec $d6                                  ; $5d59
    ldx $d6                                  ; $5d5b
    asl $d9,x                                ; $5d5d
    lsr $d9,x                                ; $5d5f
    inx                                      ; $5d61
    lda $d9,x                                ; $5d62
    ora #$80                                 ; $5d64
    sta $d9,x                                ; $5d66
    dex                                      ; $5d68
    lda $d5                                  ; $5d69
    clc                                      ; $5d6b
    adc #$28                                 ; $5d6c
    sta $d5                                  ; $5d6e
    lda $d9,x                                ; $5d70
    bmi $5d77                                ; $5d72
    dex                                      ; $5d74
    bne $5d70                                ; $5d75
    jmp $e9f0                                ; $5d77
    dec $d6                                  ; $5d7a
    jsr $e87c                                ; $5d7c
    lda #$00                                 ; $5d7f
    sta $d3                                  ; $5d81
    rts                                      ; $5d83
    ldx $d6                                  ; $5d84
    bne $5d8e                                ; $5d86
    stx $d3                                  ; $5d88
    pla                                      ; $5d8a
    pla                                      ; $5d8b
    bne $5d2b                                ; $5d8c
    dex                                      ; $5d8e
    stx $d6                                  ; $5d8f
    jsr $e56c                                ; $5d91
    ldy $d5                                  ; $5d94
    sty $d3                                  ; $5d96
    rts                                      ; $5d98
    pha                                      ; $5d99
    sta $d7                                  ; $5d9a
    txa                                      ; $5d9c
    pha                                      ; $5d9d
    tya                                      ; $5d9e
    pha                                      ; $5d9f
    lda #$00                                 ; $5da0
    sta $d0                                  ; $5da2
    ldy $d3                                  ; $5da4
    lda $d7                                  ; $5da6
    bpl $5dad                                ; $5da8
    jmp $e7d4                                ; $5daa
    cmp #$0d                                 ; $5dad
    bne $5db4                                ; $5daf
    jmp $e891                                ; $5db1
    cmp #$20                                 ; $5db4
    bcc $5dc8                                ; $5db6
    cmp #$60                                 ; $5db8
    bcc $5dc0                                ; $5dba
    and #$df                                 ; $5dbc
    bne $5dc2                                ; $5dbe
    and #$3f                                 ; $5dc0
    jsr $e684                                ; $5dc2
    jmp $e693                                ; $5dc5
    ldx $d8                                  ; $5dc8
    beq $5dcf                                ; $5dca
    jmp $e697                                ; $5dcc
    cmp #$14                                 ; $5dcf
    bne $5e01                                ; $5dd1
    tya                                      ; $5dd3
    bne $5ddc                                ; $5dd4
    jsr $e701                                ; $5dd6
    jmp $e773                                ; $5dd9
    jsr $e8a1                                ; $5ddc
    dey                                      ; $5ddf
    sty $d3                                  ; $5de0
    jsr $ea24                                ; $5de2
    iny                                      ; $5de5
    lda ($d1),y                              ; $5de6
    dey                                      ; $5de8
    sta ($d1),y                              ; $5de9
    iny                                      ; $5deb
    lda ($f3),y                              ; $5dec
    dey                                      ; $5dee
    sta ($f3),y                              ; $5def
    iny                                      ; $5df1
    cpy $d5                                  ; $5df2
    bne $5de5                                ; $5df4
    lda #$20                                 ; $5df6
    sta ($d1),y                              ; $5df8
    lda $0286                                ; $5dfa
    sta ($f3),y                              ; $5dfd
    bpl $5e4e                                ; $5dff
    ldx $d4                                  ; $5e01
    beq $5e08                                ; $5e03
    jmp $e697                                ; $5e05
    cmp #$12                                 ; $5e08
    bne $5e0e                                ; $5e0a
    sta $c7                                  ; $5e0c
    cmp #$13                                 ; $5e0e
    bne $5e15                                ; $5e10
    jsr $e566                                ; $5e12
    cmp #$1d                                 ; $5e15
    bne $5e30                                ; $5e17
    iny                                      ; $5e19
    jsr $e8b3                                ; $5e1a
    sty $d3                                  ; $5e1d
    dey                                      ; $5e1f
    cpy $d5                                  ; $5e20
    bcc $5e2d                                ; $5e22
    dec $d6                                  ; $5e24
    jsr $e87c                                ; $5e26
    ldy #$00                                 ; $5e29
    sty $d3                                  ; $5e2b
    jmp $e6ae                                ; $5e2d
    cmp #$11                                 ; $5e30
    bne $5e51                                ; $5e32
    clc                                      ; $5e34
    tya                                      ; $5e35
    adc #$28                                 ; $5e36
    tay                                      ; $5e38
    inc $d6                                  ; $5e39
    cmp $d5                                  ; $5e3b
    bcc $5e2b                                ; $5e3d
    beq $5e2b                                ; $5e3f
    dec $d6                                  ; $5e41
    sbc #$28                                 ; $5e43
    bcc $5e4b                                ; $5e45
    sta $d3                                  ; $5e47
    bne $5e43                                ; $5e49
    jsr $e87c                                ; $5e4b
    jmp $e6ae                                ; $5e4e
    jsr $e8cb                                ; $5e51
    jmp $fa6b                                ; $5e54
    and #$7f                                 ; $5e57
    cmp #$7f                                 ; $5e59
    bne $5e5f                                ; $5e5b
    lda #$5e                                 ; $5e5d
    cmp #$20                                 ; $5e5f
    bcc $5e66                                ; $5e61
    jmp $e691                                ; $5e63
    cmp #$0d                                 ; $5e66
    bne $5e6d                                ; $5e68
    jmp $e891                                ; $5e6a
    ldx $d4                                  ; $5e6d
    bne $5eb0                                ; $5e6f
    cmp #$14                                 ; $5e71
    bne $5eac                                ; $5e73
    ldy $d5                                  ; $5e75
    lda ($d1),y                              ; $5e77
    cmp #$20                                 ; $5e79
    bne $5e81                                ; $5e7b
    cpy $d3                                  ; $5e7d
    bne $5e88                                ; $5e7f
    cpy #$4f                                 ; $5e81
    beq $5ea9                                ; $5e83
    jsr $e965                                ; $5e85
    ldy $d5                                  ; $5e88
    jsr $ea24                                ; $5e8a
    dey                                      ; $5e8d
    lda ($d1),y                              ; $5e8e
    iny                                      ; $5e90
    sta ($d1),y                              ; $5e91
    dey                                      ; $5e93
    lda ($f3),y                              ; $5e94
    iny                                      ; $5e96
    sta ($f3),y                              ; $5e97
    dey                                      ; $5e99
    cpy $d3                                  ; $5e9a
    bne $5e8d                                ; $5e9c
    lda #$20                                 ; $5e9e
    sta ($d1),y                              ; $5ea0
    lda $0286                                ; $5ea2
    sta ($f3),y                              ; $5ea5
    inc $d8                                  ; $5ea7
    jmp $e6ae                                ; $5ea9
    ldx $d8                                  ; $5eac
    beq $5eb5                                ; $5eae
    ora #$40                                 ; $5eb0
    jmp $e697                                ; $5eb2
    cmp #$11                                 ; $5eb5
    bne $5ecf                                ; $5eb7
    ldx $d6                                  ; $5eb9
    beq $5ef4                                ; $5ebb
    dec $d6                                  ; $5ebd
    lda $d3                                  ; $5ebf
    sec                                      ; $5ec1
    sbc #$28                                 ; $5ec2
    bcc $5eca                                ; $5ec4
    sta $d3                                  ; $5ec6
    bpl $5ef4                                ; $5ec8
    jsr $e56c                                ; $5eca
    bne $5ef4                                ; $5ecd
    cmp #$12                                 ; $5ecf
    bne $5ed7                                ; $5ed1
    lda #$00                                 ; $5ed3
    sta $c7                                  ; $5ed5
    cmp #$1d                                 ; $5ed7
    bne $5eed                                ; $5ed9
    tya                                      ; $5edb
    beq $5ee7                                ; $5edc
    jsr $e8a1                                ; $5ede
    dey                                      ; $5ee1
    sty $d3                                  ; $5ee2
    jmp $e6ae                                ; $5ee4
    jsr $e701                                ; $5ee7
    jmp $e6ae                                ; $5eea
    cmp #$13                                 ; $5eed
    bne $5ef7                                ; $5eef
    jsr $e544                                ; $5ef1
    jmp $e6ae                                ; $5ef4
    ora #$80                                 ; $5ef7
    jsr $e8cb                                ; $5ef9
    jmp $ec4f                                ; $5efc
    lsr $c9                                  ; $5eff
    ldx $d6                                  ; $5f01
    inx                                      ; $5f03
    cpx #$19                                 ; $5f04
    bne $5f0b                                ; $5f06
    jsr $e8ea                                ; $5f08
    lda $d9,x                                ; $5f0b
    bpl $5f03                                ; $5f0d
    stx $d6                                  ; $5f0f
    jmp $e56c                                ; $5f11
    ldx #$00                                 ; $5f14
    stx $d8                                  ; $5f16
    stx $c7                                  ; $5f18
    stx $d4                                  ; $5f1a
    stx $d3                                  ; $5f1c
    jsr $e87c                                ; $5f1e
    jmp $e6ae                                ; $5f21
    ldx #$02                                 ; $5f24
    lda #$00                                 ; $5f26
    cmp $d3                                  ; $5f28
    beq $5f33                                ; $5f2a
    clc                                      ; $5f2c
    adc #$28                                 ; $5f2d
    dex                                      ; $5f2f
    bne $5f28                                ; $5f30
    rts                                      ; $5f32
    dec $d6                                  ; $5f33
    rts                                      ; $5f35
    ldx #$02                                 ; $5f36
    lda #$27                                 ; $5f38
    cmp $d3                                  ; $5f3a
    beq $5f45                                ; $5f3c
    clc                                      ; $5f3e
    adc #$28                                 ; $5f3f
    dex                                      ; $5f41
    bne $5f3a                                ; $5f42
    rts                                      ; $5f44
    ldx $d6                                  ; $5f45
    cpx #$19                                 ; $5f47
    beq $5f4d                                ; $5f49
    inc $d6                                  ; $5f4b
    rts                                      ; $5f4d
    ldx #$0f                                 ; $5f4e
    cmp $e8da,x                              ; $5f50
    beq $5f59                                ; $5f53
    dex                                      ; $5f55
    bpl $5f50                                ; $5f56
    rts                                      ; $5f58
    stx $0286                                ; $5f59
    rts                                      ; $5f5c
    bcc $5f64                                ; $5f5d
    !byte $1c                                ; $5f5f (undefined opcode)
    !byte $9f                                ; $5f60 (undefined opcode)
    !byte $9c                                ; $5f61 (undefined opcode)
    asl $9e1f,x                              ; $5f62
    sta ($95,x)                              ; $5f65
    stx $97,y                                ; $5f67
    tya                                      ; $5f69
    sta $9b9a,y                              ; $5f6a
    lda $ac                                  ; $5f6d
    pha                                      ; $5f6f
    lda $ad                                  ; $5f70
    pha                                      ; $5f72
    lda $ae                                  ; $5f73
    pha                                      ; $5f75
    lda $af                                  ; $5f76
    pha                                      ; $5f78
    ldx #$ff                                 ; $5f79
    dec $d6                                  ; $5f7b
    dec $c9                                  ; $5f7d
    lda #$7f                                 ; $5f7f
    sta $dc00                                ; $5f81
    lda $dc01                                ; $5f84
    and #$24                                 ; $5f87
    eor #$24                                 ; $5f89
    beq $5fa1                                ; $5f8b
    eor #$04                                 ; $5f8d
    beq $5f84                                ; $5f8f
    lda $dc01                                ; $5f91
    and #$24                                 ; $5f94
    eor #$04                                 ; $5f96
    bne $5f91                                ; $5f98
    sta $c6                                  ; $5f9a
    lda $aabd                                ; $5f9c
    cmp ($cf,x)                              ; $5f9f
    inx                                      ; $5fa1
    jsr $e9f0                                ; $5fa2
    cpx #$18                                 ; $5fa5
    bcs $5fb5                                ; $5fa7
    lda $ecf1,x                              ; $5fa9
    sta $ac                                  ; $5fac
    lda $da,x                                ; $5fae
    jsr $e9c8                                ; $5fb0
    bmi $5fa1                                ; $5fb3
    jsr $e9ff                                ; $5fb5
    ldx #$00                                 ; $5fb8
    lda $d9,x                                ; $5fba
    and #$7f                                 ; $5fbc
    ldy $da,x                                ; $5fbe
    bpl $5fc4                                ; $5fc0
    ora #$80                                 ; $5fc2
    sta $d9,x                                ; $5fc4
    inx                                      ; $5fc6
    cpx #$18                                 ; $5fc7
    bne $5fba                                ; $5fc9
    lda $f1                                  ; $5fcb
    ora #$80                                 ; $5fcd
    sta $f1                                  ; $5fcf
    lda $d9                                  ; $5fd1
    ora #$80                                 ; $5fd3
    sta $d9                                  ; $5fd5
    inc $d6                                  ; $5fd7
    ldx $d6                                  ; $5fd9
    pla                                      ; $5fdb
    sta $af                                  ; $5fdc
    pla                                      ; $5fde
    sta $ae                                  ; $5fdf
    pla                                      ; $5fe1
    sta $ad                                  ; $5fe2
    pla                                      ; $5fe4
    sta $ac                                  ; $5fe5
    rts                                      ; $5fe7
    ldx $d6                                  ; $5fe8
    inx                                      ; $5fea
    lda $d9,x                                ; $5feb
    bpl $5fea                                ; $5fed
    stx $02a5                                ; $5fef
    cpx #$18                                 ; $5ff2
    beq $6004                                ; $5ff4
    bcc $6004                                ; $5ff6
    jsr $e8ea                                ; $5ff8
    ldx $02a5                                ; $5ffb
    dex                                      ; $5ffe
    dec $d6                                  ; $5fff
    jmp $e6da                                ; $6001
    lda $ac                                  ; $6004
    pha                                      ; $6006
    lda $ad                                  ; $6007
    pha                                      ; $6009
    lda $ae                                  ; $600a
    pha                                      ; $600c
    lda $af                                  ; $600d
    pha                                      ; $600f
    ldx #$19                                 ; $6010
    dex                                      ; $6012
    jsr $e9f0                                ; $6013
    cpx $02a5                                ; $6016
    bcc $6029                                ; $6019
    beq $6029                                ; $601b
    lda $ecef,x                              ; $601d
    sta $ac                                  ; $6020
    lda $d8,x                                ; $6022
    jsr $e9c8                                ; $6024
    bmi $6012                                ; $6027
    jsr $e9ff                                ; $6029
    ldx #$17                                 ; $602c
    cpx $02a5                                ; $602e
    bcc $6042                                ; $6031
    lda $da,x                                ; $6033
    and #$7f                                 ; $6035
    ldy $d9,x                                ; $6037
    bpl $603d                                ; $6039
    ora #$80                                 ; $603b
    sta $da,x                                ; $603d
    dex                                      ; $603f
    bne $602e                                ; $6040
    ldx $02a5                                ; $6042
    jsr $e6da                                ; $6045
    jmp $e958                                ; $6048
    and #$03                                 ; $604b
    ora $0288                                ; $604d
    sta $ad                                  ; $6050
    jsr $e9e0                                ; $6052
    ldy #$27                                 ; $6055
    lda ($ac),y                              ; $6057
    sta ($d1),y                              ; $6059
    lda ($ae),y                              ; $605b
    sta ($f3),y                              ; $605d
    dey                                      ; $605f
    bpl $6057                                ; $6060
    rts                                      ; $6062
    jsr $ea24                                ; $6063
    lda $ac                                  ; $6066
    sta $ae                                  ; $6068
    lda $ad                                  ; $606a
    and #$03                                 ; $606c
    ora #$d8                                 ; $606e
    sta $af                                  ; $6070
    rts                                      ; $6072
    lda $ecf0,x                              ; $6073
    sta $d1                                  ; $6076
    lda $d9,x                                ; $6078
    and #$03                                 ; $607a
    ora $0288                                ; $607c
    sta $d2                                  ; $607f
    rts                                      ; $6081
    ldy #$27                                 ; $6082
    jsr $e9f0                                ; $6084
    jsr $ea24                                ; $6087
    jsr $e4da                                ; $608a
    lda #$20                                 ; $608d
    sta ($d1),y                              ; $608f
    dey                                      ; $6091
    bpl $608a                                ; $6092
    rts                                      ; $6094
    nop                                      ; $6095
    tay                                      ; $6096
    lda #$02                                 ; $6097
    sta $cd                                  ; $6099
    jsr $ea24                                ; $609b
    tya                                      ; $609e
    ldy $d3                                  ; $609f
    sta ($d1),y                              ; $60a1
    txa                                      ; $60a3
    sta ($f3),y                              ; $60a4
    rts                                      ; $60a6
    lda $d1                                  ; $60a7
    sta $f3                                  ; $60a9
    lda $d2                                  ; $60ab
    and #$03                                 ; $60ad
    ora #$d8                                 ; $60af
    sta $f4                                  ; $60b1
    rts                                      ; $60b3
    jsr $ffea                                ; $60b4
    lda $cc                                  ; $60b7
    bne $60e4                                ; $60b9
    dec $cd                                  ; $60bb
    bne $60e4                                ; $60bd
    lda #$14                                 ; $60bf
    sta $cd                                  ; $60c1
    ldy $d3                                  ; $60c3
    lsr $cf                                  ; $60c5
    ldx $0287                                ; $60c7
    lda ($d1),y                              ; $60ca
    bcs $60df                                ; $60cc
    inc $cf                                  ; $60ce
    sta $ce                                  ; $60d0
    jsr $ea24                                ; $60d2
    lda ($f3),y                              ; $60d5
    sta $0287                                ; $60d7
    ldx $0286                                ; $60da
    lda $ce                                  ; $60dd
    eor #$80                                 ; $60df
    jsr $ea1c                                ; $60e1
    lda $01                                  ; $60e4
    and #$10                                 ; $60e6
    beq $60f4                                ; $60e8
    ldy #$00                                 ; $60ea
    sty $c0                                  ; $60ec
    lda $01                                  ; $60ee
    ora #$20                                 ; $60f0
    bne $60fc                                ; $60f2
    lda $c0                                  ; $60f4
    bne $60fe                                ; $60f6
    lda $01                                  ; $60f8
    and #$1f                                 ; $60fa
    sta $01                                  ; $60fc
    jsr $ea87                                ; $60fe
    lda $dc0d                                ; $6101
    pla                                      ; $6104
    tay                                      ; $6105
    pla                                      ; $6106
    tax                                      ; $6107
    pla                                      ; $6108
    rti                                      ; $6109
    lda #$00                                 ; $610a
    sta $028d                                ; $610c
    ldy #$40                                 ; $610f
    sty $cb                                  ; $6111
    sta $dc00                                ; $6113
    ldx $dc01                                ; $6116
    cpx #$ff                                 ; $6119
    beq $617e                                ; $611b
    tay                                      ; $611d
    lda #$81                                 ; $611e
    sta $f5                                  ; $6120
    lda #$eb                                 ; $6122
    sta $f6                                  ; $6124
    lda #$fe                                 ; $6126
    sta $dc00                                ; $6128
    ldx #$08                                 ; $612b
    pha                                      ; $612d
    lda $dc01                                ; $612e
    cmp $dc01                                ; $6131
    bne $612e                                ; $6134
    lsr                                    ; $6136
    bcs $614f                                ; $6137
    pha                                      ; $6139
    lda ($f5),y                              ; $613a
    cmp #$05                                 ; $613c
    bcs $614c                                ; $613e
    cmp #$03                                 ; $6140
    beq $614c                                ; $6142
    ora $028d                                ; $6144
    sta $028d                                ; $6147
    bpl $614e                                ; $614a
    sty $cb                                  ; $614c
    pla                                      ; $614e
    iny                                      ; $614f
    cpy #$41                                 ; $6150
    bcs $615f                                ; $6152
    dex                                      ; $6154
    bne $6136                                ; $6155
    sec                                      ; $6157
    pla                                      ; $6158
    rol                                    ; $6159
    sta $dc00                                ; $615a
    bne $612b                                ; $615d
    pla                                      ; $615f
    jmp ($028f)                              ; $6160
    ldy $cb                                  ; $6163
    lda ($f5),y                              ; $6165
    tax                                      ; $6167
    cpy $c5                                  ; $6168
    beq $6173                                ; $616a
    lda #$10                                 ; $616c
    jsr $fb11                                ; $616e
    bne $61a9                                ; $6171
    and #$7f                                 ; $6173
    bit $028a                                ; $6175
    bmi $6190                                ; $6178
    bvs $61c5                                ; $617a
    cmp #$7f                                 ; $617c
    beq $61a9                                ; $617e
    cmp #$0f                                 ; $6180
    bcc $6188                                ; $6182
    cmp #$15                                 ; $6184
    bcc $6190                                ; $6186
    cmp #$1d                                 ; $6188
    beq $6190                                ; $618a
    cmp #$20                                 ; $618c
    bne $61c5                                ; $618e
    ldy $028c                                ; $6190
    beq $619a                                ; $6193
    dec $028c                                ; $6195
    bne $61c5                                ; $6198
    dec $028b                                ; $619a
    bne $61c5                                ; $619d
    ldy #$04                                 ; $619f
    sty $028b                                ; $61a1
    ldy $c6                                  ; $61a4
    dey                                      ; $61a6
    bpl $61c5                                ; $61a7
    ldy $cb                                  ; $61a9
    sty $c5                                  ; $61ab
    ldy $028d                                ; $61ad
    sty $028e                                ; $61b0
    cpx #$fd                                 ; $61b3
    bcs $61c5                                ; $61b5
    txa                                      ; $61b7
    ldx $c6                                  ; $61b8
    cpx $0289                                ; $61ba
    bcs $61c5                                ; $61bd
    sta $0277,x                              ; $61bf
    inx                                      ; $61c2
    stx $c6                                  ; $61c3
    lda #$7f                                 ; $61c5
    sta $dc00                                ; $61c7
    rts                                      ; $61ca
    lda $028d                                ; $61cb
    cmp #$03                                 ; $61ce
    bne $61e7                                ; $61d0
    cmp $028e                                ; $61d2
    beq $61c5                                ; $61d5
    lda $0291                                ; $61d7
    bmi $61f9                                ; $61da
    lda $d018                                ; $61dc
    eor #$02                                 ; $61df
    sta $d018                                ; $61e1
    jmp $eb76                                ; $61e4
    asl                                    ; $61e7
    cmp #$08                                 ; $61e8
    bcc $61ee                                ; $61ea
    lda #$06                                 ; $61ec
    tax                                      ; $61ee
    lda $eb79,x                              ; $61ef
    sta $f5                                  ; $61f2
    lda $eb7a,x                              ; $61f4
    sta $f6                                  ; $61f7
    jmp $eae0                                ; $61f9
    sta ($eb,x)                              ; $61fc
    !byte $c2                                ; $61fe (undefined opcode)
    !byte $eb                                ; $61ff (undefined opcode)
    !byte $03                                ; $6200 (undefined opcode)
    cpx $ec78                                ; $6201
    !byte $14                                ; $6204 (undefined opcode)
    ora $881d                                ; $6205
    sta $86                                  ; $6208
    !byte $87                                ; $620a (undefined opcode)
    ora ($33),y                              ; $620b
    !byte $57                                ; $620d (undefined opcode)
    eor ($34,x)                              ; $620e
    !byte $5a                                ; $6210 (undefined opcode)
    !byte $53                                ; $6211 (undefined opcode)
    eor $01                                  ; $6212
    and $52,x                                ; $6214
    !byte $44                                ; $6216 (undefined opcode)
    rol $43,x                                ; $6217
    lsr $54                                  ; $6219
    cli                                      ; $621b
    !byte $37                                ; $621c (undefined opcode)
    eor $3847,y                              ; $621d
    !byte $42                                ; $6220 (undefined opcode)
    pha                                      ; $6221
    eor $56,x                                ; $6222
    and $4a49,y                              ; $6224
    bmi $6276                                ; $6227
    !byte $4b                                ; $6229 (undefined opcode)
    !byte $4f                                ; $622a (undefined opcode)
    lsr $502b                                ; $622b
    jmp $2e2d                                ; $622e
    !byte $3a                                ; $6231 (undefined opcode)
    rti                                      ; $6232
    bit $2a5c                                ; $6233
    !byte $3b                                ; $6236 (undefined opcode)
    !byte $13                                ; $6237 (undefined opcode)
    ora ($3d,x)                              ; $6238
    lsr $312f,x                              ; $623a
    !byte $5f                                ; $623d (undefined opcode)
    !byte $04                                ; $623e (undefined opcode)
    !byte $32                                ; $623f (undefined opcode)
    jsr $5102                                ; $6240
    !byte $03                                ; $6243 (undefined opcode)
    !byte $ff                                ; $6244 (undefined opcode)
    sty $8d,x                                ; $6245
    sta $898c,x                              ; $6247
    txa                                      ; $624a
    !byte $8b                                ; $624b (undefined opcode)
    sta ($23),y                              ; $624c
    !byte $d7                                ; $624e (undefined opcode)
    cmp ($24,x)                              ; $624f
    !byte $da                                ; $6251 (undefined opcode)
    !byte $d3                                ; $6252 (undefined opcode)
    cmp $01                                  ; $6253
    and $d2                                  ; $6255
    cpy $26                                  ; $6257
    !byte $c3                                ; $6259 (undefined opcode)
    dec $d4                                  ; $625a
    cld                                      ; $625c
    !byte $27                                ; $625d (undefined opcode)
    cmp $28c7,y                              ; $625e
    !byte $c2                                ; $6261 (undefined opcode)
    iny                                      ; $6262
    cmp $d6,x                                ; $6263
    and #$c9                                 ; $6265
    dex                                      ; $6267
    bmi $6237                                ; $6268
    !byte $cb                                ; $626a (undefined opcode)
    !byte $cf                                ; $626b (undefined opcode)
    dec $d0db                                ; $626c
    cpy $3edd                                ; $626f
    !byte $5b                                ; $6272 (undefined opcode)
    tsx                                      ; $6273
    !byte $3c                                ; $6274 (undefined opcode)
    lda #$c0                                 ; $6275
    eor $0193,x                              ; $6277
    and $3fde,x                              ; $627a
    and ($5f,x)                              ; $627d
    !byte $04                                ; $627f (undefined opcode)
    !byte $22                                ; $6280 (undefined opcode)
    ldy #$02                                 ; $6281
    cmp ($83),y                              ; $6283
    !byte $ff                                ; $6285 (undefined opcode)
    !byte $10,$8d                            ; $6286 (bpl $6215)
    sta $808f,x                              ; $6288
    !byte $82                                ; $628b (undefined opcode)
    sty $91                                  ; $628c
    stx $b3,y                                ; $628e
    bcs $6229                                ; $6290
    lda $b1ae                                ; $6292
    ora ($98,x)                              ; $6295
    !byte $b2                                ; $6297 (undefined opcode)
    ldy $bc99                                ; $6298
    !byte $bb                                ; $629b (undefined opcode)
    !byte $a3                                ; $629c (undefined opcode)
    lda $b79a,x                              ; $629d
    lda $9b                                  ; $62a0
    !byte $bf                                ; $62a2 (undefined opcode)
    ldy $b8,x                                ; $62a3
    ldx $a229,y                              ; $62a5
    lda $30,x                                ; $62a8
    !byte $a7                                ; $62aa (undefined opcode)
    lda ($b9,x)                              ; $62ab
    tax                                      ; $62ad
    ldx $af                                  ; $62ae
    ldx $dc,y                                ; $62b0
    rol $a45b,x                              ; $62b2
    !byte $3c                                ; $62b5 (undefined opcode)
    tay                                      ; $62b6
    !byte $df                                ; $62b7 (undefined opcode)
    eor $0193,x                              ; $62b8
    and $3fde,x                              ; $62bb
    sta ($5f,x)                              ; $62be
    !byte $04                                ; $62c0 (undefined opcode)
    sta $a0,x                                ; $62c1
    !byte $02                                ; $62c3 (undefined opcode)
    !byte $ab                                ; $62c4 (undefined opcode)
    !byte $83                                ; $62c5 (undefined opcode)
    !byte $ff                                ; $62c6 (undefined opcode)
    cmp #$0e                                 ; $62c7
    bne $62d2                                ; $62c9
    lda $d018                                ; $62cb
    ora #$02                                 ; $62ce
    bne $62db                                ; $62d0
    cmp #$8e                                 ; $62d2
    bne $62e1                                ; $62d4
    lda $d018                                ; $62d6
    and #$fd                                 ; $62d9
    sta $d018                                ; $62db
    jmp $e6ae                                ; $62de
    cmp #$08                                 ; $62e1
    bne $62ec                                ; $62e3
    lda #$80                                 ; $62e5
    ora $0291                                ; $62e7
    bmi $62f5                                ; $62ea
    cmp #$09                                 ; $62ec
    bne $62de                                ; $62ee
    lda #$7f                                 ; $62f0
    and $0291                                ; $62f2
    sta $0291                                ; $62f5
    jmp $e6ae                                ; $62f8
    !byte $0f                                ; $62fb (undefined opcode)
    inc $ffff,x                              ; $62fc
    !byte $ff                                ; $62ff (undefined opcode)
    !byte $ff                                ; $6300 (undefined opcode)
    !byte $ff                                ; $6301 (undefined opcode)
    !byte $ff                                ; $6302 (undefined opcode)
    !byte $1c                                ; $6303 (undefined opcode)
    !byte $17                                ; $6304 (undefined opcode)
    ora ($9f,x)                              ; $6305
    !byte $1a                                ; $6307 (undefined opcode)
    !byte $13                                ; $6308 (undefined opcode)
    ora $ff                                  ; $6309
    !byte $9c                                ; $630b (undefined opcode)
    !byte $12                                ; $630c (undefined opcode)
    !byte $04                                ; $630d (undefined opcode)
    asl $0603,x                              ; $630e
    !byte $14                                ; $6311 (undefined opcode)
    clc                                      ; $6312
    !byte $1f                                ; $6313 (undefined opcode)
    ora $9e07,y                              ; $6314
    !byte $02                                ; $6317 (undefined opcode)
    php                                      ; $6318
    ora $16,x                                ; $6319
    !byte $12                                ; $631b (undefined opcode)
    ora #$0a                                 ; $631c
    !byte $92                                ; $631e (undefined opcode)
    ora $0f0b                                ; $631f
    asl $10ff                                ; $6322
    !byte $0c                                ; $6325 (undefined opcode)
    !byte $ff                                ; $6326 (undefined opcode)
    !byte $ff                                ; $6327 (undefined opcode)
    !byte $1b                                ; $6328 (undefined opcode)
    brk                                      ; $6329
    !byte $ff                                ; $632a (undefined opcode)
    !byte $1c                                ; $632b (undefined opcode)
    sbc $021d,x                              ; $632c
    !byte $ff                                ; $632f (undefined opcode)
    !byte $1f                                ; $6330 (undefined opcode)
    asl $90ff,x                              ; $6331
    asl $ff                                  ; $6334
    ora $ff                                  ; $6336
    !byte $ff                                ; $6338 (undefined opcode)
    ora ($ff),y                              ; $6339
    !byte $ff                                ; $633b (undefined opcode)
    brk                                      ; $633c
    brk                                      ; $633d
    brk                                      ; $633e
    brk                                      ; $633f
    brk                                      ; $6340
    brk                                      ; $6341
    brk                                      ; $6342
    brk                                      ; $6343
    brk                                      ; $6344
    brk                                      ; $6345
    brk                                      ; $6346
    brk                                      ; $6347
    brk                                      ; $6348
    brk                                      ; $6349
    brk                                      ; $634a
    brk                                      ; $634b
    brk                                      ; $634c
    !byte $9b                                ; $634d (undefined opcode)
    !byte $37                                ; $634e (undefined opcode)
    brk                                      ; $634f
    brk                                      ; $6350
    brk                                      ; $6351
    php                                      ; $6352
    brk                                      ; $6353
    !byte $14                                ; $6354 (undefined opcode)
    !byte $0f                                ; $6355 (undefined opcode)
    brk                                      ; $6356
    brk                                      ; $6357
    brk                                      ; $6358
    brk                                      ; $6359
    brk                                      ; $635a
    brk                                      ; $635b
    asl $0106                                ; $635c
    !byte $02                                ; $635f (undefined opcode)
    !byte $03                                ; $6360 (undefined opcode)
    !byte $04                                ; $6361 (undefined opcode)
    brk                                      ; $6362
    ora ($02,x)                              ; $6363
    !byte $03                                ; $6365 (undefined opcode)
    !byte $04                                ; $6366 (undefined opcode)
    ora $06                                  ; $6367
    !byte $07                                ; $6369 (undefined opcode)
    jmp $614f                                ; $636a
    ora $5393                                ; $636d
    eor $0d53,y                              ; $6370
    brk                                      ; $6373
    plp                                      ; $6374
    bvc $63ef                                ; $6375
    ldy #$c8                                 ; $6377
    beq $6393                                ; $6379
    rti                                      ; $637b
    pla                                      ; $637c
    bcc $6337                                ; $637d
    cpx #$08                                 ; $637f
    bmi $63db                                ; $6381
    !byte $80                                ; $6383 (undefined opcode)
    tay                                      ; $6384
    bne $637f                                ; $6385
    jsr $7048                                ; $6387
    tya                                      ; $638a
    cpy #$09                                 ; $638b
    rti                                      ; $638d
    bit $2009                                ; $638e
    bit $24a9                                ; $6391
    pha                                      ; $6394
    bit $94                                  ; $6395
    bpl $63a3                                ; $6397
    sec                                      ; $6399
    ror $a3                                  ; $639a
    jsr $ed40                                ; $639c
    lsr $94                                  ; $639f
    lsr $a3                                  ; $63a1
    pla                                      ; $63a3
    sta $95                                  ; $63a4
    sei                                      ; $63a6
    jsr $f951                                ; $63a7
    cmp #$24                                 ; $63aa
    bne $63b1                                ; $63ac
    jmp $f91a                                ; $63ae
; =============================================================================
; PARALLEL_MODE_ENTRY - Initialize parallel transfer mode for fast load
; Sets DATA OUT high to signal parallel mode to drive
; =============================================================================
    lda $dd00      ; Read CIA#2 port A       ; $63b1
    ora #$08       ; Set bit 3 (DATA OUT high) ; $63b4
    sta $dd00      ; Signal: "C64 ready for parallel mode" ; $63b6
    sei ; Disable interrupts for timing-critical code ; $63b9
    jsr $ee8e      ; IEC bus timing setup    ; $63ba
    jsr $ee97      ; Release CLK line        ; $63bd
    jsr $eeb3      ; Additional IEC setup    ; $63c0
    sei ; Ensure interrupts still off        ; $63c3
    jmp $f96f      ; Continue to standard load routine ; $63c4
; =============================================================================
; SERIAL_BIT_RECEIVE - Fallback bit-by-bit receive (when parallel unavailable)
; Receives 8 bits via IEC bus CLK/DATA lines, stores in $95
; =============================================================================
    jsr $eea9      ; Wait for CLK edge       ; $63c7
    bcs $6430      ; Error: timeout          ; $63ca
    jsr $ee85      ; Release DATA line       ; $63cc
    bit $a3        ; Check handshake state   ; $63cf
    bpl $63dd      ; Skip sync if not needed ; $63d1
    jsr $eea9      ; Wait for sync pulse high ; $63d3
    bcc $63d3                                ; $63d6
    jsr $eea9      ; Wait for sync pulse low ; $63d8
    bcs $63d8                                ; $63db
    jsr $eea9      ; Wait for data ready signal ; $63dd
    bcc $63dd                                ; $63e0
    jsr $ee8e      ; Prepare for bit reception ; $63e2
    lda #$08       ; 8 bits to receive       ; $63e5
    sta $a5        ; Store bit counter       ; $63e7
; --- Receive loop: get 8 bits from $DD00 bit 7 ---
    lda $dd00      ; Read port (bit 7 = data from drive) ; $63e9
    cmp $dd00      ; Wait for stable read    ; $63ec
    bne $63e9      ; Loop until two reads match ; $63ef
    asl          ; Shift bit 7 into carry  ; $63f1
    bcc $6433      ; Carry clear (bit 7 was 0): EOI/last-byte condition ; $63f2
    ror $95        ; Rotate carry into result byte ; $63f4
    bcs $63fd      ; Branch based on bit value ; $63f6
    jsr $eea0      ; Acknowledge: pull DATA low ; $63f8
    bne $6400                                ; $63fb
    jsr $ee97      ; Or: release CLK         ; $63fd
    jsr $ee85      ; Release DATA line       ; $6400
    nop ; Timing delay (4 cycles)            ; $6403
    nop                                      ; $6404
    nop                                      ; $6405
    nop                                      ; $6406
    lda $dd00      ; Read port for next handshake ; $6407
    and #$df       ; Clear bit 5             ; $640a
    ora #$10       ; Set bit 4 (acknowledge received) ; $640c
    sta $dd00                                ; $640e
    dec $a5        ; Decrement bit counter   ; $6411
    bne $63e9      ; Loop until 8 bits received ; $6413
    lda #$04                                 ; $6415
    sta $dc07                                ; $6417
    lda #$19                                 ; $641a
    sta $dc0f                                ; $641c
    lda $dc0d                                ; $641f
    lda $dc0d                                ; $6422
    and #$02                                 ; $6425
    bne $6433                                ; $6427
    jsr $eea9                                ; $6429
    bcs $6422                                ; $642c
    cli                                      ; $642e
    rts                                      ; $642f
    lda #$80                                 ; $6430
    bit $03a9                                ; $6432
    jsr $fe1c                                ; $6435
    cli                                      ; $6438
    clc                                      ; $6439
    bcc $6486                                ; $643a
    sta $95                                  ; $643c
    jsr $f8dd                                ; $643e
    lda $dd00                                ; $6441
    and #$f7                                 ; $6444
    sta $dd00                                ; $6446
    rts                                      ; $6449
    sta $95                                  ; $644a
    jsr $f8dd                                ; $644c
    sei                                      ; $644f
    jsr $f76a                                ; $6450
    jsr $edbe                                ; $6453
    jsr $ee85                                ; $6456
    jsr $eea9                                ; $6459
    bmi $6459                                ; $645c
    cli                                      ; $645e
    rts                                      ; $645f
    bit $94                                  ; $6460
    bmi $6469                                ; $6462
    sec                                      ; $6464
    ror $94                                  ; $6465
    bne $646e                                ; $6467
    pha                                      ; $6469
    jsr $ed40                                ; $646a
    pla                                      ; $646d
    sta $95                                  ; $646e
    clc                                      ; $6470
    rts                                      ; $6471
    sei                                      ; $6472
    jsr $ee8e                                ; $6473
    lda $dd00                                ; $6476
    ora #$08                                 ; $6479
    sta $dd00                                ; $647b
    lda #$5f                                 ; $647e
    bit $3fa9                                ; $6480
    jsr $ed11                                ; $6483
    jsr $edbe                                ; $6486
    txa                                      ; $6489
    ldx #$0a                                 ; $648a
    dex                                      ; $648c
    bne $648c                                ; $648d
    tax                                      ; $648f
    jsr $ee85                                ; $6490
    jmp $ee97                                ; $6493
    sei                                      ; $6496
    lda #$00                                 ; $6497
    sta $a5                                  ; $6499
    jmp $f841                                ; $649b
    jsr $eea9                                ; $649e
    bpl $649e                                ; $64a1
    lda #$01                                 ; $64a3
    sta $dc07                                ; $64a5
    lda #$19                                 ; $64a8
    sta $dc0f                                ; $64aa
    jsr $ee97                                ; $64ad
    lda $dc0d                                ; $64b0
    lda $dc0d                                ; $64b3
    and #$02                                 ; $64b6
    bne $64c1                                ; $64b8
    jsr $eea9                                ; $64ba
    bmi $64b3                                ; $64bd
    bpl $64d9                                ; $64bf
    lda $a5                                  ; $64c1
    beq $64ca                                ; $64c3
    lda #$02                                 ; $64c5
    jmp $edb2                                ; $64c7
    jsr $eea0                                ; $64ca
    jsr $ee85                                ; $64cd
    lda #$40                                 ; $64d0
    jsr $fe1c                                ; $64d2
    inc $a5                                  ; $64d5
    bne $64a3                                ; $64d7
; =============================================================================
; PARALLEL_FAST_RECEIVE - Receive byte via parallel port bit 7 handshake
; Uses two-phase clocking: wait for bit7 high (data), then wait for bit7 low
; Result stored in $A4, returned in A
; =============================================================================
    lda #$08       ; 8 bits to receive       ; $64d9
    sta $a5        ; Store in bit counter    ; $64db
; --- Receive bit loop ---
    lda $dd00      ; Read CIA#2 port A       ; $64dd
    cmp $dd00      ; Double-read for stability (debounce) ; $64e0
    bne $64dd      ; Retry if reads don't match ; $64e3
    asl          ; Shift bit 7 into carry  ; $64e5
    bpl $64dd      ; Wait until bit 7 is HIGH (data ready) ; $64e6
    ror $a4        ; Rotate carry (the data bit) into result ; $64e8
; --- Wait for clock phase 2 (bit 7 goes low) ---
    lda $dd00      ; Read port again         ; $64ea
    cmp $dd00      ; Stability check         ; $64ed
    bne $64ea      ; Retry if unstable       ; $64f0
    asl          ; Shift bit 7 into carry  ; $64f2
    bmi $64ea      ; Wait until bit 7 is LOW (next bit ready) ; $64f3
    dec $a5        ; Decrement bit counter   ; $64f5
    bne $64dd      ; Loop until 8 bits received ; $64f7
    jsr $eea0      ; Pull DATA low (acknowledge byte) ; $64f9
    bit $90        ; Check status flags      ; $64fc
    bvc $6503      ; Skip if no overflow     ; $64fe
    jsr $ee06      ; Handle EOI condition    ; $6500
    lda $a4        ; Return received byte in A ; $6503
    cli ; Re-enable interrupts               ; $6505
    clc ; Clear carry (success)              ; $6506
    rts                                      ; $6507
; =============================================================================
; HANDSHAKE HELPER ROUTINES - Manipulate $DD00 bits for IEC/parallel signaling
; =============================================================================
; CLR_ATN - Clear bit 4 (ATN OUT low)
    lda $dd00                                ; $6508
    and #$ef       ; Clear bit 4             ; $650b
    sta $dd00                                ; $650d
    rts                                      ; $6510
; SET_ATN - Set bit 4 (ATN OUT high)
    lda $dd00                                ; $6511
    ora #$10       ; Set bit 4               ; $6514
    sta $dd00                                ; $6516
    rts                                      ; $6519
; CLR_BIT5 - Clear bit 5 (directly mapped to user port)
    lda $dd00                                ; $651a
    and #$df       ; Clear bit 5             ; $651d
    sta $dd00                                ; $651f
    rts                                      ; $6522
; SET_BIT5 - Set bit 5 (directly mapped to user port)
    lda $dd00                                ; $6523
    ora #$20       ; Set bit 5               ; $6526
    sta $dd00                                ; $6528
    rts                                      ; $652b
; WAIT_STABLE_READ - Read $DD00 until stable, return bit 7 in carry
    lda $dd00      ; Read port               ; $652c
    cmp $dd00      ; Compare with second read ; $652f
    bne $652c      ; Loop until stable       ; $6532
    asl          ; Shift bit 7 into carry  ; $6534
    rts                                      ; $6535
; SHORT_DELAY - ~500 cycle delay loop
    txa ; Save X                             ; $6536
    ldx #$64       ; 100 iterations          ; $6537
    dex                                      ; $6539
    bne $6539      ; Loop (5 cycles * 100 = 500 cycles) ; $653a
    tax ; Restore X                          ; $653c
    rts                                      ; $653d
    jsr $f5d2                                ; $653e
    cpx #$02                                 ; $6541
    beq $654d                                ; $6543
    ldy #$00                                 ; $6545
    lda ($bb),y                              ; $6547
    cmp #$24                                 ; $6549
    bne $6550                                ; $654b
    jmp $f4f3                                ; $654d
    ldx $dc0c                                ; $6550
    bpl $654d                                ; $6553
    ldy #$51                                 ; $6555
    jsr $f0eb                                ; $6557
    jsr $f76f                                ; $655a
    jsr $efef                                ; $655d
    beq $654d                                ; $6560
    lda $9d                                  ; $6562
    bpl $6571                                ; $6564
    ldy #$2a                                 ; $6566
    jsr $f12f                                ; $6568
    jsr $f890                                ; $656b
    jsr $f12f                                ; $656e
    lda $ae                                  ; $6571
    sta $c3                                  ; $6573
    lda $af                                  ; $6575
    sta $c4                                  ; $6577
    jsr $f5a1                                ; $6579
    tax                                      ; $657c
    bit $dd00                                ; $657d
    bvs $65cc                                ; $6580
    bit $dd0d                                ; $6582
    beq $657d                                ; $6585
    bit $dd01                                ; $6587
    bit $91                                  ; $658a
    bpl $65ae                                ; $658c
    ldy #$00                                 ; $658e
    lda $93                                  ; $6590
    bne $65b4                                ; $6592
    txa                                      ; $6594
    bit $dd00                                ; $6595
    bvs $65cc                                ; $6598
    bit $dd0d                                ; $659a
    beq $6595                                ; $659d
    lda $dd01                                ; $659f
    sta ($ae),y                              ; $65a2
    inc $ae                                  ; $65a4
    bne $6594                                ; $65a6
    inc $af                                  ; $65a8
    bit $91                                  ; $65aa
    bmi $6590                                ; $65ac
    jsr $f736                                ; $65ae
    jmp $f636                                ; $65b1
    txa                                      ; $65b4
    bit $dd00                                ; $65b5
    bvs $65cc                                ; $65b8
    bit $dd0d                                ; $65ba
    beq $65b5                                ; $65bd
    lda $dd01                                ; $65bf
    cmp ($ae),y                              ; $65c2
    bne $65e9                                ; $65c4
    inc $ae                                  ; $65c6
    bne $65b4                                ; $65c8
    beq $65a8                                ; $65ca
    jsr $ee97                                ; $65cc
    ldy #$40                                 ; $65cf
    txa                                      ; $65d1
    bit $dd0d                                ; $65d2
    bne $65e1                                ; $65d5
    inx                                      ; $65d7
    bne $65d2                                ; $65d8
    ldy #$42                                 ; $65da
    jsr $ef5e                                ; $65dc
    bcc $65b1                                ; $65df
    sty $90                                  ; $65e1
    jsr $f740                                ; $65e3
    jmp $f5a9                                ; $65e6
    jsr $f736                                ; $65e9
    lda #$50                                 ; $65ec
    sta $90                                  ; $65ee
    bne $65e6                                ; $65f0
    jsr $eddd                                ; $65f2
    lda $90                                  ; $65f5
    beq $65fe                                ; $65f7
    ldy #$00                                 ; $65f9
    jmp $f624                                ; $65fb
    ldx $dc0c                                ; $65fe
    bpl $65f9                                ; $6601
    ldy #$5a                                 ; $6603
    jsr $f0eb                                ; $6605
    jsr $ee8e                                ; $6608
    jsr $efef                                ; $660b
    beq $65f9                                ; $660e
    ldy $ac                                  ; $6610
    sty $dd01                                ; $6612
    jsr $fcd1                                ; $6615
    ldx $ad                                  ; $6618
    bcs $6663                                ; $661a
    jsr $f5a1                                ; $661c
    lda #$00                                 ; $661f
    sta $ac                                  ; $6621
    lda $ad                                  ; $6623
    cmp $af                                  ; $6625
    beq $665b                                ; $6627
    bne $662e                                ; $6629
    stx $dd01                                ; $662b
    lda ($ac),y                              ; $662e
    tax                                      ; $6630
    iny                                      ; $6631
    bne $6646                                ; $6632
    inc $ad                                  ; $6634
    bit $91                                  ; $6636
    bmi $6640                                ; $6638
    jsr $efe0                                ; $663a
    jmp $f636                                ; $663d
    lda $ad                                  ; $6640
    cmp $af                                  ; $6642
    beq $665f                                ; $6644
    lda #$10                                 ; $6646
    bit $dd0d                                ; $6648
    bne $662b                                ; $664b
    bit $dd00                                ; $664d
    bpl $6648                                ; $6650
    jsr $f958                                ; $6652
    jmp $f63f                                ; $6655
    jsr $f5a1                                ; $6658
    lda ($ac),y                              ; $665b
    tax                                      ; $665d
    iny                                      ; $665e
    cpy $ae                                  ; $665f
    bne $6658                                ; $6661
    jsr $ff3b                                ; $6663
    jsr $ee85                                ; $6666
    stx $dd01                                ; $6669
    jsr $ff3b                                ; $666c
    jmp $efcf                                ; $666f
    stx $dc0c                                ; $6672
    lda #$10                                 ; $6675
    tax                                      ; $6677
    bit $dd0d                                ; $6678
    bne $6680                                ; $667b
    inx                                      ; $667d
    bne $6678                                ; $667e
    rts                                      ; $6680
    lda #$cb                                 ; $6681
    php                                      ; $6683
    pha                                      ; $6684
    txa                                      ; $6685
    pha                                      ; $6686
    tya                                      ; $6687
    pha                                      ; $6688
    sei                                      ; $6689
    cld                                      ; $668a
    ldx #$05                                 ; $668b
    pla                                      ; $668d
    sta $0229,x                              ; $668e
    dex                                      ; $6691
    bpl $668d                                ; $6692
    tsx                                      ; $6694
    stx $022f                                ; $6695
    lda #$c0                                 ; $6698
    sta $9d                                  ; $669a
    lda #$52                                 ; $669c
    bne $66cb                                ; $669e
    lda $0316                                ; $66a0
    cmp #$66                                 ; $66a3
    bne $66ae                                ; $66a5
    lda $0317                                ; $66a7
    cmp #$fe                                 ; $66aa
    beq $6689                                ; $66ac
    lda #$10                                 ; $66ae
    jmp ($0316)                              ; $66b0
    lda #$3f                                 ; $66b3
    jsr $ffd2                                ; $66b5
    ldx $022f                                ; $66b8
    txs                                      ; $66bb
    cli                                      ; $66bc
    jsr $fec2                                ; $66bd
    jsr $ffcf                                ; $66c0
    cmp #$2e                                 ; $66c3
    beq $66c0                                ; $66c5
    cmp #$20                                 ; $66c7
    beq $66c0                                ; $66c9
    ldx #$0e                                 ; $66cb
    dex                                      ; $66cd
    bmi $66b3                                ; $66ce
    cmp $f227,x                              ; $66d0
    bne $66cd                                ; $66d3
    txa                                      ; $66d5
    asl                                    ; $66d6
    tax                                      ; $66d7
    lda $f8b0,x                              ; $66d8
    pha                                      ; $66db
    lda $f8af,x                              ; $66dc
    pha                                      ; $66df
    rts                                      ; $66e0
    jsr $f063                                ; $66e1
    sta $fa                                  ; $66e4
    lda #$10                                 ; $66e6
    sta $f9                                  ; $66e8
    jsr $f06e                                ; $66ea
    asl $f9                                  ; $66ed
    bcc $66ed                                ; $66ef
    jsr $ffcf                                ; $66f1
    cmp #$20                                 ; $66f4
    beq $66f1                                ; $66f6
    cmp #$30                                 ; $66f8
    bcc $66b3                                ; $66fa
    cmp #$47                                 ; $66fc
    bcs $66b3                                ; $66fe
    cmp #$3a                                 ; $6700
    bcc $670a                                ; $6702
    cmp #$41                                 ; $6704
    bcc $66b3                                ; $6706
    sbc #$08                                 ; $6708
    sbc #$2f                                 ; $670a
    ora $f9                                  ; $670c
    sta $f9                                  ; $670e
    rts                                      ; $6710
    jsr $2e3b                                ; $6711
    ora $5a43                                ; $6714
    eor #$44                                 ; $6717
    !byte $42                                ; $6719 (undefined opcode)
    and $4e56                                ; $671a
    jsr $4320                                ; $671d
    bvc $6742                                ; $6720
    jsr $5350                                ; $6722
    jsr $5952                                ; $6725
    jsr $5852                                ; $6728
    jsr $4143                                ; $672b
    jsr $5352                                ; $672e
    jsr $2020                                ; $6731
    jsr $000d                                ; $6734
    eor ($5f,x)                              ; $6737
    adc ($7f,x)                              ; $6739
    cpy #$c1                                 ; $673b
    !byte $db                                ; $673d (undefined opcode)
    cpx #$ff                                 ; $673e
    ora $2f49                                ; $6740
    !byte $4f                                ; $6743 (undefined opcode)
    jsr $5245                                ; $6744
    !byte $52                                ; $6747 (undefined opcode)
    !byte $4f                                ; $6748 (undefined opcode)
    !byte $52                                ; $6749 (undefined opcode)
    jsr $0da3                                ; $674a
    !byte $53                                ; $674d (undefined opcode)
    eor $41                                  ; $674e
    !byte $52                                ; $6750 (undefined opcode)
    !byte $43                                ; $6751 (undefined opcode)
    pha                                      ; $6752
    eor #$4e                                 ; $6753
    !byte $47                                ; $6755 (undefined opcode)
    ldy #$46                                 ; $6756
    !byte $4f                                ; $6758 (undefined opcode)
    !byte $52                                ; $6759 (undefined opcode)
    ldy #$0d                                 ; $675a
    bvc $67aa                                ; $675c
    eor ($59,x)                              ; $675e
    !byte $bf                                ; $6760 (undefined opcode)
    !byte $52                                ; $6761 (undefined opcode)
    eor $43                                  ; $6762
    rol $50                                  ; $6764
    jmp $5941                                ; $6766
    !byte $bf                                ; $6769 (undefined opcode)
    jsr $2da4                                ; $676a
    ldy $20                                  ; $676d
    sei                                      ; $676f
    sbc ($20),y                              ; $6770
    clv                                      ; $6772
    sbc ($2c),y                              ; $6773
    ora $60dd                                ; $6775
    ldx #$35                                 ; $6778
    ldy #$f2                                 ; $677a
    lda $93                                  ; $677c
    beq $6784                                ; $677e
    inx                                      ; $6780
    lda #$01                                 ; $6781
    bit $02a9                                ; $6783
    jmp $ffbd                                ; $6786
    ora $4f4c                                ; $6789
    eor ($44,x)                              ; $678c
    eor #$4e                                 ; $678e
    !byte $c7                                ; $6790 (undefined opcode)
    ora $4153                                ; $6791
    lsr $49,x                                ; $6794
    lsr $a047                                ; $6796
    ora $4556                                ; $6799
    !byte $52                                ; $679c (undefined opcode)
    eor #$46                                 ; $679d
    eor $4e49,y                              ; $679f
    !byte $c7                                ; $67a2 (undefined opcode)
    ora $4f46                                ; $67a3
    eor $4e,x                                ; $67a6
    !byte $44                                ; $67a8 (undefined opcode)
    ldy #$0d                                 ; $67a9
    !byte $4f                                ; $67ab (undefined opcode)
    !byte $4b                                ; $67ac (undefined opcode)
    sta $9d24                                ; $67ad
    bpl $67bf                                ; $67b0
    lda $f0bd,y                              ; $67b2
    php                                      ; $67b5
    and #$7f                                 ; $67b6
    jsr $ffd2                                ; $67b8
    iny                                      ; $67bb
    plp                                      ; $67bc
    bpl $67b2                                ; $67bd
    clc                                      ; $67bf
    rts                                      ; $67c0
    lda $99                                  ; $67c1
    bne $67e9                                ; $67c3
    lda $c6                                  ; $67c5
    beq $67bf                                ; $67c7
    sei                                      ; $67c9
    jmp $e5b4                                ; $67ca
    jsr $0079                                ; $67cd
    cmp #$2c                                 ; $67d0
    beq $67d9                                ; $67d2
    pla                                      ; $67d4
    pla                                      ; $67d5
    jmp $a8f8                                ; $67d6
    rts                                      ; $67d9
    lda $99                                  ; $67da
    bne $67e9                                ; $67dc
    lda $d3                                  ; $67de
    sta $ca                                  ; $67e0
    lda $d6                                  ; $67e2
    sta $c9                                  ; $67e4
    jmp $e632                                ; $67e6
    cmp #$03                                 ; $67e9
    bne $67f6                                ; $67eb
    sta $d0                                  ; $67ed
    lda $d5                                  ; $67ef
    sta $c8                                  ; $67f1
    jmp $e632                                ; $67f3
    bcs $6830                                ; $67f6
    jmp $f713                                ; $67f8
    jsr $f676                                ; $67fb
    lda #$58                                 ; $67fe
    jsr $eddd                                ; $6800
    tya                                      ; $6803
    jsr $eddd                                ; $6804
    jmp $edfe                                ; $6807
    ldy #$00                                 ; $680a
    jsr $fb9e                                ; $680c
    lda ($f9),y                              ; $680f
    jsr $f898                                ; $6811
    iny                                      ; $6814
    dex                                      ; $6815
    bne $680c                                ; $6816
    rts                                      ; $6818
    brk                                      ; $6819
    brk                                      ; $681a
    brk                                      ; $681b
    !byte $03                                ; $681c (undefined opcode)
    !byte $27                                ; $681d (undefined opcode)
    brk                                      ; $681e
    cpx #$00                                 ; $681f
    jsr $6000                                ; $6821
    !byte $80                                ; $6824 (undefined opcode)
    rts                                      ; $6825
    rti                                      ; $6826
    sta ($85,x)                              ; $6827
    ldx $4c                                  ; $6829
    !byte $4b                                ; $682b (undefined opcode)
    !byte $fc                                ; $682c (undefined opcode)
    jmp $f2a9                                ; $682d
    lda $90                                  ; $6830
    beq $6838                                ; $6832
    lda #$0d                                 ; $6834
    clc                                      ; $6836
    rts                                      ; $6837
    jmp $ee13                                ; $6838
    lda $dd03                                ; $683b
    sta $0296                                ; $683e
    lda #$ff                                 ; $6841
    sta $dd03                                ; $6843
    lda $dd01                                ; $6846
    sta $0295                                ; $6849
    rts                                      ; $684c
    pha                                      ; $684d
    lda $9a                                  ; $684e
    cmp #$03                                 ; $6850
    bne $6858                                ; $6852
    pla                                      ; $6854
    jmp $e716                                ; $6855
    bcc $685e                                ; $6858
    pla                                      ; $685a
    jmp $eddd                                ; $685b
    pla                                      ; $685e
    jmp $f713                                ; $685f
    ldx #$08                                 ; $6862
    ldy #$00                                 ; $6864
    jsr $e101                                ; $6866
    jsr $ffcf                                ; $6869
    cmp #$22                                 ; $686c
    beq $6880                                ; $686e
    cmp #$20                                 ; $6870
    beq $6869                                ; $6872
    cmp #$0d                                 ; $6874
    beq $6887                                ; $6876
    cmp #$22                                 ; $6878
    beq $6889                                ; $687a
    sta $0200,y                              ; $687c
    iny                                      ; $687f
    jsr $ffcf                                ; $6880
    cpy #$29                                 ; $6883
    bne $6874                                ; $6885
    stx $b9                                  ; $6887
    tya                                      ; $6889
    ldx #$00                                 ; $688a
    ldy #$02                                 ; $688c
    jmp $ffbd                                ; $688e
    jsr $f30f                                ; $6891
    beq $6899                                ; $6894
    jmp $f701                                ; $6896
    jsr $f31f                                ; $6899
    lda $ba                                  ; $689c
    beq $68a6                                ; $689e
    cmp #$03                                 ; $68a0
    bcc $685f                                ; $68a2
    bne $68ba                                ; $68a4
    sta $99                                  ; $68a6
    clc                                      ; $68a8
    rts                                      ; $68a9
    !byte $52                                ; $68aa (undefined opcode)
    eor $3a58                                ; $68ab
    !byte $3b                                ; $68ae (undefined opcode)
    !byte $47                                ; $68af (undefined opcode)
    !byte $53                                ; $68b0 (undefined opcode)
    jmp $4056                                ; $68b1
    eor ($57,x)                              ; $68b4
    ldy #$0d                                 ; $68b6
    !byte $3a                                ; $68b8 (undefined opcode)
    rol                                    ; $68b9
    tax                                      ; $68ba
    jsr $ed09                                ; $68bb
    lda $b9                                  ; $68be
    bpl $68c8                                ; $68c0
    jsr $edcc                                ; $68c2
    jmp $f248                                ; $68c5
    jsr $edc7                                ; $68c8
    txa                                      ; $68cb
    bit $90                                  ; $68cc
    bpl $68a6                                ; $68ce
    jmp $f707                                ; $68d0
    jsr $f30f                                ; $68d3
    beq $68db                                ; $68d6
    jmp $f701                                ; $68d8
    jsr $f31f                                ; $68db
    lda $ba                                  ; $68de
    bne $68e5                                ; $68e0
    jmp $f70d                                ; $68e2
    cmp #$03                                 ; $68e5
    bcc $68a2                                ; $68e7
    bne $68fc                                ; $68e9
    sta $9a                                  ; $68eb
    clc                                      ; $68ed
    rts                                      ; $68ee
    ldy #$00                                 ; $68ef
    jsr $f063                                ; $68f1
    sei                                      ; $68f4
    sta ($f7),y                              ; $68f5
    iny                                      ; $68f7
    dex                                      ; $68f8
    bne $68f1                                ; $68f9
    rts                                      ; $68fb
    tax                                      ; $68fc
    jsr $ed0c                                ; $68fd
    lda $b9                                  ; $6900
    bpl $6909                                ; $6902
    jsr $edbe                                ; $6904
    bne $690c                                ; $6907
    jsr $edb9                                ; $6909
    txa                                      ; $690c
    bit $90                                  ; $690d
    bpl $68eb                                ; $690f
    jmp $f707                                ; $6911
    jsr $f314                                ; $6914
    beq $691b                                ; $6917
    clc                                      ; $6919
    rts                                      ; $691a
    jsr $f31f                                ; $691b
    txa                                      ; $691e
    pha                                      ; $691f
    lda $ba                                  ; $6920
    beq $6974                                ; $6922
    cmp #$03                                 ; $6924
    beq $6974                                ; $6926
    bcs $6971                                ; $6928
    bcc $6974                                ; $692a
    pha                                      ; $692c
    and #$60                                 ; $692d
    bne $6938                                ; $692f
    inc $c7                                  ; $6931
    pla                                      ; $6933
    clc                                      ; $6934
    adc #$40                                 ; $6935
    bit $68                                  ; $6937
    jsr $ffd2                                ; $6939
    lda #$00                                 ; $693c
    sta $c7                                  ; $693e
    rts                                      ; $6940
    bne $6957                                ; $6941
    lda $c3                                  ; $6943
    sta $14                                  ; $6945
    sbc $2b                                  ; $6947
    ldx $c4                                  ; $6949
    stx $15                                  ; $694b
    cpx $2c                                  ; $694d
    bne $695a                                ; $694f
    tax                                      ; $6951
    bne $695a                                ; $6952
    jmp $a871                                ; $6954
    jsr $f1a7                                ; $6957
    ldy $15                                  ; $695a
    bne $696e                                ; $695c
    lda $14                                  ; $695e
    cmp #$10                                 ; $6960
    bcs $696e                                ; $6962
    sty $14                                  ; $6964
    asl                                    ; $6966
    asl                                    ; $6967
    asl                                    ; $6968
    asl                                    ; $6969
    sta $15                                  ; $696a
    beq $693d                                ; $696c
    jmp $e130                                ; $696e
    jsr $f642                                ; $6971
    pla                                      ; $6974
    tax                                      ; $6975
    dec $98                                  ; $6976
    cpx $98                                  ; $6978
    beq $6990                                ; $697a
    ldy $98                                  ; $697c
    lda $0259,y                              ; $697e
    sta $0259,x                              ; $6981
    lda $0263,y                              ; $6984
    sta $0263,x                              ; $6987
    lda $026d,y                              ; $698a
    sta $026d,x                              ; $698d
    clc                                      ; $6990
    rts                                      ; $6991
    lda #$00                                 ; $6992
    sta $90                                  ; $6994
    txa                                      ; $6996
    ldx $98                                  ; $6997
    dex                                      ; $6999
    bmi $69b1                                ; $699a
    cmp $0259,x                              ; $699c
    bne $6999                                ; $699f
    rts                                      ; $69a1
    lda $0259,x                              ; $69a2
    sta $b8                                  ; $69a5
    lda $0263,x                              ; $69a7
    sta $ba                                  ; $69aa
    lda $026d,x                              ; $69ac
    sta $b9                                  ; $69af
    rts                                      ; $69b1
    lda #$00                                 ; $69b2
    sta $98                                  ; $69b4
    ldx #$03                                 ; $69b6
    cpx $9a                                  ; $69b8
    bcs $69bf                                ; $69ba
    jsr $edfe                                ; $69bc
    cpx $99                                  ; $69bf
    bcs $69c6                                ; $69c1
    jsr $edef                                ; $69c3
    stx $9a                                  ; $69c6
    lda #$00                                 ; $69c8
    sta $99                                  ; $69ca
    rts                                      ; $69cc
    ldx $b8                                  ; $69cd
    bne $69d4                                ; $69cf
    jmp $f70a                                ; $69d1
    jsr $f30f                                ; $69d4
    bne $69dc                                ; $69d7
    jmp $f6fe                                ; $69d9
    ldx $98                                  ; $69dc
    cpx #$0a                                 ; $69de
    bcc $69e5                                ; $69e0
    jmp $f6fb                                ; $69e2
    inc $98                                  ; $69e5
    lda $b8                                  ; $69e7
    sta $0259,x                              ; $69e9
    lda $b9                                  ; $69ec
    ora #$60                                 ; $69ee
    sta $b9                                  ; $69f0
    sta $026d,x                              ; $69f2
    lda $ba                                  ; $69f5
    sta $0263,x                              ; $69f7
    beq $6a56                                ; $69fa
    cmp #$03                                 ; $69fc
    beq $6a56                                ; $69fe
    bcc $6a07                                ; $6a00
    jsr $f3d5                                ; $6a02
    bcc $6a56                                ; $6a05
    jmp $f713                                ; $6a07
; F-key string table
; F1: LOa CR Ru: CR (LOAD then RUN with colon separator)
    !byte $4c,$4f,$61                        ; $6a0a
    !byte $0d,$52,$75                        ; $6a0d
    !byte $3a,$0d                            ; $6a10
    !byte $00                                ; $6a12
; F2: Sy$0 LEFT (SYS$0 - monitor)
    !byte $53,$79,$24                        ; $6a13
    !byte $30,$9d                            ; $6a16
    !byte $00                                ; $6a18
; F3: CLR @$ CR (display directory)
    !byte $93,$40,$24                        ; $6a19
    !byte $0d                                ; $6a1c
    !byte $00                                ; $6a1d
; F4: Ve CR (VERIFY)
    !byte $56,$65                            ; $6a1e
    !byte $0d                                ; $6a20
    !byte $00                                ; $6a21
; F5: CLR Li CR (LIST)
    !byte $93,$4c,$69                        ; $6a22
    !byte $0d                                ; $6a25
    !byte $00                                ; $6a26
; F6: SAv"@: (SAVE)
    !byte $53,$41,$76                        ; $6a27
    !byte $22,$40,$3a                        ; $6a2a
    !byte $00                                ; $6a2d
; F7: CLR Ru CR (RUN)
    !byte $93,$52,$75                        ; $6a2e
    !byte $0d                                ; $6a31
    !byte $00                                ; $6a32
; F8: @X CR
    !byte $40,$58                            ; $6a33
    !byte $0d                                ; $6a35
    !byte $00                                ; $6a36
; Strings 9-12: unused (zeroed)
    !byte $00                                ; $6a37
    !byte $00                                ; $6a38
    !byte $00                                ; $6a39
    !byte $00                                ; $6a3a
    !byte $00                                ; $6a3b
    !byte $00                                ; $6a3c
    !byte $00                                ; $6a3d
    !byte $00                                ; $6a3e
    !byte $00                                ; $6a3f
    !byte $00                                ; $6a40
    !byte $00                                ; $6a41
    !byte $00                                ; $6a42
    !byte $00                                ; $6a43
    !byte $00                                ; $6a44
    !byte $00                                ; $6a45
    !byte $00                                ; $6a46
    !byte $00                                ; $6a47
    !byte $00                                ; $6a48
    !byte $00                                ; $6a49
    !byte $00                                ; $6a4a
    !byte $00                                ; $6a4b
    !byte $00                                ; $6a4c
    !byte $00                                ; $6a4d
    !byte $00                                ; $6a4e
    !byte $00                                ; $6a4f
    !byte $00                                ; $6a50
    !byte $00                                ; $6a51
    !byte $00                                ; $6a52
    !byte $00                                ; $6a53
    !byte $00                                ; $6a54
    !byte $a6                                ; $6a55
    clc                                      ; $6a56
    rts                                      ; $6a57
    lda $b9                                  ; $6a58
    bmi $6a56                                ; $6a5a
    ldy $b7                                  ; $6a5c
    beq $6a56                                ; $6a5e
    lda #$00                                 ; $6a60
    sta $90                                  ; $6a62
    lda $ba                                  ; $6a64
    jsr $ed0c                                ; $6a66
    lda $b9                                  ; $6a69
    ora #$f0                                 ; $6a6b
    jsr $edb9                                ; $6a6d
    lda $90                                  ; $6a70
    bpl $6a79                                ; $6a72
    pla                                      ; $6a74
    pla                                      ; $6a75
    jmp $f707                                ; $6a76
    lda $b7                                  ; $6a79
    beq $6a89                                ; $6a7b
    ldy #$00                                 ; $6a7d
    lda ($bb),y                              ; $6a7f
    jsr $eddd                                ; $6a81
    iny                                      ; $6a84
    cpy $b7                                  ; $6a85
    bne $6a7f                                ; $6a87
    jmp $f654                                ; $6a89
    ldx #$25                                 ; $6a8c
    lda $f08d,x                              ; $6a8e
    jsr $ffd2                                ; $6a91
    dex                                      ; $6a94
    bne $6a8e                                ; $6a95
    lda #$2b                                 ; $6a97
    sta $f9                                  ; $6a99
    lda #$02                                 ; $6a9b
    sta $fa                                  ; $6a9d
    ldx #$05                                 ; $6a9f
    jsr $f187                                ; $6aa1
    jsr $fb9e                                ; $6aa4
    lda $0229                                ; $6aa7
    ldx $022a                                ; $6aaa
    jsr $f894                                ; $6aad
    jsr $fb9e                                ; $6ab0
    ldx #$08                                 ; $6ab3
    ldy $022b                                ; $6ab5
    tya                                      ; $6ab8
    asl                                    ; $6ab9
    tay                                      ; $6aba
    lda #$30                                 ; $6abb
    adc #$00                                 ; $6abd
    jsr $ffd2                                ; $6abf
    dex                                      ; $6ac2
    bne $6ab8                                ; $6ac3
    beq $6b0c                                ; $6ac5
    lda #$2b                                 ; $6ac7
    sta $f7                                  ; $6ac9
    lda #$02                                 ; $6acb
    sta $f8                                  ; $6acd
    ldx #$05                                 ; $6acf
    jsr $f26c                                ; $6ad1
    beq $6aa4                                ; $6ad4
    lda #$00                                 ; $6ad6
    bit $01a9                                ; $6ad8
    pha                                      ; $6adb
    jsr $f1df                                ; $6adc
    lda $d3                                  ; $6adf
    cmp $c8                                  ; $6ae1
    bcs $6aec                                ; $6ae3
    jsr $f05e                                ; $6ae5
    tax                                      ; $6ae8
    ldy $fa                                  ; $6ae9
    bit $b9e6                                ; $6aeb
    pla                                      ; $6aee
    jsr $ffd5                                ; $6aef
    lda $90                                  ; $6af2
    and #$10                                 ; $6af4
    beq $6b0c                                ; $6af6
    jmp $f030                                ; $6af8
    jsr $f1df                                ; $6afb
    jsr $f72c                                ; $6afe
    jsr $f05e                                ; $6b01
    tax                                      ; $6b04
    ldy $fa                                  ; $6b05
    lda #$f7                                 ; $6b07
    jsr $ffd8                                ; $6b09
    jmp $f035                                ; $6b0c
    jsr $f1df                                ; $6b0f
    jsr $fba6                                ; $6b12
    jmp $f035                                ; $6b15
    lsr                                    ; $6b18
    bne $6b32                                ; $6b19
    lda #$08                                 ; $6b1b
    sta $ba                                  ; $6b1d
    bne $6b3b                                ; $6b1f
    stx $c3                                  ; $6b21
    sty $c4                                  ; $6b23
    jmp ($0330)                              ; $6b25
    sta $93                                  ; $6b28
    lda #$00                                 ; $6b2a
    sta $90                                  ; $6b2c
    lda $ba                                  ; $6b2e
    bne $6b35                                ; $6b30
    jmp $f713                                ; $6b32
    cmp #$03                                 ; $6b35
    beq $6b32                                ; $6b37
    bcc $6b18                                ; $6b39
    ldy $b7                                  ; $6b3b
    bne $6b42                                ; $6b3d
    jsr $f0f5                                ; $6b3f
    ldx $b9                                  ; $6b42
    jsr $f5af                                ; $6b44
    lda #$60                                 ; $6b47
    sta $b9                                  ; $6b49
    jsr $f3d5                                ; $6b4b
    lda $ba                                  ; $6b4e
    jsr $ed09                                ; $6b50
    lda $b9                                  ; $6b53
    jsr $edc7                                ; $6b55
    jsr $ee13                                ; $6b58
    sta $ae                                  ; $6b5b
    lda $90                                  ; $6b5d
    lsr                                    ; $6b5f
    lsr                                    ; $6b60
    bcs $6bb3                                ; $6b61
    jsr $ee13                                ; $6b63
    sta $af                                  ; $6b66
    txa                                      ; $6b68
    bne $6b73                                ; $6b69
    lda $c3                                  ; $6b6b
    sta $ae                                  ; $6b6d
    lda $c4                                  ; $6b6f
    sta $af                                  ; $6b71
    jmp $eebb                                ; $6b73
    lda #$fd                                 ; $6b76
    and $90                                  ; $6b78
    sta $90                                  ; $6b7a
    jsr $ffe1                                ; $6b7c
    bne $6b84                                ; $6b7f
    jmp $f633                                ; $6b81
    jsr $ee13                                ; $6b84
    tax                                      ; $6b87
    lda $90                                  ; $6b88
    lsr                                    ; $6b8a
    lsr                                    ; $6b8b
    bcs $6b76                                ; $6b8c
    txa                                      ; $6b8e
    ldy $93                                  ; $6b8f
    beq $6b9f                                ; $6b91
    ldy #$00                                 ; $6b93
    cmp ($ae),y                              ; $6b95
    beq $6ba1                                ; $6b97
    lda #$50                                 ; $6b99
    jsr $fe1c                                ; $6b9b
    bit $ae91                                ; $6b9e
    inc $ae                                  ; $6ba1
    bne $6ba7                                ; $6ba3
    inc $af                                  ; $6ba5
    bit $90                                  ; $6ba7
    bvc $6b76                                ; $6ba9
    jsr $edef                                ; $6bab
    jsr $f642                                ; $6bae
    bcc $6c2c                                ; $6bb1
    jmp $f704                                ; $6bb3
    jsr $e5b4                                ; $6bb6
    pha                                      ; $6bb9
    cmp #$03                                 ; $6bba
    beq $6c07                                ; $6bbc
    lda $d4                                  ; $6bbe
    ora $d8                                  ; $6bc0
    bne $6c0f                                ; $6bc2
    tya                                      ; $6bc4
    ldx #$0c                                 ; $6bc5
    cmp $fc3e,x                              ; $6bc7
    beq $6bd4                                ; $6bca
    dex                                      ; $6bcc
    bne $6bc7                                ; $6bcd
    jsr $feca                                ; $6bcf
    pla                                      ; $6bd2
    rts                                      ; $6bd3
    lda $0298                                ; $6bd4
    beq $6c0f                                ; $6bd7
    sta $f8                                  ; $6bd9
    lda $0297                                ; $6bdb
    sta $f7                                  ; $6bde
    ldy #$ff                                 ; $6be0
    dex                                      ; $6be2
    beq $6bef                                ; $6be3
    iny                                      ; $6be5
    lda ($f7),y                              ; $6be6
    beq $6be2                                ; $6be8
    bne $6be5                                ; $6bea
    jsr $e716                                ; $6bec
    iny                                      ; $6bef
    lda ($f7),y                              ; $6bf0
    beq $6c05                                ; $6bf2
    cmp #$0d                                 ; $6bf4
    beq $6bfc                                ; $6bf6
    cpx #$00                                 ; $6bf8
    beq $6bec                                ; $6bfa
    sei                                      ; $6bfc
    sta $0277,x                              ; $6bfd
    inx                                      ; $6c00
    cpx #$0a                                 ; $6c01
    bne $6bef                                ; $6c03
    stx $c6                                  ; $6c05
    ldx #$00                                 ; $6c07
    stx $c7                                  ; $6c09
    stx $d4                                  ; $6c0b
    stx $d8                                  ; $6c0d
    pla                                      ; $6c0f
    rts                                      ; $6c10
    lda $2b                                  ; $6c11
    cmp $c3                                  ; $6c13
    bne $6c21                                ; $6c15
    lda $2c                                  ; $6c17
    cmp $c4                                  ; $6c19
    bne $6c21                                ; $6c1b
    stx $2d                                  ; $6c1d
    sty $2e                                  ; $6c1f
    jmp $e1ab                                ; $6c21
    jsr $ff3b                                ; $6c24
    stx $dd01                                ; $6c27
    rts                                      ; $6c2a
    bit $18                                  ; $6c2b
    ldx $ae                                  ; $6c2d
    ldy $af                                  ; $6c2f
    rts                                      ; $6c31
    lda $9d                                  ; $6c32
    bpl $6c54                                ; $6c34
    ldy #$0c                                 ; $6c36
    jsr $f12f                                ; $6c38
    lda $b7                                  ; $6c3b
    beq $6c54                                ; $6c3d
    ldy #$17                                 ; $6c3f
    jsr $f12f                                ; $6c41
    ldy $b7                                  ; $6c44
    beq $6c54                                ; $6c46
    ldy #$00                                 ; $6c48
    lda ($bb),y                              ; $6c4a
    jsr $ffd2                                ; $6c4c
    iny                                      ; $6c4f
    cpy $b7                                  ; $6c50
    bne $6c4a                                ; $6c52
    rts                                      ; $6c54
    ldy #$49                                 ; $6c55
    lda $93                                  ; $6c57
    beq $6c5d                                ; $6c59
    ldy #$59                                 ; $6c5b
    jmp $f12b                                ; $6c5d
    stx $ae                                  ; $6c60
    sty $af                                  ; $6c62
    tax                                      ; $6c64
    lda $00,x                                ; $6c65
    sta $c1                                  ; $6c67
    lda $01,x                                ; $6c69
    sta $c2                                  ; $6c6b
    jmp ($0332)                              ; $6c6d
    lda $ba                                  ; $6c70
    bne $6c77                                ; $6c72
    jmp $f713                                ; $6c74
    cmp #$03                                 ; $6c77
    beq $6c74                                ; $6c79
    bcc $6cdc                                ; $6c7b
    lda #$61                                 ; $6c7d
    sta $b9                                  ; $6c7f
    ldy $b7                                  ; $6c81
    bne $6c88                                ; $6c83
    jmp $f710                                ; $6c85
    jsr $f3d5                                ; $6c88
    jsr $f68f                                ; $6c8b
    lda $ba                                  ; $6c8e
    jsr $ed0c                                ; $6c90
    lda $b9                                  ; $6c93
    jsr $edb9                                ; $6c95
    ldy #$00                                 ; $6c98
    jsr $fb8e                                ; $6c9a
    lda $ac                                  ; $6c9d
    jsr $eddd                                ; $6c9f
    lda $ad                                  ; $6ca2
    jmp $ef6f                                ; $6ca4
    jsr $fcd1                                ; $6ca7
    bcs $6cc2                                ; $6caa
    lda ($ac),y                              ; $6cac
    jsr $eddd                                ; $6cae
    jsr $ffe1                                ; $6cb1
    bne $6cbd                                ; $6cb4
    jsr $f642                                ; $6cb6
    lda #$00                                 ; $6cb9
    sec                                      ; $6cbb
    rts                                      ; $6cbc
    jsr $fcdb                                ; $6cbd
    bne $6ca7                                ; $6cc0
    jsr $edfe                                ; $6cc2
    bit $b9                                  ; $6cc5
    bmi $6cda                                ; $6cc7
    lda $ba                                  ; $6cc9
    jsr $ed0c                                ; $6ccb
    lda $b9                                  ; $6cce
    and #$ef                                 ; $6cd0
    ora #$e0                                 ; $6cd2
    jsr $edb9                                ; $6cd4
    jsr $edfe                                ; $6cd7
    clc                                      ; $6cda
    rts                                      ; $6cdb
    lsr                                    ; $6cdc
    !byte $90,$95                            ; $6cdd (bcc $6c74)
    lda #$08                                 ; $6cdf
    sta $ba                                  ; $6ce1
    !byte $d0,$98                            ; $6ce3 (bne $6c7d)
    jsr $f05e                                ; $6ce5
    ldy $022e                                ; $6ce8
    ldx $022d                                ; $6ceb
    lda $022b                                ; $6cee
    pha                                      ; $6cf1
    lda $022c                                ; $6cf2
    plp                                      ; $6cf5
    jmp ($00f9)                              ; $6cf6
    lda #$00                                 ; $6cf9
    sta $90                                  ; $6cfb
    lda $ba                                  ; $6cfd
    jsr $ed0c                                ; $6cff
    lda #$6f                                 ; $6d02
    jsr $edb9                                ; $6d04
    lda $90                                  ; $6d07
    bpl $6d10                                ; $6d09
    pla                                      ; $6d0b
    pla                                      ; $6d0c
    jmp $f707                                ; $6d0d
    clc                                      ; $6d10
    rts                                      ; $6d11
    lda $9d                                  ; $6d12
    bpl $6d11                                ; $6d14
    ldy #$51                                 ; $6d16
    jsr $f12f                                ; $6d18
    jmp $f5c1                                ; $6d1b
    ldx #$00                                 ; $6d1e
    inc $a2                                  ; $6d20
    bne $6d2a                                ; $6d22
    inc $a1                                  ; $6d24
    bne $6d2a                                ; $6d26
    inc $a0                                  ; $6d28
    sec                                      ; $6d2a
    lda $a2                                  ; $6d2b
    sbc #$01                                 ; $6d2d
    lda $a1                                  ; $6d2f
    sbc #$1a                                 ; $6d31
    lda $a0                                  ; $6d33
    sbc #$4f                                 ; $6d35
    bcc $6d3f                                ; $6d37
    stx $a0                                  ; $6d39
    stx $a1                                  ; $6d3b
    stx $a2                                  ; $6d3d
    lda $dc01                                ; $6d3f
    cmp $dc01                                ; $6d42
    bne $6d3f                                ; $6d45
    tax                                      ; $6d47
    bmi $6d5d                                ; $6d48
    ldx #$bd                                 ; $6d4a
    stx $dc00                                ; $6d4c
    ldx $dc01                                ; $6d4f
    cpx $dc01                                ; $6d52
    bne $6d4f                                ; $6d55
    sta $dc00                                ; $6d57
    inx                                      ; $6d5a
    bne $6d5f                                ; $6d5b
    sta $91                                  ; $6d5d
    rts                                      ; $6d5f
    sei                                      ; $6d60
    lda $a2                                  ; $6d61
    ldx $a1                                  ; $6d63
    ldy $a0                                  ; $6d65
    sei                                      ; $6d67
    sta $a2                                  ; $6d68
    stx $a1                                  ; $6d6a
    sty $a0                                  ; $6d6c
    cli                                      ; $6d6e
    rts                                      ; $6d6f
    lda $91                                  ; $6d70
    cmp #$7f                                 ; $6d72
    bne $6d7d                                ; $6d74
    php                                      ; $6d76
    jsr $ffcc                                ; $6d77
    sta $c6                                  ; $6d7a
    plp                                      ; $6d7c
    rts                                      ; $6d7d
    lda #$01                                 ; $6d7e
    bit $02a9                                ; $6d80
    bit $03a9                                ; $6d83
    bit $04a9                                ; $6d86
    bit $05a9                                ; $6d89
    bit $06a9                                ; $6d8c
    bit $07a9                                ; $6d8f
    bit $08a9                                ; $6d92
    bit $09a9                                ; $6d95
    pha                                      ; $6d98
    jsr $ffcc                                ; $6d99
    ldy #$00                                 ; $6d9c
    bit $9d                                  ; $6d9e
    bvc $6dac                                ; $6da0
    jsr $f12f                                ; $6da2
    pla                                      ; $6da5
    pha                                      ; $6da6
    ora #$30                                 ; $6da7
    jsr $ffd2                                ; $6da9
    pla                                      ; $6dac
    sec                                      ; $6dad
    rts                                      ; $6dae
    jsr $f05e                                ; $6daf
    sta $f7                                  ; $6db2
    lda $fa                                  ; $6db4
    sta $f8                                  ; $6db6
    rts                                      ; $6db8
    jsr $ee97                                ; $6db9
    bit $dd01                                ; $6dbc
    and #$40                                 ; $6dbf
    beq $6db9                                ; $6dc1
    lda $c4                                  ; $6dc3
    cmp #$08                                 ; $6dc5
    bcc $6dd0                                ; $6dc7
    lda $9d                                  ; $6dc9
    bpl $6dd0                                ; $6dcb
    jsr $f890                                ; $6dcd
    jmp $f958                                ; $6dd0
    ldy #$63                                 ; $6dd3
    jsr $f12f                                ; $6dd5
    ldy #$05                                 ; $6dd8
    lda ($b2),y                              ; $6dda
    jsr $ffd2                                ; $6ddc
    iny                                      ; $6ddf
    cpy #$15                                 ; $6de0
    bne $6dda                                ; $6de2
    lda $a1                                  ; $6de4
    jsr $e4e0                                ; $6de6
    nop                                      ; $6de9
    clc                                      ; $6dea
    dey                                      ; $6deb
    rts                                      ; $6dec
    bit $dc0c                                ; $6ded
    bpl $6df5                                ; $6df0
    inc $dd03                                ; $6df2
    jmp $eea0                                ; $6df5
    bcs $6e43                                ; $6df8
    cmp #$0d                                 ; $6dfa
    bne $6e42                                ; $6dfc
    lda #$00                                 ; $6dfe
    sta $0200,x                              ; $6e00
    bit $9d                                  ; $6e03
    bpl $6e1a                                ; $6e05
    ldx #$ff                                 ; $6e07
    inx                                      ; $6e09
    lda $0200,x                              ; $6e0a
    cmp #$20                                 ; $6e0d
    beq $6e09                                ; $6e0f
    cmp #$40                                 ; $6e11
    bne $6e1a                                ; $6e13
    lda #$22                                 ; $6e15
    sta $0200,x                              ; $6e17
    pla                                      ; $6e1a
    pla                                      ; $6e1b
    jmp $aacf                                ; $6e1c
    eor #$0b                                 ; $6e1f
    beq $6e26                                ; $6e21
    jmp $a43a                                ; $6e23
    tay                                      ; $6e26
    pla                                      ; $6e27
    cmp #$a7                                 ; $6e28
    bne $6e23                                ; $6e2a
    pla                                      ; $6e2c
    lda ($7a),y                              ; $6e2d
    cmp #$22                                 ; $6e2f
    beq $6e3a                                ; $6e31
    cmp #$40                                 ; $6e33
    bne $6e46                                ; $6e35
    jsr $0073                                ; $6e37
    jsr $e1d4                                ; $6e3a
    jsr $e591                                ; $6e3d
    bcs $6e43                                ; $6e40
    rts                                      ; $6e42
    jmp $e0f9                                ; $6e43
    cmp #$26                                 ; $6e46
    bne $6e23                                ; $6e48
    jsr $0073                                ; $6e4a
    bne $6e52                                ; $6e4d
    jmp $e4b7                                ; $6e4f
    cmp #$22                                 ; $6e52
    bne $6e67                                ; $6e54
    jsr $e1d4                                ; $6e56
    lda #$00                                 ; $6e59
    jsr $ffd5                                ; $6e5b
    bcs $6e43                                ; $6e5e
    lda $c3                                  ; $6e60
    ldx $c4                                  ; $6e62
    jmp $e4bb                                ; $6e64
    cmp #$ac                                 ; $6e67
    bne $6e80                                ; $6e69
    iny                                      ; $6e6b
    sta ($2b),y                              ; $6e6c
    jsr $a533                                ; $6e6e
    lda $22                                  ; $6e71
    adc #$02                                 ; $6e73
    sta $2d                                  ; $6e75
    lda $23                                  ; $6e77
    adc #$00                                 ; $6e79
    sta $2e                                  ; $6e7b
    jmp $e1ab                                ; $6e7d
    jsr $f1a7                                ; $6e80
    ldy #$2a                                 ; $6e83
    jsr $f12f                                ; $6e85
    lda $15                                  ; $6e88
    tay                                      ; $6e8a
    ldx $14                                  ; $6e8b
    jsr $f894                                ; $6e8d
    lda #$3d                                 ; $6e90
    jsr $ffd2                                ; $6e92
    tya                                      ; $6e95
    jmp $bdcd                                ; $6e96
    rts                                      ; $6e99
    jsr $f82e                                ; $6e9a
    beq $6eb9                                ; $6e9d
    ldy #$1b                                 ; $6e9f
    jsr $f12f                                ; $6ea1
    jsr $f8d0                                ; $6ea4
    jsr $f82e                                ; $6ea7
    bne $6ea4                                ; $6eaa
    ldy #$6a                                 ; $6eac
    jmp $f12f                                ; $6eae
    lda #$10                                 ; $6eb1
    bit $01                                  ; $6eb3
    bne $6eb9                                ; $6eb5
    bit $01                                  ; $6eb7
    clc                                      ; $6eb9
    rts                                      ; $6eba
    jsr $f82e                                ; $6ebb
    beq $6eb9                                ; $6ebe
    ldy #$21                                 ; $6ec0
    bne $6ea1                                ; $6ec2
    bit $dc0c                                ; $6ec4
    bpl $6f0d                                ; $6ec7
    stx $a5                                  ; $6ec9
    bit $dd00                                ; $6ecb
    bvc $6ecb                                ; $6ece
    lda $dd00                                ; $6ed0
    and #$df                                 ; $6ed3
    sta $dd00                                ; $6ed5
    ldx #$05                                 ; $6ed8
    bit $dd00                                ; $6eda
    bvc $6efc                                ; $6edd
    dex                                      ; $6edf
    bne $6eda                                ; $6ee0
    jsr $eea0                                ; $6ee2
    lda #$40                                 ; $6ee5
    jsr $fe1c                                ; $6ee7
    jsr $ee97                                ; $6eea
    ldx #$05                                 ; $6eed
    bit $dd00                                ; $6eef
    bvc $6efc                                ; $6ef2
    dex                                      ; $6ef4
    bne $6eef                                ; $6ef5
    lda #$02                                 ; $6ef7
    jmp $f9b7                                ; $6ef9
    ldx $dd01                                ; $6efc
    ora #$20                                 ; $6eff
    sta $dd00                                ; $6f01
    stx $a4                                  ; $6f04
    ldx $a5                                  ; $6f06
    lda $a4                                  ; $6f08
    clc                                      ; $6f0a
    cli                                      ; $6f0b
    rts                                      ; $6f0c
    jsr $ee85                                ; $6f0d
    jmp $ee1b                                ; $6f10
    ldx $ae                                  ; $6f13
    lda $af                                  ; $6f15
    jsr $f898                                ; $6f17
    txa                                      ; $6f1a
    pha                                      ; $6f1b
    lsr                                    ; $6f1c
    lsr                                    ; $6f1d
    lsr                                    ; $6f1e
    lsr                                    ; $6f1f
    jsr $f8a3                                ; $6f20
    pla                                      ; $6f23
    and #$0f                                 ; $6f24
    clc                                      ; $6f26
    adc #$30                                 ; $6f27
    cmp #$3a                                 ; $6f29
    bcc $6f2f                                ; $6f2b
    adc #$06                                 ; $6f2d
    jmp $ffd2                                ; $6f2f
    php                                      ; $6f32
    !byte $f4                                ; $6f33 (undefined opcode)
    !byte $e3                                ; $6f34 (undefined opcode)
    sbc $a473,y                              ; $6f35
    !byte $53                                ; $6f38 (undefined opcode)
    !byte $fa                                ; $6f39 (undefined opcode)
    !byte $43                                ; $6f3a (undefined opcode)
    !byte $f4                                ; $6f3b (undefined opcode)
    adc ($f6,x)                              ; $6f3c
    !byte $77                                ; $6f3e (undefined opcode)
    !byte $f4                                ; $6f3f (undefined opcode)
    !byte $52                                ; $6f40 (undefined opcode)
    !byte $f4                                ; $6f41 (undefined opcode)
    eor $f4,x                                ; $6f42
    !byte $8b                                ; $6f44 (undefined opcode)
    !byte $f4                                ; $6f45 (undefined opcode)
    sbc ($f9,x)                              ; $6f46
    lda #$fc                                 ; $6f48
    !byte $f3                                ; $6f4a (undefined opcode)
    sbc $fa02,y                              ; $6f4b
    ora ($0a,x)                              ; $6f4e
    !byte $64                                ; $6f50 (undefined opcode)
    inx                                      ; $6f51
    bpl $6f74                                ; $6f52
    sbc ($ff,x)                              ; $6f54
    clc                                      ; $6f56
    bne $6f5f                                ; $6f57
    jsr $fc93                                ; $6f59
    sec                                      ; $6f5c
    pla                                      ; $6f5d
    pla                                      ; $6f5e
    rts                                      ; $6f5f
    bit $dc0c                                ; $6f60
    bvs $6f93                                ; $6f63
    pha                                      ; $6f65
    jsr $ed36                                ; $6f66
    sei                                      ; $6f69
    pla                                      ; $6f6a
    and #$f0                                 ; $6f6b
    cmp #$e0                                 ; $6f6d
    beq $6f91                                ; $6f6f
    stx $a5                                  ; $6f71
    ldx #$19                                 ; $6f73
    lda #$10                                 ; $6f75
    bit $dd0d                                ; $6f77
    dex                                      ; $6f7a
    beq $6f8f                                ; $6f7b
    bit $dd01                                ; $6f7d
    bit $dd0d                                ; $6f80
    beq $6f7a                                ; $6f83
    asl $dc0c                                ; $6f85
    sec                                      ; $6f88
    ror $dc0c                                ; $6f89
    jsr $f1b8                                ; $6f8c
    ldx $a5                                  ; $6f8f
    cli                                      ; $6f91
    rts                                      ; $6f92
    and #$0f                                 ; $6f93
    cmp #$07                                 ; $6f95
    bne $6fd2                                ; $6f97
    lda #$43                                 ; $6f99
    bne $6fcf                                ; $6f9b
    jsr $f1b8                                ; $6f9d
    txa                                      ; $6fa0
    pha                                      ; $6fa1
    lda $dc0c                                ; $6fa2
    and #$02                                 ; $6fa5
    bne $6fcb                                ; $6fa7
    lda $dd0d                                ; $6fa9
    lda #$16                                 ; $6fac
    jsr $e4ec                                ; $6fae
    ldx #$13                                 ; $6fb1
    stx $a5                                  ; $6fb3
    lda $dd0d                                ; $6fb5
    and #$10                                 ; $6fb8
    bne $6fcb                                ; $6fba
    dex                                      ; $6fbc
    bne $6fb5                                ; $6fbd
    dec $a5                                  ; $6fbf
    bne $6fb5                                ; $6fc1
    pla                                      ; $6fc3
    tax                                      ; $6fc4
    jsr $f958                                ; $6fc5
    jmp $ed2e                                ; $6fc8
    pla                                      ; $6fcb
    tax                                      ; $6fcc
    lda #$42                                 ; $6fcd
    sta $dc0c                                ; $6fcf
    bne $7035                                ; $6fd2
    bit $dc0c                                ; $6fd4
    bvs $6fdb                                ; $6fd7
    bpl $6ff1                                ; $6fd9
    pha                                      ; $6fdb
    lda $dc0c                                ; $6fdc
    and #$02                                 ; $6fdf
    sta $dc0c                                ; $6fe1
    lda $0296                                ; $6fe4
    sta $dd03                                ; $6fe7
    lda $0295                                ; $6fea
    sta $dd01                                ; $6fed
    pla                                      ; $6ff0
    rts                                      ; $6ff1
; =============================================================================
; PARALLEL_TRANSFER_CORE - Core parallel byte send routine
; Entry: $95 = byte to send, X = saved across call
; Exit: C=0 success, C=1 error, A=$80 on timeout
; Uses $DD00 bit 4 for handshake, $DD01 for data
; =============================================================================
    stx $a5        ; Save X register         ; $6ff2
    lda $dc0c      ; Read CIA#1 serial port register ; $6ff4
    bpl $7042      ; Branch if bit 7 clear (not in parallel mode) ; $6ff7
    lda $dd00      ; Read CIA#2 port A       ; $6ff9
    bmi $7038      ; Abort if DATA IN high (bit 7 set): unexpected bus state ; $6ffc
    and #$ef       ; Clear bit 4 (signal "ready to send") ; $6ffe
    sta $dd00                                ; $7000
    bit $a3        ; Check handshake mode flag ; $7003
    bpl $7018      ; Skip sync wait if not needed ; $7005
; --- Wait for drive acknowledgment (bit 7 high) ---
    bit $dd00      ; Test bit 7              ; $7007
    bpl $7007      ; Loop until drive signals ready ; $700a
    ldx #$1e       ; Timeout counter (30)    ; $700c
    lda $dd00      ; Read port               ; $700e
    bpl $7018      ; Continue if bit 7 went low ; $7011
    dex ; Decrement timeout                  ; $7013
    bne $700e      ; Loop until timeout      ; $7014
    beq $7024      ; Timeout: skip data write ; $7016
; --- Wait for drive ready signal (bit 7 high) ---
    lda $dd00      ; Read port               ; $7018
    bpl $7018      ; Wait for bit 7 high     ; $701b
; --- Send byte via parallel port ---
    ldx $95        ; Get byte to send        ; $701d
    stx $dd01      ; WRITE BYTE TO PARALLEL PORT ; $701f
    ldx #$1e       ; Timeout counter (30)    ; $7022
; --- Signal data ready and wait for acknowledge ---
    ora #$10       ; Set bit 4 (signal "data valid") ; $7024
    sta $dd00                                ; $7026
    lda #$03       ; Error code if timeout   ; $7029
    dex ; Decrement timeout counter          ; $702b
    bmi $703a      ; Timeout expired: error  ; $702c
    bit $dd00      ; Test bit 7              ; $702e
    bmi $702b      ; Wait for bit 7 low (drive acknowledged) ; $7031
; --- Success exit ---
    ldx $a5        ; Restore X register      ; $7033
    clc ; Clear carry (success)              ; $7035
    cli ; Re-enable interrupts               ; $7036
    rts                                      ; $7037
; --- Error exit ---
    lda #$80       ; Device not present error ; $7038
    ldx $a5        ; Restore X               ; $703a
    jsr $f951      ; IEC bus cleanup         ; $703c
    jmp $edb2      ; Return with error status ; $703f
    lsr                                    ; $7042
    and #$20                                 ; $7043
    beq $7062                                ; $7045
    lda $95                                  ; $7047
    bcc $7056                                ; $7049
    ldx #$0a                                 ; $704b
    dex                                      ; $704d
    cmp $f0b3,x                              ; $704e
    bcc $704d                                ; $7051
    sbc $f19b,x                              ; $7053
    jsr $e4ec                                ; $7056
    lda #$10                                 ; $7059
    bit $dd0d                                ; $705b
    beq $705b                                ; $705e
    bne $7033                                ; $7060
    jmp $ed44                                ; $7062
    lda #$20                                 ; $7065
    sta $0299                                ; $7067
    lda $d3                                  ; $706a
    cmp $c8                                  ; $706c
    beq $7086                                ; $706e
    jsr $f05e                                ; $7070
    lda #$01                                 ; $7073
    bne $7090                                ; $7075
    ldx $fa                                  ; $7077
    dex                                      ; $7079
    lda $0299                                ; $707a
    cmp #$20                                 ; $707d
    bne $7084                                ; $707f
    dex                                      ; $7081
    dex                                      ; $7082
    dex                                      ; $7083
    stx $fa                                  ; $7084
    jsr $e566                                ; $7086
    lda #$0b                                 ; $7089
    jsr $ffd2                                ; $708b
    lda #$11                                 ; $708e
    sta $f7                                  ; $7090
    ldx $0299                                ; $7092
    cpx #$20                                 ; $7095
    php                                      ; $7097
    beq $709c                                ; $7098
    ldx #$3a                                 ; $709a
    jsr $fb97                                ; $709c
    ldx $f9                                  ; $709f
    lda $fa                                  ; $70a1
    jsr $f894                                ; $70a3
    plp                                      ; $70a6
    beq $70b1                                ; $70a7
    ldx #$08                                 ; $70a9
    stx $0299                                ; $70ab
    jsr $f187                                ; $70ae
    ldy #$00                                 ; $70b1
    jsr $fb9e                                ; $70b3
    lda ($f9),y                              ; $70b6
    jsr $f2a9                                ; $70b8
    iny                                      ; $70bb
    cpy $0299                                ; $70bc
    bne $70b6                                ; $70bf
    dec $f7                                  ; $70c1
    beq $70d4                                ; $70c3
    tya                                      ; $70c5
    clc                                      ; $70c6
    adc $f9                                  ; $70c7
    sta $f9                                  ; $70c9
    bcc $70cf                                ; $70cb
    inc $fa                                  ; $70cd
    jsr $ffe1                                ; $70cf
    bne $7092                                ; $70d2
    jmp $f035                                ; $70d4
    jsr $f72c                                ; $70d7
    ldx #$08                                 ; $70da
    jsr $f26c                                ; $70dc
    lda $f7                                  ; $70df
    sta $f9                                  ; $70e1
    lda #$01                                 ; $70e3
    sta $f7                                  ; $70e5
    lda #$02                                 ; $70e7
    sta $d3                                  ; $70e9
    php                                      ; $70eb
    !byte $d0,$b1                            ; $70ec (bne $709f)
    cmp #$07                                 ; $70ee
    bne $7102                                ; $70f0
    tya                                      ; $70f2
    adc #$13                                 ; $70f3
    tay                                      ; $70f5
    cmp $d5                                  ; $70f6
    bcc $70ff                                ; $70f8
    beq $70ff                                ; $70fa
    jmp $e7b6                                ; $70fc
    jmp $e797                                ; $70ff
    cmp #$0c                                 ; $7102
    bne $710b                                ; $7104
    jsr $ea04                                ; $7106
    bmi $713d                                ; $7109
    cmp #$02                                 ; $710b
    bne $711a                                ; $710d
    lda #$00                                 ; $710f
    sta $d3                                  ; $7111
    ldy #$18                                 ; $7113
    jsr $e56a                                ; $7115
    bmi $713d                                ; $7118
    cmp #$0b                                 ; $711a
    bne $7131                                ; $711c
    jsr $ea24                                ; $711e
    lda #$20                                 ; $7121
    sta ($d1),y                              ; $7123
    jsr $e4da                                ; $7125
    iny                                      ; $7128
    cpy $d5                                  ; $7129
    bcc $7121                                ; $712b
    beq $7121                                ; $712d
    bcs $713d                                ; $712f
    cmp #$01                                 ; $7131
    bne $7140                                ; $7133
    lda $028a                                ; $7135
    eor #$80                                 ; $7138
    sta $028a                                ; $713a
    jmp $e6ae                                ; $713d
    jmp $ec44                                ; $7140
    sta $f7                                  ; $7143
    stx $f8                                  ; $7145
    lda #$31                                 ; $7147
    sta $f9                                  ; $7149
    ldx #$04                                 ; $714b
    dec $f9                                  ; $714d
    lda #$2f                                 ; $714f
    sta $fa                                  ; $7151
    sec                                      ; $7153
    lda $f8                                  ; $7154
    sbc $f8cb,x                              ; $7156
    sta $f8                                  ; $7159
    lda $f7                                  ; $715b
    sbc $f196,x                              ; $715d
    sta $f7                                  ; $7160
    inc $fa                                  ; $7162
    bcs $7154                                ; $7164
    lda $f8                                  ; $7166
    adc $f8cb,x                              ; $7168
    sta $f8                                  ; $716b
    lda $f7                                  ; $716d
    adc $f196,x                              ; $716f
    sta $f7                                  ; $7172
    lda $fa                                  ; $7174
    cmp $f9                                  ; $7176
    beq $717f                                ; $7178
    jsr $ffd2                                ; $717a
    dec $f9                                  ; $717d
    dex                                      ; $717f
    beq $714d                                ; $7180
    bpl $714f                                ; $7182
    rts                                      ; $7184
    adc #$10                                 ; $7185
    tax                                      ; $7187
    txs                                      ; $7188
    lsr $dc00                                ; $7189
    ldx $dc01                                ; $718c
    inx                                      ; $718f
    bne $718c                                ; $7190
    dex                                      ; $7192
    rts                                      ; $7193
    sta $028c                                ; $7194
    sty $c5                                  ; $7197
    cpx #$fd                                 ; $7199
    beq $71b1                                ; $719b
    cpx #$fe                                 ; $719d
    bne $71b0                                ; $719f
    ldy #$0e                                 ; $71a1
    lda $fb02,y                              ; $71a3
    pha                                      ; $71a6
    dey                                      ; $71a7
    bpl $71a3                                ; $71a8
    tsx                                      ; $71aa
    lda #$01                                 ; $71ab
    pha                                      ; $71ad
    txa                                      ; $71ae
    pha                                      ; $71af
    rts                                      ; $71b0
    jsr $ed0f                                ; $71b1
    lda $d018                                ; $71b4
    and #$02                                 ; $71b7
    beq $71bd                                ; $71b9
    lda #$07                                 ; $71bb
    ora #$60                                 ; $71bd
    jsr $edb9                                ; $71bf
    lda $0288                                ; $71c2
    sta $f8                                  ; $71c5
    lda #$00                                 ; $71c7
    sta $f7                                  ; $71c9
    sta $dc00                                ; $71cb
    ldx #$19                                 ; $71ce
    ldy #$00                                 ; $71d0
    lda #$0d                                 ; $71d2
    jsr $eddd                                ; $71d4
    dex                                      ; $71d7
    bmi $71e1                                ; $71d8
    bit $dc01                                ; $71da
    bmi $71e4                                ; $71dd
    ldx #$ff                                 ; $71df
    jmp $edfe                                ; $71e1
    lda ($f7),y                              ; $71e4
    sta $f9                                  ; $71e6
    and #$3f                                 ; $71e8
    asl $f9                                  ; $71ea
    bit $f9                                  ; $71ec
    bpl $71f2                                ; $71ee
    ora #$80                                 ; $71f0
    bvs $71f6                                ; $71f2
    ora #$40                                 ; $71f4
    jsr $eddd                                ; $71f6
    iny                                      ; $71f9
    cpy #$28                                 ; $71fa
    bne $71e4                                ; $71fc
    tya                                      ; $71fe
    clc                                      ; $71ff
    adc $f7                                  ; $7200
    sta $f7                                  ; $7202
    bcc $71d0                                ; $7204
    inc $f8                                  ; $7206
    bne $71d0                                ; $7208
    jsr $1c20                                ; $720a
    inc $bc4c,x                              ; $720d
    inc $c2a5,x                              ; $7210
    sta $ad                                  ; $7213
    lda $c1                                  ; $7215
    sta $ac                                  ; $7217
    rts                                      ; $7219
    jsr $fec2                                ; $721a
    txa                                      ; $721d
    jmp $ffd2                                ; $721e
    lda #$20                                 ; $7221
    bit $0da9                                ; $7223
    jmp $ffd2                                ; $7226
    jsr $fba1                                ; $7229
    ldy $b7                                  ; $722c
    beq $724d                                ; $722e
    ldy #$00                                 ; $7230
    lda ($bb),y                              ; $7232
    cmp #$30                                 ; $7234
    bcc $7243                                ; $7236
    cmp #$3a                                 ; $7238
    bcs $7247                                ; $723a
    sbc #$2f                                 ; $723c
    sta $0294                                ; $723e
    clc                                      ; $7241
    rts                                      ; $7242
    cmp #$24                                 ; $7243
    beq $726b                                ; $7245
    jsr $f676                                ; $7247
    jsr $f3fa                                ; $724a
    lda $b9                                  ; $724d
    beq $7241                                ; $724f
    jsr $f676                                ; $7251
    lda $ba                                  ; $7254
    jsr $ed09                                ; $7256
    lda #$6f                                 ; $7259
    jsr $edc7                                ; $725b
    jsr $ee13                                ; $725e
    jsr $ffd2                                ; $7261
    bit $90                                  ; $7264
    bvc $725e                                ; $7266
    jmp $edef                                ; $7268
    sty $90                                  ; $726b
    ldx $b9                                  ; $726d
    sty $b9                                  ; $726f
    jsr $f3d5                                ; $7271
    lda $ba                                  ; $7274
    jsr $ed09                                ; $7276
    lda #$60                                 ; $7279
    jsr $edc7                                ; $727b
    txa                                      ; $727e
    tay                                      ; $727f
    ldx #$04                                 ; $7280
    bit $02a2                                ; $7282
    jsr $ee13                                ; $7285
    lda $90                                  ; $7288
    bne $72a7                                ; $728a
    dex                                      ; $728c
    bne $7285                                ; $728d
    jsr $ee13                                ; $728f
    tax                                      ; $7292
    jsr $ee13                                ; $7293
    jsr $fac0                                ; $7296
    lda #$20                                 ; $7299
    jsr $ffd2                                ; $729b
    jsr $ee13                                ; $729e
    beq $72b7                                ; $72a1
    ldx $90                                  ; $72a3
    beq $729b                                ; $72a5
    jsr $f642                                ; $72a7
    sty $b9                                  ; $72aa
    lda $90                                  ; $72ac
    and #$bf                                 ; $72ae
    !byte $f0,$8f                            ; $72b0 (beq $7241)
    jsr $fba1                                ; $72b2
    !byte $d0,$96                            ; $72b5 (bne $724d)
    jsr $fba1                                ; $72b7
    jsr $ffe1                                ; $72ba
    bne $7283                                ; $72bd
    jmp $f633                                ; $72bf
    sta $89                                  ; $72c2
    stx $8a                                  ; $72c4
    !byte $87                                ; $72c6 (undefined opcode)
    !byte $8b                                ; $72c7 (undefined opcode)
    dey                                      ; $72c8
    sty $8280                                ; $72c9
    sty $8f                                  ; $72cc
    eor #$24                                 ; $72ce
    beq $72d8                                ; $72d0
    jsr $ad8a                                ; $72d2
    jmp $b7f7                                ; $72d5
    sta $15                                  ; $72d8
    sta $14                                  ; $72da
    jsr $0073                                ; $72dc
    beq $7312                                ; $72df
    bcc $72e9                                ; $72e1
    cmp #$41                                 ; $72e3
    bcc $7312                                ; $72e5
    sbc #$08                                 ; $72e7
    sbc #$2f                                 ; $72e9
    cmp #$10                                 ; $72eb
    bcs $72f4                                ; $72ed
    jsr $fc80                                ; $72ef
    bcc $72dc                                ; $72f2
    cmp #$5f                                 ; $72f4
    bne $7312                                ; $72f6
    lda #$0d                                 ; $72f8
    jsr $fc80                                ; $72fa
    sta $15                                  ; $72fd
    lda #$ef                                 ; $72ff
    bne $72da                                ; $7301
    ldx #$03                                 ; $7303
    asl $14                                  ; $7305
    rol $15                                  ; $7307
    bcs $7313                                ; $7309
    dex                                      ; $730b
    bpl $7305                                ; $730c
    ora $14                                  ; $730e
    sta $14                                  ; $7310
    rts                                      ; $7312
    jmp $b248                                ; $7313
    php                                      ; $7316
    sei                                      ; $7317
    lda $d011                                ; $7318
    ora #$10                                 ; $731b
    sta $d011                                ; $731d
    jsr $fcca                                ; $7320
    lda #$7f                                 ; $7323
    sta $dc0d                                ; $7325
    jsr $fddd                                ; $7328
    plp                                      ; $732b
    rts                                      ; $732c
    jsr $f05e                                ; $732d
    jsr $f1df                                ; $7330
    clc                                      ; $7333
    tay                                      ; $7334
    dey                                      ; $7335
    bmi $733e                                ; $7336
    lda ($bb),y                              ; $7338
    sta ($f9),y                              ; $733a
    bcc $7335                                ; $733c
    lda $f9                                  ; $733e
    adc $b7                                  ; $7340
    tax                                      ; $7342
    lda $fa                                  ; $7343
    adc #$00                                 ; $7345
    jsr $f894                                ; $7347
    jmp $f035                                ; $734a
    lda $01                                  ; $734d
    ora #$20                                 ; $734f
    sta $01                                  ; $7351
    rts                                      ; $7353
    sec                                      ; $7354
    lda $ac                                  ; $7355
    sbc $ae                                  ; $7357
    lda $ad                                  ; $7359
    sbc $af                                  ; $735b
    rts                                      ; $735d
    inc $ac                                  ; $735e
    bne $7364                                ; $7360
    inc $ad                                  ; $7362
    rts                                      ; $7364
    ldx #$ff                                 ; $7365
    sei                                      ; $7367
    txs                                      ; $7368
    cld                                      ; $7369
    jsr $fe72                                ; $736a
    bne $7372                                ; $736d
    jmp ($8000)                              ; $736f
    stx $d016                                ; $7372
    jsr $fda3                                ; $7375
    jsr $fd50                                ; $7378
    jsr $fd15                                ; $737b
    jsr $ff5b                                ; $737e
    cli                                      ; $7381
    jmp ($a000)                              ; $7382
    ldx #$05                                 ; $7385
    lda $fd0f,x                              ; $7387
    cmp $8003,x                              ; $738a
    bne $7392                                ; $738d
    dex                                      ; $738f
    bne $7387                                ; $7390
    rts                                      ; $7392
    !byte $c3                                ; $7393 (undefined opcode)
    !byte $c2                                ; $7394 (undefined opcode)
    cmp $3038                                ; $7395
    ldx #$30                                 ; $7398
    ldy #$fd                                 ; $739a
    clc                                      ; $739c
    stx $c3                                  ; $739d
    sty $c4                                  ; $739f
    ldy #$1f                                 ; $73a1
    lda ($c3),y                              ; $73a3
    bcc $73ac                                ; $73a5
    lda $0314,y                              ; $73a7
    sta ($c3),y                              ; $73aa
    sta $0314,y                              ; $73ac
    dey                                      ; $73af
    bpl $73a3                                ; $73b0
    rts                                      ; $73b2
    and ($ea),y                              ; $73b3
    ror $fe                                  ; $73b5
    !byte $47                                ; $73b7 (undefined opcode)
    inc $f34a,x                              ; $73b8
    sta ($f2),y                              ; $73bb
    asl $50f2                                ; $73bd
    !byte $f2                                ; $73c0 (undefined opcode)
    !byte $33                                ; $73c1 (undefined opcode)
    !byte $f3                                ; $73c2 (undefined opcode)
    !byte $57                                ; $73c3 (undefined opcode)
    sbc ($ca),y                              ; $73c4
    sbc ($ed),y                              ; $73c6
    inc $3e,x                                ; $73c8
    sbc ($2f),y                              ; $73ca
    !byte $f3                                ; $73cc (undefined opcode)
    ror $fe                                  ; $73cd
    lda $f4                                  ; $73cf
    sbc $a9f5                                ; $73d1
    brk                                      ; $73d4
    tay                                      ; $73d5
    sta $0002,y                              ; $73d6
    sta $0200,y                              ; $73d9
    sta $023c,y                              ; $73dc
    iny                                      ; $73df
    bne $73d6                                ; $73e0
    ldx #$3c                                 ; $73e2
    ldy #$03                                 ; $73e4
    stx $b2                                  ; $73e6
    sty $b3                                  ; $73e8
    tay                                      ; $73ea
    sta $dc0c                                ; $73eb
    lda #$80                                 ; $73ee
    ldx #$20                                 ; $73f0
    sta $c2                                  ; $73f2
    lda ($c1),y                              ; $73f4
    eor #$ff                                 ; $73f6
    sta ($c1),y                              ; $73f8
    cmp ($c1),y                              ; $73fa
    php                                      ; $73fc
    eor #$ff                                 ; $73fd
    sta ($c1),y                              ; $73ff
    plp                                      ; $7401
    bne $740c                                ; $7402
    iny                                      ; $7404
    bne $73f4                                ; $7405
    inc $c2                                  ; $7407
    dex                                      ; $7409
    bne $73f4                                ; $740a
    tya                                      ; $740c
    tax                                      ; $740d
    ldy $c2                                  ; $740e
    clc                                      ; $7410
    jsr $fe2d                                ; $7411
    lda #$08                                 ; $7414
    sta $0282                                ; $7416
    lda #$04                                 ; $7419
    sta $0288                                ; $741b
    rts                                      ; $741e
    cpx $c9                                  ; $741f
    beq $741e                                ; $7421
    jmp $e6ed                                ; $7423
    lda #$7f                                 ; $7426
    sta $dc0d                                ; $7428
    sta $dd0d                                ; $742b
    sta $dc00                                ; $742e
    lda #$08                                 ; $7431
    sta $dc0e                                ; $7433
    sta $dd0e                                ; $7436
    sta $dc0f                                ; $7439
    sta $dd0f                                ; $743c
    ldx #$00                                 ; $743f
    stx $dc03                                ; $7441
    stx $dd03                                ; $7444
    stx $d418                                ; $7447
    dex                                      ; $744a
    stx $dc02                                ; $744b
    lda #$07                                 ; $744e
    sta $dd00                                ; $7450
    lda #$3f                                 ; $7453
    sta $dd02                                ; $7455
    lda #$e7                                 ; $7458
    sta $01                                  ; $745a
    lda #$2f                                 ; $745c
    sta $00                                  ; $745e
    lda $02a6                                ; $7460
    beq $746f                                ; $7463
    lda #$25                                 ; $7465
    sta $dc04                                ; $7467
    lda #$40                                 ; $746a
    jmp $fdf3                                ; $746c
    lda #$95                                 ; $746f
    sta $dc04                                ; $7471
    lda #$42                                 ; $7474
    sta $dc05                                ; $7476
    jmp $ff6e                                ; $7479
    sta $b7                                  ; $747c
    stx $bb                                  ; $747e
    sty $bc                                  ; $7480
    rts                                      ; $7482
    sta $b8                                  ; $7483
    stx $ba                                  ; $7485
    sty $b9                                  ; $7487
    rts                                      ; $7489
    lda $ba                                  ; $748a
    cmp #$02                                 ; $748c
    bne $749d                                ; $748e
    lda $0297                                ; $7490
    pha                                      ; $7493
    lda #$00                                 ; $7494
    sta $0297                                ; $7496
    pla                                      ; $7499
    rts                                      ; $749a
    sta $9d                                  ; $749b
    lda $90                                  ; $749d
    ora $90                                  ; $749f
    sta $90                                  ; $74a1
    rts                                      ; $74a3
    sta $0285                                ; $74a4
    rts                                      ; $74a7
    bcc $74b0                                ; $74a8
    ldx $0283                                ; $74aa
    ldy $0284                                ; $74ad
    stx $0283                                ; $74b0
    sty $0284                                ; $74b3
    rts                                      ; $74b6
    bcc $74bf                                ; $74b7
    ldx $0281                                ; $74b9
    ldy $0282                                ; $74bc
    stx $0281                                ; $74bf
    sty $0282                                ; $74c2
    rts                                      ; $74c5
    sei                                      ; $74c6
    jmp ($0318)                              ; $74c7
    pha                                      ; $74ca
    txa                                      ; $74cb
    pha                                      ; $74cc
    tya                                      ; $74cd
    pha                                      ; $74ce
    lda #$7f                                 ; $74cf
    sta $dd0d                                ; $74d1
    ldy $dd0d                                ; $74d4
    bmi $7539                                ; $74d7
    jsr $fd02                                ; $74d9
    bne $74e1                                ; $74dc
    jmp ($8002)                              ; $74de
    jsr $f6bc                                ; $74e1
    jsr $fe7e                                ; $74e4
    bne $7539                                ; $74e7
    jsr $fd15                                ; $74e9
    jsr $fda3                                ; $74ec
    jsr $e518                                ; $74ef
    jmp ($a002)                              ; $74f2
    jsr $fda3                                ; $74f5
    lda $dc01                                ; $74f8
    jsr $fe81                                ; $74fb
    jmp $fd02                                ; $74fe
    jsr $ffe1                                ; $7501
    rol                                    ; $7504
    bcc $74e9                                ; $7505
    rol                                    ; $7507
    bcc $74ec                                ; $7508
    rol                                    ; $750a
    rol                                    ; $750b
    bcs $7511                                ; $750c
    jmp $fcef                                ; $750e
    rol                                    ; $7511
    rol                                    ; $7512
    bcs $7526                                ; $7513
    jsr $fda3                                ; $7515
    jsr $e518                                ; $7518
    tsx                                      ; $751b
    inx                                      ; $751c
    inx                                      ; $751d
    txs                                      ; $751e
    cpx #$fa                                 ; $751f
    bcs $7537                                ; $7521
    jmp $f01d                                ; $7523
    rol                                    ; $7526
    bcs $7538                                ; $7527
    bmi $7538                                ; $7529
    ldx #$17                                 ; $752b
    lda $e4c2,x                              ; $752d
    sta $e8,x                                ; $7530
    dex                                      ; $7532
    bpl $752d                                ; $7533
    jmp $00e8                                ; $7535
    rts                                      ; $7538
    lda $02a1                                ; $7539
    sta $dd0d                                ; $753c
    pla                                      ; $753f
    tay                                      ; $7540
    pla                                      ; $7541
    tax                                      ; $7542
    pla                                      ; $7543
    rti                                      ; $7544
    jsr $fba1                                ; $7545
    lda #$2e                                 ; $7548
    jmp $ffd2                                ; $754a
    cmp #$04                                 ; $754d
    bne $7562                                ; $754f
    lda #$01                                 ; $7551
    ldx #$cd                                 ; $7553
    ldy #$eb                                 ; $7555
    jsr $ffbd                                ; $7557
    ldx #$08                                 ; $755a
    jsr $e101                                ; $755c
    jmp $fba6                                ; $755f
    tya                                      ; $7562
    beq $7555                                ; $7563
    eor #$18                                 ; $7565
    bne $757a                                ; $7567
    ldy #$06                                 ; $7569
    sta $0293,y                              ; $756b
    dey                                      ; $756e
    bpl $756b                                ; $756f
    ldy #$cc                                 ; $7571
    sta $0333,y                              ; $7573
    dey                                      ; $7576
    bne $7573                                ; $7577
    rts                                      ; $7579
    cpy #$0f                                 ; $757a
    bne $7595                                ; $757c
    ldx $0293                                ; $757e
    bmi $7579                                ; $7581
    ldy $d3                                  ; $7583
    dey                                      ; $7585
    bmi $7579                                ; $7586
    lda ($d1),y                              ; $7588
    sta $0380,x                              ; $758a
    inc $0293                                ; $758d
    lda #$14                                 ; $7590
    jmp $e716                                ; $7592
    cpy #$10                                 ; $7595
    bne $75b1                                ; $7597
    ldx $0293                                ; $7599
    beq $7579                                ; $759c
    lda #$94                                 ; $759e
    jsr $e716                                ; $75a0
    lda $d8                                  ; $75a3
    beq $7579                                ; $75a5
    dex                                      ; $75a7
    stx $0293                                ; $75a8
    lda $0380,x                              ; $75ab
    jmp $e69f                                ; $75ae
    cpy #$16                                 ; $75b1
    !byte $d0,$c4                            ; $75b3 (bne $7579)
    lda $e535                                ; $75b5
    sta $0286                                ; $75b8
    jmp $e5a0                                ; $75bb
; =============================================================================
; WAIT_PARALLEL_HANDSHAKE - Wait for drive to signal via FLAG or bit 4
; Exit: Returns when either FLAG interrupt or $DD00 bit 4 goes high
; =============================================================================
    lda #$10       ; Bit mask for FLAG (bit 4 of ICR) ; $75be
    bit $dd0d      ; Check CIA#2 interrupt control register ; $75c0
    bne $75ca      ; Exit if FLAG interrupt occurred ; $75c3
    bit $dd00      ; Check bit 4 of port A   ; $75c5
    bpl $75c0      ; Loop until bit 7 high (drive signaled) ; $75c8
    rts                                      ; $75ca
    pha                                      ; $75cb
    txa                                      ; $75cc
    pha                                      ; $75cd
    tya                                      ; $75ce
    pha                                      ; $75cf
    tsx                                      ; $75d0
    lda $0104,x                              ; $75d1
    and #$10                                 ; $75d4
    beq $75db                                ; $75d6
    jmp $f01d                                ; $75d8
    jmp ($0314)                              ; $75db
    jsr $e518                                ; $75de
    lda $d012                                ; $75e1
    bne $75e1                                ; $75e4
    lda $d019                                ; $75e6
    and #$01                                 ; $75e9
    sta $02a6                                ; $75eb
    jmp $fddd                                ; $75ee
    lda #$81                                 ; $75f1
    sta $dc0d                                ; $75f3
    lda $dc0e                                ; $75f6
    and #$80                                 ; $75f9
    ora #$11                                 ; $75fb
    sta $dc0e                                ; $75fd
    jmp $ee8e                                ; $7600
    !byte $03                                ; $7603 (undefined opcode)
    jmp $ff5b                                ; $7604
    jmp $fda3                                ; $7607
    jmp $fd50                                ; $760a
    jmp $fd15                                ; $760d
    jmp $fd1a                                ; $7610
    jmp $fe18                                ; $7613
    jmp $edb9                                ; $7616
    jmp $edc7                                ; $7619
    jmp $fe25                                ; $761c
    jmp $fe34                                ; $761f
    jmp $ea87                                ; $7622
    jmp $fe21                                ; $7625
    jmp $ee13                                ; $7628
    jmp $eddd                                ; $762b
    jmp $edef                                ; $762e
    jmp $edfe                                ; $7631
    jmp $ed0c                                ; $7634
    jmp $ed09                                ; $7637
    jmp $fe07                                ; $763a
    jmp $fe00                                ; $763d
    jmp $fdf9                                ; $7640
    jmp ($031a)                              ; $7643
    jmp ($031c)                              ; $7646
    jmp ($031e)                              ; $7649
    jmp ($0320)                              ; $764c
    jmp ($0322)                              ; $764f
    jmp ($0324)                              ; $7652
    jmp ($0326)                              ; $7655
    jmp $f49e                                ; $7658
    jmp $f5dd                                ; $765b
    jmp $f6e4                                ; $765e
    jmp $f6dd                                ; $7661
    jmp ($0328)                              ; $7664
    jmp ($032a)                              ; $7667
    jmp ($032c)                              ; $766a
    jmp $f69b                                ; $766d
    jmp $e505                                ; $7670
    jmp $e50a                                ; $7673
    jmp $e500                                ; $7676
    !byte $52                                ; $7679 (undefined opcode)
    !byte $52                                ; $767a (undefined opcode)
    !byte $42                                ; $767b (undefined opcode)
    eor $fe43,y                              ; $767c
    !byte $e2                                ; $767f (undefined opcode)
    !byte $fc                                ; $7680 (undefined opcode)
    pha                                      ; $7681
    !byte $ff                                ; $7682 (undefined opcode)
