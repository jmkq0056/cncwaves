.class public final Lcom/stripe/offlinemode/forwarding/ForwardingApiException;
.super Ljava/lang/Throwable;
.source "ForwardingApiException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0005H\u00c6\u0003J1\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00052\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\tR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/ForwardingApiException;",
        "",
        "terminalException",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "isTransient",
        "",
        "isCredentialError",
        "isMalformedRequestError",
        "(Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZ)V",
        "()Z",
        "getTerminalException",
        "()Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "offlinemode_release"
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
.field private final isCredentialError:Z

.field private final isMalformedRequestError:Z

.field private final isTransient:Z

.field private final terminalException:Lcom/stripe/stripeterminal/external/models/TerminalException;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZ)V
    .locals 1

    const-string v0, "terminalException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/Throwable;)V

    .line 14
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->terminalException:Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 15
    iput-boolean p2, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isTransient:Z

    .line 16
    iput-boolean p3, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isCredentialError:Z

    .line 17
    iput-boolean p4, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isMalformedRequestError:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/offlinemode/forwarding/ForwardingApiException;Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZILjava/lang/Object;)Lcom/stripe/offlinemode/forwarding/ForwardingApiException;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->terminalException:Lcom/stripe/stripeterminal/external/models/TerminalException;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-boolean p2, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isTransient:Z

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-boolean p3, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isCredentialError:Z

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isMalformedRequestError:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->copy(Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZ)Lcom/stripe/offlinemode/forwarding/ForwardingApiException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->terminalException:Lcom/stripe/stripeterminal/external/models/TerminalException;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isTransient:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isCredentialError:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isMalformedRequestError:Z

    return v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZ)Lcom/stripe/offlinemode/forwarding/ForwardingApiException;
    .locals 1

    const-string v0, "terminalException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalException;ZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->terminalException:Lcom/stripe/stripeterminal/external/models/TerminalException;

    iget-object v3, p1, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->terminalException:Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isTransient:Z

    iget-boolean v3, p1, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isTransient:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isCredentialError:Z

    iget-boolean v3, p1, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isCredentialError:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isMalformedRequestError:Z

    iget-boolean p1, p1, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isMalformedRequestError:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getTerminalException()Lcom/stripe/stripeterminal/external/models/TerminalException;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->terminalException:Lcom/stripe/stripeterminal/external/models/TerminalException;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->terminalException:Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalException;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isTransient:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isCredentialError:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isMalformedRequestError:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isCredentialError()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isCredentialError:Z

    return v0
.end method

.method public final isMalformedRequestError()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isMalformedRequestError:Z

    return v0
.end method

.method public final isTransient()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isTransient:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ForwardingApiException(terminalException="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->terminalException:Lcom/stripe/stripeterminal/external/models/TerminalException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTransient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isTransient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isCredentialError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isCredentialError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMalformedRequestError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/offlinemode/forwarding/ForwardingApiException;->isMalformedRequestError:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
