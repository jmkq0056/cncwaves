.class public final Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;
.super Ljava/lang/Object;
.source "SdkResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\u0004J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0010J\u000e\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;",
        "",
        "()V",
        "canceled",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;",
        "failure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "success",
        "intent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "method",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "refund",
        "Lcom/stripe/stripeterminal/external/models/Refund;",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "common_publish"
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

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic canceled()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;
    .locals 10

    .line 111
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    sget-object v1, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->CANCELED:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const/16 v8, 0x7e

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic failure(Lcom/stripe/stripeterminal/external/models/TerminalException;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;
    .locals 11

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->FAILURE:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const/16 v9, 0x6e

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-direct/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic success()Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;
    .locals 10

    .line 101
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    sget-object v1, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->SUCCESS:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const/16 v8, 0x7e

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final synthetic success(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;
    .locals 11

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->SUCCESS:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const/16 v9, 0x7c

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic success(Lcom/stripe/stripeterminal/external/models/PaymentMethod;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;
    .locals 11

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->SUCCESS:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const/16 v9, 0x7a

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-direct/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic success(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;
    .locals 11

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->SUCCESS:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const/16 v9, 0x76

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, p1

    invoke-direct/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic success(Lcom/stripe/stripeterminal/external/models/Refund;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;
    .locals 11

    const-string v0, "refund"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->SUCCESS:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const/16 v9, 0x3e

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, p1

    invoke-direct/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public final synthetic success(Lcom/stripe/stripeterminal/external/models/SetupIntent;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;
    .locals 11

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    sget-object v2, Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;->SUCCESS:Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;

    const/16 v9, 0x5e

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v7, p1

    invoke-direct/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;-><init>(Lcom/stripe/loggingmodels/ApplicationTraceResult$ApplicationTraceOutcome;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/PaymentMethod;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/TerminalException;Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/Refund;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method
