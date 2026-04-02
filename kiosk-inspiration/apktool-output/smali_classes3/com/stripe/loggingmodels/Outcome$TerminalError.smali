.class public final Lcom/stripe/loggingmodels/Outcome$TerminalError;
.super Ljava/lang/Object;
.source "Outcome.kt"

# interfaces
.implements Lcom/stripe/loggingmodels/Outcome$Failure;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/loggingmodels/Outcome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerminalError"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0008H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/stripe/loggingmodels/Outcome$TerminalError;",
        "Lcom/stripe/loggingmodels/Outcome$Failure;",
        "errorCode",
        "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
        "(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V",
        "getErrorCode",
        "()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;",
        "outcome",
        "",
        "getOutcome",
        "()Ljava/lang/String;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field private final errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/loggingmodels/Outcome$TerminalError;->errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/loggingmodels/Outcome$TerminalError;Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;ILjava/lang/Object;)Lcom/stripe/loggingmodels/Outcome$TerminalError;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/loggingmodels/Outcome$TerminalError;->errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/loggingmodels/Outcome$TerminalError;->copy(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)Lcom/stripe/loggingmodels/Outcome$TerminalError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Outcome$TerminalError;->errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)Lcom/stripe/loggingmodels/Outcome$TerminalError;
    .locals 1

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/loggingmodels/Outcome$TerminalError;

    invoke-direct {v0, p1}, Lcom/stripe/loggingmodels/Outcome$TerminalError;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/loggingmodels/Outcome$TerminalError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/loggingmodels/Outcome$TerminalError;

    iget-object v1, p0, Lcom/stripe/loggingmodels/Outcome$TerminalError;->errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    iget-object p1, p1, Lcom/stripe/loggingmodels/Outcome$TerminalError;->errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-eq v1, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/stripe/loggingmodels/Outcome$TerminalError;->errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    return-object v0
.end method

.method public getOutcome()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/stripe/loggingmodels/Outcome$TerminalError;->errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->toLogString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/loggingmodels/Outcome$TerminalError;->errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TerminalError(errorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/loggingmodels/Outcome$TerminalError;->errorCode:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
