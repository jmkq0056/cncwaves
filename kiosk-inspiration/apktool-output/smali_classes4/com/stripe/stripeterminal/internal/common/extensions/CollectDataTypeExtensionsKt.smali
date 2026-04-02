.class public final Lcom/stripe/stripeterminal/internal/common/extensions/CollectDataTypeExtensionsKt;
.super Ljava/lang/Object;
.source "CollectDataTypeExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/extensions/CollectDataTypeExtensionsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toSdkCollectDataType",
        "Lcom/stripe/stripeterminal/external/models/CollectDataType;",
        "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;",
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
.method public static final toSdkCollectDataType(Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;)Lcom/stripe/stripeterminal/external/models/CollectDataType;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/extensions/CollectDataTypeExtensionsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 8
    :cond_1
    sget-object p0, Lcom/stripe/stripeterminal/external/models/CollectDataType;->MAGSTRIPE:Lcom/stripe/stripeterminal/external/models/CollectDataType;

    return-object p0
.end method
