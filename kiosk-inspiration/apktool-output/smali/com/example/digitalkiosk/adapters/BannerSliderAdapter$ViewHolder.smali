.class public final Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "BannerSliderAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/BannerSliderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mybinding",
        "Lcom/example/digitalkiosk/databinding/MainBannerBinding;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Lcom/example/digitalkiosk/databinding/MainBannerBinding;Landroid/content/Context;)V",
        "bind",
        "",
        "image",
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
.field private final context:Landroid/content/Context;

.field private final mybinding:Lcom/example/digitalkiosk/databinding/MainBannerBinding;


# direct methods
.method public static synthetic $r8$lambda$2-mTiWgrphAA9ru_w1AutBRjmYU(Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;->bind$lambda$0(Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/digitalkiosk/databinding/MainBannerBinding;Landroid/content/Context;)V
    .locals 1

    const-string v0, "mybinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/example/digitalkiosk/databinding/MainBannerBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/MainBannerBinding;

    .line 17
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;->context:Landroid/content/Context;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;Landroid/view/View;)V
    .locals 2

    .line 22
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;->context:Landroid/content/Context;

    const-class v1, Lcom/example/digitalkiosk/OptionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 23
    iget-object p0, p0, Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;->context:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/core/content/ContextCompat;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "image"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/MainBannerBinding;

    invoke-virtual {p2, p1}, Lcom/example/digitalkiosk/databinding/MainBannerBinding;->setImage(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/MainBannerBinding;

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/MainBannerBinding;->imageContainer:Landroid/widget/RelativeLayout;

    new-instance p2, Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/adapters/BannerSliderAdapter$ViewHolder;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
