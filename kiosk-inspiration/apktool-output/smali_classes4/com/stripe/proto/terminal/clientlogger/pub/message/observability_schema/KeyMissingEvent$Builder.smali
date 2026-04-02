.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "KeyMissingEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;",
        "()V",
        "detection_source",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;",
        "key_type",
        "",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$KeyType;",
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
.field public detection_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

.field public key_type:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$KeyType;",
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

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;->key_type:Ljava/util/List;

    .line 101
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;->DETECTION_SOURCE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;->detection_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;
    .locals 4

    .line 114
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;

    .line 115
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;->key_type:Ljava/util/List;

    .line 116
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;->detection_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    .line 117
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 114
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent;-><init>(Ljava/util/List;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;Lokio/ByteString;)V

    return-object v0
.end method

.method public final detection_source(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;
    .locals 1

    const-string v0, "detection_source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;->detection_source:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$DetectionSource;

    return-object p0
.end method

.method public final key_type(Ljava/util/List;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$KeyType;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;"
        }
    .end annotation

    const-string v0, "key_type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 105
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/KeyMissingEvent$Builder;->key_type:Ljava/util/List;

    return-object p0
.end method
