.class final Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultMposReaderEventLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1$1;->emit(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "indices",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $it:Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1$1$1;->$it:Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;
    .locals 17

    move-object/from16 v1, p1

    const-string v0, "indices"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 147
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1$1$1;->$it:Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;

    invoke-interface {v2}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderLogEvent;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->serial_number:Ljava/lang/String;

    :cond_0
    move-object v3, v2

    const/16 v15, 0x3fd

    const/16 v16, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 146
    invoke-static/range {v1 .. v16}, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;->copy$default(Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 141
    check-cast p1, Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/log/DefaultMposReaderEventLogger$init$1$1$1;->invoke(Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;)Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;

    move-result-object p1

    return-object p1
.end method
