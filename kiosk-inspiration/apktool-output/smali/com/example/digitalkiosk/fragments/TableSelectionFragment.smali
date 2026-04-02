.class public final Lcom/example/digitalkiosk/fragments/TableSelectionFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "TableSelectionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTableSelectionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TableSelectionFragment.kt\ncom/example/digitalkiosk/fragments/TableSelectionFragment\n+ 2 Extensions.kt\ncoil/-SingletonExtensions\n+ 3 Extensions.kt\ncoil/-SingletonExtensions$load$1\n*L\n1#1,166:1\n54#2,3:167\n24#2:170\n57#2,6:171\n63#2,2:178\n57#3:177\n*S KotlinDebug\n*F\n+ 1 TableSelectionFragment.kt\ncom/example/digitalkiosk/fragments/TableSelectionFragment\n*L\n59#1:167,3\n59#1:170\n59#1:171,6\n59#1:178,2\n59#1:177\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J&\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/example/digitalkiosk/fragments/TableSelectionFragment;",
        "Landroidx/fragment/app/DialogFragment;",
        "kioskSetting",
        "Lcom/example/digitalkiosk/models/KioskSetting;",
        "optionsTimer",
        "Landroid/os/CountDownTimer;",
        "<init>",
        "(Lcom/example/digitalkiosk/models/KioskSetting;Landroid/os/CountDownTimer;)V",
        "tables",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Table;",
        "Lkotlin/collections/ArrayList;",
        "tableIndicators",
        "Lme/relex/circleindicator/CircleIndicator3;",
        "tableIndicatorsWrap",
        "Landroid/widget/LinearLayout;",
        "tablesNext",
        "Landroid/widget/RelativeLayout;",
        "tablesPrev",
        "tablesview",
        "Landroidx/viewpager2/widget/ViewPager2;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
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
.field private final kioskSetting:Lcom/example/digitalkiosk/models/KioskSetting;

.field private final optionsTimer:Landroid/os/CountDownTimer;

.field private tableIndicators:Lme/relex/circleindicator/CircleIndicator3;

.field private tableIndicatorsWrap:Landroid/widget/LinearLayout;

.field private final tables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Table;",
            ">;"
        }
    .end annotation
.end field

.field private tablesNext:Landroid/widget/RelativeLayout;

.field private tablesPrev:Landroid/widget/RelativeLayout;

