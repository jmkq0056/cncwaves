.class public final Lcom/stripe/core/device/DefaultBuildValuesFactory;
.super Ljava/lang/Object;
.source "DefaultBuildValuesFactory.kt"

# interfaces
.implements Lcom/stripe/core/device/BuildValuesFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\u00082\u000e\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00080\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/core/device/DefaultBuildValuesFactory;",
        "Lcom/stripe/core/device/BuildValuesFactory;",
        "hardwareManufacturer",
        "Lcom/stripe/core/device/HardwareManufacturer;",
        "sdkInt",
        "Lcom/stripe/core/device/SdkInt;",
        "(Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SdkInt;)V",
        "brand",
        "",
        "device",
        "fingerprint",
        "manufacturer",
        "model",
        "product",
        "create",
        "Lcom/stripe/core/device/BuildValues;",
        "getBuildValue",
        "supplier",
        "Lkotlin/Function0;",
        "getOsType",
        "Lcom/stripe/core/device/OsType;",
        "isEmulator",
        "",
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


# instance fields
.field private final brand:Ljava/lang/String;

.field private final device:Ljava/lang/String;

.field private final fingerprint:Ljava/lang/String;

.field private final hardwareManufacturer:Lcom/stripe/core/device/HardwareManufacturer;

.field private final manufacturer:Ljava/lang/String;

.field private final model:Ljava/lang/String;

.field private final product:Ljava/lang/String;

.field private final sdkInt:Lcom/stripe/core/device/SdkInt;


