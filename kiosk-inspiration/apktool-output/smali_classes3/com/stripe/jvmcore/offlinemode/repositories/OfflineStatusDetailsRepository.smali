.class public interface abstract Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;
.super Ljava/lang/Object;
.source "OfflineStatusDetailsRepository.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0004H&R\u001a\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0008\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/jvmcore/offlinemode/repositories/OfflineStatusDetailsRepository;",
        "",
        "offlineStatusDetailsStateFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
        "getOfflineStatusDetailsStateFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "requestOfflineStatusDetailsUpdate",
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
.method public abstract getOfflineStatusDetailsStateFlow()Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestOfflineStatusDetailsUpdate()Lcom/stripe/stripeterminal/external/models/OfflineStatusDetails;
.end method
