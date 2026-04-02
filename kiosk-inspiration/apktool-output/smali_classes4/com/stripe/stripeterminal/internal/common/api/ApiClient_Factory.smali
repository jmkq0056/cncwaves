.class public final Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;
.super Ljava/lang/Object;
.source "ApiClient_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final apiRequestFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final restClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
            ">;"
        }
    .end annotation
.end field

.field private final unauthenticatedRestClientProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;->restClientProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;->unauthenticatedRestClientProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/client/OkHttpClientProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/api/ApiClient;
    .locals 1

    .line 62
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;-><init>(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/api/ApiClient;
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;->apiRequestFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;->restClientProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;->unauthenticatedRestClientProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/jvmcore/client/OkHttpClientProvider;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;->newInstance(Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/jvmcore/client/OkHttpClientProvider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient_Factory;->get()Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    move-result-object v0

    return-object v0
.end method
