.class public final Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;
.super Ljava/lang/Object;
.source "CardRemovalDeviceBusyDetector.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u001d\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u0006\u0010\u000f\u001a\u00020\rJ\u0006\u0010\u0010\u001a\u00020\u000bR\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003j\u0002`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;",
        "",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "consecutiveDeviceBusyCount",
        "",
        "isPollingCardRemoval",
        "",
        "onCardRemovalDetectionEnd",
        "",
        "onCardRemovalDetectionStart",
        "onReturnCheckCardResult",
        "shouldFakeCardEmptyOnDeviceBusy",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector$Companion;

.field public static final MAX_CONSECUTIVE_DEVICE_BUSY_COUNT:I = 0xf


# instance fields
.field private consecutiveDeviceBusyCount:I

.field private isPollingCardRemoval:Z

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->Companion:Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public final onCardRemovalDetectionEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->isPollingCardRemoval:Z

    return-void
.end method

.method public final onCardRemovalDetectionStart()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->consecutiveDeviceBusyCount:I

    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->isPollingCardRemoval:Z

    return-void
.end method

.method public final onReturnCheckCardResult()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->consecutiveDeviceBusyCount:I

    return-void
.end method

.method public final shouldFakeCardEmptyOnDeviceBusy()Z
    .locals 4

    .line 44
    iget-boolean v0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->isPollingCardRemoval:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->consecutiveDeviceBusyCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->consecutiveDeviceBusyCount:I

    const/16 v3, 0xf

    if-lt v0, v3, :cond_0

    .line 45
    iget-object v0, p0, Lcom/stripe/core/bbpos/hardware/CardRemovalDeviceBusyDetector;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v3, "Error detecting card removal. Always receiving DEVICE_BUSY."

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, v3, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    return v2

    :cond_0
    return v1
.end method
