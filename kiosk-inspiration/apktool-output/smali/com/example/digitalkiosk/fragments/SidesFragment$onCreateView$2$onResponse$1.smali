.class public final Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$1;
.super Ljava/lang/Object;
.source "SidesFragment.kt"

# interfaces
.implements Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$1",
        "Lcom/example/digitalkiosk/adapters/ConfigItemAdapter$OnClickListener;",
        "onClick",
        "",
        "model",
        "Lcom/example/digitalkiosk/models/Item;",
        "position",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/SidesFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$1;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/example/digitalkiosk/models/Item;I)V
    .locals 9

    const-string p2, "model"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object p2, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    new-instance v0, Lcom/example/digitalkiosk/models/ItemToAdd;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Item;->getId()I

    move-result v1

    const/16 v7, 0x3e

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/example/digitalkiosk/models/ItemToAdd;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/ShopActivity$Companion;->setItemToAdd(Lcom/example/digitalkiosk/models/ItemToAdd;)V

    .line 109
    sget-object p1, Lcom/example/digitalkiosk/ShopActivity;->Companion:Lcom/example/digitalkiosk/ShopActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity$Companion;->getItemToAdd()Lcom/example/digitalkiosk/models/ItemToAdd;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/SidesFragment$onCreateView$2$onResponse$1;->this$0:Lcom/example/digitalkiosk/fragments/SidesFragment;

    .line 110
    invoke-virtual {p2}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getShopActivity()Lcom/example/digitalkiosk/ShopActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/ShopActivity;->addToCart(Lcom/example/digitalkiosk/models/ItemToAdd;)V

    .line 111
    invoke-virtual {p2}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getItemsView()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    .line 112
    invoke-virtual {p2}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getItemsView()Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 113
    invoke-virtual {p2}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getCartIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/example/digitalkiosk/fragments/SidesFragment;->getCircleIndicator()Lme/relex/circleindicator/CircleIndicator3;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p2, p1, v0}, Lcom/example/digitalkiosk/fragments/SidesFragment;->animateCart(Landroid/widget/ImageView;Landroid/view/View;)V

    :cond_0
    return-void
.end method
