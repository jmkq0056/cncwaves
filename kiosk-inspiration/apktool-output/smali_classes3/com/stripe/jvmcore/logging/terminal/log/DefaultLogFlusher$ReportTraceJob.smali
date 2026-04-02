.class public final Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;
.super Ljava/lang/Object;
.source "LogFlusher.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReportTraceJob"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;",
        "Ljava/lang/Runnable;",
        "(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)V",
        "run",
        "",
        "impl_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;


# direct methods
.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;->this$0:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 158
    iget-object v0, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;->this$0:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;

    invoke-static {v0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->access$clearPendingTraces(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)Ljava/util/List;

    move-result-object v0

    .line 160
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;->this$0:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;

    invoke-static {v1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->access$getLogWriter$p(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v1

    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reporting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " traces"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/stripe/logwriter/LogWriter;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;->this$0:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;

    invoke-static {v1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->access$getLogUploader$p(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LogUploader;->uploadTraces(Ljava/util/List;)Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult;

    move-result-object v1

    .line 163
    instance-of v2, v1, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Succeeded;

    if-eqz v2, :cond_0

    .line 164
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;->this$0:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;

    invoke-static {v1}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->access$getLogWriter$p(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v1

    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Sent "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/stripe/logwriter/LogWriter;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 167
    :cond_0
    instance-of v2, v1, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Failed;

    if-eqz v2, :cond_2

    .line 168
    iget-object v2, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;->this$0:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;

    invoke-static {v2}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->access$getLogWriter$p(Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;)Lcom/stripe/logwriter/LogWriter;

    move-result-object v2

    .line 169
    invoke-static {}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v3

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed sending "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " traces "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 171
    check-cast v1, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Failed;

    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Failed;->getShouldRetry()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "will"

    goto :goto_0

    :cond_1
    const-string v5, "won\'t retry"

    .line 170
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-interface {v2, v3, v4}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {v1}, Lcom/stripe/jvmcore/logging/terminal/log/LogUploadResult$Failed;->getShouldRetry()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher$ReportTraceJob;->this$0:Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;

    invoke-virtual {v1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/DefaultLogFlusher;->submitTraces(Ljava/util/List;)V

    :cond_2
    return-void
.end method
