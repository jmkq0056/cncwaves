.class public final Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1$onClick$1;
.super Ljava/lang/Object;
.source "TableSelectionFragment.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1;->onClick(Lcom/example/digitalkiosk/models/Table;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lcom/example/digitalkiosk/models/Table;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J$\u0010\u0003\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0008H\u0016J\u001e\u0010\t\u001a\u00020\u00042\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1$onClick$1",
        "Lretrofit2/Callback;",
        "Lcom/example/digitalkiosk/models/Table;",
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

.field final synthetic $table:Lcom/example/digitalkiosk/models/Table;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/models/Table;Lcom/example/digitalkiosk/adapters/TablePagesAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1$onClick$1;->$table:Lcom/example/digitalkiosk/models/Table;

    iput-object p2, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1$onClick$1;->$adapter:Lcom/example/digitalkiosk/adapters/TablePagesAdapter;

    .line 85
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
            "Lcom/example/digitalkiosk/models/Table;",
            ">;",
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Table;",
            ">;",
            "Lretrofit2/Response<",
            "Lcom/example/digitalkiosk/models/Table;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object p1, Lcom/example/digitalkiosk/OptionActivity;->Companion:Lcom/example/digitalkiosk/OptionActivity$Companion;

    iget-object p2, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1$onClick$1;->$table:Lcom/example/digitalkiosk/models/Table;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/models/Table;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/OptionActivity$Companion;->setSelected_table(Ljava/lang/Integer;)V

    .line 88
    iget-object p1, p0, Lcom/example/digitalkiosk/fragments/TableSelectionFragment$onCreateView$2$onResponse$1$onClick$1;->$adapter:Lcom/example/digitalkiosk/adapters/TablePagesAdapter;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/adapters/TablePagesAdapter;->notifyDataSetChanged()V

    return-void
.end method
