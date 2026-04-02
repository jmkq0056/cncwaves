.class public final Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;
.super Ljava/lang/Object;
.source "DefaultClientDeviceTypeProvider.kt"

# interfaces
.implements Lcom/stripe/core/device/ClientDeviceTypeProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bj\u0002`\u000e\u00a2\u0006\u0002\u0010\u000fJ\u0008\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0011H\u0002J\u0008\u0010\u0019\u001a\u00020\u0011H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r0\u000bj\u0002`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;",
        "Lcom/stripe/core/device/ClientDeviceTypeProvider;",
        "buildValues",
        "Lcom/stripe/core/device/BuildValues;",
        "emulatorClientDeviceTypeParser",
        "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;",
        "bbposClientDeviceTypeParser",
        "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;",
        "verifoneClientDeviceTypeParser",
        "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/device/BuildValues;Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;Lcom/stripe/core/device/BbposClientDeviceTypeProvider;Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "clientDeviceType",
        "Lcom/stripe/core/device/ClientDeviceType;",
        "getClientDeviceType",
        "()Lcom/stripe/core/device/ClientDeviceType;",
        "clientDeviceType$delegate",
        "Lkotlin/Lazy;",
        "createUnknownClientDeviceType",
        "Lcom/stripe/core/device/ClientDeviceType$Unknown;",
        "determineClientDeviceType",
        "get",
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


# instance fields
.field private final bbposClientDeviceTypeParser:Lcom/stripe/core/device/BbposClientDeviceTypeProvider;

.field private final buildValues:Lcom/stripe/core/device/BuildValues;

.field private final clientDeviceType$delegate:Lkotlin/Lazy;

.field private final emulatorClientDeviceTypeParser:Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;

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

.field private final verifoneClientDeviceTypeParser:Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;


# direct methods
.method public constructor <init>(Lcom/stripe/core/device/BuildValues;Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;Lcom/stripe/core/device/BbposClientDeviceTypeProvider;Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/device/BuildValues;",
            "Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;",
            "Lcom/stripe/core/device/BbposClientDeviceTypeProvider;",
            "Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "buildValues"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emulatorClientDeviceTypeParser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bbposClientDeviceTypeParser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verifoneClientDeviceTypeParser"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->buildValues:Lcom/stripe/core/device/BuildValues;

    .line 14
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->emulatorClientDeviceTypeParser:Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;

    .line 15
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->bbposClientDeviceTypeParser:Lcom/stripe/core/device/BbposClientDeviceTypeProvider;

    .line 16
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->verifoneClientDeviceTypeParser:Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;

    .line 17
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 19
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider$clientDeviceType$2;

    invoke-direct {p1, p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider$clientDeviceType$2;-><init>(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->clientDeviceType$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$determineClientDeviceType(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;)Lcom/stripe/core/device/ClientDeviceType;
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->determineClientDeviceType()Lcom/stripe/core/device/ClientDeviceType;

    move-result-object p0

    return-object p0
.end method

.method private final createUnknownClientDeviceType()Lcom/stripe/core/device/ClientDeviceType$Unknown;
    .locals 3

    .line 40
    new-instance v0, Lcom/stripe/core/device/ClientDeviceType$Unknown;

    .line 41
    new-instance v1, Lcom/stripe/core/device/HardwareManufacturer$Other;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v2}, Lcom/stripe/core/device/BuildValues;->getManufacturer()Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object v2

    invoke-interface {v2}, Lcom/stripe/core/device/HardwareManufacturer;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/stripe/core/device/HardwareManufacturer$Other;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-direct {v0, v1}, Lcom/stripe/core/device/ClientDeviceType$Unknown;-><init>(Lcom/stripe/core/device/HardwareManufacturer$Other;)V

    return-object v0
.end method

.method private final determineClientDeviceType()Lcom/stripe/core/device/ClientDeviceType;
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v0}, Lcom/stripe/core/device/BuildValues;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->emulatorClientDeviceTypeParser:Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;

    invoke-virtual {v0}, Lcom/stripe/core/device/EmulatorClientDeviceTypeProvider;->get()Lcom/stripe/core/device/ClientDeviceType$Emulator;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType;

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->buildValues:Lcom/stripe/core/device/BuildValues;

    invoke-virtual {v0}, Lcom/stripe/core/device/BuildValues;->getManufacturer()Lcom/stripe/core/device/HardwareManufacturer;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/stripe/core/device/HardwareManufacturer$Bbpos;->INSTANCE:Lcom/stripe/core/device/HardwareManufacturer$Bbpos;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->bbposClientDeviceTypeParser:Lcom/stripe/core/device/BbposClientDeviceTypeProvider;

    invoke-virtual {v0}, Lcom/stripe/core/device/BbposClientDeviceTypeProvider;->get()Lcom/stripe/core/device/ClientDeviceType$BbposDevice;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType;

    goto :goto_0

    .line 32
    :cond_1
    sget-object v1, Lcom/stripe/core/device/HardwareManufacturer$Verifone;->INSTANCE:Lcom/stripe/core/device/HardwareManufacturer$Verifone;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->verifoneClientDeviceTypeParser:Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;

    invoke-virtual {v0}, Lcom/stripe/core/device/VerifoneClientDeviceTypeProvider;->get()Lcom/stripe/core/device/ClientDeviceType$MorphDevice;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType;

    goto :goto_0

    .line 33
    :cond_2
    instance-of v0, v0, Lcom/stripe/core/device/HardwareManufacturer$Other;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->createUnknownClientDeviceType()Lcom/stripe/core/device/ClientDeviceType$Unknown;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType;

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ClientDeviceType = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Lkotlin/Pair;

    invoke-interface {v1, v2, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object v0

    .line 33
    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method private final getClientDeviceType()Lcom/stripe/core/device/ClientDeviceType;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->clientDeviceType$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/core/device/ClientDeviceType;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/stripe/core/device/ClientDeviceType;
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultClientDeviceTypeProvider;->getClientDeviceType()Lcom/stripe/core/device/ClientDeviceType;

    move-result-object v0

    return-object v0
.end method
