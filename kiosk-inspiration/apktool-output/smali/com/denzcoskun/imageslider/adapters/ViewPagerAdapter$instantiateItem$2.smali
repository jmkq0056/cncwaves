.class final Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$2;
.super Ljava/lang/Object;
.source "ViewPagerAdapter.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "v",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "event",
        "Landroid/view/MotionEvent;",
        "onTouch"
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

    iput-object p1, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$2;->this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;

    iput p2, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$2;->$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 110
    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-object p1, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$2;->this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;

    invoke-static {p1}, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;->access$getTouchListener$p(Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;)Lcom/denzcoskun/imageslider/interfaces/TouchListener;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    sget-object p2, Lcom/denzcoskun/imageslider/constants/ActionTypes;->MOVE:Lcom/denzcoskun/imageslider/constants/ActionTypes;

    iget v0, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$2;->$position:I

    invoke-interface {p1, p2, v0}, Lcom/denzcoskun/imageslider/interfaces/TouchListener;->onTouched(Lcom/denzcoskun/imageslider/constants/ActionTypes;I)V

    goto :goto_0

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$2;->this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;

    invoke-static {p1}, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;->access$getTouchListener$p(Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;)Lcom/denzcoskun/imageslider/interfaces/TouchListener;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    sget-object p2, Lcom/denzcoskun/imageslider/constants/ActionTypes;->UP:Lcom/denzcoskun/imageslider/constants/ActionTypes;

    iget v0, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$2;->$position:I

    invoke-interface {p1, p2, v0}, Lcom/denzcoskun/imageslider/interfaces/TouchListener;->onTouched(Lcom/denzcoskun/imageslider/constants/ActionTypes;I)V

    goto :goto_0

    .line 112
    :cond_4
    iget-object p1, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$2;->this$0:Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;

    invoke-static {p1}, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;->access$getTouchListener$p(Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter;)Lcom/denzcoskun/imageslider/interfaces/TouchListener;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    sget-object p2, Lcom/denzcoskun/imageslider/constants/ActionTypes;->DOWN:Lcom/denzcoskun/imageslider/constants/ActionTypes;

    iget v0, p0, Lcom/denzcoskun/imageslider/adapters/ViewPagerAdapter$instantiateItem$2;->$position:I

    invoke-interface {p1, p2, v0}, Lcom/denzcoskun/imageslider/interfaces/TouchListener;->onTouched(Lcom/denzcoskun/imageslider/constants/ActionTypes;I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
