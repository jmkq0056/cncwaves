.class final Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;
.super Ljava/lang/Object;
.source "IShellFolder.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IShellFolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter;->PointerToIShellFolder(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/COM/IShellFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$interfacePointer:Lcom/sun/jna/Pointer;

.field final synthetic val$vTable:[Lcom/sun/jna/Pointer;


# direct methods
.method constructor <init>([Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AddRef()I
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public BindToObject(Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 498
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 499
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v2, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public BindToStorage(Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 505
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v2, p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public CompareIDs(Lcom/sun/jna/platform/win32/WinDef$LPARAM;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 510
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 511
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v2, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public CreateViewObject(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 516
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/16 v1, 0x8

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 517
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v2, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public EnumObjects(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 494
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v2, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public GetAttributesOf(ILcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 523
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public GetDisplayNameOf(Lcom/sun/jna/Pointer;ILcom/sun/jna/platform/win32/ShTypes$STRRET;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 533
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 534
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v2, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public GetUIObjectOf(Lcom/sun/jna/platform/win32/WinDef$HWND;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 9

    .line 528
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 529
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public ParseDisplayName(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/Pointer;Ljava/lang/String;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 8

    .line 483
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 486
    invoke-static {p3}, Lcom/sun/jna/Native;->toCharArray(Ljava/lang/String;)[C

    move-result-object v4

    .line 487
    new-instance p3, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {p3, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object p3
.end method

.method public QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 467
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public Release()I
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 478
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public SetNameOf(Lcom/sun/jna/platform/win32/WinDef$HWND;Lcom/sun/jna/Pointer;Ljava/lang/String;ILcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 8

    .line 539
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 540
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IShellFolder$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p5

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method
