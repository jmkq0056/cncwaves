.class public final Lcom/stripe/offlinemode/storage/OfflineEntityStats;
.super Ljava/lang/Object;
.source "OfflineEntityStats.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0002\u0010\tJ\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u0015\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u00c6\u0003J3\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0014\u0008\u0002\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0007H\u00d6\u0001R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
        "",
        "setupIntentCount",
        "",
        "paymentIntentCount",
        "paymentIntentAmountsByCurrency",
        "",
        "",
        "",
        "(IILjava/util/Map;)V",
        "getPaymentIntentAmountsByCurrency",
        "()Ljava/util/Map;",
        "getPaymentIntentCount",
        "()I",
        "getSetupIntentCount",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final paymentIntentAmountsByCurrency:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentIntentCount:I

.field private final setupIntentCount:I


# direct methods
.method public constructor <init>(IILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-string v0, "paymentIntentAmountsByCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->setupIntentCount:I

    .line 8
    iput p2, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentCount:I

    .line 9
    iput-object p3, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentAmountsByCurrency:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/offlinemode/storage/OfflineEntityStats;IILjava/util/Map;ILjava/lang/Object;)Lcom/stripe/offlinemode/storage/OfflineEntityStats;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->setupIntentCount:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentCount:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentAmountsByCurrency:Ljava/util/Map;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->copy(IILjava/util/Map;)Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->setupIntentCount:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentCount:I

    return v0
.end method

.method public final component3()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentAmountsByCurrency:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(IILjava/util/Map;)Lcom/stripe/offlinemode/storage/OfflineEntityStats;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/stripe/offlinemode/storage/OfflineEntityStats;"
        }
    .end annotation

    const-string v0, "paymentIntentAmountsByCurrency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/OfflineEntityStats;-><init>(IILjava/util/Map;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    iget v1, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->setupIntentCount:I

    iget v3, p1, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->setupIntentCount:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentCount:I

    iget v3, p1, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentCount:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentAmountsByCurrency:Ljava/util/Map;

    iget-object p1, p1, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentAmountsByCurrency:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getPaymentIntentAmountsByCurrency()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentAmountsByCurrency:Ljava/util/Map;

    return-object v0
.end method

.method public final getPaymentIntentCount()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentCount:I

    return v0
.end method

.method public final getSetupIntentCount()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->setupIntentCount:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->setupIntentCount:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentAmountsByCurrency:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineEntityStats(setupIntentCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->setupIntentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentIntentCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", paymentIntentAmountsByCurrency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;->paymentIntentAmountsByCurrency:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
