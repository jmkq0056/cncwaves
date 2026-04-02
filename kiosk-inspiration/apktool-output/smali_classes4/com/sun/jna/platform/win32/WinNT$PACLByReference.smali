.class public Lcom/sun/jna/platform/win32/WinNT$PACLByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PACLByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 2544
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$PACLByReference;-><init>(Lcom/sun/jna/platform/win32/WinNT$ACL;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinNT$ACL;)V
    .locals 1

    .line 2548
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 2549
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$PACLByReference;->setValue(Lcom/sun/jna/platform/win32/WinNT$ACL;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/WinNT$ACL;
    .locals 3

    .line 2557
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PACLByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2562
    :cond_0
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$ACL;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/WinNT$ACL;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v1
.end method

.method public setValue(Lcom/sun/jna/platform/win32/WinNT$ACL;)V
    .locals 3

    .line 2553
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PACLByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinNT$ACL;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    return-void
.end method
