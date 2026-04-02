.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdateOperationEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0016\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u001a\u0010\u0008\u001a\u00020\u00002\u0012\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\tJ\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000c\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;",
        "()V",
        "action_id",
        "",
        "check_for_updates",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;",
        "client_state_tags",
        "",
        "download",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;",
        "finish",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;",
        "install",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;",
        "precondition_check_operation",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;",
        "progress",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;",
        "result",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;",
        "build",
        "terminal_release"
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
.field public action_id:Ljava/lang/String;

.field public check_for_updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;

.field public client_state_tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public download:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;

.field public finish:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;

.field public install:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;

.field public precondition_check_operation:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;

.field public progress:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;

.field public result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 217
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->action_id:Ljava/lang/String;

    .line 243
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->client_state_tags:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final action_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;
    .locals 1

    const-string v0, "action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->action_id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;
    .locals 11

    .line 318
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;

    .line 319
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->action_id:Ljava/lang/String;

    .line 320
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->check_for_updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;

    .line 321
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->precondition_check_operation:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;

    .line 322
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;

    .line 323
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;

    .line 324
    iget-object v6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->finish:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;

    .line 325
    iget-object v7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;

    .line 326
    iget-object v8, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->progress:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;

    .line 327
    iget-object v9, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->client_state_tags:Ljava/util/Map;

    .line 328
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 318
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent;-><init>(Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final check_for_updates(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->check_for_updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;

    const/4 p1, 0x0

    .line 263
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->precondition_check_operation:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;

    .line 264
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;

    .line 265
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;

    .line 266
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->finish:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;

    return-object p0
.end method

.method public final client_state_tags(Ljava/util/Map;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;"
        }
    .end annotation

    const-string v0, "client_state_tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->client_state_tags:Ljava/util/Map;

    return-object p0
.end method

.method public final download(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;

    const/4 p1, 0x0

    .line 281
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->check_for_updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;

    .line 282
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->precondition_check_operation:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;

    .line 283
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;

    .line 284
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->finish:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;

    return-object p0
.end method

.method public final finish(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->finish:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;

    const/4 p1, 0x0

    .line 299
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->check_for_updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;

    .line 300
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->precondition_check_operation:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;

    .line 301
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;

    .line 302
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;

    return-object p0
.end method

.method public final install(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;

    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->check_for_updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;

    .line 291
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->precondition_check_operation:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;

    .line 292
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;

    .line 293
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->finish:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;

    return-object p0
.end method

.method public final precondition_check_operation(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->precondition_check_operation:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$PreconditionCheckOperation;

    const/4 p1, 0x0

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->check_for_updates:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$CheckForUpdatesOperation;

    .line 273
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->download:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DownloadOperation;

    .line 274
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->install:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$InstallOperation;

    .line 275
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->finish:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;

    return-object p0
.end method

.method public final progress(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->progress:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;

    const/4 p1, 0x0

    .line 314
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;

    return-object p0
.end method

.method public final result(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result;

    const/4 p1, 0x0

    .line 308
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Builder;->progress:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Progress;

    return-object p0
.end method
