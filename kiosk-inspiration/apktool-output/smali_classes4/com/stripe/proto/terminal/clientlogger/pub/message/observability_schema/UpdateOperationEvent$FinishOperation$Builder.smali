.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdateOperationEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;",
        "()V",
        "device_assets_snapshot_id",
        "",
        "next_step",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;",
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
.field public device_assets_snapshot_id:Ljava/lang/String;

.field public next_step:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1174
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 1176
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;->DEVICE_OPERATION_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;->next_step:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    .line 1179
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;->device_assets_snapshot_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1174
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;
    .locals 4

    .line 1194
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;

    .line 1195
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;->next_step:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    .line 1196
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;->device_assets_snapshot_id:Ljava/lang/String;

    .line 1197
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 1194
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_assets_snapshot_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;
    .locals 1

    const-string v0, "device_assets_snapshot_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;->device_assets_snapshot_id:Ljava/lang/String;

    return-object p0
.end method

.method public final next_step(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;
    .locals 1

    const-string v0, "next_step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1182
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$FinishOperation$Builder;->next_step:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$DeviceOperation;

    return-object p0
.end method
