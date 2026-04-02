.class public final Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;
.super Ljava/lang/Object;
.source "SdkApplicationInformationFactory.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\'\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nB5\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000e\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0016\u001a\u00020\u0017H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;",
        "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;",
        "context",
        "Landroid/content/Context;",
        "deviceUuidProvider",
        "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
        "appInfoParser",
        "Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;",
        "buildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "(Landroid/content/Context;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;)V",
        "packageName",
        "",
        "deviceOsVersion",
        "Lkotlin/Function0;",
        "(Ljava/lang/String;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;Lkotlin/jvm/functions/Function0;)V",
        "deviceUuid",
        "Lcom/stripe/terminal/appinfo/DeviceUuid;",
        "getDeviceUuid",
        "()Lcom/stripe/terminal/appinfo/DeviceUuid;",
        "deviceUuid$delegate",
        "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
        "create",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_TYPE:Ljava/lang/String; = "ANDROID_SDK"

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory$Companion;

.field public static final ENABLE_SHOPIFY_KEY:Ljava/lang/String; = "com.stripe.stripeterminal.enable_shopify_readers"

.field public static final ENABLE_WISEPAD_3S_KEY:Ljava/lang/String; = "com.stripe.stripeterminal.enable_wisepad3s"

.field public static final IS_REACT_NATIVE_SDK_KEY:Ljava/lang/String; = "com.stripe.stripeterminal.is_react_native"

.field public static final REACT_NATIVE_SDK_VERSION_KEY:Ljava/lang/String; = "com.stripe.stripeterminal.react_native_sdk_version"


# instance fields
.field private final appInfoParser:Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

.field private final buildValues:Lcom/stripe/core/device/BuildValues;

.field private final deviceOsVersion:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceUuid$delegate:Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

.field private final packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 21
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "deviceUuid"

    const-string v3, "getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;"

    const-class v4, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->Companion:Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUuidProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfoParser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildValues"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string p1, "getPackageName(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object p1, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory$1;

    move-object v6, p1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 28
    invoke-direct/range {v1 .. v6}, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;-><init>(Ljava/lang/String;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/stripe/terminal/appinfo/DeviceUuidProvider;Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;Lcom/stripe/core/device/BuildValues;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;",
            "Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;",
            "Lcom/stripe/core/device/BuildValues;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUuidProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appInfoParser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildValues"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceOsVersion"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->packageName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->appInfoParser:Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    .line 18
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->buildValues:Lcom/stripe/core/device/BuildValues;

    .line 19
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->deviceOsVersion:Lkotlin/jvm/functions/Function0;

    .line 21
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->deviceUuid$delegate:Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

    return-void
.end method

.method private final getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->deviceUuid$delegate:Lcom/stripe/terminal/appinfo/DeviceUuidProvider;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lcom/stripe/terminal/appinfo/DeviceUuidProvider;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public create()Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 15

    .line 37
    sget-object v0, Lcom/stripe/terminal/appinfo/ApplicationInformation;->Companion:Lcom/stripe/terminal/appinfo/ApplicationInformation$Companion;

    .line 40
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->deviceOsVersion:Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v1}, Lcom/stripe/core/device/BuildValues;->getModel()Ljava/lang/String;

    move-result-object v4

    .line 42
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v1}, Lcom/stripe/core/device/BuildValues;->getDevice()Ljava/lang/String;

    move-result-object v5

    .line 43
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->getDeviceUuid()Lcom/stripe/terminal/appinfo/DeviceUuid;

    move-result-object v6

    .line 44
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v1}, Lcom/stripe/core/device/BuildValues;->getManufacturer()Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object v1

    invoke-interface {v1}, Lcom/stripe/core/device/HardwareManufacturer;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 45
    iget-object v8, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->packageName:Ljava/lang/String;

    .line 46
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->appInfoParser:Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    invoke-interface {v1}, Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    .line 47
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->appInfoParser:Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    const-string v2, "com.stripe.stripeterminal.enable_shopify_readers"

    invoke-interface {v1, v2}, Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;->getMetadataBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 48
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->appInfoParser:Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    const-string v2, "com.stripe.stripeterminal.enable_wisepad3s"

    invoke-interface {v1, v2}, Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;->getMetadataBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 49
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->appInfoParser:Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    const-string v2, "com.stripe.stripeterminal.is_react_native"

    invoke-interface {v1, v2}, Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;->getMetadataBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 50
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/appinfo/DefaultSdkApplicationInformationFactory;->appInfoParser:Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;

    const-string v2, "com.stripe.stripeterminal.react_native_sdk_version"

    invoke-interface {v1, v2}, Lcom/stripe/stripeterminal/internal/common/appinfo/AppInfoParser;->getMetadataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    .line 37
    const-string v1, "ANDROID_SDK"

    const-string v2, "4.1.0"

    invoke-virtual/range {v0 .. v14}, Lcom/stripe/terminal/appinfo/ApplicationInformation$Companion;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/terminal/appinfo/DeviceUuid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object v0

    return-object v0
.end method
