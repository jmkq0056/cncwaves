.class public final Lcom/stripe/currency/CurrencyFormatter;
.super Ljava/lang/Object;
.source "CurrencyFormatter.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCurrencyFormatter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CurrencyFormatter.kt\ncom/stripe/currency/CurrencyFormatter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0007\u0008\u0007\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/currency/CurrencyFormatter;",
        "",
        "()V",
        "format",
        "",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "locale",
        "Ljava/util/Locale;",
        "",
        "currency",
        "Lcom/stripe/currency/CurrencyCode;",
        "currencyCode",
        "decimals",
        "",
        "wiring"
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
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic format$default(Lcom/stripe/currency/CurrencyFormatter;JLcom/stripe/currency/CurrencyCode;Ljava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 36
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/currency/CurrencyFormatter;->format(JLcom/stripe/currency/CurrencyCode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic format$default(Lcom/stripe/currency/CurrencyFormatter;JLjava/lang/String;ILjava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 54
    invoke-virtual/range {v0 .. v5}, Lcom/stripe/currency/CurrencyFormatter;->format(JLjava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic format$default(Lcom/stripe/currency/CurrencyFormatter;Lcom/stripe/currency/Amount;Ljava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 45
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/stripe/currency/CurrencyFormatter;->format(Lcom/stripe/currency/Amount;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final format(JLcom/stripe/currency/CurrencyCode;Ljava/util/Locale;)Ljava/lang/String;
    .locals 7

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p3}, Lcom/stripe/currency/CurrencyCode;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/stripe/currency/CurrencyCode;->getMinorUnit()I

    move-result v5

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/stripe/currency/CurrencyFormatter;->format(JLjava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final format(JLjava/lang/String;ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    const-string v0, "currencyCode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-gez p4, :cond_0

    const/4 p4, 0x0

    .line 59
    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p1

    const-string p2, "valueOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/math/BigDecimal;->movePointLeft(I)Ljava/math/BigDecimal;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_1

    const-string p2, "-"

    goto :goto_0

    :cond_1
    const-string p2, ""

    :goto_0
    if-eqz p5, :cond_2

    .line 64
    :try_start_0
    invoke-static {p5}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p4

    if-nez p4, :cond_3

    .line 65
    :cond_2
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object p4

    .line 66
    :cond_3
    invoke-static {p3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 67
    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 68
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 71
    :catch_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    sget-object p4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, p4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "toUpperCase(...)"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 p3, 0x20

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final format(Lcom/stripe/currency/Amount;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lcom/stripe/currency/Amount;->getValue()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/stripe/currency/Amount;->getCurrency()Lcom/stripe/currency/CurrencyCode;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/stripe/currency/CurrencyFormatter;->format(JLcom/stripe/currency/CurrencyCode;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
