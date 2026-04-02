.class public final Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;
.super Ljava/lang/Object;
.source "DefaultReaderSettingsRepository.kt"

# interfaces
.implements Lcom/stripe/core/hardware/reactive/emv/ReaderSettingsRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u000fH\u0096@\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u0082\u0002\u000b\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;",
        "Lcom/stripe/core/hardware/reactive/emv/ReaderSettingsRepository;",
        "appScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "configurationHandler",
        "Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;",
        "(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)V",
        "readerSettings",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "Lcom/stripe/hardware/emv/ReaderSettings;",
        "getReaderSettings",
        "()Lkotlinx/coroutines/flow/MutableStateFlow;",
        "awaitRefresh",
        "Lkotlin/Result;",
        "awaitRefresh-IoAF18A",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refresh",
        "",
        "hardware-reactive_release"
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
.field private final appScope:Lkotlinx/coroutines/CoroutineScope;

.field private final configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final readerSettings:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/hardware/emv/ReaderSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;)V
    .locals 1

    const-string v0, "appScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationHandler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;->appScope:Lkotlinx/coroutines/CoroutineScope;

    .line 12
    iput-object p2, p0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 13
    iput-object p3, p0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;->configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    const/4 p1, 0x0

    .line 15
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;->readerSettings:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-void
.end method

.method public static final synthetic access$getConfigurationHandler$p(Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;)Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;->configurationHandler:Lcom/stripe/core/hardware/reactive/emv/ConfigurationHandler;

    return-object p0
.end method


# virtual methods
.method public awaitRefresh-IoAF18A(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Result<",
            "Lcom/stripe/hardware/emv/ReaderSettings;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$1;

    iget v1, v0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$1;

    invoke-direct {v0, p0, p1}, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 23
    iget v2, v0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    new-instance v2, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$2;-><init>(Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    iput v3, v0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$awaitRefresh$1;->label:I

    invoke-static {p1, v2, v0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getReaderSettings()Lkotlinx/coroutines/flow/MutableStateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Lcom/stripe/hardware/emv/ReaderSettings;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;->readerSettings:Lkotlinx/coroutines/flow/MutableStateFlow;

    return-object v0
.end method

.method public bridge synthetic getReaderSettings()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;->getReaderSettings()Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public refresh()V
    .locals 6

    .line 18
    iget-object v0, p0, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;->appScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance v1, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$refresh$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository$refresh$1;-><init>(Lcom/stripe/core/hardware/reactive/emv/DefaultReaderSettingsRepository;Lkotlin/coroutines/Continuation;)V

    move-object v3, v1

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
