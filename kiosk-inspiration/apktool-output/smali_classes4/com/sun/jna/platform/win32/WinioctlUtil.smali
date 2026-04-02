.class public abstract Lcom/sun/jna/platform/win32/WinioctlUtil;
.super Ljava/lang/Object;
.source "WinioctlUtil.java"


# static fields
.field public static final FSCTL_DELETE_REPARSE_POINT:I

.field public static final FSCTL_GET_COMPRESSION:I

.field public static final FSCTL_GET_REPARSE_POINT:I

.field public static final FSCTL_SET_COMPRESSION:I

.field public static final FSCTL_SET_REPARSE_POINT:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x9

    const/16 v1, 0xf

    const/4 v2, 0x0

    .line 48
    invoke-static {v0, v1, v2, v2}, Lcom/sun/jna/platform/win32/WinioctlUtil;->CTL_CODE(IIII)I

    move-result v1

    sput v1, Lcom/sun/jna/platform/win32/WinioctlUtil;->FSCTL_GET_COMPRESSION:I

    const/16 v1, 0x10

    const/4 v3, 0x3

    .line 54
    invoke-static {v0, v1, v2, v3}, Lcom/sun/jna/platform/win32/WinioctlUtil;->CTL_CODE(IIII)I

    move-result v1

    sput v1, Lcom/sun/jna/platform/win32/WinioctlUtil;->FSCTL_SET_COMPRESSION:I

    const/16 v1, 0x29

    .line 60
    invoke-static {v0, v1, v2, v2}, Lcom/sun/jna/platform/win32/WinioctlUtil;->CTL_CODE(IIII)I

    move-result v1

    sput v1, Lcom/sun/jna/platform/win32/WinioctlUtil;->FSCTL_SET_REPARSE_POINT:I

    const/16 v1, 0x2a

    .line 66
    invoke-static {v0, v1, v2, v2}, Lcom/sun/jna/platform/win32/WinioctlUtil;->CTL_CODE(IIII)I

    move-result v1

    sput v1, Lcom/sun/jna/platform/win32/WinioctlUtil;->FSCTL_GET_REPARSE_POINT:I

    const/16 v1, 0x2b

    .line 72
    invoke-static {v0, v1, v2, v2}, Lcom/sun/jna/platform/win32/WinioctlUtil;->CTL_CODE(IIII)I

    move-result v0

    sput v0, Lcom/sun/jna/platform/win32/WinioctlUtil;->FSCTL_DELETE_REPARSE_POINT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CTL_CODE(IIII)I
    .locals 0

    shl-int/lit8 p0, p0, 0x10

    shl-int/lit8 p3, p3, 0xe

    or-int/2addr p0, p3

    shl-int/lit8 p1, p1, 0x2

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method
