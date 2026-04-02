.class public final Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "CompleteOrderFragment.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u001f\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0006\u0010\u001b\u001a\u00020\u0012J\u0006\u0010\u001c\u001a\u00020\u0012J\u0010\u0010\u001d\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0010J\u0010\u0010\u001f\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0010R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\nj\u0008\u0012\u0004\u0012\u00020\u000b`\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "shoptimer",
        "Landroid/os/CountDownTimer;",
        "paymentTimer",
        "<init>",
        "(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;)V",
        "binding",
        "Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;",
        "orderItems",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/CartItem;",
        "Lkotlin/collections/ArrayList;",
        "orderAdapter",
        "Lcom/example/digitalkiosk/adapters/OrderAdapter;",
        "freeOrder",
        "",
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
        "confirmOrder",
        "processFreeOrder",
        "processCashPayment",
        "singlePayment",
        "processCardPayment",
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
.field private binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

.field private freeOrder:Z

.field private orderAdapter:Lcom/example/digitalkiosk/adapters/OrderAdapter;

.field private final orderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/CartItem;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentTimer:Landroid/os/CountDownTimer;

.field private final shoptimer:Landroid/os/CountDownTimer;


# direct methods
.method public static synthetic $r8$lambda$0XU0xHtIuh253sk3RLoGaq1Fk_k(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->onCreateView$lambda$4(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$4VsxWpMb55l9UN-wCL9eKxKxwts(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->onCreateView$lambda$5(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Wjb8zApWyLUtJztvQhn2MToN-s(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->onCreateView$lambda$3(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P1_u4PX8fDn7LDCuKT7-Okq1w4k(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Lcom/example/digitalkiosk/models/Translation;Lcom/example/digitalkiosk/models/Translation;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->onCreateView$lambda$2(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Lcom/example/digitalkiosk/models/Translation;Lcom/example/digitalkiosk/models/Translation;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rrbl1bMtdwjQlamh2W_bzWeeTmM(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Lcom/example/digitalkiosk/ShopActivity;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Lcom/example/digitalkiosk/ShopActivity;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;-><init>(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    .line 35
    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->paymentTimer:Landroid/os/CountDownTimer;

    .line 39
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->orderItems:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 33
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;-><init>(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;)V

    return-void
.end method

.method public static final synthetic access$getBinding$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    return-object p0
.end method

.method public static final synthetic access$getOrderAdapter$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Lcom/example/digitalkiosk/adapters/OrderAdapter;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->orderAdapter:Lcom/example/digitalkiosk/adapters/OrderAdapter;

    return-object p0
.end method

.method public static final synthetic access$getOrderItems$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->orderItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getShoptimer$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)Landroid/os/CountDownTimer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static final synthetic access$setFreeOrder$p(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->freeOrder:Z

    return-void
.end method

.method private static final onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Lcom/example/digitalkiosk/ShopActivity;Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 112
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->cancel()V

    .line 113
    :cond_0
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 114
    :cond_1
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setBag_added(I)V

    .line 115
    sget p2, Lcom/example/digitalkiosk/R$id;->bag_yes:I

    if-ne p3, p2, :cond_2

    .line 116
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setBag_added(I)V

    .line 118
    :cond_2
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 119
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Voucher;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 120
    :cond_4
    sget-object p2, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget-object p3, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p3}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getBag_added()I

    move-result p3

    sget-object v1, Lcom/example/digitalkiosk/HomeActivity;->Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/HomeActivity$Companion;->getSelected_language()I

    move-result v1

    new-instance v2, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$3$1;

    invoke-direct {v2, p0, p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$3$1;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Lcom/example/digitalkiosk/ShopActivity;)V

    check-cast v2, Lretrofit2/Callback;

    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/example/digitalkiosk/network/ApiClient;->get_cart$app_release(IIILretrofit2/Callback;)V

    return-void
.end method

.method private static final onCreateView$lambda$2(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Lcom/example/digitalkiosk/models/Translation;Lcom/example/digitalkiosk/models/Translation;Landroid/view/View;)V
    .locals 3

    .line 138
    iget-object p3, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/CountDownTimer;->cancel()V

    .line 139
    :cond_0
    iget-object p3, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 140
    :cond_1
    iget-object p3, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    const/4 v0, 0x0

    const-string v1, "binding"

    if-nez p3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_2
    invoke-virtual {p3}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->getTab()Ljava/lang/Integer;

    move-result-object p3

    const/4 v2, 0x1

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v2, :cond_4

    .line 141
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->dismiss()V

    return-void

    .line 143
    :cond_4
    :goto_0
    iget-object p3, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p3, :cond_5

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTab(Ljava/lang/Integer;)V

    if-eqz p1, :cond_7

    .line 145
    iget-object p3, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p3, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_6
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTitle(Ljava/lang/String;)V

    goto :goto_1

    .line 147
    :cond_7
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p1, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_8
    const-string p3, "Send Your Order"

    invoke-virtual {p1, p3}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTitle(Ljava/lang/String;)V

    :goto_1
    if-eqz p2, :cond_a

    .line 149
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p0, :cond_9

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    move-object v0, p0

    :goto_2
    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setSubtitle(Ljava/lang/String;)V

    return-void

    .line 151
    :cond_a
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p0, :cond_b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    move-object v0, p0

    :goto_3
    const-string p0, "Total to Pay:"

    invoke-virtual {v0, p0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method private static final onCreateView$lambda$3(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 0

    .line 155
    iget-boolean p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->freeOrder:Z

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->processFreeOrder()V

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->confirmOrder()V

    return-void
.end method

.method private static final onCreateView$lambda$4(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 167
    invoke-static {p0, v1, p1, v0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->processCashPayment$default(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method private static final onCreateView$lambda$5(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Landroid/view/View;)V
    .locals 2

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 170
    invoke-static {p0, v1, p1, v0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->processCardPayment$default(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;ZILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic processCardPayment$default(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 272
    :cond_0
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->processCardPayment(Z)V

    return-void
.end method

.method public static synthetic processCashPayment$default(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 235
    :cond_0
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->processCashPayment(Z)V

    return-void
.end method


# virtual methods
.method public final confirmOrder()V
    .locals 6

    .line 177
    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/KioskSetting;->getCash_enabled()Z

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 179
    :goto_0
    sget-object v3, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/KioskSetting;->getCard_enabled()Z

    move-result v3

    if-ne v3, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 182
    :cond_2
    iget-object v3, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 183
    :cond_3
    const-string v3, "binding"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_9

    sget-object v5, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v5}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/KioskSetting;->getDirect_payment_enabled()Z

    move-result v5

    if-ne v5, v1, :cond_9

    .line 184
    iget-object v5, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v5, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v4

    :cond_4
    iget-object v3, v5, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    sget-object v3, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/KioskSetting;->getCash_enabled()Z

    move-result v3

    if-ne v3, v1, :cond_6

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    .line 186
    :goto_1
    invoke-virtual {p0, v1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->processCashPayment(Z)V

    return-void

    .line 187
    :cond_6
    sget-object v3, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/example/digitalkiosk/models/KioskSetting;->getCard_enabled()Z

    move-result v3

    if-ne v3, v1, :cond_8

    if-ne v0, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    .line 188
    :goto_2
    invoke-virtual {p0, v1}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->processCardPayment(Z)V

    :cond_8
    return-void

    .line 190
    :cond_9
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v0, :cond_a

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_a
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTab(Ljava/lang/Integer;)V

    .line 191
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v1, "payment_method"

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 193
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v1, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_b
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTitle(Ljava/lang/String;)V

    goto :goto_3

    .line 195
    :cond_c
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v0, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v4

    :cond_d
    const-string v1, "Payment Method"

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTitle(Ljava/lang/String;)V

    .line 196
    :goto_3
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v1, "select_one"

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 198
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v1, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    move-object v4, v1

    :goto_4
    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setSubtitle(Ljava/lang/String;)V

    return-void

    .line 200
    :cond_f
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v0, :cond_10

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    move-object v4, v0

    :goto_5
    const-string v0, "Select one of them"

    invoke-virtual {v4, v0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setSubtitle(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x103000a

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    const/16 p3, 0x1706

    .line 54
    invoke-virtual {p2, p3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/example/digitalkiosk/ShopActivity;

    .line 57
    new-instance p3, Lcom/example/digitalkiosk/adapters/OrderAdapter;

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->orderItems:Ljava/util/ArrayList;

    move-object v1, p2

    check-cast v1, Landroid/content/Context;

    invoke-direct {p3, v0, v1}, Lcom/example/digitalkiosk/adapters/OrderAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->orderAdapter:Lcom/example/digitalkiosk/adapters/OrderAdapter;

    .line 58
    sget p3, Lcom/example/digitalkiosk/R$layout;->complete_order:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p1, p3, v0, v2}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    .line 59
    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getBag_active()Z

    move-result p1

    const/4 p3, 0x1

    const-string v3, "binding"

    if-eqz p1, :cond_3

    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/KioskSetting;->getBag_force()Z

    move-result p1

    if-ne p1, p3, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p1, :cond_2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_2
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bag:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p1, :cond_4

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_4
    sget-object v4, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v4}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setKiosksetting(Lcom/example/digitalkiosk/models/KioskSetting;)V

    .line 62
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p1, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_5
    const-string v4, "Send Your Order"

    invoke-virtual {p1, v4}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTitle(Ljava/lang/String;)V

    .line 63
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v4, "send_order"

    invoke-virtual {p1, v4}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 65
    iget-object v4, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v4, :cond_6

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v0

    :cond_6
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTitle(Ljava/lang/String;)V

    .line 66
    :cond_7
    iget-object v4, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v4, :cond_8

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v0

    :cond_8
    const-string v5, "Total to Pay:"

    invoke-virtual {v4, v5}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setSubtitle(Ljava/lang/String;)V

    .line 67
    sget-object v4, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v5, "total_to_pay"

    invoke-virtual {v4, v5}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 69
    iget-object v5, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v5, :cond_9

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v0

    :cond_9
    invoke-virtual {v4}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setSubtitle(Ljava/lang/String;)V

    .line 70
    :cond_a
    sget-object v5, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v6, "need_bag"

    invoke-virtual {v5, v6}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 72
    iget-object v6, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v6, :cond_b

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v0

    :cond_b
    iget-object v6, v6, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->needBag:Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :cond_c
    iget-object v5, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v5, :cond_d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v0

    :cond_d
    iget-object v5, v5, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->orderItems:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v6, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->orderAdapter:Lcom/example/digitalkiosk/adapters/OrderAdapter;

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 74
    iget-object v5, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v5, :cond_e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v0

    :cond_e
    iget-object v5, v5, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->orderItems:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v6, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v6, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v6, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 75
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getBag_added()I

    move-result v1

    if-ne v1, p3, :cond_10

    .line 76
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v1, :cond_f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_f
    iget-object v1, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bagYes:Landroid/widget/RadioButton;

    invoke-virtual {v1, p3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 78
    :cond_10
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v1, :cond_11

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_11
    iget-object v1, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bagNo:Landroid/widget/RadioButton;

    invoke-virtual {v1, p3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 79
    :goto_1
    sget-object v1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v5, "yes_order"

    invoke-virtual {v1, v5}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 81
    iget-object v5, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v5, :cond_12

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v0

    :cond_12
    iget-object v5, v5, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bagYes:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_13
    sget-object v1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v5, "no_order"

    invoke-virtual {v1, v5}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 84
    iget-object v5, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v5, :cond_14

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v0

    :cond_14
    iget-object v5, v5, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bagNo:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :cond_15
    sget-object v1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getHandicap_on()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 86
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v1, :cond_16

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_16
    iget-object v1, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->appLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v1, :cond_17

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_17
    iget-object v1, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->paymentsWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 88
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v1, :cond_18

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_18
    iget-object v1, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->cashWrap:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v5, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 89
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v5, 0x1e

    .line 90
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 91
    iget-object v5, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v5, :cond_19

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v5, v0

    :cond_19
    iget-object v5, v5, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->cashWrap:Landroid/widget/LinearLayout;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    :cond_1a
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 95
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/Voucher;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_2

    :cond_1b
    move-object v1, v0

    :goto_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 96
    :cond_1c
    sget-object v1, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget-object v5, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v5}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getBag_added()I

    move-result v5

    sget-object v6, Lcom/example/digitalkiosk/HomeActivity;->Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

    invoke-virtual {v6}, Lcom/example/digitalkiosk/HomeActivity$Companion;->getSelected_language()I

    move-result v6

    new-instance v7, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;

    invoke-direct {v7, p0, p2}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$onCreateView$2;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Lcom/example/digitalkiosk/ShopActivity;)V

    check-cast v7, Lretrofit2/Callback;

    invoke-virtual {v1, v5, v2, v6, v7}, Lcom/example/digitalkiosk/network/ApiClient;->get_cart$app_release(IIILretrofit2/Callback;)V

    .line 111
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v1, :cond_1d

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_1d
    iget-object v1, v1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->bagOrdering:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Lcom/example/digitalkiosk/ShopActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 136
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p2, :cond_1e

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_1e
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTab(Ljava/lang/Integer;)V

    .line 137
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p2, :cond_1f

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_1f
    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance p3, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1, v4}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Lcom/example/digitalkiosk/models/Translation;Lcom/example/digitalkiosk/models/Translation;)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p1, :cond_20

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_20
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    new-instance p2, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$$ExternalSyntheticLambda2;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string p2, "confirm_order"

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_22

    .line 162
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p2, :cond_21

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_21
    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :cond_22
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string p2, "back_order"

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 165
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p2, :cond_23

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_23
    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->backButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/AppCompatButton;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_24
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p1, :cond_25

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_25
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->cashpay:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$$ExternalSyntheticLambda3;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p1, :cond_26

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_26
    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->cardPay:Landroid/widget/LinearLayout;

    new-instance p2, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$$ExternalSyntheticLambda4;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez p1, :cond_27

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3

    :cond_27
    move-object v0, p1

    :goto_3
    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final processCardPayment(Z)V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->cardPay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 277
    :cond_1
    new-instance v0, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    iget-object v2, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->paymentTimer:Landroid/os/CountDownTimer;

    new-instance v3, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;

    invoke-direct {v3, p1, p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCardPayment$dialog$1;-><init>(ZLcom/example/digitalkiosk/fragments/CompleteOrderFragment;)V

    check-cast v3, Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;-><init>(Landroid/os/CountDownTimer;Landroid/os/CountDownTimer;Lcom/example/digitalkiosk/fragments/CardPaymentFragment$OnDismissListener;)V

    .line 290
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 291
    const-string v1, "Card Payment"

    invoke-virtual {v0, p1, v1}, Lcom/example/digitalkiosk/fragments/CardPaymentFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final processCashPayment(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 236
    iget-object v1, v0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    const-string v2, "binding"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->getTab()Ljava/lang/Integer;

    move-result-object v1

    .line 237
    iget-object v4, v0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTab(Ljava/lang/Integer;)V

    .line 238
    iget-object v4, v0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v4, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_2
    iget-object v2, v4, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->cashpay:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v2, v0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 240
    :cond_3
    iget-object v2, v0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 242
    :cond_4
    sget-object v2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 243
    sget-object v2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/example/digitalkiosk/models/Voucher;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_5
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 244
    :cond_6
    sget-object v6, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget-object v2, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getOrder_type()Ljava/lang/String;

    move-result-object v7

    sget-object v2, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_table()Ljava/lang/Integer;

    move-result-object v8

    sget-object v2, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_time()Ljava/lang/String;

    move-result-object v9

    sget-object v2, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getPhone_number()Ljava/lang/String;

    move-result-object v10

    sget-object v2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getBag_added()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-instance v2, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCashPayment$1;

    move/from16 v3, p1

    invoke-direct {v2, v0, v1, v3}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processCashPayment$1;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Ljava/lang/Integer;Z)V

    move-object v15, v2

    check-cast v15, Lretrofit2/Callback;

    const-string v11, "cash"

    const-string v14, "1"

    invoke-virtual/range {v6 .. v15}, Lcom/example/digitalkiosk/network/ApiClient;->create_order$app_release(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lretrofit2/Callback;)V

    return-void
.end method

.method public final processFreeOrder()V
    .locals 15

    .line 205
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    const-string v1, "binding"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->getTab()Ljava/lang/Integer;

    move-result-object v0

    .line 206
    iget-object v3, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v3, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->setTab(Ljava/lang/Integer;)V

    .line 207
    iget-object v3, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->binding:Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;

    if-nez v3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v2

    :cond_2
    iget-object v1, v3, Lcom/example/digitalkiosk/databinding/CompleteOrderBinding;->confirmButton:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 209
    :cond_3
    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;->shoptimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 211
    :cond_4
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 212
    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getVoucher()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/Voucher;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 213
    :cond_6
    sget-object v5, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget-object v1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getOrder_type()Ljava/lang/String;

    move-result-object v6

    sget-object v1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_table()Ljava/lang/Integer;

    move-result-object v7

    sget-object v1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_time()Ljava/lang/String;

    move-result-object v8

    sget-object v1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getPhone_number()Ljava/lang/String;

    move-result-object v9

    sget-object v1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getBag_added()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-instance v1, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;

    invoke-direct {v1, p0, v0}, Lcom/example/digitalkiosk/fragments/CompleteOrderFragment$processFreeOrder$1;-><init>(Lcom/example/digitalkiosk/fragments/CompleteOrderFragment;Ljava/lang/Integer;)V

    move-object v14, v1

    check-cast v14, Lretrofit2/Callback;

    const-string v10, "cash"

    const-string v13, "0"

    invoke-virtual/range {v5 .. v14}, Lcom/example/digitalkiosk/network/ApiClient;->create_order$app_release(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lretrofit2/Callback;)V

    return-void
.end method
