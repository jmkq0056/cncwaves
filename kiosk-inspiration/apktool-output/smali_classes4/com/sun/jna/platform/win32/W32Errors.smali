.class public abstract Lcom/sun/jna/platform/win32/W32Errors;
.super Ljava/lang/Object;
.source "W32Errors.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final FAILED(I)Z
    .locals 0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final FAILED(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/W32Errors;->FAILED(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final FILTER_HRESULT_FROM_FLT_NTSTATUS(I)I
    .locals 1

    const v0, -0x7fff0001

    and-int/2addr p0, v0

    const/high16 v0, 0x1f0000

    or-int/2addr p0, v0

    return p0
.end method

.method public static final HRESULT_CODE(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static final HRESULT_FACILITY(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0x1fff

    return p0
.end method

.method public static final HRESULT_FROM_WIN32(I)Lcom/sun/jna/platform/win32/WinNT$HRESULT;
    .locals 2

    .line 180
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0xffff

    and-int/2addr p0, v1

    const/high16 v1, -0x7ff90000

    or-int/2addr p0, v1

    :goto_0
    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;-><init>(I)V

    return-object v0
.end method

.method public static HRESULT_SEVERITY(I)S
    .locals 0

    shr-int/lit8 p0, p0, 0x1f

    and-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    return p0
.end method

.method public static MAKE_HRESULT(SSS)I
    .locals 0

    shl-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public static final MAKE_SCODE(SSS)I
    .locals 0

    shl-int/lit8 p0, p0, 0x1f

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method public static final SCODE_CODE(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static final SCODE_FACILITY(S)I
    .locals 0

    shr-int/lit8 p0, p0, 0x10

    int-to-short p0, p0

    and-int/lit16 p0, p0, 0x1fff

    return p0
.end method

.method public static SCODE_SEVERITY(S)S
    .locals 0

    shr-int/lit8 p0, p0, 0x1f

    int-to-short p0, p0

    and-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    return p0
.end method

.method public static final SUCCEEDED(I)Z
    .locals 0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final SUCCEEDED(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/W32Errors;->SUCCEEDED(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
