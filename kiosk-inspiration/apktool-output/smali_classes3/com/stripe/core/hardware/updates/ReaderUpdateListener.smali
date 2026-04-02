.class public interface abstract Lcom/stripe/core/hardware/updates/ReaderUpdateListener;
.super Ljava/lang/Object;
.source "ReaderUpdateListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000f\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;",
        "",
        "handleConfigUpdateComplete",
        "",
        "handleFirmwareUpdateComplete",
        "handleKeyUpdateComplete",
        "handleReaderUpdateException",
        "e",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateException;",
        "handleTargetReaderVersion",
        "version",
        "Lcom/stripe/core/hardware/updates/ReaderVersion;",
        "handleUpdateProgress",
        "progress",
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


# virtual methods
.method public abstract handleConfigUpdateComplete()V
.end method

.method public abstract handleFirmwareUpdateComplete()V
.end method

.method public abstract handleKeyUpdateComplete()V
.end method

.method public abstract handleReaderUpdateException(Lcom/stripe/core/hardware/updates/ReaderUpdateException;)V
.end method

.method public abstract handleTargetReaderVersion(Lcom/stripe/core/hardware/updates/ReaderVersion;)V
.end method

.method public abstract handleUpdateProgress(F)V
.end method
