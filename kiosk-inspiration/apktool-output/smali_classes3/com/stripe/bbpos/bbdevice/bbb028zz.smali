.class Lcom/stripe/bbpos/bbdevice/bbb028zz;
.super Lcom/stripe/bbpos/bbdevice/bbb005zz;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/bbb005zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V

    return-void
.end method


# virtual methods
.method aaa000(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "DF0D"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    .line 2
    const-string v1, "DF8746"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    .line 3
    const-string v2, "DF875E"

    invoke-static {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    .line 4
    const-string v3, "DF8675"

    invoke-static {p1, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    .line 5
    const-string v4, "DF8924"

    invoke-static {p1, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    const/16 v4, 0xc

    const-string v5, ""

    if-nez v0, :cond_0

    move-object v0, v5

    goto :goto_0

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    :goto_0
    const/16 v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v1, :cond_1

    move-object v1, v5

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-nez v2, :cond_2

    move-object v2, v5

    goto :goto_2

    .line 9
    :cond_2
    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    :goto_2
    if-nez v3, :cond_3

    goto :goto_3

    .line 10
    :cond_3
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    :goto_3
    if-eqz p1, :cond_4

    .line 11
    iget-object v3, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p1, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 15
    :cond_4
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    const-string v2, "01"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa013(Z)V

    .line 20
    :cond_5
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa001(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    const-string v2, "AB"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 22
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa009:[B

    invoke-virtual {p1, p2, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 26
    :cond_6
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 27
    const-string v1, "en"

    :cond_7
    packed-switch v0, :pswitch_data_0

    .line 286
    :pswitch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    goto/16 :goto_5

    .line 287
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa072:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 288
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa071:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 289
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa070:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 290
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa069:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 291
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa068:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 292
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa067:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 293
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa066:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 294
    :pswitch_8
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa065:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 295
    :pswitch_9
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa064:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 296
    :pswitch_a
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa063:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 297
    :pswitch_b
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa062:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 298
    :pswitch_c
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa061:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 299
    :pswitch_d
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa060:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 300
    :pswitch_e
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa059:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 301
    :pswitch_f
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa058:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 302
    :pswitch_10
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa057:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 303
    :pswitch_11
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa056:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 304
    :pswitch_12
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa055:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 305
    :pswitch_13
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa054:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 306
    :pswitch_14
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa053:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 307
    :pswitch_15
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa048:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 308
    :pswitch_16
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa052:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 309
    :pswitch_17
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 310
    :pswitch_18
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 311
    :pswitch_19
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 312
    :pswitch_1a
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 313
    :pswitch_1b
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 314
    :pswitch_1c
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 315
    :pswitch_1d
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 316
    :pswitch_1e
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa048:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 317
    :pswitch_1f
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa047:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 318
    :pswitch_20
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa046:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 319
    :pswitch_21
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa045:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 320
    :pswitch_22
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa051:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 321
    :pswitch_23
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa050:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 322
    :pswitch_24
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa049:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 323
    :pswitch_25
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa044:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 324
    :pswitch_26
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa043:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 325
    :pswitch_27
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa042:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 326
    :pswitch_28
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa041:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 327
    :pswitch_29
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa040:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 328
    :pswitch_2a
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa015:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 329
    :pswitch_2b
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa039:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 330
    :pswitch_2c
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa038:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 331
    :pswitch_2d
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa037:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 332
    :pswitch_2e
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa036:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 333
    :pswitch_2f
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa035:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 334
    :pswitch_30
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa022:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 335
    :pswitch_31
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa026:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 336
    :pswitch_32
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa025:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 337
    :pswitch_33
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa015:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 338
    :pswitch_34
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa028:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 339
    :pswitch_35
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa024:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 340
    :pswitch_36
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa031:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 341
    :pswitch_37
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa020:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 342
    :pswitch_38
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa029:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 343
    :pswitch_39
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa034:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 344
    :pswitch_3a
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa035:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 345
    :pswitch_3b
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa019:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 346
    :pswitch_3c
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa021:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 347
    :pswitch_3d
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa033:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 348
    :pswitch_3e
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa032:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 349
    :pswitch_3f
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa030:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto/16 :goto_4

    .line 350
    :pswitch_40
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa027:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 351
    :pswitch_41
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa018:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 352
    :pswitch_42
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 353
    :pswitch_43
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa026:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 354
    :pswitch_44
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa015:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 355
    :pswitch_45
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa014:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 356
    :pswitch_46
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa013:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 357
    :pswitch_47
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa012:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 358
    :pswitch_48
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 359
    :pswitch_49
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 360
    :pswitch_4a
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 361
    :pswitch_4b
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa005()Ljava/lang/String;

    move-result-object p1

    const-string v0, "010000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 362
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa009:[B

    invoke-virtual {p1, p2, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 365
    :cond_8
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 366
    :pswitch_4c
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 367
    :pswitch_4d
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 368
    :pswitch_4e
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 369
    :pswitch_4f
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 370
    :pswitch_50
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 371
    :pswitch_51
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 372
    :pswitch_52
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    goto :goto_4

    .line 373
    :pswitch_53
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;

    .line 630
    :goto_4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa009:[B

    invoke-virtual {v0, v3, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_9

    .line 633
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p2, p1, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 634
    :goto_5
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa009:[B

    invoke-virtual {p1, p2, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 643
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa009:[B

    invoke-virtual {p1, p2, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_0
        :pswitch_0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
