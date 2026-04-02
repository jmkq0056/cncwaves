.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "Metadata.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;",
        "()V",
        "client_timestamp_ms",
        "",
        "level",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;",
        "logger_name",
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
.field public client_timestamp_ms:J

.field public level:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

.field public logger_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 114
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;->LEVEL_INVALID:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;->level:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;->logger_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;
    .locals 6

    .line 134
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;

    .line 135
    iget-wide v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;->client_timestamp_ms:J

    .line 136
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;->level:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    .line 137
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;->logger_name:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 134
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata;-><init>(JLcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Ljava/lang/String;Lokio/ByteString;)V

    return-object v0
.end method

.method public final client_timestamp_ms(J)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;
    .locals 0

    .line 120
    iput-wide p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;->client_timestamp_ms:J

    return-object p0
.end method

.method public final level(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;
    .locals 1

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;->level:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    return-object p0
.end method

.method public final logger_name(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;
    .locals 1

    const-string v0, "logger_name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Builder;->logger_name:Ljava/lang/String;

    return-object p0
.end method
