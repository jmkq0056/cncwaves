.class public final Lcom/example/digitalkiosk/fragments/CardPaymentFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "CardPaymentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u00041<AF\u0018\u00002\u00020\u0001:\u0001MB\'\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0012\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J&\u0010%\u001a\u0004\u0018\u00010&2\u0006\u0010\'\u001a\u00020(2\u0008\u0010)\u001a\u0004\u0018\u00010*2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0016J\u0008\u0010+\u001a\u00020\"H\u0003J\u0010\u0010,\u001a\u00020\"2\u0006\u0010-\u001a\u00020.H\u0002J\u0008\u0010/\u001a\u00020\"H\u0002J\u0018\u00106\u001a\u00020\"2\u0006\u00107\u001a\u00020\u00102\u0006\u00108\u001a\u000209H\u0002J\u0008\u0010:\u001a\u00020\"H\u0002J\u0014\u0010J\u001a\u00020\"2\n\u0008\u0002\u0010K\u001a\u0004\u0018\u00010LH\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010 \u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001b\u00100\u001a\u0002018BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00084\u00105\u001a\u0004\u00082\u00103R\u001b\u0010;\u001a\u00020<8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008?\u00105\u001a\u0004\u0008=\u0010>R\u001b\u0010@\u001a\u00020A8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008D\u00105\u001a\u0004\u0008B\u0010CR\u001b\u0010E\u001a\u00020F8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008I\u00105\u001a\u0004\u0008G\u0010H\u00a8\u0006N"
    }
    d2 = {
        "Lcom/example/digitalkiosk/fragments/CardPaymentFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "shoptimer",
        "Landroid/os/CountDownTimer;",
        "paymentTimer",
        "onDismissListener",
        "Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;",
        "<init>",
        "(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;)V",
        "binding",
        "Lcom/example/digitalkiosk/databinding/CardPaymentBinding;",
        "discoveryConfig",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;",
        "shopActivity",
        "Lcom/example/digitalkiosk/ShopActivity;",
        "discoveryTask",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "getDiscoveryTask",
        "()Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "setDiscoveryTask",
        "(Lcom/stripe/stripeterminal/external/callable/Cancelable;)V",
        "timer",
        "getTimer",
        "()Landroid/os/CountDownTimer;",
        "setTimer",
        "(Landroid/os/CountDownTimer;)V",
        "order_id",
        "",
        "getOrder_id",
        "()Ljava/lang/Integer;",
        "setOrder_id",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "discoverReaders",
        "connectReader",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "startPayment",
        "createPaymentIntentCallback",
        "com/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1",
        "getCreatePaymentIntentCallback",
        "()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;",
        "createPaymentIntentCallback$delegate",
        "Lkotlin/Lazy;",
        "setCancellation",
        "collectPaymentMethod",
        "paymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "removeCancellation",
        "cancelPaymentIntentCallback",
        "com/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1",
        "getCancelPaymentIntentCallback",
        "()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;",
        "cancelPaymentIntentCallback$delegate",
        "collectPaymentMethodCallback",
        "com/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1",
        "getCollectPaymentMethodCallback",
        "()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;",
        "collectPaymentMethodCallback$delegate",
        "processPaymentCallback",
        "com/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1",
        "getProcessPaymentCallback",
        "()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;",
        "processPaymentCallback$delegate",
        "paymentFailed",
        "message",
        "",
        "OnDismissListener",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

.field private final cancelPaymentIntentCallback$delegate:Lkotlin/Lazy;

.field private final collectPaymentMethodCallback$delegate:Lkotlin/Lazy;

.field private final createPaymentIntentCallback$delegate:Lkotlin/Lazy;

.field private final discoveryConfig:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

.field private discoveryTask:Lcom/stripe/stripeterminal/external/callable/Cancelable;

.field private final onDismissListener:Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;

.field private order_id:Ljava/lang/Integer;

.field private final paymentTimer:Landroid/os/CountDownTimer;

.field private final processPaymentCallback$delegate:Lkotlin/Lazy;

.field private shopActivity:Lcom/example/digitalkiosk/ShopActivity;

.field private final shoptimer:Landroid/os/CountDownTimer;

.field private timer:Landroid/os/CountDownTimer;


# direct methods
.method public static synthetic $r8$lambda$25WAb66uo4MDx0Ma2GUcc6qHxIQ(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KmUBcpxQrz4vwMBZlyz3eMZvYJo(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;
    .locals 0

    invoke-static {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->cancelPaymentIntentCallback_delegate$lambda$6(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$U1pXjWE-1SdZbFCXJbg1jJAR6CU(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;
    .locals 0

    invoke-static {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->createPaymentIntentCallback_delegate$lambda$2(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XdncXWMzjk1bPZ2SFDiekr4-Itg(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->paymentFailed$lambda$11$lambda$10(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$asV-xBMV3JZzgRF2n9mOSxBJZ8k(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Lcom/stripe/stripeterminal/external/callable/Cancelable;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->setCancellation$lambda$4$lambda$3(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Lcom/stripe/stripeterminal/external/callable/Cancelable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$az-FXnAynVj8u8Jtr1Cz1gzHQVs(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->removeCancellation$lambda$5(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d6z9QJT52_F-xnfJ-OpbmlkabvI(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;
    .locals 0

    invoke-static {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->collectPaymentMethodCallback_delegate$lambda$7(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fnLcMN7UnYSecmxjZfp9eb2Qk8c(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V
    .locals 0

    invoke-static {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->paymentFailed$lambda$11(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mx5ZfKxdoPsMHD3hif2mkLu7i_k(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->paymentFailed$lambda$11$lambda$9(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qBhiG88bltoOSt2u63Y2oGYKics(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->setCancellation$lambda$4(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v3LZYU9RONwWSUc0nRcc1nz3lMM(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;
    .locals 0

    invoke-static {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->processPaymentCallback_delegate$lambda$8(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;)V
    .locals 7

    const-string v0, "onDismissListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->shoptimer:Landroid/os/CountDownTimer;

    .line 46
    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->paymentTimer:Landroid/os/CountDownTimer;

    .line 47
    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->onDismissListener:Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;

    .line 50
    new-instance v1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;-><init>(ILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->discoveryConfig:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    .line 244
    new-instance p1, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda6;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->createPaymentIntentCallback$delegate:Lkotlin/Lazy;

    .line 282
    new-instance p1, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda7;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->cancelPaymentIntentCallback$delegate:Lkotlin/Lazy;

    .line 307
    new-instance p1, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda8;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->collectPaymentMethodCallback$delegate:Lkotlin/Lazy;

    .line 320
    new-instance p1, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda9;

    invoke-direct {p1, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda9;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->processPaymentCallback$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    move-object p2, v0

    .line 44
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;-><init>(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;)V

    return-void
.end method

.method public static final synthetic access$connectReader(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/databinding/CardPaymentBinding;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    return-object p0
.end method

.method public static final synthetic access$getCollectPaymentMethodCallback(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->getCollectPaymentMethodCallback()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCreatePaymentIntentCallback(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->getCreatePaymentIntentCallback()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOnDismissListener$p(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->onDismissListener:Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;

    return-object p0
.end method

.method public static final synthetic access$getProcessPaymentCallback(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->getProcessPaymentCallback()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$paymentFailed(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->paymentFailed(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$removeCancellation(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->removeCancellation()V

    return-void
.end method

.method public static final synthetic access$setCancellation(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->setCancellation(Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    return-void
.end method

.method public static final synthetic access$startPayment(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->startPayment()V

    return-void
.end method

.method private static final cancelPaymentIntentCallback_delegate$lambda$6(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;
    .locals 1

    .line 283
    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    return-object v0
.end method

.method private static final collectPaymentMethodCallback_delegate$lambda$7(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;
    .locals 1

    .line 308
    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    return-object v0
.end method

.method private final connectReader(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 3

    .line 173
    new-instance v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;

    .line 175
    new-instance v1, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$connectReader$connectionConfig$1;

    invoke-direct {v1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$connectReader$connectionConfig$1;-><init>()V

    check-cast v1, Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;

    const/4 v2, 0x1

    .line 173
    invoke-direct {v0, v2, v1}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;-><init>(ZLcom/stripe/stripeterminal/external/callable/InternetReaderListener;)V

    .line 179
    new-instance v1, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$connectReader$readerCallback$1;

    invoke-direct {v1, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$connectReader$readerCallback$1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    .line 197
    sget-object v2, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/Terminal$Companion;->getInstance()Lcom/stripe/stripeterminal/Terminal;

    move-result-object v2

    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    check-cast v1, Lcom/stripe/stripeterminal/external/callable/ReaderCallback;

    invoke-virtual {v2, p1, v0, v1}, Lcom/stripe/stripeterminal/Terminal;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V

    return-void
.end method

.method private static final createPaymentIntentCallback_delegate$lambda$2(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;
    .locals 1

    .line 245
    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    return-object v0
.end method

.method private final discoverReaders()V
    .locals 4

    .line 119
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryCallback$1;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryCallback$1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    .line 131
    new-instance v1, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1;

    invoke-direct {v1, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$discoverReaders$discoveryListener$1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    .line 169
    sget-object v2, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/Terminal$Companion;->getInstance()Lcom/stripe/stripeterminal/Terminal;

    move-result-object v2

    iget-object v3, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->discoveryConfig:Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    check-cast v3, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;

    check-cast v1, Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-virtual {v2, v3, v1, v0}, Lcom/stripe/stripeterminal/Terminal;->discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;Lcom/stripe/stripeterminal/external/callable/Callback;)Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object v0

    iput-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->discoveryTask:Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-void
.end method

.method private final getCancelPaymentIntentCallback()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->cancelPaymentIntentCallback$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;

    return-object v0
.end method

.method private final getCollectPaymentMethodCallback()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->collectPaymentMethodCallback$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$collectPaymentMethodCallback$2$1;

    return-object v0
.end method

.method private final getCreatePaymentIntentCallback()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->createPaymentIntentCallback$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$createPaymentIntentCallback$2$1;

    return-object v0
.end method

.method private final getProcessPaymentCallback()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->processPaymentCallback$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;

    return-object v0
.end method

.method private static final onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Landroid/view/View;)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->onDismissListener:Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;

    invoke-interface {p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;->onDismiss()V

    .line 82
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->dismiss()V

    return-void
.end method

.method private final paymentFailed(Ljava/lang/String;)V
    .locals 1

    .line 386
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/network/ApiClient;->payment_failed$app_release(Ljava/lang/String;)V

    .line 387
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->shopActivity:Lcom/example/digitalkiosk/ShopActivity;

    if-nez p1, :cond_0

    const-string p1, "shopActivity"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda5;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/ShopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic paymentFailed$default(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->paymentFailed(Ljava/lang/String;)V

    return-void
.end method

.method private static final paymentFailed$lambda$11(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V
    .locals 6

    .line 388
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->processingLayout:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->failedLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 390
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    const/16 v5, 0x1e

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->setTimerCount(Ljava/lang/Integer;)V

    .line 392
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_3
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retry:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_4
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backHome:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_5

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_5
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->counterTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 396
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v4, "want_retry"

    invoke-virtual {v0, v4}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 398
    iget-object v4, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v4, :cond_6

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v1

    :cond_6
    iget-object v4, v4, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 400
    :cond_7
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_8

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_8
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->errorMessage:Landroid/widget/TextView;

    const-string v4, "Payment FAILeD. Do you Want to Retry?"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_9

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_9
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->paymentFailedLogo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 402
    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$paymentFailed$1$1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    check-cast v0, Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->timer:Landroid/os/CountDownTimer;

    .line 423
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 424
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_a

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_a
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retryNo:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v3, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 431
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_b

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    move-object v1, v0

    :goto_1
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retryYes:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda2;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final paymentFailed$lambda$11$lambda$10(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Landroid/view/View;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->startPayment()V

    .line 435
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->timer:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method private static final paymentFailed$lambda$11$lambda$9(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Landroid/view/View;)V
    .locals 0

    .line 426
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 427
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->timer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->onDismissListener:Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;

    invoke-interface {p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;->onDismiss()V

    .line 429
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->dismiss()V

    return-void
.end method

.method private static final processPaymentCallback_delegate$lambda$8(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;
    .locals 1

    .line 321
    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$processPaymentCallback$2$1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    return-object v0
.end method

.method private final removeCancellation()V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->paymentTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 274
    :cond_0
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setPaymentCancelable(Lcom/stripe/stripeterminal/external/callable/Cancelable;)V

    .line 275
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setCurrentPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    .line 276
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->shopActivity:Lcom/example/digitalkiosk/ShopActivity;

    if-nez v0, :cond_1

    const-string v0, "shopActivity"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    invoke-virtual {v1, v0}, Lcom/example/digitalkiosk/ShopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final removeCancellation$lambda$5(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 278
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, v2

    :cond_1
    iget-object p0, p0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setCancellation(Lcom/stripe/stripeterminal/external/callable/Cancelable;Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->paymentTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->paymentTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 260
    :cond_1
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0, p2}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setCurrentPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    .line 261
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setPaymentCancelable(Lcom/stripe/stripeterminal/external/callable/Cancelable;)V

    .line 262
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->shopActivity:Lcom/example/digitalkiosk/ShopActivity;

    if-nez p2, :cond_2

    const-string p2, "shopActivity"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_2
    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda3;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/ShopActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final setCancellation$lambda$4(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V
    .locals 4

    .line 263
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v1, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda4;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Lcom/stripe/stripeterminal/external/callable/Cancelable;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final setCancellation$lambda$4$lambda$3(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;Lcom/stripe/stripeterminal/external/callable/Cancelable;Landroid/view/View;)V
    .locals 0

    .line 265
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 266
    :cond_0
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->getCancelPaymentIntentCallback()Lcom/example/digitalkiosk/fragments/CardPaymentFragment$cancelPaymentIntentCallback$2$1;

    move-result-object p0

    check-cast p0, Lcom/stripe/stripeterminal/external/callable/Callback;

    invoke-interface {p1, p0}, Lcom/stripe/stripeterminal/external/callable/Cancelable;->cancel(Lcom/stripe/stripeterminal/external/callable/Callback;)V

    return-void
.end method

.method private final startPayment()V
    .locals 15

    .line 201
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retryYes:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_3
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retryNo:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_4
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->processingLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_5
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->failedLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 209
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Voucher;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v2

    :goto_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 222
    :cond_7
    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/KioskSetting;->getStripe_reader()Ljava/lang/String;

    move-result-object v2

    :cond_8
    move-object v6, v2

    .line 223
    sget-object v5, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getOrder_type()Ljava/lang/String;

    move-result-object v7

    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_table()Ljava/lang/Integer;

    move-result-object v8

    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_time()Ljava/lang/String;

    move-result-object v9

    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getPhone_number()Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getBag_added()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$startPayment$1;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$startPayment$1;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    move-object v14, v0

    check-cast v14, Lretrofit2/Callback;

    const-string v11, "card"

    invoke-virtual/range {v5 .. v14}, Lcom/example/digitalkiosk/network/ApiClient;->create_order_payment_intent$app_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lretrofit2/Callback;)V

    return-void
.end method


# virtual methods
.method public final getDiscoveryTask()Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->discoveryTask:Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-object v0
.end method

.method public final getOrder_id()Ljava/lang/Integer;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->order_id:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getTimer()Landroid/os/CountDownTimer;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->timer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x103000a

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p3, 0x1706

    .line 67
    invoke-virtual {p2, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 69
    :cond_0
    sget p2, Lcom/example/digitalkiosk/R$layout;->card_payment:I

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    .line 70
    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result p1

    const-string p2, "binding"

    if-eqz p1, :cond_3

    .line 71
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez p1, :cond_1

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_1
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->appLogo:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_2
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->appLogo2:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez p1, :cond_4

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_4
    sget-object v1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V

    .line 75
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez p1, :cond_5

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->setTimerCount(Ljava/lang/Integer;)V

    .line 76
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez p1, :cond_6

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_6
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez p1, :cond_7

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_7
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez p1, :cond_8

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p3

    :cond_8
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backHomeButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$$ExternalSyntheticLambda10;-><init>(Lcom/example/digitalkiosk/fragments/CardPaymentFragment;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/example/digitalkiosk/ShopActivity;

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->shopActivity:Lcom/example/digitalkiosk/ShopActivity;

    .line 85
    sget-object p1, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/Terminal$Companion;->getInstance()Lcom/stripe/stripeterminal/Terminal;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/Terminal;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 89
    invoke-direct {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->startPayment()V

    goto :goto_0

    .line 87
    :cond_9
    invoke-direct {p0}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->discoverReaders()V

    .line 90
    :goto_0
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "pay_amount"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 92
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_a

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_a
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->payAmountText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_b
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "follow_machine_instructions"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 95
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_c

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_c
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->followInstructionsText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_d
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "back_pay_amount"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 98
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_e

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_e
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :cond_f
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "payment_failed"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 101
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_10

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_10
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->paymentFailedText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_11
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "want_retry"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 104
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_12

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_12
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->errorMessage:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    :cond_13
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "retry_yes"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 107
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_14

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_14
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retryYes:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_15
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "retry_no"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 110
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_16

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_16
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->retryNo:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 111
    :cond_17
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "back_to_home_failed"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 113
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez v0, :cond_18

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p3

    :cond_18
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->backHomeButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :cond_19
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->binding:Lcom/example/digitalkiosk/databinding/CardPaymentBinding;

    if-nez p1, :cond_1a

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_1a
    move-object p3, p1

    :goto_1
    invoke-virtual {p3}, Lcom/example/digitalkiosk/databinding/CardPaymentBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final setDiscoveryTask(Lcom/stripe/stripeterminal/external/callable/Cancelable;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->discoveryTask:Lcom/stripe/stripeterminal/external/callable/Cancelable;

    return-void
.end method

.method public final setOrder_id(Ljava/lang/Integer;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->order_id:Ljava/lang/Integer;

    return-void
.end method

.method public final setTimer(Landroid/os/CountDownTimer;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->timer:Landroid/os/CountDownTimer;

    return-void
.end method
