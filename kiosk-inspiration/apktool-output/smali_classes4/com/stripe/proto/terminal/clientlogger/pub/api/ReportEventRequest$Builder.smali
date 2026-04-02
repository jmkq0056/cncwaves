.class public final Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReportEventRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0007\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;",
        "()V",
        "proxy_events",
        "",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyEventPb;",
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
.field public proxy_events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyEventPb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 82
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest$Builder;->proxy_events:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest$Builder;->build()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;
    .locals 3

    .line 93
    new-instance v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;

    .line 94
    iget-object v1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest$Builder;->proxy_events:Ljava/util/List;

    .line 95
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v2

    .line 93
    invoke-direct {v0, v1, v2}, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest;-><init>(Ljava/util/List;Lokio/ByteString;)V

    return-object v0
.end method

.method public final proxy_events(Ljava/util/List;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyEventPb;",
            ">;)",
            "Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest$Builder;"
        }
    .end annotation

    const-string v0, "proxy_events"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 89
    iput-object p1, p0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ReportEventRequest$Builder;->proxy_events:Ljava/util/List;

    return-object p0
.end method
