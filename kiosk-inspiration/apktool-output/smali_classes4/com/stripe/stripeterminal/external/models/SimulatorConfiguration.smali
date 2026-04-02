.class public final Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;
.super Ljava/lang/Object;
.source "SimulatorConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000  2\u00020\u0001:\u0001 B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0010J\t\u0010\u0017\u001a\u00020\tH\u00c6\u0003J8\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\t2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;",
        "",
        "update",
        "Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;",
        "simulatedCard",
        "Lcom/stripe/stripeterminal/external/models/SimulatedCard;",
        "simulatedTipAmount",
        "",
        "offlineEnabled",
        "",
        "(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;Z)V",
        "getOfflineEnabled",
        "()Z",
        "getSimulatedCard",
        "()Lcom/stripe/stripeterminal/external/models/SimulatedCard;",
        "getSimulatedTipAmount",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getUpdate",
        "()Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;Z)Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;",
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
.field public static final Companion:Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration$Companion;

.field private static final DEFAULT_CARD_NUMBER:Ljava/lang/String; = "4761739001010119"


# instance fields
.field private final offlineEnabled:Z

.field private final simulatedCard:Lcom/stripe/stripeterminal/external/models/SimulatedCard;

.field private final simulatedTipAmount:Ljava/lang/Long;

.field private final update:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->Companion:Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;-><init>(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;Z)V
    .locals 1

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simulatedCard"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->update:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    .line 19
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedCard:Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    .line 27
    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedTipAmount:Ljava/lang/Long;

    .line 32
    iput-boolean p4, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->offlineEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 14
    sget-object p1, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->UPDATE_AVAILABLE:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 19
    new-instance p2, Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    const-string p6, "4761739001010119"

    invoke-direct {p2, p6}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;-><init>(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 9
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;-><init>(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;ZILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->update:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedCard:Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedTipAmount:Ljava/lang/Long;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->offlineEnabled:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->copy(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;Z)Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->update:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    return-object v0
.end method

.method public final component2()Lcom/stripe/stripeterminal/external/models/SimulatedCard;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedCard:Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    return-object v0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedTipAmount:Ljava/lang/Long;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->offlineEnabled:Z

    return v0
.end method

.method public final copy(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;Z)Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;
    .locals 1

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simulatedCard"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;-><init>(Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;Lcom/stripe/stripeterminal/external/models/SimulatedCard;Ljava/lang/Long;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->update:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->update:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedCard:Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedCard:Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedTipAmount:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedTipAmount:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->offlineEnabled:Z

    iget-boolean p1, p1, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->offlineEnabled:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getOfflineEnabled()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->offlineEnabled:Z

    return v0
.end method

.method public final getSimulatedCard()Lcom/stripe/stripeterminal/external/models/SimulatedCard;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedCard:Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    return-object v0
.end method

.method public final getSimulatedTipAmount()Ljava/lang/Long;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedTipAmount:Ljava/lang/Long;

    return-object v0
.end method

.method public final getUpdate()Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->update:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->update:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedCard:Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SimulatedCard;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedTipAmount:Ljava/lang/Long;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->offlineEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SimulatorConfiguration(update="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->update:Lcom/stripe/stripeterminal/external/models/SimulateReaderUpdate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", simulatedCard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedCard:Lcom/stripe/stripeterminal/external/models/SimulatedCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", simulatedTipAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->simulatedTipAmount:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlineEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/SimulatorConfiguration;->offlineEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
