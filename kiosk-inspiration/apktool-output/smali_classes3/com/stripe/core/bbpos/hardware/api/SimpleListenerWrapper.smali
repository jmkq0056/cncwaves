.class public interface abstract Lcom/stripe/core/bbpos/hardware/api/SimpleListenerWrapper;
.super Ljava/lang/Object;
.source "SimpleListenerWrapper.kt"

# interfaces
.implements Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d6\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0003H\u0016J\u0016\u0010\n\u001a\u00020\u00032\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\"\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00142\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\u0008\u0010\u001d\u001a\u00020\u0003H\u0016J\u0008\u0010\u001e\u001a\u00020\u0003H\u0016J\u0018\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0014H\u0016J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0019H\u0016J\u0008\u0010&\u001a\u00020\u0003H\u0016J\u0010\u0010\'\u001a\u00020\u00032\u0006\u0010(\u001a\u00020)H\u0016J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0019H\u0016J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020.H\u0016J\u0010\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u000201H\u0016J\u0008\u00102\u001a\u00020\u0003H\u0016J\u0016\u00103\u001a\u00020\u00032\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000cH\u0016J\u0018\u00105\u001a\u00020\u00032\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H\u0016J$\u0010:\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020;2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190=H\u0016J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0019H\u0016J\u0010\u0010?\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0018\u0010@\u001a\u00020\u00032\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH\u0016J\u001e\u0010E\u001a\u00020\u00032\u0014\u0010F\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020G\u0018\u00010=H\u0016J$\u0010H\u001a\u00020\u00032\u0006\u0010I\u001a\u00020J2\u0012\u0010K\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190=H\u0016J\u0010\u0010L\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J$\u0010M\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190=H\u0016J\u0018\u0010N\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020O2\u0006\u0010P\u001a\u00020QH\u0016J\u001c\u0010R\u001a\u00020\u00032\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020G0=H\u0016J\u00d0\u0001\u0010S\u001a\u00020\u00032\u0006\u0010T\u001a\u00020U2\u0006\u0010V\u001a\u00020U2\u0006\u0010W\u001a\u00020U2\u0006\u0010X\u001a\u00020U2\u0006\u0010Y\u001a\u00020U2\u0006\u0010Z\u001a\u00020U2\u0006\u0010[\u001a\u00020U2\u0006\u0010\\\u001a\u00020U2\u0006\u0010]\u001a\u00020U2\u0006\u0010^\u001a\u00020U2\u0006\u0010_\u001a\u00020U2\u0006\u0010`\u001a\u00020U2\u0006\u0010a\u001a\u00020U2\u0006\u0010b\u001a\u00020U2\u0006\u0010c\u001a\u00020U2\u0006\u0010d\u001a\u00020U2\u0006\u0010e\u001a\u00020U2\u0006\u0010f\u001a\u00020U2\u0006\u0010g\u001a\u00020U2\u0006\u0010h\u001a\u00020U2\u0006\u0010i\u001a\u00020U2\u0006\u0010j\u001a\u00020U2\u0006\u0010k\u001a\u00020U2\u0006\u0010l\u001a\u00020U2\u0006\u0010m\u001a\u00020UH\u0016J\u0010\u0010n\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0019H\u0016J\u0010\u0010o\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010p\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020qH\u0016J\u001c\u0010r\u001a\u00020\u00032\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020s0=H\u0016J\u0018\u0010t\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010u\u001a\u00020\u0019H\u0016J\u0010\u0010v\u001a\u00020\u00032\u0006\u0010w\u001a\u00020sH\u0016J\u001c\u0010x\u001a\u00020\u00032\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020s0=H\u0016J\u0008\u0010y\u001a\u00020\u0003H\u0016J\u0008\u0010z\u001a\u00020\u0003H\u0016J\u0018\u0010{\u001a\u00020\u00032\u0006\u0010|\u001a\u00020}2\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010~\u001a\u00020\u0003H\u0016J\u0008\u0010\u007f\u001a\u00020\u0003H\u0016J\t\u0010\u0080\u0001\u001a\u00020\u0003H\u0016J\u0013\u0010\u0081\u0001\u001a\u00020\u00032\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0016\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0084\u0001\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/api/SimpleListenerWrapper;",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "onBatteryLow",
        "",
        "batteryStatus",
        "Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;",
        "onBtConnected",
        "connectedDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "onBtDisconnected",
        "onBtReturnScanResults",
        "foundDevices",
        "",
        "onDeviceReset",
        "isSuccess",
        "",
        "reason",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;",
        "onDeviceResetAlert",
        "timeBeforeReset",
        "",
        "onError",
        "error",
        "Lcom/stripe/bbpos/sdk/Error;",
        "errorMessage",
        "",
        "onHardwareFunctionalTestResult",
        "result",
        "itemIndex",
        "onPowerButtonPressed",
        "onPowerDown",
        "onRequestDisplayAsterisk",
        "unmaskedDigits",
        "numOfAsterisk",
        "onRequestDisplayText",
        "displayText",
        "Lcom/stripe/bbpos/sdk/DisplayText;",
        "displayTextLanguage",
        "onRequestFinalConfirm",
        "onRequestManualPanEntry",
        "manualPanEntry",
        "Lcom/stripe/bbpos/sdk/ManualPanEntryType;",
        "onRequestOnlineProcess",
        "tlv",
        "onRequestPinEntry",
        "pinEntrySource",
        "Lcom/stripe/bbpos/sdk/PinEntrySource;",
        "onRequestProduceAudioTone",
        "tone",
        "Lcom/stripe/bbpos/sdk/ContactlessStatusTone;",
        "onRequestSelectAccountType",
        "onRequestSelectApplication",
        "appList",
        "onReturnAccessiblePinPadTouchEvent",
        "pinPadTouchEvent",
        "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;",
        "eventId",
        "Ljava/util/UUID;",
        "onReturnAmount",
        "Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;",
        "data",
        "",
        "onReturnBatchData",
        "onReturnCancelCheckCardResult",
        "onReturnCheckCardResult",
        "checkCardResult",
        "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;",
        "cardData",
        "Lcom/stripe/bbpos/sdk/CardData;",
        "onReturnDebugLog",
        "debugLog",
        "",
        "onReturnDeviceInfo",
        "deviceInfo",
        "Lcom/stripe/bbpos/sdk/DeviceInfo;",
        "rawReaderData",
        "onReturnDisableInputAmountResult",
        "onReturnEncryptDataResult",
        "onReturnPinEntryResult",
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;",
        "pinData",
        "Lcom/stripe/bbpos/sdk/PinData;",
        "onReturnReadAidResult",
        "onReturnReadTerminalSettingResult",
        "acquirerIdentifier",
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue;",
        "terminalCountryCode",
        "transactionCurrencyCode",
        "transactionCurrencyExponent",
        "merchantNameAndLocation",
        "merchantIdentifier",
        "terminalIdentification",
        "terminalCapabilities",
        "terminalType",
        "additionalTerminalCapabilities",
        "normalModeTimeout",
        "standbyModeTimeout",
        "bluetoothDiscoveryTimeout",
        "msrPinEntryTimeout",
        "firmwareFallbackEnabled",
        "customBluetoothNamePrefix",
        "customBluetoothSerialSuffix",
        "firmwareForceChipEnabled",
        "iccTransactionBeepEnabled",
        "keypadEventBeepEnabled",
        "spocModeEnabled",
        "domesticDebitAidList",
        "visaDynamicReaderLimit",
        "buzzerSoundEnabled",
        "configHash",
        "onReturnReversalData",
        "onReturnSetPinPadButtonsResult",
        "onReturnTransactionResult",
        "Lcom/stripe/bbpos/sdk/TransactionResult$Type;",
        "onReturnUpdateAidResult",
        "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;",
        "onReturnUpdateDisplaySettingsResult",
        "message",
        "onReturnUpdateTerminalSettingResult",
        "status",
        "onReturnUpdateTerminalSettingsResult",
        "onSerialConnected",
        "onSerialDisconnected",
        "onSessionError",
        "sessionError",
        "Lcom/stripe/core/bbpos/hardware/api/SessionError;",
        "onSessionInitialized",
        "onUsbConnected",
        "onUsbDisconnected",
        "onWaitingForCard",
        "checkCardMode",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
        "hardware_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public onBatteryLow(Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;)V
    .locals 1

    const-string v0, "batteryStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onBtConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string v0, "connectedDevice"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onBtDisconnected()V
    .locals 0

    return-void
