.class public final Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;
.super Ljava/lang/Object;
.source "ScanFailedFatalError.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/hardware/status/ScanFailedFatalError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;",
        "",
        "()V",
        "errorCodeToString",
        "",
        "errorCode",
        "",
        "hardware_release"
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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$errorCodeToString(Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;I)Ljava/lang/String;
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/stripe/core/hardware/status/ScanFailedFatalError$Companion;->errorCodeToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final errorCodeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 26
    const-string p1, "UNKNOWN"

    return-object p1

    .line 25
    :cond_0
    const-string p1, "SCAN_FAILED_SCANNING_TOO_FREQUENTLY"

    return-object p1

    .line 24
    :cond_1
    const-string p1, "SCAN_FAILED_OUT_OF_HARDWARE_RESOURCES"

    return-object p1

    .line 22
    :cond_2
    const-string p1, "SCAN_FAILED_FEATURE_UNSUPPORTED"

    return-object p1

    .line 23
    :cond_3
    const-string p1, "SCAN_FAILED_INTERNAL_ERROR"

    return-object p1

    .line 21
    :cond_4
    const-string p1, "SCAN_FAILED_APPLICATION_REGISTRATION_FAILED"

    return-object p1
.end method
