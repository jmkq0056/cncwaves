.class public Lcom/sun/jna/platform/win32/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileVersionInfo(Ljava/lang/String;)Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;
    .locals 5

    .line 55
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 57
    sget-object v1, Lcom/sun/jna/platform/win32/Version;->INSTANCE:Lcom/sun/jna/platform/win32/Version;

    invoke-interface {v1, p0, v0}, Lcom/sun/jna/platform/win32/Version;->GetFileVersionInfoSize(Ljava/lang/String;Lcom/sun/jna/ptr/IntByReference;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    new-instance v1, Lcom/sun/jna/Memory;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 69
    new-instance v2, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v2}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 71
    sget-object v3, Lcom/sun/jna/platform/win32/Version;->INSTANCE:Lcom/sun/jna/platform/win32/Version;

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4, v0, v1}, Lcom/sun/jna/platform/win32/Version;->GetFileVersionInfo(Ljava/lang/String;IILcom/sun/jna/Pointer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 79
    sget-object v3, Lcom/sun/jna/platform/win32/Version;->INSTANCE:Lcom/sun/jna/platform/win32/Version;

    const-string v4, "\\"

    invoke-interface {v3, v1, v4, v2, v0}, Lcom/sun/jna/platform/win32/Version;->VerQueryValue(Lcom/sun/jna/Pointer;Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    new-instance p0, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;

    invoke-virtual {v2}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;-><init>(Lcom/sun/jna/Pointer;)V

    .line 84
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/VerRsrc$VS_FIXEDFILEINFO;->read()V

    return-object p0

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to extract version info from the file: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 62
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method
