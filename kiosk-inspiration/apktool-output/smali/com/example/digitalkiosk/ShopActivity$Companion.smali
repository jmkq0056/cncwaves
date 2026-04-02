.class public final Lcom/example/digitalkiosk/ShopActivity$Companion;
.super Ljava/lang/Object;
.source "ShopActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/ShopActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\tR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0013\u001a\u00020\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0010\"\u0004\u0008\u0015\u0010\u0012R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010(\u001a\u0004\u0018\u00010)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010.\u001a\u0004\u0018\u00010/X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R\u001c\u00104\u001a\u0004\u0018\u000105X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109\u00a8\u0006:"
    }
    d2 = {
        "Lcom/example/digitalkiosk/ShopActivity$Companion;",
        "",
        "<init>",
        "()V",
        "selectedCategory",
        "Lcom/example/digitalkiosk/models/Category;",
        "getSelectedCategory",
        "()Lcom/example/digitalkiosk/models/Category;",
        "setSelectedCategory",
        "(Lcom/example/digitalkiosk/models/Category;)V",
        "selectedSubCategory",
        "getSelectedSubCategory",
        "setSelectedSubCategory",
        "processing",
        "",
        "getProcessing",
        "()Z",
        "setProcessing",
        "(Z)V",
        "bag_active",
        "getBag_active",
        "setBag_active",
        "voucher",
        "Lcom/example/digitalkiosk/models/Voucher;",
        "getVoucher",
        "()Lcom/example/digitalkiosk/models/Voucher;",
        "setVoucher",
        "(Lcom/example/digitalkiosk/models/Voucher;)V",
        "itemToAdd",
        "Lcom/example/digitalkiosk/models/ItemToAdd;",
        "getItemToAdd",
        "()Lcom/example/digitalkiosk/models/ItemToAdd;",
        "setItemToAdd",
        "(Lcom/example/digitalkiosk/models/ItemToAdd;)V",
        "bag_added",
        "",
        "getBag_added",
        "()I",
        "setBag_added",
        "(I)V",
        "paymentCancelable",
        "Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "getPaymentCancelable",
        "()Lcom/stripe/stripeterminal/external/callable/Cancelable;",
        "setPaymentCancelable",
        "(Lcom/stripe/stripeterminal/external/callable/Cancelable;)V",
        "currentPaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "getCurrentPaymentIntent",
        "()Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "setCurrentPaymentIntent",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V",
        "currency",
        "Lcom/example/digitalkiosk/models/Currency;",
        "getCurrency",
        "()Lcom/example/digitalkiosk/models/Currency;",
        "setCurrency",
        "(Lcom/example/digitalkiosk/models/Currency;)V",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/digitalkiosk/ShopActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBag_active()Z
    .locals 1

    .line 102
    invoke-static {}, Lcom/example/digitalkiosk/ShopActivity;->access$getBag_active$cp()Z

    move-result v0

    return v0
.end method

.method public final getBag_added()I
    .locals 1

    .line 105
    invoke-static {}, Lcom/example/digitalkiosk/ShopActivity;->access$getBag_added$cp()I

    move-result v0

    return v0
.end method

.method public final getCurrency()Lcom/example/digitalkiosk/models/Currency;
    .locals 1

    .line 108
    invoke-static {}, Lcom/example/digitalkiosk/ShopActivity;->access$getCurrency$cp()Lcom/example/digitalkiosk/models/Currency;

    move-result-object v0

    return-object v0
.end method

.method public final getCurrentPaymentIntent()Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    .line 107
    invoke-static {}, Lcom/example/digitalkiosk/ShopActivity;->access$getCurrentPaymentIntent$cp()Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    return-object v0
.end method

.method public final getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;
    .locals 1

    .line 104
    invoke-static {}, Lcom/example/digitalkiosk/ShopActivity;->access$getItemToAdd$cp()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    return-object v0
.end method

.method public final getPaymentCancelable()Lcom/stripe/stripeterminal/external/callable/Cancelable;
    .locals 1

    .line 106
    invoke-static {}, Lcom/example/digitalkiosk/ShopActivity;->access$getPaymentCancelable$cp()Lcom/stripe/stripeterminal/external/callable/Cancelable;

    move-result-object v0

    return-object v0
.end method

.method public final getProcessing()Z
    .locals 1

    .line 101
    invoke-static {}, Lcom/example/digitalkiosk/ShopActivity;->access$getProcessing$cp()Z

    move-result v0

    return v0
.end method

.method public final getSelectedCategory()Lcom/example/digitalkiosk/models/Category;
    .locals 1

    .line 99
    invoke-static {}, Lcom/example/digitalkiosk/ShopActivity;->access$getSelectedCategory$cp()Lcom/example/digitalkiosk/models/Category;

    move-result-object v0

    return-object v0
.end method

.method public final getSelectedSubCategory()Lcom/example/digitalkiosk/models/Category;
    .locals 1

    .line 100
    invoke-static {}, Lcom/example/digitalkiosk/ShopActivity;->access$getSelectedSubCategory$cp()Lcom/example/digitalkiosk/models/Category;

    move-result-object v0

    return-object v0
.end method

.method public final getVoucher()Lcom/example/digitalkiosk/models/Voucher;
    .locals 1

    .line 103
    invoke-static {}, Lcom/example/digitalkiosk/ShopActivity;->access$getVoucher$cp()Lcom/example/digitalkiosk/models/Voucher;

    move-result-object v0

    return-object v0
.end method

.method public final setBag_active(Z)V
    .locals 0

    .line 102
    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$setBag_active$cp(Z)V

    return-void
.end method

.method public final setBag_added(I)V
    .locals 0

    .line 105
    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$setBag_added$cp(I)V

    return-void
.end method

.method public final setCurrency(Lcom/example/digitalkiosk/models/Currency;)V
    .locals 0

    .line 108
    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$setCurrency$cp(Lcom/example/digitalkiosk/models/Currency;)V

    return-void
.end method

.method public final setCurrentPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V
    .locals 0

    .line 107
    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$setCurrentPaymentIntent$cp(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)V

    return-void
.end method

.method public final setItemToAdd(Lcom/example/digitalkiosk/models/ItemToAdd;)V
    .locals 0

    .line 104
    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$setItemToAdd$cp(Lcom/example/digitalkiosk/models/ItemToAdd;)V

    return-void
.end method

.method public final setPaymentCancelable(Lcom/stripe/stripeterminal/external/callable/Cancelable;)V
    .locals 0

    .line 106
    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$setPaymentCancelable$cp(Lcom/stripe/stripeterminal/external/callable/Cancelable;)V

    return-void
.end method

.method public final setProcessing(Z)V
    .locals 0

    .line 101
    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$setProcessing$cp(Z)V

    return-void
.end method

.method public final setSelectedCategory(Lcom/example/digitalkiosk/models/Category;)V
    .locals 0

    .line 99
    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$setSelectedCategory$cp(Lcom/example/digitalkiosk/models/Category;)V

    return-void
.end method

.method public final setSelectedSubCategory(Lcom/example/digitalkiosk/models/Category;)V
    .locals 0

    .line 100
    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$setSelectedSubCategory$cp(Lcom/example/digitalkiosk/models/Category;)V

    return-void
.end method

.method public final setVoucher(Lcom/example/digitalkiosk/models/Voucher;)V
    .locals 0

    .line 103
    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$setVoucher$cp(Lcom/example/digitalkiosk/models/Voucher;)V

    return-void
.end method
