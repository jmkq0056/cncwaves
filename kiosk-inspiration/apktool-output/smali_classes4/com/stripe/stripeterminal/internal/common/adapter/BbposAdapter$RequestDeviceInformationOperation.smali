.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;
.super Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
.source "BbposAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestDeviceInformationOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation<",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V",
        "execute",
        "adapter_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1045
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/Adapter;)V

    return-void
.end method


# virtual methods
.method public execute()Lcom/stripe/hardware/status/ReaderInfo;
    .locals 7

    .line 1047
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getScope$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation$execute$1;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, v2, p0, v3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation$execute$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1074
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/hardware/status/ReaderInfo;

    return-object v0
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 1045
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;->execute()Lcom/stripe/hardware/status/ReaderInfo;

    move-result-object v0

    return-object v0
.end method
