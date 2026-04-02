.class public final Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;
.super Lcom/stripe/offlinemode/models/OfflineForwardingResponse;
.source "OfflineForwardingResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/offlinemode/models/OfflineForwardingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cancel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\r\u0010\u000c\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0003J\t\u0010\r\u001a\u00020\u0006H\u00c6\u0003J!\u0010\u000e\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;",
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse;",
        "exception",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlin/coroutines/cancellation/CancellationException;",
        "request",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "(Ljava/util/concurrent/CancellationException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V",
        "getException",
        "()Ljava/util/concurrent/CancellationException;",
        "getRequest",
        "()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
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
.field private final exception:Ljava/util/concurrent/CancellationException;

.field private final request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CancellationException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p2, v0}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse;-><init>(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    iput-object p1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->exception:Ljava/util/concurrent/CancellationException;

    .line 43
    iput-object p2, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;Ljava/util/concurrent/CancellationException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;ILjava/lang/Object;)Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->exception:Ljava/util/concurrent/CancellationException;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->copy(Ljava/util/concurrent/CancellationException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/concurrent/CancellationException;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->exception:Ljava/util/concurrent/CancellationException;

    return-object v0
.end method

.method public final component2()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;
    .locals 1

    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    return-object v0
.end method

.method public final copy(Ljava/util/concurrent/CancellationException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;

    invoke-direct {v0, p1, p2}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;-><init>(Ljava/util/concurrent/CancellationException;Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->exception:Ljava/util/concurrent/CancellationException;

    iget-object v3, p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->exception:Ljava/util/concurrent/CancellationException;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    iget-object p1, p1, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getException()Ljava/util/concurrent/CancellationException;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->exception:Ljava/util/concurrent/CancellationException;

    return-object v0
.end method

.method public getRequest()Lcom/stripe/offlinemode/models/OfflineForwardingRequest;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->exception:Ljava/util/concurrent/CancellationException;

    invoke-virtual {v0}, Ljava/util/concurrent/CancellationException;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    invoke-virtual {v1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cancel(exception="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->exception:Ljava/util/concurrent/CancellationException;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Cancel;->request:Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
