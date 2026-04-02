.class public final Lcom/example/digitalkiosk/HomeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "HomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/digitalkiosk/HomeActivity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u0000 *2\u00020\u0001:\u0001*B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001fH\u0014J\u0006\u0010 \u001a\u00020\u001dJ \u0010!\u001a\u00020\u001d2\u0006\u0010\"\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020%H\u0007J\u0006\u0010&\u001a\u00020\u001dJ\u0006\u0010\'\u001a\u00020\u001dJ\u0006\u0010(\u001a\u00020\u001dJ\u0008\u0010)\u001a\u00020\u001dH\u0014R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0008\u001a\u00020\tX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082.\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\u00a8\u0006+"
    }
    d2 = {
        "Lcom/example/digitalkiosk/HomeActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "<init>",
        "()V",
        "imageList",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "binding",
        "Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;",
        "getBinding",
        "()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;",
        "setBinding",
        "(Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;)V",
        "bannerAdapter",
        "Lcom/example/digitalkiosk/adapters/BannerSliderAdapter;",
        "sliderHandler",
        "Landroid/os/Handler;",
        "bluetoothManager",
        "Landroid/bluetooth/BluetoothManager;",
        "getBluetoothManager",
        "()Landroid/bluetooth/BluetoothManager;",
        "setBluetoothManager",
        "(Landroid/bluetooth/BluetoothManager;)V",
        "sliderRunnable",
        "Ljava/lang/Runnable;",
        "getSliderRunnable",
        "()Ljava/lang/Runnable;",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadPrinter",
        "sendPrintersInfo",
        "type",
        "address",
        "codepage",
        "",
        "loadMarketingLines",
        "renderBanners",
        "loadLanguages",
        "onResume",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

.field private static final languages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Language;",
            ">;"
        }
    .end annotation
.end field

.field private static selected_language:I


# instance fields
.field private bannerAdapter:Lcom/example/digitalkiosk/adapters/BannerSliderAdapter;

.field public binding:Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

.field private bluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private imageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sliderHandler:Landroid/os/Handler;

