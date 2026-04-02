.class public interface abstract Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;
.super Ljava/lang/Object;
.source "DeviceListenerWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0008H&J\u0008\u0010\t\u001a\u00020\u0003H&J\u0016\u0010\n\u001a\u00020\u00032\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000cH&J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0014H&J\u0018\u0010\u0015\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H&J\"\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u00142\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H&J\u0008\u0010\u001d\u001a\u00020\u0003H&J\u0008\u0010\u001e\u001a\u00020\u0003H&J\u0018\u0010\u001f\u001a\u00020\u00032\u0006\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\u0014H&J\u0018\u0010\"\u001a\u00020\u00032\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u0019H&J\u0008\u0010&\u001a\u00020\u0003H&J\u0010\u0010\'\u001a\u00020\u00032\u0006\u0010(\u001a\u00020)H&J\u0010\u0010*\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0019H&J\u0010\u0010,\u001a\u00020\u00032\u0006\u0010-\u001a\u00020.H&J\u0010\u0010/\u001a\u00020\u00032\u0006\u00100\u001a\u000201H&J\u0008\u00102\u001a\u00020\u0003H&J\u0016\u00103\u001a\u00020\u00032\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000cH&J\u0018\u00105\u001a\u00020\u00032\u0006\u00106\u001a\u0002072\u0006\u00108\u001a\u000209H&J$\u0010:\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020;2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190=H&J\u0010\u0010>\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0019H&J\u0010\u0010?\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0018\u0010@\u001a\u00020\u00032\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020DH&J\u001e\u0010E\u001a\u00020\u00032\u0014\u0010F\u001a\u0010\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u0001\u0018\u00010=H&J$\u0010G\u001a\u00020\u00032\u0006\u0010H\u001a\u00020I2\u0012\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190=H&J\u0010\u0010K\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J$\u0010L\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00190=H&J\u0018\u0010M\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020N2\u0006\u0010O\u001a\u00020PH&J\u001c\u0010Q\u001a\u00020\u00032\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020\u00010=H&J\u00d0\u0001\u0010R\u001a\u00020\u00032\u0006\u0010S\u001a\u00020T2\u0006\u0010U\u001a\u00020T2\u0006\u0010V\u001a\u00020T2\u0006\u0010W\u001a\u00020T2\u0006\u0010X\u001a\u00020T2\u0006\u0010Y\u001a\u00020T2\u0006\u0010Z\u001a\u00020T2\u0006\u0010[\u001a\u00020T2\u0006\u0010\\\u001a\u00020T2\u0006\u0010]\u001a\u00020T2\u0006\u0010^\u001a\u00020T2\u0006\u0010_\u001a\u00020T2\u0006\u0010`\u001a\u00020T2\u0006\u0010a\u001a\u00020T2\u0006\u0010b\u001a\u00020T2\u0006\u0010c\u001a\u00020T2\u0006\u0010d\u001a\u00020T2\u0006\u0010e\u001a\u00020T2\u0006\u0010f\u001a\u00020T2\u0006\u0010g\u001a\u00020T2\u0006\u0010h\u001a\u00020T2\u0006\u0010i\u001a\u00020T2\u0006\u0010j\u001a\u00020T2\u0006\u0010k\u001a\u00020T2\u0006\u0010l\u001a\u00020TH&J\u0010\u0010m\u001a\u00020\u00032\u0006\u0010+\u001a\u00020\u0019H&J\u0010\u0010n\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0010\u0010o\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020pH&J\u001c\u0010q\u001a\u00020\u00032\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020r0=H&J\u0018\u0010s\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010t\u001a\u00020\u0019H&J\u0010\u0010u\u001a\u00020\u00032\u0006\u0010v\u001a\u00020rH&J\u001c\u0010w\u001a\u00020\u00032\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0019\u0012\u0004\u0012\u00020r0=H&J\u0008\u0010x\u001a\u00020\u0003H&J\u0008\u0010y\u001a\u00020\u0003H&J\u0018\u0010z\u001a\u00020\u00032\u0006\u0010{\u001a\u00020|2\u0006\u0010\u0018\u001a\u00020\u0019H&J\u0008\u0010}\u001a\u00020\u0003H&J\u0008\u0010~\u001a\u00020\u0003H&J\u0008\u0010\u007f\u001a\u00020\u0003H&J\u0013\u0010\u0080\u0001\u001a\u00020\u00032\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u0001H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0083\u0001\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "",
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
.method public abstract onBatteryLow(Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;)V
.end method

