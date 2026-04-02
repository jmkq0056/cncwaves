.class public final Lcom/denzcoskun/imageslider/ImageSlider$setupDots$1;
.super Ljava/lang/Object;
.source "ImageSlider.kt"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/denzcoskun/imageslider/ImageSlider;->setupDots(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/denzcoskun/imageslider/ImageSlider$setupDots$1",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "onPageScrollStateChanged",
        "",
        "state",
        "",
        "onPageScrolled",
        "position",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
        "imageslider_release"
    }
    k = 0x1
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/denzcoskun/imageslider/ImageSlider$setupDots$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 212
    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider$setupDots$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-static {v0, p1}, Lcom/denzcoskun/imageslider/ImageSlider;->access$setCurrentPage$p(Lcom/denzcoskun/imageslider/ImageSlider;I)V

    .line 213
    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider$setupDots$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-static {v0}, Lcom/denzcoskun/imageslider/ImageSlider;->access$getDots$p(Lcom/denzcoskun/imageslider/ImageSlider;)[Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-nez v3, :cond_1

    .line 214
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object v4, p0, Lcom/denzcoskun/imageslider/ImageSlider$setupDots$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-virtual {v4}, Lcom/denzcoskun/imageslider/ImageSlider;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/denzcoskun/imageslider/ImageSlider$setupDots$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-static {v5}, Lcom/denzcoskun/imageslider/ImageSlider;->access$getUnselectedDot$p(Lcom/denzcoskun/imageslider/ImageSlider;)I

    move-result v5

    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider$setupDots$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-static {v0}, Lcom/denzcoskun/imageslider/ImageSlider;->access$getDots$p(Lcom/denzcoskun/imageslider/ImageSlider;)[Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    aget-object v0, v0, p1

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v1, p0, Lcom/denzcoskun/imageslider/ImageSlider$setupDots$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-virtual {v1}, Lcom/denzcoskun/imageslider/ImageSlider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/denzcoskun/imageslider/ImageSlider$setupDots$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-static {v2}, Lcom/denzcoskun/imageslider/ImageSlider;->access$getSelectedDot$p(Lcom/denzcoskun/imageslider/ImageSlider;)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider$setupDots$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-static {v0}, Lcom/denzcoskun/imageslider/ImageSlider;->access$getItemChangeListener$p(Lcom/denzcoskun/imageslider/ImageSlider;)Lcom/denzcoskun/imageslider/interfaces/ItemChangeListener;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/denzcoskun/imageslider/ImageSlider$setupDots$1;->this$0:Lcom/denzcoskun/imageslider/ImageSlider;

    invoke-static {v0}, Lcom/denzcoskun/imageslider/ImageSlider;->access$getItemChangeListener$p(Lcom/denzcoskun/imageslider/ImageSlider;)Lcom/denzcoskun/imageslider/interfaces/ItemChangeListener;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-interface {v0, p1}, Lcom/denzcoskun/imageslider/interfaces/ItemChangeListener;->onItemChanged(I)V

    :cond_6
    return-void
.end method
