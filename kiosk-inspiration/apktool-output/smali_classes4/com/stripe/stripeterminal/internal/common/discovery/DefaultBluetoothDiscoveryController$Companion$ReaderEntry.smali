.class final Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;
.super Ljava/lang/Object;
.source "DefaultBluetoothDiscoveryController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReaderEntry"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;",
        "",
        "reader",
        "Lcom/stripe/core/hardware/Reader;",
        "timeStamp",
        "",
        "(Lcom/stripe/core/hardware/Reader;J)V",
        "getReader",
        "()Lcom/stripe/core/hardware/Reader;",
        "getTimeStamp",
        "()J",
        "setTimeStamp",
        "(J)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "common_publish"
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
.field private final reader:Lcom/stripe/core/hardware/Reader;

.field private timeStamp:J


# direct methods
.method public constructor <init>(Lcom/stripe/core/hardware/Reader;J)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->reader:Lcom/stripe/core/hardware/Reader;

    iput-wide p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->timeStamp:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;Lcom/stripe/core/hardware/Reader;JILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->reader:Lcom/stripe/core/hardware/Reader;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->timeStamp:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->copy(Lcom/stripe/core/hardware/Reader;J)Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/core/hardware/Reader;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->reader:Lcom/stripe/core/hardware/Reader;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->timeStamp:J

    return-wide v0
.end method

.method public final copy(Lcom/stripe/core/hardware/Reader;J)Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;

    invoke-direct {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;-><init>(Lcom/stripe/core/hardware/Reader;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->reader:Lcom/stripe/core/hardware/Reader;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->reader:Lcom/stripe/core/hardware/Reader;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->timeStamp:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->timeStamp:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getReader()Lcom/stripe/core/hardware/Reader;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->reader:Lcom/stripe/core/hardware/Reader;

    return-object v0
.end method

.method public final getTimeStamp()J
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->timeStamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->reader:Lcom/stripe/core/hardware/Reader;

    invoke-virtual {v0}, Lcom/stripe/core/hardware/Reader;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->timeStamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setTimeStamp(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->timeStamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReaderEntry(reader="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->reader:Lcom/stripe/core/hardware/Reader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController$Companion$ReaderEntry;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
