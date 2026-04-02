.class public final Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "NotifyTransactionCompleteRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest;",
        "Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest;",
        "()V",
        "device_id",
        "",
        "failure_code",
        "payment_intent_id",
        "terminal_action_id",
        "transaction_succeeded",
        "",
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

.field public failure_code:Ljava/lang/String;

.field public payment_intent_id:Ljava/lang/String;

.field public terminal_action_id:Ljava/lang/String;

.field public transaction_succeeded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 135
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->device_id:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->payment_intent_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->build()Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest;
    .locals 7

    .line 182
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest;

    .line 183
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->device_id:Ljava/lang/String;

    .line 184
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->payment_intent_id:Ljava/lang/String;

    .line 185
    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 186
    iget-boolean v4, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->transaction_succeeded:Z

    .line 187
    iget-object v5, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->failure_code:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 182
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;
    .locals 1

    const-string v0, "device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->device_id:Ljava/lang/String;

    return-object p0
.end method

.method public final failure_code(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->failure_code:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_intent_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;
    .locals 1

    const-string v0, "payment_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->payment_intent_id:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_action_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->terminal_action_id:Ljava/lang/String;

    return-object p0
.end method

.method public final transaction_succeeded(Z)Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;
    .locals 0

    .line 170
    iput-boolean p1, p0, Lcom/stripe/proto/iot_relay/pub/api/NotifyTransactionCompleteRequest$Builder;->transaction_succeeded:Z

    return-object p0
.end method
