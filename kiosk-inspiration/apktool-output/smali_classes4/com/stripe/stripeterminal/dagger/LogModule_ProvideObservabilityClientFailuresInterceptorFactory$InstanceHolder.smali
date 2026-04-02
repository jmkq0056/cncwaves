.class final Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "LogModule_ProvideObservabilityClientFailuresInterceptorFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstanceHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;

    invoke-direct {v0}, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;-><init>()V

    sput-object v0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory$InstanceHolder;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;
    .locals 1

    .line 39
    sget-object v0, Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory$InstanceHolder;->INSTANCE:Lcom/stripe/stripeterminal/dagger/LogModule_ProvideObservabilityClientFailuresInterceptorFactory;

    return-object v0
.end method
