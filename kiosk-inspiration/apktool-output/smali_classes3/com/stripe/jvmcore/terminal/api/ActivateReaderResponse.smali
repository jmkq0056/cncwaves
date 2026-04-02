.class public final Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
.super Ljava/lang/Object;
.source "ActivateReaderResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0018\u00002\u00020\u0001B]\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0002\u0010\u000fR\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0011R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "",
        "accountId",
        "",
        "livemode",
        "",
        "readerId",
        "stripeSessionToken",
        "offlineStripeSessionToken",
        "rpcSessionToken",
        "connectionContextId",
        "canonicalReaderVersion",
        "",
        "location",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/model/merchant/ApiLocationPb;)V",
        "getAccountId",
        "()Ljava/lang/String;",
        "getCanonicalReaderVersion",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getConnectionContextId",
        "getLivemode",
        "()Z",
        "getLocation",
        "()Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "getOfflineStripeSessionToken",
        "getReaderId",
        "getRpcSessionToken",
        "getStripeSessionToken",
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
.field private final accountId:Ljava/lang/String;

.field private final canonicalReaderVersion:Ljava/lang/Long;

.field private final connectionContextId:Ljava/lang/String;

.field private final livemode:Z

.field private final location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

.field private final offlineStripeSessionToken:Ljava/lang/String;

.field private final readerId:Ljava/lang/String;

.field private final rpcSessionToken:Ljava/lang/String;

.field private final stripeSessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/model/merchant/ApiLocationPb;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->accountId:Ljava/lang/String;

    .line 8
    iput-boolean p2, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->livemode:Z

    .line 10
    iput-object p3, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->readerId:Ljava/lang/String;

    .line 12
    iput-object p4, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->stripeSessionToken:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->offlineStripeSessionToken:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->rpcSessionToken:Ljava/lang/String;

    .line 18
    iput-object p7, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->connectionContextId:Ljava/lang/String;

    .line 20
    iput-object p8, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->canonicalReaderVersion:Ljava/lang/Long;

    .line 22
    iput-object p9, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    return-void
.end method


# virtual methods
.method public final getAccountId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCanonicalReaderVersion()Ljava/lang/Long;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->canonicalReaderVersion:Ljava/lang/Long;

    return-object v0
.end method

.method public final getConnectionContextId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->connectionContextId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLivemode()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->livemode:Z

    return v0
.end method

.method public final getLocation()Lcom/stripe/proto/model/merchant/ApiLocationPb;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    return-object v0
.end method

.method public final getOfflineStripeSessionToken()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->offlineStripeSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getReaderId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->readerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRpcSessionToken()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->rpcSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getStripeSessionToken()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;->stripeSessionToken:Ljava/lang/String;

    return-object v0
.end method
