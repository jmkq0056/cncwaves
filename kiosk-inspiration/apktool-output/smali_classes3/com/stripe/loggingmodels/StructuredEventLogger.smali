.class public interface abstract Lcom/stripe/loggingmodels/StructuredEventLogger;
.super Ljava/lang/Object;
.source "StructuredEventLogger.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0014\u0008\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\u000c0\u000bH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\r\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/StructuredEventLogger;",
        "",
        "log",
        "",
        "event",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
        "loggerName",
        "",
        "level",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;",
        "searchIndicesReducer",
        "Lkotlin/Function1;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic log$default(Lcom/stripe/loggingmodels/StructuredEventLogger;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    if-nez p6, :cond_2

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 19
    sget-object p3, Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;->INFO:Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 20
    sget-object p4, Lcom/stripe/loggingmodels/StructuredEventLogger$log$1;->INSTANCE:Lcom/stripe/loggingmodels/StructuredEventLogger$log$1;

    check-cast p4, Lkotlin/jvm/functions/Function1;

    .line 16
    :cond_1
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/stripe/loggingmodels/StructuredEventLogger;->log(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: log"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract log(Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;Ljava/lang/String;Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;",
            ">;)V"
        }
    .end annotation
.end method
