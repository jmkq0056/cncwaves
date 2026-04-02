.class final Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;
.super Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;
.source "TerminalSession.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectReaderOperation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation<",
        "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0082\u0004\u0018\u00002\u000c\u0012\u0004\u0012\u00020\u00020\u0001R\u00020\u0003B%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0002\u0010\u000bJ\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0015\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0010H\u0010\u00a2\u0006\u0002\u0008\u0011J\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u0005J\u0008\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;",
        "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;",
        "Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "config",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "proxyReaderListener",
        "Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;",
        "callback",
        "(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V",
        "execute",
        "",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onFailure$terminalsession_release",
        "onSuccess",
        "sdkRequest",
        "Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;",
        "terminalsession_release"
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
.field private final config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

.field private final proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

.field private final reader:Lcom/stripe/stripeterminal/external/models/Reader;

.field final synthetic this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;


# direct methods
.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;Lcom/stripe/stripeterminal/external/callable/ReaderCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
            "Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;",
            "Lcom/stripe/stripeterminal/external/callable/ReaderCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proxyReaderListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2101
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    .line 2106
    check-cast p5, Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    invoke-direct {p0, p1, p5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/callable/ErrorCallback;)V

    .line 2102
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    .line 2103
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    .line 2104
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    return-void
.end method

.method public static final synthetic access$getConfig$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;)Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;
    .locals 0

    .line 2101
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 8

    .line 2110
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;->assertRequiredListener(Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)V

    .line 2113
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->getConnectionStatus()Lcom/stripe/stripeterminal/external/models/ConnectionStatus;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionStatus;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    .line 2126
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->proxyReaderListener:Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;

    invoke-virtual {v0, v2}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->setProxyReaderListener(Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;)V

    .line 2127
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v0

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v0, v2}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connecting(Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 2129
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    instance-of v2, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    if-eqz v2, :cond_0

    .line 2130
    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;->getAutoReconnectOnUnexpectedDisconnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    new-instance v4, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation$execute$connectedReader$1;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {v4, v5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation$execute$connectedReader$1;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/Adapter;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    goto :goto_0

    .line 2133
    :cond_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    instance-of v2, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    if-eqz v2, :cond_1

    .line 2134
    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;->getAutoReconnectOnUnexpectedDisconnect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2136
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    new-instance v4, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation$execute$connectedReader$2;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {v4, v5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation$execute$connectedReader$2;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/Adapter;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    goto :goto_0

    .line 2137
    :cond_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    instance-of v2, v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    if-eqz v2, :cond_2

    .line 2138
    check-cast v0, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;->getAutoReconnectOnUnexpectedDisconnect()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2140
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v0

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    new-instance v4, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation$execute$connectedReader$3;

    iget-object v5, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {v4, v5}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation$execute$connectedReader$3;-><init>(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/Adapter;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    goto :goto_0

    .line 2142
    :cond_2
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getAdapter$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/Adapter;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/stripe/stripeterminal/internal/common/Adapter;->connectReader$default(Lcom/stripe/stripeterminal/internal/common/Adapter;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    .line 2148
    :goto_0
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connecting(Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 2150
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    .line 2151
    instance-of v3, v2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_1

    .line 2152
    :cond_3
    instance-of v3, v2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;

    :goto_1
    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    .line 2153
    :cond_4
    instance-of v3, v2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;

    :goto_2
    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_3

    .line 2154
    :cond_5
    instance-of v3, v2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;

    :goto_3
    if-eqz v3, :cond_6

    move v3, v1

    goto :goto_4

    .line 2155
    :cond_6
    instance-of v3, v2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;

    :goto_4
    const/4 v4, 0x0

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_5

    .line 2158
    :cond_7
    instance-of v3, v2, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;

    if-eqz v3, :cond_c

    move v3, v4

    :goto_5
    if-eqz v3, :cond_8

    .line 2162
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-virtual {v3, v0, v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->activateReader$terminalsession_release(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    .line 2165
    :cond_8
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/stripe/stripeterminal/internal/common/extensions/DeviceTypeExtensions;->isMposDevice(Lcom/stripe/stripeterminal/external/models/DeviceType;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2166
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v2, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$handleMposDevice(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 2167
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v2}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;->getStripeSessionToken()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    if-eqz v2, :cond_a

    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_6

    :cond_9
    move v1, v4

    :cond_a
    :goto_6
    if-eqz v1, :cond_b

    .line 2170
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getOfflineSessionManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/offlinemode/helpers/OfflineSessionManager;

    move-result-object v1

    new-instance v2, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation$execute$1;

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-direct {v2, v3, v0, p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation$execute$1;-><init>(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1, v2}, Lcom/stripe/offlinemode/helpers/OfflineSessionManager;->activateReaderWhenOnline(Lkotlin/jvm/functions/Function0;)V

    .line 2176
    :cond_b
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->connected(Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 2179
    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->onSuccess(Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 2180
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$startReaderBatteryPolling(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)V

    return-void

    .line 2158
    :cond_c
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 2116
    :cond_d
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 2117
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ALREADY_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 2116
    const-string v3, "You must disconnect from reader before starting a new connection."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 4

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2189
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ALREADY_CONNECTED_TO_READER:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    if-eq v0, v1, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/DisconnectReason;->UNKNOWN:Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->emergencyDisconnectReader$default(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;Lcom/stripe/stripeterminal/external/models/DisconnectReason;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 2193
    :cond_0
    invoke-super {p0, p1}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->onFailure$terminalsession_release(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public final onSuccess(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2197
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/log/SdkResponse$Companion;->success(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ExternalOperation;->onSuccess$terminalsession_release(Lcom/stripe/stripeterminal/internal/common/log/SdkResponse;)V

    .line 2198
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->getCallback()Lcom/stripe/stripeterminal/external/callable/ErrorCallback;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/callable/ReaderCallback;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/external/callable/ReaderCallback;->onSuccess(Lcom/stripe/stripeterminal/external/models/Reader;)V

    return-void
.end method

.method public sdkRequest()Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;
    .locals 3

    .line 2184
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->this$0:Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;

    invoke-static {v0}, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;->access$getTraceManager$p(Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession;)Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/TraceManager;->startSession(Ljava/lang/String;)V

    .line 2185
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;->Companion:Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->reader:Lcom/stripe/stripeterminal/external/models/Reader;

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/terminalsession/TerminalSession$ConnectReaderOperation;->config:Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;

    invoke-virtual {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/log/SdkRequest$Companion;->connectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/stripeterminal/internal/common/log/SdkRequest;

    move-result-object v0

    return-object v0
.end method
