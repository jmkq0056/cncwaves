.class public final Lcom/stripe/core/device/BbposClientDeviceTypeProvider;
.super Ljava/lang/Object;
.source "BbposClientDeviceTypeProvider.kt"

# interfaces
.implements Lcom/stripe/core/device/ClientDeviceTypeProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion;,
        Lcom/stripe/core/device/BbposClientDeviceTypeProvider$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000eB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;",
        "Lcom/stripe/core/device/ClientDeviceTypeProvider;",
        "serialSupplier",
        "Lcom/stripe/core/device/SerialSupplier;",
        "buildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/device/SerialSupplier;Lcom/stripe/core/device/BuildValues;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "get",
        "Lcom/stripe/core/device/ClientDeviceType$BbposDevice;",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion;


# instance fields
.field private final buildValues:Lcom/stripe/core/device/BuildValues;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final serialSupplier:Lcom/stripe/core/device/SerialSupplier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;->Companion:Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/device/SerialSupplier;Lcom/stripe/core/device/BuildValues;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/device/SerialSupplier;",
            "Lcom/stripe/core/device/BuildValues;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "serialSupplier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildValues"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;->serialSupplier:Lcom/stripe/core/device/SerialSupplier;

    .line 10
    iput-object p2, p0, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;->buildValues:Lcom/stripe/core/device/BuildValues;

    .line 11
    iput-object p3, p0, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/ClientDeviceType$BbposDevice;
    .locals 5

    .line 14
    iget-object v0, p0, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;->serialSupplier:Lcom/stripe/core/device/SerialSupplier;

    invoke-interface {v0}, Lcom/stripe/core/device/SerialSupplier;->get-q_5ZKBc()Ljava/lang/String;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;->Companion:Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion;

    invoke-virtual {v1, v0}, Lcom/stripe/core/device/BbposClientDeviceTypeProvider$Companion;->toDeviceMetadata-wDMJIJk$device_release(Ljava/lang/String;)Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;

    move-result-object v1

    sget-object v2, Lcom/stripe/core/device/BbposClientDeviceTypeProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Lcom/stripe/serialnumber/SmartPOSDeviceMetadata;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 28
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 24
    :pswitch_0
    iget-object v1, p0, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get ClientDeviceType from serial number \""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" on a BBPOS device."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Lkotlin/Pair;

    .line 24
    invoke-interface {v1, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 28
    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$Unknown;

    .line 29
    new-instance v1, Lcom/stripe/core/device/HardwareManufacturer$Other;

    iget-object v2, p0, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v2}, Lcom/stripe/core/device/BuildValues;->getManufacturer()Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/core/device/HardwareManufacturer;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/core/device/HardwareManufacturer$Other;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-direct {v0, v1}, Lcom/stripe/core/device/ClientDeviceType$Unknown;-><init>(Lcom/stripe/core/device/HardwareManufacturer$Other;)V

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType$BbposDevice;

    return-object v0

    .line 22
    :pswitch_1
    sget-object v0, Lcom/stripe/core/device/ClientDeviceType$Etna;->INSTANCE:Lcom/stripe/core/device/ClientDeviceType$Etna;

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType$BbposDevice;

    return-object v0

    .line 21
    :pswitch_2
    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$S710;

    invoke-direct {v0, v3}, Lcom/stripe/core/device/ClientDeviceType$S710;-><init>(Z)V

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType$BbposDevice;

    return-object v0

    .line 20
    :pswitch_3
    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$S710;

    invoke-direct {v0, v2}, Lcom/stripe/core/device/ClientDeviceType$S710;-><init>(Z)V

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType$BbposDevice;

    return-object v0

    .line 19
    :pswitch_4
    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$S700;

    invoke-direct {v0, v3}, Lcom/stripe/core/device/ClientDeviceType$S700;-><init>(Z)V

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType$BbposDevice;

    return-object v0

    .line 18
    :pswitch_5
    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$S700;

    invoke-direct {v0, v2}, Lcom/stripe/core/device/ClientDeviceType$S700;-><init>(Z)V

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType$BbposDevice;

    return-object v0

    .line 17
    :pswitch_6
    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$WisePosE;

    invoke-direct {v0, v3}, Lcom/stripe/core/device/ClientDeviceType$WisePosE;-><init>(Z)V

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType$BbposDevice;

    return-object v0

    .line 16
    :pswitch_7
    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$WisePosE;

    invoke-direct {v0, v2}, Lcom/stripe/core/device/ClientDeviceType$WisePosE;-><init>(Z)V

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType$BbposDevice;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic get()Lcom/stripe/core/device/ClientDeviceType;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;->get()Lcom/stripe/core/device/ClientDeviceType$BbposDevice;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType;

    return-object v0
.end method
