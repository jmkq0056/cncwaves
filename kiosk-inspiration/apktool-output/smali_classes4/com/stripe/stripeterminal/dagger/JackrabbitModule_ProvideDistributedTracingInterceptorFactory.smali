.class public final Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideDistributedTracingInterceptorFactory;
.super Ljava/lang/Object;
.source "JackrabbitModule_ProvideDistributedTracingInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/Interceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final traceManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideDistributedTracingInterceptorFactory;->traceManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideDistributedTracingInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideDistributedTracingInterceptorFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideDistributedTracingInterceptorFactory;

    invoke-direct {v0, p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideDistributedTracingInterceptorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDistributedTracingInterceptor(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)Lokhttp3/Interceptor;
    .locals 1

    .line 47
    sget-object v0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/JackrabbitModule;

    invoke-virtual {v0, p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule;->provideDistributedTracingInterceptor(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)Lokhttp3/Interceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/Interceptor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideDistributedTracingInterceptorFactory;->get()Lokhttp3/Interceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/Interceptor;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideDistributedTracingInterceptorFactory;->traceManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    invoke-static {v0}, Lcom/stripe/stripeterminal/dagger/JackrabbitModule_ProvideDistributedTracingInterceptorFactory;->provideDistributedTracingInterceptor(Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;)Lokhttp3/Interceptor;

    move-result-object v0

    return-object v0
.end method
