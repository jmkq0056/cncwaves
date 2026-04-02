.class public final Lcom/stripe/stripeterminal/external/models/SimulatedCard;
.super Ljava/lang/Object;
.source "SimulatedCard.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0015\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004B\u000f\u0008\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B\'\u0008\u0001\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u0018\u001a\u00020\tH\u00c6\u0003J\u000e\u0010\u0019\u001a\u00020\u0006H\u00c0\u0003\u00a2\u0006\u0002\u0008\u001aJ\u000e\u0010\u001b\u001a\u00020\u000cH\u00c0\u0003\u00a2\u0006\u0002\u0008\u001cJ\u000e\u0010\u001d\u001a\u00020\u000cH\u00c0\u0003\u00a2\u0006\u0002\u0008\u001eJ1\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cH\u00c6\u0001J\u001e\u0010 \u001a\u00020\t2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%H\u0007J\u0013\u0010&\u001a\u00020%2\u0008\u0010\'\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010(\u001a\u00020\u000cH\u00d6\u0001J\t\u0010)\u001a\u00020\u0006H\u00d6\u0001R\u001c\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u000b\u001a\u00020\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\r\u001a\u00020\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0014\u0010\n\u001a\u00020\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006*"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SimulatedCard;",
        "",
        "cardType",
        "Lcom/stripe/stripeterminal/external/models/SimulatedCardType;",
        "(Lcom/stripe/stripeterminal/external/models/SimulatedCardType;)V",
        "testCardNumber",
        "",
        "(Ljava/lang/String;)V",
        "emvBlob",
        "Lcom/stripe/stripeterminal/external/internal/EmvBlob;",
        "pan",
        "expMonth",
        "",
        "expYear",
        "(Lcom/stripe/stripeterminal/external/internal/EmvBlob;Ljava/lang/String;II)V",
        "getEmvBlob$annotations",
        "()V",
        "getEmvBlob",
        "()Lcom/stripe/stripeterminal/external/internal/EmvBlob;",
        "getExpMonth$public_release",
        "()I",
        "getExpYear$public_release",
        "getPan$public_release",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component2$public_release",
        "component3",
        "component3$public_release",
        "component4",
        "component4$public_release",
        "copy",
        "emvForSimulatedCard",
        "computedPriority",
        "",
        "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
        "isScaRecollection",
        "",
        "equals",
        "other",
        "hashCode",
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
.field private final emvBlob:Lcom/stripe/stripeterminal/external/internal/EmvBlob;

.field private final expMonth:I

.field private final expYear:I

.field private final pan:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/external/internal/EmvBlob;Ljava/lang/String;II)V
    .locals 1

    const-string v0, "emvBlob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->emvBlob:Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    .line 13
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->pan:Ljava/lang/String;

    .line 14
    iput p3, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expMonth:I

    .line 15
    iput p4, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expYear:I

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/SimulatedCardType;)V
    .locals 3

    const-string v0, "cardType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/stripe/stripeterminal/external/internal/EmvBlob;->Companion:Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->fromCardType$public_release(Lcom/stripe/stripeterminal/external/models/SimulatedCardType;)Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getCardNumber()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getExpMonth()I

    move-result v2

    .line 27
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SimulatedCardType;->getExpYear()I

    move-result p1

    .line 23
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;-><init>(Lcom/stripe/stripeterminal/external/internal/EmvBlob;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const-string v0, "testCardNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/stripe/stripeterminal/external/internal/EmvBlob;->Companion:Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->fromTestCardNumber$public_release(Ljava/lang/String;)Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0x1e

    .line 36
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;-><init>(Lcom/stripe/stripeterminal/external/internal/EmvBlob;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/SimulatedCard;Lcom/stripe/stripeterminal/external/internal/EmvBlob;Ljava/lang/String;IIILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SimulatedCard;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->emvBlob:Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->pan:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expMonth:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expYear:I

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->copy(Lcom/stripe/stripeterminal/external/internal/EmvBlob;Ljava/lang/String;II)Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getEmvBlob$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/internal/EmvBlob;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->emvBlob:Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    return-object v0
.end method

.method public final component2$public_release()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public final component3$public_release()I
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expMonth:I

    return v0
.end method

.method public final component4$public_release()I
    .locals 1

    iget v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expYear:I

    return v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/internal/EmvBlob;Ljava/lang/String;II)Lcom/stripe/stripeterminal/external/models/SimulatedCard;
    .locals 1

    const-string v0, "emvBlob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pan"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;-><init>(Lcom/stripe/stripeterminal/external/internal/EmvBlob;Ljava/lang/String;II)V

    return-object v0
.end method

.method public final emvForSimulatedCard(Ljava/util/List;Z)Lcom/stripe/stripeterminal/external/internal/EmvBlob;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/RoutingPriority;",
            ">;Z)",
            "Lcom/stripe/stripeterminal/external/internal/EmvBlob;"
        }
    .end annotation

    const-string v0, "computedPriority"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v1, Lcom/stripe/stripeterminal/external/internal/EmvBlob;->Companion:Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;

    .line 54
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->pan:Ljava/lang/String;

    .line 55
    iget v3, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expMonth:I

    .line 56
    iget v4, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expYear:I

    move-object v5, p1

    move v6, p2

    .line 53
    invoke-virtual/range {v1 .. v6}, Lcom/stripe/stripeterminal/external/internal/EmvBlob$Companion;->generateEmvData$public_release(Ljava/lang/String;IILjava/util/List;Z)Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->emvBlob:Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->emvBlob:Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->pan:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->pan:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expMonth:I

    iget v3, p1, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expMonth:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expYear:I

    iget p1, p1, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expYear:I

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getEmvBlob()Lcom/stripe/stripeterminal/external/internal/EmvBlob;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->emvBlob:Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    return-object v0
.end method

.method public final getExpMonth$public_release()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expMonth:I

    return v0
.end method

.method public final getExpYear$public_release()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expYear:I

    return v0
.end method

.method public final getPan$public_release()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->emvBlob:Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/internal/EmvBlob;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->pan:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expMonth:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expYear:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimulatedCard(emvBlob="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->emvBlob:Lcom/stripe/stripeterminal/external/internal/EmvBlob;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->pan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->expYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
