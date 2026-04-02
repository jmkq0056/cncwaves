.class public interface abstract Lcom/sun/jna/platform/win32/COM/IRecordInfo;
.super Ljava/lang/Object;
.source "IRecordInfo.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/COM/IUnknown;


# static fields
.field public static final IID_IRecordInfo:Lcom/sun/jna/platform/win32/Guid$IID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/sun/jna/platform/win32/Guid$IID;

    const-string v1, "{0000002F-0000-0000-C000-000000000046}"

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Guid$IID;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sun/jna/platform/win32/COM/IRecordInfo;->IID_IRecordInfo:Lcom/sun/jna/platform/win32/Guid$IID;

    return-void
.end method


# virtual methods
.method public abstract GetField(Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/WString;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetFieldNames(Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/platform/win32/WTypes$BSTR;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetFieldNoCopy(Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/WString;Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/WinDef$PVOID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetGuid(Lcom/sun/jna/platform/win32/Guid$GUID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetName(Lcom/sun/jna/platform/win32/WTypes$BSTR;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetSize(Lcom/sun/jna/platform/win32/WinDef$ULONG;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract GetTypeInfo(Lcom/sun/jna/platform/win32/COM/ITypeInfo;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract IsMatchingType(Lcom/sun/jna/platform/win32/COM/IRecordInfo;)Lcom/sun/jna/platform/win32/WinDef$BOOL;
.end method

.method public abstract PutField(Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/WString;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract PutFieldNoCopy(Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/WString;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract RecordClear(Lcom/sun/jna/platform/win32/WinDef$PVOID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract RecordCopy(Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/platform/win32/WinDef$PVOID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract RecordCreate()Lcom/sun/jna/platform/win32/WinDef$PVOID;
.end method

.method public abstract RecordCreateCopy(Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/platform/win32/WinDef$PVOID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract RecordDestroy(Lcom/sun/jna/platform/win32/WinDef$PVOID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract RecordInit(Lcom/sun/jna/platform/win32/WinDef$PVOID;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method
