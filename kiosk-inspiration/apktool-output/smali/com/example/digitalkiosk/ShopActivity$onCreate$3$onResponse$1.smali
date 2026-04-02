.class public final Lcom/example/digitalkiosk/ShopActivity$onCreate$3$onResponse$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "ShopActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/ShopActivity$onCreate$3;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/example/digitalkiosk/ShopActivity$onCreate$3$onResponse$1",
        "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;",
        "onPageSelected",
        "",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/ShopActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/ShopActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$3$onResponse$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    .line 183
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3

    .line 185
    invoke-super {p0, p1}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;->onPageSelected(I)V

    .line 186
    iget-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$3$onResponse$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$getSliderHandler$p(Lcom/example/digitalkiosk/ShopActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "sliderHandler"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object v2, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$3$onResponse$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/ShopActivity;->getSliderRunnable()Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    iget-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$3$onResponse$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-static {p1}, Lcom/example/digitalkiosk/ShopActivity;->access$getSliderHandler$p(Lcom/example/digitalkiosk/ShopActivity;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    iget-object p1, p0, Lcom/example/digitalkiosk/ShopActivity$onCreate$3$onResponse$1;->this$0:Lcom/example/digitalkiosk/ShopActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/ShopActivity;->getSliderRunnable()Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
