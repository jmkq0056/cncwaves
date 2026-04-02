.class public Lcom/sun/jna/platform/win32/W32FileMonitor;
.super Lcom/sun/jna/platform/FileMonitor;
.source "W32FileMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x1000

.field private static final LOG:Ljava/util/logging/Logger;

.field private static watcherThreadID:I


# instance fields
.field private disposing:Z

.field private final fileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final handleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/jna/platform/win32/WinNT$HANDLE;",
            "Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private port:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

.field private watcher:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/sun/jna/platform/win32/W32FileMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/jna/platform/win32/W32FileMonitor;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/sun/jna/platform/FileMonitor;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->fileMap:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->handleMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->disposing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sun/jna/platform/win32/W32FileMonitor;)Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/W32FileMonitor;->waitForChange()Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/sun/jna/platform/win32/W32FileMonitor;)Ljava/util/Map;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->fileMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sun/jna/platform/win32/W32FileMonitor;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->watcher:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sun/jna/platform/win32/W32FileMonitor;Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/W32FileMonitor;->handleChanges(Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;)V

    return-void
.end method

.method private convertMask(I)I
    .locals 2

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x3

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    and-int/lit8 v1, p1, 0x30

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x3

    :cond_3
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x8

    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x20

    :cond_5
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x4

    :cond_6
    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_7

    or-int/lit16 p1, v0, 0x100

    return p1

    :cond_7
    return v0
.end method

