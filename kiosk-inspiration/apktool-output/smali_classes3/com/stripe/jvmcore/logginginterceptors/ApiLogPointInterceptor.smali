.class public final Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;
.super Lcom/stripe/jvmcore/restclient/RestInterceptor;
.source "ApiLogPointInterceptor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApiLogPointInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiLogPointInterceptor.kt\ncom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n*L\n1#1,36:1\n16#2:37\n*S KotlinDebug\n*F\n+ 1 ApiLogPointInterceptor.kt\ncom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor\n*L\n19#1:37\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u000f\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0088\u0001\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f\"\u001c\u0008\u0000\u0010\u0012*\u0016\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\u0008\u00030\u0013j\u0008\u0012\u0004\u0012\u0002H\u0012`\u0014\"\u001c\u0008\u0001\u0010\u0010*\u0016\u0012\u0004\u0012\u0002H\u0010\u0012\u0002\u0008\u00030\u0013j\u0008\u0012\u0004\u0012\u0002H\u0010`\u0014\"\u001c\u0008\u0002\u0010\u0011*\u0016\u0012\u0004\u0012\u0002H\u0011\u0012\u0002\u0008\u00030\u0013j\u0008\u0012\u0004\u0012\u0002H\u0011`\u00142\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u0016H\u0016R\u001e\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006j\u0002`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000bX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "intercept",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Rsp",
        "Err",
        "Rq",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "chain",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;",
        "Companion",
        "logging-interceptors"
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
.field private static final CUSTOM_INTERCEPTOR_NAME:Ljava/lang/String; = "ApiLogPointInterceptor"

.field public static final Companion:Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor$Companion;


# instance fields
.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;->Companion:Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "loggerFactory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/stripe/jvmcore/restclient/RestInterceptor;-><init>()V

    .line 37
    const-class v0, Lcom/stripe/jvmcore/restclient/RestClient;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 25
    const-string p1, "ApiLogPointInterceptor"

    iput-object p1, p0, Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public intercept(Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Rq:",
            "Lcom/squareup/wire/Message<",
            "TRq;*>;Rsp:",
            "Lcom/squareup/wire/Message<",
            "TRsp;*>;Err:",
            "Lcom/squareup/wire/Message<",
            "TErr;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain<",
            "TRq;TRsp;TErr;>;)",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " request="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/stripe/jvmcore/redaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/redaction/Extensions;

    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->rpcRequest()Lcom/squareup/wire/Message;

    move-result-object v4

    sget-object v5, Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;->INSTANCE:Lcom/stripe/jvmcore/redaction/terminal/TerminalMessageRedactor;

    check-cast v5, Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/stripe/jvmcore/redaction/Extensions;->toLogJson$default(Lcom/stripe/jvmcore/redaction/Extensions;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/squareup/moshi/Moshi;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Lkotlin/Pair;

    invoke-interface {v0, v1, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 31
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->proceed(Lokhttp3/Request;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/stripe/jvmcore/logginginterceptors/ApiLogPointInterceptor;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/stripe/jvmcore/restclient/RestResponse;->toLogString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Lkotlin/Pair;

    invoke-interface {v1, p1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object v0
.end method
