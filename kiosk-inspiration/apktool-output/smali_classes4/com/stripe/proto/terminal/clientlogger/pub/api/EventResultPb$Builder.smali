.class public final Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "EventResultPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0011\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0015\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u0015\u0010\n\u001a\u00020\u00002\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0012J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u001a\u0010\u000f\u001a\u00020\u00002\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0010R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;",
        "()V",
        "domain",
        "",
        "duration",
        "",
        "Ljava/lang/Long;",
        "event",
        "measurement",
        "outcome",
        "result",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;",
        "scope",
        "tags",
        "",
        "build",
        "(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;",
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

.field public result:Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;

.field public scope:Ljava/lang/String;

.field public tags:Ljava/util/Map;
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
    .locals 2

    .line 193
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->domain:Ljava/lang/String;

    .line 198
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->scope:Ljava/lang/String;

    .line 201
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->event:Ljava/lang/String;

    .line 204
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->tags:Ljava/util/Map;

    .line 207
    sget-object v1, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;->OK:Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;

    iput-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;

    .line 210
    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->outcome:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;
    .locals 10

    .line 270
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;

    .line 271
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->domain:Ljava/lang/String;

    .line 272
    iget-object v2, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->scope:Ljava/lang/String;

    .line 273
    iget-object v3, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->event:Ljava/lang/String;

    .line 274
    iget-object v4, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->tags:Ljava/util/Map;

    .line 275
    iget-object v5, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;

    .line 276
    iget-object v6, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->outcome:Ljava/lang/String;

    .line 277
    iget-object v7, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->duration:Ljava/lang/Long;

    .line 278
    iget-object v8, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->measurement:Ljava/lang/Long;

    .line 279
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v9

    .line 270
    invoke-direct/range {v0 .. v9}, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lokio/ByteString;)V

    return-object v0
.end method

.method public final domain(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;
    .locals 1

    const-string v0, "domain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public final duration(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->duration:Ljava/lang/Long;

    return-object p0
.end method

.method public final event(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->event:Ljava/lang/String;

    return-object p0
.end method

.method public final measurement(Ljava/lang/Long;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->measurement:Ljava/lang/Long;

    return-object p0
.end method

.method public final outcome(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;
    .locals 1

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->outcome:Ljava/lang/String;

    return-object p0
.end method

.method public final result(Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->result:Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Result;

    return-object p0
.end method

.method public final scope(Ljava/lang/String;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;
    .locals 1

    const-string v0, "scope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public final tags(Ljava/util/Map;)Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;"
        }
    .end annotation

    const-string v0, "tags"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/EventResultPb$Builder;->tags:Ljava/util/Map;

    return-object p0
.end method