.method private handleChanges(Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    .line 71
    iget-object v1, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->info:Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;

    .line 73
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;->read()V

    .line 76
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    iget v3, v1, Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;->Action:I

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    const/4 v5, 0x4

    if-eq v3, v4, :cond_3

    if-eq v3, v5, :cond_2

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    .line 97
    sget-object v2, Lcom/sun/jna/platform/win32/W32FileMonitor;->LOG:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iget v4, v1, Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;->Action:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Unrecognized file action \'\'{0}\'\'"

    invoke-virtual {v2, v3, v5, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 93
    :cond_1
    new-instance v3, Lcom/sun/jna/platform/FileMonitor$FileEvent;

    const/16 v4, 0x20

    invoke-direct {v3, p0, v2, v4}, Lcom/sun/jna/platform/FileMonitor$FileEvent;-><init>(Lcom/sun/jna/platform/FileMonitor;Ljava/io/File;I)V

    goto :goto_1

    .line 90
    :cond_2
    new-instance v3, Lcom/sun/jna/platform/FileMonitor$FileEvent;

    const/16 v4, 0x10

    invoke-direct {v3, p0, v2, v4}, Lcom/sun/jna/platform/FileMonitor$FileEvent;-><init>(Lcom/sun/jna/platform/FileMonitor;Ljava/io/File;I)V

    goto :goto_1

    .line 81
    :cond_3
    new-instance v3, Lcom/sun/jna/platform/FileMonitor$FileEvent;

    invoke-direct {v3, p0, v2, v5}, Lcom/sun/jna/platform/FileMonitor$FileEvent;-><init>(Lcom/sun/jna/platform/FileMonitor;Ljava/io/File;I)V

    goto :goto_1

    .line 87
    :cond_4
    new-instance v3, Lcom/sun/jna/platform/FileMonitor$FileEvent;

    invoke-direct {v3, p0, v2, v4}, Lcom/sun/jna/platform/FileMonitor$FileEvent;-><init>(Lcom/sun/jna/platform/FileMonitor;Ljava/io/File;I)V

    goto :goto_1

    .line 84
    :cond_5
    new-instance v3, Lcom/sun/jna/platform/FileMonitor$FileEvent;

    invoke-direct {v3, p0, v2, v4}, Lcom/sun/jna/platform/FileMonitor$FileEvent;-><init>(Lcom/sun/jna/platform/FileMonitor;Ljava/io/File;I)V

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    .line 101
    invoke-virtual {p0, v3}, Lcom/sun/jna/platform/win32/W32FileMonitor;->notify(Lcom/sun/jna/platform/FileMonitor$FileEvent;)V

    .line 104
    :cond_7
    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;->next()Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;

    move-result-object v1

    if-nez v1, :cond_0

    .line 108
    iget-object v1, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 109
    iget-object p1, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->file:Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/W32FileMonitor;->unwatch(Ljava/io/File;)V

    return-void

    .line 113
    :cond_8
    iget-object v1, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->handle:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    iget-object v2, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->info:Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;

    iget-object v3, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->info:Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;

    .line 114
    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;->size()I

    move-result v3

    iget-boolean v4, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->recursive:Z

    iget v5, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->notifyMask:I

    iget-object v6, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->infoLength:Lcom/sun/jna/ptr/IntByReference;

    iget-object v7, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->overlapped:Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;

    const/4 v8, 0x0

    .line 113
    invoke-interface/range {v0 .. v8}, Lcom/sun/jna/platform/win32/Kernel32;->ReadDirectoryChangesW(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;IZILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;Lcom/sun/jna/platform/win32/WinNT$OVERLAPPED_COMPLETION_ROUTINE;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 116
    iget-boolean v1, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->disposing:Z

    if-eqz v1, :cond_9

    goto :goto_2

    .line 117
    :cond_9
    invoke-interface {v0}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v0

    .line 118
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReadDirectoryChangesW failed on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": \'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 120
    invoke-static {v0}, Lcom/sun/jna/platform/win32/Kernel32Util;->formatMessageFromLastErrorCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\' ("

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    :goto_2
    return-void
.end method

.method private waitForChange()Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;
    .locals 6

    .line 127
    new-instance v2, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v2}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 128
    new-instance v3, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;

    invoke-direct {v3}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;-><init>()V

    .line 129
    new-instance v4, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v4}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 130
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->port:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    const/4 v5, -0x1

    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/win32/Kernel32;->GetQueuedCompletionStatus(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;Lcom/sun/jna/ptr/PointerByReference;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 133
    :cond_0
    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->handleMap:Ljava/util/Map;

    new-instance v1, Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTRByReference;->getValue()Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/jna/platform/win32/BaseTSD$ULONG_PTR;->toPointer()Lcom/sun/jna/Pointer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;-><init>(Lcom/sun/jna/Pointer;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 135
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized dispose()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    .line 262
    :try_start_0
    iput-boolean v0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->disposing:Z

    .line 266
    iget-object v0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->fileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->fileMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 267
    aget-object v2, v0, v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {p0, v2}, Lcom/sun/jna/platform/win32/W32FileMonitor;->unwatch(Ljava/io/File;)V

    move v2, v3

    goto :goto_0

    .line 270
    :cond_0
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    .line 271
    iget-object v2, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->port:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3, v3}, Lcom/sun/jna/platform/win32/Kernel32;->PostQueuedCompletionStatus(Lcom/sun/jna/platform/win32/WinNT$HANDLE;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;)Z

    .line 272
    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->port:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v0, v1}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z

    .line 273
    iput-object v3, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->port:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 274
    iput-object v3, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->watcher:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected declared-synchronized unwatch(Ljava/io/File;)V
    .locals 2

    monitor-enter p0

    .line 251
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->fileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;

    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor;->handleMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->handle:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    .line 256
    iget-object p1, p1, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->handle:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/Kernel32;->CloseHandle(Lcom/sun/jna/platform/win32/WinNT$HANDLE;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected declared-synchronized watch(Ljava/io/File;IZ)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 172
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move v5, v6

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    move/from16 v5, p3

    :goto_0
    const/4 v10, 0x1

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    move v5, v10

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_6

    .line 183
    sget-object v11, Lcom/sun/jna/platform/win32/Kernel32;->INSTANCE:Lcom/sun/jna/platform/win32/Kernel32;

    .line 188
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    const/16 v16, 0x3

    const/16 v18, 0x0

    const/4 v14, 0x7

    const/high16 v17, 0x42000000    # 32.0f

    const/4 v13, 0x1

    const/4 v15, 0x0

    invoke-interface/range {v11 .. v18}, Lcom/sun/jna/platform/win32/Kernel32;->CreateFile(Ljava/lang/String;IILcom/sun/jna/platform/win32/WinBase$SECURITY_ATTRIBUTES;IILcom/sun/jna/platform/win32/WinNT$HANDLE;)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v2

    .line 192
    sget-object v0, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v0, v2}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move/from16 v0, p2

    .line 196
    invoke-direct {v1, v0}, Lcom/sun/jna/platform/win32/W32FileMonitor;->convertMask(I)I

    move-result v4

    .line 197
    new-instance v0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;

    move-object v3, v2

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;-><init>(Lcom/sun/jna/platform/win32/W32FileMonitor;Ljava/io/File;Lcom/sun/jna/platform/win32/WinNT$HANDLE;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v1

    .line 198
    :try_start_1
    iget-object v1, v12, Lcom/sun/jna/platform/win32/W32FileMonitor;->fileMap:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v1, v12, Lcom/sun/jna/platform/win32/W32FileMonitor;->handleMap:Ljava/util/Map;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v1, v12, Lcom/sun/jna/platform/win32/W32FileMonitor;->port:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v3}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v7

    invoke-interface {v11, v3, v1, v7, v6}, Lcom/sun/jna/platform/win32/Kernel32;->CreateIoCompletionPort(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/Pointer;I)Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    move-result-object v1

    iput-object v1, v12, Lcom/sun/jna/platform/win32/W32FileMonitor;->port:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    .line 202
    sget-object v1, Lcom/sun/jna/platform/win32/WinBase;->INVALID_HANDLE_VALUE:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    iget-object v6, v12, Lcom/sun/jna/platform/win32/W32FileMonitor;->port:Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    invoke-virtual {v1, v6}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v2, v3

    .line 209
    iget-object v3, v0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->info:Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;

    iget-object v1, v0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->info:Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;->size()I

    move-result v1

    iget-object v7, v0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->infoLength:Lcom/sun/jna/ptr/IntByReference;

    iget-object v8, v0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->overlapped:Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;

    const/4 v9, 0x0

    move v6, v4

    move v4, v1

    move-object v1, v11

    invoke-interface/range {v1 .. v9}, Lcom/sun/jna/platform/win32/Kernel32;->ReadDirectoryChangesW(Lcom/sun/jna/platform/win32/WinNT$HANDLE;Lcom/sun/jna/platform/win32/WinNT$FILE_NOTIFY_INFORMATION;IZILcom/sun/jna/ptr/IntByReference;Lcom/sun/jna/platform/win32/WinBase$OVERLAPPED;Lcom/sun/jna/platform/win32/WinNT$OVERLAPPED_COMPLETION_ROUTINE;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 218
    iget-object v0, v12, Lcom/sun/jna/platform/win32/W32FileMonitor;->watcher:Ljava/lang/Thread;

    if-nez v0, :cond_2

    .line 219
    new-instance v0, Lcom/sun/jna/platform/win32/W32FileMonitor$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W32 File Monitor-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sun/jna/platform/win32/W32FileMonitor;->watcherThreadID:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/sun/jna/platform/win32/W32FileMonitor;->watcherThreadID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v12, v1}, Lcom/sun/jna/platform/win32/W32FileMonitor$1;-><init>(Lcom/sun/jna/platform/win32/W32FileMonitor;Ljava/lang/String;)V

    iput-object v0, v12, Lcom/sun/jna/platform/win32/W32FileMonitor;->watcher:Ljava/lang/Thread;

    .line 244
    invoke-virtual {v0, v10}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 245
    iget-object v0, v12, Lcom/sun/jna/platform/win32/W32FileMonitor;->watcher:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 247
    :cond_2
    monitor-exit p0

    return-void

    .line 212
    :cond_3
    :try_start_2
    invoke-interface {v11}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v1

    .line 213
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ReadDirectoryChangesW failed on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;->file:Ljava/io/File;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", handle "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    invoke-static {v1}, Lcom/sun/jna/platform/win32/Kernel32Util;->formatMessageFromLastErrorCode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\' ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    move-object v1, v2

    .line 203
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create/use I/O Completion port for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 205
    invoke-interface {v11}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v12, v1

    move-object/from16 v1, p1

    .line 193
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    invoke-interface {v11}, Lcom/sun/jna/platform/win32/Kernel32;->GetLastError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v12, v1

    move-object/from16 v1, p1

    .line 181
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No ancestor found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    move-object v12, v1

    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
