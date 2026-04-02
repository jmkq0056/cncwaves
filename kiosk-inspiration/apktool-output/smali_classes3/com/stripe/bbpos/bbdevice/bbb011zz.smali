.class Lcom/stripe/bbpos/bbdevice/bbb011zz;
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
    const-string v0, "DF8769"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    const/4 v1, 0x1

    const-string v2, "Unknown BT disconnection (3150)"

    const-string v3, "Unknown BT disconnection (3050)"

    const/4 v4, 0x0

    if-eqz p1, :cond_b

    .line 3
    iget-object v5, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 4
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa004(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v0, "Received onDeviceReset callback (3056)"

    invoke-virtual {p1, v0, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v0, :cond_1

    .line 9
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v0, "Received onDeviceReset callback (3156)"

    invoke-virtual {p1, v0, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    .line 11
    :cond_1
    :goto_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->APP_RESET_DEVICE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    goto/16 :goto_3

    :cond_2
    if-ne p1, v1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v0, :cond_3

    .line 14
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v0, "Received onDeviceReset callback (3057)"

    invoke-virtual {p1, v0, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    goto :goto_1

    .line 15
    :cond_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v0, :cond_4

    .line 16
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v0, "Received onDeviceReset callback (3157)"

    invoke-virtual {p1, v0, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    .line 18
    :cond_4
    :goto_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->FIRMWARE_SELF_TEST:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    goto/16 :goto_3

    :cond_5
    const/4 v5, 0x2

    if-ne p1, v5, :cond_8

    .line 20
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v0, :cond_6

    .line 21
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v0, "Received onDeviceReset callback (3058)"

    invoke-virtual {p1, v0, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    goto :goto_2

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v0, :cond_7

    .line 23
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    const-string v0, "Received onDeviceReset callback (3158)"

    invoke-virtual {p1, v0, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    .line 25
    :cond_7
    :goto_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->RECOVERY_ATTEMPT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    goto :goto_3

    :cond_8
    const/4 v5, 0x6

    if-ne p1, v5, :cond_9

    .line 27
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->WATCHDOG_TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;

    goto :goto_3

    .line 29
    :cond_9
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v5, :cond_a

    .line 30
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {p1, v3, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    goto :goto_3

    .line 31
    :cond_a
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v3, :cond_d

    .line 32
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {p1, v2, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    goto :goto_3

    .line 36
    :cond_b
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v5, :cond_c

    .line 37
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {p1, v3, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    goto :goto_3

    .line 38
    :cond_c
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object p1

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne p1, v3, :cond_d

    .line 39
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {p1, v2, v4}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(Ljava/lang/String;Z)V

    .line 42
    :cond_d
    :goto_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb068:[B

    invoke-virtual {p1, v2, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_e

    .line 44
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(ZLcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;)V

    :cond_e
    return-void
.end method
