.class public final Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;
.super Ljava/lang/Object;
.source "DefaultDomesticDebitAidsParser.kt"

# interfaces
.implements Lcom/stripe/hardware/emv/DomesticDebitAidsParser;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\u0007H\u0016J\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006*\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\tJ\u0014\u0010\n\u001a\u00020\u000b*\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;",
        "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
        "logger",
        "Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;",
        "(Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;)V",
        "parse",
        "",
        "",
        "domesticDebitAids",
        "parse$impl_release",
        "readByte",
        "",
        "cursor",
        "impl_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final logger:Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;


# direct methods
.method public constructor <init>(Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;)V
    .locals 1

    const-string v0, "logger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;->logger:Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;

    return-void
.end method

.method private final readByte(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x2

    .line 62
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "substring(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x10

    invoke-static {p2}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public parse(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "domesticDebitAids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;->parse$impl_release(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final parse$impl_release(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 16
    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    const/4 v1, 0x0

    .line 20
    :try_start_0
    invoke-direct {p0, p1, v1}, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;->readByte(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v3, 0xa

    const/4 v4, 0x0

    if-gt v1, v3, :cond_2

    move v3, v2

    .line 27
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v2

    if-gt v3, v5, :cond_1

    .line 30
    :try_start_1
    invoke-direct {p0, p1, v3}, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;->readByte(Ljava/lang/String;I)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    mul-int/2addr v5, v2

    add-int/lit8 v3, v3, 0x2

    const/16 v6, 0x14

    if-gt v5, v6, :cond_0

    add-int v6, v3, v5

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v6, v7, :cond_0

    .line 37
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v5, "substring(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;->logger:Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Domestic debit AID length greater than 10 bytes: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4, v2, v4}, Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;->e$default(Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 42
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v0

    .line 32
    iget-object v1, p0, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;->logger:Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AID length is not hex representable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, p1, v0}, Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 46
    :cond_1
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 47
    iget-object v0, p0, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;->logger:Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Domestic debit AID list mismatch: Expected "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    const-string v3, " but got "

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 49
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {v0, p1, v4, v2, v4}, Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;->e$default(Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 51
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;->logger:Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Domestic debit AID list size greater than 10: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v4, v2, v4}, Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;->e$default(Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    return-object v0

    :catch_1
    move-exception v0

    .line 22
    iget-object v1, p0, Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;->logger:Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Number of AIDs is not hex representable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-interface {v1, p1, v0}, Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method
