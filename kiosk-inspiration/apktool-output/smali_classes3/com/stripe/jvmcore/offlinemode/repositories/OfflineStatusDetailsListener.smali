.class public interface abstract Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;
.super Ljava/lang/Object;
.source "OfflineStatusDetailsListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u001a\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\n\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsListener;",
        "",
        "clear",
        "",
        "saveStats",
        "stats",
        "Lcom/stripe/proto/api/sdk/OfflineStats;",
        "networkStatus",
        "Lcom/stripe/proto/api/sdk/NetworkStatus;",
        "updateStats",
        "offlinemode"
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
.method public abstract clear()V
.end method

.method public abstract saveStats(Lcom/stripe/proto/api/sdk/OfflineStats;Lcom/stripe/proto/api/sdk/NetworkStatus;)V
.end method

.method public abstract updateStats(Lcom/stripe/proto/api/sdk/OfflineStats;)V
.end method
