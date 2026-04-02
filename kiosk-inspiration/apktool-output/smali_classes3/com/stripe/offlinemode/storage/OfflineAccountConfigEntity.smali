.class public final Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;
.super Ljava/lang/Object;
.source "OfflineAccountConfigEntity.kt"

# interfaces
.implements Lcom/stripe/offlinemode/storage/OfflineEntity;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0008H\u00c6\u0003J1\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0096\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u0006\u001a\u00020\u00058\u0016X\u0097\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u001e\u0010\u0007\u001a\u00020\u00088\u0016@\u0016X\u0097\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;",
        "Lcom/stripe/offlinemode/storage/OfflineEntity;",
        "accountId",
        "",
        "encryptedData",
        "",
        "encryptionIv",
        "id",
        "",
        "(Ljava/lang/String;[B[BJ)V",
        "getAccountId",
        "()Ljava/lang/String;",
        "getEncryptedData",
        "()[B",
        "getEncryptionIv",
        "getId",
        "()J",
        "setId",
        "(J)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final accountId:Ljava/lang/String;

.field private final encryptedData:[B

.field private final encryptionIv:[B

.field private id:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[BJ)V
    .locals 1

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionIv"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->accountId:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->encryptedData:[B

    .line 15
    iput-object p3, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->encryptionIv:[B

    .line 16
    iput-wide p4, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->id:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;[B[BJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;-><init>(Ljava/lang/String;[B[BJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;Ljava/lang/String;[B[BJILjava/lang/Object;)Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->accountId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->encryptedData:[B

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    iget-object p3, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->encryptionIv:[B

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    iget-wide p4, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->id:J

    :cond_3
    move-wide p6, p4

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-virtual/range {p2 .. p7}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->copy(Ljava/lang/String;[B[BJ)Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()[B
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->encryptedData:[B

    return-object v0
.end method

.method public final component3()[B
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->encryptionIv:[B

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->id:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;[B[BJ)Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;
    .locals 7

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptedData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "encryptionIv"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;-><init>(Ljava/lang/String;[B[BJ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 20
    :cond_0
    instance-of v1, p1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getAccountId()Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getAccountId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getEncryptedData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getEncryptedData()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 24
    :cond_3
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getEncryptionIv()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getEncryptionIv()[B

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 25
    :cond_4
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getId()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptedData()[B
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->encryptedData:[B

    return-object v0
.end method

.method public getEncryptionIv()[B
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->encryptionIv:[B

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->id:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 31
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getAccountId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 32
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getEncryptedData()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getEncryptionIv()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setId(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->id:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineAccountConfigEntity(accountId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->encryptedData:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encryptionIv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->encryptionIv:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
