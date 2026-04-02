.class public final Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;
.super Ljava/lang/Object;
.source "LogWriterModule_ProvideTerminalLogWriterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/logwriter/TerminalLogWriter;",
        ">;"
    }
.end annotation


# instance fields
.field private final logLevelProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/LogLevel;",
            ">;"
        }
    .end annotation
.end field

.field private final writerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/PlatformLogWriter;",
            ">;"
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
            "Lcom/stripe/loggingmodels/LogLevel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/PlatformLogWriter;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;->logLevelProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;->writerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/loggingmodels/LogLevel;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/PlatformLogWriter;",
            ">;)",
            "Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;"
        }
    .end annotation

    .line 47
    new-instance v0, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideTerminalLogWriter(Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/logwriter/PlatformLogWriter;)Lcom/stripe/logwriter/TerminalLogWriter;
    .locals 1

    .line 52
    sget-object v0, Lcom/stripe/logwriter/dagger/LogWriterModule;->INSTANCE:Lcom/stripe/logwriter/dagger/LogWriterModule;

    invoke-virtual {v0, p0, p1}, Lcom/stripe/logwriter/dagger/LogWriterModule;->provideTerminalLogWriter(Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/logwriter/PlatformLogWriter;)Lcom/stripe/logwriter/TerminalLogWriter;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/logwriter/TerminalLogWriter;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/logwriter/TerminalLogWriter;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;->logLevelProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/loggingmodels/LogLevel;

    iget-object v1, p0, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;->writerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/logwriter/PlatformLogWriter;

    invoke-static {v0, v1}, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;->provideTerminalLogWriter(Lcom/stripe/loggingmodels/LogLevel;Lcom/stripe/logwriter/PlatformLogWriter;)Lcom/stripe/logwriter/TerminalLogWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideTerminalLogWriterFactory;->get()Lcom/stripe/logwriter/TerminalLogWriter;

    move-result-object v0

    return-object v0
.end method
