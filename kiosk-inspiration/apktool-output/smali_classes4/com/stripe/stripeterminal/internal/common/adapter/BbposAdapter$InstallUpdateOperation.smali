.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;
.super Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;
.source "BbposAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InstallUpdateOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1324:1\n1#2:1325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u000e\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0001R\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\r\u001a\u00020\u000eJ\u0006\u0010\u000f\u001a\u00020\u000eJ\n\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0016J\u0006\u0010\u0011\u001a\u00020\u000eJ\u000e\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014J\u0006\u0010\u0015\u001a\u00020\u000eR\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;",
        "Ljava/lang/Void;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
        "update",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V",
        "cancelled",
        "",
        "getCancelled",
        "()Z",
        "setCancelled",
        "(Z)V",
        "completeCancel",
        "",
        "completeUpdates",
        "execute",
        "onCompleteDownload",
        "onReportUpdateProgress",
        "progress",
        "",
        "startCancel",
        "adapter_release"
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
.field private cancelled:Z

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

.field private final update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
            ")V"
        }
    .end annotation

    const-string v0, "update"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    .line 852
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    .line 851
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    return-void
.end method


# virtual methods
.method public final completeCancel()V
    .locals 7

    .line 888
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CANCELED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "Install update was cancelled"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public final completeUpdates()V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getUpdateManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/readerupdate/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/UpdateManager;->endOperation()V

    .line 894
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->update()V

    const/4 v0, 0x0

    .line 896
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic execute()Ljava/lang/Object;
    .locals 1

    .line 850
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->execute()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public execute()Ljava/lang/Void;
    .locals 11

    .line 860
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getSingleUpdateHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation$execute$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation$execute$1;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3, v2}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->setUpdateStageTimer(Lcom/stripe/jvmcore/logging/PendingTimer;)V

    .line 864
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getRequiredAtMs()J

    move-result-wide v0

    sget-object v4, Lkotlinx/datetime/Clock$System;->INSTANCE:Lkotlinx/datetime/Clock$System;

    invoke-virtual {v4}, Lkotlinx/datetime/Clock$System;->now()Lkotlinx/datetime/Instant;

    move-result-object v4

    invoke-virtual {v4}, Lkotlinx/datetime/Instant;->toEpochMilliseconds()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getOnlyInstallRequiredUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    if-eqz v3, :cond_2

    .line 865
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getFirmwareSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_2
    move-object v7, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 866
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getConfigSpec()Lcom/stripe/proto/model/common/ClientVersionSpecPb;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    if-eqz v3, :cond_4

    .line 867
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getKeyProfileName()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v8, v2

    .line 868
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getUpdateManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/readerupdate/UpdateManager;

    move-result-object v4

    .line 869
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getConfig()Lcom/stripe/proto/model/config/MobileClientConfig;

    move-result-object v5

    .line 873
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getSettingsVersion()Ljava/lang/String;

    move-result-object v9

    .line 874
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->update:Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;->getImageRef()Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;

    move-result-object v10

    .line 868
    invoke-virtual/range {v4 .. v10}, Lcom/stripe/core/readerupdate/UpdateManager;->startInstallUpdate(Lcom/stripe/proto/model/config/MobileClientConfig;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;)V

    .line 876
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->update()V

    .line 878
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public final getCancelled()Z
    .locals 1

    .line 854
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->cancelled:Z

    return v0
.end method

.method public final onCompleteDownload()V
    .locals 7

    .line 909
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->getUpdateStageTimer()Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getSingleUpdateHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    sget-object v2, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast v2, Lcom/stripe/loggingmodels/Outcome;

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->getHealthMetricTags()Ljava/util/Map;

    move-result-object v3

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v6}, Lcom/stripe/jvmcore/logging/HealthLogger;->endTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/PendingTimer;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getSingleUpdateHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/logging/HealthLogger;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation$onCompleteDownload$2;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation$onCompleteDownload$2;

    check-cast v1, Lkotlin/jvm/functions/Function2;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2, v3}, Lcom/stripe/jvmcore/logging/HealthLogger;->startTimer$default(Lcom/stripe/jvmcore/logging/HealthLogger;Ljava/util/Map;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/stripe/jvmcore/logging/PendingTimer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->setUpdateStageTimer(Lcom/stripe/jvmcore/logging/PendingTimer;)V

    return-void
.end method

.method public final onReportUpdateProgress(F)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->reportReaderSoftwareUpdateProgress(F)V

    return-void
.end method

.method public final setCancelled(Z)V
    .locals 0

    .line 854
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->cancelled:Z

    return-void
.end method

.method public final startCancel()V
    .locals 1

    const/4 v0, 0x1

    .line 882
    iput-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->cancelled:Z

    .line 883
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getUpdateManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/readerupdate/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/UpdateManager;->endOperation()V

    .line 884
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->update()V

    return-void
.end method
