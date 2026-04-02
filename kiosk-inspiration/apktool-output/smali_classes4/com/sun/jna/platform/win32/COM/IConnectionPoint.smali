.class public interface abstract Lcom/sun/jna/platform/win32/COM/IConnectionPoint;
.super Ljava/lang/Object;
.source "IConnectionPoint.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IUnknown;


# static fields
.field public static final IID_IConnectionPoint:Lcom/sun/jna/platform/win32/Guid$IID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$IID;

    const-string v1, "B196B286-BAB4-101A-B69C-00AA00341D07"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/IConnectionPoint;->IID_IConnectionPoint:Lcom/sun/jna/platform/win32/Guid$IID;

    return-void
.end method


# virtual methods
.method public abstract Advise(Lcom/sun/jna/platform/win32/COM/IUnknownCallback;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetConnectionInterface(Lcom/sun/jna/platform/win32/Guid$IID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract Unadvise(Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method
