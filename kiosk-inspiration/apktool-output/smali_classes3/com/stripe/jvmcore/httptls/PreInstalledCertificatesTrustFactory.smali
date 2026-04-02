.class public final Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory;
.super Ljava/lang/Object;
.source "PreInstalledCertificatesTrustFactory.kt"

# interfaces
.implements Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPreInstalledCertificatesTrustFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PreInstalledCertificatesTrustFactory.kt\ncom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,41:1\n1549#2:42\n1620#2,3:43\n1603#2,9:46\n1855#2:55\n1856#2:57\n1612#2:58\n1549#2:59\n1620#2,3:60\n1#3:56\n1#3:63\n*S KotlinDebug\n*F\n+ 1 PreInstalledCertificatesTrustFactory.kt\ncom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory\n*L\n22#1:42\n22#1:43,3\n23#1:46,9\n23#1:55\n23#1:57\n23#1:58\n24#1:59\n24#1:60,3\n23#1:56\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u000c\u0010\u000c\u001a\u00020\r*\u00020\u000eH\u0002R\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u00020\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory;",
        "Lcom/stripe/jvmcore/httptls/RootCertificatesFactory;",
        "()V",
        "certificateNames",
        "",
        "",
        "classLoader",
        "Ljava/lang/ClassLoader;",
        "getClassLoader",
        "()Ljava/lang/ClassLoader;",
        "create",
        "Lcom/stripe/jvmcore/httptls/RootCertificates;",
        "decodeCertificatePem",
        "Ljava/security/cert/X509Certificate;",
        "Ljava/io/InputStream;",
        "Companion",
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
.field private static final CERTIFICATE_INSTANCE:Ljava/lang/String; = "X.509"

.field private static final CERTS_DIR_NAME:Ljava/lang/String; = "certificates"

.field private static final CERTS_EXT:Ljava/lang/String; = ".pem"

.field public static final Companion:Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory$Companion;

.field private static final LETS_ENCRYPT_ROOT_1:Ljava/lang/String; = "lets-encrypt-isrg-root-x1"

.field private static final LETS_ENCRYPT_ROOT_2:Ljava/lang/String; = "lets-encrypt-isrg-root-x2"


# instance fields
.field private final certificateNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory;->Companion:Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lets-encrypt-isrg-root-x1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lets-encrypt-isrg-root-x2"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory;->certificateNames:Ljava/util/List;

    return-void
.end method

.method private final decodeCertificatePem(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .locals 2

    .line 30
    check-cast p1, Ljava/io/Closeable;

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string p1, "use(...)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->single(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/security/cert/X509Certificate;

    return-object p1

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {p1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public create()Lcom/stripe/jvmcore/httptls/RootCertificates;
    .locals 7

    .line 21
    iget-object v0, p0, Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory;->certificateNames:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 43
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    .line 22
    new-array v5, v4, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ".pem"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const-string v4, "certificates"

    invoke-static {v4, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    const-string v4, "get(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    check-cast v1, Ljava/util/List;

    .line 42
    check-cast v1, Ljava/lang/Iterable;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 55
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 54
    check-cast v3, Ljava/nio/file/Path;

    .line 23
    invoke-direct {p0}, Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 54
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_2
    check-cast v0, Ljava/util/List;

    .line 46
    check-cast v0, Ljava/lang/Iterable;

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 60
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 61
    check-cast v2, Ljava/io/InputStream;

    .line 24
    invoke-direct {p0, v2}, Lcom/stripe/jvmcore/httptls/PreInstalledCertificatesTrustFactory;->decodeCertificatePem(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 61
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 62
    :cond_3
    check-cast v1, Ljava/util/List;

    .line 59
    check-cast v1, Ljava/lang/Iterable;

    .line 25
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    .line 26
    new-instance v1, Lcom/stripe/jvmcore/httptls/RootCertificates;

    invoke-direct {v1, v0}, Lcom/stripe/jvmcore/httptls/RootCertificates;-><init>(Ljava/util/Set;)V

    return-object v1
.end method
