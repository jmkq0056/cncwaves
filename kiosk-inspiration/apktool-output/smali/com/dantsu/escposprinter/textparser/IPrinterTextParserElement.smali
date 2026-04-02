.class public interface abstract Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;
.super Ljava/lang/Object;
.source "IPrinterTextParserElement.java"


# virtual methods
.method public abstract length()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;
        }
    .end annotation
.end method

.method public abstract print(Lcom/dantsu/escposprinter/EscPosPrinterCommands;)Lcom/dantsu/escposprinter/textparser/IPrinterTextParserElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dantsu/escposprinter/exceptions/EscPosEncodingException;,
            Lcom/dantsu/escposprinter/exceptions/EscPosConnectionException;
        }
    .end annotation
.end method
