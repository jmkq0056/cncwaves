.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;
.super Lcom/stripe/jvmcore/restclient/RestInterceptor;
.source "SessionTokenInterceptor.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$Companion;,
        Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSessionTokenInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SessionTokenInterceptor.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor\n+ 2 Log.kt\ncom/stripe/jvmcore/logging/terminal/log/Log$Companion\n*L\n1#1,117:1\n148#2:118\n*S KotlinDebug\n*F\n+ 1 SessionTokenInterceptor.kt\ncom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor\n*L\n114#1:118\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \"2\u00020\u00012\u00020\u0002:\u0002\"#B\u0017\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0088\u0001\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f\"\u001c\u0008\u0000\u0010\u0012*\u0016\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\u0008\u00030\u0013j\u0008\u0012\u0004\u0012\u0002H\u0012`\u0014\"\u001c\u0008\u0001\u0010\u0010*\u0016\u0012\u0004\u0012\u0002H\u0010\u0012\u0002\u0008\u00030\u0013j\u0008\u0012\u0004\u0012\u0002H\u0010`\u0014\"\u001c\u0008\u0002\u0010\u0011*\u0016\u0012\u0004\u0012\u0002H\u0011\u0012\u0002\u0008\u00030\u0013j\u0008\u0012\u0004\u0012\u0002H\u0011`\u00142\u0018\u0010\u0015\u001a\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u0016H\u0016J \u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0008\u0010\u001f\u001a\u00020\u0018H\u0016J\u008e\u0001\u0010 \u001a\u000e\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u000f\"\u001c\u0008\u0000\u0010\u0012*\u0016\u0012\u0004\u0012\u0002H\u0012\u0012\u0002\u0008\u00030\u0013j\u0008\u0012\u0004\u0012\u0002H\u0012`\u0014\"\u001c\u0008\u0001\u0010\u0010*\u0016\u0012\u0004\u0012\u0002H\u0010\u0012\u0002\u0008\u00030\u0013j\u0008\u0012\u0004\u0012\u0002H\u0010`\u0014\"\u001c\u0008\u0002\u0010\u0011*\u0016\u0012\u0004\u0012\u0002H\u0011\u0012\u0002\u0008\u00030\u0013j\u0008\u0012\u0004\u0012\u0002H\u0011`\u0014*\u0014\u0012\u0004\u0012\u0002H\u0012\u0012\u0004\u0012\u0002H\u0010\u0012\u0004\u0012\u0002H\u00110\u00162\u0008\u0010!\u001a\u0004\u0018\u00010\tH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u00020\tX\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006$"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor;",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ReaderActivationListener;",
        "backgroundActivator",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;",
        "sessionTokenRepository",
        "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;)V",
        "name",
        "",
        "getName",
        "()Ljava/lang/String;",
        "sessionInfo",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;",
        "intercept",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Rsp",
        "Err",
        "Rq",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/jvmcore/restclient/Proto;",
        "chain",
        "Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;",
        "onReaderActivated",
        "",
        "config",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "response",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "onReaderDisconnected",
        "proceedWithSessionToken",
        "sessionToken",
        "Companion",
        "ReaderSessionInfo",
        "terminalsession_release"
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
.field private static final Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$Companion;

.field private static final LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;


# instance fields
.field private final backgroundActivator:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

.field private final name:Ljava/lang/String;

.field private sessionInfo:Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;

.field private final sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->Companion:Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$Companion;

    .line 114
    sget-object v0, Lcom/stripe/jvmcore/logging/terminal/log/Log;->Companion:Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;

    .line 118
    const-class v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log$Companion;->getLogger(Ljava/lang/Class;)Lcom/stripe/jvmcore/logging/terminal/log/Log;

    move-result-object v0

    .line 114
    sput-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "backgroundActivator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionTokenRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/stripe/jvmcore/restclient/RestInterceptor;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->backgroundActivator:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    .line 33
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    .line 38
    const-string p1, "SessionTokenInterceptor"

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->name:Ljava/lang/String;

    return-void
.end method

.method private final proceedWithSessionToken(Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 5
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
            "TRq;TRsp;TErr;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TRsp;TErr;>;"
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    .line 99
    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Authorization"

    invoke-virtual {v0, v2}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 100
    const-string v0, ""

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {p2, v0, v4, v3, v4}, Lokhttp3/Credentials;->basic$default(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 103
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    .line 105
    invoke-interface {p1, p2}, Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;->proceed(Lokhttp3/Request;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public intercept(Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
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

    .line 43
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    invoke-virtual {v0}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getStripeSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->proceedWithSessionToken(Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v1

    .line 47
    instance-of v2, v1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz v2, :cond_0

    .line 48
    move-object v2, v1

    check-cast v2, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {v2}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v2

    .line 49
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->sessionInfo:Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;

    if-eqz v3, :cond_2

    .line 52
    instance-of v4, v2, Lcom/stripe/proto/model/rest/ErrorWrapper;

    if-eqz v4, :cond_2

    .line 53
    sget-object v4, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    check-cast v2, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v2, v2, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v2, v6, v5, v6}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toTerminalException$default(Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;Lcom/stripe/proto/model/rest/ErrorResponse;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v2

    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->SESSION_EXPIRED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-ne v2, v4, :cond_2

    .line 55
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->backgroundActivator:Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;->getReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v4

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;->getConfig()Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;->activateInBackground(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult;

    move-result-object v2

    .line 58
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    invoke-virtual {v3}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getStripeSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 60
    instance-of v2, v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundActivationResult$ActivationCompleted;

    if-eqz v2, :cond_2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 61
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->LOGGER:Lcom/stripe/jvmcore/logging/terminal/log/Log;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "Retrying request with new session token"

    invoke-virtual {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/Log;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 62
    invoke-direct {p0, p1, v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->proceedWithSessionToken(Lcom/stripe/jvmcore/restclient/RestInterceptor$Chain;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    instance-of p1, v1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    instance-of p1, v1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    if-eqz p1, :cond_3

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public onReaderActivated(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;-><init>(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/external/models/Reader;)V

    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->sessionInfo:Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;

    .line 84
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    invoke-virtual {p3}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->getStripeSessionToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->setStripeSessionToken(Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    invoke-virtual {p3}, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->getRpcSessionToken()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->setRpcSessionToken(Ljava/lang/String;)V

    return-void
.end method

.method public onReaderDisconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor;->sessionInfo:Lcom/stripe/stripeterminal/internal/common/terminalsession/SessionTokenInterceptor$ReaderSessionInfo;

    return-void
.end method
