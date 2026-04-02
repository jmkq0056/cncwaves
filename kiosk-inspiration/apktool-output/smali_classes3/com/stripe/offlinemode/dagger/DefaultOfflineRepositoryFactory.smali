.class public interface abstract Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;
.super Ljava/lang/Object;
.source "DefaultOfflineRepositoryFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0005H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0006\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/offlinemode/dagger/DefaultOfflineRepositoryFactory;",
        "",
        "create",
        "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
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
.method public abstract create(Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;)",
            "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;"
        }
    .end annotation
.end method
