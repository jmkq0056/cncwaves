.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$6;
.super Ljava/lang/Object;
.source "ShopActivity.kt"

# interfaces
.implements Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/ShopActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/example/digitalkiosk/ShopActivity$onCreate$6",
        "Lcom/example/digitalkiosk/adapters/ItemAdapter$OnClickListener;",
        "onClick",
        "",
        "item",
        "Lcom/example/digitalkiosk/models/Item;",
        "itemImage",
        "Landroid/view/View;",
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
.method constructor <init>(Lcom/example/digitalkiosk/ShopActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/digitalkiosk/ShopActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    iput-object p2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6;->$moreSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6;->$coffeeSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/example/digitalkiosk/models/Item;Landroid/view/View;)V
    .locals 9

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemImage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    const-string p2, "API"

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getDetails_present()Z

    move-result p2

    if-nez p2, :cond_2

    .line 249
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    new-instance v0, Lcom/example/digitalkiosk/models/ItemToAdd;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getId()I

    move-result v1

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getType()Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/example/digitalkiosk/models/ItemToAdd;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setItemToAdd(Lcom/example/digitalkiosk/models/ItemToAdd;)V

    .line 250
    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    .line 251
    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/ShopActivity;->addToCart(Lcom/example/digitalkiosk/models/ItemToAdd;)V

    .line 252
    invoke-static {p2}, Lcom/example/digitalkiosk/ShopActivity;->access$getCartIcon$p(Lcom/example/digitalkiosk/ShopActivity;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "cartIcon"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p2}, Lcom/example/digitalkiosk/ShopActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityShopBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;->expandCartIcon:Landroid/widget/RelativeLayout;

    const-string v1, "expandCartIcon"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, p1, v0}, Lcom/example/digitalkiosk/ShopActivity;->animateCart(Landroid/widget/ImageView;Landroid/view/View;)V

    :cond_1
    return-void

    .line 255
    :cond_2
    sget-object p2, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getType()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/example/digitalkiosk/HomeActivity;->Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/HomeActivity$Companion;->getSelected_language()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;

    iget-object v4, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    iget-object v5, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6;->$moreSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$6;->$coffeeSideTitle:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3, p1, v4, v5, v6}, Lcom/example/digitalkiosk/ShopActivity$onCreate$6$onClick$2;-><init>(Lcom/example/digitalkiosk/models/Item;Lcom/example/digitalkiosk/ShopActivity;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Lretrofit2/Callback;

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/example/digitalkiosk/network/ApiClient;->get_item_details$app_release(ILjava/lang/String;Ljava/lang/Integer;Lretrofit2/Callback;)V

    return-void
.end method