.end method

.method public onBtReturnScanResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    const-string v0, "foundDevices"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceReset(ZLcom/stripe/core/bbpos/hardware/api/DeviceResetReason;)V
    .locals 0

    const-string p1, "reason"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceResetAlert(I)V
    .locals 0

    return-void
.end method

.method public onError(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorMessage"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onHardwareFunctionalTestResult(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPowerButtonPressed()V
    .locals 0

    return-void
.end method

.method public onPowerDown()V
    .locals 0

    return-void
.end method

.method public onRequestDisplayAsterisk(Ljava/lang/String;I)V
    .locals 0

    const-string p2, "unmaskedDigits"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestDisplayText(Lcom/stripe/bbpos/sdk/DisplayText;Ljava/lang/String;)V
    .locals 1

    const-string v0, "displayText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "displayTextLanguage"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestFinalConfirm()V
    .locals 0

    return-void
.end method

.method public onRequestManualPanEntry(Lcom/stripe/bbpos/sdk/ManualPanEntryType;)V
    .locals 1

    const-string v0, "manualPanEntry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestOnlineProcess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPinEntry(Lcom/stripe/bbpos/sdk/PinEntrySource;)V
    .locals 1

    const-string v0, "pinEntrySource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestProduceAudioTone(Lcom/stripe/bbpos/sdk/ContactlessStatusTone;)V
    .locals 1

    const-string v0, "tone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestSelectAccountType()V
    .locals 0

    return-void
.end method

.method public onRequestSelectApplication(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnAccessiblePinPadTouchEvent(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/util/UUID;)V
    .locals 1

    const-string v0, "pinPadTouchEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "eventId"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnAmount(Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnBatchData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnCancelCheckCardResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;)V
    .locals 1

    const-string v0, "checkCardResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cardData"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnDebugLog(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnDeviceInfo(Lcom/stripe/bbpos/sdk/DeviceInfo;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/sdk/DeviceInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deviceInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "rawReaderData"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnDisableInputAmountResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnEncryptDataResult(ZLjava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnPinEntryResult(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "pinData"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnReadAidResult(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnReadTerminalSettingResult(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;)V
    .locals 1

    const-string v0, "acquirerIdentifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "terminalCountryCode"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transactionCurrencyCode"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "transactionCurrencyExponent"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "merchantNameAndLocation"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "merchantIdentifier"

    invoke-static {p6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "terminalIdentification"

    invoke-static {p7, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "terminalCapabilities"

    invoke-static {p8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "terminalType"

    invoke-static {p9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "additionalTerminalCapabilities"

    invoke-static {p10, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "normalModeTimeout"

    invoke-static {p11, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "standbyModeTimeout"

    invoke-static {p12, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "bluetoothDiscoveryTimeout"

    invoke-static {p13, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "msrPinEntryTimeout"

    invoke-static {p14, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "firmwareFallbackEnabled"

    move-object/from16 p2, p15

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "customBluetoothNamePrefix"

    move-object/from16 p2, p16

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "customBluetoothSerialSuffix"

    move-object/from16 p2, p17

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "firmwareForceChipEnabled"

    move-object/from16 p2, p18

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "iccTransactionBeepEnabled"

    move-object/from16 p2, p19

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "keypadEventBeepEnabled"

    move-object/from16 p2, p20

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "spocModeEnabled"

    move-object/from16 p2, p21

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "domesticDebitAidList"

    move-object/from16 p2, p22

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "visaDynamicReaderLimit"

    move-object/from16 p2, p23

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "buzzerSoundEnabled"

    move-object/from16 p2, p24

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "configHash"

    move-object/from16 p2, p25

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnReversalData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tlv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnSetPinPadButtonsResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnUpdateAidResult(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnUpdateDisplaySettingsResult(ZLjava/lang/String;)V
    .locals 0

    const-string p1, "message"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnUpdateTerminalSettingResult(Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnUpdateTerminalSettingsResult(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSerialConnected()V
    .locals 0

    return-void
.end method

.method public onSerialDisconnected()V
    .locals 0

    return-void
.end method

.method public onSessionError(Lcom/stripe/core/bbpos/hardware/api/SessionError;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sessionError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "errorMessage"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionInitialized()V
    .locals 0

    return-void
.end method

.method public onUsbConnected()V
    .locals 0

    return-void
.end method

.method public onUsbDisconnected()V
    .locals 0

    return-void
.end method

.method public onWaitingForCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V
    .locals 1

    const-string v0, "checkCardMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
