.class public Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;
.super Lcom/sun/jna/Structure;
.source "OaIdl.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cDims",
        "fFeatures",
        "cbElements",
        "cLocks",
        "pvData",
        "rgsabound"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/OaIdl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SAFEARRAY"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;
    }
.end annotation


# instance fields
.field public cDims:Lcom/sun/jna/platform/win32/WinDef$USHORT;

.field public cLocks:Lcom/sun/jna/platform/win32/WinDef$ULONG;

.field public cbElements:Lcom/sun/jna/platform/win32/WinDef$ULONG;

.field public fFeatures:Lcom/sun/jna/platform/win32/WinDef$USHORT;

.field public pvData:Lcom/sun/jna/platform/win32/WinDef$PVOID;

.field public rgsabound:[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 576
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/4 v0, 0x1

    .line 573
    new-array v0, v0, [Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    new-instance v1, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->rgsabound:[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 580
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    const/4 p1, 0x1

    .line 573
    new-array p1, p1, [Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;-><init>()V

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->rgsabound:[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    .line 581
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->read()V

    return-void
.end method

.method public static varargs createSafeArray(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;[I)Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;
    .locals 6

    .line 623
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;-><init>()V

    array-length v1, p1

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    check-cast v0, [Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    const/4 v1, 0x0

    .line 624
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 625
    aget-object v2, v0, v1

    new-instance v3, Lcom/sun/jna/platform/win32/WinDef$LONG;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/platform/win32/WinDef$LONG;-><init>(J)V

    iput-object v3, v2, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;->lLbound:Lcom/sun/jna/platform/win32/WinDef$LONG;

    .line 626
    aget-object v2, v0, v1

    new-instance v3, Lcom/sun/jna/platform/win32/WinDef$ULONG;

    array-length v4, p1

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    aget v4, p1, v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/platform/win32/WinDef$ULONG;-><init>(J)V

    iput-object v3, v2, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;->cElements:Lcom/sun/jna/platform/win32/WinDef$ULONG;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 628
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$UINT;

    array-length p1, p1

    int-to-long v3, p1

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    invoke-interface {v1, p0, v2, v0}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayCreate(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;Lcom/sun/jna/platform/win32/WinDef$UINT;[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;)Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;

    move-result-object p0

    return-object p0
.end method

.method public static varargs createSafeArray([I)Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;
    .locals 2

    .line 607
    new-instance v0, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;-><init>(I)V

    invoke-static {v0, p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->createSafeArray(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;[I)Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accessData()Lcom/sun/jna/Pointer;
    .locals 2

    .line 951
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 952
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, p0, v0}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayAccessData(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v1

    .line 953
    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 954
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .line 899
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->destroy()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 891
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayDestroy(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 892
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method

.method public getDimensionCount()I
    .locals 1

    .line 942
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetDim(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinDef$UINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$UINT;->intValue()I

    move-result v0

    return v0
.end method

.method public varargs getElement([I)Ljava/lang/Object;
    .locals 11

    .line 755
    array-length v0, p1

    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinDef$LONG;

    const/4 v1, 0x0

    move v2, v1

    .line 756
    :goto_0
    array-length v3, p1

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 757
    new-instance v3, Lcom/sun/jna/platform/win32/WinDef$LONG;

    array-length v5, p1

    sub-int/2addr v5, v2

    sub-int/2addr v5, v4

    aget v4, p1, v5

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/platform/win32/WinDef$LONG;-><init>(J)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 764
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result p1

    const-wide/16 v2, 0x8

    const-wide/16 v5, 0x2

    const-wide/16 v7, 0x4

    const-wide/16 v9, 0x0

    packed-switch p1, :pswitch_data_0

    .line 858
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t parse array content - type not supported: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 773
    :pswitch_1
    new-instance p1, Lcom/sun/jna/Memory;

    const-wide/16 v1, 0x1

    invoke-direct {p1, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 774
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 775
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 776
    invoke-virtual {p1, v9, v10}, Lcom/sun/jna/Memory;->getByte(J)B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 851
    :pswitch_2
    new-instance p1, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;

    invoke-direct {p1}, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;-><init>()V

    .line 852
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 853
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-object p1

    .line 833
    :pswitch_3
    new-instance p1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {p1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 834
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-virtual {p1}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 835
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 836
    new-instance v0, Lcom/sun/jna/platform/win32/COM/Unknown;

    invoke-virtual {p1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/COM/Unknown;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v0

    .line 827
    :pswitch_4
    new-instance p1, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-direct {p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    .line 828
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 829
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-object p1

    .line 766
    :pswitch_5
    new-instance p1, Lcom/sun/jna/Memory;

    invoke-direct {p1, v5, v6}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 767
    sget-object v2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v2, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 768
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 769
    invoke-virtual {p1, v9, v10}, Lcom/sun/jna/Memory;->getShort(J)S

    move-result p1

    if-eqz p1, :cond_1

    move v1, v4

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 795
    :pswitch_6
    new-instance p1, Lcom/sun/jna/Memory;

    invoke-direct {p1, v7, v8}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 796
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 797
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 798
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$SCODE;

    invoke-virtual {p1, v9, v10}, Lcom/sun/jna/Memory;->getInt(J)I

    move-result p1

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$SCODE;-><init>(J)V

    return-object v0

    .line 839
    :pswitch_7
    new-instance p1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {p1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 840
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-virtual {p1}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 841
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 842
    new-instance v0, Lcom/sun/jna/platform/win32/COM/Dispatch;

    invoke-virtual {p1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/COM/Dispatch;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v0

    .line 819
    :pswitch_8
    new-instance p1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {p1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 820
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-virtual {p1}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 821
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 822
    new-instance v0, Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-virtual {p1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/WTypes$BSTR;-><init>(Lcom/sun/jna/Pointer;)V

    .line 823
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 824
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, v0}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    return-object p1

    .line 813
    :pswitch_9
    new-instance p1, Lcom/sun/jna/Memory;

    invoke-direct {p1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 814
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 815
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 816
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$DATE;

    invoke-virtual {p1, v9, v10}, Lcom/sun/jna/Memory;->getDouble(J)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/OaIdl$DATE;-><init>(D)V

    return-object v0

    .line 845
    :pswitch_a
    new-instance p1, Lcom/sun/jna/platform/win32/OaIdl$CURRENCY;

    invoke-direct {p1}, Lcom/sun/jna/platform/win32/OaIdl$CURRENCY;-><init>()V

    .line 846
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$CURRENCY;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-interface {v1, p0, v0, v2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 847
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-object p1

    .line 807
    :pswitch_b
    new-instance p1, Lcom/sun/jna/Memory;

    invoke-direct {p1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 808
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 809
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 810
    invoke-virtual {p1, v9, v10}, Lcom/sun/jna/Memory;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 801
    :pswitch_c
    new-instance p1, Lcom/sun/jna/Memory;

    invoke-direct {p1, v7, v8}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 802
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 803
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 804
    invoke-virtual {p1, v9, v10}, Lcom/sun/jna/Memory;->getFloat(J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 789
    :pswitch_d
    new-instance p1, Lcom/sun/jna/Memory;

    invoke-direct {p1, v7, v8}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 790
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 791
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 792
    invoke-virtual {p1, v9, v10}, Lcom/sun/jna/Memory;->getInt(J)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 780
    :pswitch_e
    new-instance p1, Lcom/sun/jna/Memory;

    invoke-direct {p1, v5, v6}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 781
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 782
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 783
    invoke-virtual {p1, v9, v10}, Lcom/sun/jna/Memory;->getShort(J)S

    move-result p1

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public getElemsize()J
    .locals 2

    .line 1013
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetElemsize(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinDef$UINT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$UINT;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLBound(I)I
    .locals 5

    .line 912
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->getDimensionCount()I

    move-result v0

    sub-int/2addr v0, p1

    .line 913
    new-instance p1, Lcom/sun/jna/platform/win32/WinDef$LONGByReference;

    invoke-direct {p1}, Lcom/sun/jna/platform/win32/WinDef$LONGByReference;-><init>()V

    .line 914
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$UINT;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    invoke-interface {v1, p0, v2, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetLBound(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$LONGByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 915
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 916
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$LONGByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$LONG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$LONG;->intValue()I

    move-result p1

    return p1
.end method

.method public getUBound(I)I
    .locals 5

    .line 929
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->getDimensionCount()I

    move-result v0

    sub-int/2addr v0, p1

    .line 930
    new-instance p1, Lcom/sun/jna/platform/win32/WinDef$LONGByReference;

    invoke-direct {p1}, Lcom/sun/jna/platform/win32/WinDef$LONGByReference;-><init>()V

    .line 931
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$UINT;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$UINT;-><init>(J)V

    invoke-interface {v1, p0, v2, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetUBound(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Lcom/sun/jna/platform/win32/WinDef$UINT;Lcom/sun/jna/platform/win32/WinDef$LONGByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 932
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 933
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$LONGByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$LONG;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$LONG;->intValue()I

    move-result p1

    return p1
.end method

.method public getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;
    .locals 2

    .line 1001
    new-instance v0, Lcom/sun/jna/platform/win32/WTypes$VARTYPEByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPEByReference;-><init>()V

    .line 1002
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, p0, v0}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayGetVartype(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Lcom/sun/jna/platform/win32/WTypes$VARTYPEByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v1

    .line 1003
    invoke-static {v1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 1004
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPEByReference;->getValue()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 1

    .line 971
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayLock(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 972
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method

.method public varargs ptrOfIndex([I)Lcom/sun/jna/Pointer;
    .locals 5

    .line 877
    array-length v0, p1

    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinDef$LONG;

    const/4 v1, 0x0

    .line 878
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 879
    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$LONG;

    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, p1, v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$LONG;-><init>(J)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 881
    :cond_0
    new-instance p1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {p1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 882
    sget-object v1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v1, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPtrOfIndex(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/ptr/PointerByReference;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 883
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    .line 884
    invoke-virtual {p1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    return-object p1
.end method

.method public varargs putElement(Ljava/lang/Object;[I)V
    .locals 10

    .line 643
    array-length v0, p2

    new-array v0, v0, [Lcom/sun/jna/platform/win32/WinDef$LONG;

    const/4 v1, 0x0

    move v2, v1

    .line 644
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_0

    .line 645
    new-instance v3, Lcom/sun/jna/platform/win32/WinDef$LONG;

    array-length v4, p2

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    aget v4, p2, v4

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/platform/win32/WinDef$LONG;-><init>(J)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result p2

    const-wide/16 v2, 0x8

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x4

    const-wide/16 v8, 0x0

    packed-switch p2, :pswitch_data_0

    .line 741
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t parse array content - type not supported: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 663
    :pswitch_1
    new-instance p2, Lcom/sun/jna/Memory;

    const-wide/16 v1, 0x1

    invoke-direct {p2, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 664
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->byteValue()B

    move-result p1

    invoke-virtual {p2, v8, v9, p1}, Lcom/sun/jna/Memory;->setByte(JB)V

    .line 665
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p0, v0, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 666
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 736
    :pswitch_2
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    check-cast p1, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-interface {p2, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 737
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 724
    :pswitch_3
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    check-cast p1, Lcom/sun/jna/platform/win32/COM/Unknown;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/Unknown;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-interface {p2, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 725
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 720
    :pswitch_4
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    check-cast p1, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-interface {p2, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 721
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 652
    :pswitch_5
    new-instance p2, Lcom/sun/jna/Memory;

    invoke-direct {p2, v4, v5}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 653
    instance-of v2, p1, Ljava/lang/Boolean;

    const v3, 0xffff

    if-eqz v2, :cond_2

    .line 654
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v3

    :cond_1
    int-to-short p1, v1

    invoke-virtual {p2, v8, v9, p1}, Lcom/sun/jna/Memory;->setShort(JS)V

    goto :goto_1

    .line 656
    :cond_2
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-lez p1, :cond_3

    move v1, v3

    :cond_3
    int-to-short p1, v1

    invoke-virtual {p2, v8, v9, p1}, Lcom/sun/jna/Memory;->setShort(JS)V

    .line 658
    :goto_1
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p0, v0, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 659
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 685
    :pswitch_6
    new-instance p2, Lcom/sun/jna/Memory;

    invoke-direct {p2, v6, v7}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 686
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2, v8, v9, p1}, Lcom/sun/jna/Memory;->setInt(JI)V

    .line 687
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p0, v0, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 688
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 728
    :pswitch_7
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    check-cast p1, Lcom/sun/jna/platform/win32/COM/Dispatch;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/Dispatch;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-interface {p2, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 729
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 709
    :pswitch_8
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 710
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SysAllocString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object p1

    .line 711
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-interface {p2, p0, v0, v1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p2

    .line 712
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SysFreeString(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V

    .line 713
    invoke-static {p2}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 715
    :cond_4
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    check-cast p1, Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-interface {p2, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 716
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 703
    :pswitch_9
    new-instance p2, Lcom/sun/jna/Memory;

    invoke-direct {p2, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 704
    check-cast p1, Lcom/sun/jna/platform/win32/OaIdl$DATE;

    iget-wide v1, p1, Lcom/sun/jna/platform/win32/OaIdl$DATE;->date:D

    invoke-virtual {p2, v8, v9, v1, v2}, Lcom/sun/jna/Memory;->setDouble(JD)V

    .line 705
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p0, v0, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 706
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 732
    :pswitch_a
    sget-object p2, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    check-cast p1, Lcom/sun/jna/platform/win32/OaIdl$CURRENCY;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$CURRENCY;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-interface {p2, p0, v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 733
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 697
    :pswitch_b
    new-instance p2, Lcom/sun/jna/Memory;

    invoke-direct {p2, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 698
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p2, v8, v9, v1, v2}, Lcom/sun/jna/Memory;->setDouble(JD)V

    .line 699
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p0, v0, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 700
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 691
    :pswitch_c
    new-instance p2, Lcom/sun/jna/Memory;

    invoke-direct {p2, v6, v7}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 692
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p2, v8, v9, p1}, Lcom/sun/jna/Memory;->setFloat(JF)V

    .line 693
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p0, v0, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 694
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 679
    :pswitch_d
    new-instance p2, Lcom/sun/jna/Memory;

    invoke-direct {p2, v6, v7}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 680
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p2, v8, v9, p1}, Lcom/sun/jna/Memory;->setInt(JI)V

    .line 681
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p0, v0, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 682
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    .line 670
    :pswitch_e
    new-instance p2, Lcom/sun/jna/Memory;

    invoke-direct {p2, v4, v5}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 671
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-virtual {p2, v8, v9, p1}, Lcom/sun/jna/Memory;->setShort(JS)V

    .line 672
    sget-object p1, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {p1, p0, v0, p2}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayPutElement(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;[Lcom/sun/jna/platform/win32/WinDef$LONG;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 673
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public read()V
    .locals 3

    .line 586
    invoke-super {p0}, Lcom/sun/jna/Structure;->read()V

    .line 587
    iget-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->cDims:Lcom/sun/jna/platform/win32/WinDef$USHORT;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$USHORT;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->rgsabound:[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->cDims:Lcom/sun/jna/platform/win32/WinDef$USHORT;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$USHORT;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    check-cast v0, [Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->rgsabound:[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 590
    new-array v0, v0, [Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    new-instance v2, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    invoke-direct {v2}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;-><init>()V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->rgsabound:[Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    return-void
.end method

.method public redim(II)V
    .locals 2

    .line 991
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    new-instance v1, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;

    invoke-direct {v1, p1, p2}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;-><init>(II)V

    invoke-interface {v0, p0, v1}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayRedim(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYBOUND;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p1

    .line 992
    invoke-static {p1}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method

.method public unaccessData()V
    .locals 1

    .line 962
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayUnaccessData(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 963
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method

.method public unlock()V
    .locals 1

    .line 979
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/OleAuto;->SafeArrayUnlock(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object v0

    .line 980
    invoke-static {v0}, Lcom/sun/jna/platform/win32/COM/COMUtils;->checkRC(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)V

    return-void
.end method
