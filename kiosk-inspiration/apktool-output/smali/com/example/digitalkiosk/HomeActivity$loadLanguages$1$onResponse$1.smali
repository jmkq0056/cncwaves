.class public final Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1$onResponse$1;
.super Ljava/lang/Object;
.source "HomeActivity.kt"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
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
        "Lcom/example/digitalkiosk/models/Translation;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u0001JD\u0010\u0005\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u00082\u001c\u0010\t\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\nH\u0016J.\u0010\u000b\u001a\u00020\u00062\u001c\u0010\u0007\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00030\u0002j\u0008\u0012\u0004\u0012\u00020\u0003`\u00040\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/example/digitalkiosk/HomeActivity$loadLanguages$1$onResponse$1",
        "Lretrofit2/Callback;",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Translation;",
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
.field final synthetic $mySelectedLanguage:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/example/digitalkiosk/HomeActivity;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Lcom/example/digitalkiosk/HomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1$onResponse$1;->$mySelectedLanguage:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1$onResponse$1;->this$0:Lcom/example/digitalkiosk/HomeActivity;

    .line 219
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
            "Lcom/example/digitalkiosk/models/Translation;",
            ">;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1$onResponse$1;->this$0:Lcom/example/digitalkiosk/HomeActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->setLanguageLoaded(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Translation;",
            ">;>;",
            "Lretrofit2/Response<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Translation;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    sget-object p1, Lcom/example/digitalkiosk/HomeActivity;->Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

    iget-object v0, p0, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1$onResponse$1;->$mySelectedLanguage:Lkotlin/jvm/internal/Ref$IntRef;

    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/HomeActivity$Companion;->setSelected_language(I)V

    .line 225
    sget-object p1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/MainActivity$Companion;->set_translations(Ljava/util/ArrayList;)V

    .line 226
    iget-object p1, p0, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1$onResponse$1;->this$0:Lcom/example/digitalkiosk/HomeActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p1

    sget-object p2, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v0, "tap_to_select_the_items"

    invoke-virtual {p2, v0}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->setTapText(Lcom/example/digitalkiosk/models/Translation;)V

    .line 227
    iget-object p1, p0, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1$onResponse$1;->this$0:Lcom/example/digitalkiosk/HomeActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->setLanguageLoaded(Ljava/lang/Boolean;)V

    .line 228
    iget-object p1, p0, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1$onResponse$1;->this$0:Lcom/example/digitalkiosk/HomeActivity;

    invoke-virtual {p1}, Lcom/example/digitalkiosk/HomeActivity;->renderBanners()V

    return-void
.end method
