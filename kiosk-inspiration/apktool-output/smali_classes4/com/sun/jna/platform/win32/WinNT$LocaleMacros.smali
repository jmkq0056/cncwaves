.class public final Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;
.super Ljava/lang/Object;
.source "WinNT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocaleMacros"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final LANGIDFROMLCID(Lcom/sun/jna/platform/win32/WinDef$LCID;)I
    .locals 1

    .line 4154
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$LCID;->intValue()I

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static final MAKELANGID(II)I
    .locals 1

    shl-int/lit8 p1, p1, 0xa

    const v0, 0xffff

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static final MAKELCID(II)Lcom/sun/jna/platform/win32/WinDef$LCID;
    .locals 1

    .line 4132
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$LCID;

    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;->_MAKELCID(II)I

    move-result p0

    int-to-long p0, p0

    invoke-direct {v0, p0, p1}, Lcom/sun/jna/platform/win32/WinDef$LCID;-><init>(J)V

    return-object v0
.end method

.method public static final MAKESORTLCID(III)Lcom/sun/jna/platform/win32/WinDef$LCID;
    .locals 1

    .line 4144
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$LCID;

    invoke-static {p0, p1}, Lcom/sun/jna/platform/win32/WinNT$LocaleMacros;->_MAKELCID(II)I

    move-result p0

    shl-int/lit8 p1, p2, 0x14

    or-int/2addr p0, p1

    int-to-long p0, p0

    invoke-direct {v0, p0, p1}, Lcom/sun/jna/platform/win32/WinDef$LCID;-><init>(J)V

    return-object v0
.end method

.method public static final PRIMARYLANGID(I)I
    .locals 0

    and-int/lit16 p0, p0, 0x3ff

    return p0
.end method

.method public static final SORTIDFROMLCID(Lcom/sun/jna/platform/win32/WinDef$LCID;)I
    .locals 0

    .line 4164
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$LCID;->intValue()I

    move-result p0

    ushr-int/lit8 p0, p0, 0x10

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static final SORTVERSIONFROMLCID(Lcom/sun/jna/platform/win32/WinDef$LCID;)I
    .locals 0

    .line 4174
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$LCID;->intValue()I

    move-result p0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static final SUBLANGID(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0xa

    return p0
.end method

.method private static final _MAKELCID(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    return p0
.end method
