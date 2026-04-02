.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;
.super Ljava/lang/Object;
.source "ShopActivity.kt"

# interfaces
.implements Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$OnSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
        "com/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1",
        "Lcom/example/digitalkiosk/fragments/ItemExtrasFragment$OnSubmitListener;",
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
.method constructor <init>(Lcom/example/digitalkiosk/models/ItemDetails;Lcom/example/digitalkiosk/ShopActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/digitalkiosk/models/ItemDetails;",
            "Lcom/example/digitalkiosk/ShopActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    iput-object p2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    iput-object p3, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->$moreSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->$coffeeSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubmit()V
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getSides()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getSizes()Lcom/example/digitalkiosk/models/ItemSizes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemSizes;->getMedium()Lcom/example/digitalkiosk/models/ItemSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemSize;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getSizes()Lcom/example/digitalkiosk/models/ItemSizes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemSizes;->getLarge()Lcom/example/digitalkiosk/models/ItemSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemSize;->getEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemDetails;->getSizes()Lcom/example/digitalkiosk/models/ItemSizes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemSizes;->getXl()Lcom/example/digitalkiosk/models/ItemSize;

    move-result-object v0

    invoke-virtual {v0}, Lcom/example/digitalkiosk/models/ItemSize;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 293
    :cond_0
    sget-object v0, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    .line 294
    invoke-virtual {v2, v0}, Lcom/example/digitalkiosk/ShopActivity;->addToCart(Lcom/example/digitalkiosk/models/ItemToAdd;)V

    .line 295
    invoke-static {v2}, Lcom/example/digitalkiosk/ShopActivity;->access$getCartIcon$p(Lcom/example/digitalkiosk/ShopActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "cartIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {v2}, Lcom/example/digitalkiosk/ShopActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityShopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;->expandCartIcon:Landroid/widget/RelativeLayout;

    const-string v3, "expandCartIcon"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v1, v0}, Lcom/example/digitalkiosk/ShopActivity;->animateCart(Landroid/widget/ImageView;Landroid/view/View;)V

    :cond_2
    return-void

    .line 272
    :cond_3
    :goto_1
    new-instance v0, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;

    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    iget-object v3, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/ShopActivity;->getTimer()Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;-><init>(Lcom/example/digitalkiosk/models/ItemDetails;Landroid/os/CountDownTimer;)V

    const/4 v2, 0x0

    .line 273
    invoke-virtual {v0, v2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->setCancelable(Z)V

    .line 274
    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {v2}, Lcom/example/digitalkiosk/ShopActivity;->access$getFm$p(Lcom/example/digitalkiosk/ShopActivity;)Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "fm"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    const-string v2, "Config Fragment"

    invoke-virtual {v0, v1, v2}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 275
    new-instance v1, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;

    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->$itemDetails:Lcom/example/digitalkiosk/models/ItemDetails;

    iget-object v3, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->$moreSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    iget-object v5, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1;->$coffeeSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2$onResponse$1$onSubmit$1;-><init>(Lcom/example/digitalkiosk/models/ItemDetails;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/example/digitalkiosk/ShopActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v1, Lcom/example/digitalkiosk/fragments/ItemConfigFragment$OnSubmitListener;

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/fragments/ItemConfigFragment;->setOnSubmitListener(Lcom/example/digitalkiosk/fragments/ItemConfigFragment$OnSubmitListener;)V

    return-void
.end method
