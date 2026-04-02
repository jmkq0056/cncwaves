.class public final Lcom/stripe/core/bbpos/mappers/CurrencyCodeMapperKt;
.super Ljava/lang/Object;
.source "CurrencyCodeMapper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/mappers/CurrencyCodeMapperKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCurrencyCodeMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CurrencyCodeMapper.kt\ncom/stripe/core/bbpos/mappers/CurrencyCodeMapperKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,107:1\n970#2:108\n1041#2,3:109\n37#3,2:112\n*S KotlinDebug\n*F\n+ 1 CurrencyCodeMapper.kt\ncom/stripe/core/bbpos/mappers/CurrencyCodeMapperKt\n*L\n101#1:108\n101#1:109,3\n101#1:112,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u001b\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\u0002\u00a2\u0006\u0002\u0010\u0005\u001a\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0007H\u0000\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "parseCurrencyCode",
        "",
        "Lcom/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;",
        "currencyCode",
        "Lcom/stripe/currency/CurrencyCode;",
        "(Lcom/stripe/currency/CurrencyCode;)[Lcom/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;",
        "convert",
        "",
        "(I)[Lcom/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;",
        "sdk_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final convert(I)[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;
    .locals 3

    .line 8
    sget-object v0, Lcom/stripe/currency/CurrencyCode;->Companion:Lcom/stripe/currency/CurrencyCode$Companion;

    invoke-virtual {v0, p0}, Lcom/stripe/currency/CurrencyCode$Companion;->getByCode(I)Lcom/stripe/currency/CurrencyCode;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/stripe/currency/CurrencyCode;->UNDEFINED:Lcom/stripe/currency/CurrencyCode;

    .line 9
    :cond_0
    sget-object v0, Lcom/stripe/core/bbpos/mappers/CurrencyCodeMapperKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/currency/CurrencyCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 91
    invoke-static {p0}, Lcom/stripe/core/bbpos/mappers/CurrencyCodeMapperKt;->parseCurrencyCode(Lcom/stripe/currency/CurrencyCode;)[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-result-object p0

    return-object p0

    .line 90
    :pswitch_0
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->ZLOTY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 89
    :pswitch_1
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->YUAN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 88
    :pswitch_2
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->YEN:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 86
    :pswitch_3
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->WON:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 83
    :pswitch_4
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->SOL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 81
    :pswitch_5
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->RUPIAH:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 79
    :pswitch_6
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->RUPEE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 72
    :pswitch_7
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->RIYAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 70
    :pswitch_8
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->REAL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 67
    :pswitch_9
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->POUND:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 58
    :pswitch_a
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->PESO:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 49
    :pswitch_b
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->NEW_SHEKEL:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 47
    :pswitch_c
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->LEI:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 44
    :pswitch_d
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->KRONE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 41
    :pswitch_e
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->KRONA:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 38
    :pswitch_f
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->EURO:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    :pswitch_10
    const/4 p0, 0x2

    .line 35
    new-array p0, p0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->A:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->DOLLAR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v2

    return-object p0

    .line 33
    :pswitch_11
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->DOLLAR:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 13
    :pswitch_12
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->DIRHAM:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    .line 10
    :pswitch_13
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->DONG:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    aput-object v0, p0, v1

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final parseCurrencyCode(Lcom/stripe/currency/CurrencyCode;)[Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;
    .locals 5

    const/4 v0, 0x1

    .line 96
    new-array v0, v0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->SPACE:Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 98
    :try_start_0
    sget-object v1, Lcom/stripe/currency/CurrencyCode;->UNDEFINED:Lcom/stripe/currency/CurrencyCode;

    if-ne p0, v1, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/currency/CurrencyCode;->name()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    move v3, v2

    .line 109
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 101
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;->valueOf(Ljava/lang/String;)Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    move-result-object v4

    .line 110
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 111
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 108
    check-cast v1, Ljava/util/Collection;

    .line 113
    new-array p0, v2, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;

    invoke-interface {v1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/stripe/bbpos/bbdevice/BBDeviceController$CurrencyCharacter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :goto_1
    return-object v0
.end method
