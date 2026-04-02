.class public Lcom/sun/jna/platform/win32/ShellAPI$SHELLEXECUTEINFO;
.super Lcom/sun/jna/Structure;
.source "ShellAPI.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "cbSize",
        "fMask",
        "hwnd",
        "lpVerb",
        "lpFile",
        "lpParameters",
        "lpDirectory",
        "nShow",
        "hInstApp",
        "lpIDList",
        "lpClass",
        "hKeyClass",
        "dwHotKey",
        "hMonitor",
        "hProcess"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/ShellAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHELLEXECUTEINFO"
.end annotation


# instance fields
.field public cbSize:I

.field public dwHotKey:I

.field public fMask:I

.field public hInstApp:Lcom/sun/jna/platform/win32/WinDef$HINSTANCE;

.field public hKeyClass:Lcom/sun/jna/platform/win32/WinReg$HKEY;

.field public hMonitor:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public hProcess:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field public hwnd:Lcom/sun/jna/platform/win32/WinDef$HWND;

.field public lpClass:Ljava/lang/String;

.field public lpDirectory:Ljava/lang/String;

.field public lpFile:Ljava/lang/String;

.field public lpIDList:Lcom/sun/jna/Pointer;

.field public lpParameters:Ljava/lang/String;

.field public lpVerb:Ljava/lang/String;

.field public nShow:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 300
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 309
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/ShellAPI$SHELLEXECUTEINFO;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/ShellAPI$SHELLEXECUTEINFO;->cbSize:I

    return-void
.end method
