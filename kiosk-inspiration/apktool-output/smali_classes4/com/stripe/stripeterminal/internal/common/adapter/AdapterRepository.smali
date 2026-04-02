.class public interface abstract Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;
.super Ljava/lang/Object;
.source "AdapterRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0012\u0010\t\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\n\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;",
        "",
        "currentAdapter",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "getCurrentAdapter",
        "()Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "getAdapterByDiscoveryConfiguration",
        "discoveryConfiguration",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "setAdapterByDiscoveryConfiguration",
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


# virtual methods
.method public abstract getAdapterByDiscoveryConfiguration(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/Adapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method

.method public abstract getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;
.end method

.method public abstract setAdapterByDiscoveryConfiguration(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/Adapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation
.end method
