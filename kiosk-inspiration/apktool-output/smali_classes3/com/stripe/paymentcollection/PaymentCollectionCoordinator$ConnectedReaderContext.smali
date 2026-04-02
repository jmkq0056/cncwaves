.class public final Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;
.super Ljava/lang/Object;
.source "PaymentCollectionCoordinator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/paymentcollection/PaymentCollectionCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectedReaderContext"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u000c\u001a\u00020\rH\u00d6\u0001J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;",
        "",
        "listener",
        "Lcom/stripe/paymentcollection/PaymentCollectionListener;",
        "(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V",
        "getListener",
        "()Lcom/stripe/paymentcollection/PaymentCollectionListener;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;


# direct methods
.method public constructor <init>(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1409
    iput-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;->listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;Lcom/stripe/paymentcollection/PaymentCollectionListener;ILjava/lang/Object;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;->listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;->copy(Lcom/stripe/paymentcollection/PaymentCollectionListener;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/paymentcollection/PaymentCollectionListener;
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;->listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    return-object v0
.end method

.method public final copy(Lcom/stripe/paymentcollection/PaymentCollectionListener;)Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;-><init>(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;->listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    iget-object p1, p1, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;->listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getListener()Lcom/stripe/paymentcollection/PaymentCollectionListener;
    .locals 1

    .line 1409
    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;->listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;->listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectedReaderContext(listener="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/paymentcollection/PaymentCollectionCoordinator$ConnectedReaderContext;->listener:Lcom/stripe/paymentcollection/PaymentCollectionListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
