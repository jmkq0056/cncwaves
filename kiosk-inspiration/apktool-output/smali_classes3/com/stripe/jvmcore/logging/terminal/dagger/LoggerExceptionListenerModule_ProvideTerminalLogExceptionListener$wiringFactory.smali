.class public final Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;
.super Ljava/lang/Object;
.source "LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/loggingmodels/LoggerExceptionListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;
    .locals 1

    .line 34
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideTerminalLogExceptionListener$wiring()Lcom/stripe/loggingmodels/LoggerExceptionListener;
    .locals 1

    .line 38
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;->INSTANCE:Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule;->provideTerminalLogExceptionListener$wiring()Lcom/stripe/loggingmodels/LoggerExceptionListener;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/loggingmodels/LoggerExceptionListener;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/loggingmodels/LoggerExceptionListener;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;->provideTerminalLogExceptionListener$wiring()Lcom/stripe/loggingmodels/LoggerExceptionListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/logging/terminal/dagger/LoggerExceptionListenerModule_ProvideTerminalLogExceptionListener$wiringFactory;->get()Lcom/stripe/loggingmodels/LoggerExceptionListener;

    move-result-object v0

    return-object v0
.end method
