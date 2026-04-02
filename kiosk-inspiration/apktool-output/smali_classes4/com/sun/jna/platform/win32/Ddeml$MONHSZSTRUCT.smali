.class public Lcom/sun/jna/platform/win32/Ddeml$MONHSZSTRUCT;
.super Lcom/sun/jna/Structure;
.source "Ddeml.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cb",
        "fsAction",
        "dwTime",
        "hsz",
        "hTask",
        "str"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Ddeml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MONHSZSTRUCT"
.end annotation


# instance fields
.field public cb:I

.field public dwTime:I

.field public fsAction:I

.field public hTask:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public hsz:Lcom/sun/jna/platform/win32/Ddeml$HSZ;

.field public str:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 365
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x1

    .line 420
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Ddeml$MONHSZSTRUCT;->str:[B

    return-void
.end method


# virtual methods
.method public getStr()Ljava/lang/String;
    .locals 4

    .line 436
    const-string v0, "str"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/Ddeml$MONHSZSTRUCT;->fieldOffset(Ljava/lang/String;)I

    move-result v0

    .line 437
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object v2, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    if-ne v1, v2, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ddeml$MONHSZSTRUCT;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 440
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Ddeml$MONHSZSTRUCT;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read()V
    .locals 1

    .line 430
    const-string v0, "cb"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/Ddeml$MONHSZSTRUCT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    .line 431
    iget v0, p0, Lcom/sun/jna/platform/win32/Ddeml$MONHSZSTRUCT;->cb:I

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/Ddeml$MONHSZSTRUCT;->allocateMemory(I)V

    .line 432
    invoke-super {p0}, Lcom/sun/jna/Structure;->read()V

    return-void
.end method

.method public write()V
    .locals 1

    const/4 v0, 0x1

    .line 424
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/Ddeml$MONHSZSTRUCT;->calculateSize(Z)I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/Ddeml$MONHSZSTRUCT;->cb:I

    .line 425
    invoke-super {p0}, Lcom/sun/jna/Structure;->write()V

    return-void
.end method
