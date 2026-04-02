.class public Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;
.super Lcom/sun/jna/Union;
.source "Variant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "__VARIANT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT$BRECORD;
    }
.end annotation


# instance fields
.field public bVal:Lcom/sun/jna/platform/win32/WinDef$BYTE;

.field public boolVal:Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;

.field public bstrVal:Lcom/sun/jna/platform/win32/WTypes$BSTR;

.field public byref:Lcom/sun/jna/platform/win32/WinDef$PVOID;

.field public cVal:Lcom/sun/jna/platform/win32/WinDef$CHAR;

.field public cyVal:Lcom/sun/jna/platform/win32/OaIdl$CURRENCY;

.field public date:Lcom/sun/jna/platform/win32/OaIdl$DATE;

.field public dblVal:Ljava/lang/Double;

.field public fltVal:Ljava/lang/Float;

.field public iVal:Lcom/sun/jna/platform/win32/WinDef$SHORT;

.field public intVal:Ljava/lang/Integer;

.field public lVal:Lcom/sun/jna/platform/win32/WinDef$LONG;

.field public llVal:Lcom/sun/jna/platform/win32/WinDef$LONGLONG;

.field public parray:Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;

.field public pbVal:Lcom/sun/jna/ptr/ByteByReference;

.field public pbool:Lcom/sun/jna/platform/win32/OaIdl$_VARIANT_BOOLByReference;

.field public pboolVal:Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOLByReference;

.field public pbstrVal:Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;

.field public pcVal:Lcom/sun/jna/platform/win32/WinDef$CHARByReference;

.field public pcyVal:Lcom/sun/jna/platform/win32/OaIdl$CURRENCY$ByReference;

.field public pdate:Lcom/sun/jna/platform/win32/OaIdl$DATE$ByReference;

.field public pdblVal:Lcom/sun/jna/ptr/DoubleByReference;

.field public pdecVal:Lcom/sun/jna/platform/win32/OaIdl$DECIMAL$ByReference;

.field public pdispVal:Lcom/sun/jna/platform/win32/COM/Dispatch;

.field public pfltVal:Lcom/sun/jna/ptr/FloatByReference;

.field public piVal:Lcom/sun/jna/ptr/ShortByReference;

.field public pintVal:Lcom/sun/jna/ptr/IntByReference;

.field public plVal:Lcom/sun/jna/platform/win32/WinDef$LONGByReference;

.field public pllVal:Lcom/sun/jna/platform/win32/WinDef$LONGLONGByReference;

.field public pparray:Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYByReference;

.field public ppdispVal:Lcom/sun/jna/platform/win32/COM/Dispatch$ByReference;

.field public ppunkVal:Lcom/sun/jna/platform/win32/COM/Unknown$ByReference;

.field public pscode:Lcom/sun/jna/platform/win32/WinDef$SCODEByReference;

.field public puiVal:Lcom/sun/jna/platform/win32/WinDef$USHORTByReference;

.field public puintVal:Lcom/sun/jna/platform/win32/WinDef$UINTByReference;

.field public pulVal:Lcom/sun/jna/platform/win32/WinDef$ULONGByReference;

.field public pullVal:Lcom/sun/jna/platform/win32/WinDef$ULONGLONGByReference;

.field public punkVal:Lcom/sun/jna/platform/win32/COM/Unknown;

.field public pvRecord:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT$BRECORD;

.field public pvarVal:Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;

.field public scode:Lcom/sun/jna/platform/win32/WinDef$SCODE;

.field public uiVal:Lcom/sun/jna/platform/win32/WinDef$USHORT;

.field public uintVal:Lcom/sun/jna/platform/win32/WinDef$UINT;

.field public ulVal:Lcom/sun/jna/platform/win32/WinDef$ULONG;

.field public ullVal:Lcom/sun/jna/platform/win32/WinDef$ULONGLONG;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 740
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 741
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 745
    invoke-direct {p0, p1}, Lcom/sun/jna/Union;-><init>(Lcom/sun/jna/Pointer;)V

    .line 746
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->read()V

    return-void
.end method
