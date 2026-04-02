.class Lcom/stripe/bbpos/bbdevice/ccc004zz;
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    const-string p2, ""

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb084:[B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    .line 2
    const-string v0, "DF8619"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    .line 3
    const-string v1, "9F2A"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    .line 4
    const-string v2, "9F27"

    invoke-static {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    .line 5
    const-string v3, "DF8611"

    invoke-static {p1, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    .line 8
    :try_start_0
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    invoke-static {v0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 33
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    goto :goto_1

    .line 34
    :pswitch_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->UNSUPPORTED_APP_VERSION:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    goto :goto_0

    .line 35
    :pswitch_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->NON_VAS_CARD_DETECTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    goto :goto_0

    .line 36
    :pswitch_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->INCORRECT_COMMAND_DATA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    goto :goto_0

    .line 37
    :pswitch_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->USER_INTERVENTION_REQUIRED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    goto :goto_0

    .line 38
    :pswitch_4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->VAS_DATA_NOT_ACTIVATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    goto :goto_0

    .line 39
    :pswitch_5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->VAS_DATA_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    goto :goto_0

    .line 40
    :pswitch_6
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;

    .line 65
    :goto_0
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 66
    const-string v4, "mobileToken"

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "vasData"

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v1, "merchantID"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v0, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;Ljava/util/Hashtable;)V

    return-void

    .line 70
    :goto_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 80
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, v0, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

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
