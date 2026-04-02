.class public final Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt;
.super Ljava/lang/Object;
.source "OfflineBehaviorExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0003\u001a\u00020\u0002*\u00020\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "toOfflineBehavior",
        "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;",
        "toOfflineBehaviorProto",
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
.method public static final toOfflineBehavior(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;)Lcom/stripe/stripeterminal/external/models/OfflineBehavior;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 12
    sget-object p0, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->FORCE_OFFLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 11
    :cond_1
    sget-object p0, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->PREFER_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-object p0

    .line 10
    :cond_2
    sget-object p0, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-object p0
.end method

.method public static final toOfflineBehaviorProto(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/OfflineBehaviorExtensionsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 20
    sget-object p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->FORCE_OFFLINE:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 19
    :cond_1
    sget-object p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->PREFER_ONLINE:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    return-object p0

    .line 18
    :cond_2
    sget-object p0, Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;

    return-object p0
.end method
