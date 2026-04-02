.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;
.super Ljava/lang/Object;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u001a\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;",
        "",
        "()V",
        "IDENTIFIER",
        "",
        "checkCustomerCancellationFeature",
        "",
        "enableCustomerCancellation",
        "",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "checkSurchargingFeature",
        "featureFlags",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "terminalsession_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$checkCustomerCancellationFeature(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;ZLcom/stripe/stripeterminal/external/models/DeviceType;)V
    .locals 0

    .line 3325
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;->checkCustomerCancellationFeature(ZLcom/stripe/stripeterminal/external/models/DeviceType;)V

    return-void
.end method

.method public static final synthetic access$checkSurchargingFeature(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lcom/stripe/stripeterminal/external/models/DeviceType;)V
    .locals 0

    .line 3325
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$Companion;->checkSurchargingFeature(Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lcom/stripe/stripeterminal/external/models/DeviceType;)V

    return-void
.end method

.method private final checkCustomerCancellationFeature(ZLcom/stripe/stripeterminal/external/models/DeviceType;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 3332
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->supportsEnableCustomerCancellation(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3333
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 3334
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 3333
    const-string v2, "Customer-initiated cancellation is only available on Android-based internet readers."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final checkSurchargingFeature(Lcom/stripe/proto/model/config/ReaderFeatureFlags;Lcom/stripe/stripeterminal/external/models/DeviceType;)V
    .locals 8

    .line 3344
    iget-boolean p1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 3351
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {p1, p2}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->supportsSurcharging(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3352
    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 3353
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNSUPPORTED_OPERATION:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 3352
    const-string v2, "Terminal Surcharging is only available on Android-based internet readers."

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    :cond_1
    return-void

    .line 3345
    :cond_2
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 3346
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 3345
    const-string v3, "Terminal Surcharging is not enabled on this account. Contact Stripe support to enable this feature."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method
