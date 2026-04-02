.class public final Lcom/stripe/stripeterminal/internal/common/extensions/NetworkStatusExtensionsKt;
.super Ljava/lang/Object;
.source "NetworkStatusExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/extensions/NetworkStatusExtensionsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u000c\u0010\u0003\u001a\u0004\u0018\u00010\u0002*\u00020\u0001\u00a8\u0006\u0004"
    }
    d2 = {
        "toProtoNetworkStatus",
        "Lcom/stripe/proto/api/sdk/NetworkStatus;",
        "Lcom/stripe/stripeterminal/external/models/NetworkStatus;",
        "toSdkNetworkStatus",
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
.method public static final toProtoNetworkStatus(Lcom/stripe/stripeterminal/external/models/NetworkStatus;)Lcom/stripe/proto/api/sdk/NetworkStatus;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/NetworkStatusExtensionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 8
    sget-object p0, Lcom/stripe/proto/api/sdk/NetworkStatus;->ONLINE:Lcom/stripe/proto/api/sdk/NetworkStatus;

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 7
    :cond_1
    sget-object p0, Lcom/stripe/proto/api/sdk/NetworkStatus;->OFFLINE:Lcom/stripe/proto/api/sdk/NetworkStatus;

    return-object p0

    .line 6
    :cond_2
    sget-object p0, Lcom/stripe/proto/api/sdk/NetworkStatus;->UNKNOWN:Lcom/stripe/proto/api/sdk/NetworkStatus;

    return-object p0
.end method

.method public static final toSdkNetworkStatus(Lcom/stripe/proto/api/sdk/NetworkStatus;)Lcom/stripe/stripeterminal/external/models/NetworkStatus;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/NetworkStatusExtensionsKt$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/NetworkStatus;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 14
    :cond_1
    sget-object p0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-object p0

    .line 13
    :cond_2
    sget-object p0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->ONLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-object p0

    .line 12
    :cond_3
    sget-object p0, Lcom/stripe/stripeterminal/external/models/NetworkStatus;->OFFLINE:Lcom/stripe/stripeterminal/external/models/NetworkStatus;

    return-object p0
.end method
