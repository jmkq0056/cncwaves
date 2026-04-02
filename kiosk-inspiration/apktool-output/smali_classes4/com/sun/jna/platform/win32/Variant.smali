.class public interface abstract Lcom/sun/jna/platform/win32/Variant;
.super Ljava/lang/Object;
.source "Variant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Variant$VariantArg;,
        Lcom/sun/jna/platform/win32/Variant$VARIANT;
    }
.end annotation


# static fields
.field public static final VARIANT_FALSE:Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;

.field public static final VARIANT_TRUE:Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;

.field public static final VT_ARRAY:I = 0x2000

.field public static final VT_BLOB:I = 0x41

.field public static final VT_BLOB_OBJECT:I = 0x46

.field public static final VT_BOOL:I = 0xb

.field public static final VT_BSTR:I = 0x8

.field public static final VT_BSTR_BLOB:I = 0xfff

.field public static final VT_BYREF:I = 0x4000

.field public static final VT_CARRAY:I = 0x1c

.field public static final VT_CF:I = 0x47

.field public static final VT_CLSID:I = 0x48

.field public static final VT_CY:I = 0x6

.field public static final VT_DATE:I = 0x7

.field public static final VT_DECIMAL:I = 0xe

.field public static final VT_DISPATCH:I = 0x9

.field public static final VT_EMPTY:I = 0x0

.field public static final VT_ERROR:I = 0xa

.field public static final VT_FILETIME:I = 0x40

.field public static final VT_HRESULT:I = 0x19

.field public static final VT_I1:I = 0x10

.field public static final VT_I2:I = 0x2

.field public static final VT_I4:I = 0x3

.field public static final VT_I8:I = 0x14

.field public static final VT_ILLEGAL:I = 0xffff

.field public static final VT_ILLEGALMASKED:I = 0xfff

.field public static final VT_INT:I = 0x16

.field public static final VT_INT_PTR:I = 0x25

.field public static final VT_LPSTR:I = 0x1e

.field public static final VT_LPWSTR:I = 0x1f

.field public static final VT_NULL:I = 0x1

.field public static final VT_PTR:I = 0x1a

.field public static final VT_R4:I = 0x4

.field public static final VT_R8:I = 0x5

.field public static final VT_RECORD:I = 0x24

.field public static final VT_RESERVED:I = 0x8000

.field public static final VT_SAFEARRAY:I = 0x1b

.field public static final VT_STORAGE:I = 0x43

.field public static final VT_STORED_OBJECT:I = 0x45

.field public static final VT_STREAM:I = 0x42

.field public static final VT_STREAMED_OBJECT:I = 0x44

.field public static final VT_TYPEMASK:I = 0xfff

.field public static final VT_UI1:I = 0x11

.field public static final VT_UI2:I = 0x12

.field public static final VT_UI4:I = 0x13

.field public static final VT_UI8:I = 0x15

.field public static final VT_UINT:I = 0x17

.field public static final VT_UINT_PTR:I = 0x26

.field public static final VT_UNKNOWN:I = 0xd

.field public static final VT_USERDEFINED:I = 0x1d

.field public static final VT_VARIANT:I = 0xc

.field public static final VT_VECTOR:I = 0x1000

.field public static final VT_VERSIONED_STREAM:I = 0x49

.field public static final VT_VOID:I = 0x18


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 126
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;

    const-wide/32 v1, 0xffff

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/win32/Variant;->VARIANT_TRUE:Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;

    .line 127
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/win32/Variant;->VARIANT_FALSE:Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;

    return-void
.end method
