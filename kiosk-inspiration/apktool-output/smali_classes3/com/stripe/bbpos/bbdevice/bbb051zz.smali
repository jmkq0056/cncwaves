.class Lcom/stripe/bbpos/bbdevice/bbb051zz;
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string p2, "DE"

    invoke-static {p1, p2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p2

    .line 2
    const-string v0, "DF59"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    const-string v0, ""

    if-eqz p2, :cond_1a

    if-eqz p1, :cond_1a

    .line 4
    iget-object v1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 10
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p1

    .line 11
    iget-object p2, p2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v1, 0x10

    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_e

    if-eq p2, v1, :cond_1

    .line 65
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_1
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa025:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_d

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa027:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_2

    goto/16 :goto_0

    .line 68
    :cond_2
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa099:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 69
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v1, "The connected reader or the loaded firmware version does not support this command startGetPhoneNumber"

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_3
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa075:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 71
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v1, "The connected reader or the loaded firmware version does not support this command sendPinEntryResult"

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 72
    :cond_4
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa069:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 73
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v1, "The connected reader or the loaded firmware version does not support this command selectApplication"

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 74
    :cond_5
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc019:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 75
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v1, "The connected reader or the loaded firmware version does not support this command  selectAccountType"

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 76
    :cond_6
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa063:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 77
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v1, "The connected reader or the loaded firmware version does not support this command setAmount"

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 78
    :cond_7
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa059:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 79
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Z)V

    return-void

    .line 80
    :cond_8
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa033:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 81
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v1, "The connected reader or the loaded firmware version does not support this command startPinEntry"

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 82
    :cond_9
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa087:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 83
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005(Z)V

    return-void

    .line 84
    :cond_a
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb073:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 85
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa007(Z)V

    return-void

    .line 86
    :cond_b
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb090:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 87
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;->CANCELLED_BY_COMMAND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;)V

    return-void

    .line 89
    :cond_c
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 90
    :cond_d
    :goto_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005(Z)V

    return-void

    .line 91
    :cond_e
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa025:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-nez p2, :cond_19

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa027:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_f

    goto/16 :goto_2

    .line 93
    :cond_f
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa075:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 94
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;Ljava/util/Hashtable;)V

    return-void

    .line 95
    :cond_10
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa069:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_1

    .line 96
    :cond_11
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->ccc019:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_12

    goto :goto_1

    .line 97
    :cond_12
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa063:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_13

    :goto_1
    return-void

    .line 98
    :cond_13
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa059:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 99
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009(Z)V

    return-void

    .line 100
    :cond_14
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa033:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_15

    .line 101
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;Ljava/util/Hashtable;)V

    return-void

    .line 102
    :cond_15
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa087:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_16

    .line 103
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005(Z)V

    return-void

    .line 104
    :cond_16
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb073:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p2

    if-eqz p2, :cond_17

    .line 105
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa007(Z)V

    return-void

    .line 106
    :cond_17
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb090:[B

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 107
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;->CANCELLED_BY_COMMAND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;

    invoke-virtual {p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;)V

    return-void

    .line 109
    :cond_18
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_19
    :goto_2
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 163
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 164
    :cond_1a
    :goto_3
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void
.end method
