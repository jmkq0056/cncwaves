.class public final Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "InnerBannerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/adapters/InnerBannerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0016\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "mybinding",
        "Lcom/example/digitalkiosk/databinding/InnerBannerBinding;",
        "onClickListener",
        "Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;",
        "<init>",
        "(Lcom/example/digitalkiosk/databinding/InnerBannerBinding;Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;)V",
        "bind",
        "",
        "slide",
        "Lcom/example/digitalkiosk/models/BannerSlide;",
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
.field private final mybinding:Lcom/example/digitalkiosk/databinding/InnerBannerBinding;

.field private final onClickListener:Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$OeHIJ7GmRSb3DBotOsGoC097eHo(Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;Lcom/example/digitalkiosk/models/BannerSlide;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;->bind$lambda$0(Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;Lcom/example/digitalkiosk/models/BannerSlide;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/digitalkiosk/databinding/InnerBannerBinding;Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;)V
    .locals 1

    const-string v0, "mybinding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/example/digitalkiosk/databinding/InnerBannerBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 16
    iput-object p1, p0, Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/InnerBannerBinding;

    .line 17
    iput-object p2, p0, Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;

    return-void
.end method

.method private static final bind$lambda$0(Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;Lcom/example/digitalkiosk/models/BannerSlide;Landroid/view/View;)V
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;->onClickListener:Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/BannerSlide;->getCategory()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$OnClickListener;->onClick(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final bind(Lcom/example/digitalkiosk/models/BannerSlide;I)V
    .locals 1

    const-string p2, "slide"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/InnerBannerBinding;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/BannerSlide;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/databinding/InnerBannerBinding;->setImage(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;->mybinding:Lcom/example/digitalkiosk/databinding/InnerBannerBinding;

    iget-object p2, p2, Lcom/example/digitalkiosk/databinding/InnerBannerBinding;->imageContainer:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/adapters/InnerBannerAdapter$ViewHolder;Lcom/example/digitalkiosk/models/BannerSlide;)V

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
