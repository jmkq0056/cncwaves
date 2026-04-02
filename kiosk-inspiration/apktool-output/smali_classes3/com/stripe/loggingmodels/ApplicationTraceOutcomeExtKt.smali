.class public final Lcom/stripe/loggingmodels/ApplicationTraceOutcomeExtKt;
.super Ljava/lang/Object;
.source "ApplicationTraceOutcomeExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/loggingmodels/ApplicationTraceOutcomeExtKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "toOutcome",
        "Lcom/stripe/loggingmodels/Outcome;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;",
        "public_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final toOutcome(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;)Lcom/stripe/loggingmodels/Outcome;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/stripe/loggingmodels/ApplicationTraceOutcomeExtKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 7
    sget-object p0, Lcom/stripe/loggingmodels/Outcome$Interrupted;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Interrupted;

    check-cast p0, Lcom/stripe/loggingmodels/Outcome;

    return-object p0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 6
    :cond_1
    sget-object p0, Lcom/stripe/loggingmodels/Outcome$Canceled;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Canceled;

    check-cast p0, Lcom/stripe/loggingmodels/Outcome;

    return-object p0

    .line 5
    :cond_2
    sget-object p0, Lcom/stripe/loggingmodels/Outcome$GenericError;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$GenericError;

    check-cast p0, Lcom/stripe/loggingmodels/Outcome;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/stripe/loggingmodels/Outcome$Ok;->INSTANCE:Lcom/stripe/loggingmodels/Outcome$Ok;

    check-cast p0, Lcom/stripe/loggingmodels/Outcome;

    return-object p0
.end method
