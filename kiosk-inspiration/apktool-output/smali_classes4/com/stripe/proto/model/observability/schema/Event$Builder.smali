.class public final Lcom/stripe/proto/model/observability/schema/Event$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Event.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/observability/schema/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/observability/schema/Event;",
        "Lcom/stripe/proto/model/observability/schema/Event$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/model/observability/schema/Event$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/observability/schema/Event;",
        "()V",
        "payload",
        "Lcom/stripe/proto/model/observability/schema/Payload;",
        "timestamp_ms",
        "",
        "build",
        "internal_release"
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
.field public payload:Lcom/stripe/proto/model/observability/schema/Payload;

.field public timestamp_ms:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/Event$Builder;->build()Lcom/stripe/proto/model/observability/schema/Event;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/observability/schema/Event;
    .locals 5

    .line 128
    new-instance v0, Lcom/stripe/proto/model/observability/schema/Event;

    .line 129
    iget-wide v1, p0, Lcom/stripe/proto/model/observability/schema/Event$Builder;->timestamp_ms:J

    .line 130
    iget-object v3, p0, Lcom/stripe/proto/model/observability/schema/Event$Builder;->payload:Lcom/stripe/proto/model/observability/schema/Payload;

    .line 131
    invoke-virtual {p0}, Lcom/stripe/proto/model/observability/schema/Event$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v4

    .line 128
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/proto/model/observability/schema/Event;-><init>(JLcom/stripe/proto/model/observability/schema/Payload;Lokio/ByteString;)V

    return-object v0
.end method

.method public final payload(Lcom/stripe/proto/model/observability/schema/Payload;)Lcom/stripe/proto/model/observability/schema/Event$Builder;
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/stripe/proto/model/observability/schema/Event$Builder;->payload:Lcom/stripe/proto/model/observability/schema/Payload;

    return-object p0
.end method

.method public final timestamp_ms(J)Lcom/stripe/proto/model/observability/schema/Event$Builder;
    .locals 0

    .line 116
    iput-wide p1, p0, Lcom/stripe/proto/model/observability/schema/Event$Builder;->timestamp_ms:J

    return-object p0
.end method
