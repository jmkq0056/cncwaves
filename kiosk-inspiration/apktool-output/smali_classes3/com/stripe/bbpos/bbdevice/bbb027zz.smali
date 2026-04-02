.class Lcom/stripe/bbpos/bbdevice/bbb027zz;
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
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    const/16 v0, 0xc

    .line 1
    :try_start_0
    const-string v1, "DF837D"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa015:[B

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 7
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/4 v5, 0x4

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 31
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    goto/16 :goto_2

    .line 32
    :pswitch_0
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->PROCESSING_ERROR_OR_CARD_NOT_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    goto :goto_0

    .line 33
    :pswitch_1
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->CARD_READ_SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    goto :goto_0

    .line 34
    :pswitch_2
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->PROCESSING:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    goto :goto_0

    .line 35
    :pswitch_3
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->READY_TO_READ:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    goto :goto_0

    .line 36
    :pswitch_4
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->IDLE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    goto :goto_0

    .line 37
    :pswitch_5
    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;->NOT_READY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;

    goto :goto_0

    :pswitch_6
    move-object v1, v4

    :goto_0
    if-eqz p1, :cond_4

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    .line 77
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 78
    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 79
    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 80
    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 81
    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa015:[B

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 83
    :cond_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;->ALERT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;

    goto :goto_1

    .line 84
    :cond_3
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;

    :goto_1
    move-object v4, p1

    .line 101
    :cond_4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 102
    invoke-virtual {p1, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 103
    invoke-virtual {p1, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 104
    invoke-virtual {p1, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 105
    invoke-virtual {p1, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 106
    :cond_5
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa015:[B

    invoke-virtual {p1, v3, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    :cond_6
    if-nez p2, :cond_9

    if-eqz v1, :cond_7

    .line 112
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;)V

    :cond_7
    if-eqz v4, :cond_9

    .line 115
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;)V

    return-void

    .line 116
    :goto_2
    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, p2, :cond_9

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 117
    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 118
    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 119
    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    .line 120
    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 121
    :cond_8
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa015:[B

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    return-void

    .line 167
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa015:[B

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
