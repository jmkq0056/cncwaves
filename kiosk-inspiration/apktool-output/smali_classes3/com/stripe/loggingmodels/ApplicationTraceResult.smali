.class public Lcom/stripe/loggingmodels/ApplicationTraceResult;
.super Ljava/lang/Object;
.source "ApplicationTraceResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;,
        Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0016\u0018\u0000 \u00162\u00020\u0001:\u0002\u0015\u0016B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\tR\u0018\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "",
        "outcome",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;",
        "exception",
        "",
        "errorMessage",
        "",
        "errorCode",
        "(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V",
        "getErrorCode",
        "()Ljava/lang/String;",
        "getErrorMessage",
        "getException",
        "()Ljava/lang/Throwable;",
        "metricOutcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "getMetricOutcome",
        "()Lcom/stripe/loggingmodels/Outcome;",
        "getOutcome",
        "()Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;",
        "ApplicationTraceOutcome",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;


# instance fields
.field private final errorCode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {}
        value = "error_code"
    .end annotation
.end field

.field private final errorMessage:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {}
        value = "error_message"
    .end annotation
.end field

.field private final transient exception:Ljava/lang/Throwable;

.field private final outcome:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->Companion:Lcom/stripe/loggingmodels/ApplicationTraceResult$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "outcome"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->outcome:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    .line 15
    iput-object p2, p0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->exception:Ljava/lang/Throwable;

    .line 18
    iput-object p3, p0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->errorMessage:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->errorCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    if-eqz p2, :cond_2

    .line 22
    const-string p4, "error"

    goto :goto_0

    :cond_2
    move-object p4, v0

    .line 12
    :cond_3
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/loggingmodels/ApplicationTraceResult;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getErrorCode()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMetricOutcome()Lcom/stripe/loggingmodels/Outcome;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->outcome:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    invoke-static {v0}, Lcom/stripe/loggingmodels/ApplicationTraceOutcomeExtKt;->toOutcome(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;)Lcom/stripe/loggingmodels/Outcome;

    move-result-object v0

    return-object v0
.end method

.method public final getOutcome()Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/loggingmodels/ApplicationTraceResult;->outcome:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    return-object v0
.end method
