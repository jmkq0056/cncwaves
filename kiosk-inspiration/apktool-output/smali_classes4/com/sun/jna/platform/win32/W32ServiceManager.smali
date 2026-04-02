.class public Lcom/sun/jna/platform/win32/W32ServiceManager;
.super Ljava/lang/Object;
.source "W32ServiceManager.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field _databaseName:Ljava/lang/String;

.field _handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

.field _machineName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    .line 41
    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_machineName:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_databaseName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    .line 41
    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_machineName:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_databaseName:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/W32ServiceManager;->open(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    .line 83
    iput-object p1, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_machineName:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_databaseName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    .line 105
    iput-object p1, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_machineName:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_databaseName:Ljava/lang/String;

    .line 107
    invoke-virtual {p0, p3}, Lcom/sun/jna/platform/win32/W32ServiceManager;->open(I)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    if-eqz v0, :cond_1

    .line 132
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Advapi32;->CloseServiceHandle(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    return-void

    .line 133
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

.method public enumServicesStatusExProcess(IILjava/lang/String;)[Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS_PROCESS;
    .locals 12

    .line 221
    new-instance v7, Lcom/sun/jna/ptr/IntByReference;

    const/4 v11, 0x0

    invoke-direct {v7, v11}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 222
    new-instance v8, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v8, v11}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 223
    new-instance v9, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v9, v11}, Lcom/sun/jna/ptr/IntByReference;-><init>(I)V

    .line 224
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    sget-object v5, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    const/4 v6, 0x0

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move-object v10, p3

    invoke-interface/range {v0 .. v10}, Lcom/sun/jna/platform/win32/Advapi32;->EnumServicesStatusEx(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;IIILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Ljava/lang/String;)Z

    .line 225
    sget-object p1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p1

    const/16 p2, 0xea

    if-ne p1, p2, :cond_2

    .line 229
    new-instance v5, Lcom/sun/jna/Memory;

    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    int-to-long p1, p1

    invoke-direct {v5, p1, p2}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 230
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    invoke-virtual {v5}, Lcom/sun/jna/Memory;->size()J

    move-result-wide p1

    long-to-int v6, p1

    const/4 v2, 0x0

    invoke-interface/range {v0 .. v10}, Lcom/sun/jna/platform/win32/Advapi32;->EnumServicesStatusEx(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;IIILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 234
    invoke-virtual {v8}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p1

    if-nez p1, :cond_0

    .line 235
    new-array p1, v11, [Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS_PROCESS;

    return-object p1

    .line 237
    :cond_0
    const-class p1, Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS_PROCESS;

    invoke-static {p1, v5}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS_PROCESS;

    .line 238
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS_PROCESS;->read()V

    .line 239
    invoke-virtual {v8}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS_PROCESS;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p1

    check-cast p1, [Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS_PROCESS;

    check-cast p1, [Lcom/sun/jna/platform/win32/Winsvc$ENUM_SERVICE_STATUS_PROCESS;

    return-object p1

    .line 232
    :cond_1
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1

    .line 227
    :cond_2
    new-instance p2, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {p2, p1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p2
.end method

.method public getHandle()Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    return-object v0
.end method

.method public open(I)V
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/W32ServiceManager;->close()V

    .line 118
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_machineName:Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_databaseName:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/sun/jna/platform/win32/Advapi32;->OpenSCManager(Ljava/lang/String;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    if-eqz p1, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method public openService(Ljava/lang/String;I)Lcom/sun/jna/platform/win32/W32Service;
    .locals 2

    .line 148
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32ServiceManager;->_handle:Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    invoke-interface {v0, v1, p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->OpenService(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 155
    new-instance p2, Lcom/sun/jna/platform/win32/W32Service;

    invoke-direct {p2, p1}, Lcom/sun/jna/platform/win32/W32Service;-><init>(Lcom/sun/jna/platform/win32/Winsvc$SC_HANDLE;)V

    return-object p2

    .line 152
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method
