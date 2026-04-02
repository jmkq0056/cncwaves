.class Lcom/sun/jna/platform/win32/COM/util/Convert;
.super Ljava/lang/Object;
.source "Convert.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static free(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/platform/win32/Variant$VARIANT;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 329
    const-class v0, Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    if-eqz p0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 333
    instance-of p1, p0, Lcom/sun/jna/platform/win32/WTypes$BSTR;

    if-eqz p1, :cond_1

    .line 334
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    check-cast p0, Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-interface {p1, p0}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    :cond_1
    return-void
.end method

.method public static free(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Object;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/COM/util/Convert;->free(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Class;)V

    return-void
.end method

.method public static toComEnum(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sun/jna/platform/win32/COM/util/IComEnum;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/platform/win32/COM/util/IComEnum;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 303
    :try_start_0
    const-string v1, "values"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 304
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/COM/util/IComEnum;

    check-cast p0, [Lcom/sun/jna/platform/win32/COM/util/IComEnum;

    .line 305
    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 306
    invoke-interface {v3}, Lcom/sun/jna/platform/win32/COM/util/IComEnum;->getValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-object v0
.end method

.method public static toJavaObject(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;ZZ)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/platform/win32/Variant$VARIANT;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;",
            "ZZ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    .line 148
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v1

    if-eqz v1, :cond_22

    .line 149
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto/16 :goto_b

    :cond_0
    if-eqz p1, :cond_2

    .line 153
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 159
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 166
    :cond_2
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v1

    const/16 v2, 0x400c

    if-ne v1, v2, :cond_3

    .line 167
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    if-eqz p1, :cond_4

    .line 172
    const-class v3, Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 176
    :cond_4
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result p1

    .line 178
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_9

    const/16 v4, 0x4000

    if-eq v3, v4, :cond_8

    if-eq v3, v2, :cond_7

    const/16 v2, 0x400e

    if-eq v3, v2, :cond_6

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    and-int/lit16 p1, p1, 0x2000

    if-lez p1, :cond_5

    .line 238
    const-class p1, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;

    goto :goto_1

    :cond_5
    move-object p1, v0

    goto :goto_1

    .line 197
    :pswitch_0
    const-class p1, Ljava/lang/Long;

    goto :goto_1

    .line 187
    :pswitch_1
    const-class p1, Ljava/lang/Character;

    goto :goto_1

    .line 181
    :pswitch_2
    const-class p1, Ljava/lang/Byte;

    goto :goto_1

    .line 206
    :pswitch_3
    const-class p1, Ljava/lang/Boolean;

    goto :goto_1

    .line 209
    :pswitch_4
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$SCODE;

    goto :goto_1

    .line 224
    :pswitch_5
    const-class p1, Lcom/sun/jna/platform/win32/COM/util/IDispatch;

    goto :goto_1

    .line 218
    :pswitch_6
    const-class p1, Ljava/lang/String;

    goto :goto_1

    .line 215
    :pswitch_7
    const-class p1, Ljava/util/Date;

    goto :goto_1

    .line 212
    :pswitch_8
    const-class p1, Lcom/sun/jna/platform/win32/OaIdl$CURRENCY;

    goto :goto_1

    .line 203
    :pswitch_9
    const-class p1, Ljava/lang/Double;

    goto :goto_1

    .line 200
    :pswitch_a
    const-class p1, Ljava/lang/Float;

    goto :goto_1

    .line 193
    :pswitch_b
    const-class p1, Ljava/lang/Integer;

    goto :goto_1

    .line 184
    :pswitch_c
    const-class p1, Ljava/lang/Short;

    goto :goto_1

    .line 233
    :cond_6
    const-class p1, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;

    goto :goto_1

    .line 227
    :cond_7
    const-class p1, Lcom/sun/jna/platform/win32/Variant;

    goto :goto_1

    .line 230
    :cond_8
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    goto :goto_1

    .line 221
    :cond_9
    const-class p1, Lcom/sun/jna/platform/win32/COM/IUnknown;

    .line 244
    :cond_a
    :goto_1
    const-class v0, Ljava/lang/Byte;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_9

    .line 246
    :cond_b
    const-class v0, Ljava/lang/Short;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_8

    .line 248
    :cond_c
    const-class v0, Ljava/lang/Character;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto/16 :goto_7

    .line 250
    :cond_d
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_6

    .line 252
    :cond_e
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-class v0, Lcom/sun/jna/platform/win32/COM/util/IComEnum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_5

    .line 254
    :cond_f
    const-class v0, Ljava/lang/Float;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_4

    .line 256
    :cond_10
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3

    .line 258
    :cond_11
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2

    .line 260
    :cond_12
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 261
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->dateValue()Ljava/util/Date;

    move-result-object p2

    goto/16 :goto_a

    .line 262
    :cond_13
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 263
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->stringValue()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_a

    .line 264
    :cond_14
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    if-eqz v0, :cond_16

    .line 265
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    if-eqz p1, :cond_15

    .line 266
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 267
    invoke-virtual {p2, p1, v0}, Lcom/sun/jna/platform/win32/COM/util/ObjectFactory;->createProxy(Ljava/lang/Class;Lcom/sun/jna/platform/win32/COM/IDispatch;)Ljava/lang/Object;

    move-result-object p2

    if-nez p3, :cond_1f

    .line 271
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/COM/Dispatch;->Release()I

    goto :goto_a

    :cond_15
    move-object p2, v0

    goto :goto_a

    .line 287
    :cond_16
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object p2

    goto :goto_a

    .line 259
    :cond_17
    :goto_2
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->booleanValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_a

    .line 257
    :cond_18
    :goto_3
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->doubleValue()D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_a

    .line 255
    :cond_19
    :goto_4
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->floatValue()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_a

    .line 253
    :cond_1a
    :goto_5
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->longValue()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_a

    .line 251
    :cond_1b
    :goto_6
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_a

    .line 249
    :cond_1c
    :goto_7
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->intValue()I

    move-result p2

    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    goto :goto_a

    .line 247
    :cond_1d
    :goto_8
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->shortValue()S

    move-result p2

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    goto :goto_a

    .line 245
    :cond_1e
    :goto_9
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->byteValue()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    .line 290
    :cond_1f
    :goto_a
    const-class p3, Lcom/sun/jna/platform/win32/COM/util/IComEnum;

    invoke-virtual {p3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_20

    .line 291
    invoke-static {p1, p2}, Lcom/sun/jna/platform/win32/COM/util/Convert;->toComEnum(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sun/jna/platform/win32/COM/util/IComEnum;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :cond_20
    if-eqz p4, :cond_21

    .line 295
    invoke-static {p0, p2}, Lcom/sun/jna/platform/win32/COM/util/Convert;->free(Lcom/sun/jna/platform/win32/Variant$VARIANT;Ljava/lang/Object;)V

    :cond_21
    return-object p2

    :cond_22
    :goto_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method public static toVariant(Ljava/lang/Object;)Lcom/sun/jna/platform/win32/Variant$VARIANT;
    .locals 10

    .line 92
    instance-of v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    if-eqz v0, :cond_0

    .line 93
    check-cast p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    return-object p0

    .line 94
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_1

    .line 95
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(B)V

    return-object v0

    .line 96
    :cond_1
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 97
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    check-cast p0, Ljava/lang/Character;

    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(C)V

    return-object v0

    .line 98
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 99
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(S)V

    return-object v0

    .line 100
    :cond_3
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 101
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(I)V

    return-object v0

    .line 102
    :cond_4
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 103
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(J)V

    return-object v0

    .line 104
    :cond_5
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 105
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(F)V

    return-object v0

    .line 106
    :cond_6
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_7

    .line 107
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(D)V

    return-object v0

    .line 108
    :cond_7
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 109
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 110
    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 111
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Z)V

    return-object v0

    .line 112
    :cond_9
    instance-of v0, p0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    if-eqz v0, :cond_a

    .line 113
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    check-cast p0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Lcom/sun/jna/platform/win32/COM/Dispatch;)V

    return-object v0

    .line 114
    :cond_a
    instance-of v0, p0, Ljava/util/Date;

    if-eqz v0, :cond_b

    .line 115
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    check-cast p0, Ljava/util/Date;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Ljava/util/Date;)V

    return-object v0

    .line 116
    :cond_b
    instance-of v0, p0, Ljava/lang/reflect/Proxy;

    if-eqz v0, :cond_c

    .line 117
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object p0

    .line 118
    check-cast p0, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;

    .line 119
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/util/ProxyObject;->getRawDispatch()Lcom/sun/jna/platform/win32/COM/IDispatch;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Lcom/sun/jna/platform/win32/COM/IDispatch;)V

    return-object v0

    .line 120
    :cond_c
    instance-of v0, p0, Lcom/sun/jna/platform/win32/COM/util/IComEnum;

    if-eqz v0, :cond_d

    .line 121
    check-cast p0, Lcom/sun/jna/platform/win32/COM/util/IComEnum;

    .line 122
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$LONG;

    invoke-interface {p0}, Lcom/sun/jna/platform/win32/COM/util/IComEnum;->getValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$LONG;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Lcom/sun/jna/platform/win32/WinDef$LONG;)V

    return-object v0

    :cond_d
    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 126
    const-class v1, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-virtual {v1}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    check-cast v1, [Ljava/lang/reflect/Constructor;

    array-length v2, v1

    const/4 v3, 0x0

    move-object v5, v0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_10

    aget-object v6, v1, v4

    .line 127
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 128
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    aget-object v7, v7, v3

    .line 129
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_e

    move-object v5, v6

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_f
    move-object v5, v0

    :cond_10
    if-eqz v5, :cond_11

    .line 137
    :try_start_0
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_11
    return-object v0
.end method
