.class public final Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory;
.super Ljava/lang/Object;
.source "HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;",
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

.method public static create()Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory;
    .locals 1

    .line 33
    invoke-static {}, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory$InstanceHolder;->access$000()Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory;

    move-result-object v0

    return-object v0
.end method

.method public static provideRootCertificatesFactory$httptls()Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;
    .locals 1

    .line 37
    sget-object v0, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;->INSTANCE:Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;->provideRootCertificatesFactory$httptls()Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;
    .locals 1

    .line 29
    invoke-static {}, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory;->provideRootCertificatesFactory$httptls()Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule_ProvideRootCertificatesFactory$httptlsFactory;->get()Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;

    move-result-object v0

    return-object v0
.end method
