.class public final Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;
.super Ljava/lang/Object;
.source "PaymentMethodCollectionType.kt"

# interfaces
.implements Lcom/stripe/transaction/PaymentMethodCollectionType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/transaction/PaymentMethodCollectionType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sale"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008-\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u00c3\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\u0007\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0007\u0012\u0006\u0010\u0014\u001a\u00020\u0007\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u000e\u0012\u0006\u0010\u001c\u001a\u00020\u0007\u0012\u0006\u0010\u001d\u001a\u00020\u0007\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0002\u0010 J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\t\u0010B\u001a\u00020\u0007H\u00c6\u0003J\t\u0010C\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000f\u0010G\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u000eH\u00c6\u0003J\t\u0010H\u001a\u00020\u0007H\u00c6\u0003J\t\u0010I\u001a\u00020\u0007H\u00c6\u0003J\t\u0010J\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u001fH\u00c6\u0003J\t\u0010L\u001a\u00020\u0007H\u00c6\u0003J\t\u0010M\u001a\u00020\u0007H\u00c6\u0003J\t\u0010N\u001a\u00020\u0007H\u00c6\u0003J\t\u0010O\u001a\u00020\u0007H\u00c6\u0003J\t\u0010P\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010Q\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0011\u0010R\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u00c6\u0003J\u00ef\u0001\u0010S\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00072\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00072\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0002\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u000e2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00072\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u00c6\u0001J\u0013\u0010T\u001a\u00020\u00072\u0008\u0010U\u001a\u0004\u0018\u00010VH\u00d6\u0003J\t\u0010W\u001a\u00020XH\u00d6\u0001J\t\u0010Y\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u001e\u001a\u0004\u0018\u00010\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0019\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0013\u0010\'\u001a\u0004\u0018\u00010(\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*R\u0014\u0010\u0014\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010,R\u0011\u0010\u001d\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010,R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010,R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010,R\u0011\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010,R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00081\u0010&R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u00103R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u00105R\u0011\u0010\u0013\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u0010,R\u0011\u0010\u001c\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00087\u0010,R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00109R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010,R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010/R\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010/R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010$R\u0011\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010,\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "intentId",
        "",
        "amount",
        "Lcom/stripe/currency/Amount;",
        "skipTipping",
        "",
        "manualEntry",
        "isOffline",
        "isDeferredAuthorizationCountry",
        "updatePaymentIntent",
        "tipEligibleAmount",
        "computedPriorities",
        "",
        "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
        "stripeAccountId",
        "offlineDetails",
        "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
        "requestDynamicCurrencyConversion",
        "enableCustomerCancellation",
        "restPaymentIntent",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "offlineBehavior",
        "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "surchargeNotice",
        "nonCardPaymentMethodTypes",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "requestIncrementalAuthorizationSupport",
        "forcePinEntry",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "(Ljava/lang/String;Lcom/stripe/currency/Amount;ZZZZZLcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZZLcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Ljava/util/List;ZZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)V",
        "getAllowRedisplay",
        "()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "getAmount",
        "()Lcom/stripe/currency/Amount;",
        "getComputedPriorities",
        "()Ljava/util/List;",
        "domesticDebitPriority",
        "Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "getDomesticDebitPriority",
        "()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;",
        "getEnableCustomerCancellation",
        "()Z",
        "getForcePinEntry",
        "getIntentId",
        "()Ljava/lang/String;",
        "getManualEntry",
        "getNonCardPaymentMethodTypes",
        "getOfflineBehavior",
        "()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "getOfflineDetails",
        "()Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
        "getRequestDynamicCurrencyConversion",
        "getRequestIncrementalAuthorizationSupport",
        "getRestPaymentIntent",
        "()Lcom/stripe/proto/model/rest/PaymentIntent;",
        "getSkipTipping",
        "getStripeAccountId",
        "getSurchargeNotice",
        "getTipEligibleAmount",
        "getUpdatePaymentIntent",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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


# instance fields
.field private final allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

.field private final amount:Lcom/stripe/currency/Amount;

.field private final computedPriorities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;"
        }
    .end annotation
.end field

.field private final domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

.field private final enableCustomerCancellation:Z

.field private final forcePinEntry:Z

.field private final intentId:Ljava/lang/String;

.field private final isDeferredAuthorizationCountry:Z

.field private final isOffline:Z

.field private final manualEntry:Z

.field private final nonCardPaymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

.field private final offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

.field private final requestDynamicCurrencyConversion:Z

.field private final requestIncrementalAuthorizationSupport:Z

.field private final restPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

.field private final skipTipping:Z

.field private final stripeAccountId:Ljava/lang/String;

.field private final surchargeNotice:Ljava/lang/String;

.field private final tipEligibleAmount:Lcom/stripe/currency/Amount;

