.class public final Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;
.super Ljava/lang/Object;
.source "LogModule_ProvideObservabilityClientFailuresInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;
    .locals 1

    .line 32
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory$InstanceHolder;->access$000()Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideObservabilityClientFailuresInterceptor()Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
    .locals 1

    .line 36
    sget-object v0, Lcom/stripe/stripeterminal/dagger/LogModule;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/dagger/LogModule;->provideObservabilityClientFailuresInterceptor()Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;
    .locals 1

    .line 28
    invoke-static {}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;->provideObservabilityClientFailuresInterceptor()Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;->get()Lcom/stripe/jvmcore/crpcclient/CustomCrpcInterceptor;

    move-result-object v0

    return-object v0
.end method
