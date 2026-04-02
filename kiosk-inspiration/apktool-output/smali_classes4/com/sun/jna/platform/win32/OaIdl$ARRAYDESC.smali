.class public Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "tdescElem",
        "cDims",
        "rgbounds"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ARRAYDESC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC$ByReference;
    }
.end annotation


# instance fields
.field public cDims:S

.field public rgbounds:[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

.field public tdescElem:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1757
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x1

    .line 1754
    new-array v0, v0, [Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    new-instance v1, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC;->rgbounds:[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 1761
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x1

    .line 1754
    new-array p1, p1, [Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC;->rgbounds:[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    .line 1762
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;S[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;)V
    .locals 3

    .line 1773
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x1

    .line 1754
    new-array v0, v0, [Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    new-instance v1, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC;->rgbounds:[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    .line 1774
    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC;->tdescElem:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;

    .line 1775
    iput-short p2, p0, Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC;->cDims:S

    .line 1776
    array-length p1, p3

    array-length p2, v0

    if-ne p1, p2, :cond_0

    .line 1778
    iput-object p3, p0, Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC;->rgbounds:[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    return-void

    .line 1777
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong array size !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
