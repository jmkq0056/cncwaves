.class public Lcom/sun/jna/platform/win32/WinDef$CHARByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "WinDef.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinDef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CHARByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1701
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$CHAR;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$CHAR;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/WinDef$CHARByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$CHAR;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$CHAR;)V
    .locals 1

    const/4 v0, 0x1

    .line 1710
    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 1711
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$CHARByReference;->setValue(Lcom/sun/jna/platform/win32/WinDef$CHAR;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/WinDef$CHAR;
    .locals 4

    .line 1729
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$CHAR;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$CHARByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getChar(J)C

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$CHAR;-><init>(J)V

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/WinDef$CHAR;)V
    .locals 3

    .line 1720
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$CHARByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$CHAR;->byteValue()B

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setByte(JB)V

    return-void
.end method
