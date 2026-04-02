.class public final Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;
.super Ljava/lang/Object;
.source "AccountTypeSelectionModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B7\u0012\u0016\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0019\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u000bH\u00c6\u0003JC\u0010\u0019\u001a\u00020\u00002\u0018\u0008\u0002\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010\u001a\u001a\u00020\u000b2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\tH\u00d6\u0001R!\u0010\u0002\u001a\u0012\u0012\u0004\u0012\u00020\u00040\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;",
        "",
        "accountTypes",
        "Ljava/util/LinkedHashSet;",
        "Lcom/stripe/hardware/emv/AccountType;",
        "Lkotlin/collections/LinkedHashSet;",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "language",
        "",
        "enableCustomerCancellation",
        "",
        "(Ljava/util/LinkedHashSet;Lcom/stripe/currency/Amount;Ljava/lang/String;Z)V",
        "getAccountTypes",
        "()Ljava/util/LinkedHashSet;",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getEnableCustomerCancellation",
        "()Z",
        "getLanguage",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
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
.field private final accountTypes:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;"
        }
    .end annotation
.end field

.field private final amount:Lcom/stripe/currency/Amount;

.field private final enableCustomerCancellation:Z

.field private final language:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashSet;Lcom/stripe/currency/Amount;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string v0, "accountTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->accountTypes:Ljava/util/LinkedHashSet;

    .line 21
    iput-object p2, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->amount:Lcom/stripe/currency/Amount;

    .line 25
    iput-object p3, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->language:Ljava/lang/String;

    .line 30
    iput-boolean p4, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->enableCustomerCancellation:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;Ljava/util/LinkedHashSet;Lcom/stripe/currency/Amount;Ljava/lang/String;ZILjava/lang/Object;)Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->accountTypes:Ljava/util/LinkedHashSet;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->amount:Lcom/stripe/currency/Amount;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->language:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->enableCustomerCancellation:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->copy(Ljava/util/LinkedHashSet;Lcom/stripe/currency/Amount;Ljava/lang/String;Z)Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->accountTypes:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final component2()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->enableCustomerCancellation:Z

    return v0
.end method

.method public final copy(Ljava/util/LinkedHashSet;Lcom/stripe/currency/Amount;Ljava/lang/String;Z)Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashSet<",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;"
        }
    .end annotation

    const-string v0, "accountTypes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;-><init>(Ljava/util/LinkedHashSet;Lcom/stripe/currency/Amount;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->accountTypes:Ljava/util/LinkedHashSet;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->accountTypes:Ljava/util/LinkedHashSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->language:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->enableCustomerCancellation:Z

    iget-boolean p1, p1, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->enableCustomerCancellation:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getAccountTypes()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->accountTypes:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public final getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getEnableCustomerCancellation()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->accountTypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->language:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->enableCustomerCancellation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountTypeSelectionModel(accountTypes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->accountTypes:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->language:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableCustomerCancellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/hardware/paymentcollection/AccountTypeSelectionModel;->enableCustomerCancellation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
