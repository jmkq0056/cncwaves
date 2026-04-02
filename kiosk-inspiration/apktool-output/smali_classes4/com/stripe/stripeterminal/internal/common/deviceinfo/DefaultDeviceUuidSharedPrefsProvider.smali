.class public final Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;
.super Ljava/lang/Object;
.source "DeviceUuidSharedPrefsProvider.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;",
        "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "sharedPrefs",
        "Landroid/content/SharedPreferences;",
        "getSharedPrefs",
        "()Landroid/content/SharedPreferences;",
        "sharedPrefs$delegate",
        "Lkotlin/Lazy;",
        "get",
        "Companion",
        "common_publish"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final Companion:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider$Companion;

.field private static final SHARED_PREFS:Ljava/lang/String; = "stripe_terminal_shared_prefs"


# instance fields
.field private final context:Landroid/content/Context;

.field private final sharedPrefs$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;->Companion:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;->context:Landroid/content/Context;

    .line 16
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider$sharedPrefs$2;

    invoke-direct {p1, p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider$sharedPrefs$2;-><init>(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;->sharedPrefs$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;)Landroid/content/Context;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;->sharedPrefs$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences;
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
