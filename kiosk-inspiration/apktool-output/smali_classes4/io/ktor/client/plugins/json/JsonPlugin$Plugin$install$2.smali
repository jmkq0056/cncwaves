.class final Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "JsonPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/json/JsonPlugin$Plugin;->install(Lio/ktor/client/plugins/json/JsonPlugin;Lio/ktor/client/HttpClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lio/ktor/util/pipeline/PipelineContext<",
        "Lio/ktor/client/statement/HttpResponseContainer;",
        "Lio/ktor/client/call/HttpClientCall;",
        ">;",
        "Lio/ktor/client/statement/HttpResponseContainer;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00022\u0006\u0010\u0005\u001a\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/ktor/util/pipeline/PipelineContext;",
        "Lio/ktor/client/statement/HttpResponseContainer;",
        "Lio/ktor/client/call/HttpClientCall;",
        "<name for destructuring parameter 0>"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "io.ktor.client.plugins.json.JsonPlugin$Plugin$install$2"
    f = "JsonPlugin.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0xdd,
        0xdf
    }
    m = "invokeSuspend"
    n = {
        "$this$intercept",
        "info"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field final synthetic $plugin:Lio/ktor/client/plugins/json/JsonPlugin;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lio/ktor/client/plugins/json/JsonPlugin;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/plugins/json/JsonPlugin;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->$plugin:Lio/ktor/client/plugins/json/JsonPlugin;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/client/statement/HttpResponseContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/util/pipeline/PipelineContext<",
            "Lio/ktor/client/statement/HttpResponseContainer;",
            "Lio/ktor/client/call/HttpClientCall;",
            ">;",
            "Lio/ktor/client/statement/HttpResponseContainer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;

    iget-object v1, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->$plugin:Lio/ktor/client/plugins/json/JsonPlugin;

    invoke-direct {v0, v1, p3}, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;-><init>(Lio/ktor/client/plugins/json/JsonPlugin;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/ktor/util/pipeline/PipelineContext;

    check-cast p2, Lio/ktor/client/statement/HttpResponseContainer;

    check-cast p3, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->invoke(Lio/ktor/util/pipeline/PipelineContext;Lio/ktor/client/statement/HttpResponseContainer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 214
    iget v1, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->label:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$3:Ljava/lang/Object;

    check-cast v1, Lio/ktor/util/reflect/TypeInfo;

    iget-object v3, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$2:Ljava/lang/Object;

    check-cast v3, Lio/ktor/client/plugins/json/JsonSerializer;

    iget-object v4, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$1:Ljava/lang/Object;

    check-cast v4, Lio/ktor/util/reflect/TypeInfo;

    iget-object v5, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$0:Ljava/lang/Object;

    check-cast v5, Lio/ktor/util/pipeline/PipelineContext;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$0:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lio/ktor/util/pipeline/PipelineContext;

    iget-object p1, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$1:Ljava/lang/Object;

    check-cast p1, Lio/ktor/client/statement/HttpResponseContainer;

    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponseContainer;->component1()Lio/ktor/util/reflect/TypeInfo;

    move-result-object v1

    invoke-virtual {p1}, Lio/ktor/client/statement/HttpResponseContainer;->component2()Ljava/lang/Object;

    move-result-object p1

    .line 215
    instance-of v4, p1, Lio/ktor/utils/io/ByteReadChannel;

    if-nez v4, :cond_3

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 216
    :cond_3
    iget-object v4, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->$plugin:Lio/ktor/client/plugins/json/JsonPlugin;

    invoke-static {v4}, Lio/ktor/client/plugins/json/JsonPlugin;->access$getIgnoredTypes$p(Lio/ktor/client/plugins/json/JsonPlugin;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1}, Lio/ktor/util/reflect/TypeInfo;->getType()Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 218
    :cond_4
    invoke-virtual {v5}, Lio/ktor/util/pipeline/PipelineContext;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/ktor/client/call/HttpClientCall;

    invoke-virtual {v4}, Lio/ktor/client/call/HttpClientCall;->getResponse()Lio/ktor/client/statement/HttpResponse;

    move-result-object v4

    check-cast v4, Lio/ktor/http/HttpMessage;

    invoke-static {v4}, Lio/ktor/http/HttpMessagePropertiesKt;->contentType(Lio/ktor/http/HttpMessage;)Lio/ktor/http/ContentType;

    move-result-object v4

    if-nez v4, :cond_5

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 219
    :cond_5
    iget-object v6, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->$plugin:Lio/ktor/client/plugins/json/JsonPlugin;

    invoke-virtual {v6, v4}, Lio/ktor/client/plugins/json/JsonPlugin;->canHandle$ktor_client_json(Lio/ktor/http/ContentType;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 221
    :cond_6
    iget-object v4, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->$plugin:Lio/ktor/client/plugins/json/JsonPlugin;

    invoke-virtual {v4}, Lio/ktor/client/plugins/json/JsonPlugin;->getSerializer()Lio/ktor/client/plugins/json/JsonSerializer;

    move-result-object v4

    move-object v6, p1

    check-cast v6, Lio/ktor/utils/io/ByteReadChannel;

    move-object v9, p0

    check-cast v9, Lkotlin/coroutines/Continuation;

    iput-object v5, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$2:Ljava/lang/Object;

    iput-object v1, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$3:Ljava/lang/Object;

    iput v3, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->label:I

    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lio/ktor/utils/io/ByteReadChannel$DefaultImpls;->readRemaining$default(Lio/ktor/utils/io/ByteReadChannel;JLkotlin/coroutines/Continuation;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    move-object v3, v4

    move-object v4, v1

    :goto_0
    check-cast p1, Lio/ktor/utils/io/core/Input;

    invoke-interface {v3, v1, p1}, Lio/ktor/client/plugins/json/JsonSerializer;->read(Lio/ktor/util/reflect/TypeInfo;Lio/ktor/utils/io/core/Input;)Ljava/lang/Object;

    move-result-object p1

    .line 222
    new-instance v1, Lio/ktor/client/statement/HttpResponseContainer;

    invoke-direct {v1, v4, p1}, Lio/ktor/client/statement/HttpResponseContainer;-><init>(Lio/ktor/util/reflect/TypeInfo;Ljava/lang/Object;)V

    .line 223
    move-object p1, p0

    check-cast p1, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x0

    iput-object v3, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$0:Ljava/lang/Object;

    iput-object v3, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$1:Ljava/lang/Object;

    iput-object v3, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$2:Ljava/lang/Object;

    iput-object v3, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->L$3:Ljava/lang/Object;

    iput v2, p0, Lio/ktor/client/plugins/json/JsonPlugin$Plugin$install$2;->label:I

    invoke-virtual {v5, v1, p1}, Lio/ktor/util/pipeline/PipelineContext;->proceedWith(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_1
    return-object v0

    .line 224
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
