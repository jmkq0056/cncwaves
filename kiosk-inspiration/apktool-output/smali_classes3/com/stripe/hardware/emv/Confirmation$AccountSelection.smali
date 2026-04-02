.class public final Lcom/stripe/hardware/emv/Confirmation$AccountSelection;
.super Lcom/stripe/hardware/emv/Confirmation;
.source "Confirmation.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/hardware/emv/Confirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AccountSelection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/hardware/emv/Confirmation$AccountSelection$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0013\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u000f\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u0019\u0010\t\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/stripe/hardware/emv/Confirmation$AccountSelection;",
        "Lcom/stripe/hardware/emv/Confirmation;",
        "accounts",
        "",
        "Lcom/stripe/hardware/emv/AccountType;",
        "(Ljava/util/List;)V",
        "getAccounts",
        "()Ljava/util/List;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field public static final Companion:Lcom/stripe/hardware/emv/Confirmation$AccountSelection$Companion;

.field private static final INTERAC_ACCOUNT_SELECTION:Lcom/stripe/hardware/emv/Confirmation$AccountSelection;


# instance fields
.field private final accounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/hardware/emv/Confirmation$AccountSelection$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->Companion:Lcom/stripe/hardware/emv/Confirmation$AccountSelection$Companion;

    .line 14
    new-instance v0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;

    const/4 v1, 0x2

    .line 16
    new-array v1, v1, [Lcom/stripe/hardware/emv/AccountType;

    const/4 v2, 0x0

    sget-object v3, Lcom/stripe/hardware/emv/AccountType;->CHECKING:Lcom/stripe/hardware/emv/AccountType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 17
    sget-object v3, Lcom/stripe/hardware/emv/AccountType;->SAVINGS:Lcom/stripe/hardware/emv/AccountType;

    aput-object v3, v1, v2

    .line 15
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;-><init>(Ljava/util/List;)V

    sput-object v0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->INTERAC_ACCOUNT_SELECTION:Lcom/stripe/hardware/emv/Confirmation$AccountSelection;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;)V"
        }
    .end annotation

    const-string v0, "accounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lcom/stripe/hardware/emv/Confirmation;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->accounts:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getINTERAC_ACCOUNT_SELECTION$cp()Lcom/stripe/hardware/emv/Confirmation$AccountSelection;
    .locals 1

    .line 12
    sget-object v0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->INTERAC_ACCOUNT_SELECTION:Lcom/stripe/hardware/emv/Confirmation$AccountSelection;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/hardware/emv/Confirmation$AccountSelection;Ljava/util/List;ILjava/lang/Object;)Lcom/stripe/hardware/emv/Confirmation$AccountSelection;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->accounts:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->copy(Ljava/util/List;)Lcom/stripe/hardware/emv/Confirmation$AccountSelection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->accounts:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/util/List;)Lcom/stripe/hardware/emv/Confirmation$AccountSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;)",
            "Lcom/stripe/hardware/emv/Confirmation$AccountSelection;"
        }
    .end annotation

    const-string v0, "accounts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;

    invoke-direct {v0, p1}, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;

    iget-object v1, p0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->accounts:Ljava/util/List;

    iget-object p1, p1, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->accounts:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getAccounts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/hardware/emv/AccountType;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->accounts:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->accounts:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AccountSelection(accounts="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/hardware/emv/Confirmation$AccountSelection;->accounts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
