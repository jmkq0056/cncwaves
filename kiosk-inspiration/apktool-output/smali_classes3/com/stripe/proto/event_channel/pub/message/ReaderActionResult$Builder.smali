.class public final Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReaderActionResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult;",
        "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult;",
        "()V",
        "failure_code",
        "",
        "failure_message",
        "generated_card",
        "payment_method",
        "refund_id",
        "status",
        "Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;",
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
.field public failure_code:Ljava/lang/String;

.field public failure_message:Ljava/lang/String;

.field public generated_card:Ljava/lang/String;

.field public payment_method:Ljava/lang/String;

.field public refund_id:Ljava/lang/String;

.field public status:Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 155
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;->STATUS_INVALID:Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->status:Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;

    .line 158
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->failure_code:Ljava/lang/String;

    .line 161
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->failure_message:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->generated_card:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->refund_id:Ljava/lang/String;

    .line 170
    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->payment_method:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult;
    .locals 8

    .line 205
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult;

    .line 206
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->status:Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;

    .line 207
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->failure_code:Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->failure_message:Ljava/lang/String;

    .line 209
    iget-object v4, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->generated_card:Ljava/lang/String;

    .line 210
    iget-object v5, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->refund_id:Ljava/lang/String;

    .line 211
    iget-object v6, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->payment_method:Ljava/lang/String;

    .line 212
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 205
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult;-><init>(Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final failure_code(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;
    .locals 1

    const-string v0, "failure_code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->failure_code:Ljava/lang/String;

    return-object p0
.end method

.method public final failure_message(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;
    .locals 1

    const-string v0, "failure_message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->failure_message:Ljava/lang/String;

    return-object p0
.end method

.method public final generated_card(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;
    .locals 1

    const-string v0, "generated_card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->generated_card:Ljava/lang/String;

    return-object p0
.end method

.method public final payment_method(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;
    .locals 1

    const-string v0, "payment_method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->payment_method:Ljava/lang/String;

    return-object p0
.end method

.method public final refund_id(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;
    .locals 1

    const-string v0, "refund_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->refund_id:Ljava/lang/String;

    return-object p0
.end method

.method public final status(Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;)Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Builder;->status:Lcom/stripe/proto/event_channel/pub/message/ReaderActionResult$Status;

    return-object p0
.end method
