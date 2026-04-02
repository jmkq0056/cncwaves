.class public final Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory;
.super Ljava/lang/Object;
.source "HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;",
        ">;"
    }
.end annotation


# instance fields
.field private final rootCertificatesFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;",
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
            "Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory;->rootCertificatesFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;",
            ">;)",
            "Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory;"
        }
    .end annotation

    .line 43
    new-instance v0, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory;

    invoke-direct {v0, p0}, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideHandshakeCertificatesFactory$httptls(Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;)Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;
    .locals 1

    .line 48
    sget-object v0, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;->INSTANCE:Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;

    invoke-virtual {v0, p0}, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;->provideHandshakeCertificatesFactory$httptls(Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;)Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory;->rootCertificatesFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;

    invoke-static {v0}, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory;->provideHandshakeCertificatesFactory$httptls(Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;)Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideHandshakeCertificatesFactory$httptlsFactory;->get()Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;

    move-result-object v0

    return-object v0
.end method