.field private final sliderRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$2j8_SxuNw3vvf0RS4-nnPvvyYq4(Lcom/example/digitalkiosk/HomeActivity;)V
    .locals 0

    invoke-static {p0}, Lcom/example/digitalkiosk/HomeActivity;->sliderRunnable$lambda$0(Lcom/example/digitalkiosk/HomeActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JNDn4Z8B8mQC8GWvUsYE7IEqLQI(Lcom/example/digitalkiosk/HomeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/HomeActivity;->onCreate$lambda$2(Lcom/example/digitalkiosk/HomeActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N7rO3akvMx2XQSkhBF1trqhNDJg(Lcom/example/digitalkiosk/HomeActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/example/digitalkiosk/HomeActivity;->onCreate$lambda$1(Lcom/example/digitalkiosk/HomeActivity;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/example/digitalkiosk/HomeActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/example/digitalkiosk/HomeActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/example/digitalkiosk/HomeActivity;->Companion:Lcom/example/digitalkiosk/HomeActivity$Companion;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/HomeActivity;->languages:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 52
    new-instance v0, Lcom/example/digitalkiosk/HomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/HomeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/example/digitalkiosk/HomeActivity;)V

    iput-object v0, p0, Lcom/example/digitalkiosk/HomeActivity;->sliderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getBannerAdapter$p(Lcom/example/digitalkiosk/HomeActivity;)Lcom/example/digitalkiosk/adapters/BannerSliderAdapter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/example/digitalkiosk/HomeActivity;->bannerAdapter:Lcom/example/digitalkiosk/adapters/BannerSliderAdapter;

    return-object p0
.end method

.method public static final synthetic access$getImageList$p(Lcom/example/digitalkiosk/HomeActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/example/digitalkiosk/HomeActivity;->imageList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$getLanguages$cp()Ljava/util/ArrayList;
    .locals 1

    .line 40
    sget-object v0, Lcom/example/digitalkiosk/HomeActivity;->languages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static final synthetic access$getSelected_language$cp()I
    .locals 1

    .line 40
    sget v0, Lcom/example/digitalkiosk/HomeActivity;->selected_language:I

    return v0
.end method

.method public static final synthetic access$getSliderHandler$p(Lcom/example/digitalkiosk/HomeActivity;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/example/digitalkiosk/HomeActivity;->sliderHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static final synthetic access$setSelected_language$cp(I)V
    .locals 0

    .line 40
    sput p0, Lcom/example/digitalkiosk/HomeActivity;->selected_language:I

    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/example/digitalkiosk/HomeActivity;Landroid/view/View;)V
    .locals 2

    .line 68
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/example/digitalkiosk/OptionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/example/digitalkiosk/HomeActivity;Landroid/view/View;)V
    .locals 2

    .line 72
    new-instance p1, Landroid/content/Intent;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    const-class v1, Lcom/example/digitalkiosk/OptionActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/HomeActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final sliderRunnable$lambda$0(Lcom/example/digitalkiosk/HomeActivity;)V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->bannerSlider:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/example/digitalkiosk/HomeActivity;->imageList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const-string v1, "imageList"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->bannerSlider:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->bannerSlider:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->bannerSlider:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/example/digitalkiosk/HomeActivity;->binding:Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBluetoothManager()Landroid/bluetooth/BluetoothManager;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/example/digitalkiosk/HomeActivity;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-object v0
.end method

.method public final getSliderRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/example/digitalkiosk/HomeActivity;->sliderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method public final loadLanguages()V
    .locals 2

    .line 203
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    new-instance v1, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1;

    invoke-direct {v1, p0}, Lcom/example/digitalkiosk/HomeActivity$loadLanguages$1;-><init>(Lcom/example/digitalkiosk/HomeActivity;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/network/ApiClient;->get_languages$app_release(Lretrofit2/Callback;)V

    return-void
.end method

.method public final loadMarketingLines()V
    .locals 2

    .line 161
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    new-instance v1, Lcom/example/digitalkiosk/HomeActivity$loadMarketingLines$1;

    invoke-direct {v1}, Lcom/example/digitalkiosk/HomeActivity$loadMarketingLines$1;-><init>()V

    check-cast v1, Lretrofit2/Callback;

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/network/ApiClient;->kiosk_settings$app_release(Lretrofit2/Callback;)V

    return-void
.end method

.method public final loadPrinter()V
    .locals 4

    .line 84
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    new-instance v1, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;

    const-string v2, "usb"

    invoke-virtual {p0, v2}, Lcom/example/digitalkiosk/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/hardware/usb/UsbManager;

    move-object v3, p0

    check-cast v3, Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;-><init>(Landroid/hardware/usb/UsbManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->setMUsbDriver(Lcom/example/digitalkiosk/msprintsdk/UsbDriver;)V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.usb.sample.USB_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    const/4 v2, 0x0

    invoke-static {v3, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->getMUsbDriver()Lcom/example/digitalkiosk/msprintsdk/UsbDriver;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/example/digitalkiosk/msprintsdk/UsbDriver;->setPermissionIntent(Landroid/app/PendingIntent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 60
    const-string v0, "bluetooth"

    invoke-virtual {p0, v0}, Lcom/example/digitalkiosk/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    iput-object v0, p0, Lcom/example/digitalkiosk/HomeActivity;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/example/digitalkiosk/HomeActivity;->sliderHandler:Landroid/os/Handler;

    .line 62
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 64
    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    sget v0, Lcom/example/digitalkiosk/R$layout;->activity_home:I

    invoke-static {p1, v0}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/HomeActivity;->setBinding(Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;)V

    .line 65
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->setLanguageLoaded(Ljava/lang/Boolean;)V

    .line 66
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p1

    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v1, "tap_to_select_the_items"

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->setTapText(Lcom/example/digitalkiosk/models/Translation;)V

    .line 67
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p1

    invoke-virtual {p1}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/example/digitalkiosk/HomeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/HomeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/example/digitalkiosk/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->selectItems:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/example/digitalkiosk/HomeActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/example/digitalkiosk/HomeActivity$$ExternalSyntheticLambda2;-><init>(Lcom/example/digitalkiosk/HomeActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/example/digitalkiosk/HomeActivity;->imageList:Ljava/util/ArrayList;

    .line 76
    new-instance p1, Lcom/example/digitalkiosk/adapters/BannerSliderAdapter;

    iget-object v0, p0, Lcom/example/digitalkiosk/HomeActivity;->imageList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "imageList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-direct {p1, v0}, Lcom/example/digitalkiosk/adapters/BannerSliderAdapter;-><init>(Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/example/digitalkiosk/HomeActivity;->bannerAdapter:Lcom/example/digitalkiosk/adapters/BannerSliderAdapter;

    .line 77
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->bannerSlider:Landroidx/viewpager2/widget/ViewPager2;

    iget-object v0, p0, Lcom/example/digitalkiosk/HomeActivity;->bannerAdapter:Lcom/example/digitalkiosk/adapters/BannerSliderAdapter;

    if-nez v0, :cond_1

    const-string v0, "bannerAdapter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 78
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->loadLanguages()V

    .line 79
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->loadPrinter()V

    .line 80
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->loadMarketingLines()V

    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 250
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 251
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getBinding()Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    move-result-object v0

    sget-object v1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    const-string v2, "tap_to_select_the_items"

    invoke-virtual {v1, v2}, Lcom/example/digitalkiosk/MainActivity$Companion;->get_term_translation(Ljava/lang/String;)Lcom/example/digitalkiosk/models/Translation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;->setTapText(Lcom/example/digitalkiosk/models/Translation;)V

    .line 253
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    new-instance v1, Lcom/example/digitalkiosk/HomeActivity$onResume$1;

    invoke-direct {v1, p0}, Lcom/example/digitalkiosk/HomeActivity$onResume$1;-><init>(Lcom/example/digitalkiosk/HomeActivity;)V

    check-cast v1, Lretrofit2/Callback;

    invoke-virtual {v0, v1}, Lcom/example/digitalkiosk/network/ApiClient;->kiosk_settings$app_release(Lretrofit2/Callback;)V

    .line 278
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/Terminal$Companion;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    :try_start_0
    sget-object v0, Lcom/stripe/stripeterminal/Terminal;->Companion:Lcom/stripe/stripeterminal/Terminal$Companion;

    .line 282
    invoke-virtual {p0}, Lcom/example/digitalkiosk/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/stripe/stripeterminal/log/LogLevel;->VERBOSE:Lcom/stripe/stripeterminal/log/LogLevel;

    new-instance v3, Lcom/example/digitalkiosk/stripe/providers/TokenProvider;

    invoke-direct {v3}, Lcom/example/digitalkiosk/stripe/providers/TokenProvider;-><init>()V

    check-cast v3, Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;

    new-instance v4, Lcom/example/digitalkiosk/stripe/listeners/TerminalEventListener;

    invoke-direct {v4}, Lcom/example/digitalkiosk/stripe/listeners/TerminalEventListener;-><init>()V

    check-cast v4, Lcom/stripe/stripeterminal/external/callable/TerminalListener;

    .line 281
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/stripe/stripeterminal/Terminal$Companion;->initTerminal(Landroid/content/Context;Lcom/stripe/stripeterminal/log/LogLevel;Lcom/stripe/stripeterminal/external/callable/ConnectionTokenProvider;Lcom/stripe/stripeterminal/external/callable/TerminalListener;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    .line 286
    const-string v2, "Location services are required in order to initialize the Terminal."

    .line 288
    check-cast v0, Ljava/lang/Throwable;

    .line 285
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method public final renderBanners()V
    .locals 3

    .line 174
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    sget v1, Lcom/example/digitalkiosk/HomeActivity;->selected_language:I

    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/example/digitalkiosk/HomeActivity$renderBanners$1;

    invoke-direct {v2, p0}, Lcom/example/digitalkiosk/HomeActivity$renderBanners$1;-><init>(Lcom/example/digitalkiosk/HomeActivity;)V

    check-cast v2, Lretrofit2/Callback;

    invoke-virtual {v0, v1, v2}, Lcom/example/digitalkiosk/network/ApiClient;->main_banners$app_release(Ljava/lang/Integer;Lretrofit2/Callback;)V

    return-void
.end method

.method public final sendPrintersInfo(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "address"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v0, p1}, Lcom/example/digitalkiosk/MainActivity$Companion;->setPrinterType(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v0, p3}, Lcom/example/digitalkiosk/MainActivity$Companion;->setPrinterCodepage(I)V

    .line 96
    const-string p3, "usb"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_2

    .line 97
    move-object v3, p2

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v5, ","

    aput-object v5, v4, v1

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 98
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v0, :cond_2

    .line 99
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    new-array v6, v0, [Ljava/lang/String;

    const-string v4, "="

    aput-object v4, v6, v1

    const/4 v9, 0x6

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 100
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v0, :cond_0

    .line 101
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v5, v2

    .line 102
    :goto_0
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Ljava/lang/CharSequence;

    new-array v7, v0, [Ljava/lang/String;

    aput-object v4, v7, v1

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 103
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v0, :cond_1

    .line 104
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_1
    move-object v0, v2

    move-object v2, v5

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    const/16 v3, 0x10

    .line 107
    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    .line 108
    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 109
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 110
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 111
    sget-object v7, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v7}, Lcom/example/digitalkiosk/MainActivity$Companion;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object v7, v8

    :goto_2
    if-eqz v7, :cond_a

    .line 113
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 114
    :cond_4
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 115
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/usb/UsbDevice;

    .line 116
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_5

    const-string v11, "USB"

    :cond_5
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|vid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-virtual {v9}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v10

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v10, :cond_4

    invoke-virtual {v9}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v10

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v10, :cond_4

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 118
    sget-object v10, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v10, v9}, Lcom/example/digitalkiosk/MainActivity$Companion;->setUsbDevice(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_3

    .line 121
    :cond_8
    sget-object p3, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {p3}, Lcom/example/digitalkiosk/MainActivity$Companion;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object p3

    if-eqz p3, :cond_a

    sget-object p3, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {p3}, Lcom/example/digitalkiosk/MainActivity$Companion;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object p3

    if-eqz p3, :cond_a

    .line 123
    move-object p3, p0

    check-cast p3, Landroid/content/Context;

    .line 125
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.example.digitalkiosk.USB_PERMISSION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1f

    if-lt v4, v7, :cond_9

    const/high16 v4, 0x4000000

    goto :goto_4

    :cond_9
    move v4, v1

    .line 122
    :goto_4
    invoke-static {p3, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    .line 128
    sget-object v1, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->getUsbManager()Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sget-object v3, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v3}, Lcom/example/digitalkiosk/MainActivity$Companion;->getUsbDevice()Landroid/hardware/usb/UsbDevice;

    move-result-object v3

    invoke-virtual {v1, v3, p3}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    .line 131
    :cond_a
    iget-object p3, p0, Lcom/example/digitalkiosk/HomeActivity;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v8

    :cond_b
    if-eqz v8, :cond_d

    .line 133
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    .line 134
    :cond_c
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 135
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 136
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "bluetooth"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 138
    sget-object v3, Lcom/example/digitalkiosk/MainActivity;->Companion:Lcom/example/digitalkiosk/MainActivity$Companion;

    invoke-virtual {v3, v1}, Lcom/example/digitalkiosk/MainActivity$Companion;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_5

    .line 142
    :cond_d
    move-object p1, v5

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    move-object p1, v6

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 143
    :cond_e
    sget-object p1, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    new-instance p2, Lcom/example/digitalkiosk/HomeActivity$sendPrintersInfo$1;

    invoke-direct {p2}, Lcom/example/digitalkiosk/HomeActivity$sendPrintersInfo$1;-><init>()V

    check-cast p2, Lretrofit2/Callback;

    invoke-virtual {p1, v5, v6, p2}, Lcom/example/digitalkiosk/network/ApiClient;->send_printers_data$app_release(Ljava/util/ArrayList;Ljava/util/ArrayList;Lretrofit2/Callback;)V

    .line 157
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PrinterTest"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setBinding(Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/example/digitalkiosk/HomeActivity;->binding:Lcom/example/digitalkiosk/databinding/ActivityHomeBinding;

    return-void
.end method

.method public final setBluetoothManager(Landroid/bluetooth/BluetoothManager;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/example/digitalkiosk/HomeActivity;->bluetoothManager:Landroid/bluetooth/BluetoothManager;

    return-void
.end method
