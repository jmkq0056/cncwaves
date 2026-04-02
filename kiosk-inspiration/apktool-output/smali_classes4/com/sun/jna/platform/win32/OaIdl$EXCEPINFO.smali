.class public Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "wCode",
        "wReserved",
        "bstrSource",
        "bstrDescription",
        "bstrHelpFile",
        "dwHelpContext",
        "pvReserved",
        "pfnDeferredFillIn",
        "scode"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EXCEPINFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;
    }
.end annotation


# instance fields
.field public bstrDescription:Lcom/sun/jna/platform/win32/WTypes$BSTR;

.field public bstrHelpFile:Lcom/sun/jna/platform/win32/WTypes$BSTR;

.field public bstrSource:Lcom/sun/jna/platform/win32/WTypes$BSTR;

.field public dwHelpContext:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public pfnDeferredFillIn:Lcom/sun/jna/platform/win32/OaIdl$EXCEPINFO$ByReference;

.field public pvReserved:Lcom/sun/jna/platform/win32/WinDef$PVOID;

.field public scode:Lcom/sun/jna/platform/win32/WinDef$SCODE;

.field public wCode:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public wReserved:Lcom/sun/jna/platform/win32/WinDef$WORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method
