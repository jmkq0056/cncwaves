.class Lcom/stripe/bbpos/bbdevice/ccc009zz;
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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "DF0E"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    const/16 v0, 0xc

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 35
    :pswitch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    goto :goto_1

    .line 36
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->QR_CODE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 37
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 38
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 39
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 40
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 41
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 42
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 43
    :pswitch_8
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 44
    :pswitch_9
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb003:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_0

    .line 76
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;)V

    :cond_0
    return-void

    .line 77
    :goto_1
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb003:[B

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 85
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb003:[B

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb003:[B

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method aaa001(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string p2, "DF35"

    invoke-static {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p2

    .line 2
    const-string v0, "DF0E"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    .line 3
    const-string v1, "DF822D"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    .line 4
    const-string v2, "DF50"

    invoke-static {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    iget-object v0, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    const/16 v2, 0x10

    const-string v3, ""

    if-eqz p2, :cond_3

    .line 13
    :try_start_0
    iget-object p1, p2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    .line 23
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 26
    :cond_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 28
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :cond_3
    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    .line 32
    iget-object p2, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 34
    :try_start_1
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 43
    :catch_1
    :cond_4
    :try_start_2
    iget-object p1, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 74
    :pswitch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    goto :goto_1

    .line 75
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->QR_CODE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 76
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 77
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 78
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 79
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 80
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->TAP:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 81
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE_OR_INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 82
    :pswitch_8
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->INSERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    goto :goto_0

    .line 83
    :pswitch_9
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->SWIPE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;

    .line 113
    :goto_0
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;)V

    goto :goto_2

    .line 114
    :goto_1
    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    .line 119
    :catch_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
