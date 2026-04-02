.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$2;
.super Ljava/lang/Object;
.source "ShopActivity.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/ShopActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Ljava/util/ArrayList<",
        "Lcom/example/digitalkiosk/models/BannerSlide;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u0001JD\u0010\u0005\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u00082\u001c\u0010\t\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\nH\u0016J.\u0010\u000b\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/example/digitalkiosk/ShopActivity$onCreate$2",
        "Lretrofit2/Callback;",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/BannerSlide;",
        "Lkotlin/collections/ArrayList;",
        "onResponse",
        "",
        "call",
        "Lretrofit2/Call;",
        "response",
        "Lretrofit2/Response;",
        "onFailure",
        "t",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/ShopActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/ShopActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/BannerSlide;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/BannerSlide;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/BannerSlide;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 150
    iget-object p2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {p2}, Lcom/example/digitalkiosk/ShopActivity;->access$getImageList$p(Lcom/example/digitalkiosk/ShopActivity;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, "imageList"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 151
    iget-object p2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {p2}, Lcom/example/digitalkiosk/ShopActivity;->access$getImageList$p(Lcom/example/digitalkiosk/ShopActivity;)Ljava/util/ArrayList;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v1

    :cond_1
    check-cast p1, Ljava/util/Collection;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 152
    iget-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$getInnerBannerAdapter$p(Lcom/example/digitalkiosk/ShopActivity;)Lcom/example/digitalkiosk/adapters/InnerBannerAdapter;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "innerBannerAdapter"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    invoke-virtual {v1}, Lcom/example/digitalkiosk/adapters/InnerBannerAdapter;->notifyDataSetChanged()V

    .line 153
    iget-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityShopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;->handicapIndicators:Lme/relex/circleindicator/CircleIndicator3;

    iget-object p2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/ShopActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityShopBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;->handicapBanner:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1, p2}, Lme/relex/circleindicator/CircleIndicator3;->setViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 155
    iget-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityShopBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ActivityShopBinding;->handicapBanner:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p2, Lcom/example/digitalkiosk/ShopActivity$onCreate$2$onResponse$1;

    iget-object v0, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$2;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-direct {p2, v0}, Lcom/example/digitalkiosk/ShopActivity$onCreate$2$onResponse$1;-><init>(Lcom/example/digitalkiosk/ShopActivity;)V

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    :cond_3
    return-void
.end method
