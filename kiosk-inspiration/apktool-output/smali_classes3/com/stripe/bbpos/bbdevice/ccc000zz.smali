.class Lcom/stripe/bbpos/bbdevice/ccc000zz;
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
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "ErrorCode: "

    .line 1
    const-string v1, "DF2A"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    .line 2
    const-string v2, "DF825D"

    invoke-static {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    .line 3
    const-string v3, "DF875E"

    invoke-static {p1, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    .line 4
    const-string v4, "8A"

    invoke-static {p1, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v4, "01"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa013(Z)V

    :cond_0
    const/16 v3, 0xc

    if-eqz v1, :cond_8

    .line 13
    :try_start_0
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v5, 0x14

    if-eq v1, v5, :cond_3

    const/16 v5, 0x17

    if-eq v1, v5, :cond_2

    const/16 v5, 0x18

    if-eq v1, v5, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 71
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    goto :goto_0

    .line 72
    :pswitch_0
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->TERMINATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 73
    :pswitch_1
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->APPLICATION_BLOCKED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 74
    :pswitch_2
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CONDITION_NOT_SATISFIED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 75
    :pswitch_3
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->INVALID_ICC_DATA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 76
    :pswitch_4
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->NO_EMV_APPS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 77
    :pswitch_5
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->MISSING_MANDATORY_DATA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 78
    :pswitch_6
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 79
    :pswitch_7
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->DEVICE_ERROR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 80
    :pswitch_8
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CARD_BLOCKED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 81
    :pswitch_9
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->NOT_ICC:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 82
    :pswitch_a
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CAPK_FAIL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 83
    :pswitch_b
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CANCELED_OR_TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 84
    :pswitch_c
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->DECLINED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 85
    :pswitch_d
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->TERMINATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 86
    :pswitch_e
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->APPROVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 71
    :goto_0
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa080:[B

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 138
    :cond_1
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 139
    :cond_2
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->CANCELED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    goto :goto_1

    .line 140
    :cond_3
    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ICC_CARD_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;

    .line 153
    :goto_1
    iget-object v6, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v7, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa080:[B

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v6, 0xe

    if-ne v1, v6, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, ""

    if-eqz v2, :cond_5

    .line 157
    :try_start_1
    iget-object v6, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v6, :cond_5

    .line 160
    :try_start_2
    iget-object v6, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v6, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    if-eqz v8, :cond_5

    .line 165
    :try_start_3
    iget-object v4, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa031:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v6, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    :cond_5
    if-nez p2, :cond_7

    if-eqz p1, :cond_6

    .line 170
    iget-object p2, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 171
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {p2, v5, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;Ljava/lang/String;)V

    goto :goto_2

    .line 173
    :cond_6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v5}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 177
    :catch_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa080:[B

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    :cond_7
    :goto_2
    return-void

    .line 180
    :cond_8
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa080:[B

    invoke-virtual {p1, p2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method
