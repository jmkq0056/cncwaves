.class public final Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;
.super Ljava/lang/Object;
.source "LogLevelConverters.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0004H\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/stripe/core/stripeterminal/storage/LogLevelConverters;",
        "",
        "()V",
        "fromLogLevel",
        "",
        "logLevel",
        "Lcom/stripe/loggingmodels/LogLevel;",
        "toLogLevel",
        "logLevelInt",
        "stripeterminal_release"
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
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromLogLevel(Lcom/stripe/loggingmodels/LogLevel;)I
    .locals 1

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/stripe/loggingmodels/LogLevel;->ordinal()I

    move-result p1

    return p1
.end method

.method public final toLogLevel(I)Lcom/stripe/loggingmodels/LogLevel;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 18
    sget-object p1, Lcom/stripe/loggingmodels/LogLevel;->VERBOSE:Lcom/stripe/loggingmodels/LogLevel;

    return-object p1

    .line 17
    :cond_0
    sget-object p1, Lcom/stripe/loggingmodels/LogLevel;->INFO:Lcom/stripe/loggingmodels/LogLevel;

    return-object p1

    .line 16
    :cond_1
    sget-object p1, Lcom/stripe/loggingmodels/LogLevel;->WARNING:Lcom/stripe/loggingmodels/LogLevel;

    return-object p1

    .line 15
    :cond_2
    sget-object p1, Lcom/stripe/loggingmodels/LogLevel;->ERROR:Lcom/stripe/loggingmodels/LogLevel;

    return-object p1

    .line 14
    :cond_3
    sget-object p1, Lcom/stripe/loggingmodels/LogLevel;->NONE:Lcom/stripe/loggingmodels/LogLevel;

    return-object p1
.end method
