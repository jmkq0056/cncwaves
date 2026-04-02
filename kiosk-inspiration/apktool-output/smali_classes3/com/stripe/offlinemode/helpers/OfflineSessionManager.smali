.class public interface abstract Lcom/stripe/offlinemode/helpers/OfflineSessionManager;
.super Ljava/lang/Object;
.source "OfflineSessionManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0008\u0010\n\u001a\u00020\u0003H&J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000c\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;",
        "",
        "activateReaderWhenOnline",
        "",
        "enqueueActivateReader",
        "Lkotlin/Function0;",
        "cancelPendingActivations",
        "reason",
        "",
        "clear",
        "startForwardingOfflinePayments",
        "stopForwardingOfflinePayments",
        "offlinemode_release"
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
.method public abstract activateReaderWhenOnline(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract cancelPendingActivations(Ljava/lang/String;)V
.end method

.method public abstract clear()V
.end method

.method public abstract startForwardingOfflinePayments()V
.end method

.method public abstract stopForwardingOfflinePayments(Ljava/lang/String;)V
.end method
