.class public Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;
.super Ljava/lang/Object;
.source "PrinterTextParserTag.java"


# instance fields
.field private attributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCloseTag:Z

.field private length:I

.field private tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->tagName:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->attributes:Ljava/util/Hashtable;

    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->length:I

    .line 10
    iput-boolean v1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->isCloseTag:Z

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    .line 15
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ">"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iput v3, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->length:I

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 21
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 22
    const-string v5, " "

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-ge v5, v4, :cond_2

    add-int/2addr v3, v2

    .line 25
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->tagName:Ljava/lang/String;

    .line 27
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 28
    :goto_0
    const-string v3, "=\'"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 29
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v3, 0x2

    const-string v5, "\'"

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 31
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 35
    iget-object v6, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v6, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 38
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    add-int/2addr v3, v2

    .line 41
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->tagName:Ljava/lang/String;

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->tagName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 46
    iget-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->tagName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->tagName:Ljava/lang/String;

    .line 47
    iput-boolean v2, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->isCloseTag:Z

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAttributes()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->attributes:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->length:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isCloseTag()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/dantsu/escposprinter/textparser/PrinterTextParserTag;->isCloseTag:Z

    return v0
.end method
