.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;
.super Ljava/lang/Object;
.source "ShopActivity.kt"

# interfaces
.implements Lcom/example/digitalkiosk/fragments/ItemConfigFragment$OnSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->onSubmit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1",
        "Lcom/example/digitalkiosk/fragments/ItemConfigFragment$OnSubmitListener;",
        "onSubmit",
        "",
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
.field final synthetic $coffeeSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

.field final synthetic $moreSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/example/digitalkiosk/ShopActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/models/ItemDetails;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/example/digitalkiosk/ShopActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/digitalkiosk/models/ItemDetails;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/example/digitalkiosk/ShopActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    iput-object p2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->$moreSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    iput-object p4, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->$coffeeSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubmit()V
    .locals 7

    .line 277
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    .line 278
    invoke-virtual {v2, v0}, Lcom/example/digitalkiosk/ShopActivity;->addToCart(Lcom/example/digitalkiosk/models/ItemToAdd;)V

    .line 279
    invoke-static {v2}, Lcom/example/digitalkiosk/ShopActivity;->access$getCartIcon$p(Lcom/example/digitalkiosk/ShopActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "cartIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v2}, Lcom/example/digitalkiosk/ShopActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityShopBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;->expandCartIcon:Landroid/widget/RelativeLayout;

    const-string v4, "expandCartIcon"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    invoke-virtual {v2, v0, v3}, Lcom/example/digitalkiosk/ShopActivity;->animateCart(Landroid/widget/ImageView;Landroid/view/View;)V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getAttributes()Lcom/example/digitalkiosk/models/ItemAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemAttributes;->getWant_more()Ljava/lang/String;

    move-result-object v0

    const-string v2, "fm"

    if-eqz v0, :cond_3

    .line 282
    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getAttributes()Lcom/example/digitalkiosk/models/ItemAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemAttributes;->getWant_more()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 283
    new-instance v3, Lcom/example/digitalkiosk/fragments/SidesFragment;

    iget-object v4, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->$moreSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/ItemDetails;->getAttributes()Lcom/example/digitalkiosk/models/ItemAttributes;

    move-result-object v5

    invoke-virtual {v5}, Lcom/example/digitalkiosk/models/ItemAttributes;->getCoffee_icecream()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {v6}, Lcom/example/digitalkiosk/ShopActivity;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v6

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/example/digitalkiosk/fragments/SidesFragment;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/CountDownTimer;)V

    .line 284
    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {v0}, Lcom/example/digitalkiosk/ShopActivity;->access$getFm$p(Lcom/example/digitalkiosk/ShopActivity;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    const-string v0, "Want More"

    invoke-virtual {v3, v1, v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 285
    :cond_3
    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getAttributes()Lcom/example/digitalkiosk/models/ItemAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemAttributes;->getCoffee_icecream()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 286
    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getAttributes()Lcom/example/digitalkiosk/models/ItemAttributes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemAttributes;->getCoffee_icecream()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 287
    new-instance v3, Lcom/example/digitalkiosk/fragments/SidesFragment;

    iget-object v4, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->$coffeeSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {v5}, Lcom/example/digitalkiosk/ShopActivity;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v5

    invoke-direct {v3, v0, v4, v1, v5}, Lcom/example/digitalkiosk/fragments/SidesFragment;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/os/CountDownTimer;)V

    .line 288
    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {v0}, Lcom/example/digitalkiosk/ShopActivity;->access$getFm$p(Lcom/example/digitalkiosk/ShopActivity;)Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    const-string v0, "Coffee Icecream"

    invoke-virtual {v3, v1, v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
