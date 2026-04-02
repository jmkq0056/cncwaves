.class final Lokhttp3/tls/internal/der/CertificateAdapters$privateKeyInfo$2;
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
        "Ljava/util/List<",
        "*>;",
        "Lokhttp3/tls/internal/der/PrivateKeyInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u0006\u0012\u0002\u0008\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lokhttp3/tls/internal/der/PrivateKeyInfo;",
        "it",
        "",
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
.field public static final INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters$privateKeyInfo$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/tls/internal/der/CertificateAdapters$privateKeyInfo$2;

    invoke-direct {v0}, Lokhttp3/tls/internal/der/CertificateAdapters$privateKeyInfo$2;-><init>()V

    sput-object v0, Lokhttp3/tls/internal/der/CertificateAdapters$privateKeyInfo$2;->INSTANCE:Lokhttp3/tls/internal/der/CertificateAdapters$privateKeyInfo$2;

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

    .line 443
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lokhttp3/tls/internal/der/CertificateAdapters$privateKeyInfo$2;->invoke(Ljava/util/List;)Lokhttp3/tls/internal/der/PrivateKeyInfo;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/util/List;)Lokhttp3/tls/internal/der/PrivateKeyInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lokhttp3/tls/internal/der/PrivateKeyInfo;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    new-instance v0, Lokhttp3/tls/internal/der/PrivateKeyInfo;

    const/4 v1, 0x0

    .line 457
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Long"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x1

    .line 458
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type okhttp3.tls.internal.der.AlgorithmIdentifier"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lokhttp3/tls/internal/der/AlgorithmIdentifier;

    const/4 v4, 0x2

    .line 459
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "null cannot be cast to non-null type okio.ByteString"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lokio/ByteString;

    .line 456
    invoke-direct {v0, v1, v2, v3, p1}, Lokhttp3/tls/internal/der/PrivateKeyInfo;-><init>(JLokhttp3/tls/internal/der/AlgorithmIdentifier;Lokio/ByteString;)V

    return-object v0
.end method
