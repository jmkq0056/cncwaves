.class Lcom/stripe/bbpos/bbdevice/bbb072zz;
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
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-string v2, "DE"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    .line 2
    const-string v3, "DF822D"

    invoke-static {v1, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    .line 3
    const-string v4, "DF75"

    invoke-static {v1, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v4

    .line 4
    const-string v5, "DF6C"

    invoke-static {v1, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v8

    .line 5
    const-string v5, "DF876A"

    invoke-static {v1, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc067zz;)Ljava/lang/String;

    move-result-object v9

    .line 6
    const-string v5, "DF876B"

    invoke-static {v1, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    if-eqz v2, :cond_6

    .line 10
    :try_start_0
    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v5, 0x10

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v6, :cond_0

    .line 20
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "Error when encrypt / decrypt op key. (error code - 9006)"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v6, 0x0

    :cond_1
    move v11, v6

    if-nez v11, :cond_3

    if-eqz v3, :cond_2

    .line 25
    iget-object v10, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v12, ""

    const-string v13, ""

    iget-object v1, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-virtual/range {v10 .. v16}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void

    .line 27
    :cond_2
    iget-object v10, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const-string v12, ""

    const-string v13, ""

    const-string v16, ""

    const/4 v14, 0x0

    const/4 v15, -0x1

    invoke-virtual/range {v10 .. v16}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_3
    const-string v2, "Error when encrypt / decrypt op key. (error code - 9007)"

    if-eqz v4, :cond_5

    if-nez v1, :cond_4

    goto :goto_0

    .line 35
    :cond_4
    :try_start_1
    iget-object v6, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v3, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const-string v12, ""

    move v7, v11

    move v11, v1

    invoke-virtual/range {v6 .. v12}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 37
    :catch_0
    :try_start_2
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v3, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v3, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 49
    :catch_1
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "Error when encrypt / decrypt op key. (error code - 9008)"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 52
    :cond_6
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "Error when encrypt / decrypt op key. (error code - 9009)"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void
.end method
