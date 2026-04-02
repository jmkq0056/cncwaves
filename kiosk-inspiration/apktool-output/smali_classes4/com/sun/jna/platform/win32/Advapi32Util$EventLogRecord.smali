.class public Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;
.super Ljava/lang/Object;
.source "Advapi32Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Advapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventLogRecord"
.end annotation


# instance fields
.field private _data:[B

.field private _record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

.field private _source:Ljava/lang/String;

.field private _strings:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 6

    .line 2448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2449
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;-><init>(Lcom/sun/jna/Pointer;)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    .line 2450
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_source:Ljava/lang/String;

    .line 2452
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->DataLength:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 2453
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->DataOffset:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v2, v2, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->DataLength:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    .line 2454
    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v2

    .line 2453
    invoke-virtual {p1, v0, v1, v2}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_data:[B

    .line 2457
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->NumStrings:Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 2458
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2459
    iget-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v1, v1, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->NumStrings:Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result v1

    .line 2460
    iget-object v2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v2, v2, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->StringOffset:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v2

    int-to-long v2, v2

    :goto_0
    if-lez v1, :cond_1

    .line 2462
    invoke-virtual {p1, v2, v3}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v4

    .line 2463
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2464
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    mul-int/2addr v4, v5

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 2465
    sget v4, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2468
    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_strings:[Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 2445
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_data:[B

    return-object v0
.end method

.method public getEventId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2363
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->EventID:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    return v0
.end method

.method public getInstanceId()I
    .locals 1

    .line 2352
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->EventID:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 2403
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->Length:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    return v0
.end method

.method public getRecord()Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;
    .locals 1

    .line 2341
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    return-object v0
.end method

.method public getRecordNumber()I
    .locals 1

    .line 2394
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->RecordNumber:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 2372
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_source:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 2

    .line 2383
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->EventID:Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getStrings()[Ljava/lang/String;
    .locals 1

    .line 2412
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_strings:[Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;
    .locals 3

    .line 2421
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->EventType:Lcom/sun/jna/platform/win32/WinDef$WORD;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 2426
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->AuditFailure:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    return-object v0

    .line 2434
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->_record:Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;

    iget-object v2, v2, Lcom/sun/jna/platform/win32/WinNT$EVENTLOGRECORD;->EventType:Lcom/sun/jna/platform/win32/WinDef$WORD;

    .line 2435
    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/WinDef$WORD;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2428
    :cond_1
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->AuditSuccess:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    return-object v0

    .line 2432
    :cond_2
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->Warning:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    return-object v0

    .line 2430
    :cond_3
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->Error:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    return-object v0

    .line 2424
    :cond_4
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;->Informational:Lcom/sun/jna/platform/win32/Advapi32Util$EventLogType;

    return-object v0
.end method
