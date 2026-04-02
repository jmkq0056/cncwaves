.class public final Lcom/stripe/currency/CurrencyCode$Companion;
.super Ljava/lang/Object;
.source "CurrencyCode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/currency/CurrencyCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCurrencyCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CurrencyCode.kt\ncom/stripe/currency/CurrencyCode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2859:1\n1#2:2860\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u0005J\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u001a\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000bJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0016\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008J\u001e\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0008R\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/currency/CurrencyCode$Companion;",
        "",
        "()V",
        "numericMap",
        "",
        "",
        "Lcom/stripe/currency/CurrencyCode;",
        "canonicalize",
        "",
        "code",
        "caseSensitive",
        "",
        "getByCode",
        "getByCodeIgnoreCase",
        "getByCountry",
        "",
        "country",
        "Lcom/stripe/currency/CountryCode;",
        "getByCountryIgnoreCase",
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

    .line 2649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/currency/CurrencyCode$Companion;-><init>()V

    return-void
.end method

.method private final canonicalize(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 2750
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    return-object p1

    .line 2757
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


# virtual methods
.method public final getByCode(I)Lcom/stripe/currency/CurrencyCode;
    .locals 1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2746
    :cond_0
    invoke-static {}, Lcom/stripe/currency/CurrencyCode;->access$getNumericMap$cp()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/currency/CurrencyCode;

    return-object p1
.end method

.method public final getByCode(Ljava/lang/String;)Lcom/stripe/currency/CurrencyCode;
    .locals 1

    const/4 v0, 0x1

    .line 2675
    invoke-virtual {p0, p1, v0}, Lcom/stripe/currency/CurrencyCode$Companion;->getByCode(Ljava/lang/String;Z)Lcom/stripe/currency/CurrencyCode;

    move-result-object p1

    return-object p1
.end method

.method public final getByCode(Ljava/lang/String;Z)Lcom/stripe/currency/CurrencyCode;
    .locals 4

    .line 2723
    invoke-direct {p0, p1, p2}, Lcom/stripe/currency/CurrencyCode$Companion;->canonicalize(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/stripe/currency/CurrencyCode;->values()[Lcom/stripe/currency/CurrencyCode;

    move-result-object p2

    .line 2725
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lcom/stripe/currency/CurrencyCode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getByCodeIgnoreCase(Ljava/lang/String;)Lcom/stripe/currency/CurrencyCode;
    .locals 1

    const/4 v0, 0x0

    .line 2698
    invoke-virtual {p0, p1, v0}, Lcom/stripe/currency/CurrencyCode$Companion;->getByCode(Ljava/lang/String;Z)Lcom/stripe/currency/CurrencyCode;

    move-result-object p1

    return-object p1
.end method

.method public final getByCountry(Lcom/stripe/currency/CountryCode;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/currency/CountryCode;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/currency/CurrencyCode;",
            ">;"
        }
    .end annotation

    .line 2841
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_1

    .line 2847
    :cond_0
    invoke-static {}, Lcom/stripe/currency/CurrencyCode;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/enums/EnumEntries;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/currency/CurrencyCode;

    .line 2848
    invoke-virtual {v2}, Lcom/stripe/currency/CurrencyCode;->getCountryList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/stripe/currency/CountryCode;

    if-ne v4, p1, :cond_2

    .line 2850
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public final getByCountry(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/currency/CurrencyCode;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2774
    invoke-virtual {p0, p1, v0}, Lcom/stripe/currency/CurrencyCode$Companion;->getByCountry(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getByCountry(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/stripe/currency/CurrencyCode;",
            ">;"
        }
    .end annotation

    .line 2821
    sget-object v0, Lcom/stripe/currency/CountryCode;->Companion:Lcom/stripe/currency/CountryCode$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/currency/CountryCode$Companion;->getByCode(Ljava/lang/String;Z)Lcom/stripe/currency/CountryCode;

    move-result-object p1

    .line 2820
    invoke-virtual {p0, p1}, Lcom/stripe/currency/CurrencyCode$Companion;->getByCountry(Lcom/stripe/currency/CountryCode;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getByCountryIgnoreCase(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/currency/CurrencyCode;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2795
    invoke-virtual {p0, p1, v0}, Lcom/stripe/currency/CurrencyCode$Companion;->getByCountry(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
