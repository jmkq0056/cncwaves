.class public final Lcom/stripe/transaction/PaymentCollectionDeviceCapability;
.super Ljava/lang/Object;
.source "PaymentCollectionDeviceCapability.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BI\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0018\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0006H\u00c6\u0003J\u000f\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00c6\u0003JU\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u000e\u0008\u0002\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010 \u001a\u00020\u00032\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020#H\u00d6\u0001J\t\u0010$\u001a\u00020%H\u00d6\u0001R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u000b\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0011R\u0011\u0010\n\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0011R\u0011\u0010\u000c\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0011R\u0017\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;",
        "",
        "directlyControlsScreenInput",
        "",
        "supportExtendedTransaction",
        "checkForCardBehavior",
        "Lcom/stripe/hardware/emv/CheckForCardBehavior;",
        "supportedInterface",
        "",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "retryUponPinCancel",
        "quickEmvAutoResponse",
        "retryUponTerminate",
        "(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZ)V",
        "getCheckForCardBehavior",
        "()Lcom/stripe/hardware/emv/CheckForCardBehavior;",
        "getDirectlyControlsScreenInput",
        "()Z",
        "getQuickEmvAutoResponse",
        "getRetryUponPinCancel",
        "getRetryUponTerminate",
        "getSupportExtendedTransaction",
        "getSupportedInterface",
        "()Ljava/util/Set;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
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
.field private final checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

.field private final directlyControlsScreenInput:Z

.field private final quickEmvAutoResponse:Z

.field private final retryUponPinCancel:Z

.field private final retryUponTerminate:Z

.field private final supportExtendedTransaction:Z

.field private final supportedInterface:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/stripe/hardware/emv/CheckForCardBehavior;",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;ZZZ)V"
        }
    .end annotation

    const-string v0, "checkForCardBehavior"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportedInterface"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-boolean p1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->directlyControlsScreenInput:Z

    .line 19
    iput-boolean p2, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportExtendedTransaction:Z

    .line 25
    iput-object p3, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    .line 29
    iput-object p4, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportedInterface:Ljava/util/Set;

    .line 38
    iput-boolean p5, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponPinCancel:Z

    .line 47
    iput-boolean p6, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->quickEmvAutoResponse:Z

    .line 56
    iput-boolean p7, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponTerminate:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x10

    const/4 v0, 0x1

    if-eqz p9, :cond_0

    move p5, v0

    :cond_0
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_1

    move p6, v0

    :cond_1
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_2

    move p8, v0

    goto :goto_0

    :cond_2
    move p8, p7

    :goto_0
    move p7, p6

    move p6, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .line 7
    invoke-direct/range {p1 .. p8}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;-><init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/transaction/PaymentCollectionDeviceCapability;ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZILjava/lang/Object;)Lcom/stripe/transaction/PaymentCollectionDeviceCapability;
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-boolean p1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->directlyControlsScreenInput:Z

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-boolean p2, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportExtendedTransaction:Z

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    iget-object p3, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    iget-object p4, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportedInterface:Ljava/util/Set;

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    iget-boolean p5, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponPinCancel:Z

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    iget-boolean p6, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->quickEmvAutoResponse:Z

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    iget-boolean p7, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponTerminate:Z

    :cond_6
    move p8, p6

    move p9, p7

    move-object p6, p4

    move p7, p5

    move p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-virtual/range {p2 .. p9}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->copy(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZ)Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->directlyControlsScreenInput:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportExtendedTransaction:Z

    return v0
.end method

.method public final component3()Lcom/stripe/hardware/emv/CheckForCardBehavior;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    return-object v0
.end method

.method public final component4()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportedInterface:Ljava/util/Set;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponPinCancel:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->quickEmvAutoResponse:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponTerminate:Z

    return v0
.end method

.method public final copy(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZ)Lcom/stripe/transaction/PaymentCollectionDeviceCapability;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lcom/stripe/hardware/emv/CheckForCardBehavior;",
            "Ljava/util/Set<",
            "+",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;ZZZ)",
            "Lcom/stripe/transaction/PaymentCollectionDeviceCapability;"
        }
    .end annotation

    const-string v0, "checkForCardBehavior"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "supportedInterface"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;-><init>(ZZLcom/stripe/hardware/emv/CheckForCardBehavior;Ljava/util/Set;ZZZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->directlyControlsScreenInput:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->directlyControlsScreenInput:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportExtendedTransaction:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportExtendedTransaction:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportedInterface:Ljava/util/Set;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportedInterface:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponPinCancel:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponPinCancel:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->quickEmvAutoResponse:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->quickEmvAutoResponse:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponTerminate:Z

    iget-boolean p1, p1, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponTerminate:Z

    if-eq v1, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCheckForCardBehavior()Lcom/stripe/hardware/emv/CheckForCardBehavior;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    return-object v0
.end method

.method public final getDirectlyControlsScreenInput()Z
    .locals 1

    .line 15
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->directlyControlsScreenInput:Z

    return v0
.end method

.method public final getQuickEmvAutoResponse()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->quickEmvAutoResponse:Z

    return v0
.end method

.method public final getRetryUponPinCancel()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponPinCancel:Z

    return v0
.end method

.method public final getRetryUponTerminate()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponTerminate:Z

    return v0
.end method

.method public final getSupportExtendedTransaction()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportExtendedTransaction:Z

    return v0
.end method

.method public final getSupportedInterface()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportedInterface:Ljava/util/Set;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->directlyControlsScreenInput:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportExtendedTransaction:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    invoke-virtual {v1}, Lcom/stripe/hardware/emv/CheckForCardBehavior;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportedInterface:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponPinCancel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->quickEmvAutoResponse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponTerminate:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentCollectionDeviceCapability(directlyControlsScreenInput="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->directlyControlsScreenInput:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportExtendedTransaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportExtendedTransaction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", checkForCardBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->checkForCardBehavior:Lcom/stripe/hardware/emv/CheckForCardBehavior;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedInterface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->supportedInterface:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retryUponPinCancel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponPinCancel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", quickEmvAutoResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->quickEmvAutoResponse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", retryUponTerminate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentCollectionDeviceCapability;->retryUponTerminate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
