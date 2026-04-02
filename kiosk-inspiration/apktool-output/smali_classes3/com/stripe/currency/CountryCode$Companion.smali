.class public final Lcom/stripe/currency/CountryCode$Companion;
.super Ljava/lang/Object;
.source "CountryCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/currency/CountryCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCountryCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountryCode.kt\ncom/stripe/currency/CountryCode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2329:1\n1#2:2330\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\n\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000c\u001a\u00020\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u0002J\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u001a\u0010\u0011\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000c\u001a\u00020\rR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/currency/CountryCode$Companion;",
        "",
        "()V",
        "alpha3Map",
        "",
        "",
        "Lcom/stripe/currency/CountryCode;",
        "alpha4Map",
        "numericMap",
        "",
        "canonicalize",
        "code",
        "caseSensitive",
        "",
        "getByAlpha2Code",
        "getByAlpha3Code",
        "getByAlpha4Code",
        "getByCode",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/currency/CountryCode$Companion;-><init>()V

    return-void
.end method

.method private final getByAlpha3Code(Ljava/lang/String;)Lcom/stripe/currency/CountryCode;
    .locals 1

    .line 2269
    invoke-static {}, Lcom/stripe/currency/CountryCode;->access$getAlpha3Map$cp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/currency/CountryCode;

    return-object p1
.end method

.method private final getByAlpha4Code(Ljava/lang/String;)Lcom/stripe/currency/CountryCode;
    .locals 1

    .line 2325
    invoke-static {}, Lcom/stripe/currency/CountryCode;->access$getAlpha4Map$cp()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/currency/CountryCode;

    return-object p1
.end method


# virtual methods
.method public final canonicalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_2

    .line 2233
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    return-object p1

    .line 2240
    :cond_1
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "toUpperCase(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getByAlpha2Code(Ljava/lang/String;)Lcom/stripe/currency/CountryCode;
    .locals 5

    invoke-static {}, Lcom/stripe/currency/CountryCode;->values()[Lcom/stripe/currency/CountryCode;

    move-result-object v0

    .line 2255
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/stripe/currency/CountryCode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getByCode(Ljava/lang/String;)Lcom/stripe/currency/CountryCode;
    .locals 1

    const/4 v0, 0x1

    .line 2159
    invoke-virtual {p0, p1, v0}, Lcom/stripe/currency/CountryCode$Companion;->getByCode(Ljava/lang/String;Z)Lcom/stripe/currency/CountryCode;

    move-result-object p1

    return-object p1
.end method

.method public final getByCode(Ljava/lang/String;Z)Lcom/stripe/currency/CountryCode;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2187
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2189
    invoke-virtual {p0, p1, p2}, Lcom/stripe/currency/CountryCode$Companion;->canonicalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 2190
    invoke-virtual {p0, p1}, Lcom/stripe/currency/CountryCode$Companion;->getByAlpha2Code(Ljava/lang/String;)Lcom/stripe/currency/CountryCode;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 2194
    invoke-virtual {p0, p1, p2}, Lcom/stripe/currency/CountryCode$Companion;->canonicalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 2195
    invoke-direct {p0, p1}, Lcom/stripe/currency/CountryCode$Companion;->getByAlpha3Code(Ljava/lang/String;)Lcom/stripe/currency/CountryCode;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2199
    invoke-virtual {p0, p1, p2}, Lcom/stripe/currency/CountryCode$Companion;->canonicalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 2200
    invoke-direct {p0, p1}, Lcom/stripe/currency/CountryCode$Companion;->getByAlpha4Code(Ljava/lang/String;)Lcom/stripe/currency/CountryCode;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 v2, 0x9

    if-ne v1, v2, :cond_4

    .line 2204
    invoke-virtual {p0, p1, p2}, Lcom/stripe/currency/CountryCode$Companion;->canonicalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 2205
    const-string p2, "UNDEFINED"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2206
    sget-object p1, Lcom/stripe/currency/CountryCode;->UNDEFINED:Lcom/stripe/currency/CountryCode;

    return-object p1

    :cond_4
    return-object v0
.end method
