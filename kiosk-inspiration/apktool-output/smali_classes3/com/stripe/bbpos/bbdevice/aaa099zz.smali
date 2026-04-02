.class Lcom/stripe/bbpos/bbdevice/aaa099zz;
.super Lcom/stripe/bbpos/bbdevice/aaa012zz;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa012zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V

    return-void
.end method


# virtual methods
.method aaa000(Ljava/util/Hashtable;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    .line 5
    const-string v2, "appIndex"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/16 v10, 0x8

    const-string v12, ""

    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-virtual {v9, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 15
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v10, :cond_1

    .line 16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v10

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 19
    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v10, :cond_2

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 23
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DF837C"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v12

    goto :goto_2

    .line 27
    :cond_4
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-virtual {v9, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v12

    const/4 v2, 0x1

    .line 30
    :goto_2
    const-string v13, "aid"

    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 31
    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 32
    invoke-virtual {v4, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 33
    :cond_5
    const-string v4, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF"

    .line 36
    :cond_6
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 38
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-virtual {v9, v13, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    :cond_7
    if-nez v2, :cond_8

    .line 41
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "9F06"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_8
    move v14, v2

    move-object v15, v3

    .line 45
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "appVersion"

    const-string v3, "9F09"

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v3, :cond_9

    if-nez v14, :cond_a

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    .line 50
    :cond_9
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_a

    .line 52
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "appVersion"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 55
    :cond_a
    :goto_3
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "terminalFloorLimit"

    move-object v1, v3

    const-string v3, "9F1B"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v11, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_b

    if-nez v14, :cond_c

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_4

    .line 60
    :cond_b
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_c

    .line 62
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "terminalFloorLimit"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 65
    :cond_c
    :goto_4
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "contactTACDefault"

    const-string v3, "DF8120"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_d

    if-nez v14, :cond_e

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_5

    .line 70
    :cond_d
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_e

    .line 72
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "contactTACDefault"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 75
    :cond_e
    :goto_5
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "contactTACDenial"

    const-string v3, "DF8121"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_f

    if-nez v14, :cond_10

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_6

    .line 80
    :cond_f
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_10

    .line 82
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "contactTACDenial"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 85
    :cond_10
    :goto_6
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "contactTACOnline"

    const-string v3, "DF8122"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_11

    if-nez v14, :cond_12

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_7

    .line 90
    :cond_11
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_12

    .line 92
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "contactTACOnline"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 95
    :cond_12
    :goto_7
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "defaultTDOL"

    const-string v3, "97"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_13

    if-nez v14, :cond_14

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_8

    .line 100
    :cond_13
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_14

    .line 102
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "defaultTDOL"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 105
    :cond_14
    :goto_8
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "defaultDDOL"

    const-string v3, "9F49"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 106
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_15

    if-nez v14, :cond_16

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_9

    .line 110
    :cond_15
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_16

    .line 112
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "defaultDDOL"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 115
    :cond_16
    :goto_9
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "contactlessTransactionLimit"

    const-string v3, "DF24"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_17

    if-nez v14, :cond_18

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_a

    .line 120
    :cond_17
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_18

    .line 122
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "contactlessTransactionLimit"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 125
    :cond_18
    :goto_a
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "contactlessCVMRequiredLimit"

    const-string v3, "DF26"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 126
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_19

    if-nez v14, :cond_1a

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_b

    .line 130
    :cond_19
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_1a

    .line 132
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "contactlessCVMRequiredLimit"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 135
    :cond_1a
    :goto_b
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "contactlessFloorLimit"

    const-string v3, "DF23"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_1b

    if-nez v14, :cond_1c

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_c

    .line 140
    :cond_1b
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_1c

    .line 142
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "contactlessFloorLimit"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 145
    :cond_1c
    :goto_c
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "contactlessTACDefault"

    const-string v3, "DF20"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_1d

    if-nez v14, :cond_1e

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_d

    .line 150
    :cond_1d
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_1e

    .line 152
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "contactlessTACDefault"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 155
    :cond_1e
    :goto_d
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "contactlessTACDenial"

    const-string v3, "DF21"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 156
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_1f

    if-nez v14, :cond_20

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_e

    .line 160
    :cond_1f
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_20

    .line 162
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "contactlessTACDenial"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 165
    :cond_20
    :goto_e
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "contactlessTACOnline"

    const-string v3, "DF22"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 166
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_21

    if-nez v14, :cond_22

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_f

    .line 170
    :cond_21
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_22

    .line 172
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "contactlessTACOnline"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 175
    :cond_22
    :goto_f
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "contactlessTransactionLimitODCV"

    const-string v3, "DF25"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 176
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_23

    if-nez v14, :cond_24

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_10

    .line 180
    :cond_23
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_24

    .line 182
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "contactlessTransactionLimitODCV"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 185
    :cond_24
    :goto_10
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "terminalCapabilities"

    const-string v3, "9F33"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    if-ne v1, v11, :cond_25

    if-nez v14, :cond_26

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_11

    .line 190
    :cond_25
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v1, v2, :cond_26

    .line 192
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v2, "terminalCapabilities"

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 195
    :cond_26
    :goto_11
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const-string v2, "terminalType"

    const-string v3, "9F35"

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v3

    if-ne v3, v11, :cond_27

    if-nez v14, :cond_28

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_12

    .line 200
    :cond_27
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v2, v3, :cond_28

    .line 202
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    const-string v3, "terminalType"

    invoke-virtual {v9, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 205
    :cond_28
    :goto_12
    const-string v2, "contactlessKernelID"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 206
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 207
    invoke-static {v3, v10}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 208
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :cond_29
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    const-string v2, "contactlessKernelID"

    move-object v4, v3

    const-string v3, "9F2A"

    move-object v5, v4

    const/4 v4, 0x1

    move-object v10, v5

    const/4 v5, 0x1

    invoke-static/range {v1 .. v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;Ljava/lang/String;Ljava/lang/String;ZZILcom/stripe/bbpos/bbdevice/aaa003zz;Z)Lcom/stripe/bbpos/bbdevice/ccc017zz;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v3

    if-ne v3, v11, :cond_2a

    if-nez v14, :cond_2b

    .line 213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa001()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_13

    .line 215
    :cond_2a
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc017zz;->aaa000()Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;->aaa001:Lcom/stripe/bbpos/bbdevice/ccc017zz$aaa000zz;

    if-ne v2, v3, :cond_2b

    .line 217
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-virtual {v9, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x1

    .line 221
    :cond_2b
    :goto_13
    const-string v2, "kernelConfigData"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 222
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 223
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 224
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2c

    .line 226
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-virtual {v9, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_14
    const/4 v14, 0x1

    goto :goto_15

    :cond_2c
    if-nez v14, :cond_2f

    .line 229
    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 230
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v5, v3, :cond_2d

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EB"

    invoke-static {v3, v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_15

    .line 235
    :cond_2d
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-virtual {v9, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 239
    :cond_2e
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-virtual {v9, v13, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 245
    :cond_2f
    :goto_15
    const-string v2, "dcpos"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 246
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 247
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 248
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_30

    .line 250
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    const/4 v11, 0x1

    goto :goto_18

    :cond_30
    if-nez v14, :cond_33

    .line 253
    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 254
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v4, v3, :cond_31

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "EC"

    invoke-static {v3, v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_17

    .line 259
    :cond_31
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-virtual {v9, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 263
    :cond_32
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    invoke-virtual {v9, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_33
    :goto_17
    move v11, v14

    :goto_18
    if-eqz v11, :cond_34

    .line 270
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v1, v9}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa017(Ljava/util/Hashtable;)V

    return-void

    .line 274
    :cond_34
    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 275
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v12}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 279
    :cond_35
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/aaa012zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v1, v15}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa015(Ljava/lang/String;)V

    return-void
.end method
