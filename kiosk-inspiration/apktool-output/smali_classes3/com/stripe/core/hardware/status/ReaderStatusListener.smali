.class public interface abstract Lcom/stripe/core/hardware/status/ReaderStatusListener;
.super Ljava/lang/Object;
.source "ReaderStatusListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0012\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0012\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014H&J\u0016\u0010\u0015\u001a\u00020\u00032\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0017H&J\u0010\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0019\u001a\u00020\u001aH&J\u0010\u0010\u001b\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\u001dH&J\u0010\u0010\u001e\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020 H&J\u0010\u0010!\u001a\u00020\u00032\u0006\u0010\u001c\u001a\u00020\"H&J\u0018\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020%2\u0006\u0010\u0013\u001a\u00020&H&J\u0016\u0010\'\u001a\u00020\u00032\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020)0\u0017H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010\u001f\u001a\u00020 H&J\u0008\u0010+\u001a\u00020\u0003H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006,\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/hardware/status/ReaderStatusListener;",
        "",
        "handleAccountTypeSelectionRequest",
        "",
        "handleApplicationSelectionRequest",
        "handleCancellation",
        "type",
        "Lcom/stripe/hardware/status/CancellationType;",
        "handleDeviceBusy",
        "handleDeviceInfo",
        "info",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "handleLowBattery",
        "batteryStatus",
        "Lcom/stripe/hardware/status/ReaderBatteryStatus;",
        "handleReaderConnect",
        "reader",
        "Lcom/stripe/core/hardware/Reader;",
        "handleReaderDisconnect",
        "cause",
        "Lcom/stripe/hardware/status/DisconnectCause;",
        "handleReaderDiscovery",
        "readers",
        "",
        "handleReaderDisplayMessage",
        "message",
        "Lcom/stripe/hardware/status/ReaderDisplayMessage;",
        "handleReaderEvent",
        "event",
        "Lcom/stripe/hardware/status/ReaderEvent;",
        "handleReaderException",
        "e",
        "Lcom/stripe/hardware/status/ReaderException;",
        "handleReaderPowerEvent",
        "Lcom/stripe/hardware/status/ReaderPowerEvent;",
        "handleReaderRebootAttempt",
        "success",
        "",
        "Lcom/stripe/hardware/status/RebootCause;",
        "handleRequestReaderConfiguration",
        "options",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "handleSessionException",
        "handleSessionInitialized",
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
.method public static synthetic handleCancellation$default(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/status/CancellationType;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 22
    sget-object p1, Lcom/stripe/hardware/status/CancellationType;->CANCEL_WHILE_IDLE:Lcom/stripe/hardware/status/CancellationType;

    :cond_0
    invoke-interface {p0, p1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleCancellation(Lcom/stripe/hardware/status/CancellationType;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: handleCancellation"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic handleReaderDisconnect$default(Lcom/stripe/core/hardware/status/ReaderStatusListener;Lcom/stripe/hardware/status/DisconnectCause;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 42
    sget-object p1, Lcom/stripe/hardware/status/DisconnectCause;->UNKNOWN:Lcom/stripe/hardware/status/DisconnectCause;

    :cond_0
    invoke-interface {p0, p1}, Lcom/stripe/core/hardware/status/ReaderStatusListener;->handleReaderDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: handleReaderDisconnect"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract handleAccountTypeSelectionRequest()V
.end method

.method public abstract handleApplicationSelectionRequest()V
.end method

.method public abstract handleCancellation(Lcom/stripe/hardware/status/CancellationType;)V
.end method

.method public abstract handleDeviceBusy()V
.end method

.method public abstract handleDeviceInfo(Lcom/stripe/hardware/status/ReaderInfo;)V
.end method

.method public abstract handleLowBattery(Lcom/stripe/hardware/status/ReaderBatteryStatus;)V
.end method

.method public abstract handleReaderConnect(Lcom/stripe/core/hardware/Reader;)V
.end method

.method public abstract handleReaderDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V
.end method

.method public abstract handleReaderDiscovery(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/core/hardware/Reader;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleReaderDisplayMessage(Lcom/stripe/hardware/status/ReaderDisplayMessage;)V
.end method

.method public abstract handleReaderEvent(Lcom/stripe/hardware/status/ReaderEvent;)V
.end method

.method public abstract handleReaderException(Lcom/stripe/hardware/status/ReaderException;)V
.end method

.method public abstract handleReaderPowerEvent(Lcom/stripe/hardware/status/ReaderPowerEvent;)V
.end method

.method public abstract handleReaderRebootAttempt(ZLcom/stripe/hardware/status/RebootCause;)V
.end method

.method public abstract handleRequestReaderConfiguration(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleSessionException(Lcom/stripe/hardware/status/ReaderException;)V
.end method

.method public abstract handleSessionInitialized()V
.end method