.field private final updatePaymentIntent:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/stripe/currency/Amount;ZZZZZLcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZZLcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Ljava/util/List;ZZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/currency/Amount;",
            "ZZZZZ",
            "Lcom/stripe/currency/Amount;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
            "ZZ",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;ZZ",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p17

    const-string v1, "amount"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nonCardPaymentMethodTypes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->intentId:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->amount:Lcom/stripe/currency/Amount;

    .line 37
    iput-boolean p3, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->skipTipping:Z

    .line 38
    iput-boolean p4, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->manualEntry:Z

    .line 39
    iput-boolean p5, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isOffline:Z

    .line 40
    iput-boolean p6, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isDeferredAuthorizationCountry:Z

    .line 41
    iput-boolean p7, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->updatePaymentIntent:Z

    .line 42
    iput-object p8, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    .line 43
    iput-object p9, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->computedPriorities:Ljava/util/List;

    .line 44
    iput-object p10, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->stripeAccountId:Ljava/lang/String;

    .line 45
    iput-object p11, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    .line 46
    iput-boolean p12, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestDynamicCurrencyConversion:Z

    move p1, p13

    .line 47
    iput-boolean p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->enableCustomerCancellation:Z

    move-object/from16 p1, p14

    .line 48
    iput-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->restPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

    move-object/from16 p1, p15

    .line 49
    iput-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-object/from16 p1, p16

    .line 50
    iput-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->surchargeNotice:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->nonCardPaymentMethodTypes:Ljava/util/List;

    move/from16 p1, p18

    .line 52
    iput-boolean p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestIncrementalAuthorizationSupport:Z

    move/from16 p1, p19

    .line 53
    iput-boolean p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->forcePinEntry:Z

    move-object/from16 p1, p20

    .line 54
    iput-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    const/4 p1, 0x0

    if-eqz p9, :cond_2

    const/4 p2, 0x2

    .line 59
    new-array p3, p2, [Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    sget-object p4, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->domestic:Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    const/4 p5, 0x0

    aput-object p4, p3, p5

    sget-object p4, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->international:Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    const/4 p6, 0x1

    aput-object p4, p3, p6

    invoke-static {p3}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-static {p9, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->TOP:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    goto :goto_0

    .line 60
    :cond_0
    new-array p2, p2, [Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    sget-object p3, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->international:Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    aput-object p3, p2, p5

    sget-object p3, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->domestic:Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    aput-object p3, p2, p6

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p9, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->BOTTOM:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    goto :goto_0

    .line 61
    :cond_1
    sget-object p2, Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;->international:Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p9, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p1, Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;->OFF:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    .line 57
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;Ljava/lang/String;Lcom/stripe/currency/Amount;ZZZZZLcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZZLcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Ljava/util/List;ZZLcom/stripe/stripeterminal/external/models/AllowRedisplay;ILjava/lang/Object;)Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p21

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->intentId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->amount:Lcom/stripe/currency/Amount;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->skipTipping:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->manualEntry:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isOffline:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isDeferredAuthorizationCountry:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->updatePaymentIntent:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->computedPriorities:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->stripeAccountId:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-boolean v13, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestDynamicCurrencyConversion:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->enableCustomerCancellation:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->restPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->surchargeNotice:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p21, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    iget-object v1, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->nonCardPaymentMethodTypes:Ljava/util/List;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p21, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    iget-boolean v1, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestIncrementalAuthorizationSupport:Z

    goto :goto_11

    :cond_11
    move/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p21, v16

    move/from16 p4, v1

    if-eqz v16, :cond_12

    iget-boolean v1, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->forcePinEntry:Z

    goto :goto_12

    :cond_12
    move/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p21, v16

    if-eqz v16, :cond_13

    move/from16 p5, v1

    iget-object v1, v0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move/from16 p20, p5

    move-object/from16 p21, v1

    goto :goto_13

    :cond_13
    move-object/from16 p21, p20

    move/from16 p20, v1

    :goto_13
    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move/from16 p19, p4

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p21}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->copy(Ljava/lang/String;Lcom/stripe/currency/Amount;ZZZZZLcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZZLcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Ljava/util/List;ZZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->intentId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->stripeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Lcom/stripe/stripeterminal/external/models/OfflineDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestDynamicCurrencyConversion:Z

    return v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->enableCustomerCancellation:Z

    return v0
.end method

.method public final component14()Lcom/stripe/proto/model/rest/PaymentIntent;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->restPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

    return-object v0
.end method

.method public final component15()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->surchargeNotice:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->nonCardPaymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final component18()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestIncrementalAuthorizationSupport:Z

    return v0
.end method

.method public final component19()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->forcePinEntry:Z

    return v0
.end method

.method public final component2()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component20()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->skipTipping:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->manualEntry:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isOffline:Z

    return v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isDeferredAuthorizationCountry:Z

    return v0
.end method

.method public final component7()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->updatePaymentIntent:Z

    return v0
.end method

.method public final component8()Lcom/stripe/currency/Amount;
    .locals 1

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->computedPriorities:Ljava/util/List;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/stripe/currency/Amount;ZZZZZLcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZZLcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Ljava/util/List;ZZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/currency/Amount;",
            "ZZZZZ",
            "Lcom/stripe/currency/Amount;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
            "ZZ",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;ZZ",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            ")",
            "Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;"
        }
    .end annotation

    const-string v0, "amount"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nonCardPaymentMethodTypes"

    move-object/from16 v1, p17

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    invoke-direct/range {v1 .. v21}, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;-><init>(Ljava/lang/String;Lcom/stripe/currency/Amount;ZZZZZLcom/stripe/currency/Amount;Ljava/util/List;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/OfflineDetails;ZZLcom/stripe/proto/model/rest/PaymentIntent;Lcom/stripe/stripeterminal/external/models/OfflineBehavior;Ljava/lang/String;Ljava/util/List;ZZLcom/stripe/stripeterminal/external/models/AllowRedisplay;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->intentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->intentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->amount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->amount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->skipTipping:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->skipTipping:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->manualEntry:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->manualEntry:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isOffline:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isOffline:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isDeferredAuthorizationCountry:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isDeferredAuthorizationCountry:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->updatePaymentIntent:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->updatePaymentIntent:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->computedPriorities:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->computedPriorities:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->stripeAccountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->stripeAccountId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestDynamicCurrencyConversion:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestDynamicCurrencyConversion:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->enableCustomerCancellation:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->enableCustomerCancellation:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->restPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->restPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->surchargeNotice:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->surchargeNotice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->nonCardPaymentMethodTypes:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->nonCardPaymentMethodTypes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestIncrementalAuthorizationSupport:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestIncrementalAuthorizationSupport:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->forcePinEntry:Z

    iget-boolean v3, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->forcePinEntry:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    iget-object p1, p1, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    if-eq v1, p1, :cond_15

    return v2

    :cond_15
    return v0
.end method

.method public final getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    return-object v0
.end method

.method public getAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->amount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getComputedPriorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->computedPriorities:Ljava/util/List;

    return-object v0
.end method

.method public final getDomesticDebitPriority()Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->domesticDebitPriority:Lcom/stripe/hardware/ReaderConfiguration$DomesticDebitPriority;

    return-object v0
.end method

.method public getEnableCustomerCancellation()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->enableCustomerCancellation:Z

    return v0
.end method

.method public final getForcePinEntry()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->forcePinEntry:Z

    return v0
.end method

.method public final getIntentId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->intentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getManualEntry()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->manualEntry:Z

    return v0
.end method

.method public final getNonCardPaymentMethodTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->nonCardPaymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-object v0
.end method

.method public final getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    return-object v0
.end method

.method public final getRequestDynamicCurrencyConversion()Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestDynamicCurrencyConversion:Z

    return v0
.end method

.method public final getRequestIncrementalAuthorizationSupport()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestIncrementalAuthorizationSupport:Z

    return v0
.end method

.method public final getRestPaymentIntent()Lcom/stripe/proto/model/rest/PaymentIntent;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->restPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

    return-object v0
.end method

.method public final getSkipTipping()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->skipTipping:Z

    return v0
.end method

.method public final getStripeAccountId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->stripeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSurchargeNotice()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->surchargeNotice:Ljava/lang/String;

    return-object v0
.end method

.method public final getTipEligibleAmount()Lcom/stripe/currency/Amount;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    return-object v0
.end method

.method public final getUpdatePaymentIntent()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->updatePaymentIntent:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->intentId:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v2}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->skipTipping:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->manualEntry:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isOffline:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isDeferredAuthorizationCountry:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->updatePaymentIntent:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/stripe/currency/Amount;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->computedPriorities:Ljava/util/List;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->stripeAccountId:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/OfflineDetails;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestDynamicCurrencyConversion:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->enableCustomerCancellation:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->restPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Lcom/stripe/proto/model/rest/PaymentIntent;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->surchargeNotice:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->nonCardPaymentMethodTypes:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestIncrementalAuthorizationSupport:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->forcePinEntry:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    if-nez v2, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/AllowRedisplay;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final isDeferredAuthorizationCountry()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isDeferredAuthorizationCountry:Z

    return v0
.end method

.method public final isOffline()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isOffline:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sale(intentId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->intentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->amount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", skipTipping="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->skipTipping:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", manualEntry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->manualEntry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isOffline="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isOffline:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDeferredAuthorizationCountry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->isDeferredAuthorizationCountry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", updatePaymentIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->updatePaymentIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tipEligibleAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->tipEligibleAmount:Lcom/stripe/currency/Amount;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", computedPriorities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->computedPriorities:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stripeAccountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->stripeAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offlineDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestDynamicCurrencyConversion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestDynamicCurrencyConversion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enableCustomerCancellation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->enableCustomerCancellation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", restPaymentIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->restPaymentIntent:Lcom/stripe/proto/model/rest/PaymentIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offlineBehavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", surchargeNotice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->surchargeNotice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nonCardPaymentMethodTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->nonCardPaymentMethodTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestIncrementalAuthorizationSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->requestIncrementalAuthorizationSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", forcePinEntry="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->forcePinEntry:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", allowRedisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/transaction/PaymentMethodCollectionType$Sale;->allowRedisplay:Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
