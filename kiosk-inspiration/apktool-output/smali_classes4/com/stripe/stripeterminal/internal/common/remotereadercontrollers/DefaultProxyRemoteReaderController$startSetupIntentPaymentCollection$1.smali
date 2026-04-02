.class final Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ProxyRemoteReaderController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController;->startSetupIntentPaymentCollection(Ljava/lang/String;ZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;",
        "invoke"
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
.field final synthetic $allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

.field final synthetic $enableCustomerCancellation:Z

.field final synthetic $intentId:Ljava/lang/String;

.field final synthetic $manualEntry:Z

.field final synthetic $offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

.field final synthetic $offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

.field final synthetic $onFailure:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onPaymentCollected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $setupIntent:Lcom/stripe/proto/model/rest/SetupIntent;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/TerminalException;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$intentId:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$enableCustomerCancellation:Z

    iput-boolean p3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$manualEntry:Z

    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$setupIntent:Lcom/stripe/proto/model/rest/SetupIntent;

    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$onPaymentCollected:Lkotlin/jvm/functions/Function1;

    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 282
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->invoke(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;)V
    .locals 11

    const-string v0, "$this$withCurrentController"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$intentId:Ljava/lang/String;

    .line 285
    iget-boolean v3, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$enableCustomerCancellation:Z

    .line 286
    iget-boolean v4, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$manualEntry:Z

    .line 287
    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$offlineDetails:Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;

    .line 288
    iget-object v6, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    .line 289
    iget-object v7, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    .line 290
    iget-object v8, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$setupIntent:Lcom/stripe/proto/model/rest/SetupIntent;

    .line 291
    iget-object v9, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$onPaymentCollected:Lkotlin/jvm/functions/Function1;

    .line 292
    iget-object v10, p0, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/DefaultProxyRemoteReaderController$startSetupIntentPaymentCollection$1;->$onFailure:Lkotlin/jvm/functions/Function1;

    move-object v1, p1

    .line 283
    invoke-virtual/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/RemoteReaderController;->startSetupIntentPaymentCollection(Ljava/lang/String;ZZLcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/proto/model/rest/SetupIntent;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