.method public abstract onBtConnected(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onBtDisconnected()V
.end method

.method public abstract onBtReturnScanResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDeviceReset(ZLcom/stripe/core/bbpos/hardware/api/DeviceResetReason;)V
.end method

.method public abstract onDeviceResetAlert(I)V
.end method

.method public abstract onError(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)V
.end method

.method public abstract onHardwareFunctionalTestResult(IILjava/lang/String;)V
.end method

.method public abstract onPowerButtonPressed()V
.end method

.method public abstract onPowerDown()V
.end method

.method public abstract onRequestDisplayAsterisk(Ljava/lang/String;I)V
.end method

.method public abstract onRequestDisplayText(Lcom/stripe/bbpos/sdk/DisplayText;Ljava/lang/String;)V
.end method

.method public abstract onRequestFinalConfirm()V
.end method

.method public abstract onRequestManualPanEntry(Lcom/stripe/bbpos/sdk/ManualPanEntryType;)V
.end method

.method public abstract onRequestOnlineProcess(Ljava/lang/String;)V
.end method

.method public abstract onRequestPinEntry(Lcom/stripe/bbpos/sdk/PinEntrySource;)V
.end method

.method public abstract onRequestProduceAudioTone(Lcom/stripe/bbpos/sdk/ContactlessStatusTone;)V
.end method

.method public abstract onRequestSelectAccountType()V
.end method

.method public abstract onRequestSelectApplication(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnAccessiblePinPadTouchEvent(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/util/UUID;)V
.end method

.method public abstract onReturnAmount(Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;Ljava/util/Map;)V
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
.end method

.method public abstract onReturnBatchData(Ljava/lang/String;)V
.end method

.method public abstract onReturnCancelCheckCardResult(Z)V
.end method

.method public abstract onReturnCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;)V
.end method

.method public abstract onReturnDebugLog(Ljava/util/Map;)V
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
.end method

.method public abstract onReturnDeviceInfo(Lcom/stripe/bbpos/sdk/DeviceInfo;Ljava/util/Map;)V
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
.end method

.method public abstract onReturnDisableInputAmountResult(Z)V
.end method

.method public abstract onReturnEncryptDataResult(ZLjava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnPinEntryResult(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;)V
.end method

.method public abstract onReturnReadAidResult(Ljava/util/Map;)V
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
.end method

.method public abstract onReturnReadTerminalSettingResult(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;)V
.end method

.method public abstract onReturnReversalData(Ljava/lang/String;)V
.end method

.method public abstract onReturnSetPinPadButtonsResult(Z)V
.end method

.method public abstract onReturnTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)V
.end method

.method public abstract onReturnUpdateAidResult(Ljava/util/Map;)V
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
.end method

.method public abstract onReturnUpdateDisplaySettingsResult(ZLjava/lang/String;)V
.end method

.method public abstract onReturnUpdateTerminalSettingResult(Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;)V
.end method

.method public abstract onReturnUpdateTerminalSettingsResult(Ljava/util/Map;)V
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
.end method

.method public abstract onSerialConnected()V
.end method

.method public abstract onSerialDisconnected()V
.end method

.method public abstract onSessionError(Lcom/stripe/core/bbpos/hardware/api/SessionError;Ljava/lang/String;)V
.end method

.method public abstract onSessionInitialized()V
.end method

.method public abstract onUsbConnected()V
.end method

.method public abstract onUsbDisconnected()V
.end method

.method public abstract onWaitingForCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V
.end method
