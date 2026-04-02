.class public abstract Lcom/sun/jna/platform/win32/OaIdlUtil;
.super Ljava/lang/Object;
.source "OaIdlUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toPrimitiveArray(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Z)Ljava/lang/Object;
    .locals 11

    .line 105
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->accessData()Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->getDimensionCount()I

    move-result v1

    .line 108
    new-array v4, v1, [I

    .line 109
    new-array v5, v1, [I

    .line 110
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v6

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v7, 0x1

    if-ge v3, v1, :cond_0

    .line 113
    invoke-virtual {p0, v3}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->getUBound(I)I

    move-result v8

    invoke-virtual {p0, v3}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->getLBound(I)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v8, v7

    aput v8, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    move v8, v3

    :goto_1
    if-ltz v8, :cond_2

    if-ne v8, v3, :cond_1

    .line 118
    aput v7, v5, v8

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v8, 0x1

    .line 120
    aget v10, v5, v9

    aget v9, v4, v9

    mul-int/2addr v10, v9

    aput v10, v5, v8

    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    .line 128
    aget v1, v5, v2

    aget v3, v4, v2

    mul-int/2addr v1, v3

    const-wide/16 v7, 0x0

    packed-switch v6, :pswitch_data_0

    .line 168
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    goto :goto_4

    .line 134
    :pswitch_1
    invoke-virtual {v0, v7, v8, v1}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v0

    goto :goto_3

    .line 159
    :pswitch_2
    new-instance v3, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-direct {v3, v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Lcom/sun/jna/Pointer;)V

    .line 160
    invoke-virtual {v3, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    goto :goto_3

    .line 156
    :pswitch_3
    invoke-virtual {v0, v7, v8, v1}, Lcom/sun/jna/Pointer;->getPointerArray(JI)[Lcom/sun/jna/Pointer;

    move-result-object v0

    goto :goto_3

    .line 153
    :pswitch_4
    invoke-virtual {v0, v7, v8, v1}, Lcom/sun/jna/Pointer;->getDoubleArray(JI)[D

    move-result-object v0

    goto :goto_3

    .line 149
    :pswitch_5
    invoke-virtual {v0, v7, v8, v1}, Lcom/sun/jna/Pointer;->getFloatArray(JI)[F

    move-result-object v0

    goto :goto_3

    .line 146
    :pswitch_6
    invoke-virtual {v0, v7, v8, v1}, Lcom/sun/jna/Pointer;->getIntArray(JI)[I

    move-result-object v0

    goto :goto_3

    .line 139
    :pswitch_7
    invoke-virtual {v0, v7, v8, v1}, Lcom/sun/jna/Pointer;->getShortArray(JI)[S

    move-result-object v0

    .line 171
    :goto_3
    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    .line 172
    new-array v7, v2, [I

    move-object v2, v0

    invoke-static/range {v2 .. v7}, Lcom/sun/jna/platform/win32/OaIdlUtil;->toPrimitiveArray(Ljava/lang/Object;Ljava/lang/Object;[I[II[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->unaccessData()V

    if-eqz p1, :cond_3

    .line 177
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->destroy()V

    :cond_3
    return-object v3

    .line 168
    :goto_4
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied Array has no dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 175
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->unaccessData()V

    if-eqz p1, :cond_5

    .line 177
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->destroy()V

    .line 179
    :cond_5
    throw v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private static toPrimitiveArray(Ljava/lang/Object;Ljava/lang/Object;[I[II[I)V
    .locals 10

    .line 183
    array-length v0, p5

    .line 184
    array-length v1, p5

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v8, v1, [I

    const/4 v1, 0x0

    .line 185
    invoke-static {p5, v1, v8, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v9, v1

    .line 186
    :goto_0
    aget v3, p2, v0

    if-ge v9, v3, :cond_3

    .line 187
    aput v9, v8, v0

    .line 188
    array-length v3, p2

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_2

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v0, :cond_0

    .line 191
    aget v5, p3, v3

    aget v6, p5, v3

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 193
    :cond_0
    aget v3, v8, v0

    add-int/2addr v4, v3

    .line 195
    const-string v5, "Type not supported: "

    packed-switch p4, :pswitch_data_0

    .line 277
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 201
    :pswitch_1
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 229
    :pswitch_2
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    .line 230
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 268
    :pswitch_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :pswitch_4
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->byteValue()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 236
    :pswitch_5
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 253
    :pswitch_6
    new-instance v5, Lcom/sun/jna/platform/win32/WinDef$SCODE;

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->intValue()I

    move-result v4

    int-to-long v6, v4

    invoke-direct {v5, v6, v7}, Lcom/sun/jna/platform/win32/WinDef$SCODE;-><init>(J)V

    invoke-static {p1, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 265
    :pswitch_7
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->stringValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 262
    :pswitch_8
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->dateValue()Ljava/util/Date;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 259
    :pswitch_9
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 256
    :pswitch_a
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->floatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 250
    :pswitch_b
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 244
    :pswitch_c
    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->shortValue()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_d
    const/4 v4, 0x0

    .line 233
    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 197
    :pswitch_e
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->getShort(Ljava/lang/Object;I)S

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    move v4, v1

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 214
    :pswitch_f
    new-instance v5, Lcom/sun/jna/platform/win32/WinDef$SCODE;

    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    int-to-long v6, v4

    invoke-direct {v5, v6, v7}, Lcom/sun/jna/platform/win32/WinDef$SCODE;-><init>(J)V

    invoke-static {p1, v3, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 226
    :pswitch_10
    new-instance v5, Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/jna/Pointer;

    invoke-direct {v5, v4}, Lcom/sun/jna/platform/win32/WTypes$BSTR;-><init>(Lcom/sun/jna/Pointer;)V

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 223
    :pswitch_11
    new-instance v5, Lcom/sun/jna/platform/win32/OaIdl$DATE;

    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/sun/jna/platform/win32/OaIdl$DATE;-><init>(D)V

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/OaIdl$DATE;->getAsJavaDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 220
    :pswitch_12
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 217
    :pswitch_13
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 211
    :pswitch_14
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    .line 205
    :pswitch_15
    invoke-static {p0, v4}, Ljava/lang/reflect/Array;->getShort(Ljava/lang/Object;I)S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_3
    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    goto :goto_4

    .line 280
    :cond_2
    invoke-static {p1, v9}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-static/range {v3 .. v8}, Lcom/sun/jna/platform/win32/OaIdlUtil;->toPrimitiveArray(Ljava/lang/Object;Ljava/lang/Object;[I[II[I)V

    :goto_4
    add-int/lit8 v9, v9, 0x1

    move-object p0, v3

    move-object p2, v5

    move-object p3, v6

    move p4, v7

    goto/16 :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_15
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_c
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
