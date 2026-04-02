.class Lcom/stripe/bbpos/bbdevice/bbb096zz;
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
.method aaa000(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/ccc067zz;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    const-string v2, "DF54"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    .line 2
    const-string v4, "DE"

    invoke-static {v1, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v4

    .line 3
    const-string v5, "E0"

    invoke-static {v1, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v5

    .line 4
    const-string v6, "E1"

    invoke-static {v1, v6}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v6

    .line 5
    const-string v7, "E3"

    invoke-static {v1, v7}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v7

    .line 6
    const-string v8, "E4"

    invoke-static {v1, v8}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v8

    const/16 v9, 0x10

    const/4 v10, 0x0

    const-string v11, ""

    if-eqz v3, :cond_5

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-nez v8, :cond_5

    .line 10
    :try_start_0
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 41
    :pswitch_0
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 42
    :pswitch_1
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 43
    :pswitch_2
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 44
    :pswitch_3
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 45
    :pswitch_4
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 46
    :pswitch_5
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 47
    :pswitch_6
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 48
    :pswitch_7
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 49
    :pswitch_8
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 50
    :pswitch_9
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 81
    :goto_0
    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    if-ne v3, v4, :cond_3

    move-object v4, v11

    .line 82
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v10, v5, :cond_2

    .line 83
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;

    .line 84
    iget-object v6, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa000:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 86
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    iget-object v4, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    goto :goto_2

    .line 88
    :cond_0
    iget-boolean v6, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa003:Z

    if-nez v6, :cond_1

    .line 89
    iget-object v4, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    :cond_1
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v4, v11

    .line 99
    :cond_4
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v1, v3, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 101
    :catch_0
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_5
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v4, :cond_1c

    if-eqz v5, :cond_8

    .line 105
    iget-object v1, v5, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 107
    :try_start_1
    iget-object v3, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v3, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_7

    if-eq v3, v2, :cond_6

    .line 170
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 171
    :cond_6
    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 172
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 173
    array-length v3, v2

    if-lez v3, :cond_20

    aget-object v2, v2, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 175
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 206
    :pswitch_a
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_3

    .line 207
    :pswitch_b
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_3

    .line 208
    :pswitch_c
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_3

    .line 209
    :pswitch_d
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_3

    .line 210
    :pswitch_e
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_3

    .line 211
    :pswitch_f
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_3

    .line 212
    :pswitch_10
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_3

    .line 213
    :pswitch_11
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_3

    .line 214
    :pswitch_12
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_3

    .line 215
    :pswitch_13
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 245
    :goto_3
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 246
    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v1, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016(Ljava/util/Hashtable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    .line 250
    :catch_1
    :try_start_3
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 251
    :cond_7
    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 252
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 253
    array-length v3, v2

    if-lez v3, :cond_20

    aget-object v2, v2, v10

    .line 254
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 255
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v1, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016(Ljava/util/Hashtable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    .line 313
    :catch_2
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_8
    if-eqz v7, :cond_17

    if-eqz v8, :cond_17

    .line 317
    iget-object v2, v7, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    .line 319
    iget-object v3, v8, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v3

    .line 321
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 322
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    .line 324
    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    .line 325
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 326
    array-length v7, v6

    move v8, v10

    :goto_4
    const-string v12, "EC"

    if-ge v8, v7, :cond_d

    aget-object v13, v6, v8

    .line 327
    check-cast v13, Ljava/lang/String;

    .line 328
    invoke-virtual {v2, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 330
    :try_start_4
    iget-object v15, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v15, v15, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    sget-object v9, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    if-ne v15, v9, :cond_c

    .line 331
    const-string v9, "9F2A"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-eqz v14, :cond_9

    .line 334
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v1, :cond_9

    .line 335
    invoke-virtual {v14, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 340
    :cond_9
    iget-object v9, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v9, v9, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v9}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa002()Lcom/stripe/bbpos/bbdevice/ccc039zz;

    move-result-object v9

    invoke-virtual {v9}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa007()Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    move-result-object v9

    sget-object v15, Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;->aaa094:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    if-ne v9, v15, :cond_a

    .line 341
    invoke-virtual {v4, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 343
    :cond_a
    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 344
    invoke-static {v14}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v9

    .line 345
    invoke-virtual {v5, v9}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    goto :goto_5

    .line 347
    :cond_b
    invoke-static {v13}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 351
    :cond_c
    invoke-virtual {v4, v13, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/16 v9, 0x10

    goto :goto_4

    .line 354
    :catch_3
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 359
    :cond_d
    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 360
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 361
    array-length v2, v1

    move v6, v10

    :goto_6
    if-ge v6, v2, :cond_13

    aget-object v7, v1, v6

    .line 362
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .line 364
    :try_start_5
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 365
    invoke-virtual {v3, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 366
    invoke-static {v7}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v7

    .line 368
    invoke-virtual {v7}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 369
    invoke-static {v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 370
    array-length v9, v8

    move v13, v10

    :goto_7
    if-ge v13, v9, :cond_f

    aget-object v14, v8, v13

    .line 371
    invoke-virtual {v7, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/16 v10, 0x10

    invoke-static {v15, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    packed-switch v15, :pswitch_data_2

    .line 405
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_8

    .line 406
    :pswitch_14
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_UPDATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_8

    .line 407
    :pswitch_15
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->INVALID_VALUE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_8

    .line 408
    :pswitch_16
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_8

    .line 409
    :pswitch_17
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->USER_DEFINED_DATA_NOT_ENALBLED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_8

    .line 410
    :pswitch_18
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_8

    .line 411
    :pswitch_19
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_8

    .line 412
    :pswitch_1a
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TLV_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_8

    .line 413
    :pswitch_1b
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->LENGTH_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_8

    .line 414
    :pswitch_1c
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_8

    .line 415
    :pswitch_1d
    sget-object v10, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 448
    :goto_8
    iget-object v15, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v15, v15, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    move-object/from16 p1, v1

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    if-ne v15, v1, :cond_e

    .line 449
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v14, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p1

    const/4 v10, 0x0

    goto :goto_7

    :cond_f
    move-object/from16 p1, v1

    goto :goto_a

    :cond_10
    move-object/from16 p1, v1

    .line 453
    invoke-virtual {v3, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v10, 0x10

    invoke-static {v1, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_3

    .line 484
    :pswitch_1e
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_9

    .line 485
    :pswitch_1f
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_9

    .line 486
    :pswitch_20
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_9

    .line 487
    :pswitch_21
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_9

    .line 488
    :pswitch_22
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_9

    .line 489
    :pswitch_23
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_9

    .line 490
    :pswitch_24
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_9

    .line 491
    :pswitch_25
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_9

    .line 492
    :pswitch_26
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_9

    .line 493
    :pswitch_27
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 523
    :goto_9
    iget-object v7, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v9, v7, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    sget-object v10, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    if-ne v9, v10, :cond_12

    .line 524
    iget-object v7, v7, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v7}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa002()Lcom/stripe/bbpos/bbdevice/ccc039zz;

    move-result-object v7

    invoke-virtual {v7}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa007()Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    move-result-object v7

    sget-object v9, Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;->aaa094:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    if-ne v7, v9, :cond_11

    .line 525
    invoke-virtual {v4, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 527
    :cond_11
    invoke-static {v8}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 530
    :cond_12
    invoke-virtual {v4, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_a
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    const/4 v10, 0x0

    goto/16 :goto_6

    .line 534
    :catch_4
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 539
    :cond_13
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    if-ne v2, v3, :cond_16

    .line 540
    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_15

    .line 541
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa002()Lcom/stripe/bbpos/bbdevice/ccc039zz;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa007()Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;->aaa094:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    if-ne v1, v2, :cond_14

    .line 542
    invoke-virtual {v4, v12, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 544
    :cond_14
    const-string v1, "dcpos"

    invoke-virtual {v4, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_15
    :goto_b
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa015(Ljava/util/Hashtable;)V

    return-void

    .line 549
    :cond_16
    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016(Ljava/util/Hashtable;)V

    return-void

    :cond_17
    if-eqz v6, :cond_1b

    .line 551
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    if-ne v1, v3, :cond_1b

    .line 553
    iget-object v1, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 555
    :try_start_6
    iget-object v3, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v10, 0x10

    invoke-static {v3, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 556
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    if-eqz v3, :cond_1a

    if-eq v3, v2, :cond_18

    .line 612
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 613
    :cond_18
    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 614
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 615
    array-length v3, v2

    const/4 v10, 0x0

    :goto_c
    if-ge v10, v3, :cond_19

    aget-object v5, v2, v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 617
    :try_start_7
    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    packed-switch v6, :pswitch_data_4

    .line 648
    :pswitch_28
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_d

    .line 649
    :pswitch_29
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_d

    .line 650
    :pswitch_2a
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_d

    .line 651
    :pswitch_2b
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_d

    .line 652
    :pswitch_2c
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_d

    .line 653
    :pswitch_2d
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_d

    .line 654
    :pswitch_2e
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_d

    .line 655
    :pswitch_2f
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_d

    .line 656
    :pswitch_30
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_d

    .line 657
    :pswitch_31
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 687
    :goto_d
    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 689
    :catch_5
    :try_start_8
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 694
    :cond_19
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016(Ljava/util/Hashtable;)V

    return-void

    .line 695
    :cond_1a
    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 696
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v1, v4}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016(Ljava/util/Hashtable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    return-void

    .line 750
    :catch_6
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_10

    .line 753
    :cond_1b
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :cond_1c
    if-eqz v3, :cond_21

    if-eqz v6, :cond_21

    .line 757
    iget-object v4, v6, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v4

    .line 759
    :try_start_9
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    const/16 v10, 0x10

    invoke-static {v3, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 760
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    if-eqz v3, :cond_1f

    if-eq v3, v2, :cond_1d

    if-eq v3, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v3, v1, :cond_1d

    const/4 v1, 0x5

    if-eq v3, v1, :cond_1d

    const/4 v1, 0x6

    if-eq v3, v1, :cond_1d

    .line 817
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    .line 952
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 818
    :cond_1d
    invoke-virtual {v4}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 819
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 820
    array-length v2, v1

    const/4 v10, 0x0

    :goto_e
    if-ge v10, v2, :cond_1e

    aget-object v3, v1, v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 822
    :try_start_a
    invoke-virtual {v4, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    packed-switch v6, :pswitch_data_5

    .line 853
    :pswitch_32
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_f

    .line 854
    :pswitch_33
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_f

    .line 855
    :pswitch_34
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_f

    .line 856
    :pswitch_35
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_f

    .line 857
    :pswitch_36
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_f

    .line 858
    :pswitch_37
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_f

    .line 859
    :pswitch_38
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_f

    .line 860
    :pswitch_39
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_f

    .line 861
    :pswitch_3a
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_f

    .line 862
    :pswitch_3b
    sget-object v6, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 891
    :goto_f
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 893
    :catch_7
    :try_start_b
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto :goto_10

    .line 897
    :cond_1e
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v1, v5}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016(Ljava/util/Hashtable;)V

    return-void

    .line 898
    :cond_1f
    invoke-virtual {v5, v4}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 899
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v1, v5}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016(Ljava/util/Hashtable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    return-void

    .line 955
    :catch_8
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    :cond_20
    :goto_10
    return-void

    .line 958
    :cond_21
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v11}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_a
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_1e
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_28
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_32
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch
.end method
