.class public final Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReaderScope.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u0010\u0010\t\u001a\u00020\u00002\u0008\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;",
        "()V",
        "connect_reader",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;",
        "disconnect_reader",
        "on_unpaired_error",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;",
        "request_reader_info",
        "sign_data",
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
.field public connect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public disconnect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public on_unpaired_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

.field public request_reader_info:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

.field public sign_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 181
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;
    .locals 7

    .line 278
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;

    .line 279
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->on_unpaired_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 280
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->connect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 281
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->disconnect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 282
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->sign_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 283
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->request_reader_info:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 284
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v6

    .line 278
    invoke-direct/range {v0 .. v6}, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope;-><init>(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;Lokio/ByteString;)V

    return-object v0
.end method

.method public final connect_reader(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->connect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->on_unpaired_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 226
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->disconnect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 227
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->sign_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 228
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->request_reader_info:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final disconnect_reader(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->disconnect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 241
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->on_unpaired_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 242
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->connect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 243
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->sign_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 244
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->request_reader_info:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final on_unpaired_error(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->on_unpaired_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    const/4 p1, 0x0

    .line 209
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->connect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 210
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->disconnect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 211
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->sign_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 212
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->request_reader_info:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final request_reader_info(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;
    .locals 0

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->request_reader_info:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 271
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->on_unpaired_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 272
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->connect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 273
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->disconnect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 274
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->sign_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method

.method public final sign_data(Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;)Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->sign_data:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->on_unpaired_error:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;

    .line 257
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->connect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 258
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->disconnect_reader:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    .line 259
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/bbpos/ReaderScope$Builder;->request_reader_info:Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Timer;

    return-object p0
.end method
