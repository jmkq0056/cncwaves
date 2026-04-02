.class public Lcom/sun/jna/platform/win32/W32Service;
.super Ljava/lang/Object;
.source "W32Service.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field _handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;


# direct methods
.method public constructor <init>(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    return-void
.end method

.method private addShutdownPrivilegeToProcess()V
    .locals 12

    .line 83
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    .line 84
    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$LUID;

    invoke-direct {v1}, Lcom/sun/jna/platform/win32/WinNT$LUID;-><init>()V

    .line 85
    sget-object v2, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3}, Lcom/sun/jna/platform/win32/Kernel32;->GetCurrentProcess()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v3

    const/16 v4, 0x20

    invoke-interface {v2, v3, v4, v0}, Lcom/sun/jna/platform/win32/Advapi32;->OpenProcessToken(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)Z

    .line 87
    sget-object v2, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    const-string v3, ""

    const-string v4, "SeShutdownPrivilege"

    invoke-interface {v2, v3, v4, v1}, Lcom/sun/jna/platform/win32/Advapi32;->LookupPrivilegeValue(Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$LUID;)Z

    .line 88
    new-instance v8, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;-><init>(I)V

    .line 89
    iget-object v2, v8, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;->Privileges:[Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    new-instance v3, Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;

    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v5, 0x2

    invoke-direct {v4, v5, v6}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v3, v1, v4}, Lcom/sun/jna/platform/win32/WinNT$LUID_AND_ATTRIBUTES;-><init>(Lcom/sun/jna/platform/win32/WinNT$LUID;Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    const/4 v1, 0x0

    aput-object v3, v2, v1

    .line 90
    sget-object v5, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v6

    invoke-virtual {v8}, Lcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;->size()I

    move-result v9

    new-instance v11, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v11}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/sun/jna/platform/win32/Advapi32;->AdjustTokenPrivileges(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ZLcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;ILcom/sun/jna/platform/win32/WinNT$TOKEN_PRIVILEGES;Lcom/sun/jna/ptr/IntByReference;)Z

    return-void
.end method

