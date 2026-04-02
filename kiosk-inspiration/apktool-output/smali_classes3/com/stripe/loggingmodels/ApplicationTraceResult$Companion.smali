.class public final Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;
.super Ljava/lang/Object;
.source "ApplicationTraceResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/ApplicationTraceResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0008J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0004J\u0006\u0010\u000b\u001a\u00020\u0004\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;",
        "",
        "()V",
        "canceled",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "t",
        "",
        "message",
        "",
        "failure",
        "interrupted",
        "success",
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
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;-><init>()V

    return-void
.end method

.method public static synthetic canceled$default(Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 48
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;->canceled(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final canceled(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 7

    .line 49
    new-instance v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    sget-object v1, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->CANCELED:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    move-object v3, p2

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/stripe/loggingmodels/ApplicationTraceResult;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final failure(Ljava/lang/String;)Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 8

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->FAILURE:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const/16 v6, 0xa

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/loggingmodels/ApplicationTraceResult;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final failure(Ljava/lang/Throwable;)Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 8

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v1, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->FAILURE:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/loggingmodels/ApplicationTraceResult;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final interrupted()Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 7

    .line 53
    new-instance v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    sget-object v1, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->INTERRUPTED:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/loggingmodels/ApplicationTraceResult;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final success()Lcom/stripe/loggingmodels/ApplicationTraceResult;
    .locals 7

    .line 37
    new-instance v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;

    sget-object v1, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->SUCCESS:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/loggingmodels/ApplicationTraceResult;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
