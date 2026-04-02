.class Lcom/sun/jna/platform/win32/W32FileMonitor$1;
.super Ljava/lang/Thread;
.source "W32FileMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/jna/platform/win32/W32FileMonitor;->watch(Ljava/io/File;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/jna/platform/win32/W32FileMonitor;


# direct methods
.method constructor <init>(Lcom/sun/jna/platform/win32/W32FileMonitor;Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$1;->this$0:Lcom/sun/jna/platform/win32/W32FileMonitor;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$1;->this$0:Lcom/sun/jna/platform/win32/W32FileMonitor;

    invoke-static {v0}, Lcom/sun/jna/platform/win32/W32FileMonitor;->access$000(Lcom/sun/jna/platform/win32/W32FileMonitor;)Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 226
    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$1;->this$0:Lcom/sun/jna/platform/win32/W32FileMonitor;

    monitor-enter v1

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$1;->this$0:Lcom/sun/jna/platform/win32/W32FileMonitor;

    invoke-static {v0}, Lcom/sun/jna/platform/win32/W32FileMonitor;->access$100(Lcom/sun/jna/platform/win32/W32FileMonitor;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$1;->this$0:Lcom/sun/jna/platform/win32/W32FileMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sun/jna/platform/win32/W32FileMonitor;->access$202(Lcom/sun/jna/platform/win32/W32FileMonitor;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 229
    monitor-exit v1

    return-void

    .line 231
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 236
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sun/jna/platform/win32/W32FileMonitor$1;->this$0:Lcom/sun/jna/platform/win32/W32FileMonitor;

    invoke-static {v1, v0}, Lcom/sun/jna/platform/win32/W32FileMonitor;->access$300(Lcom/sun/jna/platform/win32/W32FileMonitor;Lcom/sun/jna/platform/win32/W32FileMonitor$FileInfo;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
