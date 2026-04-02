.class public Lcom/sun/jna/platform/win32/WinBase$STARTUPINFO;
.super Lcom/sun/jna/Structure;
.source "WinBase.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cb",
        "lpReserved",
        "lpDesktop",
        "lpTitle",
        "dwX",
        "dwY",
        "dwXSize",
        "dwYSize",
        "dwXCountChars",
        "dwYCountChars",
        "dwFillAttribute",
        "dwFlags",
        "wShowWindow",
        "cbReserved2",
        "lpReserved2",
        "hStdInput",
        "hStdOutput",
        "hStdError"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "STARTUPINFO"
.end annotation


# instance fields
.field public cb:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public cbReserved2:Lcom/sun/jna/platform/win32/WinDef$WORD;

.field public dwFillAttribute:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwFlags:I

.field public dwX:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwXCountChars:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwXSize:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwY:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwYCountChars:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwYSize:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public hStdError:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public hStdInput:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public hStdOutput:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public lpDesktop:Ljava/lang/String;

.field public lpReserved:Ljava/lang/String;

.field public lpReserved2:Lcom/sun/jna/ptr/ByteByReference;

.field public lpTitle:Ljava/lang/String;

.field public wShowWindow:Lcom/sun/jna/platform/win32/WinDef$WORD;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1495
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    .line 1496
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinBase$STARTUPINFO;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinBase$STARTUPINFO;->cb:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-void
.end method
