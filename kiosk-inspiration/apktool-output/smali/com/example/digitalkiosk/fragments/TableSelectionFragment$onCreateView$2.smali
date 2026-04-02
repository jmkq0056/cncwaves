.class public final Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "TableSelectionFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "Lcom/example/digitalkiosk/models/Table;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u0001JD\u0010\u0005\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u00082\u001c\u0010\t\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\nH\u0016J.\u0010\u000b\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2",
        "Lretrofit2/Callback;",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Table;",
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
.field final synthetic $adapter:Lcom/example/digitalkiosk/adapters/TablePagesAdapter;

.field final synthetic this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Lcom/example/digitalkiosk/adapters/TablePagesAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->$adapter:Lcom/example/digitalkiosk/adapters/TablePagesAdapter;

    .line 67
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
            "Lcom/example/digitalkiosk/models/Table;",
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
            "Lcom/example/digitalkiosk/models/Table;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Table;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTables$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 73
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTables$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->$adapter:Lcom/example/digitalkiosk/adapters/TablePagesAdapter;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->notifyDataSetChanged()V

    .line 75
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTableIndicators$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Lme/relex/circleindicator/CircleIndicator3;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const-string p1, "tableIndicators"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTablesview$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroidx/viewpager2/widget/ViewPager2;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "tablesview"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p2

    :cond_1
    invoke-virtual {p1, v0}, Lme/relex/circleindicator/CircleIndicator3;->setViewPager(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 76
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTables$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0xc

    const-string v1, "tableIndicatorsWrap"

    if-le p1, v0, :cond_3

    .line 77
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTableIndicatorsWrap$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 79
    :cond_3
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {p1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getTableIndicatorsWrap$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object p2, p1

    :goto_1
    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 81
    :goto_2
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->$adapter:Lcom/example/digitalkiosk/adapters/TablePagesAdapter;

    new-instance p2, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1;

    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    iget-object v1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->$adapter:Lcom/example/digitalkiosk/adapters/TablePagesAdapter;

    invoke-direct {p2, v0, v1}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1;-><init>(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;Lcom/example/digitalkiosk/adapters/TablePagesAdapter;)V

    check-cast p2, Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->setOnClickListener(Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;)V

    return-void
.end method
