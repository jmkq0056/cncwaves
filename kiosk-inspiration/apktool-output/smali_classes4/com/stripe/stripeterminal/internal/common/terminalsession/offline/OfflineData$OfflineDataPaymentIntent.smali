.class public final Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;
.super Ljava/lang/Object;
.source "OfflineData.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfflineDataPaymentIntent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0008H\u00c6\u0003J\u000f\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u00c6\u0003JA\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u00082\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020 H\u00d6\u0001J\t\u0010!\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0010\u00a8\u0006\""
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData;",
        "offlineId",
        "",
        "amount",
        "",
        "currency",
        "deleted",
        "",
        "events",
        "",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflinePayment;",
        "(Ljava/lang/String;JLjava/lang/String;ZLjava/util/List;)V",
        "getAmount",
        "()J",
        "getCurrency",
        "()Ljava/lang/String;",
        "getDeleted",
        "()Z",
        "getEvents",
        "()Ljava/util/List;",
        "getOfflineId",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "terminalsession_release"
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
.field private final amount:J

.field private final currency:Ljava/lang/String;

.field private final deleted:Z

.field private final events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflinePayment;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflinePayment;",
            ">;)V"
        }
    .end annotation

    const-string v0, "offlineId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->offlineId:Ljava/lang/String;

    .line 23
    iput-wide p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->amount:J

    .line 24
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->currency:Ljava/lang/String;

    .line 25
    iput-boolean p5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->deleted:Z

    .line 26
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->events:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;Ljava/lang/String;JLjava/lang/String;ZLjava/util/List;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->offlineId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-wide p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->amount:J

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->currency:Ljava/lang/String;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-boolean p5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->deleted:Z

    :cond_3
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_4

    iget-object p6, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->events:Ljava/util/List;

    :cond_4
    move p7, p5

    move-object p8, p6

    move-object p6, p4

    move-wide p4, p2

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p8}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->copy(Ljava/lang/String;JLjava/lang/String;ZLjava/util/List;)Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->offlineId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->amount:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->deleted:Z

    return v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflinePayment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->events:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JLjava/lang/String;ZLjava/util/List;)Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflinePayment;",
            ">;)",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;"
        }
    .end annotation

    const-string v0, "offlineId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "events"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;-><init>(Ljava/lang/String;JLjava/lang/String;ZLjava/util/List;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->offlineId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->offlineId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->amount:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->deleted:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->deleted:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->events:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->events:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAmount()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->amount:J

    return-wide v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeleted()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->deleted:Z

    return v0
.end method

.method public final getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/SimpleOfflinePayment;",
            ">;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->events:Ljava/util/List;

    return-object v0
.end method

.method public final getOfflineId()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->offlineId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->offlineId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->deleted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->events:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineDataPaymentIntent(offlineId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->offlineId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->amount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->currency:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->deleted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", events="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;->events:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
