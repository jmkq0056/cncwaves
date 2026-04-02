.class public final Lcom/stripe/wirecrpc/moshiutils/MoshiExt;
.super Ljava/lang/Object;
.source "MoshiExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMoshiExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MoshiExt.kt\ncom/stripe/wirecrpc/moshiutils/MoshiExt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n48#1:97\n48#1:98\n48#1:99\n48#1:100\n48#1:101\n1603#2,9:102\n1855#2:111\n1856#2:113\n1612#2:114\n1549#2:115\n1620#2,3:116\n1#3:112\n*S KotlinDebug\n*F\n+ 1 MoshiExt.kt\ncom/stripe/wirecrpc/moshiutils/MoshiExt\n*L\n24#1:97\n27#1:98\n30#1:99\n33#1:100\n36#1:101\n52#1:102,9\n52#1:111\n52#1:113\n52#1:114\n71#1:115\n71#1:116,3\n52#1:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0010$\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000c\u0010\u000c\u001a\u00020\r*\u00020\rH\u0002J\u000c\u0010\u000e\u001a\u00020\r*\u00020\rH\u0002J\u0014\u0010\u000f\u001a\u00020\r*\u00020\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u001c\u0010\u0012\u001a\u0006\u0012\u0002\u0008\u00030\u0013*\u0006\u0012\u0002\u0008\u00030\u00132\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J&\u0010\u0012\u001a\u000c\u0012\u0004\u0012\u00020\r\u0012\u0002\u0008\u00030\u0014*\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00142\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J+\u0010\u0015\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0016*\u0002H\u00162\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u0002H\u00160\u00182\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0002\u0010\u0019J\"\u0010\u0015\u001a\u00020\r\"\u0006\u0008\u0000\u0010\u0016\u0018\u0001*\u0002H\u00162\u0006\u0010\u0010\u001a\u00020\u0011H\u0086\u0008\u00a2\u0006\u0002\u0010\u001aJ\n\u0010\u001b\u001a\u00020\r*\u00020\u001cJ\n\u0010\u001b\u001a\u00020\r*\u00020\u001dJ\n\u0010\u001b\u001a\u00020\r*\u00020\u001eJ\n\u0010\u001b\u001a\u00020\r*\u00020\u001fJ\n\u0010\u001b\u001a\u00020\r*\u00020 R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u0005\u001a\n \u0007*\u0004\u0018\u00010\u00060\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/wirecrpc/moshiutils/MoshiExt;",
        "",
        "()V",
        "camelCaseRegex",
        "Lkotlin/text/Regex;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "kotlin.jvm.PlatformType",
        "getMoshi",
        "()Lcom/squareup/moshi/Moshi;",
        "moshi$delegate",
        "Lkotlin/Lazy;",
        "camelToSnakeCase",
        "",
        "filterAsciiOnly",
        "maybeFilterAsciiOnly",
        "asciiOnly",
        "",
        "recursivelyConvertMapKeysToSnakeCase",
        "",
        "",
        "toJsonWithSnakeCase",
        "T",
        "type",
        "Ljava/lang/Class;",
        "(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/String;",
        "(Ljava/lang/Object;Z)Ljava/lang/String;",
        "toJsonWithSnakeCaseFieldNames",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionToken;",
        "Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "Lcom/stripe/proto/model/rest/TerminalUserAgent;",
        "Lcom/stripe/proto/model/rest/UserAgent;",
        "moshi-utils"
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
.field public static final INSTANCE:Lcom/stripe/wirecrpc/moshiutils/MoshiExt;

.field private static final camelCaseRegex:Lkotlin/text/Regex;

.field private static final moshi$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;

    invoke-direct {v0}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;-><init>()V

    sput-object v0, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->INSTANCE:Lcom/stripe/wirecrpc/moshiutils/MoshiExt;

    .line 15
    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "(?<=[a-zA-Z0-9])[A-Z]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->camelCaseRegex:Lkotlin/text/Regex;

    .line 17
    sget-object v0, Lcom/stripe/wirecrpc/moshiutils/MoshiExt$moshi$2;->INSTANCE:Lcom/stripe/wirecrpc/moshiutils/MoshiExt$moshi$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->moshi$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final camelToSnakeCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 89
    sget-object v0, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->camelCaseRegex:Lkotlin/text/Regex;

    check-cast p1, Ljava/lang/CharSequence;

    sget-object v1, Lcom/stripe/wirecrpc/moshiutils/MoshiExt$camelToSnakeCase$1;->INSTANCE:Lcom/stripe/wirecrpc/moshiutils/MoshiExt$camelToSnakeCase$1;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final filterAsciiOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 94
    check-cast p1, Ljava/lang/CharSequence;

    new-instance v0, Lkotlin/text/Regex;

    const-string v1, "[^\\x00-\\x7F]"

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getMoshi()Lcom/squareup/moshi/Moshi;
    .locals 1

    .line 17
    sget-object v0, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->moshi$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/moshi/Moshi;

    return-object v0
