.class public final Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;
.super Ljava/lang/Object;
.source "RedactionUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00042\u000e\u0010\u0005\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u0004J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;",
        "",
        "()V",
        "toLogProto",
        "Lcom/squareup/wire/Message;",
        "message",
        "toLogSetReaderDisplayRequest",
        "Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;",
        "proto",
        "terminal-redaction"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;

    invoke-direct {v0}, Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;-><init>()V

    sput-object v0, Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;->INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toLogProto(Lcom/squareup/wire/Message;)Lcom/squareup/wire/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/Message<",
            "**>;)",
            "Lcom/squareup/wire/Message<",
            "**>;"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    instance-of v0, p1, Lcom/stripe/proto/api/gator/ReportTraceRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 16
    :cond_0
    instance-of v0, p1, Lcom/stripe/proto/api/gator/ReportEventRequest;

    if-eqz v0, :cond_1

    return-object v1

    .line 17
    :cond_1
    instance-of v0, p1, Lcom/stripe/proto/api/gator/ReportLogEventsRequest;

    if-eqz v0, :cond_2

    return-object v1

    .line 19
    :cond_2
    instance-of v0, p1, Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/jvmcore/redaction/terminal/RedactionUtils;->toLogSetReaderDisplayRequest(Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;)Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;

    move-result-object p1

    check-cast p1, Lcom/squareup/wire/Message;

    :cond_3
    return-object p1
.end method

.method public final toLogSetReaderDisplayRequest(Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;)Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;
    .locals 15

    move-object/from16 v0, p1

    const-string v1, "proto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v2, v0, Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;->cart:Lcom/stripe/proto/model/sdk/Cart;

    if-eqz v2, :cond_1

    .line 33
    new-instance v3, Lcom/stripe/proto/model/sdk/LineItem;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "<condensed "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Lcom/stripe/proto/model/sdk/Cart;->line_items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for logs>"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v11, 0x3d

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/stripe/proto/model/sdk/LineItem;-><init>(ILjava/lang/String;JLjava/util/List;Ljava/util/List;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/16 v13, 0xfe

    const/4 v14, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    .line 32
    invoke-static/range {v2 .. v14}, Lcom/stripe/proto/model/sdk/Cart;->copy$default(Lcom/stripe/proto/model/sdk/Cart;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;JJLjava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/sdk/Cart;

    move-result-object v2

    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 31
    invoke-static/range {v0 .. v5}, Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;->copy$default(Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;Ljava/lang/String;Lcom/stripe/proto/model/sdk/Cart;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/sdk/SetReaderDisplayRequest;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    :goto_0
    return-object p1
.end method
