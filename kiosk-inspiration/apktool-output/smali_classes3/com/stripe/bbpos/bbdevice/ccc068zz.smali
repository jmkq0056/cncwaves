.class final Lcom/stripe/bbpos/bbdevice/ccc068zz;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static aaa000([B)I
    .locals 5

    const/4 v0, 0x0

    .line 8
    aget-byte v1, p0, v0

    and-int/lit8 v2, v1, -0x80

    const/16 v3, -0x80

    if-ne v2, v3, :cond_1

    and-int/lit8 v1, v1, 0x7f

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, 0x1

    if-ge v3, v4, :cond_0

    shl-int/lit8 v0, v0, 0x8

    .line 13
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    and-int/lit16 p0, v1, 0xff

    return p0
.end method

.method static aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 14
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v1, v0, v1

    invoke-static {p1, v0}, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000(Ljava/lang/String;[B)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object p1

    .line 15
    invoke-static {p0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 17
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static aaa000(Ljava/util/List;)Ljava/util/Hashtable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    .line 4
    iget-object v3, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static aaa000(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;"
        }
    .end annotation

    .line 5
    :try_start_0
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001([B)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 7
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 255
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 256
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    .line 257
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 259
    :cond_0
    iget-boolean v2, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa003:Z

    if-eqz v2, :cond_1

    .line 260
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa004:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static aaa001(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    .line 5
    iget-object v4, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    .line 6
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "99"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 10
    const-string v3, "epb"

    goto/16 :goto_5

    .line 11
    :cond_0
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "C0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    const-string v3, "onlineMessageKsn"

    goto/16 :goto_5

    .line 13
    :cond_1
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "C1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 14
    const-string v3, "onlinePinKsn"

    goto/16 :goto_5

    .line 15
    :cond_2
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "C2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 16
    const-string v3, "encOnlineMessage"

    goto/16 :goto_5

    .line 17
    :cond_3
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "C3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "C6"

    const-string v7, "C5"

    if-eqz v5, :cond_5

    .line 18
    invoke-static {p0, v7}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 19
    const-string v3, "batchKsn"

    goto/16 :goto_5

    .line 20
    :cond_4
    invoke-static {p0, v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 21
    const-string v3, "reversalKsn"

    goto/16 :goto_5

    .line 25
    :cond_5
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v8, "C4"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2b

    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v8, "DF03"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto/16 :goto_4

    .line 30
    :cond_6
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 31
    const-string v3, "encBatchMessage"

    goto/16 :goto_5

    .line 32
    :cond_7
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 33
    const-string v3, "encReversalMessage"

    goto/16 :goto_5

    .line 34
    :cond_8
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "C7"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 35
    const-string v3, "track2EqKsn"

    goto/16 :goto_5

    .line 36
    :cond_9
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "C8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 37
    const-string v3, "encTrack2Eq"

    goto/16 :goto_5

    .line 38
    :cond_a
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "C9"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 39
    const-string v3, "encPAN"

    goto/16 :goto_5

    .line 40
    :cond_b
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "CA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 42
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v5, "randomNumber"

    invoke-virtual {v0, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "encTrack2EqRandomNumber"

    goto/16 :goto_5

    .line 43
    :cond_c
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "CB"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "DF41"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto/16 :goto_3

    .line 45
    :cond_d
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "CC"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "serviceCode"

    if-eqz v5, :cond_e

    const/4 v3, 0x3

    .line 47
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v3, v6

    goto/16 :goto_5

    .line 48
    :cond_e
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "CD"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_29

    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "DF0B"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    goto/16 :goto_2

    .line 50
    :cond_f
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "CE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 51
    const-string v3, "macKsn"

    goto/16 :goto_5

    .line 52
    :cond_10
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "DF8203"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 53
    const-string v3, "encWorkingKey"

    goto/16 :goto_5

    .line 54
    :cond_11
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "DF8204"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 55
    const-string v3, "accountSelected"

    goto/16 :goto_5

    .line 56
    :cond_12
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "DF8321"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 57
    const-string v3, "epbRandomNumber"

    goto/16 :goto_5

    .line 58
    :cond_13
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "DF8315"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 59
    const-string v3, "data"

    goto/16 :goto_5

    .line 60
    :cond_14
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "DF826E"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 61
    const-string v3, "serialNumber"

    goto/16 :goto_5

    .line 62
    :cond_15
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "DF834F"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 63
    const-string v3, "bID"

    goto/16 :goto_5

    .line 64
    :cond_16
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "9F1F"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 65
    const-string v3, "track1DiscretionaryData"

    goto/16 :goto_5

    .line 66
    :cond_17
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "57"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 67
    const-string v3, "track2Equivalent"

    goto/16 :goto_5

    .line 68
    :cond_18
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "9F20"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 69
    const-string v3, "track2DiscretionaryData"

    goto/16 :goto_5

    .line 70
    :cond_19
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v7, "5F30"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto/16 :goto_1

    .line 72
    :cond_1a
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "5F24"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 73
    const-string v3, "applicationExpirationDate"

    goto/16 :goto_5

    .line 74
    :cond_1b
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "5F20"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 75
    const-string v3, "cardholderName"

    goto/16 :goto_5

    .line 76
    :cond_1c
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "9F0B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 77
    const-string v3, "carholderNameExtended"

    goto/16 :goto_5

    .line 78
    :cond_1d
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "5A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 79
    const-string v3, "PAN"

    goto/16 :goto_5

    .line 80
    :cond_1e
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "5F34"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 81
    const-string v3, "PANSequenceNumber"

    goto/16 :goto_5

    .line 82
    :cond_1f
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "42"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 83
    const-string v3, "IIN"

    goto/16 :goto_5

    .line 84
    :cond_20
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "56"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 85
    const-string v3, "track1MasterCard"

    goto/16 :goto_5

    .line 86
    :cond_21
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "9F6B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 87
    const-string v3, "track2Data"

    goto/16 :goto_5

    .line 88
    :cond_22
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "DF812A"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 89
    const-string v3, "DDCardTrack1"

    goto/16 :goto_5

    .line 90
    :cond_23
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "DF812B"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 91
    const-string v3, "DDCardTrack2"

    goto :goto_5

    .line 92
    :cond_24
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "5F21"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 93
    const-string v3, "track1"

    goto :goto_5

    .line 94
    :cond_25
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "5F22"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 95
    const-string v3, "track2"

    goto :goto_5

    .line 96
    :cond_26
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "5F23"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 97
    const-string v3, "track3"

    goto :goto_5

    .line 98
    :cond_27
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v6, "58"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 99
    const-string v3, "track3EquivalentData"

    goto :goto_5

    .line 100
    :cond_28
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    const-string v5, "59"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 101
    const-string v3, "cardExpirationDate"

    goto :goto_5

    .line 102
    :cond_29
    :goto_2
    const-string v3, "mac"

    goto :goto_5

    .line 103
    :cond_2a
    :goto_3
    const-string v3, "finalMessage"

    goto :goto_5

    .line 105
    :cond_2b
    :goto_4
    const-string v3, "f"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    const-string v3, "F"

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_6

    :cond_2c
    const-string v3, "maskedPAN"

    .line 183
    :goto_5
    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 184
    :cond_2e
    :goto_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_2f
    return-object v0
.end method

.method private static aaa001([B)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 188
    :goto_0
    :try_start_0
    array-length v3, p0

    if-ge v2, v3, :cond_9

    .line 195
    aget-byte v3, p0, v2

    and-int/lit8 v4, v3, 0x20

    const/16 v5, 0x20

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    and-int/lit8 v5, v3, 0x1f

    const/16 v7, 0x1f

    const/16 v8, -0x80

    if-ne v5, v7, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 203
    :goto_2
    aget-byte v5, p0, v3

    and-int/2addr v5, v8

    if-ne v5, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    sub-int/2addr v3, v2

    add-int/2addr v3, v6

    .line 206
    new-array v5, v3, [B

    .line 207
    invoke-static {p0, v2, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    goto :goto_3

    .line 211
    :cond_2
    new-array v5, v6, [B

    aput-byte v3, v5, v1

    add-int/lit8 v2, v2, 0x1

    if-nez v3, :cond_3

    goto :goto_6

    .line 219
    :cond_3
    :goto_3
    aget-byte v3, p0, v2

    and-int/lit8 v7, v3, -0x80

    if-ne v7, v8, :cond_4

    and-int/lit8 v3, v3, 0x7f

    add-int/2addr v3, v6

    .line 221
    new-array v6, v3, [B

    .line 222
    invoke-static {p0, v2, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    goto :goto_4

    .line 226
    :cond_4
    new-array v6, v6, [B

    aput-byte v3, v6, v1

    add-int/lit8 v2, v2, 0x1

    .line 230
    :goto_4
    aget-byte v3, v6, v1

    if-ne v3, v8, :cond_5

    goto :goto_7

    .line 233
    :cond_5
    array-length v3, v6

    const/4 v7, 0x4

    if-le v3, v7, :cond_6

    goto :goto_7

    .line 236
    :cond_6
    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000([B)I

    move-result v3

    const v6, 0xffffff

    if-le v3, v6, :cond_7

    goto :goto_7

    .line 240
    :cond_7
    new-array v6, v3, [B

    .line 241
    invoke-static {p0, v2, v6, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    if-eqz v4, :cond_8

    .line 246
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001([B)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000(Ljava/lang/String;[BLjava/util/List;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    goto :goto_5

    .line 248
    :cond_8
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000(Ljava/lang/String;[B)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    .line 251
    :goto_5
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_9
    :goto_6
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_7
    return-object v0
.end method

.method static aaa002(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;)Ljava/util/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method static aaa002([B)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;"
        }
    .end annotation

    .line 3
    :try_start_0
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001([B)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 5
    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
