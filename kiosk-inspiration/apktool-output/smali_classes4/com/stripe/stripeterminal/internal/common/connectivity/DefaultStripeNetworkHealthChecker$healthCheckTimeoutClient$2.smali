.class final Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$healthCheckTimeoutClient$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultStripeNetworkHealthChecker.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;-><init>(Lcom/stripe/stripeterminal/internal/common/connectivity/StripeHealthCheckerStateMachine;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lokhttp3/HttpUrl;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/OkHttpClient;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/OkHttpClient;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$healthCheckTimeoutClient$2;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$healthCheckTimeoutClient$2;->invoke()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lokhttp3/OkHttpClient;
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$healthCheckTimeoutClient$2;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->access$getNetworkClientProvider$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/jvmcore/client/OkHttpClientProvider;->get()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker$healthCheckTimeoutClient$2;->this$0:Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;

    .line 35
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;->access$getOfflineConfigHelper$p(Lcom/stripe/stripeterminal/internal/common/connectivity/DefaultStripeNetworkHealthChecker;)Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->getHttpHealthCheckTimeoutMs()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 36
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 38
    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
