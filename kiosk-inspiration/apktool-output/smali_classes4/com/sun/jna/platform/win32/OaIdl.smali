.class public interface abstract Lcom/sun/jna/platform/win32/OaIdl;
.super Ljava/lang/Object;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;,
        Lcom/sun/jna/platform/win32/OaIdl$HREFTYPEByReference;,
        Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;,
        Lcom/sun/jna/platform/win32/OaIdl$PARAMDESCEX;,
        Lcom/sun/jna/platform/win32/OaIdl$PARAMDESC;,
        Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC;,
        Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;,
        Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;,
        Lcom/sun/jna/platform/win32/OaIdl$VARKIND;,
        Lcom/sun/jna/platform/win32/OaIdl$CALLCONV;,
        Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;,
        Lcom/sun/jna/platform/win32/OaIdl$FUNCKIND;,
        Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;,
        Lcom/sun/jna/platform/win32/OaIdl$VARDESC;,
        Lcom/sun/jna/platform/win32/OaIdl$ScodeArg;,
        Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg;,
        Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;,
        Lcom/sun/jna/platform/win32/OaIdl$BINDPTR;,
        Lcom/sun/jna/platform/win32/OaIdl$TLIBATTR;,
        Lcom/sun/jna/platform/win32/OaIdl$LIBFLAGS;,
        Lcom/sun/jna/platform/win32/OaIdl$SYSKIND;,
        Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;,
        Lcom/sun/jna/platform/win32/OaIdl$CURRENCY;,
        Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;,
        Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYByReference;,
        Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;,
        Lcom/sun/jna/platform/win32/OaIdl$DESCKIND;,
        Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;,
        Lcom/sun/jna/platform/win32/OaIdl$MEMBERIDByReference;,
        Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;,
        Lcom/sun/jna/platform/win32/OaIdl$DISPIDByReference;,
        Lcom/sun/jna/platform/win32/OaIdl$DISPID;,
        Lcom/sun/jna/platform/win32/OaIdl$DATE;,
        Lcom/sun/jna/platform/win32/OaIdl$_VARIANT_BOOLByReference;,
        Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOLByReference;,
        Lcom/sun/jna/platform/win32/OaIdl$_VARIANT_BOOL;,
        Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;,
        Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;
    }
.end annotation


# static fields
.field public static final DATE_OFFSET:J

.field public static final DISPID_COLLECT:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

.field public static final DISPID_CONSTRUCTOR:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

.field public static final DISPID_DESTRUCTOR:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

.field public static final DISPID_EVALUATE:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

.field public static final DISPID_NEWENUM:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

.field public static final DISPID_PROPERTYPUT:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

.field public static final DISPID_UNKNOWN:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

.field public static final DISPID_VALUE:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

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

.field public static final MEMBERID_NIL:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 91
    new-instance v0, Ljava/util/Date;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/16 v2, 0xb

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sput-wide v0, Lcom/sun/jna/platform/win32/OaIdl;->DATE_OFFSET:J

    .line 350
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    const/4 v1, -0x8

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    sput-object v0, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_COLLECT:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    .line 354
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    const/4 v1, -0x6

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    sput-object v0, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_CONSTRUCTOR:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    .line 358
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    const/4 v1, -0x7

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    sput-object v0, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_DESTRUCTOR:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    .line 364
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    const/4 v1, -0x5

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    sput-object v0, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_EVALUATE:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    .line 370
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    const/4 v1, -0x4

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    sput-object v0, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_NEWENUM:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    .line 374
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    const/4 v1, -0x3

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    sput-object v0, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_PROPERTYPUT:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    .line 379
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    sput-object v0, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_UNKNOWN:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    .line 385
    new-instance v1, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    sput-object v1, Lcom/sun/jna/platform/win32/OaIdl;->DISPID_VALUE:Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    .line 387
    new-instance v1, Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    .line 388
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;-><init>(I)V

    sput-object v1, Lcom/sun/jna/platform/win32/OaIdl;->MEMBERID_NIL:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    return-void
.end method
