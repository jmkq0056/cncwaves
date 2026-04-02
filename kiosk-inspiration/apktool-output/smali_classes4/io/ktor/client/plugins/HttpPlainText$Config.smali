.class public final Lio/ktor/client/plugins/HttpPlainText$Config;
.super Ljava/lang/Object;
.source "HttpPlainText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpPlainText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpPlainText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpPlainText.kt\nio/ktor/client/plugins/HttpPlainText$Config\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,181:1\n1#2:182\n*E\n"
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010#\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J#\u0010\u0016\u001a\u00020\u00172\n\u0010\u0018\u001a\u00060\u0005j\u0002`\u00062\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u001aR$\u0010\u0003\u001a\u0012\u0012\u0008\u0012\u00060\u0005j\u0002`\u0006\u0012\u0004\u0012\u00020\u00070\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u000c\u0012\u0008\u0012\u00060\u0005j\u0002`\u00060\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001e\u0010\u000e\u001a\u00060\u0005j\u0002`\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\"\u0010\u0013\u001a\n\u0018\u00010\u0005j\u0004\u0018\u0001`\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012\u00a8\u0006\u001b"
    }
    d2 = {
        "Lio/ktor/client/plugins/HttpPlainText$Config;",
        "",
        "()V",
        "charsetQuality",
        "",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "",
        "getCharsetQuality$ktor_client_core",
        "()Ljava/util/Map;",
        "charsets",
        "",
        "getCharsets$ktor_client_core",
        "()Ljava/util/Set;",
        "responseCharsetFallback",
        "getResponseCharsetFallback",
        "()Ljava/nio/charset/Charset;",
        "setResponseCharsetFallback",
        "(Ljava/nio/charset/Charset;)V",
        "sendCharset",
        "getSendCharset",
        "setSendCharset",
        "register",
        "",
        "charset",
        "quality",
        "(Ljava/nio/charset/Charset;Ljava/lang/Float;)V",
        "ktor-client-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final charsetQuality:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final charsets:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private responseCharsetFallback:Ljava/nio/charset/Charset;

.field private sendCharset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->charsets:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->charsetQuality:Ljava/util/Map;

    .line 99
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->responseCharsetFallback:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static synthetic register$default(Lio/ktor/client/plugins/HttpPlainText$Config;Ljava/nio/charset/Charset;Ljava/lang/Float;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 76
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpPlainText$Config;->register(Ljava/nio/charset/Charset;Ljava/lang/Float;)V

    return-void
.end method


# virtual methods
.method public final getCharsetQuality$ktor_client_core()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->charsetQuality:Ljava/util/Map;

    return-object v0
.end method

.method public final getCharsets$ktor_client_core()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->charsets:Ljava/util/Set;

    return-object v0
.end method

.method public final getResponseCharsetFallback()Ljava/nio/charset/Charset;
    .locals 1

    .line 99
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->responseCharsetFallback:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final getSendCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 93
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->sendCharset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public final register(Ljava/nio/charset/Charset;Ljava/lang/Float;)V
    .locals 4

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 77
    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v2, v0

    if-gtz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->charsets:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_2

    .line 82
    iget-object p2, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->charsetQuality:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 84
    :cond_2
    iget-object v0, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->charsetQuality:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setResponseCharsetFallback(Ljava/nio/charset/Charset;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->responseCharsetFallback:Ljava/nio/charset/Charset;

    return-void
.end method

.method public final setSendCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lio/ktor/client/plugins/HttpPlainText$Config;->sendCharset:Ljava/nio/charset/Charset;

    return-void
.end method
