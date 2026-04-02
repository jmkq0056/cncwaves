.class public Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;
.super Ljava/lang/Object;
.source "PrinterTextParserLine.java"


# instance fields
.field private columns:[Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

.field private nbrCharColumn:I

.field private nbrCharColumnExceeded:I

.field private nbrCharForgetted:I

.field private nbrColumns:I

.field private textParser:Lcom/dantsu/escposprinter/textparser/PrinterTextParser;


# direct methods
.method public constructor <init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParser;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosParserException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosBarcodeException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->textParser:Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    .line 21
    invoke-virtual {p0}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->getTextParser()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getPrinter()Lcom/dantsu/escposprinter/EscPosPrinter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/dantsu/escposprinter/EscPosPrinter;->getPrinterNbrCharactersPerLine()I

    move-result p1

    .line 23
    invoke-static {}, Lcom/dantsu/escposprinter/textparser/PrinterTextParser;->getRegexAlignTags()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 24
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 29
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    if-lez v4, :cond_0

    .line 32
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move v3, v4

    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p2

    iput p2, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrColumns:I

    int-to-float v0, p1

    int-to-float p2, p2

    div-float/2addr v0, p2

    float-to-double v3, v0

    .line 39
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int p2, v3

    iput p2, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrCharColumn:I

    .line 40
    iget v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrColumns:I

    mul-int/2addr p2, v0

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrCharForgetted:I

    .line 41
    iput v2, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrCharColumnExceeded:I

    .line 42
    new-array p1, v0, [Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->columns:[Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    .line 45
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->columns:[Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    add-int/lit8 v1, v2, 0x1

    new-instance v3, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    invoke-direct {v3, p0, p2}, Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;-><init>(Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;Ljava/lang/String;)V

    aput-object v3, v0, v2

    move v2, v1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public getColumns()[Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->columns:[Lcom/dantsu/escposprinter/textparser/PrinterTextParserColumn;

    return-object v0
.end method

.method public getNbrCharColumn()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrCharColumn:I

    return v0
.end method

.method public getNbrCharColumnExceeded()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrCharColumnExceeded:I

    return v0
.end method

.method public getNbrCharForgetted()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrCharForgetted:I

    return v0
.end method

.method public getNbrColumns()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrColumns:I

    return v0
.end method

.method public getTextParser()Lcom/dantsu/escposprinter/textparser/PrinterTextParser;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->textParser:Lcom/dantsu/escposprinter/textparser/PrinterTextParser;

    return-object v0
.end method

.method public setNbrCharColumn(I)Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;
    .locals 0

    .line 65
    iput p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrCharColumn:I

    return-object p0
.end method

.method public setNbrCharColumnExceeded(I)Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;
    .locals 0

    .line 83
    iput p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrCharColumnExceeded:I

    return-object p0
.end method

.method public setNbrCharForgetted(I)Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;
    .locals 0

    .line 74
    iput p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserLine;->nbrCharForgetted:I

    return-object p0
.end method
