.class public final Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;
.super Ljava/lang/Object;
.source "ConnectAndUpdateStateMachine.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J!\u0010\r\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;",
        "",
        "connectionSummary",
        "Lcom/stripe/core/readerconnection/ConnectionSummary;",
        "updateSummary",
        "Lcom/stripe/core/readerupdate/UpdateSummary;",
        "(Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;)V",
        "getConnectionSummary",
        "()Lcom/stripe/core/readerconnection/ConnectionSummary;",
        "getUpdateSummary",
        "()Lcom/stripe/core/readerupdate/UpdateSummary;",
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
.field private final connectionSummary:Lcom/stripe/core/readerconnection/ConnectionSummary;

.field private final updateSummary:Lcom/stripe/core/readerupdate/UpdateSummary;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;-><init>(Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->connectionSummary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    .line 25
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->updateSummary:Lcom/stripe/core/readerupdate/UpdateSummary;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 23
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;-><init>(Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;ILjava/lang/Object;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->connectionSummary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->updateSummary:Lcom/stripe/core/readerupdate/UpdateSummary;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->copy(Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/core/readerconnection/ConnectionSummary;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->connectionSummary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    return-object v0
.end method

.method public final component2()Lcom/stripe/core/readerupdate/UpdateSummary;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->updateSummary:Lcom/stripe/core/readerupdate/UpdateSummary;

    return-object v0
.end method

.method public final copy(Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;)Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;
    .locals 1

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    invoke-direct {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;-><init>(Lcom/stripe/core/readerconnection/ConnectionSummary;Lcom/stripe/core/readerupdate/UpdateSummary;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->connectionSummary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    iget-object v3, p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->connectionSummary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->updateSummary:Lcom/stripe/core/readerupdate/UpdateSummary;

    iget-object p1, p1, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->updateSummary:Lcom/stripe/core/readerupdate/UpdateSummary;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getConnectionSummary()Lcom/stripe/core/readerconnection/ConnectionSummary;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->connectionSummary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    return-object v0
.end method

.method public final getUpdateSummary()Lcom/stripe/core/readerupdate/UpdateSummary;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->updateSummary:Lcom/stripe/core/readerupdate/UpdateSummary;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->connectionSummary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/stripe/core/readerconnection/ConnectionSummary;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->updateSummary:Lcom/stripe/core/readerupdate/UpdateSummary;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/stripe/core/readerupdate/UpdateSummary;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnectAndUpdateApplicationData(connectionSummary="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->connectionSummary:Lcom/stripe/core/readerconnection/ConnectionSummary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateSummary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateApplicationData;->updateSummary:Lcom/stripe/core/readerupdate/UpdateSummary;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
