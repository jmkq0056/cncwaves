.class public final Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;
.super Ljava/lang/Object;
.source "TerminalModule_ProvideProxyTerminalListenerProxyFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final loggerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/stripe/stripeterminal/dagger/TerminalModule;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    .line 36
    iput-object p2, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule;",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ">;)",
            "Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;-><init>(Lcom/stripe/stripeterminal/dagger/TerminalModule;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideProxyTerminalListenerProxy(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/dagger/TerminalModule;->provideProxyTerminalListenerProxy(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;->module:Lcom/stripe/stripeterminal/dagger/TerminalModule;

    iget-object v1, p0, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;->loggerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    invoke-static {v0, v1}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;->provideProxyTerminalListenerProxy(Lcom/stripe/stripeterminal/dagger/TerminalModule;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/dagger/TerminalModule_ProvideProxyTerminalListenerProxyFactory;->get()Lcom/stripe/stripeterminal/internal/common/callable/ProxyTerminalListener;

    move-result-object v0

    return-object v0
.end method
