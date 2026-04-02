.class final Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;
.super Ljava/lang/Object;
.source "IEnumIDList.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IEnumIDList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter;->PointerToIEnumIDList(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/COM/IEnumIDList;
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

    .line 204
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    iput-object p2, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AddRef()I
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public Clone(Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 244
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public Next(ILcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 226
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 209
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v2, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public Release()I
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public Reset()Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 238
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method

.method public Skip(I)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$vTable:[Lcom/sun/jna/Pointer;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    const/16 v1, 0x3f

    invoke-static {v0, v1}, Lcom/sun/jna/Function;->getFunction(Lcom/sun/jna/Pointer;I)Lcom/sun/jna/Function;

    move-result-object v0

    .line 232
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/COM/IEnumIDList$Converter$1;->val$interfacePointer:Lcom/sun/jna/Pointer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/jna/Function;->invokeInt([Ljava/lang/Object;)I

    move-result p1

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v1
.end method
