.class public interface abstract Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/bbpos/bbdevice/BBDeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BBDeviceControllerListener"
.end annotation


# virtual methods
.method public abstract onBTConnected(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onBTDisconnected()V
.end method

.method public abstract onBTRequestPairing()V
.end method

.method public abstract onBTReturnScanResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBTScanStopped()V
.end method

.method public abstract onBTScanTimeout()V
.end method

.method public abstract onBarcodeReaderConnected()V
.end method

.method public abstract onBarcodeReaderDisconnected()V
.end method

.method public abstract onBatteryLow(Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V
.end method

.method public abstract onDeviceDisplayingPrompt()V
.end method

.method public abstract onDeviceHere(Z)V
.end method

.method public abstract onDeviceReset(ZLcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;)V
.end method

.method public abstract onDeviceResetAlert(I)V
.end method

.method public abstract onEnterStandbyMode()V
.end method

.method public abstract onError(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V
.end method

.method public abstract onHardwareFunctionalTestResult(IILjava/lang/String;)V
.end method

.method public abstract onPowerButtonPressed()V
.end method

.method public abstract onPowerConnected(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V
.end method

.method public abstract onPowerDisconnected(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;)V
.end method

.method public abstract onPowerDown()V
.end method

.method public abstract onPrintDataCancelled()V
.end method

.method public abstract onPrintDataEnd()V
.end method

.method public abstract onRequestAmountConfirm(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestClearDisplay()V
.end method

.method public abstract onRequestDisplayAsterisk(Ljava/lang/String;I)V
.end method

.method public abstract onRequestDisplayLEDIndicator(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;)V
.end method

.method public abstract onRequestDisplayText(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V
.end method

.method public abstract onRequestFinalConfirm()V
.end method

.method public abstract onRequestKeypadResponse()V
.end method

.method public abstract onRequestManualPanEntry(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;)V
.end method

.method public abstract onRequestOnlineProcess(Ljava/lang/String;)V
.end method

.method public abstract onRequestOtherAmount(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;)V
.end method

.method public abstract onRequestPinEntry(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;)V
.end method

.method public abstract onRequestPrintData(IZ)V
.end method

.method public abstract onRequestProduceAudioTone(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;)V
.end method

.method public abstract onRequestSelectAccountType()V
.end method

.method public abstract onRequestSelectApplication(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestSetAmount()V
.end method

.method public abstract onRequestStartEmv()V
.end method

.method public abstract onRequestTerminalTime()V
.end method

.method public abstract onRequestVirtuCryptPEDIResponse(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestVirtuCryptPEDKResponse(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnAccessiblePINPadTouchEvent(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V
.end method

.method public abstract onReturnAccountSelectionResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;I)V
.end method

.method public abstract onReturnAmount(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnAmountConfirmResult(Z)V
.end method

.method public abstract onReturnApduResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnBarcode(Ljava/lang/String;)V
.end method

.method public abstract onReturnBatchData(Ljava/lang/String;)V
.end method

.method public abstract onReturnCAPKDetail(Lcom/stripe/bbpos/bbdevice/CAPK;)V
.end method

.method public abstract onReturnCAPKList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/CAPK;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnCAPKLocation(Ljava/lang/String;)V
.end method

.method public abstract onReturnCancelCheckCardResult(Z)V
.end method

.method public abstract onReturnCheckCardResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnControlLEDResult(ZLjava/lang/String;)V
.end method

.method public abstract onReturnDebugLog(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnDeviceInfo(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnDisableAccountSelectionResult(Z)V
.end method

.method public abstract onReturnDisableBluetoothResult(Z)V
.end method

.method public abstract onReturnDisableFactoryModeResult(ZLjava/lang/String;)V
.end method

.method public abstract onReturnDisableInputAmountResult(Z)V
.end method

.method public abstract onReturnDisplayPromptResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;)V
.end method

.method public abstract onReturnEmvCardDataResult(ZLjava/lang/String;)V
.end method

.method public abstract onReturnEmvCardNumber(ZLjava/lang/String;)V
.end method

.method public abstract onReturnEmvReport(Ljava/lang/String;)V
.end method

.method public abstract onReturnEmvReportList(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnEnableAccountSelectionResult(Z)V
.end method

.method public abstract onReturnEnableBluetoothResult(Z)V
.end method

.method public abstract onReturnEnableInputAmountResult(Z)V
.end method

.method public abstract onReturnEncryptDataResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnFunctionKey(Lcom/stripe/bbpos/bbdevice/BBDeviceController$FunctionKey;)V
.end method

.method public abstract onReturnNfcDataExchangeResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnNfcDetectCardResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnPinEntryResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnPowerOffIccResult(Z)V
.end method

.method public abstract onReturnPowerOnIccResult(ZLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onReturnPrintResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;)V
.end method

.method public abstract onReturnReadAIDResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnReadDisplaySettingsResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnReadDisplayStringResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnReadTerminalSettingResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnRemoveCAPKResult(Z)V
.end method

.method public abstract onReturnReversalData(Ljava/lang/String;)V
.end method

.method public abstract onReturnSetPinPadButtonsResult(Z)V
.end method

.method public abstract onReturnSetPinPadOrientationResult(Z)V
.end method

.method public abstract onReturnTransactionResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)V
.end method

.method public abstract onReturnUpdateAIDResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnUpdateCAPKResult(Z)V
.end method

.method public abstract onReturnUpdateDisplaySettingsProgress(D)V
.end method

.method public abstract onReturnUpdateDisplaySettingsResult(ZLjava/lang/String;)V
.end method

.method public abstract onReturnUpdateDisplayStringResult(ZLjava/lang/String;)V
.end method

.method public abstract onReturnUpdateTerminalSettingResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V
.end method

.method public abstract onReturnUpdateTerminalSettingsResult(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnVasResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnVirtuCryptPEDICommandResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnVirtuCryptPEDKCommandResult(ZLjava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onReturnWatchdogTimerReset()V
.end method

.method public abstract onSerialConnected()V
.end method

.method public abstract onSerialDisconnected()V
.end method

.method public abstract onSessionError(Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;Ljava/lang/String;)V
.end method

.method public abstract onSessionInitialized()V
.end method

.method public abstract onTestChannelConnected()V
.end method

.method public abstract onTestChannelDisconnected()V
.end method

.method public abstract onUsbConnected()V
.end method

.method public abstract onUsbDisconnected()V
.end method

.method public abstract onWaitingForCard(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;)V
.end method

.method public abstract onWaitingReprintOrPrintNext()V
.end method
