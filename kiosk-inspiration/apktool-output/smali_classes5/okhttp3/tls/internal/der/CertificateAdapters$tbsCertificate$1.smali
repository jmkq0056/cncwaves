.class final Lokhttp3/tls/internal/der/CertificateAdapters$tbsCertificate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CertificateAdapters.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/tls/internal/der/CertificateAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lokhttp3/tls/internal/der/TbsCertificate;",
        "Ljava/util/List<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0006\u0012\u0002\u0008\u00030\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lokhttp3/tls/internal/der/TbsCertificate;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters$tbsCertificate$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/tls/internal/der/CertificateAdapters$tbsCertificate$1;

    invoke-direct {v0}, Lokhttp3/tls/internal/der/CertificateAdapters$tbsCertificate$1;-><init>()V

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters$tbsCertificate$1;->INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters$tbsCertificate$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 350
    check-cast p1, Lokhttp3/tls/internal/der/TbsCertificate;

    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/CertificateAdapters$tbsCertificate$1;->invoke(Lokhttp3/tls/internal/der/TbsCertificate;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lokhttp3/tls/internal/der/TbsCertificate;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/tls/internal/der/TbsCertificate;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getVersion()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 365
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    .line 366
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getSignature()Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    move-result-object v4

    .line 367
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters;

    invoke-virtual {v0}, Lokhttp3/tls/internal/der/CertificateAdapters;->getRdnSequence$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getIssuer()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 368
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getValidity()Lokhttp3/tls/internal/der/Validity;

    move-result-object v6

    .line 369
    sget-object v0, Lokhttp3/tls/internal/der/CertificateAdapters;->INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters;

    invoke-virtual {v0}, Lokhttp3/tls/internal/der/CertificateAdapters;->getRdnSequence$okhttp_tls()Lokhttp3/tls/internal/der/BasicDerAdapter;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getSubject()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    .line 370
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getSubjectPublicKeyInfo()Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    move-result-object v8

    .line 371
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getIssuerUniqueID()Lokhttp3/tls/internal/der/BitString;

    move-result-object v9

    .line 372
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getSubjectUniqueID()Lokhttp3/tls/internal/der/BitString;

    move-result-object v10

    .line 373
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/TbsCertificate;->getExtensions()Ljava/util/List;

    move-result-object v11

    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    move-result-object p1

    .line 363
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
