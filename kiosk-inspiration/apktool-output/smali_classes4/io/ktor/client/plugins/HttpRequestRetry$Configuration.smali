.class public final Lio/ktor/client/plugins/HttpRequestRetry$Configuration;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpRequestRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Configuration"
.end annotation

.annotation runtime Lio/ktor/util/KtorDsl;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J$\u0010+\u001a\u00020\u00072\u0008\u0008\u0002\u0010,\u001a\u00020\u00052\u0008\u0008\u0002\u0010-\u001a\u00020\u00052\u0008\u0008\u0002\u0010.\u001a\u00020\"J2\u0010\u0003\u001a\u00020\u00072\"\u0010/\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u000bJ>\u0010\r\u001a\u00020\u00072\u0008\u0008\u0002\u0010.\u001a\u00020\"2,\u0010/\u001a(\u0012\u0004\u0012\u00020\u000e\u0012\u0013\u0012\u00110\u000f\u00a2\u0006\u000c\u00080\u0012\u0008\u00081\u0012\u0004\u0008\u0008(2\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0008\u0010J.\u00103\u001a\u00020\u00072\u0008\u0008\u0002\u00104\u001a\u0002052\u0008\u0008\u0002\u00106\u001a\u00020\u00052\u0008\u0008\u0002\u0010-\u001a\u00020\u00052\u0008\u0008\u0002\u0010.\u001a\u00020\"J%\u0010\u0018\u001a\u00020\u00072\u001d\u0010/\u001a\u0019\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00070\u0004\u00a2\u0006\u0002\u0008\u0010J\u0006\u00107\u001a\u00020\u0007J\u0010\u00108\u001a\u00020\u00052\u0006\u0010-\u001a\u00020\u0005H\u0002J5\u00109\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000f2#\u0010/\u001a\u001f\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0\u001e\u00a2\u0006\u0002\u0008\u0010J\u0012\u0010:\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000fH\u0007J\u001a\u0010:\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000f2\u0008\u0008\u0002\u0010;\u001a\u00020\"J5\u0010<\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000f2#\u0010/\u001a\u001f\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\"0\u001e\u00a2\u0006\u0002\u0008\u0010J\u0010\u0010=\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000fJ\u0010\u0010>\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000fR;\u0010\u0003\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00020\u0005\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u0004X\u0080\u000e\u00f8\u0001\u0000\u00a2\u0006\u0010\n\u0002\u0010\u000c\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR1\u0010\r\u001a\u0019\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0002\u0008\u0010X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\t\"\u0004\u0008\u0012\u0010\u000bR\u001a\u0010\u0013\u001a\u00020\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R1\u0010\u0018\u001a\u0019\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00070\u0004\u00a2\u0006\u0002\u0008\u0010X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\t\"\u0004\u0008\u001c\u0010\u000bR7\u0010\u001d\u001a\u001f\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"0\u001e\u00a2\u0006\u0002\u0008\u0010X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R7\u0010\'\u001a\u001f\u0012\u0004\u0012\u00020\u001f\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020(\u0012\u0004\u0012\u00020\"0\u001e\u00a2\u0006\u0002\u0008\u0010X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010$\"\u0004\u0008*\u0010&\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006?"
    }
    d2 = {
        "Lio/ktor/client/plugins/HttpRequestRetry$Configuration;",
        "",
        "()V",
        "delay",
        "Lkotlin/Function2;",
        "",
        "Lkotlin/coroutines/Continuation;",
        "",
        "getDelay$ktor_client_core",
        "()Lkotlin/jvm/functions/Function2;",
        "setDelay$ktor_client_core",
        "(Lkotlin/jvm/functions/Function2;)V",
        "Lkotlin/jvm/functions/Function2;",
        "delayMillis",
        "Lio/ktor/client/plugins/HttpRequestRetry$DelayContext;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "getDelayMillis$ktor_client_core",
        "setDelayMillis$ktor_client_core",
        "maxRetries",
        "getMaxRetries",
        "()I",
        "setMaxRetries",
        "(I)V",
        "modifyRequest",
        "Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;",
        "Lio/ktor/client/request/HttpRequestBuilder;",
        "getModifyRequest$ktor_client_core",
        "setModifyRequest$ktor_client_core",
        "shouldRetry",
        "Lkotlin/Function3;",
        "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
        "Lio/ktor/client/request/HttpRequest;",
        "Lio/ktor/client/statement/HttpResponse;",
        "",
        "getShouldRetry$ktor_client_core",
        "()Lkotlin/jvm/functions/Function3;",
        "setShouldRetry$ktor_client_core",
        "(Lkotlin/jvm/functions/Function3;)V",
        "shouldRetryOnException",
        "",
        "getShouldRetryOnException$ktor_client_core",
        "setShouldRetryOnException$ktor_client_core",
        "constantDelay",
        "millis",
        "randomizationMs",
        "respectRetryAfterHeader",
        "block",
        "Lkotlin/ParameterName;",
        "name",
        "retry",
        "exponentialDelay",
        "base",
        "",
        "maxDelayMs",
        "noRetry",
        "randomMs",
        "retryIf",
        "retryOnException",
        "retryOnTimeout",
        "retryOnExceptionIf",
        "retryOnExceptionOrServerErrors",
        "retryOnServerErrors",
        "ktor-client-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private delay:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public delayMillis:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$DelayContext;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private maxRetries:I

.field private modifyRequest:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public shouldRetry:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "-",
            "Lio/ktor/client/request/HttpRequest;",
            "-",
            "Lio/ktor/client/statement/HttpResponse;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public shouldRetryOnException:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    sget-object v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$modifyRequest$1;->INSTANCE:Lio/ktor/client/plugins/HttpRequestRetry$Configuration$modifyRequest$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->modifyRequest:Lkotlin/jvm/functions/Function2;

    .line 111
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$delay$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$delay$1;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->delay:Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x3

    .line 119
    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryOnExceptionOrServerErrors(I)V

    const/16 v9, 0xf

    const/4 v10, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 120
    invoke-static/range {v1 .. v10}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->exponentialDelay$default(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;DJJZILjava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$randomMs(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;J)J
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->randomMs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic constantDelay$default(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;JJZILjava/lang/Object;)V
    .locals 2

    and-int/lit8 p7, p6, 0x1

    const-wide/16 v0, 0x3e8

    if-eqz p7, :cond_0

    move-wide p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-wide p3, v0

    :cond_1
    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_2

    const/4 p5, 0x1

    .line 228
    :cond_2
    invoke-virtual/range {p0 .. p5}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->constantDelay(JJZ)V

    return-void
.end method

.method public static synthetic delayMillis$default(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)V
    .locals 0

    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_0

    move p1, p4

    .line 210
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->delayMillis(ZLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic exponentialDelay$default(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;DJJZILjava/lang/Object;)V
    .locals 7

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p8, 0x2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0xea60

    goto :goto_1

    :cond_1
    move-wide v2, p3

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x3e8

    goto :goto_2

    :cond_2
    move-wide v4, p5

    :goto_2
    and-int/lit8 v6, p8, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    move p8, v6

    goto :goto_3

    :cond_3
    move p8, p7

    :goto_3
    move-object p1, p0

    move-wide p2, v0

    move-wide p4, v2

    move-wide p6, v4

    .line 245
    invoke-virtual/range {p1 .. p8}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->exponentialDelay(DJJZ)V

    return-void
.end method

.method private final randomMs(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 270
    :cond_0
    sget-object v0, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-virtual {v0, p1, p2}, Lkotlin/random/Random$Default;->nextLong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public static synthetic retryIf$default(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;ILkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    .line 143
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryIf(ILkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static synthetic retryOnException$default(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 165
    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryOnException(I)V

    return-void
.end method

.method public static synthetic retryOnException$default(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;IZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 177
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryOnException(IZ)V

    return-void
.end method

.method public static synthetic retryOnExceptionIf$default(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;ILkotlin/jvm/functions/Function3;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, -0x1

    .line 152
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryOnExceptionIf(ILkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public static synthetic retryOnExceptionOrServerErrors$default(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 201
    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryOnExceptionOrServerErrors(I)V

    return-void
.end method

.method public static synthetic retryOnServerErrors$default(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, -0x1

    .line 191
    :cond_0
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryOnServerErrors(I)V

    return-void
.end method


# virtual methods
.method public final constantDelay(JJZ)V
    .locals 10

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    .line 233
    const-string v3, "Check failed."

    if-lez v2, :cond_1

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 236
    new-instance v4, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$constantDelay$1;

    move-object v7, p0

    move-wide v5, p1

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$constantDelay$1;-><init>(JLio/ktor/client/plugins/HttpRequestRetry$Configuration;J)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, p5, v4}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->delayMillis(ZLkotlin/jvm/functions/Function2;)V

    return-void

    :cond_0
    move-object v7, p0

    .line 234
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    move-object v7, p0

    .line 233
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final delay(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->delay:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final delayMillis(ZLkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$DelayContext;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$delayMillis$1;

    invoke-direct {v0, p1, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$delayMillis$1;-><init>(ZLkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->setDelayMillis$ktor_client_core(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final exponentialDelay(DJJZ)V
    .locals 10

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    .line 251
    const-string v1, "Check failed."

    if-lez v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    cmp-long v0, p5, v2

    if-ltz v0, :cond_0

    .line 255
    new-instance v2, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;

    move-object v7, p0

    move-wide v3, p1

    move-wide v5, p3

    move-wide v8, p5

    invoke-direct/range {v2 .. v9}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$exponentialDelay$1;-><init>(DJLio/ktor/client/plugins/HttpRequestRetry$Configuration;J)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    move/from16 p1, p7

    invoke-virtual {p0, p1, v2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->delayMillis(ZLkotlin/jvm/functions/Function2;)V

    return-void

    .line 253
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 252
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 251
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getDelay$ktor_client_core()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->delay:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getDelayMillis$ktor_client_core()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/plugins/HttpRequestRetry$DelayContext;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->delayMillis:Lkotlin/jvm/functions/Function2;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "delayMillis"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getMaxRetries()I
    .locals 1

    .line 116
    iget v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->maxRetries:I

    return v0
.end method

.method public final getModifyRequest$ktor_client_core()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->modifyRequest:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public final getShouldRetry$ktor_client_core()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "Lio/ktor/client/request/HttpRequest;",
            "Lio/ktor/client/statement/HttpResponse;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->shouldRetry:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "shouldRetry"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getShouldRetryOnException$ktor_client_core()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->shouldRetryOnException:Lkotlin/jvm/functions/Function3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "shouldRetryOnException"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final modifyRequest(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->modifyRequest:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final noRetry()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    iput v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->maxRetries:I

    .line 128
    sget-object v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$noRetry$1;->INSTANCE:Lio/ktor/client/plugins/HttpRequestRetry$Configuration$noRetry$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->setShouldRetry$ktor_client_core(Lkotlin/jvm/functions/Function3;)V

    .line 129
    sget-object v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$noRetry$2;->INSTANCE:Lio/ktor/client/plugins/HttpRequestRetry$Configuration$noRetry$2;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->setShouldRetryOnException$ktor_client_core(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final retryIf(ILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "-",
            "Lio/ktor/client/request/HttpRequest;",
            "-",
            "Lio/ktor/client/statement/HttpResponse;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 144
    iput p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->maxRetries:I

    .line 145
    :cond_0
    invoke-virtual {p0, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->setShouldRetry$ktor_client_core(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final synthetic retryOnException(I)V
    .locals 1
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This will be removed"
    .end annotation

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryOnException(IZ)V

    return-void
.end method

.method public final retryOnException(IZ)V
    .locals 1

    .line 178
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnException$1;

    invoke-direct {v0, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnException$1;-><init>(Z)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryOnExceptionIf(ILkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final retryOnExceptionIf(ILkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 156
    iput p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->maxRetries:I

    .line 157
    :cond_0
    invoke-virtual {p0, p2}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->setShouldRetryOnException$ktor_client_core(Lkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final retryOnExceptionOrServerErrors(I)V
    .locals 3

    .line 202
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryOnServerErrors(I)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 203
    invoke-static {p0, p1, v2, v0, v1}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryOnException$default(Lio/ktor/client/plugins/HttpRequestRetry$Configuration;IZILjava/lang/Object;)V

    return-void
.end method

.method public final retryOnServerErrors(I)V
    .locals 1

    .line 192
    sget-object v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1;->INSTANCE:Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1;

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-virtual {p0, p1, v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->retryIf(ILkotlin/jvm/functions/Function3;)V

    return-void
.end method

.method public final setDelay$ktor_client_core(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->delay:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setDelayMillis$ktor_client_core(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$DelayContext;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->delayMillis:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setMaxRetries(I)V
    .locals 0

    .line 116
    iput p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->maxRetries:I

    return-void
.end method

.method public final setModifyRequest$ktor_client_core(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$ModifyRequestContext;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->modifyRequest:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setShouldRetry$ktor_client_core(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "-",
            "Lio/ktor/client/request/HttpRequest;",
            "-",
            "Lio/ktor/client/statement/HttpResponse;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->shouldRetry:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setShouldRetryOnException$ktor_client_core(Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lio/ktor/client/plugins/HttpRequestRetry$ShouldRetryContext;",
            "-",
            "Lio/ktor/client/request/HttpRequestBuilder;",
            "-",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->shouldRetryOnException:Lkotlin/jvm/functions/Function3;

    return-void
.end method
