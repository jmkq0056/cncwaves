.class public Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;
.super Lcom/sun/jna/Structure;
.source "OleAuto.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "rgvarg",
        "rgdispidNamedArgs",
        "cArgs",
        "cNamedArgs"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OleAuto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DISPPARAMS"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS$ByReference;
    }
.end annotation


# instance fields
.field public cArgs:Lcom/sun/jna/platform/win32/WinDef$UINT;

.field public cNamedArgs:Lcom/sun/jna/platform/win32/WinDef$UINT;

.field public rgdispidNamedArgs:Lcom/sun/jna/Pointer;

.field public rgvarg:Lcom/sun/jna/platform/win32/Variant$VariantArg$ByReference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 842
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 779
    sget-object v0, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->rgdispidNamedArgs:Lcom/sun/jna/Pointer;

    .line 784
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$UINT;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->cArgs:Lcom/sun/jna/platform/win32/WinDef$UINT;

    .line 790
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$UINT;

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->cNamedArgs:Lcom/sun/jna/platform/win32/WinDef$UINT;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 851
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 779
    sget-object p1, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->rgdispidNamedArgs:Lcom/sun/jna/Pointer;

    .line 784
    new-instance p1, Lcom/sun/jna/platform/win32/WinDef$UINT;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->cArgs:Lcom/sun/jna/platform/win32/WinDef$UINT;

    .line 790
    new-instance p1, Lcom/sun/jna/platform/win32/WinDef$UINT;

    invoke-direct {p1, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    iput-object p1, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->cNamedArgs:Lcom/sun/jna/platform/win32/WinDef$UINT;

    .line 852
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->read()V

    return-void
.end method


# virtual methods
.method public getArgs()[Lcom/sun/jna/platform/win32/Variant$VARIANT;
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->rgvarg:Lcom/sun/jna/platform/win32/Variant$VariantArg$ByReference;

    if-eqz v0, :cond_0

    .line 822
    iget-object v1, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->cArgs:Lcom/sun/jna/platform/win32/WinDef$UINT;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$UINT;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VariantArg$ByReference;->setArraySize(I)V

    .line 823
    iget-object v0, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->rgvarg:Lcom/sun/jna/platform/win32/Variant$VariantArg$ByReference;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VariantArg$ByReference;->variantArg:[Lcom/sun/jna/platform/win32/Variant$VARIANT;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 825
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    return-object v0
.end method

.method public getRgdispidNamedArgs()[Lcom/sun/jna/platform/win32/OaIdl$DISPID;
    .locals 6

    .line 794
    iget-object v0, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->cNamedArgs:Lcom/sun/jna/platform/win32/WinDef$UINT;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$UINT;->intValue()I

    move-result v0

    .line 795
    iget-object v1, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->rgdispidNamedArgs:Lcom/sun/jna/Pointer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    const-wide/16 v3, 0x0

    .line 796
    invoke-virtual {v1, v3, v4, v0}, Lcom/sun/jna/Pointer;->getIntArray(JI)[I

    move-result-object v1

    .line 797
    new-array v3, v0, [Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    :goto_0
    if-ge v2, v0, :cond_0

    .line 799
    new-instance v4, Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    aget v5, v1, v2

    invoke-direct {v4, v5}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;-><init>(I)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    .line 802
    :cond_1
    new-array v0, v2, [Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    return-object v0
.end method

.method public setArgs([Lcom/sun/jna/platform/win32/Variant$VARIANT;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 831
    new-array p1, p1, [Lcom/sun/jna/platform/win32/Variant$VARIANT;

    .line 834
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VariantArg$ByReference;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/Variant$VariantArg$ByReference;-><init>([Lcom/sun/jna/platform/win32/Variant$VARIANT;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->rgvarg:Lcom/sun/jna/platform/win32/Variant$VariantArg$ByReference;

    .line 835
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$UINT;

    array-length p1, p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->cArgs:Lcom/sun/jna/platform/win32/WinDef$UINT;

    return-void
.end method

.method public setRgdispidNamedArgs([Lcom/sun/jna/platform/win32/OaIdl$DISPID;)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 809
    new-array p1, v0, [Lcom/sun/jna/platform/win32/OaIdl$DISPID;

    .line 811
    :cond_0
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$UINT;

    array-length v2, p1

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    iput-object v1, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->cNamedArgs:Lcom/sun/jna/platform/win32/WinDef$UINT;

    .line 812
    new-instance v1, Lcom/sun/jna/Memory;

    sget v2, Lcom/sun/jna/platform/win32/OaIdl$DISPID;->SIZE:I

    array-length v3, p1

    mul-int/2addr v2, v3

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    iput-object v1, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->rgdispidNamedArgs:Lcom/sun/jna/Pointer;

    .line 813
    array-length v1, p1

    new-array v5, v1, [I

    :goto_0
    if-ge v0, v1, :cond_1

    .line 815
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/OaIdl$DISPID;->intValue()I

    move-result v2

    aput v2, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    :cond_1
    iget-object v2, p0, Lcom/sun/jna/platform/win32/OleAuto$DISPPARAMS;->rgdispidNamedArgs:Lcom/sun/jna/Pointer;

    const/4 v6, 0x0

    array-length v7, p1

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Pointer;->write(J[III)V

    return-void
.end method
