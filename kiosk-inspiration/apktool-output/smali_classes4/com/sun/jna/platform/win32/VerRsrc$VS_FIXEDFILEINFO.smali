.class public Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;
.super Lcom/sun/jna/Structure;
.source "VerRsrc.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "dwSignature",
        "dwStrucVersion",
        "dwFileVersionMS",
        "dwFileVersionLS",
        "dwProductVersionMS",
        "dwProductVersionLS",
        "dwFileFlagsMask",
        "dwFileFlags",
        "dwFileOS",
        "dwFileType",
        "dwFileSubtype",
        "dwFileDateMS",
        "dwFileDateLS"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/VerRsrc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VS_FIXEDFILEINFO"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO$ByReference;
    }
.end annotation


# instance fields
.field public dwFileDateLS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwFileDateMS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwFileFlags:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwFileFlagsMask:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwFileOS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwFileSubtype:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwFileType:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwFileVersionLS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwFileVersionMS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwProductVersionLS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwProductVersionMS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwSignature:Lcom/sun/jna/platform/win32/WinDef$DWORD;

.field public dwStrucVersion:Lcom/sun/jna/platform/win32/WinDef$DWORD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;)V

    .line 134
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;->read()V

    return-void
.end method


# virtual methods
.method public getFileVersionBuild()I
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;->dwFileVersionLS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getFileVersionMajor()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;->dwFileVersionMS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getFileVersionMinor()I
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;->dwFileVersionMS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getFileVersionRevision()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;->dwFileVersionLS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getProductVersionBuild()I
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;->dwProductVersionLS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getProductVersionMajor()I
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;->dwProductVersionMS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getProductVersionMinor()I
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;->dwProductVersionMS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getProductVersionRevision()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;->dwProductVersionLS:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    return v0
.end method
