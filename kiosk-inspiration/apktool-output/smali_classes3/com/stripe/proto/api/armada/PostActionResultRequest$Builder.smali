.class public final Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "PostActionResultRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/api/armada/PostActionResultRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0012\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u0014\u0010\n\u001a\u00020\u00002\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest;",
        "()V",
        "device_info",
        "Lcom/stripe/proto/model/common/DeviceInfo;",
        "failure_code",
        "",
        "failure_message",
        "generated_card",
        "inputs",
        "",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
        "payment_method",
        "refund_id",
        "status",
        "Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;",
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
.field public device_info:Lcom/stripe/proto/model/common/DeviceInfo;

.field public failure_code:Ljava/lang/String;

.field public failure_message:Ljava/lang/String;

.field public generated_card:Ljava/lang/String;

.field public inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
            ">;"
        }
    .end annotation
.end field

.field public payment_method:Ljava/lang/String;

.field public refund_id:Ljava/lang/String;

.field public status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

.field public terminal_action_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 199
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 204
    sget-object v0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;->STATUS_INVALID:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    .line 207
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->failure_code:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->failure_message:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->generated_card:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->refund_id:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 222
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->inputs:Ljava/util/List;

    .line 225
    iput-object v0, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->payment_method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->build()Lcom/stripe/proto/api/armada/PostActionResultRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/api/armada/PostActionResultRequest;
    .locals 11

    .line 276
    new-instance v0, Lcom/stripe/proto/api/armada/PostActionResultRequest;

    .line 277
    iget-object v1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    .line 278
    iget-object v2, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    .line 279
    iget-object v3, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->failure_code:Ljava/lang/String;

    .line 280
    iget-object v4, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->failure_message:Ljava/lang/String;

    .line 281
    iget-object v5, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->generated_card:Ljava/lang/String;

    .line 282
    iget-object v6, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->refund_id:Ljava/lang/String;

    .line 283
    iget-object v7, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 284
    iget-object v8, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->inputs:Ljava/util/List;

    .line 285
    iget-object v9, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->payment_method:Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    .line 276
    invoke-direct/range {v0 .. v10}, Lcom/stripe/proto/api/armada/PostActionResultRequest;-><init>(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_info(Lcom/stripe/proto/model/common/DeviceInfo;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    return-object p0
.end method

.method public final failure_code(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;
    .locals 1

    const-string v0, "failure_code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->failure_code:Ljava/lang/String;

    return-object p0
.end method

.method public final failure_message(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;
    .locals 1

    const-string v0, "failure_message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->failure_message:Ljava/lang/String;

    return-object p0
.end method

.method public final generated_card(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;
    .locals 1

    const-string v0, "generated_card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->generated_card:Ljava/lang/String;

    return-object p0
.end method

.method public final inputs(Ljava/util/List;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Input;",
            ">;)",
            "Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;"
        }
    .end annotation

    const-string v0, "inputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 267
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->inputs:Ljava/util/List;

    return-object p0
.end method

.method public final payment_method(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;
    .locals 1

    const-string v0, "payment_method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->payment_method:Ljava/lang/String;

    return-object p0
.end method

.method public final refund_id(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;
    .locals 1

    const-string v0, "refund_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->refund_id:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->status:Lcom/stripe/proto/api/armada/PostActionResultRequest$Status;

    return-object p0
.end method

.method public final terminal_action_id(Ljava/lang/String;)Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;
    .locals 1

    const-string v0, "terminal_action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iput-object p1, p0, Lcom/stripe/proto/api/armada/PostActionResultRequest$Builder;->terminal_action_id:Ljava/lang/String;

    return-object p0
.end method
