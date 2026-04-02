.class public Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;
.super Lcom/sun/jna/ptr/ByReference;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HANDLEByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1341
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    .locals 1

    .line 1345
    sget v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    invoke-direct {p0, v0}, Lcom/sun/jna/ptr/ByReference;-><init>(I)V

    .line 1346
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->setValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .locals 3

    .line 1354
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1358
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1359
    sget-object v0, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    return-object v0

    .line 1361
    :cond_1
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;-><init>()V

    .line 1362
    invoke-virtual {v1, v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->setPointer(Lcom/sun/jna/Pointer;)V

    return-object v1
.end method

.method public setValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    .locals 3

    .line 1350
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setPointer(JLcom/sun/jna/Pointer;)V

    return-void
.end method
