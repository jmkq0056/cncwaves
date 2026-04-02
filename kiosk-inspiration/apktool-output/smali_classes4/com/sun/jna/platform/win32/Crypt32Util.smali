.class public abstract Lcom/sun/jna/platform/win32/Crypt32Util;
.super Ljava/lang/Object;
.source "Crypt32Util.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CertNameToStr(IILcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;)Ljava/lang/String;
    .locals 14

    .line 196
    const-string v0, "w32.ascii"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    sget v1, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    .line 199
    :goto_0
    sget-object v2, Lcom/sun/jna/platform/win32/Crypt32;->INSTANCE:Lcom/sun/jna/platform/win32/Crypt32;

    sget-object v6, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    const/4 v7, 0x0

    move v3, p0

    move v5, p1

    move-object/from16 v4, p2

    invoke-interface/range {v2 .. v7}, Lcom/sun/jna/platform/win32/Crypt32;->CertNameToStr(ILcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;ILcom/sun/jna/Pointer;I)I

    move-result v13

    .line 206
    new-instance v12, Lcom/sun/jna/Memory;

    mul-int/2addr v1, v13

    int-to-long v1, v1

    invoke-direct {v12, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 209
    sget-object v8, Lcom/sun/jna/platform/win32/Crypt32;->INSTANCE:Lcom/sun/jna/platform/win32/Crypt32;

    move v9, p0

    move v11, p1

    move-object/from16 v10, p2

    invoke-interface/range {v8 .. v13}, Lcom/sun/jna/platform/win32/Crypt32;->CertNameToStr(ILcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;ILcom/sun/jna/Pointer;I)I

    .line 218
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_1

    .line 219
    invoke-virtual {v12, v0, v1}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 221
    :cond_1
    invoke-virtual {v12, v0, v1}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static cryptProtectData([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-static {p0, v0}, Lcom/sun/jna/platform/win32/Crypt32Util;->cryptProtectData([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static cryptProtectData([BI)[B
    .locals 2

    const/4 v0, 0x0

    .line 60
    const-string v1, ""

    invoke-static {p0, v0, p1, v1, v0}, Lcom/sun/jna/platform/win32/Crypt32Util;->cryptProtectData([B[BILjava/lang/String;Lcom/sun/jna/platform/win32/WinCrypt$CRYPTPROTECT_PROMPTSTRUCT;)[B

    move-result-object p0

    return-object p0
.end method

.method public static cryptProtectData([B[BILjava/lang/String;Lcom/sun/jna/platform/win32/WinCrypt$CRYPTPROTECT_PROMPTSTRUCT;)[B
    .locals 8

    .line 80
    new-instance v1, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

    invoke-direct {v1, p0}, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;-><init>([B)V

    .line 81
    new-instance v7, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

    invoke-direct {v7}, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;-><init>()V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 82
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;-><init>([B)V

    :goto_0
    move-object v3, p0

    .line 84
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Crypt32;->INSTANCE:Lcom/sun/jna/platform/win32/Crypt32;

    const/4 v4, 0x0

    move v6, p2

    move-object v2, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Crypt32;->CryptProtectData(Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinCrypt$CRYPTPROTECT_PROMPTSTRUCT;ILcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 88
    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;->getData()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object p1, v7, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;->pbData:Lcom/sun/jna/Pointer;

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, v7, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;->pbData:Lcom/sun/jna/Pointer;

    invoke-static {p1}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    :cond_1
    return-object p0

    .line 86
    :cond_2
    :try_start_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 90
    iget-object p1, v7, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;->pbData:Lcom/sun/jna/Pointer;

    if-eqz p1, :cond_3

    .line 91
    iget-object p1, v7, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;->pbData:Lcom/sun/jna/Pointer;

    invoke-static {p1}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    .line 93
    :cond_3
    throw p0
.end method

.method public static cryptUnprotectData([B)[B
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-static {p0, v0}, Lcom/sun/jna/platform/win32/Crypt32Util;->cryptUnprotectData([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static cryptUnprotectData([BI)[B
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-static {p0, v0, p1, v0}, Lcom/sun/jna/platform/win32/Crypt32Util;->cryptUnprotectData([B[BILcom/sun/jna/platform/win32/WinCrypt$CRYPTPROTECT_PROMPTSTRUCT;)[B

    move-result-object p0

    return-object p0
.end method

.method public static cryptUnprotectData([B[BILcom/sun/jna/platform/win32/WinCrypt$CRYPTPROTECT_PROMPTSTRUCT;)[B
    .locals 9

    .line 135
    new-instance v1, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

    invoke-direct {v1, p0}, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;-><init>([B)V

    .line 136
    new-instance v7, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

    invoke-direct {v7}, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;-><init>()V

    const/4 p0, 0x0

    if-nez p1, :cond_0

    move-object v3, p0

    goto :goto_0

    .line 137
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;-><init>([B)V

    move-object v3, v0

    .line 138
    :goto_0
    new-instance v2, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v2}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 142
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Crypt32;->INSTANCE:Lcom/sun/jna/platform/win32/Crypt32;

    const/4 v4, 0x0

    move v6, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Crypt32;->CryptUnprotectData(Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinCrypt$CRYPTPROTECT_PROMPTSTRUCT;ILcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 144
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;->getData()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :goto_1
    iget-object p2, v7, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;->pbData:Lcom/sun/jna/Pointer;

    if-eqz p2, :cond_3

    .line 151
    :try_start_1
    iget-object p2, v7, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;->pbData:Lcom/sun/jna/Pointer;

    invoke-static {p2}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V
    :try_end_1
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p2, v0

    if-nez p0, :cond_2

    move-object p0, p2

    goto :goto_2

    .line 156
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    .line 161
    :cond_3
    :goto_2
    invoke-virtual {v2}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 163
    :try_start_2
    invoke-virtual {v2}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-static {p2}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V
    :try_end_2
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p2, v0

    if-nez p0, :cond_4

    move-object p0, p2

    goto :goto_3

    .line 168
    :cond_4
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    if-nez p0, :cond_6

    return-object p1

    .line 175
    :cond_6
    throw p0

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 149
    iget-object p2, v7, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;->pbData:Lcom/sun/jna/Pointer;

    if-eqz p2, :cond_7

    .line 151
    :try_start_3
    iget-object p2, v7, Lcom/sun/jna/platform/win32/WinCrypt$DATA_BLOB;->pbData:Lcom/sun/jna/Pointer;

    invoke-static {p2}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V
    :try_end_3
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p0, v0

    .line 161
    :cond_7
    :goto_4
    invoke-virtual {v2}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 163
    :try_start_4
    invoke-virtual {v2}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p2

    invoke-static {p2}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V
    :try_end_4
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object p2, v0

    if-nez p0, :cond_8

    goto :goto_5

    .line 168
    :cond_8
    invoke-virtual {p0, p2}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    .line 172
    :cond_9
    :goto_5
    throw p1
.end method
