.class final Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$update$1;
.super Ljava/lang/Object;
.source "ImageSlider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/denzcoskun/imageslider/ImageSlider;->scheduleTimer(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/denzcoskun/imageslider/ImageSlider;


# direct methods
.method constructor <init>(Lcom/denzcoskun/imageslider/ImageSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$update$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 250
    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$update$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-static {v0}, Lcom/denzcoskun/imageslider/ImageSlider;->access$getCurrentPage$p(Lcom/denzcoskun/imageslider/ImageSlider;)I

    move-result v0

    iget-object v1, p0, Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$update$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-static {v1}, Lcom/denzcoskun/imageslider/ImageSlider;->access$getImageCount$p(Lcom/denzcoskun/imageslider/ImageSlider;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$update$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/denzcoskun/imageslider/ImageSlider;->access$setCurrentPage$p(Lcom/denzcoskun/imageslider/ImageSlider;I)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$update$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-static {v0}, Lcom/denzcoskun/imageslider/ImageSlider;->access$getViewPager$p(Lcom/denzcoskun/imageslider/ImageSlider;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v1, p0, Lcom/denzcoskun/imageslider/ImageSlider$scheduleTimer$update$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-static {v1}, Lcom/denzcoskun/imageslider/ImageSlider;->access$getCurrentPage$p(Lcom/denzcoskun/imageslider/ImageSlider;)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-static {v1, v3}, Lcom/denzcoskun/imageslider/ImageSlider;->access$setCurrentPage$p(Lcom/denzcoskun/imageslider/ImageSlider;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method