.field private tablesview:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public static synthetic $r8$lambda$DY0ofoL5hTZLkVNpCcuVdrYjhVA(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->onCreateView$lambda$2(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FldlBROHXzl4htOJiwXB38Jwbog(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kzdbkjLzdQ0uSWYUPVy6OXUo884(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->onCreateView$lambda$4(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nULw2IS8V7uPAH6z7XNl9oUA_HA(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->onCreateView$lambda$3(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/example/digitalkiosk/models/KioskSetting;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->kioskSetting:Lcom/example/digitalkiosk/models/KioskSetting;

    .line 35
    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->optionsTimer:Landroid/os/CountDownTimer;

    .line 38
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tables:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/example/digitalkiosk/models/KioskSetting;Landroid/os/CountDownTimer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;-><init>(Lcom/example/digitalkiosk/models/KioskSetting;Landroid/os/CountDownTimer;)V

    return-void
.end method

.method public static final synthetic access$getOptionsTimer$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/os/CountDownTimer;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->optionsTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method public static final synthetic access$getTableIndicators$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Lme/relex/circleindicator/CircleIndicator3;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tableIndicators:Lme/relex/circleindicator/CircleIndicator3;

    return-object p0
.end method

.method public static final synthetic access$getTableIndicatorsWrap$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tableIndicatorsWrap:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static final synthetic access$getTables$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Ljava/util/ArrayList;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tables:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getTablesNext$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesNext:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static final synthetic access$getTablesPrev$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesPrev:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method public static final synthetic access$getTablesview$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesview:Landroidx/viewpager2/widget/ViewPager2;

    return-object p0
.end method

.method private static final onCreateView$lambda$1(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V
    .locals 3

    .line 103
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->optionsTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->optionsTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 105
    :cond_1
    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_table()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_2

    .line 106
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->dismiss()V

    return-void

    .line 108
    :cond_2
    sget-object p1, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget-object v0, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_table()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$3$1;

    invoke-direct {v1, p0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$3$1;-><init>(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)V

    check-cast v1, Lretrofit2/Callback;

    const-string p0, "available"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, p0, v2, v1}, Lcom/example/digitalkiosk/network/ApiClient;->update_table$app_release(ILjava/lang/String;Ljava/lang/Integer;Lretrofit2/Callback;)V

    return-void
.end method

.method private static final onCreateView$lambda$2(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->optionsTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 123
    :cond_0
    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_table()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 124
    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    const-string v0, "dine-in"

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/OptionActivity$Companion;->setOrder_type(Ljava/lang/String;)V

    .line 126
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/example/digitalkiosk/ShopActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private static final onCreateView$lambda$3(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V
    .locals 2

    .line 144
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesview:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    const-string v1, "tablesview"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesview:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method private static final onCreateView$lambda$4(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Landroid/view/View;)V
    .locals 2

    .line 147
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesview:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    const-string v1, "tablesview"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    iget-object p0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesview:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {p1, p0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const v0, 0x103000a

    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_0

    const/16 v0, 0x1706

    .line 55
    invoke-virtual {p3, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 57
    :cond_0
    sget p3, Lcom/example/digitalkiosk/R$layout;->table_selection:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 58
    sget p2, Lcom/example/digitalkiosk/R$id;->logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 59
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->kioskSetting:Lcom/example/digitalkiosk/models/KioskSetting;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/example/digitalkiosk/models/KioskSetting;->getApp_logo()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    move-object p3, v0

    .line 169
    :goto_0
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 170
    invoke-static {v1}, Lcoil/Coil;->imageLoader(Landroid/content/Context;)Lcoil/ImageLoader;

    move-result-object v1

    .line 173
    new-instance v2, Lcoil/request/ImageRequest$Builder;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcoil/request/ImageRequest$Builder;-><init>(Landroid/content/Context;)V

    .line 174
    invoke-virtual {v2, p3}, Lcoil/request/ImageRequest$Builder;->data(Ljava/lang/Object;)Lcoil/request/ImageRequest$Builder;

    move-result-object p3

    .line 175
    invoke-virtual {p3, p2}, Lcoil/request/ImageRequest$Builder;->target(Landroid/widget/ImageView;)Lcoil/request/ImageRequest$Builder;

    move-result-object p2

    .line 178
    invoke-virtual {p2}, Lcoil/request/ImageRequest$Builder;->build()Lcoil/request/ImageRequest;

    move-result-object p2

    .line 179
    invoke-interface {v1, p2}, Lcoil/ImageLoader;->enqueue(Lcoil/request/ImageRequest;)Lcoil/request/Disposable;

    .line 60
    new-instance p2, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;

    iget-object p3, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tables:Ljava/util/ArrayList;

    invoke-direct {p2, p3}, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;-><init>(Ljava/util/ArrayList;)V

    .line 61
    sget p3, Lcom/example/digitalkiosk/R$id;->tables:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesview:Landroidx/viewpager2/widget/ViewPager2;

    .line 62
    sget p3, Lcom/example/digitalkiosk/R$id;->tables_indicators:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lme/relex/circleindicator/CircleIndicator3;

    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tableIndicators:Lme/relex/circleindicator/CircleIndicator3;

    .line 63
    sget p3, Lcom/example/digitalkiosk/R$id;->tables_indicators_wrap:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tableIndicatorsWrap:Landroid/widget/LinearLayout;

    .line 64
    sget p3, Lcom/example/digitalkiosk/R$id;->table_next:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesNext:Landroid/widget/RelativeLayout;

    .line 65
    sget p3, Lcom/example/digitalkiosk/R$id;->table_previous:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesPrev:Landroid/widget/RelativeLayout;

    .line 66
    iget-object p3, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesview:Landroidx/viewpager2/widget/ViewPager2;

    const-string v1, "tablesview"

    if-nez p3, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v0

    :cond_2
    move-object v2, p2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p3, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 67
    sget-object p3, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget-object v2, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_table()Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;

    invoke-direct {v3, p0, p2}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;-><init>(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Lcom/example/digitalkiosk/adapters/TablePagesAdapter;)V

    check-cast v3, Lretrofit2/Callback;

    invoke-virtual {p3, v2, v3}, Lcom/example/digitalkiosk/network/ApiClient;->get_tables$app_release(Ljava/lang/Integer;Lretrofit2/Callback;)V

    .line 101
    sget p2, Lcom/example/digitalkiosk/R$id;->back_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/Button;

    .line 102
    new-instance v2, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    sget v2, Lcom/example/digitalkiosk/R$id;->confirm_button:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/Button;

    .line 121
    new-instance p3, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$$ExternalSyntheticLambda1;-><init>(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)V

    invoke-virtual {v2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    sget-object p3, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v3, "choose_your_table"

    invoke-virtual {p3, v3}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 133
    sget v3, Lcom/example/digitalkiosk/R$id;->title_text:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_3
    sget-object p3, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v3, "back_takeaway"

    invoke-virtual {p3, v3}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 137
    invoke-virtual {p3}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_4
    sget-object p2, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string p3, "confirm_takeaway"

    invoke-virtual {p2, p3}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 141
    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Translation;->getTranslation()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_5
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesNext:Landroid/widget/RelativeLayout;

    if-nez p2, :cond_6

    const-string p2, "tablesNext"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_6
    new-instance p3, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$$ExternalSyntheticLambda2;-><init>(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesPrev:Landroid/widget/RelativeLayout;

    if-nez p2, :cond_7

    const-string p2, "tablesPrev"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_7
    new-instance p3, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$$ExternalSyntheticLambda3;-><init>(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->tablesview:Landroidx/viewpager2/widget/ViewPager2;

    if-nez p2, :cond_8

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    move-object v0, p2

    :goto_1
    new-instance p2, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7;

    invoke-direct {p2, p0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$7;-><init>(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)V

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, p2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    return-object p1
.end method
