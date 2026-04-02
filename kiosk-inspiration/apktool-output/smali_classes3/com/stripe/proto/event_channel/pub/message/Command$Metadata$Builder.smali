.class public final Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Command.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;",
        "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;",
        "()V",
        "request_source",
        "Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;",
        "routing_info",
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
.field public request_source:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

.field public routing_info:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 646
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 648
    sget-object v0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;->REQUESTER_INVALID:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;->request_source:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    .line 651
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;->routing_info:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 646
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;
    .locals 4

    .line 663
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;

    .line 664
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;->request_source:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    .line 665
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;->routing_info:Ljava/lang/String;

    .line 666
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 663
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata;-><init>(Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final request_source(Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;)Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;
    .locals 1

    const-string v0, "request_source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;->request_source:Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Requester;

    return-object p0
.end method

.method public final routing_info(Ljava/lang/String;)Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;
    .locals 1

    const-string v0, "routing_info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 659
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/Command$Metadata$Builder;->routing_info:Ljava/lang/String;

    return-object p0
.end method
