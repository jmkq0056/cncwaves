.class public abstract Lcom/stripe/offlinemode/forwarding/HaltForwardingException;
.super Ljava/lang/Throwable;
.source "HaltForwardingException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/forwarding/HaltForwardingException$ExceededMaxRetries;,
        Lcom/stripe/offlinemode/forwarding/HaltForwardingException$FailedToFetchCredentials;,
        Lcom/stripe/offlinemode/forwarding/HaltForwardingException$TerminalIsOffline;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0003\n\u000b\u000cB\u001b\u0008\u0004\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u0082\u0001\u0003\r\u000e\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/HaltForwardingException;",
        "",
        "cause",
        "message",
        "",
        "(Ljava/lang/Throwable;Ljava/lang/String;)V",
        "getCause",
        "()Ljava/lang/Throwable;",
        "getMessage",
        "()Ljava/lang/String;",
        "ExceededMaxRetries",
        "FailedToFetchCredentials",
        "TerminalIsOffline",
        "Lcom/stripe/offlinemode/forwarding/HaltForwardingException$ExceededMaxRetries;",
        "Lcom/stripe/offlinemode/forwarding/HaltForwardingException$FailedToFetchCredentials;",
        "Lcom/stripe/offlinemode/forwarding/HaltForwardingException$TerminalIsOffline;",
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
.field private final cause:Ljava/lang/Throwable;

.field private final message:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/HaltForwardingException;->cause:Ljava/lang/Throwable;

    .line 8
    iput-object p2, p0, Lcom/stripe/offlinemode/forwarding/HaltForwardingException;->message:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/forwarding/HaltForwardingException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/HaltForwardingException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/HaltForwardingException;->message:Ljava/lang/String;

    return-object v0
.end method
