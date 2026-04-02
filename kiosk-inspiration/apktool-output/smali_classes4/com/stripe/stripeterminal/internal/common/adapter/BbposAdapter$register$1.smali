.class final Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$1;
.super Ljava/lang/Object;
.source "BbposAdapter.kt"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->register(Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "settings",
        "Lcom/stripe/hardware/emv/ReaderSettings;",
        "accept"
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
.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;


# direct methods
.method constructor <init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/stripe/hardware/emv/ReaderSettings;)V
    .locals 3

    const-string v0, "settings"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/DeviceType;->getHardwareModel()Lcom/stripe/proto/model/common/HardwareModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSourceKt;->getStoredConfigSource(Lcom/stripe/proto/model/common/BBPosHardware;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 388
    :goto_0
    sget-object v1, Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;->EMV_TAG_CONFIG_HASH:Lcom/stripe/core/hardware/reactive/emv/ClientConfigDataSource;

    if-ne v0, v1, :cond_1

    .line 389
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/ReaderSettings;->getConfigHash()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 391
    :cond_1
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/ReaderSettings;->getMerchantNameAndLocation()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    .line 397
    const-string v0, ""

    :cond_2
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    .line 398
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getOperationInProgress(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v2

    instance-of v2, v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    if-eqz v2, :cond_3

    .line 399
    sget-object v2, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;->Companion:Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;

    invoke-virtual {v2, v0}, Lcom/stripe/core/hardware/reactive/emv/ClientConfigData$Companion;->parseClientConfigData(Ljava/lang/String;)Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;

    move-result-object v0

    .line 400
    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getOperationInProgress(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.CheckForUpdateOperation"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->onReturnCurrentVersion(Lcom/stripe/core/hardware/reactive/emv/ClientConfigData;)V

    .line 405
    :cond_3
    invoke-virtual {p1}, Lcom/stripe/hardware/emv/ReaderSettings;->getDomesticDebitAidList()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$1;->this$0:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    .line 406
    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getOperationInProgress(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v1

    instance-of v1, v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    if-eqz v1, :cond_4

    .line 407
    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getDomesticDebitAidsParser$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/hardware/emv/DomesticDebitAidsParser;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/stripe/hardware/emv/DomesticDebitAidsParser;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 408
    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/transaction/TransactionRepository;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository;->setDomesticDebitAids(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 384
    check-cast p1, Lcom/stripe/hardware/emv/ReaderSettings;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$1;->accept(Lcom/stripe/hardware/emv/ReaderSettings;)V

    return-void
.end method
