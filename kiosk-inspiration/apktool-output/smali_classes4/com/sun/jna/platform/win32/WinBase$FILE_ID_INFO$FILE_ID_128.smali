.class public Lcom/sun/jna/platform/win32/WinBase$FILE_ID_INFO$FILE_ID_128;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "Identifier"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase$FILE_ID_INFO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FILE_ID_128"
.end annotation


# instance fields
.field public Identifier:[Lcom/sun/jna/platform/win32/WinDef$BYTE;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 562
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x10

    .line 559
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinDef$BYTE;

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_ID_INFO$FILE_ID_128;->Identifier:[Lcom/sun/jna/platform/win32/WinDef$BYTE;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/16 p1, 0x10

    .line 559
    new-array p1, p1, [Lcom/sun/jna/platform/win32/WinDef$BYTE;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_ID_INFO$FILE_ID_128;->Identifier:[Lcom/sun/jna/platform/win32/WinDef$BYTE;

    .line 567
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_ID_INFO$FILE_ID_128;->read()V

    return-void
.end method

.method public constructor <init>([Lcom/sun/jna/platform/win32/WinDef$BYTE;)V
    .locals 1

    .line 570
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x10

    .line 559
    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinDef$BYTE;

    .line 571
    iput-object p1, p0, Lcom/sun/jna/platform/win32/WinBase$FILE_ID_INFO$FILE_ID_128;->Identifier:[Lcom/sun/jna/platform/win32/WinDef$BYTE;

    .line 572
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$FILE_ID_INFO$FILE_ID_128;->write()V

    return-void
.end method
