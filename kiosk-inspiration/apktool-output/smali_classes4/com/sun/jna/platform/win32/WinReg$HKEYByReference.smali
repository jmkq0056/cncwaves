.class public Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "WinReg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinReg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HKEYByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>(Lcom/sun/jna/platform/win32/WinReg$HKEY;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinReg$HKEY;)V
    .locals 1

    .line 52
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->setValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    sget-object v0, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    check-cast v0, Lcom/sun/jna/platform/win32/WinReg$HKEY;

    return-object v0

    .line 66
    :cond_1
    new-instance v1, Lcom/sun/jna/platform/win32/WinReg$HKEY;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinReg$HKEY;-><init>()V

    .line 67
    invoke-virtual {v1, v0}, Lcom/sun/jna/platform/win32/WinReg$HKEY;->setPointer(Lcom/sun/jna/Pointer;)V

    return-object v1
.end method

.method public setValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;)V
    .locals 3

    .line 57
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinReg$HKEY;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    return-void
.end method
