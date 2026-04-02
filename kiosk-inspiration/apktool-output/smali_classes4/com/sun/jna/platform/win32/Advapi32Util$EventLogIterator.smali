.class public Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;
.super Ljava/lang/Object;
.source "Advapi32Util.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Advapi32Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventLogIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;",
        ">;",
        "Ljava/util/Iterator<",
        "Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private _buffer:Lcom/sun/jna/Memory;

.field private _done:Z

.field private _dwRead:I

.field private _flags:I

.field private _h:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field private _pevlr:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 2489
    invoke-direct {p0, v0, p1, v1}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 2492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2480
    new-instance v0, Lcom/sun/jna/Memory;

    const-wide/32 v1, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_buffer:Lcom/sun/jna/Memory;

    const/4 v0, 0x0

    .line 2482
    iput-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_done:Z

    .line 2483
    iput v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_dwRead:I

    const/4 v0, 0x0

    .line 2485
    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_pevlr:Lcom/sun/jna/Pointer;

    .line 2493
    iput p3, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_flags:I

    .line 2494
    sget-object p3, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    invoke-interface {p3, p1, p2}, Lcom/sun/jna/platform/win32/Advapi32;->OpenEventLog(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_h:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eqz p1, :cond_0

    return-void

    .line 2496
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object p2, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {p2}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result p2

    invoke-direct {p1, p2}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw p1
.end method

.method private read()Z
    .locals 13

    .line 2502
    iget-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_done:Z

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_dwRead:I

    if-lez v0, :cond_0

    goto :goto_1

    .line 2506
    :cond_0
    new-instance v8, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v8}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 2507
    new-instance v9, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v9}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 2509
    sget-object v2, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v3, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_h:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    iget v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_flags:I

    const/4 v10, 0x1

    or-int/lit8 v4, v0, 0x1

    iget-object v6, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_buffer:Lcom/sun/jna/Memory;

    .line 2511
    invoke-virtual {v6}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v11

    long-to-int v7, v11

    const/4 v5, 0x0

    .line 2510
    invoke-interface/range {v2 .. v9}, Lcom/sun/jna/platform/win32/Advapi32;->ReadEventLog(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2514
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    const/16 v2, 0x7a

    if-ne v0, v2, :cond_2

    .line 2518
    new-instance v0, Lcom/sun/jna/Memory;

    invoke-virtual {v9}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_buffer:Lcom/sun/jna/Memory;

    .line 2520
    sget-object v2, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v3, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_h:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    iget v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_flags:I

    or-int/lit8 v4, v0, 0x1

    iget-object v6, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_buffer:Lcom/sun/jna/Memory;

    .line 2522
    invoke-virtual {v6}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v0

    long-to-int v7, v0

    const/4 v5, 0x0

    .line 2520
    invoke-interface/range {v2 .. v9}, Lcom/sun/jna/platform/win32/Advapi32;->ReadEventLog(Lcom/sun/jna/platform/win32/WinNT$HANDLE;IILcom/sun/jna/Pointer;ILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/ptr/IntByReference;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2524
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/Win32Exception;

    sget-object v1, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    .line 2525
    invoke-interface {v1}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v0

    .line 2529
    :cond_2
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->close()V

    const/16 v2, 0x26

    if-ne v0, v2, :cond_3

    return v1

    .line 2531
    :cond_3
    new-instance v1, Lcom/sun/jna/platform/win32/Win32Exception;

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/Win32Exception;-><init>(I)V

    throw v1

    .line 2537
    :cond_4
    :goto_0
    invoke-virtual {v8}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    iput v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_dwRead:I

    .line 2538
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_buffer:Lcom/sun/jna/Memory;

    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_pevlr:Lcom/sun/jna/Pointer;

    return v10

    :cond_5
    :goto_1
    return v1
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x1

    .line 2547
    iput-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_done:Z

    .line 2548
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_h:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    if-eqz v0, :cond_1

    .line 2549
    sget-object v0, Lcom/sun/jna/platform/win32/Advapi32;->INSTANCE:Lcom/sun/jna/platform/win32/Advapi32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_h:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Advapi32;->CloseEventLog(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2552
    iput-object v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_h:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    return-void

    .line 2550
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

.method public hasNext()Z
    .locals 1

    .line 2567
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->read()Z

    .line 2568
    iget-boolean v0, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_done:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;",
            ">;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;
    .locals 4

    .line 2575
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->read()Z

    .line 2576
    new-instance v0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_pevlr:Lcom/sun/jna/Pointer;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;-><init>(Lcom/sun/jna/Pointer;)V

    .line 2577
    iget v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_dwRead:I

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->getLength()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_dwRead:I

    .line 2578
    iget-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_pevlr:Lcom/sun/jna/Pointer;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;->getLength()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Pointer;->share(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->_pevlr:Lcom/sun/jna/Pointer;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 2476
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Advapi32Util$EventLogIterator;->next()Lcom/sun/jna/platform/win32/Advapi32Util$EventLogRecord;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
