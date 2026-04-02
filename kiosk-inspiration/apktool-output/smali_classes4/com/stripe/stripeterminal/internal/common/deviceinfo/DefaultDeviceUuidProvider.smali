.class public final Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;
.super Ljava/lang/Object;
.source "DefaultDeviceUuidProvider.kt"

# interfaces
.implements Lcom/stripe/terminal/appinfo/DeviceUuidProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultDeviceUuidProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultDeviceUuidProvider.kt\ncom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,59:1\n1#2:60\n39#3,12:61\n*S KotlinDebug\n*F\n+ 1 DefaultDeviceUuidProvider.kt\ncom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider\n*L\n49#1:61,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0008\u0010\u0011\u001a\u00020\u000cH\u0002J\u0008\u0010\u0012\u001a\u00020\u000cH\u0016J\u000c\u0010\u0013\u001a\u00020\u0014*\u00020\u0015H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;",
        "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
        "deviceUuidSharedPrefsProvider",
        "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;",
        "coroutineContext",
        "Lkotlin/coroutines/CoroutineContext;",
        "manufacturer",
        "Lcom/stripe/core/device/HardwareManufacturer;",
        "serialSupplier",
        "Lcom/stripe/core/device/SerialSupplier;",
        "(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;Lkotlin/coroutines/CoroutineContext;Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SerialSupplier;)V",
        "value",
        "Lcom/stripe/terminal/appinfo/DeviceUuid;",
        "getValue",
        "()Lcom/stripe/terminal/appinfo/DeviceUuid;",
        "value$delegate",
        "Lkotlin/Lazy;",
        "create",
        "get",
        "createDeviceUuid",
        "",
        "Landroid/content/SharedPreferences;",
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
.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$Companion;

.field public static final PREF_UNIQUE_ID:Ljava/lang/String; = "pref_unique_id"


# instance fields
.field private final coroutineContext:Lkotlin/coroutines/CoroutineContext;

.field private final deviceUuidSharedPrefsProvider:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;

.field private final manufacturer:Lcom/stripe/core/device/HardwareManufacturer;

.field private final serialSupplier:Lcom/stripe/core/device/SerialSupplier;

.field private final value$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->Companion:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;Lkotlin/coroutines/CoroutineContext;Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SerialSupplier;)V
    .locals 1

    const-string v0, "deviceUuidSharedPrefsProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "manufacturer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialSupplier"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->deviceUuidSharedPrefsProvider:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;

    .line 15
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    .line 16
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer;

    .line 17
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->serialSupplier:Lcom/stripe/core/device/SerialSupplier;

    .line 19
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$value$2;

    invoke-direct {p1, p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$value$2;-><init>(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->value$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$create(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;)Lcom/stripe/terminal/appinfo/DeviceUuid;
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->create()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$createDeviceUuid(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->createDeviceUuid(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDeviceUuidSharedPrefsProvider$p(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;)Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->deviceUuidSharedPrefsProvider:Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;

    return-object p0
.end method

.method private final create()Lcom/stripe/terminal/appinfo/DeviceUuid;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->manufacturer:Lcom/stripe/core/device/HardwareManufacturer;

    .line 25
    sget-object v1, Lcom/stripe/core/device/HardwareManufacturer$Bbpos;->INSTANCE:Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 26
    :cond_0
    sget-object v1, Lcom/stripe/core/device/HardwareManufacturer$Verifone;->INSTANCE:Lcom/stripe/core/device/HardwareManufacturer$Verifone;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    .line 28
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->serialSupplier:Lcom/stripe/core/device/SerialSupplier;

    invoke-interface {v0}, Lcom/stripe/core/device/SerialSupplier;->get-q_5ZKBc()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 31
    :cond_1
    instance-of v0, v0, Lcom/stripe/core/device/HardwareManufacturer$Other;

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->coroutineContext:Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider$create$1;-><init>(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 44
    :goto_1
    new-instance v1, Lcom/stripe/terminal/appinfo/DeviceUuid;

    invoke-direct {v1, v0}, Lcom/stripe/terminal/appinfo/DeviceUuid;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 38
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final createDeviceUuid(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 50
    const-string v1, "pref_unique_id"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0
.end method

.method private final getValue()Lcom/stripe/terminal/appinfo/DeviceUuid;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->value$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/terminal/appinfo/DeviceUuid;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/terminal/appinfo/DeviceUuid;
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;->getValue()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v0

    return-object v0
.end method
