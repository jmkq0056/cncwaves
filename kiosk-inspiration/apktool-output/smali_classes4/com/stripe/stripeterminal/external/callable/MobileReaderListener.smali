.class public interface abstract Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;
.super Ljava/lang/Object;
.source "MobileReaderListener.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/external/callable/ReaderListenable;
.implements Lcom/stripe/stripeterminal/external/callable/ReaderReconnectionListener;
.implements Lcom/stripe/stripeterminal/external/callable/ReaderDisconnectListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u001e\u0010\u000c\u001a\u00020\u00052\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u0012\u001a\u00020\u0005H\u0016J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u0007H\u0016J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u001a\u0010\u001b\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u001e\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;",
        "Lcom/stripe/stripeterminal/external/callable/ReaderListenable;",
        "Lcom/stripe/stripeterminal/external/callable/ReaderReconnectionListener;",
        "Lcom/stripe/stripeterminal/external/callable/ReaderDisconnectListener;",
        "onBatteryLevelUpdate",
        "",
        "batteryLevel",
        "",
        "batteryStatus",
        "Lcom/stripe/stripeterminal/external/models/BatteryStatus;",
        "isCharging",
        "",
        "onFinishInstallingUpdate",
        "update",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onReportAvailableUpdate",
        "onReportLowBatteryWarning",
        "onReportReaderSoftwareUpdateProgress",
        "progress",
        "onRequestReaderDisplayMessage",
        "message",
        "Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;",
        "onRequestReaderInput",
        "options",
        "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;",
        "onStartInstallingUpdate",
        "cancelable",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "public_release"
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
.method public static synthetic onFinishInstallingUpdate$default(Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;ILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 52
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;->onFinishInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onFinishInstallingUpdate"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onBatteryLevelUpdate(FLcom/stripe/stripeterminal/external/models/BatteryStatus;Z)V
    .locals 0

    const-string p1, "batteryStatus"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onFinishInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 0

    return-void
.end method

.method public onReportAvailableUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 1

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReportLowBatteryWarning()V
    .locals 0

    return-void
.end method

.method public onReportReaderSoftwareUpdateProgress(F)V
    .locals 0

    return-void
.end method

.method public onRequestReaderDisplayMessage(Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestReaderInput(Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;)V
    .locals 1

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStartInstallingUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V
    .locals 0

    const-string p2, "update"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
