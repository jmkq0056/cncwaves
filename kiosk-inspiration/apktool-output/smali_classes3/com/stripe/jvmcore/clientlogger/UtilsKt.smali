.class public final Lcom/stripe/jvmcore/clientlogger/UtilsKt;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0002\u001a\u0016\u0010\u0008\u001a\u0004\u0018\u00010\t*\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u001a\u0016\u0010\u000c\u001a\u0004\u0018\u00010\r*\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\u001a\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u0010*\u00020\u00112\u0006\u0010\u000b\u001a\u00020\u0004H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "TAG",
        "",
        "e",
        "",
        "Lcom/stripe/logwriter/LogWriter;",
        "message",
        "throwable",
        "",
        "toClientLoggerLogEvent",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/LogEvent;",
        "Lcom/stripe/proto/api/gator/LogEvent;",
        "logWriter",
        "toClientLoggerProxyEventPb",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyEventPb;",
        "Lcom/stripe/proto/api/gator/ProxyEventPb;",
        "toClientLoggerProxySpanPb",
        "Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;",
        "Lcom/stripe/proto/api/gator/ProxySpanPb;",
        "clientlogger"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClientLoggerUtil"


# direct methods
.method private static final e(Lcom/stripe/logwriter/LogWriter;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 11
    const-string v0, "ClientLoggerUtil"

    invoke-interface {p0, v0, p1, p2}, Lcom/stripe/logwriter/LogWriter;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final toClientLoggerLogEvent(Lcom/stripe/proto/api/gator/LogEvent;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/proto/terminal/clientlogger/pub/api/LogEvent;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    :try_start_0
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/LogEvent;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/LogEvent;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/LogEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error converting gator -> client logger LogEvent: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1, p0, v0}, Lcom/stripe/jvmcore/clientlogger/UtilsKt;->e(Lcom/stripe/logwriter/LogWriter;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toClientLoggerProxyEventPb(Lcom/stripe/proto/api/gator/ProxyEventPb;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyEventPb;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    :try_start_0
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyEventPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ProxyEventPb;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxyEventPb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error converting gator -> client logger ProxyEventPb: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1, p0, v0}, Lcom/stripe/jvmcore/clientlogger/UtilsKt;->e(Lcom/stripe/logwriter/LogWriter;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toClientLoggerProxySpanPb(Lcom/stripe/proto/api/gator/ProxySpanPb;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :try_start_0
    sget-object v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p0}, Lcom/stripe/proto/api/gator/ProxySpanPb;->encode()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/clientlogger/pub/api/ProxySpanPb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error converting gator -> client logger ProxySpanPb: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {p1, p0, v0}, Lcom/stripe/jvmcore/clientlogger/UtilsKt;->e(Lcom/stripe/logwriter/LogWriter;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method
