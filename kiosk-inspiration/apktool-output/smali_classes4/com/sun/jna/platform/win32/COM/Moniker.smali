.class public Lcom/sun/jna/platform/win32/COM/Moniker;
.super Lcom/sun/jna/platform/win32/COM/Unknown;
.source "Moniker.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IMoniker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/COM/Moniker$ByReference;
    }
.end annotation


# static fields
.field static final vTableIdStart:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public BindToObject()V
    .locals 1

    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public BindToStorage()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public CommonPrefixWith()V
    .locals 1

    .line 123
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ComposeWith()V
    .locals 1

    .line 74
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public Enum()V
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public GetClassID()Lcom/sun/jna/platform/win32/Guid$CLSID;
    .locals 1

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public GetDisplayName(Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/COM/Moniker;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    filled-new-array {v1, p1, p2, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-class p2, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    const/16 v1, 0x14

    invoke-virtual {p0, v1, p1, p2}, Lcom/sun/jna/platform/win32/COM/Moniker;->_invokeNativeObject(I[Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    .line 142
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 144
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 149
    :cond_0
    new-instance p2, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;

    invoke-direct {p2, p1}, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;-><init>(Lcom/sun/jna/Pointer;)V

    .line 150
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;->getValue()Ljava/lang/String;

    move-result-object p2

    .line 151
    sget-object v0, Lcom/sun/jna/platform/win32/Ole32;->INSTANCE:Lcom/sun/jna/platform/win32/Ole32;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/Ole32;->CoTaskMemFree(Lcom/sun/jna/Pointer;)V

    return-object p2
.end method

.method public GetSizeMax()V
    .locals 1

    .line 188
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public GetTimeOfLastChange()V
    .locals 1

    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public Hash()V
    .locals 1

    .line 95
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public Inverse()V
    .locals 1

    .line 116
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public IsDirty()Z
    .locals 1

    .line 173
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public IsEqual()V
    .locals 1

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public IsRunning()V
    .locals 1

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public IsSystemMoniker()V
    .locals 1

    .line 167
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public Load(Lcom/sun/jna/platform/win32/COM/IStream;)V
    .locals 0

    .line 178
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public ParseDisplayName()V
    .locals 1

    .line 160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public Reduce()V
    .locals 1

    .line 67
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public RelativePathTo()V
    .locals 1

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public Save(Lcom/sun/jna/platform/win32/COM/IStream;)V
    .locals 0

    .line 183
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
