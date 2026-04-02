.class final synthetic Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onActivateReaderRequest$1$5;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "DefaultOfflineEventHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/offlinemode/DefaultOfflineEventHandler;->onActivateReaderRequest(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 6

    const-class v2, Lcom/stripe/offlinemode/storage/OfflineRepository;

    const-string v4, "getCurrentConnectionId()J"

    const/4 v5, 0x0

    const-string v3, "currentConnectionId"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onActivateReaderRequest$1$5;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineRepository;

    invoke-interface {v0}, Lcom/stripe/offlinemode/storage/OfflineRepository;->getCurrentConnectionId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/stripe/offlinemode/DefaultOfflineEventHandler$onActivateReaderRequest$1$5;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineRepository;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/stripe/offlinemode/storage/OfflineRepository;->setCurrentConnectionId(J)V

    return-void
.end method
