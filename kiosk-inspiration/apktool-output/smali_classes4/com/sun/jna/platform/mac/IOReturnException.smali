.class public Lcom/sun/jna/platform/mac/IOReturnException;
.super Ljava/lang/RuntimeException;
.source "IOReturnException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private ioReturn:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 47
    invoke-static {p1}, Lcom/sun/jna/platform/mac/IOReturnException;->formatMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/jna/platform/mac/IOReturnException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 60
    iput p1, p0, Lcom/sun/jna/platform/mac/IOReturnException;->ioReturn:I

    return-void
.end method

.method private static formatMessage(I)Ljava/lang/String;
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IOReturn error code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (system="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sun/jna/platform/mac/IOReturnException;->getSystem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", subSystem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sun/jna/platform/mac/IOReturnException;->getSubSystem(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 105
    invoke-static {p0}, Lcom/sun/jna/platform/mac/IOReturnException;->getCode(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCode(I)I
    .locals 0

    and-int/lit16 p0, p0, 0x3fff

    return p0
.end method

.method public static getSubSystem(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0xe

    and-int/lit16 p0, p0, 0xfff

    return p0
.end method

.method public static getSystem(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x1a

    and-int/lit8 p0, p0, 0x3f

    return p0
.end method


# virtual methods
.method public getIOReturnCode()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/sun/jna/platform/mac/IOReturnException;->ioReturn:I

    return v0
.end method
