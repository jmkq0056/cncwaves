.class public interface abstract Lcom/sun/jna/platform/win32/COM/IDispatch;
.super Ljava/lang/Object;
.source "IDispatch.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IUnknown;


# static fields
.field public static final IID_IDISPATCH:Lcom/sun/jna/platform/win32/Guid$IID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$IID;

    const-string v1, "00020400-0000-0000-C000-000000000046"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/IDispatch;->IID_IDISPATCH:Lcom/sun/jna/platform/win32/Guid$IID;

    return-void
.end method


# virtual methods
.method public abstract GetIDsOfNames(Lcom/sun/jna/platform/win32/Guid$REFIID;[Lcom/sun/jna/WString;ILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetTypeInfo(Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetTypeInfoCount(Lcom/sun/jna/platform/win32/WinDef$UINTByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract Invoke(Lcom/sun/jna/platform/win32/OaIdl$DISPID;Lcom/sun/jna/platform/win32/Guid$REFIID;Lcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/platform/win32/WinDef$WORD;Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;Lcom/sun/jna/ptr/IntByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method
