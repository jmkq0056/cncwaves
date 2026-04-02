.class public Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;
.super Lcom/sun/jna/Union;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "_TYPEDESC"
.end annotation


# instance fields
.field public hreftype:Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;

.field public lpadesc:Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC$ByReference;

.field public lptdesc:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1663
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 1664
    const-string v0, "hreftype"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->setType(Ljava/lang/String;)V

    .line 1665
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1669
    invoke-direct {p0, p1}, Lcom/sun/jna/Union;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1670
    const-string p1, "hreftype"

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->setType(Ljava/lang/String;)V

    .line 1671
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->read()V

    return-void
.end method


# virtual methods
.method public getHreftype()Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;
    .locals 1

    .line 1687
    const-string v0, "hreftype"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->setType(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->read()V

    .line 1689
    iget-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->hreftype:Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;

    return-object v0
.end method

.method public getLpadesc()Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC$ByReference;
    .locals 1

    .line 1681
    const-string v0, "lpadesc"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->setType(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->read()V

    .line 1683
    iget-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->lpadesc:Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC$ByReference;

    return-object v0
.end method

.method public getLptdesc()Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$ByReference;
    .locals 1

    .line 1675
    const-string v0, "lptdesc"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->setType(Ljava/lang/String;)V

    .line 1676
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->read()V

    .line 1677
    iget-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->lptdesc:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$ByReference;

    return-object v0
.end method
