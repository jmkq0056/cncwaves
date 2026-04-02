.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;
.super Ljava/lang/Object;
.source "JvmCoreLogModule_ProvideLoggerFactoryFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final logWriterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final terminalLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;->logWriterProvider:Ljavax/inject/Provider;

    .line 39
    iput-object p2, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;->terminalLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;>;)",
            "Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;"
        }
    .end annotation

    .line 50
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideLoggerFactory(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;"
        }
    .end annotation

    .line 55
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule;->provideLoggerFactory(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/logwriter/LogWriter;

    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;->terminalLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    invoke-static {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;->provideLoggerFactory(Lcom/stripe/logwriter/LogWriter;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/JvmCoreLogModule_ProvideLoggerFactoryFactory;->get()Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    move-result-object v0

    return-object v0
.end method
