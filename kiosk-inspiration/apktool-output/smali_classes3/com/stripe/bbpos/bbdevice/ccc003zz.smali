.class Lcom/stripe/bbpos/bbdevice/ccc003zz;
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
    .locals 16
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
    const-string v2, "DF55"

    invoke-static {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v2

    .line 2
    const-string v3, "DE"

    invoke-static {v1, v3}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v3

    .line 3
    const-string v4, "E0"

    invoke-static {v1, v4}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v4

    .line 4
    const-string v5, "E1"

    invoke-static {v1, v5}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa000(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/ccc067zz;

    move-result-object v1

    const/16 v5, 0x10

    const-string v6, ""

    if-eqz v2, :cond_0

    .line 8
    :try_start_0
    iget-object v1, v2, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 42
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 43
    :pswitch_0
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 44
    :pswitch_1
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 45
    :pswitch_2
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 46
    :pswitch_3
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 47
    :pswitch_4
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 48
    :pswitch_5
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 49
    :pswitch_6
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 50
    :pswitch_7
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 51
    :pswitch_8
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_0

    .line 52
    :pswitch_9
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 85
    :goto_0
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 87
    :catch_0
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_0
    if-eqz v3, :cond_f

    const/4 v2, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    .line 91
    iget-object v1, v4, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 93
    :try_start_1
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v7, :cond_1

    .line 95
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 98
    :cond_1
    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 99
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 100
    array-length v4, v3

    if-lez v4, :cond_d

    aget-object v2, v3, v2

    .line 101
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 135
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_1

    .line 136
    :pswitch_a
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_1

    .line 137
    :pswitch_b
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_1

    .line 138
    :pswitch_c
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_1

    .line 139
    :pswitch_d
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_1

    .line 140
    :pswitch_e
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_1

    .line 141
    :pswitch_f
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_1

    .line 142
    :pswitch_10
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_1

    .line 143
    :pswitch_11
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_1

    .line 144
    :pswitch_12
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_1

    .line 145
    :pswitch_13
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 177
    :goto_1
    iget-object v3, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v4, v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    if-ne v4, v5, :cond_2

    .line 178
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 179
    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    .line 181
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa017(Ljava/util/Hashtable;)V

    return-void

    .line 183
    :cond_2
    invoke-virtual {v3, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 188
    :catch_1
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_3
    if-eqz v1, :cond_e

    .line 191
    iget-object v1, v1, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    .line 193
    :try_start_2
    iget-object v3, v3, Lcom/stripe/bbpos/bbdevice/ccc067zz;->aaa001:Ljava/lang/String;

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    if-eq v3, v7, :cond_4

    .line 195
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 198
    :cond_4
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    .line 199
    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    .line 200
    invoke-virtual {v1}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .line 201
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 202
    array-length v8, v7

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_a

    aget-object v10, v7, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 204
    :try_start_3
    const-string v11, "EC"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 205
    invoke-virtual {v1, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 206
    invoke-static {v10}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v10

    .line 207
    invoke-virtual {v10}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v11

    .line 208
    invoke-static {v11}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 209
    array-length v12, v11

    move v13, v2

    :goto_3
    if-ge v13, v12, :cond_9

    aget-object v14, v11, v13

    .line 210
    invoke-virtual {v10, v14}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v15

    packed-switch v15, :pswitch_data_2

    .line 244
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->UNKNOWN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_4

    .line 245
    :pswitch_14
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_UPDATED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_4

    .line 246
    :pswitch_15
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->INVALID_VALUE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_4

    .line 247
    :pswitch_16
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_4

    .line 248
    :pswitch_17
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->USER_DEFINED_DATA_NOT_ENALBLED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_4

    .line 249
    :pswitch_18
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_4

    .line 250
    :pswitch_19
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_4

    .line 251
    :pswitch_1a
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TLV_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_4

    .line 252
    :pswitch_1b
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->LENGTH_INCORRECT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_4

    .line 253
    :pswitch_1c
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->TAG_NOT_FOUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    goto :goto_4

    .line 254
    :pswitch_1d
    sget-object v15, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    .line 287
    :goto_4
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    if-ne v2, v5, :cond_5

    .line 288
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v4, v14, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v13, v13, 0x1

    const/4 v2, 0x0

    const/16 v5, 0x10

    goto :goto_3

    .line 292
    :cond_6
    invoke-virtual {v1, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    const/16 v5, 0x10

    :try_start_5
    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    packed-switch v2, :pswitch_data_3

    .line 326
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_5

    .line 327
    :pswitch_1e
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_5

    .line 328
    :pswitch_1f
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa009:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_5

    .line 329
    :pswitch_20
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_5

    .line 330
    :pswitch_21
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa007:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_5

    .line 331
    :pswitch_22
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_5

    .line 332
    :pswitch_23
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_5

    .line 333
    :pswitch_24
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_5

    .line 334
    :pswitch_25
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_5

    .line 335
    :pswitch_26
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    goto :goto_5

    .line 336
    :pswitch_27
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;

    .line 369
    :goto_5
    iget-object v11, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v12, v11, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    sget-object v13, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    if-ne v12, v13, :cond_8

    .line 370
    iget-object v11, v11, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa002()Lcom/stripe/bbpos/bbdevice/ccc039zz;

    move-result-object v11

    invoke-virtual {v11}, Lcom/stripe/bbpos/bbdevice/ccc039zz;->aaa007()Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    move-result-object v11

    sget-object v12, Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;->aaa095:Lcom/stripe/bbpos/bbdevice/ccc039zz$aaa001zz;

    if-ne v11, v12, :cond_7

    .line 371
    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 373
    :cond_7
    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 376
    :cond_8
    check-cast v10, Ljava/lang/String;

    invoke-virtual {v3, v10, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_2
    const/16 v5, 0x10

    :catch_3
    :cond_9
    :goto_6
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 383
    :cond_a
    :try_start_6
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    iget-object v2, v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    sget-object v5, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    if-ne v2, v5, :cond_c

    .line 384
    invoke-static {v3}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa000(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    .line 385
    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 386
    const-string v2, "dcpos"

    invoke-virtual {v1, v2, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_b
    iget-object v2, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v2, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa017(Ljava/util/Hashtable;)V

    goto :goto_7

    .line 390
    :cond_c
    invoke-virtual {v1, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018(Ljava/util/Hashtable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_7

    .line 393
    :catch_4
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    :cond_d
    :goto_7
    return-void

    .line 396
    :cond_e
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    .line 399
    :cond_f
    iget-object v1, v0, Lcom/stripe/bbpos/bbdevice/bbb005zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    invoke-virtual {v1, v2, v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
    .end packed-switch
.end method