.end method

.method private final maybeFilterAsciiOnly(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    if-eqz p2, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->filterAsciiOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final recursivelyConvertMapKeysToSnakeCase(Ljava/util/List;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;Z)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 71
    check-cast p1, Ljava/lang/Iterable;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 116
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 73
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->INSTANCE:Lcom/stripe/wirecrpc/moshiutils/MoshiExt;

    check-cast v1, Ljava/util/Map;

    invoke-direct {v2, v1, p2}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->recursivelyConvertMapKeysToSnakeCase(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 74
    :cond_0
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->INSTANCE:Lcom/stripe/wirecrpc/moshiutils/MoshiExt;

    check-cast v1, Ljava/util/List;

    invoke-direct {v2, v1, p2}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->recursivelyConvertMapKeysToSnakeCase(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 75
    :cond_1
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->INSTANCE:Lcom/stripe/wirecrpc/moshiutils/MoshiExt;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v1, p2}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->maybeFilterAsciiOnly(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_2
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 118
    :cond_3
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final recursivelyConvertMapKeysToSnakeCase(Ljava/util/Map;Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 111
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 110
    check-cast v1, Ljava/util/Map$Entry;

    .line 53
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 54
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 55
    new-instance v3, Lkotlin/Pair;

    .line 56
    sget-object v4, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->INSTANCE:Lcom/stripe/wirecrpc/moshiutils/MoshiExt;

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->camelToSnakeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 58
    instance-of v5, v1, Ljava/util/Map;

    if-eqz v5, :cond_1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v4, v1, p2}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->recursivelyConvertMapKeysToSnakeCase(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v1

    goto :goto_1

    .line 59
    :cond_1
    instance-of v5, v1, Ljava/util/List;

    if-eqz v5, :cond_2

    check-cast v1, Ljava/util/List;

    invoke-direct {v4, v1, p2}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->recursivelyConvertMapKeysToSnakeCase(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    goto :goto_1

    .line 60
    :cond_2
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v1, Ljava/lang/String;

    invoke-direct {v4, v1, p2}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->maybeFilterAsciiOnly(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_3
    :goto_1
    invoke-direct {v3, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_0

    .line 110
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    :cond_5
    check-cast v0, Ljava/util/List;

    .line 102
    check-cast v0, Ljava/lang/Iterable;

    .line 68
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final toJsonWithSnakeCase(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->getMoshi()Lcom/squareup/moshi/Moshi;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/squareup/moshi/JsonAdapter;->toJsonValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Ljava/util/Map;

    if-eqz p2, :cond_0

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    return-object p1

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->getMoshi()Lcom/squareup/moshi/Moshi;

    move-result-object p2

    const-class v0, Ljava/util/Map;

    check-cast v0, Ljava/lang/reflect/Type;

    const/4 v1, 0x2

    .line 42
    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/squareup/moshi/Types;->newParameterizedType(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    .line 41
    invoke-virtual {p2, v0}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/reflect/Type;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object p2

    const-string v0, "adapter(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->recursivelyConvertMapKeysToSnakeCase(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/squareup/moshi/JsonAdapter;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "toJson(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final synthetic toJsonWithSnakeCase(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x4

    .line 48
    const-string v1, "T"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-class v0, Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {p0, p1, v0, p2}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->toJsonWithSnakeCase(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toJsonWithSnakeCaseFieldNames(Lcom/stripe/proto/model/rest/ActivatedConnectionToken;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 99
    const-class v1, Lcom/stripe/proto/model/rest/ActivatedConnectionToken;

    invoke-virtual {p0, p1, v1, v0}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->toJsonWithSnakeCase(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toJsonWithSnakeCaseFieldNames(Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 100
    const-class v1, Lcom/stripe/proto/model/rest/ActivatedConnectionTokenWithExpandedLocation;

    invoke-virtual {p0, p1, v1, v0}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->toJsonWithSnakeCase(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toJsonWithSnakeCaseFieldNames(Lcom/stripe/proto/model/rest/ErrorWrapper;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 101
    const-class v1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    invoke-virtual {p0, p1, v1, v0}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->toJsonWithSnakeCase(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toJsonWithSnakeCaseFieldNames(Lcom/stripe/proto/model/rest/TerminalUserAgent;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 98
    const-class v1, Lcom/stripe/proto/model/rest/TerminalUserAgent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->toJsonWithSnakeCase(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final toJsonWithSnakeCaseFieldNames(Lcom/stripe/proto/model/rest/UserAgent;)Ljava/lang/String;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 97
    const-class v1, Lcom/stripe/proto/model/rest/UserAgent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/stripe/wirecrpc/moshiutils/MoshiExt;->toJsonWithSnakeCase(Ljava/lang/Object;Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
