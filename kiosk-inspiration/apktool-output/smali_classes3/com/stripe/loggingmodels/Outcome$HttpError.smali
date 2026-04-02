.class public abstract Lcom/stripe/loggingmodels/Outcome$HttpError;
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
    name = "HttpError"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/loggingmodels/Outcome$HttpError$BadRequest;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$Companion;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$Conflict;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$Error;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$ErrorUnknownState;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$Forbidden;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$MethodNotAllowed;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$NotFound;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$ParseError;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$RequestFailed;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$ServerError;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$TooManyRequests;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$Unauthorized;,
        Lcom/stripe/loggingmodels/Outcome$HttpError$UnknownStatus;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000 \u00082\u00020\u0001:\u000e\u0007\u0008\t\n\u000b\u000c\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014B\u000f\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u0082\u0001\r\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Outcome$HttpError;",
        "Lcom/stripe/loggingmodels/Outcome$Failure;",
        "outcome",
        "",
        "(Ljava/lang/String;)V",
        "getOutcome",
        "()Ljava/lang/String;",
        "BadRequest",
        "Companion",
        "Conflict",
        "Error",
        "ErrorUnknownState",
        "Forbidden",
        "MethodNotAllowed",
        "NotFound",
        "ParseError",
        "RequestFailed",
        "ServerError",
        "TooManyRequests",
        "Unauthorized",
        "UnknownStatus",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$BadRequest;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$Conflict;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$Error;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$ErrorUnknownState;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$Forbidden;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$MethodNotAllowed;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$NotFound;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$ParseError;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$RequestFailed;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$ServerError;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$TooManyRequests;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$Unauthorized;",
        "Lcom/stripe/loggingmodels/Outcome$HttpError$UnknownStatus;",
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
.field public static final Companion:Lcom/stripe/loggingmodels/Outcome$HttpError$Companion;


# instance fields
.field private final outcome:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/loggingmodels/Outcome$HttpError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/loggingmodels/Outcome$HttpError$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/loggingmodels/Outcome$HttpError;->Companion:Lcom/stripe/loggingmodels/Outcome$HttpError$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/loggingmodels/Outcome$HttpError;->outcome:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/stripe/loggingmodels/Outcome$HttpError;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOutcome()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/stripe/loggingmodels/Outcome$HttpError;->outcome:Ljava/lang/String;

    return-object v0
.end method
