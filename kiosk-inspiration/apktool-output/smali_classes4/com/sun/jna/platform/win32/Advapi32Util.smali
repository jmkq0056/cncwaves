.class public abstract Lcom/sun/jna/platform/win32/Advapi32Util;
.super Ljava/lang/Object;
.source "Advapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;,
        Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;,
        Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;,
        Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;,
        Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;,
        Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;,
        Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;,
        Lcom/sun/jna/platform/win32/Advapi32Util$Account;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static accessCheck(Ljava/io/File;Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;)Z
    .locals 14

    .line 2874
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    const/16 v1, 0x5c

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Advapi32Util;->getSecurityDescriptorForFile(Ljava/lang/String;)Lcom/sun/jna/Memory;

    move-result-object v1

    .line 2876
    new-instance p0, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    .line 2877
    new-instance v9, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {v9}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x0

    .line 2881
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetCurrentProcess()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    .line 2882
    sget-object v2, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v3, 0x2000e

    invoke-interface {v2, v0, v3, p0}, Lcom/sun/jna/platform/win32/Advapi32;->OpenProcessToken(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2886
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    invoke-interface {v0, v2, v12, v9}, Lcom/sun/jna/platform/win32/Advapi32;->DuplicateToken(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2890
    new-instance v4, Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;

    invoke-direct {v4}, Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;-><init>()V

    .line 2891
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/32 v2, 0x120089

    invoke-direct {v0, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v0, v4, Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;->genericRead:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 2892
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/32 v2, 0x120116

    invoke-direct {v0, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v0, v4, Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;->genericWrite:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 2893
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/32 v2, 0x1200a0

    invoke-direct {v0, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v0, v4, Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;->genericExecute:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 2894
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/32 v2, 0x1f01ff

    invoke-direct {v0, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object v0, v4, Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;->genericAll:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 2896
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Advapi32Util$AccessCheckPermission;->getCode()I

    move-result p1

    int-to-long v5, p1

    invoke-direct {v2, v5, v6}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    .line 2897
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {p1, v0, v4}, Lcom/sun/jna/platform/win32/Advapi32;->MapGenericMask(Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;)V

    .line 2899
    new-instance v5, Lcom/sun/jna/platform/win32/WinNT$PRIVILEGE_SET;

    invoke-direct {v5, v11}, Lcom/sun/jna/platform/win32/WinNT$PRIVILEGE_SET;-><init>(I)V

    .line 2900
    new-instance p1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v2, 0x0

    invoke-direct {p1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    iput-object p1, v5, Lcom/sun/jna/platform/win32/WinNT$PRIVILEGE_SET;->PrivilegeCount:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 2901
    new-instance v6, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    new-instance p1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinNT$PRIVILEGE_SET;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v6, p1}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    .line 2903
    new-instance v7, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    invoke-direct {v7}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>()V

    .line 2904
    new-instance v8, Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;

    invoke-direct {v8}, Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;-><init>()V

    move-object p1, v0

    .line 2905
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    .line 2906
    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    .line 2907
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v3

    .line 2905
    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/Advapi32;->AccessCheck(Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinDef$DWORD;Lcom/sun/jna/platform/win32/WinNT$GENERIC_MAPPING;Lcom/sun/jna/platform/win32/WinNT$PRIVILEGE_SET;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2913
    invoke-virtual {v8}, Lcom/sun/jna/platform/win32/WinDef$BOOLByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$BOOL;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2919
    :try_start_1
    new-array v0, v12, [Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    aput-object p0, v0, v10

    aput-object v9, v0, v11

    invoke-static {v0}, Lcom/sun/jna/platform/win32/Kernel32Util;->closeHandleRefs([Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)V
    :try_end_1
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v13, p0

    :goto_0
    if-eqz v1, :cond_0

    .line 2929
    invoke-virtual {v1}, Lcom/sun/jna/Memory;->clear()V

    :cond_0
    if-nez v13, :cond_1

    return p1

    .line 2933
    :cond_1
    throw v13

    .line 2910
    :cond_2
    :try_start_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 2887
    :cond_3
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 2883
    :cond_4
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
    :try_end_2
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object v13, p1

    .line 2916
    :try_start_3
    throw v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2919
    :goto_1
    :try_start_4
    new-array v0, v12, [Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    aput-object p0, v0, v10

    aput-object v9, v0, v11

    invoke-static {v0}, Lcom/sun/jna/platform/win32/Kernel32Util;->closeHandleRefs([Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)V
    :try_end_4
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p0, v0

    if-nez v13, :cond_5

    move-object v13, p0

    goto :goto_2

    .line 2924
    :cond_5
    invoke-virtual {v13, p0}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v1, :cond_6

    .line 2929
    invoke-virtual {v1}, Lcom/sun/jna/Memory;->clear()V

    :cond_6
    if-eqz v13, :cond_7

    .line 2933
    throw v13

    .line 2935
    :cond_7
    throw p1
.end method

.method public static alignOnDWORD(I)I
    .locals 0

    add-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, -0x4

    return p0
.end method

.method public static backupEncryptedFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7

    .line 3059
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3063
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$ULONG;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$ULONG;-><init>(J)V

    .line 3064
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$ULONG;

    const-wide/16 v2, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$ULONG;-><init>(J)V

    .line 3066
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x3

    .line 3067
    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$ULONG;->setValue(J)V

    .line 3071
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 3072
    new-instance v3, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v3}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 3073
    sget-object v4, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v4, v2, v0, v3}, Lcom/sun/jna/platform/win32/Advapi32;->OpenEncryptedFileRaw(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/ptr/PointerByReference;)I

    move-result v0

    if-nez v0, :cond_4

    .line 3079
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3080
    new-instance v2, Lcom/sun/jna/platform/win32/Advapi32Util$1;

    invoke-direct {v2, v0}, Lcom/sun/jna/platform/win32/Advapi32Util$1;-><init>(Ljava/io/ByteArrayOutputStream;)V

    .line 3094
    sget-object v4, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    .line 3095
    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v5

    const/4 v6, 0x0

    .line 3094
    invoke-interface {v4, v2, v6, v5}, Lcom/sun/jna/platform/win32/Advapi32;->ReadEncryptedFileRaw(Lcom/sun/jna/platform/win32/WinBase$FE_EXPORT_FUNC;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)I

    move-result v2

    if-nez v2, :cond_3

    .line 3101
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3105
    sget-object v2, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v3}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sun/jna/platform/win32/Advapi32;->CloseEncryptedFileRaw(Lcom/sun/jna/Pointer;)V

    .line 3108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3109
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3110
    new-instance p1, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {p1}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 3111
    sget-object v2, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v2, p0, v1, p1}, Lcom/sun/jna/platform/win32/Advapi32;->OpenEncryptedFileRaw(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$ULONG;Lcom/sun/jna/ptr/PointerByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 3117
    new-instance p0, Lcom/sun/jna/ptr/IntByReference;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 3118
    new-instance v1, Lcom/sun/jna/platform/win32/Advapi32Util$2;

    invoke-direct {v1, p0, v0}, Lcom/sun/jna/platform/win32/Advapi32Util$2;-><init>(Lcom/sun/jna/ptr/IntByReference;Ljava/io/ByteArrayOutputStream;)V

    .line 3133
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    .line 3134
    invoke-virtual {p1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 3133
    invoke-interface {p0, v1, v6, v0}, Lcom/sun/jna/platform/win32/Advapi32;->WriteEncryptedFileRaw(Lcom/sun/jna/platform/win32/WinBase$FE_IMPORT_FUNC;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)I

    move-result p0

    if-nez p0, :cond_1

    .line 3139
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {p1}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->CloseEncryptedFileRaw(Lcom/sun/jna/Pointer;)V

    return-void

    .line 3135
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 3113
    :cond_2
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :catch_0
    move-exception p0

    .line 3103
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 3096
    :cond_3
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 3075
    :cond_4
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 3060
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "destDir must be a directory."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static convertSidToStringSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Ljava/lang/String;
    .locals 2

    .line 311
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 312
    sget-object v1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v1, p0, v0}, Lcom/sun/jna/platform/win32/Advapi32;->ConvertSidToStringSid(Lcom/sun/jna/platform/win32/WinNT$PSID;Lcom/sun/jna/ptr/PointerByReference;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 316
    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    .line 321
    throw v0

    .line 313
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static convertStringSidToSid(Ljava/lang/String;)[B
    .locals 2

    .line 333
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;-><init>()V

    .line 334
    sget-object v1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v1, p0, v0}, Lcom/sun/jna/platform/win32/Advapi32;->ConvertStringSidToSid(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 338
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$PSID;

    move-result-object p0

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getBytes()[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    .line 343
    throw v0

    .line 335
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static decryptFile(Ljava/io/File;)V
    .locals 4

    .line 3007
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3008
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-interface {v0, p0, v1}, Lcom/sun/jna/platform/win32/Advapi32;->DecryptFile(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$DWORD;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 3009
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static disableEncryption(Ljava/io/File;Z)V
    .locals 1

    .line 3039
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3040
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v0, p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->EncryptionDisable(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 3041
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static encryptFile(Ljava/io/File;)V
    .locals 1

    .line 2994
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 2995
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Advapi32;->EncryptFile(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 2996
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static fileEncryptionStatus(Ljava/io/File;)I
    .locals 2

    .line 3021
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>()V

    .line 3022
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3023
    sget-object v1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v1, p0, v0}, Lcom/sun/jna/platform/win32/Advapi32;->FileEncryptionStatus(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3026
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result p0

    return p0

    .line 3024
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static getAccountByName(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-static {v0, p0}, Lcom/sun/jna/platform/win32/Advapi32Util;->getAccountByName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    move-result-object p0

    return-object p0
.end method

.method public static getAccountByName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;
    .locals 11

    .line 191
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 192
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6, v8}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 193
    new-instance v7, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v7}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 195
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Advapi32;->LookupAccountName(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSID;Lcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 201
    sget-object p0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p0

    .line 202
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x7a

    if-ne p0, p1, :cond_4

    .line 206
    new-instance p0, Lcom/sun/jna/Memory;

    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    int-to-long v9, p1

    invoke-direct {p0, v9, v10}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 207
    new-instance v3, Lcom/sun/jna/platform/win32/WinNT$PSID;

    invoke-direct {v3, p0}, Lcom/sun/jna/platform/win32/WinNT$PSID;-><init>(Lcom/sun/jna/Pointer;)V

    .line 208
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 p1, 0x1

    add-int/2addr p0, p1

    new-array v5, p0, [C

    .line 210
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Advapi32;->LookupAccountName(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSID;Lcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 215
    new-instance p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Advapi32Util$Account;-><init>()V

    .line 216
    invoke-virtual {v7}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    const-wide/16 v9, 0x0

    invoke-virtual {v0, v9, v10}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->accountType:I

    .line 218
    const-string v0, "\\\\"

    const/4 v1, 0x2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v4, "@"

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 221
    array-length v7, v0

    if-ne v7, v1, :cond_0

    .line 222
    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 223
    :cond_0
    array-length p1, v4

    if-ne p1, v1, :cond_1

    .line 224
    aget-object p1, v4, v8

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->name:Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_1
    iput-object v2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->name:Ljava/lang/String;

    .line 229
    :goto_0
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    if-lez p1, :cond_2

    .line 230
    invoke-static {v5}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->domain:Ljava/lang/String;

    .line 231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->fqn:Ljava/lang/String;

    goto :goto_1

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->fqn:Ljava/lang/String;

    .line 236
    :goto_1
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->sid:[B

    .line 237
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$PSID;

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->sid:[B

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/WinNT$PSID;-><init>([B)V

    invoke-static {p1}, Lcom/sun/jna/platform/win32/Advapi32Util;->convertSidToStringSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->sidString:Ljava/lang/String;

    return-object p0

    .line 212
    :cond_3
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 203
    :cond_4
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 197
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "LookupAccountNameW was expected to fail with ERROR_INSUFFICIENT_BUFFER"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAccountBySid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-static {v0, p0}, Lcom/sun/jna/platform/win32/Advapi32Util;->getAccountBySid(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSID;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    move-result-object p0

    return-object p0
.end method

.method public static getAccountBySid(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;
    .locals 1

    const/4 v0, 0x0

    .line 413
    invoke-static {v0, p0}, Lcom/sun/jna/platform/win32/Advapi32Util;->getAccountBySid(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    move-result-object p0

    return-object p0
.end method

.method public static getAccountBySid(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSID;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;
    .locals 8

    .line 262
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 263
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 264
    new-instance v7, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v7}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 266
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Advapi32;->LookupAccountSid(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSID;[CLcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 272
    sget-object p0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p0

    .line 273
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x7a

    if-ne p0, p1, :cond_2

    .line 278
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    new-array v5, p0, [C

    .line 279
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    new-array v3, p0, [C

    .line 281
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Advapi32;->LookupAccountSid(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSID;[CLcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/PointerByReference;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 286
    new-instance p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Advapi32Util$Account;-><init>()V

    .line 287
    invoke-virtual {v7}, Lcom/sun/jna/ptr/PointerByReference;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->accountType:I

    .line 288
    invoke-static {v3}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->name:Ljava/lang/String;

    .line 290
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    if-lez p1, :cond_0

    .line 291
    invoke-static {v5}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->domain:Ljava/lang/String;

    .line 292
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->domain:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\\"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->fqn:Ljava/lang/String;

    goto :goto_0

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->fqn:Ljava/lang/String;

    .line 297
    :goto_0
    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getBytes()[B

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->sid:[B

    .line 298
    invoke-static {v2}, Lcom/sun/jna/platform/win32/Advapi32Util;->convertSidToStringSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->sidString:Ljava/lang/String;

    return-object p0

    .line 283
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 275
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 268
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "LookupAccountSidW was expected to fail with ERROR_INSUFFICIENT_BUFFER"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getAccountBySid(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;
    .locals 1

    .line 426
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$PSID;

    invoke-static {p1}, Lcom/sun/jna/platform/win32/Advapi32Util;->convertStringSidToSid(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/WinNT$PSID;-><init>([B)V

    invoke-static {p0, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->getAccountBySid(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSID;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    move-result-object p0

    return-object p0
.end method

.method public static getAceSize(I)I
    .locals 2

    .line 400
    const-class v0, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ALLOWED_ACE;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public static getCurrentUserGroups()[Lcom/sun/jna/platform/win32/Advapi32Util$Account;
    .locals 6

    .line 516
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    const/4 v1, 0x0

    .line 520
    :try_start_0
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetCurrentThread()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    .line 521
    sget-object v3, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v4, 0x1

    const/16 v5, 0xa

    invoke-interface {v3, v2, v5, v4, v0}, Lcom/sun/jna/platform/win32/Advapi32;->OpenThreadToken(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IZLcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 523
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    const/16 v3, 0x3f0

    if-ne v2, v3, :cond_1

    .line 528
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetCurrentProcess()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    .line 529
    sget-object v3, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v3, v2, v5, v0}, Lcom/sun/jna/platform/win32/Advapi32;->OpenProcessToken(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 531
    :cond_0
    new-instance v2, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v2

    .line 525
    :cond_1
    new-instance v3, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v3, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v3

    .line 535
    :cond_2
    :goto_0
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/jna/platform/win32/Advapi32Util;->getTokenGroups(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)[Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    move-result-object v2
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    .line 541
    sget-object v3, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v3, v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 543
    :try_start_1
    invoke-static {v0}, Lcom/sun/jna/platform/win32/Kernel32Util;->closeHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    :try_end_1
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    return-object v2

    .line 554
    :cond_4
    throw v1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v1

    .line 538
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    :goto_2
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    .line 541
    sget-object v3, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v3, v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 543
    :try_start_3
    invoke-static {v0}, Lcom/sun/jna/platform/win32/Kernel32Util;->closeHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V
    :try_end_3
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    if-nez v1, :cond_5

    move-object v1, v0

    goto :goto_3

    .line 548
    :cond_5
    invoke-virtual {v1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    if-eqz v1, :cond_7

    .line 554
    throw v1

    .line 556
    :cond_7
    throw v2
.end method

.method public static getEnvironmentBlock(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2310
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2311
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2313
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2316
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileSecurity(Ljava/lang/String;Z)[Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;
    .locals 10

    const/16 v0, 0x400

    move v5, v0

    .line 2603
    :goto_0
    new-instance v4, Lcom/sun/jna/Memory;

    int-to-long v0, v5

    invoke-direct {v4, v0, v1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 2604
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 2605
    sget-object v1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x4

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->GetFileSecurity(Ljava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2609
    sget-object p0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p0

    .line 2610
    invoke-virtual {v4}, Lcom/sun/jna/Memory;->clear()V

    const/16 v0, 0x7a

    if-ne v0, p0, :cond_0

    goto :goto_1

    .line 2612
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 2615
    :cond_1
    :goto_1
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge v5, p0, :cond_2

    .line 2619
    invoke-virtual {v4}, Lcom/sun/jna/Memory;->clear()V

    move v5, p0

    move p0, v0

    goto :goto_2

    :cond_2
    move p0, v1

    :goto_2
    if-nez p0, :cond_8

    .line 2623
    new-instance p0, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;

    invoke-direct {p0, v4}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;-><init>(Lcom/sun/jna/Pointer;)V

    .line 2625
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->getDiscretionaryACL()Lcom/sun/jna/platform/win32/WinNT$ACL;

    move-result-object p0

    .line 2626
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$ACL;->getACEs()[Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;

    move-result-object p0

    if-eqz p1, :cond_7

    .line 2629
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2630
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2631
    array-length v3, p0

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_6

    aget-object v5, p0, v4

    .line 2632
    instance-of v6, v5, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;

    if-eqz v6, :cond_5

    .line 2633
    move-object v6, v5

    check-cast v6, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;

    .line 2634
    iget-byte v7, v5, Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;->AceFlags:B

    and-int/lit8 v7, v7, 0x1f

    if-eqz v7, :cond_3

    move v7, v0

    goto :goto_4

    :cond_3
    move v7, v1

    .line 2635
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->getSidString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2636
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2637
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;

    if-eqz v7, :cond_4

    .line 2639
    iget v5, v7, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->Mask:I

    .line 2640
    iget v6, v6, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->Mask:I

    or-int/2addr v5, v6

    .line 2641
    iput v5, v7, Lcom/sun/jna/platform/win32/WinNT$ACCESS_ACEStructure;->Mask:I

    goto :goto_5

    .line 2643
    :cond_4
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2644
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 2647
    :cond_5
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2650
    :cond_6
    new-array p0, v1, [Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;

    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/WinNT$ACE_HEADER;

    :cond_7
    return-object p0

    :cond_8
    move-object p0, v2

    goto/16 :goto_0
.end method

.method public static getFileSecurityDescriptor(Ljava/io/File;Z)Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;
    .locals 2

    .line 2950
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    const-string v1, "\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/sun/jna/platform/win32/Advapi32Util;->getSecurityDescriptorForObject(Ljava/lang/String;IZ)Lcom/sun/jna/Memory;

    move-result-object p0

    .line 2951
    new-instance p1, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;-><init>(Lcom/sun/jna/Pointer;)V

    return-object p1
.end method

.method private static getSecurityDescriptorForFile(Ljava/lang/String;)Lcom/sun/jna/Memory;
    .locals 8

    .line 2677
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 2678
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x7

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->GetFileSecurity(Ljava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2685
    sget-object p0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p0

    const/16 v0, 0x7a

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 2687
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 2691
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v4

    .line 2692
    new-instance v3, Lcom/sun/jna/Memory;

    int-to-long v6, v4

    invoke-direct {v3, v6, v7}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 2693
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v2, 0x7

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->GetFileSecurity(Ljava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v3

    .line 2697
    :cond_2
    invoke-virtual {v3}, Lcom/sun/jna/Memory;->clear()V

    .line 2698
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static getSecurityDescriptorForObject(Ljava/lang/String;IZ)Lcom/sun/jna/Memory;
    .locals 9

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/lit8 v3, p2, 0x7

    .line 2724
    new-instance v8, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v8}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 2726
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/Advapi32;->GetNamedSecurityInfo(Ljava/lang/String;IILcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/ptr/PointerByReference;)I

    move-result p0

    if-nez p0, :cond_1

    .line 2740
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v8}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->GetSecurityDescriptorLength(Lcom/sun/jna/Pointer;)I

    move-result v5

    .line 2741
    new-instance v0, Lcom/sun/jna/Memory;

    int-to-long p0, v5

    invoke-direct {v0, p0, p1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 2742
    invoke-virtual {v8}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object p0

    const-wide/16 p1, 0x0

    .line 2744
    :try_start_0
    invoke-virtual {p0, p1, p2, v5}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v3

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    .line 2745
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Memory;->write(J[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2748
    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    .line 2749
    throw p1

    .line 2737
    :cond_1
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static getTokenAccount(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;
    .locals 6

    .line 488
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 489
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->GetTokenInformation(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Structure;ILcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 495
    sget-object p0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p0

    const/16 v0, 0x7a

    if-ne p0, v0, :cond_1

    .line 500
    new-instance v3, Lcom/sun/jna/platform/win32/WinNT$TOKEN_USER;

    .line 501
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    invoke-direct {v3, p0}, Lcom/sun/jna/platform/win32/WinNT$TOKEN_USER;-><init>(I)V

    .line 502
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v2, 0x1

    .line 504
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v4

    .line 502
    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->GetTokenInformation(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Structure;ILcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 507
    iget-object p0, v3, Lcom/sun/jna/platform/win32/WinNT$TOKEN_USER;->User:Lcom/sun/jna/platform/win32/WinNT$SID_AND_ATTRIBUTES;

    iget-object p0, p0, Lcom/sun/jna/platform/win32/WinNT$SID_AND_ATTRIBUTES;->Sid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Advapi32Util;->getAccountBySid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    move-result-object p0

    return-object p0

    .line 505
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 497
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 492
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Expected GetTokenInformation to fail with ERROR_INSUFFICIENT_BUFFER"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getTokenGroups(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)[Lcom/sun/jna/platform/win32/Advapi32Util$Account;
    .locals 7

    .line 439
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 440
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x2

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->GetTokenInformation(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Structure;ILcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 446
    sget-object p0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p0

    const/16 v0, 0x7a

    if-ne p0, v0, :cond_2

    .line 451
    new-instance v3, Lcom/sun/jna/platform/win32/WinNT$TOKEN_GROUPS;

    .line 452
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    invoke-direct {v3, p0}, Lcom/sun/jna/platform/win32/WinNT$TOKEN_GROUPS;-><init>(I)V

    .line 453
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v2, 0x2

    .line 455
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v4

    .line 453
    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->GetTokenInformation(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Structure;ILcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 458
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinNT$TOKEN_GROUPS;->getGroups()[Lcom/sun/jna/platform/win32/WinNT$SID_AND_ATTRIBUTES;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 463
    :try_start_0
    iget-object v5, v4, Lcom/sun/jna/platform/win32/WinNT$SID_AND_ATTRIBUTES;->Sid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

    invoke-static {v5}, Lcom/sun/jna/platform/win32/Advapi32Util;->getAccountBySid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 465
    :catch_0
    new-instance v5, Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/Advapi32Util$Account;-><init>()V

    .line 466
    iget-object v6, v4, Lcom/sun/jna/platform/win32/WinNT$SID_AND_ATTRIBUTES;->Sid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;->getBytes()[B

    move-result-object v6

    iput-object v6, v5, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->sid:[B

    .line 467
    iget-object v4, v4, Lcom/sun/jna/platform/win32/WinNT$SID_AND_ATTRIBUTES;->Sid:Lcom/sun/jna/platform/win32/WinNT$PSID$ByReference;

    .line 468
    invoke-static {v4}, Lcom/sun/jna/platform/win32/Advapi32Util;->convertSidToStringSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->sidString:Ljava/lang/String;

    .line 469
    iget-object v4, v5, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->sidString:Ljava/lang/String;

    iput-object v4, v5, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->name:Ljava/lang/String;

    .line 470
    iget-object v4, v5, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->sidString:Ljava/lang/String;

    iput-object v4, v5, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->fqn:Ljava/lang/String;

    const/4 v4, 0x2

    .line 471
    iput v4, v5, Lcom/sun/jna/platform/win32/Advapi32Util$Account;->accountType:I

    move-object v4, v5

    .line 473
    :goto_1
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 475
    :cond_0
    new-array v0, v2, [Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/Advapi32Util$Account;

    return-object p0

    .line 456
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 448
    :cond_2
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 443
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Expected GetTokenInformation to fail with ERROR_INSUFFICIENT_BUFFER"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x80

    .line 145
    new-array v1, v0, [C

    .line 146
    new-instance v2, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v2, v0}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 147
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v0, v1, v2}, Lcom/sun/jna/platform/win32/Advapi32;->GetUserNameW([CLcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    const/16 v1, 0x7a

    if-ne v0, v1, :cond_0

    .line 152
    invoke-virtual {v2}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    new-array v1, v0, [C

    .line 159
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v0, v1, v2}, Lcom/sun/jna/platform/win32/Advapi32;->GetUserNameW([CLcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    goto :goto_0

    .line 156
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 166
    invoke-static {v1}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 163
    :cond_2
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-static {}, Lcom/sun/jna/Native;->getLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public static isWellKnownSid(Ljava/lang/String;I)Z
    .locals 2

    .line 357
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;-><init>()V

    .line 358
    sget-object v1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v1, p0, v0}, Lcom/sun/jna/platform/win32/Advapi32;->ConvertStringSidToSid(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 362
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$PSIDByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$PSID;

    move-result-object p0

    .line 364
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v0, p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->IsWellKnownSid(Lcom/sun/jna/platform/win32/WinNT$PSID;I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Kernel32Util;->freeLocalMemory(Lcom/sun/jna/Pointer;)V

    .line 367
    throw p1

    .line 359
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static isWellKnownSid([BI)Z
    .locals 1

    .line 381
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$PSID;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/WinNT$PSID;-><init>([B)V

    .line 382
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {p0, v0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->IsWellKnownSid(Lcom/sun/jna/platform/win32/WinNT$PSID;I)Z

    move-result p0

    return p0
.end method

.method public static registryCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)V
    .locals 1

    .line 2035
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v0, p0}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 2037
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public static registryCreateKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1260
    invoke-static {p0, p1, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryCreateKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static registryCreateKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)Z
    .locals 10

    .line 1276
    new-instance v8, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v8}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1277
    new-instance v9, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v9}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1278
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x20019

    or-int v6, p2, v1

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v9}, Lcom/sun/jna/platform/win32/Advapi32;->RegCreateKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILjava/lang/String;IILcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1284
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v8}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_1

    .line 1288
    invoke-virtual {v9}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 p1, 0x1

    if-ne p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1286
    :cond_1
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 1282
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryCreateKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1304
    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryCreateKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static registryCreateKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6

    .line 1323
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1324
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    or-int/lit8 v4, p3, 0x4

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1330
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryCreateKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1332
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-nez p1, :cond_0

    return p0

    .line 1334
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1332
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1334
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1336
    :cond_1
    throw p0

    .line 1327
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryDeleteKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)V
    .locals 1

    .line 1817
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v0, p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegDeleteKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1819
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryDeleteKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1835
    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryDeleteKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static registryDeleteKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 1853
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1854
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x2001f

    or-int v4, p3, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1860
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryDeleteKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1862
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1864
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1862
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1864
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1866
    :cond_1
    throw p0

    .line 1857
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryDeleteValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)V
    .locals 1

    .line 1878
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v0, p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegDeleteValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1880
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryDeleteValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1896
    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryDeleteValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static registryDeleteValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 1914
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1915
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x2001f

    or-int v4, p3, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1921
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryDeleteValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1923
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1925
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1923
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1925
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1927
    :cond_1
    throw p0

    .line 1918
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryGetBinaryValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)[B
    .locals 7

    .line 1010
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1011
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1012
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v5, 0x0

    move-object v1, v5

    check-cast v1, Lcom/sun/jna/Pointer;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    const/16 p1, 0x7a

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 1018
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_4

    .line 1022
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    new-array v5, p0, [B

    .line 1023
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;[BLcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-eqz p0, :cond_3

    if-ne p0, p1, :cond_2

    goto :goto_1

    .line 1027
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    return-object v5

    .line 1019
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected registry type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", expected REG_BINARY"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registryGetBinaryValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 965
    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetBinaryValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static registryGetBinaryValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)[B
    .locals 6

    .line 984
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 985
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x20019

    or-int v4, p3, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 991
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetBinaryValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 995
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 993
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 995
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 997
    :cond_1
    throw p0

    .line 988
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryGetExpandableStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 815
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 816
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 817
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v5, 0x0

    move-object v1, v5

    check-cast v1, [C

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    const/16 p1, 0x7a

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 821
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 823
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    .line 827
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    if-nez p0, :cond_2

    .line 828
    const-string p0, ""

    return-object p0

    .line 831
    :cond_2
    new-instance v5, Lcom/sun/jna/Memory;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    sget v0, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    add-int/2addr p0, v0

    int-to-long v7, p0

    invoke-direct {v5, v7, v8}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 832
    invoke-virtual {v5}, Lcom/sun/jna/Memory;->clear()V

    .line 833
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-eqz p0, :cond_4

    if-ne p0, p1, :cond_3

    goto :goto_1

    .line 837
    :cond_3
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 839
    :cond_4
    :goto_1
    sget-object p0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object p1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    const-wide/16 v0, 0x0

    if-ne p0, p1, :cond_5

    .line 840
    invoke-virtual {v5, v0, v1}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 842
    :cond_5
    invoke-virtual {v5, v0, v1}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 824
    :cond_6
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected registry type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", expected REG_SZ"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registryGetExpandableStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 770
    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetExpandableStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registryGetExpandableStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 789
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 790
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x20019

    or-int v4, p3, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 796
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetExpandableStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 800
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 798
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 800
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 802
    :cond_1
    throw p0

    .line 793
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryGetIntValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)I
    .locals 7

    .line 1088
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1089
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1090
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v5, 0x0

    move-object v1, v5

    check-cast v1, [C

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    const/16 p1, 0x7a

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 1094
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 1096
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 1100
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1101
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-eqz p0, :cond_3

    if-ne p0, p1, :cond_2

    goto :goto_1

    .line 1105
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 1107
    :cond_3
    :goto_1
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    return p0

    .line 1097
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected registry type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1098
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", expected REG_DWORD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registryGetIntValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 1044
    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetIntValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static registryGetIntValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6

    .line 1062
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1063
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x20019

    or-int v4, p3, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1069
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetIntValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-nez p1, :cond_0

    return p0

    .line 1073
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1071
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1073
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1075
    :cond_1
    throw p0

    .line 1066
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryGetKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;
    .locals 6

    .line 2018
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 2019
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_0

    return-object v5

    .line 2022
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryGetKeys(Lcom/sun/jna/platform/win32/WinReg$HKEY;)[Ljava/lang/String;
    .locals 16

    .line 1938
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1939
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1940
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    .line 1941
    invoke-interface/range {v0 .. v12}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryInfoKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)I

    move-result v0

    if-nez v0, :cond_2

    .line 1946
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1947
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-array v10, v1, [C

    const/4 v1, 0x0

    move v9, v1

    .line 1948
    :goto_0
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    if-ge v9, v2, :cond_1

    .line 1949
    new-instance v11, Lcom/sun/jna/ptr/IntByReference;

    .line 1950
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v11, v2}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 1951
    sget-object v7, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-interface/range {v7 .. v15}, Lcom/sun/jna/platform/win32/Advapi32;->RegEnumKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;I[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)I

    move-result v2

    if-nez v2, :cond_0

    .line 1956
    invoke-static {v10}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1954
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, v2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 1958
    :cond_1
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 1944
    :cond_2
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1
.end method

.method public static registryGetKeys(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1971
    invoke-static {p0, p1, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetKeys(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registryGetKeys(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6

    .line 1987
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1988
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x20019

    or-int v4, p2, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1994
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetKeys(Lcom/sun/jna/platform/win32/WinReg$HKEY;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1996
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 1998
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1996
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1998
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 2000
    :cond_1
    throw p0

    .line 1991
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryGetLongValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)J
    .locals 7

    .line 1166
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1167
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1168
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v5, 0x0

    move-object v1, v5

    check-cast v1, [C

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    const/16 p1, 0x7a

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 1172
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 1174
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_4

    .line 1178
    new-instance v5, Lcom/sun/jna/ptr/LongByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/LongByReference;-><init>()V

    .line 1179
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/LongByReference;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-eqz p0, :cond_3

    if-ne p0, p1, :cond_2

    goto :goto_1

    .line 1183
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 1185
    :cond_3
    :goto_1
    invoke-virtual {v5}, Lcom/sun/jna/ptr/LongByReference;->getValue()J

    move-result-wide p0

    return-wide p0

    .line 1175
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected registry type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", expected REG_QWORD"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registryGetLongValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)J
    .locals 1

    const/4 v0, 0x0

    .line 1122
    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetLongValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static registryGetLongValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 6

    .line 1140
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1141
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x20019

    or-int v4, p3, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1147
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetLongValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    sget-object p2, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p3

    invoke-interface {p2, p3}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p2

    if-nez p2, :cond_0

    return-wide p0

    .line 1151
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1149
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1151
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1153
    :cond_1
    throw p0

    .line 1144
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryGetStringArray(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .line 904
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 905
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 906
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v5, 0x0

    move-object v1, v5

    check-cast v1, [C

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    const/16 p1, 0x7a

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 910
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 912
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 918
    new-instance v5, Lcom/sun/jna/Memory;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    sget v0, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    int-to-long v7, p0

    invoke-direct {v5, v7, v8}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 919
    invoke-virtual {v5}, Lcom/sun/jna/Memory;->clear()V

    .line 920
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-eqz p0, :cond_3

    if-ne p0, p1, :cond_2

    goto :goto_1

    .line 924
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 926
    :cond_3
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p1, 0x0

    move v0, p1

    :goto_2
    int-to-long v1, v0

    .line 928
    invoke-virtual {v5}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_6

    .line 930
    sget-object v3, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object v4, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    if-ne v3, v4, :cond_4

    .line 931
    invoke-virtual {v5, v1, v2}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object v1

    .line 932
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sget v3, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 933
    sget v2, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    add-int/2addr v0, v2

    goto :goto_3

    .line 935
    :cond_4
    invoke-virtual {v5, v1, v2}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 940
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    .line 946
    :cond_5
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 949
    :cond_6
    :goto_4
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    .line 913
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected registry type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", expected REG_SZ"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static registryGetStringArray(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 859
    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetStringArray(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registryGetStringArray(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6

    .line 878
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 879
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x20019

    or-int v4, p3, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 885
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetStringArray(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 889
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 887
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 889
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 891
    :cond_1
    throw p0

    .line 882
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryGetStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .line 724
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 725
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 726
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v5, 0x0

    move-object v1, v5

    check-cast v1, Lcom/sun/jna/Pointer;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    const/16 p1, 0x7a

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 732
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    .line 733
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    goto :goto_1

    .line 734
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected registry type "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 735
    invoke-virtual {v4}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", expected REG_SZ or REG_EXPAND_SZ"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 738
    :cond_3
    :goto_1
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    if-nez p0, :cond_4

    .line 739
    const-string p0, ""

    return-object p0

    .line 742
    :cond_4
    new-instance v5, Lcom/sun/jna/Memory;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    sget v0, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    add-int/2addr p0, v0

    int-to-long v7, p0

    invoke-direct {v5, v7, v8}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 743
    invoke-virtual {v5}, Lcom/sun/jna/Memory;->clear()V

    .line 744
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-eqz p0, :cond_6

    if-ne p0, p1, :cond_5

    goto :goto_2

    .line 748
    :cond_5
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 750
    :cond_6
    :goto_2
    sget-object p0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object p1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    const-wide/16 v0, 0x0

    if-ne p0, p1, :cond_7

    .line 751
    invoke-virtual {v5, v0, v1}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 753
    :cond_7
    invoke-virtual {v5, v0, v1}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registryGetStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 679
    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registryGetStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .line 698
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 699
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x20019

    or-int v4, p3, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 705
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 707
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 709
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 707
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 709
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 711
    :cond_1
    throw p0

    .line 702
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryGetValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    .line 1203
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1204
    new-instance v7, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v7}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 1206
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v6, 0x0

    move-object v1, v6

    check-cast v1, Lcom/sun/jna/Pointer;

    const v4, 0xffff

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Advapi32;->RegGetValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    .line 1210
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-eqz p0, :cond_2

    const/16 p1, 0x7a

    if-ne p0, p1, :cond_1

    goto :goto_0

    .line 1215
    :cond_1
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 1222
    :cond_2
    :goto_0
    new-instance v6, Lcom/sun/jna/Memory;

    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    sget p1, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    add-int/2addr p0, p1

    int-to-long p0, p0

    invoke-direct {v6, p0, p1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 1223
    invoke-virtual {v6}, Lcom/sun/jna/Memory;->clear()V

    .line 1225
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v4, 0xffff

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Advapi32;->RegGetValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-nez p0, :cond_9

    .line 1232
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 p1, 0x4

    const-wide/16 v0, 0x0

    if-ne p0, p1, :cond_3

    .line 1233
    invoke-virtual {v6, v0, v1}, Lcom/sun/jna/Memory;->getInt(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 1234
    :cond_3
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/16 p1, 0xb

    if-ne p0, p1, :cond_4

    .line 1235
    invoke-virtual {v6, v0, v1}, Lcom/sun/jna/Memory;->getLong(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1236
    :cond_4
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_5

    .line 1237
    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    invoke-virtual {v6, v0, v1, p0}, Lcom/sun/jna/Memory;->getByteArray(JI)[B

    move-result-object p0

    return-object p0

    .line 1238
    :cond_5
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_7

    .line 1239
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_6

    goto :goto_1

    :cond_6
    return-object p2

    .line 1240
    :cond_7
    :goto_1
    sget-object p0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object p1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    if-ne p0, p1, :cond_8

    .line 1241
    invoke-virtual {v6, v0, v1}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1243
    :cond_8
    invoke-virtual {v6, v0, v1}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1229
    :cond_9
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryGetValues(Lcom/sun/jna/platform/win32/WinReg$HKEY;)Ljava/util/TreeMap;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/platform/win32/WinReg$HKEY;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2049
    new-instance v8, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v8}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 2050
    new-instance v9, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v9}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 2051
    new-instance v10, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v10}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 2052
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-interface/range {v0 .. v12}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryInfoKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)I

    move-result v0

    if-nez v0, :cond_10

    .line 2058
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 2059
    invoke-virtual {v9}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v14, v1, [C

    .line 2063
    new-instance v1, Lcom/sun/jna/Memory;

    invoke-virtual {v10}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v3

    sget v4, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    const/4 v5, 0x2

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-long v3, v3

    invoke-direct {v1, v3, v4}, Lcom/sun/jna/Memory;-><init>(J)V

    const/4 v3, 0x0

    move v13, v3

    .line 2064
    :goto_0
    invoke-virtual {v8}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v4

    if-ge v13, v4, :cond_f

    .line 2065
    invoke-virtual {v1}, Lcom/sun/jna/Memory;->clear()V

    .line 2066
    new-instance v15, Lcom/sun/jna/ptr/IntByReference;

    .line 2067
    invoke-virtual {v9}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v4

    add-int/2addr v4, v2

    invoke-direct {v15, v4}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 2068
    new-instance v4, Lcom/sun/jna/ptr/IntByReference;

    .line 2069
    invoke-virtual {v10}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v6

    invoke-direct {v4, v6}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 2070
    new-instance v17, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct/range {v17 .. v17}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 2071
    sget-object v11, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/16 v16, 0x0

    move-object/from16 v12, p0

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    invoke-interface/range {v11 .. v19}, Lcom/sun/jna/platform/win32/Advapi32;->RegEnumValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;I[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result v1

    move-object/from16 v4, v18

    if-nez v1, :cond_e

    .line 2077
    invoke-static {v14}, Lcom/sun/jna/Native;->toString([C)Ljava/lang/String;

    move-result-object v1

    .line 2079
    invoke-virtual/range {v19 .. v19}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v6

    const/4 v7, 0x7

    const/4 v11, 0x3

    if-nez v6, :cond_4

    .line 2080
    invoke-virtual/range {v17 .. v17}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v6

    if-eqz v6, :cond_3

    if-eq v6, v2, :cond_2

    if-eq v6, v5, :cond_2

    if-eq v6, v11, :cond_1

    if-ne v6, v7, :cond_0

    .line 2091
    new-array v6, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2099
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported empty type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2100
    invoke-virtual/range {v17 .. v17}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2082
    :cond_1
    new-array v6, v3, [B

    invoke-virtual {v0, v1, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2087
    :cond_2
    new-array v6, v3, [C

    invoke-virtual {v0, v1, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    .line 2095
    invoke-virtual {v0, v1, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    move/from16 v16, v2

    move v11, v3

    move-object v6, v4

    move v7, v13

    goto/16 :goto_5

    .line 2105
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v6

    move-object/from16 v18, v4

    const-wide/16 v3, 0x0

    if-eq v6, v2, :cond_c

    if-eq v6, v5, :cond_c

    if-eq v6, v11, :cond_b

    const/4 v11, 0x4

    if-eq v6, v11, :cond_a

    if-eq v6, v7, :cond_6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_5

    move-object/from16 v6, v18

    .line 2107
    invoke-virtual {v6, v3, v4}, Lcom/sun/jna/Memory;->getLong(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v16, v2

    move v7, v13

    const/4 v11, 0x0

    goto/16 :goto_5

    .line 2156
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2157
    invoke-virtual/range {v17 .. v17}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object/from16 v6, v18

    .line 2129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v7, v13

    const/4 v4, 0x0

    :goto_2
    int-to-long v12, v4

    .line 2131
    invoke-virtual {v6}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v15

    cmp-long v15, v12, v15

    if-gez v15, :cond_9

    .line 2133
    sget-object v15, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    move/from16 v16, v2

    sget-object v2, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    if-ne v15, v2, :cond_7

    .line 2134
    invoke-virtual {v6, v12, v13}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object v2

    .line 2135
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    sget v13, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    mul-int/2addr v12, v13

    add-int/2addr v4, v12

    .line 2136
    sget v12, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    add-int/2addr v4, v12

    goto :goto_3

    .line 2138
    :cond_7
    invoke-virtual {v6, v12, v13}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object v2

    .line 2139
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v4, v12

    add-int/lit8 v4, v4, 0x1

    .line 2143
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_8

    goto :goto_4

    .line 2149
    :cond_8
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, v16

    goto :goto_2

    :cond_9
    move/from16 v16, v2

    :goto_4
    const/4 v11, 0x0

    .line 2152
    new-array v2, v11, [Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    move/from16 v16, v2

    move v7, v13

    move-object/from16 v6, v18

    const/4 v11, 0x0

    .line 2111
    invoke-virtual {v6, v3, v4}, Lcom/sun/jna/Memory;->getInt(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    move/from16 v16, v2

    move v7, v13

    move-object/from16 v6, v18

    const/4 v11, 0x0

    .line 2125
    invoke-virtual/range {v19 .. v19}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v2

    invoke-virtual {v6, v3, v4, v2}, Lcom/sun/jna/Memory;->getByteArray(JI)[B

    move-result-object v2

    .line 2124
    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_c
    move/from16 v16, v2

    move v7, v13

    move-object/from16 v6, v18

    const/4 v11, 0x0

    .line 2116
    sget-object v2, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object v12, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    if-ne v2, v12, :cond_d

    .line 2117
    invoke-virtual {v6, v3, v4}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 2119
    :cond_d
    invoke-virtual {v6, v3, v4}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    add-int/lit8 v13, v7, 0x1

    move-object v1, v6

    move v3, v11

    move/from16 v2, v16

    goto/16 :goto_0

    .line 2074
    :cond_e
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    :cond_f
    return-object v0

    .line 2056
    :cond_10
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1
.end method

.method public static registryGetValues(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)Ljava/util/TreeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/platform/win32/WinReg$HKEY;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2174
    invoke-static {p0, p1, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetValues(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)Ljava/util/TreeMap;

    move-result-object p0

    return-object p0
.end method

.method public static registryGetValues(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)Ljava/util/TreeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/platform/win32/WinReg$HKEY;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2191
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 2192
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x20019

    or-int v4, p2, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 2198
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetValues(Lcom/sun/jna/platform/win32/WinReg$HKEY;)Ljava/util/TreeMap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2200
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    .line 2202
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2200
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 2202
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 2204
    :cond_1
    throw p0

    .line 2195
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryKeyExists(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 569
    invoke-static {p0, p1, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryKeyExists(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static registryKeyExists(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)Z
    .locals 6

    .line 585
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 586
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x20019

    or-int v4, p2, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 595
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 590
    :cond_1
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static registryQueryInfoKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;I)Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;
    .locals 14

    .line 2219
    new-instance v0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;

    invoke-direct {v0, p0, p1}, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;-><init>(Lcom/sun/jna/platform/win32/WinReg$HKEY;I)V

    .line 2220
    sget-object v1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v3, v0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpClass:[C

    iget-object v4, v0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcClass:Lcom/sun/jna/ptr/IntByReference;

    iget-object v6, v0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcSubKeys:Lcom/sun/jna/ptr/IntByReference;

    iget-object v7, v0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxSubKeyLen:Lcom/sun/jna/ptr/IntByReference;

    iget-object v8, v0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxClassLen:Lcom/sun/jna/ptr/IntByReference;

    iget-object v9, v0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcValues:Lcom/sun/jna/ptr/IntByReference;

    iget-object v10, v0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxValueNameLen:Lcom/sun/jna/ptr/IntByReference;

    iget-object v11, v0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcMaxValueLen:Lcom/sun/jna/ptr/IntByReference;

    iget-object v12, v0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpcbSecurityDescriptor:Lcom/sun/jna/ptr/IntByReference;

    iget-object v13, v0, Lcom/sun/jna/platform/win32/Advapi32Util$InfoKey;->lpftLastWriteTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-interface/range {v1 .. v13}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryInfoKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)I

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    .line 2228
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryRegEnumKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;I)Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;
    .locals 10

    .line 2266
    new-instance v0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;

    invoke-direct {v0, p0, p1}, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;-><init>(Lcom/sun/jna/platform/win32/WinReg$HKEY;I)V

    .line 2267
    sget-object v1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget v3, v0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->dwIndex:I

    iget-object v4, v0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpName:[C

    iget-object v5, v0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpcName:Lcom/sun/jna/ptr/IntByReference;

    iget-object v7, v0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpClass:[C

    iget-object v8, v0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpcbClass:Lcom/sun/jna/ptr/IntByReference;

    iget-object v9, v0, Lcom/sun/jna/platform/win32/Advapi32Util$EnumKey;->lpftLastWriteTime:Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    const/4 v6, 0x0

    move-object v2, p0

    invoke-interface/range {v1 .. v9}, Lcom/sun/jna/platform/win32/Advapi32;->RegEnumKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;I[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;[CLcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$FILETIME;)I

    move-result p0

    if-nez p0, :cond_0

    return-object v0

    .line 2272
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registrySetBinaryValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    .line 1772
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetBinaryValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;[BI)V

    return-void
.end method

.method public static registrySetBinaryValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 6

    .line 1792
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1793
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x2001f

    or-int v4, p4, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1799
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetBinaryValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1801
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1803
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1801
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1803
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1805
    :cond_1
    throw p0

    .line 1796
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registrySetBinaryValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;[B)V
    .locals 7

    .line 1751
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v4, 0x3

    array-length v6, p2

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->RegSetValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;II[BI)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1754
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registrySetExpandableStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1582
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1583
    new-instance v0, Lcom/sun/jna/Memory;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget v4, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    mul-int/2addr v1, v4

    int-to-long v4, v1

    invoke-direct {v0, v4, v5}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 1584
    invoke-virtual {v0, v2, v3, p2}, Lcom/sun/jna/Memory;->setWideString(JLjava/lang/String;)V

    goto :goto_0

    .line 1586
    :cond_0
    new-instance v0, Lcom/sun/jna/Memory;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    invoke-direct {v0, v4, v5}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 1587
    invoke-virtual {v0, v2, v3, p2}, Lcom/sun/jna/Memory;->setString(JLjava/lang/String;)V

    :goto_0
    move-object v11, v0

    .line 1589
    sget-object v6, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    .line 1590
    invoke-virtual {v11}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v0

    long-to-int v12, v0

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v7, p0

    move-object v8, p1

    .line 1589
    invoke-interface/range {v6 .. v12}, Lcom/sun/jna/platform/win32/Advapi32;->RegSetValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/Pointer;I)I

    move-result p0

    if-nez p0, :cond_1

    return-void

    .line 1592
    :cond_1
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registrySetExpandableStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1610
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetExpandableStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static registrySetExpandableStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 1630
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1631
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x2001f

    or-int v4, p4, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1637
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetExpandableStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1639
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1641
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1639
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1641
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1643
    :cond_1
    throw p0

    .line 1634
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registrySetIntValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)V
    .locals 11

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v3, 0x4

    .line 1354
    new-array v9, v3, [B

    const/4 v3, 0x0

    aput-byte v0, v9, v3

    const/4 v0, 0x1

    aput-byte v1, v9, v0

    const/4 v0, 0x2

    aput-byte v2, v9, v0

    const/4 v0, 0x3

    aput-byte p2, v9, v0

    .line 1355
    sget-object v4, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v8, 0x4

    const/4 v10, 0x4

    const/4 v7, 0x0

    move-object v5, p0

    move-object v6, p1

    invoke-interface/range {v4 .. v10}, Lcom/sun/jna/platform/win32/Advapi32;->RegSetValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;II[BI)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1358
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registrySetIntValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1376
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetIntValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static registrySetIntValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6

    .line 1396
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1397
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x2001f

    or-int v4, p4, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1403
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetIntValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1407
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1405
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1407
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1409
    :cond_1
    throw p0

    .line 1400
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registrySetLongValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;J)V
    .locals 17

    const-wide/16 v0, 0xff

    and-long v2, p2, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x8

    shr-long v4, p2, v3

    and-long/2addr v4, v0

    long-to-int v4, v4

    int-to-byte v4, v4

    const/16 v5, 0x10

    shr-long v5, p2, v5

    and-long/2addr v5, v0

    long-to-int v5, v5

    int-to-byte v5, v5

    const/16 v6, 0x18

    shr-long v6, p2, v6

    and-long/2addr v6, v0

    long-to-int v6, v6

    int-to-byte v6, v6

    const/16 v7, 0x20

    shr-long v7, p2, v7

    and-long/2addr v7, v0

    long-to-int v7, v7

    int-to-byte v7, v7

    const/16 v8, 0x28

    shr-long v8, p2, v8

    and-long/2addr v8, v0

    long-to-int v8, v8

    int-to-byte v8, v8

    const/16 v9, 0x30

    shr-long v9, p2, v9

    and-long/2addr v9, v0

    long-to-int v9, v9

    int-to-byte v9, v9

    const/16 v10, 0x38

    shr-long v10, p2, v10

    and-long/2addr v0, v10

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 1431
    new-array v15, v3, [B

    const/4 v1, 0x0

    aput-byte v2, v15, v1

    const/4 v1, 0x1

    aput-byte v4, v15, v1

    const/4 v1, 0x2

    aput-byte v5, v15, v1

    const/4 v1, 0x3

    aput-byte v6, v15, v1

    const/4 v1, 0x4

    aput-byte v7, v15, v1

    const/4 v1, 0x5

    aput-byte v8, v15, v1

    const/4 v1, 0x6

    aput-byte v9, v15, v1

    const/4 v1, 0x7

    aput-byte v0, v15, v1

    .line 1432
    sget-object v10, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/16 v14, 0xb

    const/16 v16, 0x8

    const/4 v13, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-interface/range {v10 .. v16}, Lcom/sun/jna/platform/win32/Advapi32;->RegSetValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;II[BI)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1435
    :cond_0
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1
.end method

.method public static registrySetLongValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1453
    invoke-static/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetLongValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;JI)V

    return-void
.end method

.method public static registrySetLongValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 6

    .line 1473
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1474
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x2001f

    or-int v4, p5, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1480
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetLongValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1482
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1484
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1482
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1484
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1486
    :cond_1
    throw p0

    .line 1477
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registrySetStringArray(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1703
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetStringArray(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public static registrySetStringArray(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 6

    .line 1723
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1724
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x2001f

    or-int v4, p4, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1730
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetStringArray(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1732
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1734
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1732
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1734
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1736
    :cond_1
    throw p0

    .line 1727
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registrySetStringArray(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 12

    .line 1659
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1662
    :goto_0
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, v1, :cond_1

    aget-object v5, p2, v3

    .line 1663
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int v11, v4, v0

    .line 1669
    new-instance v10, Lcom/sun/jna/Memory;

    int-to-long v3, v11

    invoke-direct {v10, v3, v4}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 1670
    invoke-virtual {v10}, Lcom/sun/jna/Memory;->clear()V

    .line 1671
    array-length v1, p2

    move v3, v2

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v4, p2, v2

    .line 1672
    sget-object v5, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object v6, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    if-ne v5, v6, :cond_2

    int-to-long v5, v3

    .line 1673
    invoke-virtual {v10, v5, v6, v4}, Lcom/sun/jna/Memory;->setWideString(JLjava/lang/String;)V

    goto :goto_3

    :cond_2
    int-to-long v5, v3

    .line 1675
    invoke-virtual {v10, v5, v6, v4}, Lcom/sun/jna/Memory;->setString(JLjava/lang/String;)V

    .line 1677
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1681
    :cond_3
    sget-object v5, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 v8, 0x0

    const/4 v9, 0x7

    move-object v6, p0

    move-object v7, p1

    invoke-interface/range {v5 .. v11}, Lcom/sun/jna/platform/win32/Advapi32;->RegSetValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/Pointer;I)I

    move-result p0

    if-nez p0, :cond_4

    return-void

    .line 1685
    :cond_4
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registrySetStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    if-nez p2, :cond_0

    .line 1502
    const-string p2, ""

    .line 1505
    :cond_0
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->UNICODE:Lcom/sun/jna/TypeMapper;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1506
    new-instance v0, Lcom/sun/jna/Memory;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget v4, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    mul-int/2addr v1, v4

    int-to-long v4, v1

    invoke-direct {v0, v4, v5}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 1507
    invoke-virtual {v0, v2, v3, p2}, Lcom/sun/jna/Memory;->setWideString(JLjava/lang/String;)V

    goto :goto_0

    .line 1509
    :cond_1
    new-instance v0, Lcom/sun/jna/Memory;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v4, v1

    invoke-direct {v0, v4, v5}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 1510
    invoke-virtual {v0, v2, v3, p2}, Lcom/sun/jna/Memory;->setString(JLjava/lang/String;)V

    :goto_0
    move-object v11, v0

    .line 1512
    sget-object v6, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    .line 1513
    invoke-virtual {v11}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v0

    long-to-int v12, v0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v7, p0

    move-object v8, p1

    .line 1512
    invoke-interface/range {v6 .. v12}, Lcom/sun/jna/platform/win32/Advapi32;->RegSetValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/Pointer;I)I

    move-result p0

    if-nez p0, :cond_2

    return-void

    .line 1515
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registrySetStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1533
    invoke-static {p0, p1, p2, p3, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static registrySetStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 1553
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 1554
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x2001f

    or-int v4, p4, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    if-nez p0, :cond_2

    .line 1560
    :try_start_0
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    invoke-static {p0, p2, p3}, Lcom/sun/jna/platform/win32/Advapi32Util;->registrySetStringValue(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1562
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 1564
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 1562
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 1564
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 1566
    :cond_1
    throw p0

    .line 1557
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public static registryValueExists(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 611
    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryValueExists(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static registryValueExists(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13

    .line 630
    new-instance v5, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;-><init>()V

    .line 631
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const v1, 0x20019

    or-int v4, p3, v1

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->RegOpenKeyEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;IILcom/sun/jna/platform/win32/WinReg$HKEYByReference;)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x2

    if-eqz p0, :cond_1

    if-ne p0, v0, :cond_0

    return p1

    .line 639
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 642
    :cond_1
    :try_start_0
    new-instance v12, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v12}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 643
    new-instance v10, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v10}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 644
    sget-object v6, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object v7

    const/4 v11, 0x0

    move-object p0, v11

    check-cast p0, Lcom/sun/jna/Pointer;

    const/4 v9, 0x0

    move-object v8, p2

    invoke-interface/range {v6 .. v12}, Lcom/sun/jna/platform/win32/Advapi32;->RegQueryValueEx(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/ptr/IntByReference;)I

    move-result p0

    if-eqz p0, :cond_6

    if-eq p0, v0, :cond_3

    const/16 p1, 0x7a

    if-eq p0, p1, :cond_6

    const/16 p1, 0xea

    if-ne p0, p1, :cond_2

    goto :goto_1

    .line 654
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    :cond_3
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    sget-object p2, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eq p0, p2, :cond_5

    .line 658
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    .line 660
    :cond_4
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :cond_5
    :goto_0
    return p1

    .line 657
    :cond_6
    :goto_1
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p0

    sget-object p1, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eq p0, p1, :cond_8

    .line 658
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    .line 660
    :cond_7
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :cond_8
    :goto_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 657
    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p1

    sget-object p2, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eq p1, p2, :cond_9

    .line 658
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinReg$HKEYByReference;->getValue()Lcom/sun/jna/platform/win32/WinReg$HKEY;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->RegCloseKey(Lcom/sun/jna/platform/win32/WinReg$HKEY;)I

    move-result p1

    if-eqz p1, :cond_9

    .line 660
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0

    .line 663
    :cond_9
    throw p0
.end method

.method public static setFileSecurityDescriptor(Ljava/io/File;Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;ZZZZZZ)V
    .locals 11

    .line 2984
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    const-string v1, "\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lcom/sun/jna/platform/win32/Advapi32Util;->setSecurityDescriptorForObject(Ljava/lang/String;ILcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;ZZZZZZ)V

    return-void
.end method

.method public static setSecurityDescriptorForObject(Ljava/lang/String;ILcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;ZZZZZZ)V
    .locals 7

    .line 2792
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->getOwner()Lcom/sun/jna/platform/win32/WinNT$PSID;

    move-result-object v0

    .line 2793
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->getGroup()Lcom/sun/jna/platform/win32/WinNT$PSID;

    move-result-object v1

    .line 2794
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->getDiscretionaryACL()Lcom/sun/jna/platform/win32/WinNT$ACL;

    move-result-object v2

    .line 2795
    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->getSystemACL()Lcom/sun/jna/platform/win32/WinNT$ACL;

    move-result-object v3

    if-eqz p3, :cond_2

    if-eqz v0, :cond_1

    .line 2802
    sget-object v4, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v4, v0}, Lcom/sun/jna/platform/win32/Advapi32;->IsValidSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 2803
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Owner PSID is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2801
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SECURITY_DESCRIPTOR_RELATIVE does not contain owner"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz p4, :cond_5

    if-eqz v1, :cond_4

    .line 2810
    sget-object v5, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v5, v1}, Lcom/sun/jna/platform/win32/Advapi32;->IsValidSid(Lcom/sun/jna/platform/win32/WinNT$PSID;)Z

    move-result v5

    if-eqz v5, :cond_3

    or-int/lit8 v4, v4, 0x2

    goto :goto_1

    .line 2811
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Group PSID is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2809
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SECURITY_DESCRIPTOR_RELATIVE does not contain group"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    if-eqz p5, :cond_8

    if-eqz v2, :cond_7

    .line 2818
    sget-object v5, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinNT$ACL;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sun/jna/platform/win32/Advapi32;->IsValidAcl(Lcom/sun/jna/Pointer;)Z

    move-result v5

    if-eqz v5, :cond_6

    or-int/lit8 v4, v4, 0x4

    goto :goto_2

    .line 2819
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "DACL is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2817
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SECURITY_DESCRIPTOR_RELATIVE does not contain DACL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_2
    if-eqz p6, :cond_b

    if-eqz v3, :cond_a

    .line 2826
    sget-object v5, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinNT$ACL;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sun/jna/platform/win32/Advapi32;->IsValidAcl(Lcom/sun/jna/Pointer;)Z

    move-result v5

    if-eqz v5, :cond_9

    or-int/lit8 v4, v4, 0x8

    goto :goto_3

    .line 2827
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SACL is invalid"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2825
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SECURITY_DESCRIPTOR_RELATIVE does not contain SACL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :goto_3
    if-eqz p7, :cond_d

    .line 2837
    iget-short p7, p2, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Control:S

    and-int/lit16 p7, p7, 0x1000

    if-eqz p7, :cond_c

    const/high16 p7, -0x80000000

    :goto_4
    or-int/2addr v4, p7

    goto :goto_5

    .line 2840
    :cond_c
    iget-short p7, p2, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Control:S

    and-int/lit16 p7, p7, 0x1000

    if-nez p7, :cond_d

    const/high16 p7, 0x20000000

    goto :goto_4

    :cond_d
    :goto_5
    if-eqz p8, :cond_f

    .line 2846
    iget-short p7, p2, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Control:S

    and-int/lit16 p7, p7, 0x2000

    if-eqz p7, :cond_e

    const/high16 p2, 0x40000000    # 2.0f

    :goto_6
    or-int/2addr v4, p2

    goto :goto_7

    .line 2848
    :cond_e
    iget-short p2, p2, Lcom/sun/jna/platform/win32/WinNT$SECURITY_DESCRIPTOR_RELATIVE;->Control:S

    and-int/lit16 p2, p2, 0x2000

    if-nez p2, :cond_f

    const/high16 p2, 0x10000000

    goto :goto_6

    :cond_f
    :goto_7
    move p2, p1

    move-object p1, p0

    .line 2853
    sget-object p0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const/4 p7, 0x0

    if-eqz p3, :cond_10

    .line 2857
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p3

    goto :goto_8

    :cond_10
    move-object p3, p7

    :goto_8
    if-eqz p4, :cond_11

    .line 2858
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$PSID;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p4

    goto :goto_9

    :cond_11
    move-object p4, p7

    :goto_9
    if-eqz p5, :cond_12

    .line 2859
    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinNT$ACL;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p5

    goto :goto_a

    :cond_12
    move-object p5, p7

    :goto_a
    if-eqz p6, :cond_13

    .line 2860
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinNT$ACL;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p7

    :cond_13
    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move p3, v4

    .line 2853
    invoke-interface/range {p0 .. p7}, Lcom/sun/jna/platform/win32/Advapi32;->SetNamedSecurityInfo(Ljava/lang/String;IILcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;Lcom/sun/jna/Pointer;)I

    move-result p0

    if-nez p0, :cond_14

    return-void

    .line 2863
    :cond_14
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method
