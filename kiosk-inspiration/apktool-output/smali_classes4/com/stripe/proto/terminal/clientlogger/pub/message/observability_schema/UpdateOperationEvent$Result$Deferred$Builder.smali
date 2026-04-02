.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "UpdateOperationEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0008R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;",
        "()V",
        "affected_asset_version_ids",
        "",
        "",
        "reason",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;",
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
.field public affected_asset_version_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reason:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1812
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 1814
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;->DEFERRED_REASON_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;->reason:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;

    .line 1817
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;->affected_asset_version_ids:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final affected_asset_version_ids(Ljava/util/List;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;"
        }
    .end annotation

    const-string v0, "affected_asset_version_ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1825
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 1826
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;->affected_asset_version_ids:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 1812
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;
    .locals 4

    .line 1830
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;

    .line 1831
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;->reason:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;

    .line 1832
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;->affected_asset_version_ids:Ljava/util/List;

    .line 1833
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 1830
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final reason(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1820
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$Builder;->reason:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/UpdateOperationEvent$Result$Deferred$DeferredReason;

    return-object p0
.end method
