.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "IntegrityCheckErrorEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;",
        "()V",
        "state",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;",
        "type",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;",
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
.field public state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;

.field public type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 98
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;->INTEGRITY_CHECK_ERROR_TYPE_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;->type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;
    .locals 4

    .line 113
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;

    .line 114
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;->type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;

    .line 115
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;->state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;

    .line 116
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v3

    .line 113
    invoke-direct {v0, v1, v2, v3}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;Lokio/ByteString;)V

    return-object v0
.end method

.method public final state(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;->state:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorState;

    return-object p0
.end method

.method public final type(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$Builder;->type:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/IntegrityCheckErrorEvent$IntegrityCheckErrorType;

    return-object p0
.end method
