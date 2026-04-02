.class Lcom/stripe/bbpos/bbdevice/bbb088zz;
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "DF51"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    .line 2
    const-string v1, "CE"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "DF05"

    invoke-static {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string v3, "CA"

    invoke-static {p1, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v3

    .line 5
    const-string v4, "DF5C"

    invoke-static {p1, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0xc

    if-nez v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa036:[B

    invoke-virtual {p1, p2, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 45
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    goto :goto_1

    .line 46
    :pswitch_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa036:[B

    invoke-virtual {p1, p2, v5}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    .line 48
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 49
    :pswitch_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 50
    :pswitch_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 51
    :pswitch_4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 52
    :pswitch_5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 53
    :pswitch_6
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 54
    :pswitch_7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 55
    :pswitch_8
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    .line 87
    :goto_0
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 88
    const-string v7, "epb"

    invoke-virtual {v6, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "ksn"

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "randomNumber"

    invoke-virtual {v6, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "encWorkingKey"

    invoke-virtual {v6, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa036:[B

    invoke-virtual {p1, v1, v5}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_1

    .line 95
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v0, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;Ljava/util/Hashtable;)V

    :cond_1
    return-void

    .line 96
    :goto_1
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa036:[B

    invoke-virtual {p1, p2, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 111
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa036:[B

    invoke-virtual {p1, p2, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method aaa001(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "DF51"

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v0

    .line 2
    const-string v1, "CE"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v1

    .line 3
    const-string v2, "DF05"

    invoke-static {p1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v2

    .line 4
    const-string v3, "CA"

    invoke-static {p1, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v3

    .line 5
    const-string v4, "DF5C"

    invoke-static {p1, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object p1

    const/16 v4, 0xc

    if-nez v0, :cond_0

    .line 8
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb061:[B

    invoke-virtual {p1, p2, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 13
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    .line 45
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    goto :goto_1

    .line 46
    :pswitch_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb061:[B

    invoke-virtual {p1, p2, v5}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    .line 48
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 49
    :pswitch_2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 50
    :pswitch_3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 51
    :pswitch_4
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 52
    :pswitch_5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 53
    :pswitch_6
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 54
    :pswitch_7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 55
    :pswitch_8
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    .line 87
    :goto_0
    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    .line 88
    const-string v7, "epb"

    invoke-virtual {v6, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "ksn"

    invoke-virtual {v6, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "randomNumber"

    invoke-virtual {v6, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v1, "encWorkingKey"

    invoke-virtual {v6, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb061:[B

    invoke-virtual {p1, v1, v5}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_1

    .line 95
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p1, v0, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;Ljava/util/Hashtable;)V

    :cond_1
    return-void

    .line 96
    :goto_1
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb061:[B

    invoke-virtual {p1, p2, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 111
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->bbb061:[B

    invoke-virtual {p1, p2, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method aaa002(Ljava/util/List;Z)V
    .locals 5
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
    const-string v1, "DF51"

    invoke-static {p1, v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    const/16 v1, 0xc

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa038:[B

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 9
    :cond_0
    :try_start_0
    iget-object p1, p1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    .line 38
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    .line 86
    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa038:[B

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 39
    :cond_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 40
    :cond_2
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 41
    :cond_3
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 42
    :cond_4
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_0

    .line 43
    :cond_5
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    .line 72
    :goto_0
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 73
    const-string v3, "epb"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v3, "ksn"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v3, "randomNumber"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v3, "encWorkingKey"

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa038:[B

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_7

    .line 80
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-boolean p2, p2, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa013:Z

    if-eqz p2, :cond_6

    goto :goto_1

    .line 83
    :cond_6
    iget-object p2, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {p2, p1, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;Ljava/util/Hashtable;)V

    .line 85
    :goto_1
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iput-boolean v4, p1, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa013:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    return-void

    .line 106
    :catch_0
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object p2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa038:[B

    invoke-virtual {p1, p2, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void
.end method
