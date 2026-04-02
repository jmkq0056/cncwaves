.class public final Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;
.super Ljava/lang/Object;
.source "PaymentMethodCollectionType.kt"

# interfaces
.implements Lcom/stripe/transaction/PaymentMethodCollectionType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/transaction/PaymentMethodCollectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StrongCustomerAuthentication"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001#B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\t\u0010\u0017\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u000bH\u00c6\u0003J=\u0010\u001c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010\u001d\u001a\u00020\u000b2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00d6\u0003J\t\u0010 \u001a\u00020!H\u00d6\u0001J\t\u0010\"\u001a\u00020\u0003H\u00d6\u0001R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\n\u001a\u00020\u000bX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006$"
    }
    d2 = {
        "Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "intentId",
        "",
        "offlineDetails",
        "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "requirement",
        "Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;",
        "enableCustomerCancellation",
        "",
        "(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;Z)V",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getEnableCustomerCancellation",
        "()Z",
        "getIntentId",
        "()Ljava/lang/String;",
        "getOfflineDetails",
        "()Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
        "getRequirement",
        "()Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;",
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
        "Requirement",
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
.field private final amount:Lcom/stripe/currency/Amount;

.field private final enableCustomerCancellation:Z

.field private final intentId:Ljava/lang/String;

.field private final offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

.field private final requirement:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;Z)V
    .locals 1

    const-string v0, "intentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requirement"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->intentId:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    .line 91
    iput-object p3, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->amount:Lcom/stripe/currency/Amount;

    .line 92
    iput-object p4, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->requirement:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    .line 93
    iput-boolean p5, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->enableCustomerCancellation:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;ZILjava/lang/Object;)Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->intentId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->amount:Lcom/stripe/currency/Amount;

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    iget-object p4, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->requirement:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    iget-boolean p5, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->enableCustomerCancellation:Z

    :cond_4
    move-object p6, p4

    move p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->copy(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;Z)Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->intentId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/OfflineDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    return-object v0
.end method

.method public final component3()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component4()Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->requirement:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->enableCustomerCancellation:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;Z)Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;
    .locals 7

    const-string v0, "intentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requirement"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;-><init>(Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;Lcom/stripe/currency/Amount;Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;Z)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->intentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->intentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->requirement:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->requirement:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->enableCustomerCancellation:Z

    iget-boolean p1, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->enableCustomerCancellation:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public getEnableCustomerCancellation()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getIntentId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->intentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    return-object v0
.end method

.method public final getRequirement()Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->requirement:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->intentId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->requirement:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    invoke-virtual {v1}, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->enableCustomerCancellation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StrongCustomerAuthentication(intentId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->intentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlineDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", requirement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->requirement:Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication$Requirement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableCustomerCancellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$StrongCustomerAuthentication;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
