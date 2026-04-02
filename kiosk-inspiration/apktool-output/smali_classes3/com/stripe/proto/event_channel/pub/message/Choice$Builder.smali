.class public final Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Choice.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/Choice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/Choice;",
        "Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/Choice;",
        "()V",
        "style",
        "Lcom/stripe/proto/event_channel/pub/message/Choice$Style;",
        "value_",
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
.field public style:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

.field public value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 93
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Choice$Style;->STYLE_INVALID:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;->style:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;->value_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/Choice;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/Choice;
    .locals 4

    .line 108
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/Choice;

    .line 109
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;->style:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    .line 110
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;->value_:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 108
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/event_channel/pub/message/Choice;-><init>(Lcom/stripe/proto/event_channel/pub/message/Choice$Style;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final style(Lcom/stripe/proto/event_channel/pub/message/Choice$Style;)Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;
    .locals 1

    const-string v0, "style"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;->style:Lcom/stripe/proto/event_channel/pub/message/Choice$Style;

    return-object p0
.end method

.method public final value_(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;
    .locals 1

    const-string v0, "value_"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Choice$Builder;->value_:Ljava/lang/String;

    return-object p0
.end method
