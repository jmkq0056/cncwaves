.class public final Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1;
.super Ljava/lang/Object;
.source "TableSelectionFragment.kt"

# interfaces
.implements Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1",
        "Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;",
        "onClick",
        "",
        "table",
        "Lcom/example/digitalkiosk/models/Table;",
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

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1;->$adapter:Lcom/example/digitalkiosk/adapters/TablePagesAdapter;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/example/digitalkiosk/models/Table;)V
    .locals 5

    const-string v0, "table"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getOptionsTimer$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1;->this$0:Lcom/example/digitalkiosk/fragments/TableSelectionFragment;

    invoke-static {v0}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment;->access$getOptionsTimer$p(Lcom/example/digitalkiosk/fragments/TableSelectionFragment;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 85
    :cond_1
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Table;->getId()I

    move-result v1

    sget-object v2, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    invoke-virtual {v2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->getSelected_table()Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1$onClick$1;

    iget-object v4, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1;->$adapter:Lcom/example/digitalkiosk/adapters/TablePagesAdapter;

    invoke-direct {v3, p1, v4}, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1$onClick$1;-><init>(Lcom/example/digitalkiosk/models/Table;Lcom/example/digitalkiosk/adapters/TablePagesAdapter;)V

    check-cast v3, Lretrofit2/Callback;

    const-string p1, "reserved"

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/example/digitalkiosk/network/ApiClient;->update_table$app_release(ILjava/lang/String;Ljava/lang/Integer;Lretrofit2/Callback;)V

    return-void
.end method
