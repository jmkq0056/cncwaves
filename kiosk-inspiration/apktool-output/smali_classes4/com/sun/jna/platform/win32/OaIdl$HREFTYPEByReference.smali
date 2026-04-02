.class public Lcom/sun/jna/platform/win32/OaIdl$HREFTYPEByReference;
.super Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;
.source "OaIdl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HREFTYPEByReference"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1841
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPEByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V
    .locals 0

    .line 1845
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    return-void
.end method


# virtual methods
.method public getValue()Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;
    .locals 4

    .line 1854
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPEByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;-><init>(J)V

    return-object v0
.end method

.method public bridge synthetic getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;
    .locals 1

    .line 1839
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPEByReference;->getValue()Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;)V
    .locals 3

    .line 1849
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPEByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/jna/Pointer;->setInt(JI)V

    return-void
.end method
