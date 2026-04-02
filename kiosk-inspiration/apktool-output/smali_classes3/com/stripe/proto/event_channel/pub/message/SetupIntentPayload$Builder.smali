.class public final Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SetupIntentPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;",
        "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0015\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\rJ\u0015\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\rJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;",
        "()V",
        "allow_redisplay",
        "Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;",
        "enable_customer_cancellation",
        "",
        "Ljava/lang/Boolean;",
        "moto",
        "setup_intent_id",
        "",
        "build",
        "(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;",
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
.field public allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

.field public enable_customer_cancellation:Ljava/lang/Boolean;

.field public moto:Ljava/lang/Boolean;

.field public setup_intent_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->setup_intent_id:Ljava/lang/String;

    .line 125
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;->ALLOW_REDISPLAY_INVALID:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    return-void
.end method


# virtual methods
.method public final allow_redisplay(Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;)Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;
    .locals 1

    const-string v0, "allow_redisplay"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;
    .locals 6

    .line 147
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;

    .line 148
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->setup_intent_id:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->moto:Ljava/lang/Boolean;

    .line 150
    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    .line 151
    iget-object v4, p0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->allow_redisplay:Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;

    .line 152
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 147
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/stripe/proto/event_channel/pub/message/AllowRedisplay;Lokio/ByteString;)V

    return-object v0
.end method

.method public final enable_customer_cancellation(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->enable_customer_cancellation:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final moto(Ljava/lang/Boolean;)Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->moto:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final setup_intent_id(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;
    .locals 1

    const-string v0, "setup_intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/SetupIntentPayload$Builder;->setup_intent_id:Ljava/lang/String;

    return-object p0
.end method
