.class Lcom/stripe/bbpos/bbdevice/bbb054zz;
.super Lcom/stripe/bbpos/bbdevice/bbb005zz;
.source "SourceFile"


# instance fields
.field final aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;Lcom/stripe/bbpos/bbdevice/aaa009zz;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/bbb005zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa011zz;)V

    .line 2
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/bbb054zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    return-void
.end method


# virtual methods
.method aaa000(Ljava/util/List;Z)V
    .locals 55
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

    const-string v2, "Received unknown tag (DF50) value "

    .line 1
    const-string v3, "DF35"

    invoke-static {v1, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    .line 2
    const-string v4, "DF50"

    invoke-static {v1, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v4

    .line 3
    const-string v5, "C4"

    invoke-static {v1, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5

    .line 4
    const-string v6, "DF03"

    invoke-static {v1, v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v6

    .line 5
    const-string v7, "5F20"

    invoke-static {v1, v7}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v7

    .line 6
    const-string v8, "5F30"

    invoke-static {v1, v8}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v8

    .line 7
    const-string v9, "5F24"

    invoke-static {v1, v9}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v9

    .line 8
    const-string v10, "D0"

    invoke-static {v1, v10}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v10

    .line 9
    const-string v11, "D1"

    invoke-static {v1, v11}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v11

    .line 10
    const-string v12, "D2"

    invoke-static {v1, v12}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v12

    .line 11
    const-string v13, "CA"

    invoke-static {v1, v13}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v13

    .line 12
    const-string v14, "DF41"

    invoke-static {v1, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v14

    .line 13
    const-string v15, "DF07"

    invoke-static {v1, v15}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v15

    move-object/from16 v16, v13

    .line 14
    const-string v13, "DF822D"

    invoke-static {v1, v13}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v13

    move-object/from16 v17, v12

    .line 15
    const-string v12, "DF821D"

    invoke-static {v1, v12}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v12

    move-object/from16 v18, v11

    .line 16
    const-string v11, "DF8315"

    invoke-static {v1, v11}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v11

    move-object/from16 v19, v10

    .line 17
    const-string v10, "DF51"

    invoke-static {v1, v10}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v10

    move-object/from16 v20, v7

    .line 19
    const-string v7, "DF0B"

    invoke-static {v1, v7}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v7

    move-object/from16 v21, v7

    .line 20
    const-string v7, "5A"

    invoke-static {v1, v7}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v7

    move-object/from16 v22, v7

    .line 21
    const-string v7, "DF8279"

    invoke-static {v1, v7}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v7

    move-object/from16 v23, v8

    .line 22
    const-string v8, "DF827A"

    invoke-static {v1, v8}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v8

    move-object/from16 v24, v6

    .line 23
    const-string v6, "DF827B"

    invoke-static {v1, v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v6

    move-object/from16 v25, v14

    .line 24
    const-string v14, "DF8257"

    invoke-static {v1, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v14

    move-object/from16 v26, v14

    .line 25
    const-string v14, "DF11"

    invoke-static {v1, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v14

    move-object/from16 v27, v14

    .line 26
    const-string v14, "DF12"

    invoke-static {v1, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v14

    move-object/from16 v28, v14

    .line 28
    const-string v14, "E1"

    invoke-static {v1, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v14

    move-object/from16 v29, v14

    .line 30
    const-string v14, "DF826E"

    invoke-static {v1, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v14

    move-object/from16 v30, v12

    .line 31
    const-string v12, "DF834F"

    invoke-static {v1, v12}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v12

    move-object/from16 v31, v15

    const-string v15, ""

    if-nez v14, :cond_0

    move-object v14, v15

    goto :goto_0

    .line 33
    :cond_0
    iget-object v14, v14, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_0
    move-object/from16 v32, v9

    .line 34
    const-string v9, "\\u0000"

    invoke-virtual {v14, v9, v15}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v12, :cond_1

    move-object v12, v15

    goto :goto_1

    .line 35
    :cond_1
    iget-object v12, v12, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v12}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 37
    :goto_1
    const-string v14, "9F39"

    invoke-static {v1, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v14

    move-object/from16 v33, v12

    .line 38
    const-string v12, "C9"

    invoke-static {v1, v12}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v12

    move-object/from16 v34, v9

    .line 40
    const-string v9, "DF8727"

    invoke-static {v1, v9}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v9

    move-object/from16 v35, v9

    .line 42
    const-string v9, "DF8546"

    invoke-static {v1, v9}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v9

    move-object/from16 v36, v14

    .line 43
    const-string v14, "DF8733"

    invoke-static {v1, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v14

    move-object/from16 v37, v12

    .line 44
    const-string v12, "DF8734"

    invoke-static {v1, v12}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v12

    move-object/from16 v38, v5

    .line 45
    const-string v5, "DF8735"

    invoke-static {v1, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5

    move-object/from16 v39, v2

    .line 46
    const-string v2, "DF8736"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    move-object/from16 v40, v13

    .line 48
    const-string v13, "DF8739"

    invoke-static {v1, v13}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v13

    move-object/from16 v41, v3

    .line 50
    const-string v3, "DF8753"

    invoke-static {v1, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    move-object/from16 v42, v3

    .line 52
    const-string v3, "DF8675"

    invoke-static {v1, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    move-object/from16 v43, v10

    .line 54
    const-string v10, "DF8574"

    invoke-static {v1, v10}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v10

    move-object/from16 v44, v10

    .line 55
    const-string v10, "DF857E"

    invoke-static {v1, v10}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v10

    move-object/from16 v45, v10

    .line 57
    const-string v10, "DF871A"

    invoke-static {v1, v10}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v10

    move-object/from16 v46, v11

    .line 58
    const-string v11, "DF871B"

    invoke-static {v1, v11}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v11

    move-object/from16 v47, v2

    .line 59
    const-string v2, "DF871C"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    move-object/from16 v48, v5

    .line 60
    const-string v5, "DF871D"

    invoke-static {v1, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5

    move-object/from16 v49, v12

    .line 61
    const-string v12, "DF8718"

    invoke-static {v1, v12}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v12

    move-object/from16 v50, v14

    .line 62
    const-string v14, "DF8719"

    invoke-static {v1, v14}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    if-eqz v10, :cond_2

    .line 66
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v10, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v51, v6

    const-string v6, "DF871A"

    invoke-static {v6, v10}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object/from16 v51, v6

    move-object v6, v15

    :goto_2
    if-eqz v11, :cond_3

    .line 70
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v10, v11, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v11, "DF871B"

    invoke-static {v11, v10}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    if-eqz v2, :cond_4

    .line 74
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v10, "DF871C"

    invoke-static {v10, v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    if-eqz v5, :cond_5

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v6, "DF871D"

    invoke-static {v6, v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5
    if-eqz v12, :cond_6

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v12, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v6, "DF8718"

    invoke-static {v6, v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_6
    if-eqz v1, :cond_7

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v5, "DF8719"

    invoke-static {v5, v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 89
    :cond_7
    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 90
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000:Landroid/content/Context;

    invoke-static {v6, v1}, Lcom/stripe/bbpos/bbdevice/ccc033zz;->aaa001(Ljava/lang/String;Landroid/content/Context;)V

    :cond_8
    if-eqz v13, :cond_9

    .line 93
    iget-object v1, v13, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 94
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb054zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa009zz;

    if-eqz v1, :cond_9

    .line 95
    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa001()V

    :cond_9
    const/4 v1, 0x0

    if-eqz v3, :cond_a

    .line 99
    iget-object v2, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const-string v3, "AB"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 100
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    invoke-virtual {v2, v3, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    :cond_a
    const-string v2, "encTrack3"

    const-string v3, "encTrack2"

    const-string v5, "track3"

    const-string v6, "encTrack1"

    const-string v10, "track2"

    const-string v11, "track1"

    const-string v12, "track3Length"

    const-string v13, "track2Length"

    const-string v14, "track1Length"

    if-eqz v9, :cond_20

    .line 105
    :try_start_0
    iget-object v9, v9, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v1, 0x2

    const/16 v53, 0x1

    if-ne v9, v1, :cond_20

    .line 106
    iget-object v9, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x0

    iput-boolean v1, v9, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa012:Z

    if-eqz v4, :cond_1f

    .line 108
    iget-object v1, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v4, 0x2

    if-eq v1, v4, :cond_d

    const/16 v2, 0xf8

    if-eq v1, v2, :cond_c

    const/16 v2, 0xfe

    if-eq v1, v2, :cond_b

    .line 216
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const/16 v3, 0xc

    :try_start_1
    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move v1, v3

    goto/16 :goto_f

    .line 217
    :cond_b
    :try_start_2
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    goto/16 :goto_d

    .line 218
    :cond_c
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    goto/16 :goto_d

    .line 219
    :cond_d
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    .line 221
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    if-eqz v7, :cond_e

    .line 224
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v16, v1

    const/16 v1, 0x10

    invoke-static {v7, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_e
    move-object/from16 v16, v1

    .line 226
    invoke-virtual {v4, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    if-eqz v8, :cond_f

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v8, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 232
    :cond_f
    invoke-virtual {v4, v13, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    if-eqz v51, :cond_10

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, v51

    iget-object v7, v9, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 238
    :cond_10
    invoke-virtual {v4, v12, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    if-eqz v50, :cond_11

    move-object/from16 v1, v50

    .line 242
    iget-object v7, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 243
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v1

    .line 244
    array-length v7, v1

    const/4 v8, 0x3

    if-ge v7, v8, :cond_12

    .line 245
    new-array v1, v8, [B

    goto :goto_6

    :cond_11
    const/4 v8, 0x3

    .line 248
    new-array v1, v8, [B

    :cond_12
    :goto_6
    const/4 v7, 0x0

    .line 252
    aget-byte v8, v1, v7

    and-int/lit8 v7, v8, 0x1

    move/from16 v8, v53

    if-ne v7, v8, :cond_13

    goto :goto_7

    :cond_13
    move-object v6, v11

    .line 257
    :goto_7
    aget-byte v7, v1, v8

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_14

    goto :goto_8

    :cond_14
    move-object v3, v10

    :goto_8
    const/16 v52, 0x2

    .line 262
    aget-byte v7, v1, v52

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_15

    goto :goto_9

    :cond_15
    move-object v2, v5

    :goto_9
    if-eqz v49, :cond_17

    move-object/from16 v5, v49

    .line 266
    iget-object v7, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v7, :cond_17

    const/4 v7, 0x0

    .line 268
    :try_start_3
    aget-byte v8, v1, v7

    const/4 v7, 0x2

    and-int/2addr v8, v7

    if-ne v8, v7, :cond_16

    .line 269
    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 271
    :cond_16
    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_a

    .line 274
    :catch_1
    :try_start_4
    invoke-virtual {v4, v6, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 277
    :cond_17
    invoke-virtual {v4, v6, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    if-eqz v48, :cond_19

    move-object/from16 v5, v48

    .line 280
    iget-object v6, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v6}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    if-eqz v6, :cond_19

    const/16 v53, 0x1

    .line 282
    :try_start_5
    aget-byte v6, v1, v53

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_18

    .line 283
    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 285
    :cond_18
    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_b

    .line 288
    :catch_2
    :try_start_6
    invoke-virtual {v4, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 291
    :cond_19
    invoke-virtual {v4, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    if-eqz v47, :cond_1b

    move-object/from16 v3, v47

    .line 294
    iget-object v5, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    if-eqz v5, :cond_1b

    const/4 v7, 0x2

    .line 296
    :try_start_7
    aget-byte v1, v1, v7

    and-int/2addr v1, v7

    if-ne v1, v7, :cond_1a

    .line 297
    iget-object v1, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 299
    :cond_1a
    iget-object v1, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_c

    .line 302
    :catch_3
    :try_start_8
    invoke-virtual {v4, v2, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 305
    :cond_1b
    invoke-virtual {v4, v2, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    if-eqz v46, :cond_1c

    move-object/from16 v1, v46

    .line 308
    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 309
    const-string v2, "data"

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    move-object/from16 v1, v16

    goto :goto_e

    .line 310
    :cond_1d
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    :goto_d
    const/4 v4, 0x0

    .line 417
    :goto_e
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    if-nez p2, :cond_7d

    if-nez v4, :cond_1e

    .line 421
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 423
    :cond_1e
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v2, v1, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;Ljava/util/Hashtable;)V

    goto/16 :goto_37

    .line 427
    :cond_1f
    sget-object v1, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    const/16 v2, 0xc

    :try_start_9
    invoke-virtual {v9, v1, v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    return-void

    :catch_4
    move v1, v2

    goto :goto_f

    :catch_5
    const/16 v1, 0xc

    .line 432
    :goto_f
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    invoke-virtual {v2, v3, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    :cond_20
    move-object/from16 v9, v51

    if-eqz v43, :cond_22

    move-object/from16 v1, v43

    .line 437
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v43, v12

    const/16 v12, 0x10

    invoke-static {v1, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 469
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    .line 470
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "Unknown PinEntryResult"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 471
    :pswitch_0
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_10

    .line 472
    :pswitch_1
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    .line 473
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v15}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 474
    :pswitch_2
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_10

    .line 475
    :pswitch_3
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_10

    .line 476
    :pswitch_4
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_10

    .line 477
    :pswitch_5
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_10

    .line 478
    :pswitch_6
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_10

    .line 479
    :pswitch_7
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    goto :goto_10

    .line 480
    :pswitch_8
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;

    :goto_10
    if-nez p2, :cond_21

    .line 514
    iget-object v12, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    move-object/from16 v51, v9

    new-instance v9, Ljava/util/Hashtable;

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v12, v1, v9}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;Ljava/util/Hashtable;)V

    goto :goto_11

    :cond_21
    move-object/from16 v51, v9

    goto :goto_11

    :cond_22
    move-object/from16 v51, v9

    move-object/from16 v43, v12

    :goto_11
    if-eqz v41, :cond_25

    move-object/from16 v1, v41

    .line 520
    :try_start_a
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v8, 0x10

    invoke-static {v1, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_24

    const/4 v8, 0x1

    if-eq v1, v8, :cond_23

    .line 530
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    :cond_23
    const/4 v1, 0x0

    goto :goto_12

    :cond_24
    const/4 v1, 0x1

    .line 533
    :goto_12
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const-string v4, "DE0100"

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB[B)V

    if-nez p2, :cond_7d

    .line 535
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005(Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    return-void

    .line 538
    :catch_6
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    :cond_25
    if-eqz v4, :cond_7e

    .line 544
    :try_start_b
    iget-object v1, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v4, 0x10

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    const/16 v4, 0xfc

    const-string v9, "maskedPAN"

    if-eq v1, v4, :cond_72

    const/16 v4, 0xfe

    if-eq v1, v4, :cond_71

    const/16 v4, 0xff

    if-eq v1, v4, :cond_70

    if-eqz v1, :cond_6f

    const/4 v4, 0x1

    if-eq v1, v4, :cond_6e

    const-string v4, "posEntryMode"

    const-string v12, "ksn"

    move-object/from16 v47, v13

    const-string v13, "expiryDate"

    move-object/from16 v48, v8

    const/4 v8, 0x2

    if-eq v1, v8, :cond_35

    const/4 v8, 0x3

    if-eq v1, v8, :cond_33

    const/4 v2, 0x4

    if-eq v1, v2, :cond_27

    packed-switch v1, :pswitch_data_1

    .line 813
    :try_start_c
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    goto :goto_15

    :pswitch_9
    if-nez v40, :cond_26

    const/4 v1, 0x0

    goto :goto_13

    :cond_26
    move-object/from16 v1, v40

    .line 815
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    .line 816
    :goto_13
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 817
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    .line 818
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v2, v3, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 821
    :pswitch_a
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    :goto_14
    move-object/from16 v17, v9

    goto/16 :goto_32

    .line 824
    :pswitch_b
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    goto :goto_14

    .line 813
    :goto_15
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v5, v39

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", please update API."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 814
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    .line 825
    :cond_27
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    if-eqz v38, :cond_28

    move-object/from16 v8, v38

    .line 828
    iget-object v2, v8, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa012(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v9, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 830
    :cond_28
    invoke-virtual {v1, v9, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_16
    if-eqz v37, :cond_29

    .line 834
    const-string v2, "encPAN"

    move-object/from16 v3, v37

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 835
    :cond_29
    const-string v2, "encPAN"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 836
    const-string v2, "encPAN"

    invoke-virtual {v1, v2, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    :goto_17
    if-eqz v42, :cond_2b

    move-object/from16 v2, v42

    .line 840
    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v1, v13, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :cond_2b
    if-eqz v32, :cond_2c

    move-object/from16 v2, v32

    .line 842
    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v1, v13, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    .line 843
    :cond_2c
    invoke-virtual {v1, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 844
    invoke-virtual {v1, v13, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    :goto_18
    if-eqz v31, :cond_2e

    move-object/from16 v2, v31

    .line 848
    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v1, v12, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    .line 849
    :cond_2e
    invoke-virtual {v1, v12}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 850
    invoke-virtual {v1, v12, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    :goto_19
    if-eqz v36, :cond_30

    move-object/from16 v2, v36

    .line 854
    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a

    .line 855
    :cond_30
    invoke-virtual {v1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 856
    invoke-virtual {v1, v4, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    :goto_1a
    if-eqz v44, :cond_32

    move-object/from16 v2, v44

    .line 859
    iget-object v3, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 860
    const-string v3, "encCVV"

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    :cond_32
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    move-object v12, v1

    move-object v1, v2

    :goto_1b
    move-object/from16 v17, v9

    goto/16 :goto_33

    .line 863
    :cond_33
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    if-eqz v30, :cond_34

    move-object/from16 v2, v30

    .line 864
    iget-object v3, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 865
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 866
    const-string v4, "nfcCardUID"

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    move-object v12, v3

    goto :goto_1b

    :cond_34
    move-object/from16 v17, v9

    const/4 v12, 0x0

    goto/16 :goto_34

    :cond_35
    move-object/from16 v30, v4

    move-object/from16 v4, v31

    move-object/from16 v1, v32

    move-object/from16 v54, v36

    move-object/from16 v8, v38

    .line 867
    :try_start_d
    sget-object v31, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    move-object/from16 v32, v14

    const-string v14, "formatID"

    move-object/from16 v36, v7

    const-string v7, "serviceCode"

    if-eqz v25, :cond_3a

    move-object/from16 v37, v2

    .line 869
    :try_start_e
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa008zz;

    move-object/from16 v38, v3

    move-object/from16 v3, v25

    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa008zz;-><init>([B)V

    .line 870
    iget-boolean v3, v2, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa000:Z

    if-eqz v3, :cond_36

    .line 871
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    .line 872
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "CRC (error code - 9015)"

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 875
    :cond_36
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/aaa008zz;->aaa000()Ljava/util/Hashtable;

    move-result-object v2

    .line 876
    invoke-virtual {v2, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v25, v5

    const-string v5, "61"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    if-eqz v24, :cond_38

    if-nez v23, :cond_37

    goto :goto_1c

    .line 881
    :cond_37
    new-instance v3, Ljava/lang/String;

    move-object/from16 v5, v24

    move-object/from16 v24, v10

    iget-object v10, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v10}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v9, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v23

    .line 882
    iget-object v10, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v39, v6

    move-object/from16 v23, v11

    const/4 v6, 0x0

    const/4 v11, 0x3

    invoke-virtual {v10, v6, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v7, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 883
    :cond_38
    :goto_1c
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v7}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    :cond_39
    move-object/from16 v39, v6

    move-object/from16 v3, v23

    move-object/from16 v5, v24

    move-object/from16 v24, v10

    move-object/from16 v23, v11

    goto :goto_1d

    :cond_3a
    move-object/from16 v37, v2

    move-object/from16 v38, v3

    move-object/from16 v25, v5

    move-object/from16 v39, v6

    move-object/from16 v3, v23

    move-object/from16 v5, v24

    move-object/from16 v24, v10

    move-object/from16 v23, v11

    const/4 v2, 0x0

    :goto_1d
    if-nez v2, :cond_3b

    .line 893
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    .line 897
    :cond_3b
    :try_start_f
    invoke-virtual {v2, v14}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    if-eqz v6, :cond_3c

    .line 898
    :try_start_10
    invoke-virtual {v2, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_1e

    :cond_3c
    move-object v6, v15

    .line 900
    :goto_1e
    :try_start_11
    invoke-virtual {v2, v14, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7

    if-eqz v21, :cond_3d

    .line 903
    :try_start_12
    const-string v10, "mac"

    move-object/from16 v11, v21

    iget-object v11, v11, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    if-eqz v27, :cond_3e

    .line 907
    const-string v10, "mac"

    move-object/from16 v11, v27

    iget-object v11, v11, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    if-eqz v8, :cond_3f

    .line 911
    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa012(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    goto :goto_1f

    .line 913
    :cond_3f
    :try_start_13
    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    if-nez v8, :cond_40

    .line 914
    :try_start_14
    invoke-virtual {v2, v9, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    :goto_1f
    if-eqz v22, :cond_41

    .line 918
    const-string v8, "pan"

    move-object/from16 v10, v22

    iget-object v10, v10, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v10}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    if-eqz v5, :cond_43

    .line 922
    const-string v8, "61"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_42

    .line 923
    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v9, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_20

    .line 925
    :cond_42
    const-string v8, "pan"

    iget-object v5, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    :goto_20
    if-eqz v20, :cond_44

    .line 930
    const-string v5, "cardholderName"

    move-object/from16 v8, v20

    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa003(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_8

    goto :goto_21

    .line 931
    :cond_44
    :try_start_15
    const-string v5, "cardholderName"

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_7

    if-nez v5, :cond_45

    .line 932
    :try_start_16
    const-string v5, "cardholderName"

    invoke-virtual {v2, v5, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    :goto_21
    if-eqz v3, :cond_47

    .line 936
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    .line 937
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x4

    if-lt v5, v8, :cond_46

    const/4 v5, 0x0

    const/4 v8, 0x3

    .line 938
    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 940
    :cond_46
    invoke-virtual {v2, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8

    goto :goto_22

    .line 941
    :cond_47
    :try_start_17
    invoke-virtual {v2, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_7

    if-nez v3, :cond_48

    .line 942
    :try_start_18
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_48
    :goto_22
    if-eqz v1, :cond_49

    .line 946
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    goto :goto_23

    .line 947
    :cond_49
    :try_start_19
    invoke-virtual {v2, v13}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_7

    if-nez v1, :cond_4a

    .line 948
    :try_start_1a
    invoke-virtual {v2, v13, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4a
    :goto_23
    if-eqz v4, :cond_4b

    .line 952
    iget-object v1, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8

    goto :goto_24

    .line 953
    :cond_4b
    :try_start_1b
    invoke-virtual {v2, v12}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_7

    if-nez v1, :cond_4c

    .line 954
    :try_start_1c
    invoke-virtual {v2, v12, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4c
    :goto_24
    if-eqz v19, :cond_4d

    move-object/from16 v1, v19

    .line 958
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v3, v39

    invoke-virtual {v2, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_8

    goto :goto_25

    :cond_4d
    move-object/from16 v3, v39

    .line 959
    :try_start_1d
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7

    if-nez v1, :cond_4e

    move-object/from16 v1, v23

    :try_start_1e
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    move-object/from16 v4, v24

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_50

    move-object/from16 v5, v25

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_51

    .line 960
    invoke-virtual {v2, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    :cond_4e
    :goto_25
    move-object/from16 v1, v23

    :cond_4f
    move-object/from16 v4, v24

    :cond_50
    move-object/from16 v5, v25

    :cond_51
    :goto_26
    if-eqz v18, :cond_52

    move-object/from16 v8, v18

    .line 964
    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v10, v38

    invoke-virtual {v2, v10, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    goto :goto_27

    :cond_52
    move-object/from16 v10, v38

    .line 965
    :try_start_1f
    invoke-virtual {v2, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_7

    if-nez v8, :cond_53

    :try_start_20
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_53

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_53

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_53

    .line 966
    invoke-virtual {v2, v10, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    :goto_27
    if-eqz v17, :cond_54

    move-object/from16 v8, v17

    .line 970
    iget-object v8, v8, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v11, v37

    invoke-virtual {v2, v11, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_8

    goto :goto_28

    :cond_54
    move-object/from16 v11, v37

    .line 971
    :try_start_21
    invoke-virtual {v2, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_7

    if-nez v8, :cond_55

    :try_start_22
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_55

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_55

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_55

    .line 972
    invoke-virtual {v2, v11, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_55
    :goto_28
    if-eqz v36, :cond_56

    .line 976
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v12, v36

    iget-object v12, v12, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v14, 0x10

    invoke-static {v12, v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v12, v32

    invoke-virtual {v2, v12, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_8

    goto :goto_29

    :cond_56
    move-object/from16 v12, v32

    .line 977
    :try_start_23
    invoke-virtual {v2, v12}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_7

    if-nez v8, :cond_57

    .line 978
    :try_start_24
    invoke-virtual {v2, v12, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    :goto_29
    if-eqz v48, :cond_58

    .line 982
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, v48

    iget-object v14, v14, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v17, v9

    const/16 v9, 0x10

    invoke-static {v14, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v9, v47

    invoke-virtual {v2, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_8

    goto :goto_2a

    :cond_58
    move-object/from16 v17, v9

    move-object/from16 v9, v47

    .line 983
    :try_start_25
    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_7

    if-nez v8, :cond_59

    .line 984
    :try_start_26
    invoke-virtual {v2, v9, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_8

    :cond_59
    :goto_2a
    if-eqz v51, :cond_5a

    .line 988
    :try_start_27
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v14, v51

    iget-object v14, v14, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v0, 0x10

    invoke-static {v14, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v43

    invoke-virtual {v2, v8, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_5a
    move-object/from16 v8, v43

    .line 989
    invoke-virtual {v2, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 990
    invoke-virtual {v2, v8, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5b
    :goto_2b
    if-eqz v26, :cond_5c

    .line 994
    const-string v0, "encTracks"

    move-object/from16 v14, v26

    iget-object v14, v14, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 995
    :cond_5c
    const-string v0, "encTracks"

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 996
    const-string v0, "encTracks"

    invoke-virtual {v2, v0, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5d
    :goto_2c
    if-eqz v35, :cond_5e

    move-object/from16 v0, v35

    .line 999
    iget-object v14, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5e

    .line 1000
    const-string v14, "encTracks"

    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v14, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    if-eqz v16, :cond_5f

    .line 1004
    const-string v0, "randomNumber"

    move-object/from16 v14, v16

    iget-object v14, v14, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    if-eqz v28, :cond_60

    .line 1008
    const-string v0, "cardDataMacAlgorithmIdAndMacDOL"

    move-object/from16 v14, v28

    iget-object v14, v14, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v2, v0, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    :cond_60
    const-string v0, "46"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "55"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "60"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "64"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    const-string v0, "65"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    goto :goto_2e

    :cond_61
    :goto_2d
    move-object/from16 v0, v54

    goto/16 :goto_2f

    .line 1012
    :cond_62
    :goto_2e
    invoke-virtual {v2, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1013
    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1014
    invoke-virtual {v2, v3, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    :cond_63
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1017
    invoke-virtual {v2, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    :cond_64
    invoke-virtual {v2, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1021
    invoke-virtual {v2, v10}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 1022
    invoke-virtual {v2, v10, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    :cond_65
    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 1025
    invoke-virtual {v2, v4, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    :cond_66
    invoke-virtual {v2, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1029
    invoke-virtual {v2, v11}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1030
    invoke-virtual {v2, v11, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    :cond_67
    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1033
    invoke-virtual {v2, v5, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    :cond_68
    invoke-virtual {v2, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 1037
    invoke-virtual {v2, v13, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    :cond_69
    invoke-virtual {v2, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1041
    invoke-virtual {v2, v7, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2d

    :goto_2f
    if-eqz v0, :cond_6a

    .line 1046
    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    move-object/from16 v1, v30

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_6a
    move-object/from16 v1, v30

    .line 1047
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6b

    .line 1048
    invoke-virtual {v2, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    :goto_30
    if-eqz v45, :cond_6d

    move-object/from16 v0, v45

    .line 1052
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa008(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    .line 1053
    iget-object v0, v0, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa004(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6c

    .line 1054
    const-string v0, "isMerchantChoiceRouting"

    const-string v1, "false"

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    .line 1056
    :cond_6c
    const-string v0, "isMerchantChoiceRouting"

    const-string v1, "true"

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_31
    move-object v12, v2

    move-object/from16 v1, v31

    goto :goto_33

    :cond_6d
    move-object/from16 v0, p0

    move-object v12, v2

    move-object/from16 v1, v31

    goto :goto_34

    :cond_6e
    move-object/from16 v17, v9

    .line 1057
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    goto :goto_32

    :cond_6f
    move-object/from16 v17, v9

    .line 1058
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    goto :goto_32

    :cond_70
    move-object/from16 v17, v9

    .line 1301
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    goto :goto_32

    :cond_71
    move-object/from16 v17, v9

    .line 1304
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    goto :goto_32

    :cond_72
    move-object/from16 v17, v9

    .line 1307
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_7

    :goto_32
    const/4 v12, 0x0

    :goto_33
    move-object/from16 v0, p0

    .line 1327
    :goto_34
    :try_start_28
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    .line 1329
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-boolean v3, v2, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa009:Z

    if-eqz v3, :cond_75

    .line 1330
    iput-boolean v7, v2, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa009:Z

    .line 1333
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;

    if-ne v1, v2, :cond_74

    .line 1334
    const-string v2, "pan"

    invoke-virtual {v12, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v3, v17

    .line 1335
    invoke-virtual {v12, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_73

    .line 1336
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_73

    move-object v15, v2

    goto :goto_35

    :cond_73
    if-eqz v3, :cond_74

    .line 1338
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    move-object v15, v3

    :cond_74
    :goto_35
    if-nez p2, :cond_7d

    .line 1343
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v2, v1, v15}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;Ljava/lang/String;)V

    return-void

    :cond_75
    if-nez p2, :cond_7d

    if-eqz v46, :cond_77

    if-nez v12, :cond_76

    .line 1349
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    .line 1351
    :cond_76
    const-string v2, "data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v4, v46

    iget-object v4, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_77
    if-eqz v29, :cond_79

    move-object/from16 v2, v29

    .line 1354
    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    if-nez v12, :cond_78

    .line 1356
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    move-object v12, v3

    .line 1358
    :cond_78
    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 1359
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1360
    array-length v4, v3

    :goto_36
    if-ge v7, v4, :cond_79

    aget-object v5, v3, v7

    .line 1361
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v12, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    :cond_79
    if-nez v12, :cond_7a

    .line 1365
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    :cond_7a
    move-object/from16 v2, v34

    .line 1368
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    .line 1369
    const-string v3, "serialNumber"

    invoke-virtual {v12, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    move-object/from16 v2, v33

    .line 1371
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7c

    .line 1372
    const-string v3, "bID"

    invoke-virtual {v12, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    :cond_7c
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v2, v1, v12}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;Ljava/util/Hashtable;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_8

    :cond_7d
    :goto_37
    return-void

    :catch_7
    move-object/from16 v0, p0

    .line 1378
    :catch_8
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

    return-void

    :cond_7e
    const/16 v3, 0xc

    .line 1382
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc010zz;->aaa030:[B

    invoke-virtual {v1, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000([BB)V

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

    :pswitch_data_1
    .packed-switch 0xf8
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
