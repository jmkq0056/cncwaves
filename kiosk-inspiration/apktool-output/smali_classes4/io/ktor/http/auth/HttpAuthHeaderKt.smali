.class public final Lio/ktor/http/auth/HttpAuthHeaderKt;
.super Ljava/lang/Object;
.source "HttpAuthHeader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u001a,\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\rH\u0002\u001a,\u0010\u000e\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\rH\u0002\u001a\u0018\u0010\u000f\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008H\u0002\u001a5\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002\u00a2\u0006\u0002\u0010\u0016\u001a\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u00132\u0006\u0010\t\u001a\u00020\n\u001a&\u0010\u0017\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012H\u0002\u001a\u0016\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00192\u0006\u0010\t\u001a\u00020\nH\u0007\u001a\u000c\u0010\u001a\u001a\u00020\u001b*\u00020\u0002H\u0002\u001a\u000c\u0010\u001c\u001a\u00020\u001b*\u00020\u0002H\u0002\u001a\u001c\u0010\u001d\u001a\u00020\u0008*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u001e\u001a\u00020\u0002H\u0002\u001a\u0014\u0010\u001f\u001a\u00020\u0008*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0008H\u0002\u001a\u000c\u0010 \u001a\u00020\n*\u00020\nH\u0002\"\u0014\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "TOKEN68_EXTRA",
        "",
        "",
        "TOKEN_EXTRA",
        "escapeRegex",
        "Lkotlin/text/Regex;",
        "token68Pattern",
        "matchParameter",
        "",
        "headerValue",
        "",
        "startIndex",
        "parameters",
        "",
        "matchParameters",
        "matchToken68",
        "nextChallengeIndex",
        "headers",
        "",
        "Lio/ktor/http/auth/HttpAuthHeader;",
        "header",
        "index",
        "(Ljava/util/List;Lio/ktor/http/auth/HttpAuthHeader;ILjava/lang/String;)Ljava/lang/Integer;",
        "parseAuthorizationHeader",
        "parseAuthorizationHeaders",
        "",
        "isToken",
        "",
        "isToken68",
        "skipDelimiter",
        "delimiter",
        "skipSpaces",
        "unescaped",
        "ktor-http"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final TOKEN68_EXTRA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOKEN_EXTRA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final escapeRegex:Lkotlin/text/Regex;

