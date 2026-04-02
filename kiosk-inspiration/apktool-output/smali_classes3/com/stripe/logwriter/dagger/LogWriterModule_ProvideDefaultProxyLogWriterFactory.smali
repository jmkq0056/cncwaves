.class public final Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideDefaultProxyLogWriterFactory;
.super Ljava/lang/Object;
.source "LogWriterModule_ProvideDefaultProxyLogWriterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/logwriter/ProxyLogWriter;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideDefaultProxyLogWriterFactory;->logWriterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideDefaultProxyLogWriterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/logwriter/LogWriter;",
            ">;)",
            "Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideDefaultProxyLogWriterFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideDefaultProxyLogWriterFactory;

    invoke-direct {v0, p0}, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideDefaultProxyLogWriterFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideDefaultProxyLogWriter(Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/logwriter/ProxyLogWriter;
    .locals 1

    .line 47
    sget-object v0, Lcom/stripe/logwriter/dagger/LogWriterModule;->INSTANCE:Lcom/stripe/logwriter/dagger/LogWriterModule;

    invoke-virtual {v0, p0}, Lcom/stripe/logwriter/dagger/LogWriterModule;->provideDefaultProxyLogWriter(Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/logwriter/ProxyLogWriter;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/logwriter/ProxyLogWriter;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/logwriter/ProxyLogWriter;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideDefaultProxyLogWriterFactory;->logWriterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/logwriter/LogWriter;

    invoke-static {v0}, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideDefaultProxyLogWriterFactory;->provideDefaultProxyLogWriter(Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/logwriter/ProxyLogWriter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/logwriter/dagger/LogWriterModule_ProvideDefaultProxyLogWriterFactory;->get()Lcom/stripe/logwriter/ProxyLogWriter;

    move-result-object v0

    return-object v0
.end method
