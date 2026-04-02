.class public final Lcom/stripe/offlinemode/models/OfflineForwardingRequest;
.super Ljava/lang/Object;
.source "OfflineForwardingRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0017\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u000bH\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u000bH\u00c6\u0003JE\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000bH\u00c6\u0001J\u0013\u0010 \u001a\u00020\u000b2\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020#H\u00d6\u0001J\t\u0010$\u001a\u00020%H\u00d6\u0001R\u0011\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006&"
    }
    d2 = {
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "",
        "offlineReader",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "offlineConnection",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "offlineLocation",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "offlineApiRequest",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "hasMoreRelatedRequests",
        "",
        "hasMore",
        "(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;ZZ)V",
        "getHasMore",
        "()Z",
        "getHasMoreRelatedRequests",
        "getOfflineApiRequest",
        "()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "getOfflineConnection",
        "()Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "getOfflineLocation",
        "()Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "getOfflineReader",
        "()Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final hasMore:Z

.field private final hasMoreRelatedRequests:Z

.field private final offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

.field private final offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

.field private final offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

.field private final offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;


# direct methods
.method public constructor <init>(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;ZZ)V
    .locals 1

    const-string v0, "offlineReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConnection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLocation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineApiRequest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 16
    iput-object p2, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    .line 17
    iput-object p3, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    .line 18
    iput-object p4, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    .line 19
    iput-boolean p5, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMoreRelatedRequests:Z

    .line 20
    iput-boolean p6, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMore:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;ZZILjava/lang/Object;)Lcom/stripe/offlinemode/models/OfflineForwardingRequest;
    .locals 0

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    iget-object p3, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    iget-object p4, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    iget-boolean p5, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMoreRelatedRequests:Z

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    iget-boolean p6, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMore:Z

    :cond_5
    move p7, p5

    move p8, p6

    move-object p5, p3

    move-object p6, p4

    move-object p3, p1

    move-object p4, p2

    move-object p2, p0

    invoke-virtual/range {p2 .. p8}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->copy(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;ZZ)Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/stripe/proto/model/offline_mode/OfflineReader;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    return-object v0
.end method

.method public final component2()Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    return-object v0
.end method

.method public final component3()Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    return-object v0
.end method

.method public final component4()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    return-object v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMoreRelatedRequests:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMore:Z

    return v0
.end method

.method public final copy(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;ZZ)Lcom/stripe/offlinemode/models/OfflineForwardingRequest;
    .locals 8

    const-string v0, "offlineReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConnection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLocation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineApiRequest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;-><init>(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;ZZ)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v3, p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v3, p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    iget-object v3, p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    iget-object v3, p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMoreRelatedRequests:Z

    iget-boolean v3, p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMoreRelatedRequests:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMore:Z

    iget-boolean p1, p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMore:Z

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getHasMore()Z
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMore:Z

    return v0
.end method

.method public final getHasMoreRelatedRequests()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMoreRelatedRequests:Z

    return v0
.end method

.method public final getOfflineApiRequest()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    return-object v0
.end method

.method public final getOfflineConnection()Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    return-object v0
.end method

.method public final getOfflineLocation()Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    return-object v0
.end method

.method public final getOfflineReader()Lcom/stripe/proto/model/offline_mode/OfflineReader;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    invoke-virtual {v0}, Lcom/stripe/proto/model/offline_mode/OfflineReader;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    invoke-virtual {v1}, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    invoke-virtual {v1}, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    invoke-virtual {v1}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMoreRelatedRequests:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMore:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OfflineForwardingRequest(offlineReader="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineReader:Lcom/stripe/proto/model/offline_mode/OfflineReader;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlineConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineConnection:Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlineLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineLocation:Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", offlineApiRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->offlineApiRequest:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasMoreRelatedRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMoreRelatedRequests:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hasMore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
