.class public Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;
.super Ljava/lang/Object;
.source "Advapi32Util.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Advapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Privilege"
.end annotation


# instance fields
.field private currentlyImpersonating:Z

.field private final pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

.field private privilegesEnabled:Z


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/sun/jna/platform/win32/Win32Exception;
        }
    .end annotation

    .line 3166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3149
    iput-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->currentlyImpersonating:Z

    .line 3154
    iput-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->privilegesEnabled:Z

    .line 3167
    array-length v1, p1

    new-array v1, v1, [Lcom/sun/jna/platform/win32/WinNT$LUID;

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    .line 3169
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 3170
    iget-object v4, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    new-instance v5, Lcom/sun/jna/platform/win32/WinNT$LUID;

    invoke-direct {v5}, Lcom/sun/jna/platform/win32/WinNT$LUID;-><init>()V

    aput-object v5, v4, v2

    .line 3171
    sget-object v4, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v5, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-interface {v4, v6, v3, v5}, Lcom/sun/jna/platform/win32/Advapi32;->LookupPrivilegeValue(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$LUID;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find privilege \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" - "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private getThreadToken()Lcom/sun/jna/platform/win32/WinNT$HANDLE;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Win32Exception;
        }
    .end annotation

    .line 3285
    new-instance v6, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {v6}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    .line 3286
    new-instance v7, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {v7}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    const/4 v8, 0x0

    .line 3290
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetCurrentThread()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v6}, Lcom/sun/jna/platform/win32/Advapi32;->OpenThreadToken(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IZLcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3295
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    const/16 v1, 0x3f0

    if-ne v1, v0, :cond_3

    .line 3301
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetCurrentProcess()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2, v7}, Lcom/sun/jna/platform/win32/Advapi32;->OpenProcessToken(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3306
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/16 v2, 0x24

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->DuplicateTokenEx(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;IILcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3316
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    invoke-interface {v0, v8, v1}, Lcom/sun/jna/platform/win32/Advapi32;->SetThreadToken(Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3319
    iput-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->currentlyImpersonating:Z

    goto :goto_0

    .line 3317
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 3312
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 3302
    :cond_2
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 3297
    :cond_3
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3334
    :cond_4
    :goto_0
    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    sget-object v1, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eq v0, v1, :cond_5

    .line 3335
    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3336
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 3337
    invoke-virtual {v7, v8}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->setValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    .line 3341
    :cond_5
    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 3324
    :try_start_1
    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    sget-object v2, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eq v1, v2, :cond_6

    .line 3325
    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3326
    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-virtual {v6}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 3327
    invoke-virtual {v6, v8}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->setValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    .line 3329
    :cond_6
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3334
    :goto_1
    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    sget-object v2, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eq v1, v2, :cond_7

    .line 3335
    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 3336
    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 3337
    invoke-virtual {v7, v8}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->setValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    .line 3339
    :cond_7
    throw v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 3184
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->disable()V

    return-void
.end method

.method public disable()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Win32Exception;
        }
    .end annotation

    .line 3248
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    const/4 v2, 0x0

    .line 3251
    :try_start_0
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->getThreadToken()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->setValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    .line 3252
    iget-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->currentlyImpersonating:Z

    if-eqz v0, :cond_0

    .line 3253
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v0, v2, v2}, Lcom/sun/jna/platform/win32/Advapi32;->SetThreadToken(Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    goto :goto_1

    .line 3257
    :cond_0
    iget-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->privilegesEnabled:Z

    if-eqz v0, :cond_2

    .line 3258
    new-instance v6, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    array-length v0, v0

    invoke-direct {v6, v0}, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;-><init>(I)V

    const/4 v0, 0x0

    move v3, v0

    .line 3259
    :goto_0
    iget-object v4, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 3260
    iget-object v4, v6, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;->Privileges:[Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    new-instance v5, Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    iget-object v7, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    aget-object v7, v7, v3

    new-instance v8, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v9, 0x0

    invoke-direct {v8, v9, v10}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v5, v7, v8}, Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;-><init>(Lcom/sun/jna/platform/win32/WinNT$LUID;Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3262
    :cond_1
    sget-object v3, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/sun/jna/platform/win32/Advapi32;->AdjustTokenPrivileges(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ZLcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;ILcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;Lcom/sun/jna/ptr/IntByReference;)Z

    .line 3263
    iput-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->privilegesEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3269
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    sget-object v3, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eq v0, v3, :cond_3

    .line 3270
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3271
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 3272
    invoke-virtual {v1, v2}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->setValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 3269
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v3

    sget-object v4, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eq v3, v4, :cond_4

    .line 3270
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 3271
    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 3272
    invoke-virtual {v1, v2}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->setValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    .line 3274
    :cond_4
    throw v0
.end method

.method public enable()Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/jna/platform/win32/Win32Exception;
        }
    .end annotation

    .line 3196
    iget-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->privilegesEnabled:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3200
    :cond_0
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3203
    :try_start_0
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->getThreadToken()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->setValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    .line 3204
    new-instance v7, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    array-length v0, v0

    invoke-direct {v7, v0}, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;-><init>(I)V

    move v0, v2

    .line 3205
    :goto_0
    iget-object v4, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 3206
    iget-object v4, v7, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;->Privileges:[Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    new-instance v5, Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    iget-object v6, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    aget-object v6, v6, v0

    new-instance v8, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v9, 0x2

    invoke-direct {v8, v9, v10}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v5, v6, v8}, Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;-><init>(Lcom/sun/jna/platform/win32/WinNT$LUID;Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3208
    :cond_1
    sget-object v4, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/sun/jna/platform/win32/Advapi32;->AdjustTokenPrivileges(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ZLcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;ILcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 3211
    iput-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->privilegesEnabled:Z
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3233
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    sget-object v2, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eq v0, v2, :cond_2

    .line 3234
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3235
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 3236
    invoke-virtual {v1, v3}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->setValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    :cond_2
    :goto_1
    return-object p0

    .line 3209
    :cond_3
    :try_start_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v4, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v4}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v4

    invoke-direct {v0, v4}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_1
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 3215
    :try_start_2
    iget-boolean v4, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->currentlyImpersonating:Z

    if-nez v4, :cond_5

    .line 3220
    iget-boolean v4, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->privilegesEnabled:Z

    if-eqz v4, :cond_6

    .line 3221
    new-instance v8, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;

    iget-object v4, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    array-length v4, v4

    invoke-direct {v8, v4}, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;-><init>(I)V

    move v4, v2

    .line 3222
    :goto_2
    iget-object v5, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 3223
    iget-object v5, v8, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;->Privileges:[Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    new-instance v6, Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    iget-object v7, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->pLuids:[Lcom/sun/jna/platform/win32/WinNT$LUID;

    aget-object v7, v7, v4

    new-instance v9, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v6, v7, v9}, Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;-><init>(Lcom/sun/jna/platform/win32/WinNT$LUID;Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3225
    :cond_4
    sget-object v5, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/sun/jna/platform/win32/Advapi32;->AdjustTokenPrivileges(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ZLcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;ILcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;Lcom/sun/jna/ptr/IntByReference;)Z

    .line 3226
    iput-boolean v2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->privilegesEnabled:Z

    goto :goto_3

    .line 3216
    :cond_5
    sget-object v4, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {v4, v3, v3}, Lcom/sun/jna/platform/win32/Advapi32;->SetThreadToken(Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 3217
    iput-boolean v2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$Privilege;->currentlyImpersonating:Z

    .line 3229
    :cond_6
    :goto_3
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3233
    :goto_4
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    sget-object v4, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eq v2, v4, :cond_7

    .line 3234
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3235
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 3236
    invoke-virtual {v1, v3}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->setValue(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)V

    .line 3238
    :cond_7
    throw v0
.end method
