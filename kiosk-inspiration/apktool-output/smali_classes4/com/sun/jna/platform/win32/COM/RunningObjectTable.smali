.class public Lcom/sun/jna/platform/win32/COM/RunningObjectTable;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "RunningObjectTable.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IRunningObjectTable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/RunningObjectTable$ByReference;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public EnumRunning(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 v1, 0x9

    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetObject(Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public GetTimeOfLastChange(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinBase$FILETIME$ByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public IsRunning(Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 75
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public NoteChangeTime(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public Register(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1, p2}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method

.method public Revoke(Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-class v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/jna/platform/win32/COM/RunningObjectTable;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    return-object p1
.end method
