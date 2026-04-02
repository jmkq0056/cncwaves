.class public abstract Lcom/stripe/core/hardware/updates/ReaderUpdateException;
.super Ljava/lang/Exception;
.source "ReaderUpdateException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/hardware/updates/ReaderUpdateException$Canceled;,
        Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;,
        Lcom/stripe/core/hardware/updates/ReaderUpdateException$UnexpectedError;,
        Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;,
        Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedAfterCancellationReaderError;,
        Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedBatteryLow;,
        Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedInterrupted;,
        Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedReaderError;,
        Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00060\u0001j\u0002`\u0002:\t\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010B\u001b\u0008\u0004\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007\u0082\u0001\u0008\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "errorMessage",
        "",
        "cause",
        "",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "Canceled",
        "NotConnectedToReader",
        "UnexpectedError",
        "UpdateFailed",
        "UpdateFailedAfterCancellationReaderError",
        "UpdateFailedBatteryLow",
        "UpdateFailedInterrupted",
        "UpdateFailedReaderError",
        "UpdateFailedServerError",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException$Canceled;",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException$NotConnectedToReader;",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UnexpectedError;",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailed;",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedBatteryLow;",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedInterrupted;",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedReaderError;",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException$UpdateFailedServerError;",
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
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    move-object p2, p4

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/stripe/core/hardware/updates/ReaderUpdateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/core/hardware/updates/ReaderUpdateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
