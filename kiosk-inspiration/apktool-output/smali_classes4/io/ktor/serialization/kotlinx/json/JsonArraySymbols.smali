.class final Lio/ktor/serialization/kotlinx/json/JsonArraySymbols;
.super Ljava/lang/Object;
.source "KotlinxSerializationJsonExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinxSerializationJsonExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinxSerializationJsonExtensions.kt\nio/ktor/serialization/kotlinx/json/JsonArraySymbols\n+ 2 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n1#1,113:1\n8#2,3:114\n8#2,3:117\n8#2,3:120\n*S KotlinDebug\n*F\n+ 1 KotlinxSerializationJsonExtensions.kt\nio/ktor/serialization/kotlinx/json/JsonArraySymbols\n*L\n94#1:114,3\n95#1:117,3\n96#1:120,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\t\u00a8\u0006\u000e"
    }
    d2 = {
        "Lio/ktor/serialization/kotlinx/json/JsonArraySymbols;",
        "",
        "charset",
        "Ljava/nio/charset/Charset;",
        "Lio/ktor/utils/io/charsets/Charset;",
        "(Ljava/nio/charset/Charset;)V",
        "beginArray",
        "",
        "getBeginArray",
        "()[B",
        "endArray",
        "getEndArray",
        "objectSeparator",
        "getObjectSeparator",
        "ktor-serialization-kotlinx-json"
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
.field private final beginArray:[B

.field private final endArray:[B

.field private final objectSeparator:[B


# direct methods
.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 5

    const-string v0, "charset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "charset.newEncoder()"

    const-string v3, "["

    if-eqz v0, :cond_0

    invoke-static {v3}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v4, v1, v3}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v0

    .line 94
    :goto_0
    iput-object v0, p0, Lio/ktor/serialization/kotlinx/json/JsonArraySymbols;->beginArray:[B

    .line 117
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "]"

    if-eqz v0, :cond_1

    invoke-static {v3}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0, v4, v1, v3}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object v0

    .line 95
    :goto_1
    iput-object v0, p0, Lio/ktor/serialization/kotlinx/json/JsonArraySymbols;->endArray:[B

    .line 120
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v3, ","

    if-eqz v0, :cond_2

    invoke-static {v3}, Lkotlin/text/StringsKt;->encodeToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_2

    .line 122
    :cond_2
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lio/ktor/utils/io/charsets/CharsetJVMKt;->encodeToByteArray(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object p1

    .line 96
    :goto_2
    iput-object p1, p0, Lio/ktor/serialization/kotlinx/json/JsonArraySymbols;->objectSeparator:[B

    return-void
.end method


# virtual methods
.method public final getBeginArray()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lio/ktor/serialization/kotlinx/json/JsonArraySymbols;->beginArray:[B

    return-object v0
.end method

.method public final getEndArray()[B
    .locals 1

    .line 95
    iget-object v0, p0, Lio/ktor/serialization/kotlinx/json/JsonArraySymbols;->endArray:[B

    return-object v0
.end method

.method public final getObjectSeparator()[B
    .locals 1

    .line 96
    iget-object v0, p0, Lio/ktor/serialization/kotlinx/json/JsonArraySymbols;->objectSeparator:[B

    return-object v0
.end method
