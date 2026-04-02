.class public final Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "SearchIndices.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u0008\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\tJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "()V",
        "action_id",
        "",
        "base_device_id",
        "client_isp",
        "current_span_id",
        "",
        "parent_span_id",
        "serial_number",
        "session_id",
        "terminal_action_id",
        "trace_id",
        "build",
        "common_release"
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
.field public action_id:Ljava/lang/String;

.field public base_device_id:Ljava/lang/String;

.field public client_isp:Ljava/lang/String;

.field public current_span_id:J

.field public parent_span_id:J

.field public serial_number:Ljava/lang/String;

.field public session_id:Ljava/lang/String;

.field public terminal_action_id:Ljava/lang/String;

.field public trace_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 218
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 220
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->action_id:Ljava/lang/String;

    .line 223
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->serial_number:Ljava/lang/String;

    .line 226
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->session_id:Ljava/lang/String;

    .line 238
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->terminal_action_id:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->client_isp:Ljava/lang/String;

    .line 244
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->base_device_id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final action_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;
    .locals 1

    const-string v0, "action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->action_id:Ljava/lang/String;

    return-object p0
.end method

.method public final base_device_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;
    .locals 1

    const-string v0, "base_device_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->base_device_id:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;
    .locals 14

    .line 318
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    .line 319
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->action_id:Ljava/lang/String;

    .line 320
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->serial_number:Ljava/lang/String;

    .line 321
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->session_id:Ljava/lang/String;

    .line 322
    iget-wide v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->trace_id:J

    .line 323
    iget-wide v6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->parent_span_id:J

    .line 324
    iget-wide v8, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->current_span_id:J

    .line 325
    iget-object v10, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->terminal_action_id:Ljava/lang/String;

    .line 326
    iget-object v11, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->client_isp:Ljava/lang/String;

    .line 327
    iget-object v12, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->base_device_id:Ljava/lang/String;

    .line 328
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v13

    .line 318
    invoke-direct/range {v0 .. v13}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final client_isp(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;
    .locals 1

    const-string v0, "client_isp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->client_isp:Ljava/lang/String;

    return-object p0
.end method

.method public final current_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;
    .locals 0

    .line 290
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->current_span_id:J

    return-object p0
.end method

.method public final parent_span_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;
    .locals 0

    .line 282
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->parent_span_id:J

    return-object p0
.end method

.method public final serial_number(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;
    .locals 1

    const-string v0, "serial_number"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->serial_number:Ljava/lang/String;

    return-object p0
.end method

.method public final session_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;
    .locals 1

    const-string v0, "session_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->session_id:Ljava/lang/String;

    return-object p0
.end method

.method public final terminal_action_id(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;
    .locals 1

    const-string v0, "terminal_action_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->terminal_action_id:Ljava/lang/String;

    return-object p0
.end method

.method public final trace_id(J)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;
    .locals 0

    .line 274
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices$Builder;->trace_id:J

    return-object p0
.end method
