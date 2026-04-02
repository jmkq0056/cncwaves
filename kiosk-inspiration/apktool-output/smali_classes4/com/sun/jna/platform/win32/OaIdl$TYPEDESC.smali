.class public Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "_typedesc",
        "vt"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TYPEDESC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;,
        Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$ByReference;
    }
.end annotation


# instance fields
.field public _typedesc:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;

.field public vt:Lcom/sun/jna/platform/win32/WTypes$VARTYPE;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1696
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1697
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1701
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1702
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;Lcom/sun/jna/platform/win32/WTypes$VARTYPE;)V
    .locals 0

    .line 1705
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 1706
    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;->_typedesc:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;

    .line 1707
    iput-object p2, p0, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;->vt:Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    return-void
.end method
