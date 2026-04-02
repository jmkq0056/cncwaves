.class public final Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1;
.super Ljava/lang/Object;
.source "HomeActivity.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/HomeActivity;->loadLanguages()V
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
        "Lcom/example/digitalkiosk/models/Language;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u0001JD\u0010\u0005\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u00082\u001c\u0010\t\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\nH\u0016J.\u0010\u000b\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/example/digitalkiosk/HomeActivity$loadLanguages$1",
        "Lretrofit2/Callback;",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Language;",
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
.field final synthetic this$0:Lcom/example/digitalkiosk/HomeActivity;


# direct methods
.method constructor <init>(Lcom/example/digitalkiosk/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1;->this$0:Lcom/example/digitalkiosk/HomeActivity;

    .line 203
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
            "Lcom/example/digitalkiosk/models/Language;",
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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Language;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Language;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 209
    invoke-virtual {p2}, Lretrofit2/Response;->code()I

    move-result p2

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_2

    .line 210
    sget-object p2, Lcom/example/digitalkiosk/HomeActivity;->Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

    invoke-virtual {p2}, Lcom/example/digitalkiosk/HomeActivity$Companion;->getLanguages()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 211
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 212
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    sget-object v0, Lcom/example/digitalkiosk/HomeActivity;->Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

    invoke-virtual {v0}, Lcom/example/digitalkiosk/HomeActivity$Companion;->getLanguages()Ljava/util/ArrayList;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/models/Language;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/models/Language;->getId()I

    move-result p1

    iput p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 216
    :cond_0
    iget p1, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-eqz p1, :cond_1

    .line 217
    sget-object p1, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    .line 218
    iget v0, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 219
    new-instance v1, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1$onResponse$1;

    iget-object v2, p0, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1;->this$0:Lcom/example/digitalkiosk/HomeActivity;

    invoke-direct {v1, p2, v2}, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1$onResponse$1;-><init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/example/digitalkiosk/HomeActivity;)V

    check-cast v1, Lretrofit2/Callback;

    .line 217
    invoke-virtual {p1, v0, v1}, Lcom/example/digitalkiosk/network/ApiClient;->get_all_translations$app_release(ILretrofit2/Callback;)V

    return-void

    .line 239
    :cond_1
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/MainActivity$Companion;->clear_translations()V

    .line 240
    iget-object p1, p0, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1;->this$0:Lcom/example/digitalkiosk/HomeActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->setLanguageLoaded(Ljava/lang/Boolean;)V

    :cond_2
    return-void
.end method
