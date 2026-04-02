.class public Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "guid",
        "lcid",
        "dwReserved",
        "memidConstructor",
        "memidDestructor",
        "lpstrSchema",
        "cbSizeInstance",
        "typekind",
        "cFuncs",
        "cVars",
        "cImplTypes",
        "cbSizeVft",
        "cbAlignment",
        "wTypeFlags",
        "wMajorVerNum",
        "wMinorVerNum",
        "tdescAlias",
        "idldescType"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TYPEATTR"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR$ByReference;
    }
.end annotation


# static fields
.field public static final TYPEFLAGS_FAGGREGATABLE:I = 0x400

.field public static final TYPEFLAGS_FAPPOBJECT:I = 0x1

.field public static final TYPEFLAGS_FCANCREATE:I = 0x2

.field public static final TYPEFLAGS_FCONTROL:I = 0x20

.field public static final TYPEFLAGS_FDISPATCHABLE:I = 0x1000

.field public static final TYPEFLAGS_FDUAL:I = 0x40

.field public static final TYPEFLAGS_FHIDDEN:I = 0x10

.field public static final TYPEFLAGS_FLICENSED:I = 0x4

.field public static final TYPEFLAGS_FNONEXTENSIBLE:I = 0x80

.field public static final TYPEFLAGS_FOLEAUTOMATION:I = 0x100

.field public static final TYPEFLAGS_FPREDECLID:I = 0x8

.field public static final TYPEFLAGS_FPROXY:I = 0x4000

.field public static final TYPEFLAGS_FREPLACEABLE:I = 0x800

.field public static final TYPEFLAGS_FRESTRICTED:I = 0x200

.field public static final TYPEFLAGS_FREVERSEBIND:I = 0x2000


# instance fields
.field public cFuncs:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public cImplTypes:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public cVars:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public cbAlignment:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public cbSizeInstance:Lcom/sun/jna/platform/win32/WinDef$ULONG;

.field public cbSizeVft:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public dwReserved:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public guid:Lcom/sun/jna/platform/win32/Guid$GUID;

.field public idldescType:Lcom/sun/jna/platform/win32/OaIdl$IDLDESC;

.field public lcid:Lcom/sun/jna/platform/win32/WinDef$LCID;

.field public lpstrSchema:Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;

.field public memidConstructor:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

.field public memidDestructor:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

.field public tdescAlias:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;

.field public typekind:Lcom/sun/jna/platform/win32/OaIdl$TYPEKIND;

.field public wMajorVerNum:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public wMinorVerNum:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public wTypeFlags:Lcom/sun/jna/platform/win32/WinDef$WORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1897
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1901
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1902
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEATTR;->read()V

    return-void
.end method
