.class public final Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ProcessSetupIntentRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;",
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0010\u001a\u00020\u0002H\u0016J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0011J\u0015\u0010\u000b\u001a\u00020\u00002\u0008\u0010\u000b\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\u0011J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0016\u0010\u000b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\u000c\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;",
        "()V",
        "allow_redisplay",
        "Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;",
        "device_id",
        "",
        "enable_customer_cancellation",
        "",
        "Ljava/lang/Boolean;",
        "moto",
        "reader_id",
        "setup_intent_id",
        "stripe_ephemeral_key",
        "terminal_action_id",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;",
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
.field public allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

.field public device_id:Ljava/lang/String;

.field public enable_customer_cancellation:Ljava/lang/Boolean;

.field public moto:Ljava/lang/Boolean;

.field public reader_id:Ljava/lang/String;

.field public setup_intent_id:Ljava/lang/String;

.field public stripe_ephemeral_key:Ljava/lang/String;

.field public terminal_action_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 171
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->device_id:Ljava/lang/String;

    .line 176
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 179
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->setup_intent_id:Ljava/lang/String;

    .line 182
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->reader_id:Ljava/lang/String;

    .line 194
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    iput-object v0, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    return-void
.end method


# virtual methods
.method public final allow_redisplay(Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;
    .locals 1

    const-string v0, "allow_redisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->build()Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;
    .locals 10

    .line 236
    new-instance v0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;

    .line 237
    iget-object v1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->device_id:Ljava/lang/String;

    .line 238
    iget-object v2, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    .line 239
    iget-object v3, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->setup_intent_id:Ljava/lang/String;

    .line 240
    iget-object v4, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->terminal_action_id:Ljava/lang/String;

    .line 241
    iget-object v5, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->reader_id:Ljava/lang/String;

    .line 242
    iget-object v6, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->moto:Ljava/lang/Boolean;

    .line 243
    iget-object v7, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 244
    iget-object v8, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->allow_redisplay:Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;

    .line 245
    invoke-virtual {p0}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 236
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/terminal/terminal/pub/common/server_driven_integration/AllowRedisplay;Lokio/ByteString;)V

    return-object v0
.end method

.method public final device_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;
    .locals 1

    const-string v0, "device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->device_id:Ljava/lang/String;

    return-object p0
.end method

.method public final enable_customer_cancellation(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final moto(Ljava/lang/Boolean;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->moto:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final reader_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;
    .locals 1

    const-string v0, "reader_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->reader_id:Ljava/lang/String;

    return-object p0
.end method

.method public final setup_intent_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;
    .locals 1

    const-string v0, "setup_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->setup_intent_id:Ljava/lang/String;

    return-object p0
.end method

.method public final stripe_ephemeral_key(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;
    .locals 1

    const-string v0, "stripe_ephemeral_key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->stripe_ephemeral_key:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_action_id(Ljava/lang/String;)Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;
    .locals 1

    const-string v0, "terminal_action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    iput-object p1, p0, Lcom/stripe/proto/iot_relay/pub/api/ProcessSetupIntentRequest$Builder;->terminal_action_id:Ljava/lang/String;

    return-object p0
.end method
