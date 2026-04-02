.class public final Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;
.super Ljava/lang/Object;
.source "HttpTlsModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0015\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\u0007J\r\u0010\u0008\u001a\u00020\u0006H\u0001\u00a2\u0006\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;",
        "",
        "()V",
        "provideHandshakeCertificatesFactory",
        "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;",
        "rootCertificatesFactory",
        "Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;",
        "provideHandshakeCertificatesFactory$httptls",
        "provideRootCertificatesFactory",
        "provideRootCertificatesFactory$httptls",
        "httptls"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;

    invoke-direct {v0}, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;->INSTANCE:Lcom/stripe/jvmcore/httptls/dagger/HttpTlsModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideHandshakeCertificatesFactory$httptls(Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;)Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string v0, "rootCertificatesFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/stripe/jvmcore/httptls/DefaultHandshakeCertificatesFactory;

    invoke-direct {v0, p1}, Lcom/stripe/jvmcore/httptls/DefaultHandshakeCertificatesFactory;-><init>(Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;)V

    check-cast v0, Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;

    return-object v0
.end method

.method public final provideRootCertificatesFactory$httptls()Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .line 23
    new-instance v0, Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory;

    invoke-direct {v0}, Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory;-><init>()V

    check-cast v0, Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;

    return-object v0
.end method
