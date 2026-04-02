.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory;
.super Ljava/lang/Object;
.source "LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;",
        ">;"
    }
.end annotation


# instance fields
.field private final listenersProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;>;"
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
            "Ljava/util/Set<",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory;->listenersProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;>;)",
            "Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideLoggerExceptionListenerRegistryImpl$wiring(Ljava/util/Set;)Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;"
        }
    .end annotation

    .line 49
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;->provideLoggerExceptionListenerRegistryImpl$wiring(Ljava/util/Set;)Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory;->listenersProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory;->provideLoggerExceptionListenerRegistryImpl$wiring(Ljava/util/Set;)Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideLoggerExceptionListenerRegistryImpl$wiringFactory;->get()Lcom/stripe/jvmcore/logging/terminal/log/LoggerExceptionListenerRegistryImpl;

    move-result-object v0

    return-object v0
.end method
