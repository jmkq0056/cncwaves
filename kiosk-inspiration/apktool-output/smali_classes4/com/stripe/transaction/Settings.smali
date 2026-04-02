.class public final Lcom/stripe/transaction/Settings;
.super Ljava/lang/Object;
.source "Settings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/transaction/Settings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/transaction/Settings;",
        "",
        "emvTransactionType",
        "Lcom/stripe/hardware/emv/EmvTransactionType;",
        "allowIncrementNumOfCanceledPayments",
        "",
        "(Lcom/stripe/hardware/emv/EmvTransactionType;Z)V",
        "getAllowIncrementNumOfCanceledPayments",
        "()Z",
        "getEmvTransactionType",
        "()Lcom/stripe/hardware/emv/EmvTransactionType;",
        "component1",
        "component2",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/transaction/Settings$Companion;

.field private static final DEFAULT:Lcom/stripe/transaction/Settings;


# instance fields
.field private final allowIncrementNumOfCanceledPayments:Z

.field private final emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/transaction/Settings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/transaction/Settings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/transaction/Settings;->Companion:Lcom/stripe/transaction/Settings$Companion;

    .line 12
    new-instance v0, Lcom/stripe/transaction/Settings;

    sget-object v1, Lcom/stripe/hardware/emv/EmvTransactionType;->QUICK:Lcom/stripe/hardware/emv/EmvTransactionType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/stripe/transaction/Settings;-><init>(Lcom/stripe/hardware/emv/EmvTransactionType;Z)V

    sput-object v0, Lcom/stripe/transaction/Settings;->DEFAULT:Lcom/stripe/transaction/Settings;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/hardware/emv/EmvTransactionType;Z)V
    .locals 1

    const-string v0, "emvTransactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/stripe/transaction/Settings;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    .line 8
    iput-boolean p2, p0, Lcom/stripe/transaction/Settings;->allowIncrementNumOfCanceledPayments:Z

    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lcom/stripe/transaction/Settings;
    .locals 1

    .line 6
    sget-object v0, Lcom/stripe/transaction/Settings;->DEFAULT:Lcom/stripe/transaction/Settings;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/transaction/Settings;Lcom/stripe/hardware/emv/EmvTransactionType;ZILjava/lang/Object;)Lcom/stripe/transaction/Settings;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/transaction/Settings;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/stripe/transaction/Settings;->allowIncrementNumOfCanceledPayments:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/transaction/Settings;->copy(Lcom/stripe/hardware/emv/EmvTransactionType;Z)Lcom/stripe/transaction/Settings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/hardware/emv/EmvTransactionType;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/Settings;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/Settings;->allowIncrementNumOfCanceledPayments:Z

    return v0
.end method

.method public final copy(Lcom/stripe/hardware/emv/EmvTransactionType;Z)Lcom/stripe/transaction/Settings;
    .locals 1

    const-string v0, "emvTransactionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/transaction/Settings;

    invoke-direct {v0, p1, p2}, Lcom/stripe/transaction/Settings;-><init>(Lcom/stripe/hardware/emv/EmvTransactionType;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/transaction/Settings;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/transaction/Settings;

    iget-object v1, p0, Lcom/stripe/transaction/Settings;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    iget-object v3, p1, Lcom/stripe/transaction/Settings;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/stripe/transaction/Settings;->allowIncrementNumOfCanceledPayments:Z

    iget-boolean p1, p1, Lcom/stripe/transaction/Settings;->allowIncrementNumOfCanceledPayments:Z

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAllowIncrementNumOfCanceledPayments()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/stripe/transaction/Settings;->allowIncrementNumOfCanceledPayments:Z

    return v0
.end method

.method public final getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/stripe/transaction/Settings;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/transaction/Settings;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    invoke-virtual {v0}, Lcom/stripe/hardware/emv/EmvTransactionType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/Settings;->allowIncrementNumOfCanceledPayments:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Settings(emvTransactionType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/transaction/Settings;->emvTransactionType:Lcom/stripe/hardware/emv/EmvTransactionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allowIncrementNumOfCanceledPayments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/Settings;->allowIncrementNumOfCanceledPayments:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
