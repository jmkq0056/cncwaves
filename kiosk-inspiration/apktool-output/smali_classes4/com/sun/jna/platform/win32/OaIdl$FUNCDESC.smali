.class public Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "memid",
        "lprgscode",
        "lprgelemdescParam",
        "funckind",
        "invkind",
        "callconv",
        "cParams",
        "cParamsOpt",
        "oVft",
        "cScodes",
        "elemdescFunc",
        "wFuncFlags"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FUNCDESC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC$ByReference;
    }
.end annotation


# instance fields
.field public cParams:Lcom/sun/jna/platform/win32/WinDef$SHORT;

.field public cParamsOpt:Lcom/sun/jna/platform/win32/WinDef$SHORT;

.field public cScodes:Lcom/sun/jna/platform/win32/WinDef$SHORT;

.field public callconv:Lcom/sun/jna/platform/win32/OaIdl$CALLCONV;

.field public elemdescFunc:Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

.field public funckind:Lcom/sun/jna/platform/win32/OaIdl$FUNCKIND;

.field public invkind:Lcom/sun/jna/platform/win32/OaIdl$INVOKEKIND;

.field public lprgelemdescParam:Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;

.field public lprgscode:Lcom/sun/jna/platform/win32/OaIdl$ScodeArg$ByReference;

.field public memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

.field public oVft:Lcom/sun/jna/platform/win32/WinDef$SHORT;

.field public wFuncFlags:Lcom/sun/jna/platform/win32/WinDef$WORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1320
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 1324
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1325
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->read()V

    .line 1327
    iget-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->cParams:Lcom/sun/jna/platform/win32/WinDef$SHORT;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$SHORT;->shortValue()S

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 1328
    iget-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->lprgelemdescParam:Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;

    iget-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->cParams:Lcom/sun/jna/platform/win32/WinDef$SHORT;

    .line 1329
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$SHORT;->shortValue()S

    move-result v0

    new-array v0, v0, [Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    iput-object v0, p1, Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;->elemDescArg:[Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    .line 1330
    iget-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->lprgelemdescParam:Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$ElemDescArg$ByReference;->read()V

    :cond_0
    return-void
.end method
