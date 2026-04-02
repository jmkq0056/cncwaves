.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "EventResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\r\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0015\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0015\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000eJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;",
        "()V",
        "domain",
        "",
        "duration",
        "",
        "Ljava/lang/Long;",
        "event",
        "measurement",
        "outcome",
        "scope",
        "build",
        "(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;",
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
.field public domain:Ljava/lang/String;

.field public duration:Ljava/lang/Long;

.field public event:Ljava/lang/String;

.field public measurement:Ljava/lang/Long;

.field public outcome:Ljava/lang/String;

.field public scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 149
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->domain:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->scope:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->event:Ljava/lang/String;

    .line 160
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->outcome:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;
    .locals 8

    .line 207
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;

    .line 208
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->domain:Ljava/lang/String;

    .line 209
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->scope:Ljava/lang/String;

    .line 210
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->event:Ljava/lang/String;

    .line 211
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->outcome:Ljava/lang/String;

    .line 212
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->duration:Ljava/lang/Long;

    .line 213
    iget-object v6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->measurement:Ljava/lang/Long;

    .line 214
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v7

    .line 207
    invoke-direct/range {v0 .. v7}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;)V

    return-object v0
.end method

.method public final domain(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public final duration(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->duration:Ljava/lang/Long;

    return-object p0
.end method

.method public final event(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->event:Ljava/lang/String;

    return-object p0
.end method

.method public final measurement(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->measurement:Ljava/lang/Long;

    return-object p0
.end method

.method public final outcome(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;
    .locals 1

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->outcome:Ljava/lang/String;

    return-object p0
.end method

.method public final scope(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventResult$Builder;->scope:Ljava/lang/String;

    return-object p0
.end method
