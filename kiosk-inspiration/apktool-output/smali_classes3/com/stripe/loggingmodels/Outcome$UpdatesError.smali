.class public abstract Lcom/stripe/loggingmodels/Outcome$UpdatesError;
.super Ljava/lang/Object;
.source "Outcome.kt"

# interfaces
.implements Lcom/stripe/loggingmodels/Outcome$Failure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/Outcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UpdatesError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/loggingmodels/Outcome$UpdatesError$BatteryLowError;,
        Lcom/stripe/loggingmodels/Outcome$UpdatesError$Canceled;,
        Lcom/stripe/loggingmodels/Outcome$UpdatesError$IntegrityError;,
        Lcom/stripe/loggingmodels/Outcome$UpdatesError$NoNetworkError;,
        Lcom/stripe/loggingmodels/Outcome$UpdatesError$NotConnectedToReader;,
        Lcom/stripe/loggingmodels/Outcome$UpdatesError$ReaderError;,
        Lcom/stripe/loggingmodels/Outcome$UpdatesError$ReaderNetworkError;,
        Lcom/stripe/loggingmodels/Outcome$UpdatesError$ServerError;,
        Lcom/stripe/loggingmodels/Outcome$UpdatesError$Tampered;,
        Lcom/stripe/loggingmodels/Outcome$UpdatesError$UnexpectedError;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\n\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\n\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Outcome$UpdatesError;",
        "Lcom/stripe/loggingmodels/Outcome$Failure;",
        "outcome",
        "",
        "(Ljava/lang/String;)V",
        "getOutcome",
        "()Ljava/lang/String;",
        "BatteryLowError",
        "Canceled",
        "IntegrityError",
        "NoNetworkError",
        "NotConnectedToReader",
        "ReaderError",
        "ReaderNetworkError",
        "ServerError",
        "Tampered",
        "UnexpectedError",
        "Lcom/stripe/loggingmodels/Outcome$UpdatesError$BatteryLowError;",
        "Lcom/stripe/loggingmodels/Outcome$UpdatesError$Canceled;",
        "Lcom/stripe/loggingmodels/Outcome$UpdatesError$IntegrityError;",
        "Lcom/stripe/loggingmodels/Outcome$UpdatesError$NoNetworkError;",
        "Lcom/stripe/loggingmodels/Outcome$UpdatesError$NotConnectedToReader;",
        "Lcom/stripe/loggingmodels/Outcome$UpdatesError$ReaderError;",
        "Lcom/stripe/loggingmodels/Outcome$UpdatesError$ReaderNetworkError;",
        "Lcom/stripe/loggingmodels/Outcome$UpdatesError$ServerError;",
        "Lcom/stripe/loggingmodels/Outcome$UpdatesError$Tampered;",
        "Lcom/stripe/loggingmodels/Outcome$UpdatesError$UnexpectedError;",
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


# instance fields
.field private final outcome:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/loggingmodels/Outcome$UpdatesError;->outcome:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/loggingmodels/Outcome$UpdatesError;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOutcome()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/stripe/loggingmodels/Outcome$UpdatesError;->outcome:Ljava/lang/String;

    return-object v0
.end method
