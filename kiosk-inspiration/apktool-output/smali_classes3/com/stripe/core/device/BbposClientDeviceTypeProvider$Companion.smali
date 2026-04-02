.class public final Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion;
.super Ljava/lang/Object;
.source "BbposClientDeviceTypeProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/core/device/BbposClientDeviceTypeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion$EntriesMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposClientDeviceTypeProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposClientDeviceTypeProvider.kt\ncom/stripe/core/device/BbposClientDeviceTypeProvider$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,48:1\n288#2:49\n1747#2,3:50\n289#2:53\n*S KotlinDebug\n*F\n+ 1 BbposClientDeviceTypeProvider.kt\ncom/stripe/core/device/BbposClientDeviceTypeProvider$Companion\n*L\n42#1:49\n43#1:50,3\n42#1:53\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u0004*\u00020\u0005H\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u0082\u0002\u0007\n\u0005\u0008\u00a1\u001e0\u0001\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion;",
        "",
        "()V",
        "toDeviceMetadata",
        "Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;",
        "Lcom/stripe/core/serialnumber/DeviceSerialNumber;",
        "toDeviceMetadata-wDMJIJk$device_release",
        "(Ljava/lang/String;)Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;",
        "device_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toDeviceMetadata-wDMJIJk$device_release(Ljava/lang/String;)Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;
    .locals 7

    const-string v0, "$this$toDeviceMetadata"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    sget-object v0, Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion$EntriesMappings;->entries$0:Lkotlin/enums/EnumEntries;

    check-cast v0, Ljava/lang/Iterable;

    .line 49
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    .line 43
    invoke-virtual {v3}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->getSerialPrefixes()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 50
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 43
    invoke-static {p1, v4, v5, v6, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v1

    .line 42
    :cond_3
    check-cast v2, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    if-nez v2, :cond_4

    .line 44
    sget-object p1, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->UnknownDevice:Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    return-object p1

    :cond_4
    return-object v2
.end method
