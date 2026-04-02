.class final Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$1;
.super Ljava/lang/Object;
.source "ViewPagerAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $position:I

.field final synthetic this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;


# direct methods
.method constructor <init>(Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$1;->this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;

    iput p2, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$1;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 96
    iget-object p1, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$1;->this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;

    invoke-static {p1}, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;->access$getCurrentTouchTime$p(Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;->access$setLastTouchTime$p(Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;J)V

    .line 97
    iget-object p1, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$1;->this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;->access$setCurrentTouchTime$p(Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;J)V

    .line 99
    iget-object p1, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$1;->this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;

    invoke-static {p1}, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;->access$getCurrentTouchTime$p(Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$1;->this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;

    invoke-static {p1}, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;->access$getLastTouchTime$p(Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 p1, 0xfa

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$1;->this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;

    invoke-static {p1}, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;->access$getItemClickListener$p(Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;)Lcom/denzcoskun/imageslider/interfaces/ItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$1;->$position:I

    invoke-interface {p1, v0}, Lcom/denzcoskun/imageslider/interfaces/ItemClickListener;->doubleClick(I)V

    return-void

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$1;->this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;

    invoke-static {p1}, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;->access$getItemClickListener$p(Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;)Lcom/denzcoskun/imageslider/interfaces/ItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$1;->$position:I

    invoke-interface {p1, v0}, Lcom/denzcoskun/imageslider/interfaces/ItemClickListener;->onItemSelected(I)V

    :cond_1
    return-void
.end method
