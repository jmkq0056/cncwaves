.class public Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFO;
.super Lcom/sun/jna/Structure;
.source "WinNT.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwOSVersionInfoSize",
        "dwMajorVersion",
        "dwMinorVersion",
        "dwBuildNumber",
        "dwPlatformId",
        "szCSDVersion"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/WinNT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OSVERSIONINFO"
.end annotation


# instance fields
.field public dwBuildNumber:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwMajorVersion:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwMinorVersion:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwOSVersionInfoSize:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwPlatformId:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public szCSDVersion:[C


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1847
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0x80

    .line 1848
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFO;->szCSDVersion:[C

    .line 1849
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFO;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFO;->dwOSVersionInfoSize:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 1853
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 1854
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$OSVERSIONINFO;->read()V

    return-void
.end method
