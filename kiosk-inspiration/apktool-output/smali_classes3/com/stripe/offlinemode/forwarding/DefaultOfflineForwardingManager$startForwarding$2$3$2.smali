.class final Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultOfflineForwardingManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineForwardingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineForwardingManager.kt\ncom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,675:1\n1#2:676\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "request",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "invoke",
        "(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)Ljava/lang/Long;"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;


# direct methods
.method constructor <init>(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$2;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)Ljava/lang/Long;
    .locals 7

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->getHasMore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 167
    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->getOfflineApiRequest()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$2;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    .line 168
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    sget-object v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    if-eq v2, v3, :cond_0

    .line 169
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    sget-object v3, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_SETUP_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    if-ne v2, v3, :cond_1

    .line 170
    :cond_0
    invoke-static {v1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$getClock$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/time/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$2;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {v0}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$getClock$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;->getOfflineApiRequest()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object p1

    iget-wide v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->created_at:J

    sub-long/2addr v0, v5

    sub-long v0, v3, v0

    .line 177
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 178
    iget-object p1, p0, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$2;->this$0:Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;

    invoke-static {p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;->access$getTraceLogger$p(Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager;)Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Debouncing create only request by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " millis"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    invoke-interface {p1, v2, v3}, Lcom/stripe/offlinemode/log/OfflineForwardingTraceLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 181
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 161
    check-cast p1, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    invoke-virtual {p0, p1}, Lcom/stripe/offlinemode/forwarding/DefaultOfflineForwardingManager$startForwarding$2$3$2;->invoke(Lcom/stripe/offlinemode/models/OfflineForwardingRequest;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
