.class public final Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;
.super Ljava/lang/Object;
.source "DefaultAdapterRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultAdapterRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultAdapterRepository.kt\ncom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,125:1\n1#2:126\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0083\u0001\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0003\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0003\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0003\u0012\u0016\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017\u00a2\u0006\u0002\u0010\u0018J\u0012\u0010+\u001a\u0004\u0018\u00010\u00102\u0006\u0010,\u001a\u00020-H\u0016J\u0012\u0010.\u001a\u0004\u0018\u00010\u00102\u0006\u0010,\u001a\u00020-H\u0016R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u00108B@BX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001f\u001a\u0004\u0018\u00010\u00108VX\u0096\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\"\u0010#*\u0004\u0008 \u0010!R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00160\u0014j\u0002`\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010$\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\'\u001a\u00020\u000b8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010&R\u0014\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010)\u001a\u0004\u0018\u00010\u001c8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010\u001eR\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006/"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/AdapterRepository;",
        "bluetoothAdapterProvider",
        "Ldagger/Lazy;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
        "cotsAdapter",
        "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
        "simulatedCotsAdapter",
        "remoteReaderAdapter",
        "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;",
        "simulatedBluetoothAdapterProvider",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
        "simulatedIpAdapter",
        "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;",
        "simulatedUsbAdapterProvider",
        "embeddedAdapter",
        "Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "usbAdapterProvider",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/Adapter;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "<set-?>",
        "_currentAdapter",
        "bluetoothAdapter",
        "Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;",
        "getBluetoothAdapter",
        "()Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;",
        "currentAdapter",
        "getCurrentAdapter$delegate",
        "(Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;)Ljava/lang/Object;",
        "getCurrentAdapter",
        "()Lcom/stripe/stripeterminal/internal/common/Adapter;",
        "simulatedBluetoothAdapter",
        "getSimulatedBluetoothAdapter",
        "()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
        "simulatedUsbAdapter",
        "getSimulatedUsbAdapter",
        "usbAdapter",
        "getUsbAdapter",
        "getAdapterByDiscoveryConfiguration",
        "discoveryConfiguration",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "setAdapterByDiscoveryConfiguration",
        "adapter_release"
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
.field private _currentAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

.field private final bluetoothAdapterProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final cotsAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

.field private final embeddedAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

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

.field private final remoteReaderAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

.field private final simulatedBluetoothAdapterProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final simulatedCotsAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

.field private final simulatedIpAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;

.field private final simulatedUsbAdapterProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final usbAdapterProvider:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;Ldagger/Lazy;Lcom/stripe/stripeterminal/internal/common/Adapter;Ldagger/Lazy;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposBluetoothAdapter;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/Adapter;",
            "Ldagger/Lazy<",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposUsbAdapter;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "bluetoothAdapterProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteReaderAdapter"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simulatedBluetoothAdapterProvider"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simulatedIpAdapter"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simulatedUsbAdapterProvider"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbAdapterProvider"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->bluetoothAdapterProvider:Ldagger/Lazy;

    .line 20
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->cotsAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    .line 21
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->simulatedCotsAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    .line 22
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->remoteReaderAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    .line 23
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->simulatedBluetoothAdapterProvider:Ldagger/Lazy;

    .line 24
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->simulatedIpAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;

    .line 25
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->simulatedUsbAdapterProvider:Ldagger/Lazy;

    .line 26
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->embeddedAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    .line 27
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->usbAdapterProvider:Ldagger/Lazy;

    .line 28
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final getBluetoothAdapter()Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->embeddedAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->bluetoothAdapterProvider:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;

    return-object v0
.end method

.method private static getCurrentAdapter$delegate(Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;)Ljava/lang/Object;
    .locals 6

    .line 33
    new-instance v0, Lkotlin/jvm/internal/MutablePropertyReference0Impl;

    const-string v4, "get_currentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;"

    const/4 v5, 0x0

    const-class v2, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;

    const-string v3, "_currentAdapter"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lkotlin/jvm/internal/MutablePropertyReference0;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->mutableProperty0(Lkotlin/jvm/internal/MutablePropertyReference0;)Lkotlin/reflect/KMutableProperty0;

    move-result-object p0

    return-object p0
