.class public final Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectInputsRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest;",
        "Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000e\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007J\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest;",
        "()V",
        "device_id",
        "",
        "inputs",
        "",
        "Lcom/stripe/proto/iot_relay/pub/api/Input;",
        "metadata",
        "",
        "reader_id",
        "stripe_ephemeral_key",
        "terminal_action_id",
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
.field public device_id:Ljava/lang/String;

.field public inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/iot_relay/pub/api/Input;",
            ">;"
        }
    .end annotation
.end field

.field public metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public reader_id:Ljava/lang/String;

.field public stripe_ephemeral_key:Ljava/lang/String;

.field public terminal_action_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 153
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 155
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->device_id:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 164
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->inputs:Ljava/util/List;

    .line 167
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->reader_id:Ljava/lang/String;

    .line 170
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->build()Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest;
    .locals 8

    .line 203
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest;

    .line 204
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->device_id:Ljava/lang/String;

    .line 205
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 206
    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 207
    iget-object v4, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->inputs:Ljava/util/List;

    .line 208
    iget-object v5, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->reader_id:Ljava/lang/String;

    .line 209
    iget-object v6, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->metadata:Ljava/util/Map;

    .line 210
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 203
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;
    .locals 1

    const-string v0, "device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->device_id:Ljava/lang/String;

    return-object p0
.end method

.method public final inputs(Ljava/util/List;)Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/iot_relay/pub/api/Input;",
            ">;)",
            "Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;"
        }
    .end annotation

    const-string v0, "inputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 189
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->inputs:Ljava/util/List;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method

.method public final reader_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;
    .locals 1

    const-string v0, "reader_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->reader_id:Ljava/lang/String;

    return-object p0
.end method

.method public final stripe_ephemeral_key(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;
    .locals 1

    const-string v0, "stripe_ephemeral_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_action_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;
    .locals 1

    const-string v0, "terminal_action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/CollectInputsRequest$Builder;->terminal_action_id:Ljava/lang/String;

    return-object p0
.end method
