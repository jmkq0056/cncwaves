.class public final Lcom/stripe/offlinemode/forwarding/HaltForwardingException$FailedToFetchCredentials;
.super Lcom/stripe/offlinemode/forwarding/HaltForwardingException;
.source "HaltForwardingException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/offlinemode/forwarding/HaltForwardingException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FailedToFetchCredentials"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0016\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/stripe/offlinemode/forwarding/HaltForwardingException$FailedToFetchCredentials;",
        "Lcom/stripe/offlinemode/forwarding/HaltForwardingException;",
        "cause",
        "",
        "(Ljava/lang/Throwable;)V",
        "getCause",
        "()Ljava/lang/Throwable;",
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


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 2

    .line 17
    const-string v0, "Halt forwarding offline payments, failed to fetch credentials. Will reattempt on next network transition."

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0, p1, v0, v1}, Lcom/stripe/offlinemode/forwarding/HaltForwardingException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/HaltForwardingException$FailedToFetchCredentials;->cause:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/HaltForwardingException$FailedToFetchCredentials;->cause:Ljava/lang/Throwable;

    return-object v0
.end method
