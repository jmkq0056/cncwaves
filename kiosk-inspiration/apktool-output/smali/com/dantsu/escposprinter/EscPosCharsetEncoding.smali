.class public Lcom/dantsu/escposprinter/EscPosCharsetEncoding;
.super Ljava/lang/Object;
.source "EscPosCharsetEncoding.java"


# instance fields
.field private charsetCommand:[B

.field private charsetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/dantsu/escposprinter/EscPosCharsetEncoding;->charsetName:Ljava/lang/String;

    int-to-byte p1, p2

    const/4 p2, 0x3

    .line 15
    new-array p2, p2, [B

    const/16 v0, 0x1b

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    const/16 v0, 0x74

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    const/4 v0, 0x2

    aput-byte p1, p2, v0

    iput-object p2, p0, Lcom/dantsu/escposprinter/EscPosCharsetEncoding;->charsetCommand:[B

    return-void
.end method


# virtual methods
.method public getCommand()[B
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosCharsetEncoding;->charsetCommand:[B

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/dantsu/escposprinter/EscPosCharsetEncoding;->charsetName:Ljava/lang/String;

    return-object v0
.end method
