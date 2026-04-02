.class Lcom/stripe/bbpos/bbdevice/bbb034zz;
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

    .line 1
    const-string v0, "DF862C"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    .line 2
    const-string v1, "DF8205"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa074:[B

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa072:[B

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    :goto_0
    if-nez p2, :cond_9

    .line 10
    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->PAN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/16 v3, 0x10

    if-eqz v0, :cond_3

    .line 13
    :try_start_0
    iget-object v4, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    goto :goto_1

    :cond_1
    if-ne v4, v1, :cond_2

    .line 17
    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->EXPIRY_DATE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;

    goto :goto_1

    :cond_2
    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 19
    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->CVV:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 25
    :catch_0
    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->PAN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;

    .line 28
    :cond_3
    :goto_1
    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->PHONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;

    if-eqz p1, :cond_7

    .line 31
    :try_start_1
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    if-ne p1, v2, :cond_5

    .line 35
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->KEYPAD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;

    :goto_2
    move-object v4, p1

    goto :goto_3

    :cond_5
    if-ne p1, v1, :cond_6

    .line 37
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->SMARTPOS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;

    goto :goto_2

    .line 39
    :cond_6
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->KEYPAD:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 43
    :catch_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->SMARTPOS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;

    goto :goto_4

    :cond_7
    :goto_3
    move-object p1, v4

    :goto_4
    if-eqz v0, :cond_8

    .line 47
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;)V

    goto :goto_5

    .line 49
    :cond_8
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p2, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;)V

    :cond_9
    :goto_5
    return-void
.end method
