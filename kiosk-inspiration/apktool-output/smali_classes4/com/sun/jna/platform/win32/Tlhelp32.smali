.class public interface abstract Lcom/sun/jna/platform/win32/Tlhelp32;
.super Ljava/lang/Object;
.source "Tlhelp32.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;,
        Lcom/sun/jna/platform/win32/Tlhelp32$PROCESSENTRY32;
    }
.end annotation


# static fields
.field public static final MAX_MODULE_NAME32:I = 0xff

.field public static final TH32CS_INHERIT:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public static final TH32CS_SNAPALL:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public static final TH32CS_SNAPHEAPLIST:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public static final TH32CS_SNAPMODULE:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public static final TH32CS_SNAPMODULE32:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public static final TH32CS_SNAPPROCESS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public static final TH32CS_SNAPTHREAD:Lcom/sun/jna/platform/win32/WinDef$DWORD;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/win32/Tlhelp32;->TH32CS_SNAPHEAPLIST:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 48
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v2, 0x2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    sput-object v1, Lcom/sun/jna/platform/win32/Tlhelp32;->TH32CS_SNAPPROCESS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 53
    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v3, 0x4

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    sput-object v2, Lcom/sun/jna/platform/win32/Tlhelp32;->TH32CS_SNAPTHREAD:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 71
    new-instance v3, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v4, 0x8

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    sput-object v3, Lcom/sun/jna/platform/win32/Tlhelp32;->TH32CS_SNAPMODULE:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 78
    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v5, 0x10

    invoke-direct {v4, v5, v6}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    sput-object v4, Lcom/sun/jna/platform/win32/Tlhelp32;->TH32CS_SNAPMODULE32:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 83
    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    .line 84
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v1

    or-int/2addr v0, v1

    int-to-long v0, v0

    invoke-direct {v4, v0, v1}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    sput-object v4, Lcom/sun/jna/platform/win32/Tlhelp32;->TH32CS_SNAPALL:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 89
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/32 v1, -0x80000000

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    sput-object v0, Lcom/sun/jna/platform/win32/Tlhelp32;->TH32CS_INHERIT:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-void
.end method
