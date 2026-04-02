.class public interface abstract Lcom/sun/jna/platform/win32/OleAuto;
.super Ljava/lang/Object;
.source "OleAuto.java"

# interfaces
.implements Lcom/sun/jna/win32/StdCallLibrary;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;
    }
.end annotation


# static fields
.field public static final DISPATCH_METHOD:I = 0x1

.field public static final DISPATCH_PROPERTYGET:I = 0x2

.field public static final DISPATCH_PROPERTYPUT:I = 0x4

.field public static final DISPATCH_PROPERTYPUTREF:I = 0x8

.field public static final FADF_AUTO:I = 0x1

.field public static final FADF_BSTR:I = 0x100

.field public static final FADF_DISPATCH:I = 0x400

.field public static final FADF_EMBEDDED:I = 0x4

.field public static final FADF_FIXEDSIZE:I = 0x10

.field public static final FADF_HAVEIID:I = 0x40

.field public static final FADF_HAVEVARTYPE:I = 0x80

.field public static final FADF_RECORD:I = 0x20

.field public static final FADF_RESERVED:I = 0xf008

.field public static final FADF_STATIC:I = 0x2

.field public static final FADF_UNKNOWN:I = 0x200

.field public static final FADF_VARIANT:I = 0x800

.field public static final INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

.field public static final VARIANT_ALPHABOOL:S = 0x2s

.field public static final VARIANT_CALENDAR_GREGORIAN:S = 0x40s

.field public static final VARIANT_CALENDAR_HIJRI:S = 0x8s

.field public static final VARIANT_CALENDAR_THAI:S = 0x20s

.field public static final VARIANT_LOCALBOOL:S = 0x10s

.field public static final VARIANT_NOUSEROVERRIDE:S = 0x4s

.field public static final VARIANT_NOVALUEPROP:S = 0x1s

.field public static final VARIANT_USE_NLS:S = 0x80s


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    const-class v0, Lcom/sun/jna/platform/win32/OleAuto;

    sget-object v1, Lcom/sun/jna/win32/W32APIOptions;->DEFAULT_OPTIONS:Ljava/util/Map;

    const-string v2, "OleAut32"

    invoke-static {v2, v0, v1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/OleAuto;

    sput-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    return-void
.end method


# virtual methods
.method public abstract GetActiveObject(Lcom/sun/jna/platform/win32/Guid$GUID;Lcom/sun/jna/platform/win32/WinDef$PVOID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract LoadRegTypeLib(Lcom/sun/jna/platform/win32/Guid$GUID;IILcom/sun/jna/platform/win32/WinDef$LCID;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract LoadTypeLib(Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayAccessData(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayCreate(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;Lcom/sun/jna/platform/win32/WinDef$UINT;[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;)Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;
.end method

.method public abstract SafeArrayDestroy(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayGetDim(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinDef$UINT;
.end method

.method public abstract SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayGetElemsize(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinDef$UINT;
.end method

.method public abstract SafeArrayGetLBound(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$LONGByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayGetUBound(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$LONGByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayGetVartype(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Lcom/sun/jna/platform/win32/WTypes$VARTYPEByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayLock(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayPtrOfIndex(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayRedim(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayUnaccessData(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SafeArrayUnlock(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract SysAllocString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WTypes$BSTR;
.end method

.method public abstract SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V
.end method

.method public abstract SysStringByteLen(Lcom/sun/jna/platform/win32/WTypes$BSTR;)I
.end method

.method public abstract SysStringLen(Lcom/sun/jna/platform/win32/WTypes$BSTR;)I
.end method

.method public abstract SystemTimeToVariantTime(Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;Lcom/sun/jna/ptr/DoubleByReference;)I
.end method

.method public abstract VariantChangeType(Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;SLcom/sun/jna/platform/win32/WTypes$VARTYPE;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract VariantChangeType(Lcom/sun/jna/platform/win32/Variant$VARIANT;Lcom/sun/jna/platform/win32/Variant$VARIANT;SLcom/sun/jna/platform/win32/WTypes$VARTYPE;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract VariantClear(Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract VariantCopy(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/Variant$VARIANT;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
.end method

.method public abstract VariantInit(Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;)V
.end method

.method public abstract VariantInit(Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
.end method