.end method

.method private final getSimulatedBluetoothAdapter()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->simulatedBluetoothAdapterProvider:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;

    return-object v0
.end method

.method private final getSimulatedUsbAdapter()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->simulatedUsbAdapterProvider:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;

    return-object v0
.end method

.method private final getUsbAdapter()Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->embeddedAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->usbAdapterProvider:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;

    return-object v0
.end method


# virtual methods
.method public getAdapterByDiscoveryConfiguration(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 7

    const-string v0, "discoveryConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$TapToPayDiscoveryConfiguration;

    if-eqz v0, :cond_2

    .line 65
    check-cast p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$TapToPayDiscoveryConfiguration;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$TapToPayDiscoveryConfiguration;->isSimulated()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->simulatedCotsAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->cotsAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/CotsAdapter;

    :goto_0
    if-eqz p1, :cond_1

    .line 69
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    return-object p1

    :cond_1
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 70
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->TAP_TO_PAY_LIBRARY_NOT_INCLUDED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 69
    const-string v2, "The Terminal `taptopay` module must be included for this DiscoveryConfiguration"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 75
    :cond_2
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;

    if-eqz v0, :cond_4

    .line 76
    check-cast p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$BluetoothDiscoveryConfiguration;->isSimulated()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 77
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->getSimulatedBluetoothAdapter()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;

    goto :goto_1

    .line 79
    :cond_3
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->getBluetoothAdapter()Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;

    move-result-object p1

    :goto_1
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    return-object p1

    .line 82
    :cond_4
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    if-eqz v0, :cond_6

    .line 83
    check-cast p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$InternetDiscoveryConfiguration;->isSimulated()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 84
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->simulatedIpAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedIpAdapter;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;

    goto :goto_2

    .line 86
    :cond_5
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->remoteReaderAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;

    :goto_2
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    return-object p1

    .line 90
    :cond_6
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$EmbeddedDiscoveryConfiguration;

    if-eqz v0, :cond_8

    .line 91
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->embeddedAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    if-eqz p1, :cond_7

    return-object p1

    :cond_7
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 92
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    .line 91
    const-string v2, "The Terminal `embedded` module must be included for this DiscoveryConfiguration"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 97
    :cond_8
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$HandoffDiscoveryConfiguration;

    if-eqz v0, :cond_9

    .line 98
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->remoteReaderAdapter:Lcom/stripe/stripeterminal/internal/common/adapter/RemoteReaderAdapter;

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    return-object p1

    .line 101
    :cond_9
    instance-of v0, p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;

    if-eqz v0, :cond_b

    .line 102
    check-cast p1, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration$UsbDiscoveryConfiguration;->isSimulated()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 103
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->getSimulatedUsbAdapter()Lcom/stripe/stripeterminal/internal/common/adapter/SimulatedMobileAdapter;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;

    goto :goto_3

    .line 105
    :cond_a
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->getUsbAdapter()Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;

    move-result-object p1

    :goto_3
    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter;

    return-object p1

    :cond_b
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->_currentAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    return-object v0
.end method

.method public setAdapterByDiscoveryConfiguration(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/Adapter;
    .locals 5

    const-string v0, "discoveryConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->getAdapterByDiscoveryConfiguration(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object p1

    .line 114
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->_currentAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x2

    .line 116
    new-array v1, v1, [Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->getCurrentAdapter()Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    const-string v4, "from"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v2, "to"

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 115
    const-string v2, "Switching adapters"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 119
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->_currentAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/Adapter;->dispose()V

    :cond_2
    if-eqz p1, :cond_3

    .line 120
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter;->init()V

    .line 121
    :cond_3
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/DefaultAdapterRepository;->_currentAdapter:Lcom/stripe/stripeterminal/internal/common/Adapter;

    :cond_4
    return-object p1
.end method
