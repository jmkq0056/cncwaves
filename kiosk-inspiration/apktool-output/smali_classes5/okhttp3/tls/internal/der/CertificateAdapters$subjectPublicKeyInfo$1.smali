.class final Lokhttp3/tls/internal/der/CertificateAdapters$subjectPublicKeyInfo$1;
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
        "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
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
        "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
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
.field public static final INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters$subjectPublicKeyInfo$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/tls/internal/der/CertificateAdapters$subjectPublicKeyInfo$1;

    invoke-direct {v0}, Lokhttp3/tls/internal/der/CertificateAdapters$subjectPublicKeyInfo$1;-><init>()V

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters$subjectPublicKeyInfo$1;->INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters$subjectPublicKeyInfo$1;

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

    .line 316
    check-cast p1, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;

    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/CertificateAdapters$subjectPublicKeyInfo$1;->invoke(Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->getAlgorithm()Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    move-result-object v0

    .line 323
    invoke-virtual {p1}, Lokhttp3/tls/internal/der/SubjectPublicKeyInfo;->getSubjectPublicKey()Lokhttp3/tls/internal/der/BitString;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 321
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
