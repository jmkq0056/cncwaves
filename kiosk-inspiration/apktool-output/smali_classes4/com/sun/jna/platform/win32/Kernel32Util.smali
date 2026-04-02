.class public abstract Lcom/sun/jna/platform/win32/Kernel32Util;
.super Ljava/lang/Object;
.source "Kernel32Util.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/WinDef;


# static fields
.field public static final VOLUME_GUID_PATH_PREFIX:Ljava/lang/String; = "\\\\?\\Volume{"

.field public static final VOLUME_GUID_PATH_SUFFIX:Ljava/lang/String; = "}\\"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final QueryFullProcessImageName(Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)Ljava/lang/String;
    .locals 3

    const/16 p1, 0x104

    .line 871
    new-array v0, p1, [C

    .line 872
    new-instance v1, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v1, p1}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 873
    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/4 v2, 0x0

    invoke-interface {p1, p0, v2, v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->QueryFullProcessImageName(Lcom/sun/jna/platform/win32/WinNT$HANDLE;I[CLcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 874
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v1}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 875
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static closeHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    .line 177
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static closeHandleRef(Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)V
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->closeHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    return-void
.end method

.method public static varargs closeHandleRefs([Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)V
    .locals 4

    .line 109
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 111
    :try_start_0
    invoke-static {v3}, Lcom/sun/jna/platform/win32/Kernel32Util;->closeHandleRef(Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)V
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_1

    .line 116
    :cond_0
    invoke-virtual {v1, v3}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 122
    :cond_2
    throw v1
.end method

.method public static varargs closeHandles([Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    .locals 4

    .line 147
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 149
    :try_start_0
    invoke-static {v3}, Lcom/sun/jna/platform/win32/Kernel32Util;->closeHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_1

    .line 154
    :cond_0
    invoke-virtual {v1, v3}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-void

    .line 160
    :cond_2
    throw v1
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 1

    .line 257
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Kernel32;->DeleteFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 258
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static expandEnvironmentStrings(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 1153
    const-string p0, ""

    return-object p0

    .line 1156
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->ExpandEnvironmentStrings(Ljava/lang/String;Lcom/sun/jna/Pointer;I)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1163
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object v2, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    if-ne v1, v2, :cond_1

    .line 1164
    new-instance v1, Lcom/sun/jna/Memory;

    sget v2, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    mul-int/2addr v2, v0

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    goto :goto_0

    .line 1169
    :cond_1
    new-instance v1, Lcom/sun/jna/Memory;

    add-int/lit8 v2, v0, 0x1

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 1171
    :goto_0
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2, p0, v1, v0}, Lcom/sun/jna/platform/win32/Kernel32;->ExpandEnvironmentStrings(Ljava/lang/String;Lcom/sun/jna/Pointer;I)I

    move-result p0

    if-eqz p0, :cond_3

    .line 1177
    sget-object p0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    const-wide/16 v2, 0x0

    if-ne p0, v0, :cond_2

    .line 1178
    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1180
    :cond_2
    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1174
    :cond_3
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1159
    :cond_4
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static final extractVolumeGUID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-eqz p0, :cond_0

    .line 848
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "\\\\?\\Volume{"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "}\\"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    if-le v0, v2, :cond_0

    .line 849
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 851
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad volume GUID path format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static findEnvironmentStringBlockEntryEnd(Lcom/sun/jna/Pointer;JZ)J
    .locals 2

    if-eqz p3, :cond_0

    const-wide/16 v0, 0x2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    .line 505
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getByte(J)B

    move-result p3

    if-nez p3, :cond_1

    return-wide p1

    :cond_1
    add-long/2addr p1, v0

    goto :goto_0
.end method

.method public static formatMessage(I)Ljava/lang/String;
    .locals 8

    .line 189
    new-instance v5, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 190
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x1300

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p0

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Kernel32;->FormatMessage(ILcom/sun/jna/Pointer;IILcom/sun/jna/ptr/PointerByReference;ILcom/sun/jna/Pointer;)I

    move-result p0

    if-eqz p0, :cond_0

    .line 202
    invoke-virtual {v5}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 204
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    .line 208
    throw v0

    .line 199
    :cond_0
    new-instance p0, Lcom/sun/jna/LastErrorException;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/LastErrorException;-><init>(I)V

    throw p0
.end method

.method public static formatMessage(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Ljava/lang/String;
    .locals 0

    .line 219
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HRESULT;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->formatMessage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatMessageFromLastErrorCode(I)Ljava/lang/String;
    .locals 0

    .line 230
    invoke-static {p0}, Lcom/sun/jna/platform/win32/W32Errors;->HRESULT_FROM_WIN32(I)Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->formatMessage(Lcom/sun/jna/platform/win32/WinNT$HRESULT;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static freeGlobalMemory(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 91
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Kernel32;->GlobalFree(Lcom/sun/jna/Pointer;)Lcom/sun/jna/Pointer;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 93
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static freeLocalMemory(Lcom/sun/jna/Pointer;)V
    .locals 1

    .line 78
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Kernel32;->LocalFree(Lcom/sun/jna/Pointer;)Lcom/sun/jna/Pointer;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static getComputerName()Ljava/lang/String;
    .locals 3

    .line 63
    sget v0, Lcom/sun/jna/platform/win32/WinBase;->MAX_COMPUTERNAME_LENGTH:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [C

    .line 64
    new-instance v2, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v2, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 65
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetComputerName([CLcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-static {v1}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public static getDriveType(Ljava/lang/String;)I
    .locals 1

    .line 360
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Kernel32;->GetDriveType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getEnvironmentVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 372
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetEnvironmentVariable(Ljava/lang/String;[CI)I

    move-result v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    if-ltz v0, :cond_2

    .line 379
    new-array v1, v0, [C

    .line 380
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2, p0, v1, v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetEnvironmentVariable(Ljava/lang/String;[CI)I

    move-result p0

    if-lez p0, :cond_1

    .line 385
    invoke-static {v1}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 383
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 376
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static getEnvironmentVariables()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 397
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetEnvironmentStrings()Lcom/sun/jna/Pointer;

    move-result-object v0

    if-eqz v0, :cond_2

    const-wide/16 v1, 0x0

    .line 403
    :try_start_0
    invoke-static {v0, v1, v2}, Lcom/sun/jna/platform/win32/Kernel32Util;->getEnvironmentVariables(Lcom/sun/jna/Pointer;J)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2, v0}, Lcom/sun/jna/platform/win32/Kernel32;->FreeEnvironmentStrings(Lcom/sun/jna/Pointer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 406
    :cond_0
    new-instance v0, Lcom/sun/jna/LastErrorException;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/LastErrorException;-><init>(I)V

    throw v0

    :catchall_0
    move-exception v1

    .line 405
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2, v0}, Lcom/sun/jna/platform/win32/Kernel32;->FreeEnvironmentStrings(Lcom/sun/jna/Pointer;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 406
    new-instance v0, Lcom/sun/jna/LastErrorException;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/LastErrorException;-><init>(I)V

    throw v0

    .line 408
    :cond_1
    throw v1

    .line 399
    :cond_2
    new-instance v0, Lcom/sun/jna/LastErrorException;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/LastErrorException;-><init>(I)V

    throw v0
.end method

.method public static getEnvironmentVariables(Lcom/sun/jna/Pointer;J)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/Pointer;",
            "J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 427
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 428
    invoke-static {p0, p1, p2}, Lcom/sun/jna/platform/win32/Kernel32Util;->isWideCharEnvironmentStringBlock(Lcom/sun/jna/Pointer;J)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v2, 0x2

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    .line 431
    :goto_0
    invoke-static {p0, p1, p2, v1}, Lcom/sun/jna/platform/win32/Kernel32Util;->readEnvironmentStringBlockEntry(Lcom/sun/jna/Pointer;JZ)Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    return-object v0

    :cond_2
    const/16 v6, 0x3d

    .line 437
    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_3

    const/4 v7, 0x0

    .line 442
    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 443
    invoke-interface {v0, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    int-to-long v4, v5

    mul-long/2addr v4, v2

    add-long/2addr p1, v4

    goto :goto_0

    .line 439
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Missing variable value separator in "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFileAttributes(Ljava/lang/String;)I
    .locals 1

    .line 291
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Kernel32;->GetFileAttributes(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    .line 293
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static getFileType(Ljava/lang/String;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 313
    :try_start_0
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    new-instance v6, Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;-><init>()V

    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    .line 316
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v9

    const/high16 v4, -0x80000000

    const/4 v5, 0x1

    const/4 v7, 0x3

    const/16 v8, 0x80

    move-object v3, p0

    .line 313
    invoke-interface/range {v2 .. v9}, Lcom/sun/jna/platform/win32/Kernel32;->CreateFile(Ljava/lang/String;IILcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;IILcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    sget-object v0, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v0, p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 322
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Kernel32;->GetFileType(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 325
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0
    :try_end_1
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    .line 340
    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->closeHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    :try_end_2
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_1

    return v2

    .line 350
    :cond_1
    throw v1

    .line 330
    :cond_2
    :try_start_3
    new-instance v2, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v2, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v2

    .line 319
    :cond_3
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_3
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_1
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p0, v0

    move-object v10, v1

    move-object v1, p0

    move-object p0, v10

    .line 337
    :goto_2
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, p0

    move-object p0, v0

    .line 340
    :goto_3
    :try_start_5
    invoke-static {v1}, Lcom/sun/jna/platform/win32/Kernel32Util;->closeHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    :try_end_5
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    if-nez v2, :cond_4

    move-object v2, v0

    goto :goto_4

    .line 345
    :cond_4
    invoke-virtual {v2, v0}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :goto_4
    if-eqz v2, :cond_5

    .line 350
    throw v2

    .line 352
    :cond_5
    throw p0

    :cond_6
    move-object v3, p0

    .line 307
    new-instance p0, Ljava/io/FileNotFoundException;

    invoke-direct {p0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLastErrorMessage()Ljava/lang/String;
    .locals 1

    .line 238
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    .line 239
    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    .line 238
    invoke-static {v0}, Lcom/sun/jna/platform/win32/Kernel32Util;->formatMessageFromLastErrorCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogicalDriveStrings()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLogicalDriveStrings(Lcom/sun/jna/platform/win32/WinDef$DWORD;[C)Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    .line 273
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v1

    new-array v1, v1, [C

    .line 274
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2, v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLogicalDriveStrings(Lcom/sun/jna/platform/win32/WinDef$DWORD;[C)Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v0

    .line 275
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    .line 280
    invoke-static {v1, v2, v0}, Lcom/sun/jna/Native;->toStringList([CII)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 277
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 270
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public static final getLogicalProcessorInformation()[Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;
    .locals 5

    .line 656
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;-><init>()V

    .line 657
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;->size()I

    move-result v0

    .line 658
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    .line 662
    :goto_0
    new-instance v2, Lcom/sun/jna/Memory;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 663
    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3, v2, v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLogicalProcessorInformation(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 665
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    const/16 v3, 0x7a

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 667
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 672
    :cond_1
    new-instance v3, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;

    invoke-direct {v3, v2}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;-><init>(Lcom/sun/jna/Pointer;)V

    .line 674
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v1

    div-int/2addr v1, v0

    .line 676
    new-array v0, v1, [Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;

    .line 677
    invoke-virtual {v3, v0}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;->toArray([Lcom/sun/jna/Structure;)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;

    check-cast v0, [Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION;

    return-object v0
.end method

.method public static final getLogicalProcessorInformationEx(I)[Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;
    .locals 6

    .line 698
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    .line 701
    :goto_0
    new-instance v1, Lcom/sun/jna/Memory;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 702
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2, p0, v1, v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLogicalProcessorInformationEx(ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 703
    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 711
    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 713
    :goto_1
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_2

    int-to-long v4, v3

    .line 715
    invoke-virtual {v1, v4, v5}, Lcom/sun/jna/Memory;->share(J)Lcom/sun/jna/Pointer;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;->fromPointer(Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;

    move-result-object v4

    .line 716
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    iget v4, v4, Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;->size:I

    add-int/2addr v3, v4

    goto :goto_1

    .line 719
    :cond_2
    new-array v0, v2, [Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/WinNT$SYSTEM_LOGICAL_PROCESSOR_INFORMATION_EX;

    return-object p0
.end method

.method public static getModules(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;",
            ">;"
        }
    .end annotation

    .line 1080
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    sget-object v1, Lcom/sun/jna/platform/win32/Tlhelp32;->TH32CS_SNAPMODULE:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    int-to-long v3, p0

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-interface {v0, v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->CreateToolhelp32Snapshot(Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object p0

    if-eqz p0, :cond_7

    const/4 v0, 0x0

    .line 1087
    :try_start_0
    new-instance v1, Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;-><init>()V

    .line 1089
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2, p0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->Module32FirstW(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1093
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1094
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1096
    new-instance v1, Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;-><init>()V

    .line 1097
    :goto_0
    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3, p0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->Module32NextW(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1098
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance v1, Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/Tlhelp32$MODULEENTRY32W;-><init>()V

    goto :goto_0

    .line 1102
    :cond_0
    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    if-eqz v1, :cond_2

    const/16 v3, 0x12

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 1107
    :cond_1
    new-instance v2, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v2, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v2
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1116
    :cond_2
    :goto_1
    :try_start_1
    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->closeHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    :try_end_1
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    if-nez v0, :cond_3

    return-object v2

    .line 1126
    :cond_3
    throw v0

    .line 1090
    :cond_4
    :try_start_2
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1
    :try_end_2
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 1113
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1116
    :goto_3
    :try_start_4
    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->closeHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    :try_end_4
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    if-nez v0, :cond_5

    move-object v0, p0

    goto :goto_4

    .line 1121
    :cond_5
    invoke-virtual {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :goto_4
    if-eqz v0, :cond_6

    .line 1126
    throw v0

    .line 1128
    :cond_6
    throw v1

    .line 1082
    :cond_7
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static final getPrivateProfileInt(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    .line 581
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sun/jna/platform/win32/Kernel32;->GetPrivateProfileInt(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getPrivateProfileSection(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const v0, 0x8000

    .line 740
    new-array v1, v0, [C

    .line 741
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    new-instance v3, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-interface {v2, p0, v1, v3, p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetPrivateProfileSection(Ljava/lang/String;[CLcom/sun/jna/platform/win32/WinDef$DWORD;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    .line 744
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    const-string p1, "\u0000"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 742
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static final getPrivateProfileSectionNames(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/high16 v0, 0x10000

    .line 759
    new-array v1, v0, [C

    .line 760
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    new-instance v3, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-interface {v2, v1, v3, p0}, Lcom/sun/jna/platform/win32/Kernel32;->GetPrivateProfileSectionNames([CLcom/sun/jna/platform/win32/WinDef$DWORD;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    .line 763
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    const-string v0, "\u0000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 761
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static final getPrivateProfileString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v0, 0x400

    .line 636
    new-array v5, v0, [C

    .line 637
    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    new-instance v6, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    int-to-long v2, v0

    invoke-direct {v6, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sun/jna/platform/win32/Kernel32;->GetPrivateProfileString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[CLcom/sun/jna/platform/win32/WinDef$DWORD;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 639
    invoke-static {v5}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 7

    .line 892
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lcom/sun/jna/platform/win32/Kernel32;->LoadLibraryEx(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)Lcom/sun/jna/platform/win32/WinDef$HMODULE;

    move-result-object p0

    if-eqz p0, :cond_a

    const-wide/16 v0, 0x0

    .line 905
    :try_start_0
    new-instance v3, Lcom/sun/jna/Pointer;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/Pointer;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto/16 :goto_3

    .line 907
    :catch_1
    :try_start_1
    new-instance v3, Lcom/sun/jna/Memory;

    sget v4, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    int-to-long v4, v4

    invoke-direct {v3, v4, v5}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 908
    invoke-virtual {v3, v0, v1, p1}, Lcom/sun/jna/Pointer;->setWideString(JLjava/lang/String;)V
    :try_end_1
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 913
    :goto_0
    :try_start_2
    new-instance p1, Lcom/sun/jna/Pointer;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {p1, v4, v5}, Lcom/sun/jna/Pointer;-><init>(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 915
    :catch_2
    :try_start_3
    new-instance p1, Lcom/sun/jna/Memory;

    sget v4, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    int-to-long v4, v4

    invoke-direct {p1, v4, v5}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 916
    invoke-virtual {p1, v0, v1, p2}, Lcom/sun/jna/Pointer;->setWideString(JLjava/lang/String;)V

    .line 919
    :goto_1
    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2, p0, p1, v3}, Lcom/sun/jna/platform/win32/Kernel32;->FindResource(Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)Lcom/sun/jna/platform/win32/WinDef$HRSRC;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 925
    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2, p0, p1}, Lcom/sun/jna/platform/win32/Kernel32;->LoadResource(Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/platform/win32/WinDef$HRSRC;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 930
    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3, p0, p1}, Lcom/sun/jna/platform/win32/Kernel32;->SizeofResource(Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 937
    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3, p2}, Lcom/sun/jna/platform/win32/Kernel32;->LockResource(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/Pointer;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 942
    invoke-virtual {p2, v0, v1, p1}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object p1
    :try_end_3
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_8

    .line 948
    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2, p0}, Lcom/sun/jna/platform/win32/Kernel32;->FreeLibrary(Lcom/sun/jna/platform/win32/WinDef$HMODULE;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_5

    .line 949
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 953
    throw p0

    .line 939
    :cond_1
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "LockResource returned null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 932
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 927
    :cond_3
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 921
    :cond_4
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
    :try_end_4
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    if-eqz p0, :cond_5

    .line 948
    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2, p0}, Lcom/sun/jna/platform/win32/Kernel32;->FreeLibrary(Lcom/sun/jna/platform/win32/WinDef$HMODULE;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 949
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 953
    throw p0

    .line 956
    :cond_5
    throw p1

    :goto_3
    if-eqz p0, :cond_7

    .line 948
    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2, p0}, Lcom/sun/jna/platform/win32/Kernel32;->FreeLibrary(Lcom/sun/jna/platform/win32/WinDef$HMODULE;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_4

    .line 949
    :cond_6
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 951
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    .line 953
    throw p0

    :cond_7
    :goto_4
    move-object v6, v2

    move-object v2, p1

    move-object p1, v6

    :cond_8
    :goto_5
    if-nez v2, :cond_9

    return-object p1

    .line 959
    :cond_9
    throw v2

    .line 895
    :cond_a
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static getResourceNames(Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 975
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2, v1}, Lcom/sun/jna/platform/win32/Kernel32;->LoadLibraryEx(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HANDLE;I)Lcom/sun/jna/platform/win32/WinDef$HMODULE;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 982
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 984
    new-instance v3, Lcom/sun/jna/platform/win32/Kernel32Util$1;

    invoke-direct {v3, v0}, Lcom/sun/jna/platform/win32/Kernel32Util$1;-><init>(Ljava/util/List;)V

    .line 1001
    new-instance v4, Lcom/sun/jna/platform/win32/Kernel32Util$2;

    invoke-direct {v4, v1}, Lcom/sun/jna/platform/win32/Kernel32Util$2;-><init>(Ljava/util/Map;)V

    .line 1026
    :try_start_0
    sget-object v5, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v5, p0, v3, v2}, Lcom/sun/jna/platform/win32/Kernel32;->EnumResourceTypes(Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/platform/win32/WinBase$EnumResTypeProc;Lcom/sun/jna/Pointer;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1030
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1031
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1038
    :try_start_1
    new-instance v5, Lcom/sun/jna/Pointer;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/sun/jna/Pointer;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1040
    :catch_0
    :try_start_2
    new-instance v5, Lcom/sun/jna/Memory;

    sget v6, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lcom/sun/jna/Memory;-><init>(J)V

    const-wide/16 v6, 0x0

    .line 1041
    invoke-virtual {v5, v6, v7, v3}, Lcom/sun/jna/Pointer;->setWideString(JLjava/lang/String;)V

    .line 1044
    :goto_1
    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3, p0, v5, v4, v2}, Lcom/sun/jna/platform/win32/Kernel32;->EnumResourceNames(Lcom/sun/jna/platform/win32/WinDef$HMODULE;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinBase$EnumResNameProc;Lcom/sun/jna/Pointer;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 1047
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_2
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    if-eqz p0, :cond_6

    .line 1056
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Kernel32;->FreeLibrary(Lcom/sun/jna/platform/win32/WinDef$HMODULE;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    .line 1057
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 1061
    throw p0

    .line 1027
    :cond_3
    :try_start_3
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_3
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_4

    .line 1056
    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1, p0}, Lcom/sun/jna/platform/win32/Kernel32;->FreeLibrary(Lcom/sun/jna/platform/win32/WinDef$HMODULE;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1057
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 1061
    throw p0

    .line 1064
    :cond_4
    throw v0

    :catch_1
    move-exception v0

    move-object v2, v0

    if-eqz p0, :cond_6

    .line 1056
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Kernel32;->FreeLibrary(Lcom/sun/jna/platform/win32/WinDef$HMODULE;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    .line 1057
    :cond_5
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 1059
    invoke-virtual {p0, v2}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    .line 1061
    throw p0

    :cond_6
    :goto_2
    if-nez v2, :cond_7

    return-object v1

    .line 1067
    :cond_7
    throw v2

    .line 978
    :cond_8
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static getTempPath()Ljava/lang/String;
    .locals 3

    .line 248
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v1, 0x104

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    .line 249
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v1

    new-array v1, v1, [C

    .line 250
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2, v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetTempPath(Lcom/sun/jna/platform/win32/WinDef$DWORD;[C)Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    invoke-static {v1}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 251
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public static final getVolumePathNamesForVolumeName(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x105

    .line 809
    new-array v1, v0, [C

    .line 810
    new-instance v2, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v2}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 812
    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3, p0, v1, v0, v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetVolumePathNamesForVolumeName(Ljava/lang/String;[CILcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 813
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    const/16 v1, 0xea

    if-ne v0, v1, :cond_1

    .line 818
    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    .line 819
    new-array v1, v0, [C

    .line 821
    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3, p0, v1, v0, v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetVolumePathNamesForVolumeName(Ljava/lang/String;[CILcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 815
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 826
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 v0, 0x0

    .line 827
    invoke-static {v1, v0, p0}, Lcom/sun/jna/Native;->toStringList([CII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static isWideCharEnvironmentStringBlock(B)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isWideCharEnvironmentStringBlock(Lcom/sun/jna/Pointer;J)Z
    .locals 3

    .line 540
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getByte(J)B

    move-result v0

    const-wide/16 v1, 0x1

    add-long/2addr p1, v1

    .line 541
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getByte(J)B

    move-result p0

    .line 542
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p1

    .line 543
    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 544
    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->isWideCharEnvironmentStringBlock(B)Z

    move-result p0

    return p0

    .line 546
    :cond_0
    invoke-static {v0}, Lcom/sun/jna/platform/win32/Kernel32Util;->isWideCharEnvironmentStringBlock(B)Z

    move-result p0

    return p0
.end method

.method public static final queryDosDevice(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 793
    new-array v0, p1, [C

    .line 794
    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1, p0, v0, p1}, Lcom/sun/jna/platform/win32/Kernel32;->QueryDosDevice(Ljava/lang/String;[CI)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 799
    invoke-static {v0, p1, p0}, Lcom/sun/jna/Native;->toStringList([CII)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 796
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static readEnvironmentStringBlockEntry(Lcom/sun/jna/Pointer;JZ)Ljava/lang/String;
    .locals 12

    .line 464
    invoke-static {p0, p1, p2, p3}, Lcom/sun/jna/platform/win32/Kernel32Util;->findEnvironmentStringBlockEntryEnd(Lcom/sun/jna/Pointer;JZ)J

    move-result-wide v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    if-nez v0, :cond_0

    .line 467
    const-string p0, ""

    return-object p0

    :cond_0
    if-eqz p3, :cond_1

    .line 470
    div-int/lit8 v0, v0, 0x2

    .line 471
    :cond_1
    new-array v1, v0, [C

    const-wide/16 v2, 0x1

    if-eqz p3, :cond_2

    const-wide/16 v4, 0x2

    goto :goto_0

    :cond_2
    move-wide v4, v2

    .line 473
    :goto_0
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_5

    .line 475
    invoke-virtual {p0, p1, p2}, Lcom/sun/jna/Pointer;->getByte(J)B

    move-result v8

    if-eqz p3, :cond_4

    add-long v9, p1, v2

    .line 477
    invoke-virtual {p0, v9, v10}, Lcom/sun/jna/Pointer;->getByte(J)B

    move-result v9

    .line 478
    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    const v11, 0xff00

    if-eqz v10, :cond_3

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v11

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    .line 479
    aput-char v8, v1, v7

    goto :goto_2

    :cond_3
    shl-int/lit8 v8, v8, 0x8

    and-int/2addr v8, v11

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v8, v9

    int-to-char v8, v8

    .line 481
    aput-char v8, v1, v7

    goto :goto_2

    :cond_4
    and-int/lit16 v8, v8, 0xff

    int-to-char v8, v8

    .line 484
    aput-char v8, v1, v7

    :goto_2
    add-int/lit8 v7, v7, 0x1

    add-long/2addr p1, v4

    goto :goto_1

    .line 488
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static final writePrivateProfileSection(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 777
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 778
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 779
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 780
    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0, p2}, Lcom/sun/jna/platform/win32/Kernel32;->WritePrivateProfileSection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 781
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static final writePrivateProfileString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 644
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sun/jna/platform/win32/Kernel32;->WritePrivateProfileString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 646
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method
