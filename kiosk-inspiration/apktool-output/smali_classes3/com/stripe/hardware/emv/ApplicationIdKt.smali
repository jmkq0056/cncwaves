.class public final Lcom/stripe/hardware/emv/ApplicationIdKt;
.super Ljava/lang/Object;
.source "ApplicationId.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/emv/ApplicationIdKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationId.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationId.kt\ncom/stripe/hardware/emv/ApplicationIdKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,52:1\n1#2:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u001a\n\u0010\u0004\u001a\u00020\u0005*\u00020\u0001\u00a8\u0006\u0006"
    }
    d2 = {
        "getApplicationIdOrNull",
        "Lcom/stripe/hardware/emv/ApplicationId;",
        "id",
        "",
        "getCardBrandForApplication",
        "Lcom/stripe/misc/CardBrand;",
        "public_release"
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
.method public static final getApplicationIdOrNull(Ljava/lang/String;)Lcom/stripe/hardware/emv/ApplicationId;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 35
    invoke-static {}, Lcom/stripe/hardware/emv/ApplicationId;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/stripe/hardware/emv/ApplicationId;

    invoke-virtual {v3}, Lcom/stripe/hardware/emv/ApplicationId;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p0, v3, v4, v5, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    check-cast v0, Lcom/stripe/hardware/emv/ApplicationId;

    :cond_2
    return-object v0
.end method

.method public static final getCardBrandForApplication(Lcom/stripe/hardware/emv/ApplicationId;)Lcom/stripe/misc/CardBrand;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/stripe/hardware/emv/ApplicationIdKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/hardware/emv/ApplicationId;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 49
    sget-object p0, Lcom/stripe/misc/CardBrand;->UNKNOWN:Lcom/stripe/misc/CardBrand;

    return-object p0

    .line 48
    :pswitch_0
    sget-object p0, Lcom/stripe/misc/CardBrand;->UNIONPAY:Lcom/stripe/misc/CardBrand;

    return-object p0

    .line 47
    :pswitch_1
    sget-object p0, Lcom/stripe/misc/CardBrand;->DISCOVER:Lcom/stripe/misc/CardBrand;

    return-object p0

    .line 46
    :pswitch_2
    sget-object p0, Lcom/stripe/misc/CardBrand;->JCB:Lcom/stripe/misc/CardBrand;

    return-object p0

    .line 45
    :pswitch_3
    sget-object p0, Lcom/stripe/misc/CardBrand;->GIROCARD:Lcom/stripe/misc/CardBrand;

    return-object p0

    .line 44
    :pswitch_4
    sget-object p0, Lcom/stripe/misc/CardBrand;->EFTPOS_AU:Lcom/stripe/misc/CardBrand;

    return-object p0

    .line 43
    :pswitch_5
    sget-object p0, Lcom/stripe/misc/CardBrand;->AMEX:Lcom/stripe/misc/CardBrand;

    return-object p0

    .line 42
    :pswitch_6
    sget-object p0, Lcom/stripe/misc/CardBrand;->MASTERCARD:Lcom/stripe/misc/CardBrand;

    return-object p0

    .line 41
    :pswitch_7
    sget-object p0, Lcom/stripe/misc/CardBrand;->VISA:Lcom/stripe/misc/CardBrand;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
