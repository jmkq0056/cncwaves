.class public final Lcom/example/digitalkiosk/LoginActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "LoginActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0014J\u0008\u0010\n\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/example/digitalkiosk/LoginActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "home",
        "Landroid/content/Intent;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "login",
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
.field private home:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$ExaQ5yRlNPCyowh-dAOn66gAccY(Lcom/example/digitalkiosk/LoginActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/LoginActivity;->onCreate$lambda$0(Lcom/example/digitalkiosk/LoginActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHome$p(Lcom/example/digitalkiosk/LoginActivity;)Landroid/content/Intent;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/example/digitalkiosk/LoginActivity;->home:Landroid/content/Intent;

    return-object p0
.end method

.method private final login()V
    .locals 5

    .line 29
    sget v0, Lcom/example/digitalkiosk/R$id;->kiosk_id:I

    invoke-virtual {p0, v0}, Lcom/example/digitalkiosk/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    sget v1, Lcom/example/digitalkiosk/R$id;->kiosk_password:I

    invoke-virtual {p0, v1}, Lcom/example/digitalkiosk/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 31
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 32
    sget-object v2, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    .line 33
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    sget-object v3, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/MainActivity$Companion;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    .line 36
    new-instance v4, Lcom/example/digitalkiosk/LoginActivity$login$1;

    invoke-direct {v4, p0}, Lcom/example/digitalkiosk/LoginActivity$login$1;-><init>(Lcom/example/digitalkiosk/LoginActivity;)V

    check-cast v4, Lretrofit2/Callback;

    .line 32
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/example/digitalkiosk/network/ApiClient;->login$app_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)V

    :cond_0
    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/example/digitalkiosk/LoginActivity;Landroid/view/View;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/example/digitalkiosk/LoginActivity;->login()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 17
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/example/digitalkiosk/HomeActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/example/digitalkiosk/LoginActivity;->home:Landroid/content/Intent;

    .line 19
    sget p1, Lcom/example/digitalkiosk/R$layout;->activity_login:I

    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/LoginActivity;->setContentView(I)V

    .line 20
    sget p1, Lcom/example/digitalkiosk/R$id;->login:I

    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 21
    sget v0, Lcom/example/digitalkiosk/R$id;->app_version:I

    invoke-virtual {p0, v0}, Lcom/example/digitalkiosk/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 22
    sget-object v1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    new-instance v0, Lcom/example/digitalkiosk/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
