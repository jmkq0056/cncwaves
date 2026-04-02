.class final synthetic Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion$provideRestClient$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MainlandModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion;->provideRestClient(Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/restclient/RestClient$BaseUrlProvider;Lcom/stripe/jvmcore/restclient/IdempotencyRetryInterceptor;Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;Lcom/stripe/jvmcore/restclient/RestInterceptor;Lcom/stripe/jvmcore/logginginterceptors/TraceLoggingRestClientInterceptor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/restclient/RestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    const-string v5, "get()Lokhttp3/OkHttpClient;"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-string v4, "get"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion$provideRestClient$1;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/MainlandModule$Companion$provideRestClient$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    invoke-interface {v0}, Lcom/stripe/jvmcore/client/OkHttpClientProvider;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
