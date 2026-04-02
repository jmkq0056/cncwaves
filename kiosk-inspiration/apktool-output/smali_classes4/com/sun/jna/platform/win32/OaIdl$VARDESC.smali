.class public Lcom/sun/jna/platform/win32/OaIdl$VARDESC;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "memid",
        "lpstrSchema",
        "_vardesc",
        "elemdescVar",
        "wVarFlags",
        "varkind"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VARDESC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;,
        Lcom/sun/jna/platform/win32/OaIdl$VARDESC$ByReference;
    }
.end annotation


# instance fields
.field public _vardesc:Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;

.field public elemdescVar:Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

.field public lpstrSchema:Lcom/sun/jna/platform/win32/WTypes$LPOLESTR;

.field public memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

.field public varkind:Lcom/sun/jna/platform/win32/OaIdl$VARKIND;

.field public wVarFlags:Lcom/sun/jna/platform/win32/WinDef$WORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1436
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 1440
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1441
    iget-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$VARDESC;->_vardesc:Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;

    const-string v0, "lpvarValue"

    invoke-virtual {p1, v0}, Lcom/sun/jna/platform/win32/OaIdl$VARDESC$_VARDESC;->setType(Ljava/lang/String;)V

    .line 1442
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$VARDESC;->read()V

    return-void
.end method
