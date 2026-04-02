.class public Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;
.super Lcom/sun/jna/platform/win32/WinDef$DWORD;
.source "WinBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase$DCB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DCBControllBits"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x770066b56120d073L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1846
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>()V

    return-void
.end method

.method private static leftShiftMask(IBII)I
    .locals 1

    shl-int v0, p2, p1

    not-int v0, v0

    and-int/2addr p3, v0

    and-int/2addr p0, p2

    shl-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method


# virtual methods
.method public getfAbortOnError()Z
    .locals 1

    .line 1886
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getfBinary()Z
    .locals 2

    .line 1890
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getfDsrSensitivity()Z
    .locals 1

    .line 1894
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getfDtrControl()I
    .locals 1

    .line 1898
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getfDummy2()I
    .locals 2

    .line 1934
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0xf

    const v1, 0x1ffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getfErrorChar()Z
    .locals 1

    .line 1902
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getfInX()Z
    .locals 1

    .line 1906
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getfNull()Z
    .locals 1

    .line 1910
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getfOutX()Z
    .locals 1

    .line 1914
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getfOutxCtsFlow()Z
    .locals 1

    .line 1918
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getfOutxDsrFlow()Z
    .locals 1

    .line 1922
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getfParity()Z
    .locals 1

    .line 1926
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getfRtsControl()I
    .locals 1

    .line 1930
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getfTXContinueOnXoff()Z
    .locals 1

    .line 1938
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setfAbortOnError(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 1951
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/16 v2, 0xe

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 1952
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfBinary(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 1963
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 1964
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfDsrSensitivity(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 1976
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 1977
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfDtrControl(I)V
    .locals 3

    const/4 v0, 0x3

    .line 1991
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 1992
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfErrorChar(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2004
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/16 v2, 0xa

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 2005
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfInX(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2018
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/16 v2, 0x9

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 2019
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfNull(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2028
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/16 v2, 0xb

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 2029
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfOutX(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2042
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 2043
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfOutxCtsFlow(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2055
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 2056
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfOutxDsrFlow(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2068
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 2069
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfParity(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 2079
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    invoke-static {p1, v0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 2080
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfRtsControl(I)V
    .locals 3

    const/4 v0, 0x3

    .line 2095
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/16 v2, 0xc

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 2096
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public setfTXContinueOnXoff(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 2110
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->intValue()I

    move-result v1

    const/4 v2, 0x7

    invoke-static {p1, v2, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->leftShiftMask(IBII)I

    move-result p1

    int-to-long v0, p1

    .line 2111
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->setValue(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1851
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<fBinary:1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1854
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfBinary()Z

    move-result v1

    const/16 v2, 0x31

    const/16 v3, 0x30

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1855
    const-string v1, ", fParity:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfParity()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1857
    const-string v1, ", fOutxCtsFlow:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1858
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfOutxCtsFlow()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1859
    const-string v1, ", fOutxDsrFlow:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1860
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfOutxDsrFlow()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1861
    const-string v1, ", fDtrControl:2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1862
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfDtrControl()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1863
    const-string v1, ", fDsrSensitivity:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1864
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfDsrSensitivity()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1865
    const-string v1, ", fTXContinueOnXoff:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfTXContinueOnXoff()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1867
    const-string v1, ", fOutX:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfOutX()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1869
    const-string v1, ", fInX:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfInX()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    move v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1871
    const-string v1, ", fErrorChar:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfErrorChar()Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    move v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1873
    const-string v1, ", fNull:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfNull()Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    move v1, v3

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1875
    const-string v1, ", fRtsControl:2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfRtsControl()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1877
    const-string v1, ", fAbortOnError:1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfAbortOnError()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_a

    :cond_a
    move v2, v3

    :goto_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1879
    const-string v1, ", fDummy2:17="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$DCB$DCBControllBits;->getfDummy2()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    .line 1881
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1882
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