.field private static final token68Pattern:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0xf

    .line 12
    new-array v0, v0, [Ljava/lang/Character;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const/16 v9, 0x2d

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x8

    aput-object v9, v0, v10

    const/16 v10, 0x2e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/16 v11, 0x9

    aput-object v10, v0, v11

    const/16 v11, 0x5e

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0xa

    aput-object v11, v0, v12

    const/16 v11, 0x5f

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/16 v12, 0xb

    aput-object v11, v0, v12

    const/16 v12, 0x60

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    const/16 v13, 0xc

    aput-object v12, v0, v13

    const/16 v12, 0x7c

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    const/16 v13, 0xd

    aput-object v12, v0, v13

    const/16 v12, 0x7e

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    const/16 v13, 0xe

    aput-object v12, v0, v13

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/ktor/http/auth/HttpAuthHeaderKt;->TOKEN_EXTRA:Ljava/util/Set;

    .line 13
    new-array v0, v8, [Ljava/lang/Character;

    aput-object v9, v0, v2

    aput-object v10, v0, v3

    aput-object v11, v0, v4

    aput-object v12, v0, v5

    aput-object v1, v0, v6

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    aput-object v1, v0, v7

    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/ktor/http/auth/HttpAuthHeaderKt;->TOKEN68_EXTRA:Ljava/util/Set;

    .line 14
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[a-zA-Z0-9\\-._~+/]+=*"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/http/auth/HttpAuthHeaderKt;->token68Pattern:Lkotlin/text/Regex;

    .line 15
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "\\\\."

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/ktor/http/auth/HttpAuthHeaderKt;->escapeRegex:Lkotlin/text/Regex;

    return-void
.end method

.method public static final synthetic access$getToken68Pattern$p()Lkotlin/text/Regex;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/http/auth/HttpAuthHeaderKt;->token68Pattern:Lkotlin/text/Regex;

    return-object v0
.end method

.method private static final isToken(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_1

    goto :goto_0

    .line 462
    :cond_1
    invoke-static {p0}, Lio/ktor/http/CookieUtilsKt;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lio/ktor/http/auth/HttpAuthHeaderKt;->TOKEN_EXTRA:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final isToken68(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_1

    goto :goto_0

    .line 460
    :cond_1
    invoke-static {p0}, Lio/ktor/http/CookieUtilsKt;->isDigit(C)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lio/ktor/http/auth/HttpAuthHeaderKt;->TOKEN68_EXTRA:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final matchParameter(Ljava/lang/String;ILjava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 156
    invoke-static {p0, p1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipSpaces(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    .line 160
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/ktor/http/auth/HttpAuthHeaderKt;->isToken(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {p0, v1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipSpaces(Ljava/lang/String;I)I

    move-result v1

    .line 167
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3d

    if-eq v2, v3, :cond_1

    goto/16 :goto_5

    :cond_1
    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 173
    invoke-static {p0, v1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipSpaces(Ljava/lang/String;I)I

    move-result v1

    .line 179
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    move v2, v1

    move v5, v4

    .line 185
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 186
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_2

    if-eqz v5, :cond_4

    :cond_2
    if-nez v5, :cond_3

    .line 187
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_3

    move v5, p1

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 192
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v2, v3, :cond_5

    move v4, p1

    goto :goto_4

    .line 193
    :cond_5
    new-instance p0, Lio/ktor/http/parsing/ParseException;

    const-string p1, "Expected closing quote\'\"\' in parameter"

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lio/ktor/http/parsing/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0

    :cond_6
    move v2, v1

    .line 196
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x20

    if-eq v3, v5, :cond_7

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2c

    if-eq v3, v5, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 201
    :cond_7
    :goto_4
    invoke-static {v1, v2}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object p0

    if-eqz v4, :cond_8

    .line 202
    invoke-static {p0}, Lio/ktor/http/auth/HttpAuthHeaderKt;->unescaped(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_8
    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_9

    add-int/2addr v2, p1

    :cond_9
    return v2

    :cond_a
    :goto_5
    return p1
.end method

.method private static final matchParameters(Ljava/lang/String;ILjava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_1

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 140
    invoke-static {p0, p1, p2}, Lio/ktor/http/auth/HttpAuthHeaderKt;->matchParameter(Ljava/lang/String;ILjava/util/Map;)I

    move-result v0

    if-ne v0, p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x2c

    .line 144
    invoke-static {p0, v0, p1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipDelimiter(Ljava/lang/String;IC)I

    move-result p1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method

.method private static final matchToken68(Ljava/lang/String;I)I
    .locals 2

    .line 209
    invoke-static {p0, p1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipSpaces(Ljava/lang/String;I)I

    move-result p1

    .line 211
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lio/ktor/http/auth/HttpAuthHeaderKt;->isToken68(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 215
    :cond_0
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 219
    :cond_1
    invoke-static {p0, p1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipSpaces(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static final nextChallengeIndex(Ljava/util/List;Lio/ktor/http/auth/HttpAuthHeader;ILjava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/ktor/http/auth/HttpAuthHeader;",
            ">;",
            "Lio/ktor/http/auth/HttpAuthHeader;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 126
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2c

    if-eq p2, v0, :cond_1

    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 127
    :cond_1
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    if-ne p2, p0, :cond_2

    const/4 p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 130
    :cond_2
    invoke-virtual {p3, p2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v1, :cond_3

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 131
    const-string p1, ""

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final parseAuthorizationHeader(Ljava/lang/String;ILjava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lio/ktor/http/auth/HttpAuthHeader;",
            ">;)I"
        }
    .end annotation

    .line 82
    invoke-static {p0, p1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipSpaces(Ljava/lang/String;I)I

    move-result p1

    move v0, p1

    .line 86
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->isToken(C)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v2

    .line 91
    move-object p1, v2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 94
    invoke-static {p0, v0}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipSpaces(Ljava/lang/String;I)I

    move-result p1

    .line 96
    new-instance v1, Lio/ktor/http/auth/HttpAuthHeader$Parameterized;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/auth/HttpAuthHeader$Parameterized;-><init>(Ljava/lang/String;Ljava/util/List;Lio/ktor/http/auth/HeaderValueEncoding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lio/ktor/http/auth/HttpAuthHeader;

    invoke-static {p2, v1, p1, p0}, Lio/ktor/http/auth/HttpAuthHeaderKt;->nextChallengeIndex(Ljava/util/List;Lio/ktor/http/auth/HttpAuthHeader;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 100
    :cond_1
    invoke-static {p0, p1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->matchToken68(Ljava/lang/String;I)I

    move-result v0

    .line 101
    invoke-static {p1, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 103
    new-instance v3, Lio/ktor/http/auth/HttpAuthHeader$Single;

    invoke-direct {v3, v2, v1}, Lio/ktor/http/auth/HttpAuthHeader$Single;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Lio/ktor/http/auth/HttpAuthHeader;

    invoke-static {p2, v3, v0, p0}, Lio/ktor/http/auth/HttpAuthHeaderKt;->nextChallengeIndex(Ljava/util/List;Lio/ktor/http/auth/HttpAuthHeader;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    .line 108
    :cond_2
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v3, v0

    check-cast v3, Ljava/util/Map;

    .line 109
    invoke-static {p0, p1, v3}, Lio/ktor/http/auth/HttpAuthHeaderKt;->matchParameters(Ljava/lang/String;ILjava/util/Map;)I

    move-result p0

    .line 110
    new-instance v1, Lio/ktor/http/auth/HttpAuthHeader$Parameterized;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lio/ktor/http/auth/HttpAuthHeader$Parameterized;-><init>(Ljava/lang/String;Ljava/util/Map;Lio/ktor/http/auth/HeaderValueEncoding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return p0

    .line 92
    :cond_3
    new-instance p0, Lio/ktor/http/parsing/ParseException;

    const-string p1, "Invalid authScheme value: it should be token, can\'t be blank"

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lio/ktor/http/parsing/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public static final parseAuthorizationHeader(Ljava/lang/String;)Lio/ktor/http/auth/HttpAuthHeader;
    .locals 8

    const-string v0, "headerValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipSpaces(Ljava/lang/String;I)I

    move-result v0

    move v1, v0

    .line 29
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lio/ktor/http/auth/HttpAuthHeaderKt;->isToken(C)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {p0, v1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipSpaces(Ljava/lang/String;I)I

    move-result v0

    .line 37
    move-object v1, v3

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return-object v2

    .line 41
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 42
    new-instance v2, Lio/ktor/http/auth/HttpAuthHeader$Parameterized;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lio/ktor/http/auth/HttpAuthHeader$Parameterized;-><init>(Ljava/lang/String;Ljava/util/List;Lio/ktor/http/auth/HeaderValueEncoding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lio/ktor/http/auth/HttpAuthHeader;

    return-object v2

    .line 45
    :cond_2
    invoke-static {p0, v0}, Lio/ktor/http/auth/HttpAuthHeaderKt;->matchToken68(Ljava/lang/String;I)I

    move-result v1

    .line 46
    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v4

    invoke-static {p0, v4}, Lkotlin/text/StringsKt;->substring(Ljava/lang/String;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 47
    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v1, v5, :cond_3

    .line 49
    new-instance p0, Lio/ktor/http/auth/HttpAuthHeader$Single;

    invoke-direct {p0, v3, v4}, Lio/ktor/http/auth/HttpAuthHeader$Single;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Lio/ktor/http/auth/HttpAuthHeader;

    return-object p0

    .line 53
    :cond_3
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v4, v1

    check-cast v4, Ljava/util/Map;

    .line 54
    invoke-static {p0, v0, v4}, Lio/ktor/http/auth/HttpAuthHeaderKt;->matchParameters(Ljava/lang/String;ILjava/util/Map;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    .line 56
    new-instance v2, Lio/ktor/http/auth/HttpAuthHeader$Parameterized;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lio/ktor/http/auth/HttpAuthHeader$Parameterized;-><init>(Ljava/lang/String;Ljava/util/Map;Lio/ktor/http/auth/HeaderValueEncoding;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v2, Lio/ktor/http/auth/HttpAuthHeader;

    return-object v2

    .line 58
    :cond_4
    new-instance p0, Lio/ktor/http/parsing/ParseException;

    const-string v0, "Function parseAuthorizationHeader can parse only one header"

    const/4 v1, 0x2

    invoke-direct {p0, v0, v2, v1, v2}, Lio/ktor/http/parsing/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method public static final parseAuthorizationHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/ktor/http/auth/HttpAuthHeader;",
            ">;"
        }
    .end annotation

    .annotation runtime Lio/ktor/util/InternalAPI;
    .end annotation

    const-string v0, "headerValue"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 72
    invoke-static {p0, v1, v0}, Lio/ktor/http/auth/HttpAuthHeaderKt;->parseAuthorizationHeader(Ljava/lang/String;ILjava/util/List;)I

    move-result v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static final skipDelimiter(Ljava/lang/String;IC)I
    .locals 2

    .line 440
    invoke-static {p0, p1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipSpaces(Ljava/lang/String;I)I

    move-result p1

    .line 442
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 443
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p2, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 448
    invoke-static {p0, p1}, Lio/ktor/http/auth/HttpAuthHeaderKt;->skipSpaces(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 444
    :cond_1
    new-instance p0, Lio/ktor/http/parsing/ParseException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected delimiter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " at position "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lio/ktor/http/parsing/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p0
.end method

.method private static final skipSpaces(Ljava/lang/String;I)I
    .locals 2

    .line 453
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method private static final unescaped(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 437
    check-cast p0, Ljava/lang/CharSequence;

    sget-object v0, Lio/ktor/http/auth/HttpAuthHeaderKt;->escapeRegex:Lkotlin/text/Regex;

    sget-object v1, Lio/ktor/http/auth/HttpAuthHeaderKt$unescaped$1;->INSTANCE:Lio/ktor/http/auth/HttpAuthHeaderKt$unescaped$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
