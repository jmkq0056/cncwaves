.class public final Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;
.super Ljava/lang/Object;
.source "DeviceInfoMapper.kt"

# interfaces
.implements Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDeviceInfoMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceInfoMapper.kt\ncom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,79:1\n51#2,3:80\n*S KotlinDebug\n*F\n+ 1 DeviceInfoMapper.kt\ncom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache\n*L\n15#1:80,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R/\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048V@VX\u0096\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;",
        "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
        "()V",
        "<set-?>",
        "",
        "coinCellBatteryVoltage",
        "getCoinCellBatteryVoltage",
        "()Ljava/lang/String;",
        "setCoinCellBatteryVoltage",
        "(Ljava/lang/String;)V",
        "coinCellBatteryVoltage$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "sdk_release"
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


# instance fields
.field private final coinCellBatteryVoltage$delegate:Lkotlin/properties/ReadWriteProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 15
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "coinCellBatteryVoltage"

    const-string v3, "getCoinCellBatteryVoltage()Ljava/lang/String;"

    const-class v4, Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 80
    new-instance v0, Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache$special$$inlined$vetoable$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache$special$$inlined$vetoable$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/properties/ReadWriteProperty;

    .line 15
    iput-object v0, p0, Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;->coinCellBatteryVoltage$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method


# virtual methods
.method public getCoinCellBatteryVoltage()Ljava/lang/String;
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;->coinCellBatteryVoltage$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setCoinCellBatteryVoltage(Ljava/lang/String;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;->coinCellBatteryVoltage$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/stripe/core/bbpos/mappers/DefaultDeviceInfoCache;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method
