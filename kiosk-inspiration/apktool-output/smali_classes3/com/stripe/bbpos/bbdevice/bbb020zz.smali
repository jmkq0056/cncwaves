.class Lcom/stripe/bbpos/bbdevice/bbb020zz;
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

    const-string v0, ""

    .line 1
    const-string v1, "DF8231"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    .line 2
    const-string v2, "DF8233"

    invoke-static {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    .line 3
    const-string v3, "DF8232"

    invoke-static {p1, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 6
    :try_start_0
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 52
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    goto/16 :goto_2

    .line 53
    :pswitch_0
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa013:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 54
    :pswitch_1
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa012:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 55
    :pswitch_2
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 56
    :pswitch_3
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 57
    :pswitch_4
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 58
    :pswitch_5
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 59
    :pswitch_6
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 60
    :pswitch_7
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 61
    :pswitch_8
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 62
    :pswitch_9
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 63
    :pswitch_a
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 64
    :pswitch_b
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 65
    :pswitch_c
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    goto :goto_0

    .line 66
    :pswitch_d
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;

    .line 112
    :goto_0
    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 113
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;

    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 134
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    .line 164
    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 135
    :cond_0
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;

    goto :goto_1

    .line 136
    :cond_1
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;

    goto :goto_1

    .line 137
    :cond_2
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;

    goto :goto_1

    .line 138
    :cond_3
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;

    goto :goto_1

    .line 139
    :cond_4
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;

    goto :goto_1

    .line 140
    :cond_5
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;

    .line 161
    :goto_1
    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb058:[B

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_6

    .line 163
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p2, v1, v2, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;Ljava/lang/String;)V

    return-void

    .line 165
    :goto_2
    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 199
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
