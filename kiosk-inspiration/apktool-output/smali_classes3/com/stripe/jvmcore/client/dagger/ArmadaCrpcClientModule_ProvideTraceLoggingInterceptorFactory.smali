.class public final Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory;
.super Ljava/lang/Object;
.source "ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final traceLoggingInterceptorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
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
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory;->traceLoggingInterceptorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
            ">;)",
            "Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory;"
        }
    .end annotation

    .line 45
    new-instance v0, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTraceLoggingInterceptor(Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;)Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
    .locals 1

    .line 50
    sget-object v0, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;->INSTANCE:Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule;->provideTraceLoggingInterceptor(Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;)Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory;->traceLoggingInterceptorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    invoke-static {v0}, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory;->provideTraceLoggingInterceptor(Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;)Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/stripe/jvmcore/client/dagger/ArmadaCrpcClientModule_ProvideTraceLoggingInterceptorFactory;->get()Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    move-result-object v0

    return-object v0
.end method
