.class public final Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "CollectInputsPayload.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;",
        "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005J\u001a\u0010\u0007\u001a\u00020\u00002\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0008R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;",
        "()V",
        "inputs",
        "",
        "Lcom/stripe/proto/event_channel/pub/message/Input;",
        "metadata",
        "",
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
.field public inputs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/event_channel/pub/message/Input;",
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 98
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;->inputs:Ljava/util/List;

    .line 101
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;->metadata:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;->build()Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;
    .locals 4

    .line 114
    new-instance v0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;->inputs:Ljava/util/List;

    .line 116
    iget-object v2, p0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;->metadata:Ljava/util/Map;

    .line 117
    invoke-virtual {p0}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 114
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload;-><init>(Ljava/util/List;Ljava/util/Map;Lokio/ByteString;)V

    return-object v0
.end method

.method public final inputs(Ljava/util/List;)Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/event_channel/pub/message/Input;",
            ">;)",
            "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;"
        }
    .end annotation

    const-string v0, "inputs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 105
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;->inputs:Ljava/util/List;

    return-object p0
.end method

.method public final metadata(Ljava/util/Map;)Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;"
        }
    .end annotation

    const-string v0, "metadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/stripe/proto/event_channel/pub/message/CollectInputsPayload$Builder;->metadata:Ljava/util/Map;

    return-object p0
.end method
