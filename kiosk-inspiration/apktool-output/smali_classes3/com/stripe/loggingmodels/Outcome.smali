.class public interface abstract Lcom/stripe/loggingmodels/Outcome;
.super Ljava/lang/Object;
.source "Outcome.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/loggingmodels/Outcome$Canceled;,
        Lcom/stripe/loggingmodels/Outcome$CotsError;,
        Lcom/stripe/loggingmodels/Outcome$Failure;,
        Lcom/stripe/loggingmodels/Outcome$GenericError;,
        Lcom/stripe/loggingmodels/Outcome$HttpError;,
        Lcom/stripe/loggingmodels/Outcome$InternalTerminalError;,
        Lcom/stripe/loggingmodels/Outcome$Interrupted;,
        Lcom/stripe/loggingmodels/Outcome$Ok;,
        Lcom/stripe/loggingmodels/Outcome$RpcApplicationError;,
        Lcom/stripe/loggingmodels/Outcome$RpcTransportError;,
        Lcom/stripe/loggingmodels/Outcome$Success;,
        Lcom/stripe/loggingmodels/Outcome$TerminalError;,
        Lcom/stripe/loggingmodels/Outcome$UpdatesError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\r\u0006\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u0082\u0001\u0002\u0013\u0014\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0015\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Outcome;",
        "",
        "outcome",
        "",
        "getOutcome",
        "()Ljava/lang/String;",
        "Canceled",
        "CotsError",
        "Failure",
        "GenericError",
        "HttpError",
        "InternalTerminalError",
        "Interrupted",
        "Ok",
        "RpcApplicationError",
        "RpcTransportError",
        "Success",
        "TerminalError",
        "UpdatesError",
        "Lcom/stripe/loggingmodels/Outcome$Failure;",
        "Lcom/stripe/loggingmodels/Outcome$Success;",
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


# virtual methods
.method public abstract getOutcome()Ljava/lang/String;
.end method
