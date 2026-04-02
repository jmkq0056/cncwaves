.class public final Lcom/stripe/jvmcore/httptls/DefaultHandshakeCertificatesFactory;
.super Ljava/lang/Object;
.source "HandshakeCertificatesFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandshakeCertificatesFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandshakeCertificatesFactory.kt\ncom/stripe/jvmcore/httptls/DefaultHandshakeCertificatesFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,24:1\n1855#2,2:25\n*S KotlinDebug\n*F\n+ 1 HandshakeCertificatesFactory.kt\ncom/stripe/jvmcore/httptls/DefaultHandshakeCertificatesFactory\n*L\n19#1:25,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/jvmcore/httptls/DefaultHandshakeCertificatesFactory;",
        "Lcom/stripe/jvmcore/httptls/HandshakeCertificatesFactory;",
        "rootCertificatesFactory",
        "Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;",
        "(Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;)V",
        "create",
        "Lokhttp3/tls/HandshakeCertificates;",
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


# instance fields
.field private final rootCertificatesFactory:Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;)V
    .locals 1

    const-string v0, "rootCertificatesFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/stripe/jvmcore/httptls/DefaultHandshakeCertificatesFactory;->rootCertificatesFactory:Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;

    return-void
.end method


# virtual methods
.method public create()Lokhttp3/tls/HandshakeCertificates;
    .locals 3

    .line 14
    new-instance v0, Lokhttp3/tls/HandshakeCertificates$Builder;

    invoke-direct {v0}, Lokhttp3/tls/HandshakeCertificates$Builder;-><init>()V

    .line 16
    invoke-virtual {v0}, Lokhttp3/tls/HandshakeCertificates$Builder;->addPlatformTrustedCertificates()Lokhttp3/tls/HandshakeCertificates$Builder;

    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/stripe/jvmcore/httptls/DefaultHandshakeCertificatesFactory;->rootCertificatesFactory:Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;

    invoke-interface {v1}, Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;->create()Lcom/stripe/jvmcore/httptls/RootCertificates;

    move-result-object v1

    invoke-virtual {v1}, Lcom/stripe/jvmcore/httptls/RootCertificates;->getValue$httptls()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 19
    invoke-virtual {v0, v2}, Lokhttp3/tls/HandshakeCertificates$Builder;->addTrustedCertificate(Ljava/security/cert/X509Certificate;)Lokhttp3/tls/HandshakeCertificates$Builder;

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lokhttp3/tls/HandshakeCertificates$Builder;->build()Lokhttp3/tls/HandshakeCertificates;

    move-result-object v0

    return-object v0
.end method
