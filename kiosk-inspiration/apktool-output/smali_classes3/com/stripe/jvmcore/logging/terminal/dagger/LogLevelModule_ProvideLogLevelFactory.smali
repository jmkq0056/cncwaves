.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule_ProvideLogLevelFactory;
.super Ljava/lang/Object;
.source "LogLevelModule_ProvideLogLevelFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/loggingmodels/LogLevel;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule_ProvideLogLevelFactory;->module:Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;

    return-void
.end method

.method public static create(Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;)Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule_ProvideLogLevelFactory;
    .locals 1

    .line 39
    new-instance v0, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule_ProvideLogLevelFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule_ProvideLogLevelFactory;-><init>(Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;)V

    return-object v0
.end method

.method public static provideLogLevel(Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;)Lcom/stripe/loggingmodels/LogLevel;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;->provideLogLevel()Lcom/stripe/loggingmodels/LogLevel;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/loggingmodels/LogLevel;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/loggingmodels/LogLevel;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule_ProvideLogLevelFactory;->module:Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;

    invoke-static {v0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule_ProvideLogLevelFactory;->provideLogLevel(Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule;)Lcom/stripe/loggingmodels/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LogLevelModule_ProvideLogLevelFactory;->get()Lcom/stripe/loggingmodels/LogLevel;

    move-result-object v0

    return-object v0
.end method
