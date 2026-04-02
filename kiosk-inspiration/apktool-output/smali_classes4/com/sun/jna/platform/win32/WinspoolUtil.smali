.class public abstract Lcom/sun/jna/platform/win32/WinspoolUtil;
.super Ljava/lang/Object;
.source "WinspoolUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllPrinterInfo2()[Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;
    .locals 1

    const/4 v0, 0x6

    .line 75
    invoke-static {v0}, Lcom/sun/jna/platform/win32/WinspoolUtil;->getPrinterInfo2(I)[Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;

    move-result-object v0

    return-object v0
.end method

.method public static getJobInfo1(Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;)[Lcom/sun/jna/platform/win32/Winspool$JOB_INFO_1;
    .locals 10

    .line 160
    new-instance v7, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v7}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 161
    new-instance v8, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v8}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 162
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v4, 0x1

    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/Winspool;->EnumJobs(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IIILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    .line 164
    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    .line 165
    new-array p0, p0, [Lcom/sun/jna/platform/win32/Winspool$JOB_INFO_1;

    return-object p0

    .line 168
    :cond_0
    new-instance v9, Lcom/sun/jna/platform/win32/Winspool$JOB_INFO_1;

    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-direct {v9, v0}, Lcom/sun/jna/platform/win32/Winspool$JOB_INFO_1;-><init>(I)V

    .line 169
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    .line 170
    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/Winspool$JOB_INFO_1;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v5

    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v6

    const/4 v2, 0x0

    const/16 v3, 0xff

    const/4 v4, 0x1

    .line 169
    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/Winspool;->EnumJobs(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IIILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 175
    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/Winspool$JOB_INFO_1;->read()V

    .line 177
    invoke-virtual {v8}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    invoke-virtual {v9, p0}, Lcom/sun/jna/platform/win32/Winspool$JOB_INFO_1;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/Winspool$JOB_INFO_1;

    check-cast p0, [Lcom/sun/jna/platform/win32/Winspool$JOB_INFO_1;

    return-object p0

    .line 172
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static getPrinterInfo1()[Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_1;
    .locals 9

    .line 41
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 42
    new-instance v7, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v7}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 43
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Winspool;->EnumPrinters(ILjava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    .line 45
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_1;

    return-object v0

    .line 49
    :cond_0
    new-instance v8, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_1;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-direct {v8, v0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_1;-><init>(I)V

    .line 50
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    .line 51
    invoke-virtual {v8}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_1;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v5

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 50
    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Winspool;->EnumPrinters(ILjava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-virtual {v8}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_1;->read()V

    .line 58
    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_1;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_1;

    check-cast v0, [Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_1;

    return-object v0

    .line 53
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method

.method public static getPrinterInfo2(Ljava/lang/String;)Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;
    .locals 15

    .line 97
    new-instance v5, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v5}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 98
    new-instance v11, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v11}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 99
    new-instance v12, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;

    invoke-direct {v12}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;-><init>()V

    .line 101
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    const/4 v13, 0x0

    invoke-interface {v0, p0, v12, v13}, Lcom/sun/jna/platform/win32/Winspool;->OpenPrinter(Ljava/lang/String;Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;Lcom/sun/jna/platform/win32/Winspool$LPPRINTER_DEFAULTS;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 109
    :try_start_0
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    invoke-virtual {v12}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x2

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Winspool;->GetPrinter(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z

    .line 110
    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    if-gtz p0, :cond_1

    .line 111
    new-instance p0, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;

    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;-><init>()V
    :try_end_0
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    invoke-virtual {v12}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Winspool;->ClosePrinter(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    :cond_0
    return-object p0

    .line 114
    :cond_1
    :try_start_1
    new-instance p0, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;

    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;-><init>(I)V
    :try_end_1
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    sget-object v6, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    invoke-virtual {v12}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v10

    const/4 v8, 0x2

    invoke-interface/range {v6 .. v11}, Lcom/sun/jna/platform/win32/Winspool;->GetPrinter(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;->read()V
    :try_end_2
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    invoke-virtual {v12}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Winspool;->ClosePrinter(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    goto :goto_1

    .line 116
    :cond_2
    :try_start_3
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
    :try_end_3
    .catch Lcom/sun/jna/platform/win32/Win32Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v0

    move-object v13, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 123
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    invoke-virtual {v12}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Winspool;->ClosePrinter(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 124
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 129
    :cond_3
    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    move-object v14, v13

    move-object v13, p0

    move-object p0, v14

    .line 123
    :goto_0
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    invoke-virtual {v12}, Lcom/sun/jna/platform/win32/WinNT$HANDLEByReference;->getValue()Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Winspool;->ClosePrinter(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    .line 126
    invoke-virtual {v0, v13}, Lcom/sun/jna/platform/win32/Win32Exception;->addSuppressedReflected(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    if-nez v13, :cond_5

    return-object p0

    .line 132
    :cond_5
    throw v13

    .line 102
    :cond_6
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static getPrinterInfo2()[Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;
    .locals 1

    const/4 v0, 0x2

    .line 62
    invoke-static {v0}, Lcom/sun/jna/platform/win32/WinspoolUtil;->getPrinterInfo2(I)[Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;

    move-result-object v0

    return-object v0
.end method

.method private static getPrinterInfo2(I)[Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;
    .locals 8

    .line 79
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 80
    new-instance v7, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v7}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 81
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    move v1, p0

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Winspool;->EnumPrinters(ILjava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    .line 82
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x0

    .line 83
    new-array p0, p0, [Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;

    return-object p0

    .line 86
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;-><init>(I)V

    .line 87
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v5

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Winspool;->EnumPrinters(ILjava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;->read()V

    .line 93
    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object p0

    check-cast p0, [Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;

    check-cast p0, [Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_2;

    return-object p0

    .line 89
    :cond_1
    new-instance p0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p0
.end method

.method public static getPrinterInfo4()[Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_4;
    .locals 9

    .line 139
    new-instance v6, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v6}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 140
    new-instance v7, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v7}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 141
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Winspool;->EnumPrinters(ILjava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    .line 143
    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    .line 144
    new-array v0, v0, [Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_4;

    return-object v0

    .line 147
    :cond_0
    new-instance v8, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_4;

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-direct {v8, v0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_4;-><init>(I)V

    .line 148
    sget-object v0, Lcom/sun/jna/platform/win32/Winspool;->INSTANCE:Lcom/sun/jna/platform/win32/Winspool;

    .line 149
    invoke-virtual {v8}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_4;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v4

    invoke-virtual {v6}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v5

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 148
    invoke-interface/range {v0 .. v7}, Lcom/sun/jna/platform/win32/Winspool;->EnumPrinters(ILjava/lang/String;ILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v8}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_4;->read()V

    .line 156
    invoke-virtual {v7}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_4;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_4;

    check-cast v0, [Lcom/sun/jna/platform/win32/Winspool$PRINTER_INFO_4;

    return-object v0

    .line 151
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0
.end method
