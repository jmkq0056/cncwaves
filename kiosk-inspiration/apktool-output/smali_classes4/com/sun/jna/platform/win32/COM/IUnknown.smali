.class public interface abstract Lcom/sun/jna/platform/win32/COM/IUnknown;
.super Ljava/lang/Object;
.source "IUnknown.java"


# static fields
.field public static final IID_IUNKNOWN:Lcom/sun/jna/platform/win32/Guid$IID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$IID;

    const-string v1, "{00000000-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/IUnknown;->IID_IUNKNOWN:Lcom/sun/jna/platform/win32/Guid$IID;

    return-void
.end method


# virtual methods
.method public abstract AddRef()I
.end method

.method public abstract QueryInterface(Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract Release()I
.end method