.method private isPendingState(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method private queryServiceConfig2(I)Lcom/sun/jna/Pointer;
    .locals 12

    .line 128
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 129
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    sget-object v3, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    const/4 v4, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->QueryServiceConfig2(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z

    .line 131
    new-instance v9, Lcom/sun/jna/Memory;

    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {v9, v0, v1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 133
    sget-object v6, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v7, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v10

    new-instance v11, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v11}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    move v8, v2

    invoke-interface/range {v6 .. v11}, Lcom/sun/jna/platform/win32/Advapi32;->QueryServiceConfig2(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v9

    .line 135
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Advapi32;->CloseServiceHandle(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    return-void

    .line 76
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    :cond_1
    return-void
.end method

.method public continueService()V
    .locals 5

    .line 264
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->waitForNonPendingState()V

    .line 266
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->queryStatus()Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;

    move-result-object v0

    iget v0, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    new-instance v3, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;

    invoke-direct {v3}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;-><init>()V

    const/4 v4, 0x3

    invoke-interface {v0, v2, v4, v3}, Lcom/sun/jna/platform/win32/Advapi32;->ControlService(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->waitForNonPendingState()V

    .line 274
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->queryStatus()Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;

    move-result-object v0

    iget v0, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwCurrentState:I

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to continue the service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_2
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public enumDependentServices(I)[Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS;
    .locals 10

    .line 394
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 395
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6, v7}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 396
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    sget-object v3, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    const/4 v4, 0x0

    move v2, p1

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->EnumDependentServices(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    .line 397
    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    const/16 v0, 0xea

    if-ne p1, v0, :cond_2

    .line 401
    new-instance v3, Lcom/sun/jna/Memory;

    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {v3, v0, v1}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 402
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    invoke-virtual {v3}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v8

    long-to-int v4, v8

    invoke-interface/range {v0 .. v6}, Lcom/sun/jna/platform/win32/Advapi32;->EnumDependentServices(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 406
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 407
    new-array p1, v7, [Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS;

    return-object p1

    .line 409
    :cond_0
    const-class p1, Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS;

    invoke-static {p1, v3}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS;

    .line 410
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS;->read()V

    .line 411
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p1

    check-cast p1, [Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS;

    check-cast p1, [Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS;

    return-object p1

    .line 404
    :cond_1
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 399
    :cond_2
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public getFailureActions()Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS;
    .locals 2

    const/4 v0, 0x2

    .line 147
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/W32Service;->queryServiceConfig2(I)Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v1
.end method

.method public getFailureActionsFlag()Z
    .locals 2

    const/4 v0, 0x4

    .line 173
    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/W32Service;->queryServiceConfig2(I)Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 174
    new-instance v1, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS_FLAG;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS_FLAG;-><init>(Lcom/sun/jna/Pointer;)V

    .line 175
    iget v0, v1, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS_FLAG;->fFailureActionsOnNonCrashFailures:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHandle()Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    return-object v0
.end method

.method public pauseService()V
    .locals 5

    .line 283
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->waitForNonPendingState()V

    .line 285
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->queryStatus()Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;

    move-result-object v0

    iget v0, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwCurrentState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    new-instance v3, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;

    invoke-direct {v3}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;-><init>()V

    const/4 v4, 0x2

    invoke-interface {v0, v2, v4, v3}, Lcom/sun/jna/platform/win32/Advapi32;->ControlService(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->waitForNonPendingState()V

    .line 293
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->queryStatus()Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;

    move-result-object v0

    iget v0, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwCurrentState:I

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    .line 294
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to pause the service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_2
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public queryStatus()Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;
    .locals 6

    .line 185
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 187
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->QueryServiceStatusEx(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;ILcom/sun/jna/ptr/IntByReference;)Z

    .line 190
    new-instance v3, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;

    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-direct {v3, v0}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;-><init>(I)V

    .line 191
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    .line 192
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->size()I

    move-result v4

    .line 191
    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Advapi32;->QueryServiceStatusEx(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;ILcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v3

    .line 193
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method sanitizeWaitTime(I)I
    .locals 1

    .line 303
    div-int/lit8 p1, p1, 0xa

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0x2710

    if-le p1, v0, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method public setFailureActions(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 101
    new-instance v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS$ByReference;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS$ByReference;-><init>()V

    .line 102
    iput p2, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS$ByReference;->dwResetPeriod:I

    .line 103
    iput-object p3, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS$ByReference;->lpRebootMsg:Ljava/lang/String;

    .line 104
    iput-object p4, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS$ByReference;->lpCommand:Ljava/lang/String;

    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    iput p2, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS$ByReference;->cActions:I

    .line 107
    new-instance p2, Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION$ByReference;

    invoke-direct {p2}, Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION$ByReference;-><init>()V

    iput-object p2, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS$ByReference;->lpsaActions:Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION$ByReference;

    .line 108
    iget-object p2, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS$ByReference;->lpsaActions:Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION$ByReference;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION$ByReference;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p2

    check-cast p2, [Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION;

    check-cast p2, [Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION;

    .line 111
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION;

    const/4 v3, 0x1

    if-nez p3, :cond_0

    .line 112
    iget v4, v1, Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION;->type:I

    if-ne v4, v2, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/W32Service;->addShutdownPrivilegeToProcess()V

    move p3, v3

    .line 116
    :cond_0
    aget-object v2, p2, p4

    iget v4, v1, Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION;->type:I

    iput v4, v2, Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION;->type:I

    .line 117
    aget-object v2, p2, p4

    iget v1, v1, Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION;->delay:I

    iput v1, v2, Lcom/sun/jna/platform/win32/Winsvc$SC_ACTION;->delay:I

    add-int/2addr p4, v3

    goto :goto_0

    .line 121
    :cond_1
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object p2, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    invoke-interface {p1, p2, v2, v0}, Lcom/sun/jna/platform/win32/Advapi32;->ChangeServiceConfig2(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 123
    :cond_2
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public setFailureActionsFlag(Z)V
    .locals 3

    .line 158
    new-instance v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS_FLAG;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS_FLAG;-><init>()V

    .line 159
    iput p1, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_FAILURE_ACTIONS_FLAG;->fFailureActionsOnNonCrashFailures:I

    .line 161
    sget-object p1, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    const/4 v2, 0x4

    invoke-interface {p1, v1, v2, v0}, Lcom/sun/jna/platform/win32/Advapi32;->ChangeServiceConfig2(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/platform/win32/Winsvc$ChangeServiceConfig2Info;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 163
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public startService()V
    .locals 5

    .line 200
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->waitForNonPendingState()V

    .line 202
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->queryStatus()Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;

    move-result-object v0

    iget v0, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/sun/jna/platform/win32/Advapi32;->StartService(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->waitForNonPendingState()V

    .line 209
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->queryStatus()Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;

    move-result-object v0

    iget v0, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwCurrentState:I

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to start the service"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_2
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public stopService()V
    .locals 2

    const-wide/16 v0, 0x7530

    .line 218
    invoke-virtual {p0, v0, v1}, Lcom/sun/jna/platform/win32/W32Service;->stopService(J)V

    return-void
.end method

.method public stopService(J)V
    .locals 8

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 228
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->waitForNonPendingState()V

    .line 230
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->queryStatus()Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;

    move-result-object v2

    iget v2, v2, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwCurrentState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 233
    :cond_0
    new-instance v2, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;

    invoke-direct {v2}, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;-><init>()V

    .line 234
    sget-object v4, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v5, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    invoke-interface {v4, v5, v3, v2}, Lcom/sun/jna/platform/win32/Advapi32;->ControlService(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;ILcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    :goto_0
    iget v4, v2, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;->dwCurrentState:I

    if-eq v4, v3, :cond_3

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    sub-long v4, p1, v4

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_2

    .line 247
    iget v6, v2, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;->dwWaitHint:I

    invoke-virtual {p0, v6}, Lcom/sun/jna/platform/win32/W32Service;->sanitizeWaitTime(I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 250
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    sget-object v4, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v5, p0, Lcom/sun/jna/platform/win32/W32Service;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    invoke-interface {v4, v5, v2}, Lcom/sun/jna/platform/win32/Advapi32;->QueryServiceStatus(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 255
    :cond_1
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    :catch_0
    move-exception p1

    .line 252
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 244
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Service stop exceeded timeout time of %d ms"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    return-void

    .line 235
    :cond_4
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public waitForNonPendingState()V
    .locals 5

    .line 318
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->queryStatus()Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;

    move-result-object v0

    .line 320
    iget v1, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwCheckPoint:I

    .line 321
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetTickCount()I

    move-result v2

    .line 323
    :goto_0
    iget v3, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwCurrentState:I

    invoke-direct {p0, v3}, Lcom/sun/jna/platform/win32/W32Service;->isPendingState(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    iget v3, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwCheckPoint:I

    if-eq v3, v1, :cond_0

    .line 327
    iget v1, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwCheckPoint:I

    .line 328
    sget-object v2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v2}, Lcom/sun/jna/platform/win32/Kernel32;->GetTickCount()I

    move-result v2

    .line 332
    :cond_0
    sget-object v3, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v3}, Lcom/sun/jna/platform/win32/Kernel32;->GetTickCount()I

    move-result v3

    sub-int/2addr v3, v2

    iget v4, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwWaitHint:I

    if-gt v3, v4, :cond_1

    .line 336
    iget v0, v0, Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;->dwWaitHint:I

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/W32Service;->sanitizeWaitTime(I)I

    move-result v0

    int-to-long v3, v0

    .line 339
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32Service;->queryStatus()Lcom/sun/jna/platform/win32/Winsvc$SERVICE_STATUS_PROCESS;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 341
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 333
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Timeout waiting for service to change to a non-pending state."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method
