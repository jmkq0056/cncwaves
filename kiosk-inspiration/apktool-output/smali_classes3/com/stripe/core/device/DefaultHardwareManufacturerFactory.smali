.class public final Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;
.super Ljava/lang/Object;
.source "HardwareManufacturerFactory.kt"

# interfaces
.implements Lcom/stripe/core/device/HardwareManufacturerFactory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016R\u0016\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;",
        "Lcom/stripe/core/device/HardwareManufacturerFactory;",
        "getBuildManufacturer",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;)V",
        "create",
        "Lcom/stripe/core/device/HardwareManufacturer;",
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
.field private final getBuildManufacturer:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;-><init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "getBuildManufacturer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;->getBuildManufacturer:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 13
    sget-object p1, Lcom/stripe/core/device/DefaultHardwareManufacturerFactory$1;->INSTANCE:Lcom/stripe/core/device/DefaultHardwareManufacturerFactory$1;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;-><init>(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public create()Lcom/stripe/core/device/HardwareManufacturer;
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/stripe/core/device/DefaultHardwareManufacturerFactory;->getBuildManufacturer:Lkotlin/jvm/functions/Function0;

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 22
    const-string v0, ""

    .line 24
    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "toUpperCase(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    const-string v2, "BBPOS"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Lcom/stripe/core/device/HardwareManufacturer$Bbpos;->INSTANCE:Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    check-cast v0, Lcom/stripe/core/device/HardwareManufacturer;

    goto :goto_1

    .line 26
    :cond_2
    const-string v2, "VERIFONE"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lcom/stripe/core/device/HardwareManufacturer$Verifone;->INSTANCE:Lcom/stripe/core/device/HardwareManufacturer$Verifone;

    check-cast v0, Lcom/stripe/core/device/HardwareManufacturer;

    goto :goto_1

    .line 27
    :cond_3
    new-instance v1, Lcom/stripe/core/device/HardwareManufacturer$Other;

    invoke-direct {v1, v0}, Lcom/stripe/core/device/HardwareManufacturer$Other;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Lcom/stripe/core/device/HardwareManufacturer;

    :goto_1
    return-object v0
.end method