# direct methods
.method public constructor <init>(Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SdkInt;)V
    .locals 1

    const-string v0, "hardwareManufacturer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkInt"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->hardwareManufacturer:Lcom/stripe/core/device/HardwareManufacturer;

    .line 7
    iput-object p2, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->sdkInt:Lcom/stripe/core/device/SdkInt;

    .line 9
    sget-object p1, Lcom/stripe/core/device/DefaultBuildValuesFactory$brand$1;->INSTANCE:Lcom/stripe/core/device/DefaultBuildValuesFactory$brand$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->getBuildValue(Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->brand:Ljava/lang/String;

    .line 10
    sget-object p1, Lcom/stripe/core/device/DefaultBuildValuesFactory$device$1;->INSTANCE:Lcom/stripe/core/device/DefaultBuildValuesFactory$device$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->getBuildValue(Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->device:Ljava/lang/String;

    .line 11
    sget-object p1, Lcom/stripe/core/device/DefaultBuildValuesFactory$fingerprint$1;->INSTANCE:Lcom/stripe/core/device/DefaultBuildValuesFactory$fingerprint$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->getBuildValue(Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->fingerprint:Ljava/lang/String;

    .line 12
    sget-object p1, Lcom/stripe/core/device/DefaultBuildValuesFactory$manufacturer$1;->INSTANCE:Lcom/stripe/core/device/DefaultBuildValuesFactory$manufacturer$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->getBuildValue(Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->manufacturer:Ljava/lang/String;

    .line 13
    sget-object p1, Lcom/stripe/core/device/DefaultBuildValuesFactory$model$1;->INSTANCE:Lcom/stripe/core/device/DefaultBuildValuesFactory$model$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->getBuildValue(Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->model:Ljava/lang/String;

    .line 14
    sget-object p1, Lcom/stripe/core/device/DefaultBuildValuesFactory$product$1;->INSTANCE:Lcom/stripe/core/device/DefaultBuildValuesFactory$product$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, p1}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->getBuildValue(Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->product:Ljava/lang/String;

    return-void
.end method

.method private final getBuildValue(Lkotlin/jvm/functions/Function0;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 55
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 56
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_1

    .line 57
    const-string p1, ""

    :cond_1
    return-object p1
.end method

.method private final getOsType()Lcom/stripe/core/device/OsType;
    .locals 2

    .line 45
    sget-object v0, Lcom/stripe/core/device/DefaultBuildValuesFactory$getOsType$osTypeValue$1;->INSTANCE:Lcom/stripe/core/device/DefaultBuildValuesFactory$getOsType$osTypeValue$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->getBuildValue(Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v0

    .line 46
    sget-object v1, Lcom/stripe/core/device/OsType$User;->INSTANCE:Lcom/stripe/core/device/OsType$User;

    invoke-virtual {v1}, Lcom/stripe/core/device/OsType$User;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/stripe/core/device/OsType$User;->INSTANCE:Lcom/stripe/core/device/OsType$User;

    check-cast v0, Lcom/stripe/core/device/OsType;

    return-object v0

    .line 47
    :cond_0
    sget-object v1, Lcom/stripe/core/device/OsType$UserDebug;->INSTANCE:Lcom/stripe/core/device/OsType$UserDebug;

    invoke-virtual {v1}, Lcom/stripe/core/device/OsType$UserDebug;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/stripe/core/device/OsType$UserDebug;->INSTANCE:Lcom/stripe/core/device/OsType$UserDebug;

    check-cast v0, Lcom/stripe/core/device/OsType;

    return-object v0

    .line 48
    :cond_1
    sget-object v1, Lcom/stripe/core/device/OsType$Eng;->INSTANCE:Lcom/stripe/core/device/OsType$Eng;

    invoke-virtual {v1}, Lcom/stripe/core/device/OsType$Eng;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/stripe/core/device/OsType$Eng;->INSTANCE:Lcom/stripe/core/device/OsType$Eng;

    check-cast v0, Lcom/stripe/core/device/OsType;

    return-object v0

    .line 49
    :cond_2
    new-instance v1, Lcom/stripe/core/device/OsType$Other;

    invoke-direct {v1, v0}, Lcom/stripe/core/device/OsType$Other;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/stripe/core/device/OsType;

    return-object v1
.end method

.method private final isEmulator()Z
    .locals 7

    .line 34
    iget-object v0, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->brand:Ljava/lang/String;

    const-string v1, "generic"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->device:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->fingerprint:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->fingerprint:Ljava/lang/String;

    const-string v1, "unknown"

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->model:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "sdk"

    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v0, v6, v5}, Lkotlin/text/StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->model:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const-string v6, "Emulator"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v0, v6, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    iget-object v0, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->manufacturer:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const-string v6, "Genymotion"

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v0, v6, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->product:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    iget-object v0, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->product:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "emulator"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v5
.end method


# virtual methods
.method public create()Lcom/stripe/core/device/BuildValues;
    .locals 12

    .line 17
    invoke-direct {p0}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->isEmulator()Z

    move-result v11

    .line 19
    iget-object v1, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->brand:Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->device:Ljava/lang/String;

    .line 21
    iget-object v3, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->fingerprint:Ljava/lang/String;

    .line 22
    sget-object v0, Lcom/stripe/core/device/DefaultBuildValuesFactory$create$1;->INSTANCE:Lcom/stripe/core/device/DefaultBuildValuesFactory$create$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->getBuildValue(Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v4

    .line 23
    iget-object v5, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->hardwareManufacturer:Lcom/stripe/core/device/HardwareManufacturer;

    .line 24
    iget-object v6, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->model:Ljava/lang/String;

    .line 25
    iget-object v7, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->product:Ljava/lang/String;

    .line 26
    sget-object v0, Lcom/stripe/core/device/DefaultBuildValuesFactory$create$2;->INSTANCE:Lcom/stripe/core/device/DefaultBuildValuesFactory$create$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->getBuildValue(Lkotlin/jvm/functions/Function0;)Ljava/lang/String;

    move-result-object v8

    .line 27
    iget-object v10, p0, Lcom/stripe/core/device/DefaultBuildValuesFactory;->sdkInt:Lcom/stripe/core/device/SdkInt;

    .line 28
    invoke-direct {p0}, Lcom/stripe/core/device/DefaultBuildValuesFactory;->getOsType()Lcom/stripe/core/device/OsType;

    move-result-object v9

    .line 18
    new-instance v0, Lcom/stripe/core/device/BuildValues;

    invoke-direct/range {v0 .. v11}, Lcom/stripe/core/device/BuildValues;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/device/HardwareManufacturer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/core/device/OsType;Lcom/stripe/core/device/SdkInt;Z)V

    return-object v0
.end method
