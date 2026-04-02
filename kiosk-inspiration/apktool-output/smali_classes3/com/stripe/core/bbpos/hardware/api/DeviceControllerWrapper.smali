.class public interface abstract Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;
.super Ljava/lang/Object;
.source "DeviceControllerWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008%\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010$\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&J\u0008\u0010\u0005\u001a\u00020\u0003H&J\u0008\u0010\u0006\u001a\u00020\u0003H&J\u0018\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH&J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\u000eH&J\u0008\u0010\u000f\u001a\u00020\u0003H\'J\u0008\u0010\u0010\u001a\u00020\u0003H&J\u0008\u0010\u0011\u001a\u00020\u0003H&J(\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\'J\u0018\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH&J\u0008\u0010\u001f\u001a\u00020\u0003H&J\u0016\u0010 \u001a\u00020\u00032\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u001c0\"H&J\u0010\u0010#\u001a\u00020\u00032\u0006\u0010$\u001a\u00020\u001cH&J\u0010\u0010%\u001a\u00020\u00032\u0006\u0010&\u001a\u00020\u001cH&J\u0082\u0002\u0010\'\u001a\u00020\u00032\u0008\u0008\u0002\u0010(\u001a\u00020)2\u0008\u0008\u0002\u0010*\u001a\u00020)2\u0008\u0008\u0002\u0010+\u001a\u00020)2\u0008\u0008\u0002\u0010,\u001a\u00020)2\u0008\u0008\u0002\u0010-\u001a\u00020)2\u0008\u0008\u0002\u0010.\u001a\u00020)2\u0008\u0008\u0002\u0010/\u001a\u00020)2\u0008\u0008\u0002\u00100\u001a\u00020)2\u0008\u0008\u0002\u00101\u001a\u00020)2\u0008\u0008\u0002\u00102\u001a\u00020)2\u0008\u0008\u0002\u00103\u001a\u00020)2\u0008\u0008\u0002\u00104\u001a\u00020)2\u0008\u0008\u0002\u00105\u001a\u00020)2\u0008\u0008\u0002\u00106\u001a\u00020)2\u0008\u0008\u0002\u00107\u001a\u00020)2\u0008\u0008\u0002\u00108\u001a\u00020)2\u0008\u0008\u0002\u00109\u001a\u00020)2\u0008\u0008\u0002\u0010:\u001a\u00020)2\u0008\u0008\u0002\u0010;\u001a\u00020)2\u0008\u0008\u0002\u0010<\u001a\u00020)2\u0008\u0008\u0002\u0010=\u001a\u00020)2\u0008\u0008\u0002\u0010>\u001a\u00020)2\u0008\u0008\u0002\u0010?\u001a\u00020)2\u0008\u0008\u0002\u0010@\u001a\u00020)2\u0008\u0008\u0002\u0010A\u001a\u00020)H&J\u0008\u0010B\u001a\u00020\u0003H&J\u0010\u0010C\u001a\u00020\u00032\u0006\u0010D\u001a\u00020\u000bH&J\u0010\u0010E\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u000bH&J\u0010\u0010G\u001a\u00020\u00032\u0006\u0010H\u001a\u00020)H&J\u0012\u0010I\u001a\u00020\u00032\u0008\u0010J\u001a\u0004\u0018\u00010\u001cH&J\u0010\u0010K\u001a\u00020\u00032\u0006\u0010L\u001a\u00020)H&Jp\u0010M\u001a\u00020\u00032\u0006\u0010N\u001a\u00020O2\u0006\u0010P\u001a\u00020O2\u0006\u0010Q\u001a\u00020O2\u0006\u0010R\u001a\u00020O2\u0006\u0010S\u001a\u00020O2\u0006\u0010T\u001a\u00020O2\u0006\u0010U\u001a\u00020O2\u0006\u0010V\u001a\u00020O2\u0006\u0010W\u001a\u00020O2\u0006\u0010X\u001a\u00020O2\u0006\u0010Y\u001a\u00020O2\u0006\u0010Z\u001a\u00020O2\u0006\u0010[\u001a\u00020OH&J \u0010\\\u001a\u00020\u00032\u000e\u0010]\u001a\n\u0012\u0004\u0012\u00020\u001c\u0018\u00010\"2\u0006\u0010^\u001a\u00020\u000bH&J\u00a5\u0001\u0010_\u001a\u00020\u00032\u0006\u0010`\u001a\u00020a2\u0006\u0010b\u001a\u00020\t2\u0006\u0010c\u001a\u00020d2\u0006\u0010e\u001a\u00020)2\u0006\u0010f\u001a\u00020\u000b2\u0006\u0010g\u001a\u00020\u000b2\u0006\u0010h\u001a\u00020\u001c2\u0006\u0010i\u001a\u00020\u001c2\u0006\u0010j\u001a\u00020\u000b2\u0006\u0010k\u001a\u00020\u000b2\u0006\u0010l\u001a\u00020\u000b2\u0006\u0010m\u001a\u00020\u000b2\u0008\u0010n\u001a\u0004\u0018\u00010\u001c2\u0008\u0010o\u001a\u0004\u0018\u00010p2\u0008\u0010q\u001a\u0004\u0018\u00010r2\u0006\u0010s\u001a\u00020)2\u0006\u0010t\u001a\u00020)2\u0008\u0010u\u001a\u0004\u0018\u00010\u000bH&\u00a2\u0006\u0002\u0010vJ\u001f\u0010w\u001a\u00020\u00032\u0006\u0010t\u001a\u00020)2\u0008\u0010u\u001a\u0004\u0018\u00010\u000bH&\u00a2\u0006\u0002\u0010xJ\u0008\u0010y\u001a\u00020\u0003H&J\u0008\u0010z\u001a\u00020\u0003H&J\u0010\u0010{\u001a\u00020\u00032\u0006\u0010]\u001a\u00020\u001cH&J\u0008\u0010|\u001a\u00020\u0003H&J\u0008\u0010}\u001a\u00020\u0003H&J\u001c\u0010~\u001a\u00020\u00032\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c0\u007fH&J\u001d\u0010\u0080\u0001\u001a\u00020\u00032\u0012\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00010\u007fH&J\u0011\u0010\u0081\u0001\u001a\u00020\u00032\u0006\u0010J\u001a\u00020\u001cH&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0082\u0001\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;",
        "",
        "cancelCheckCard",
        "",
        "cancelPinEntry",
        "cancelSelectAccountType",
        "cancelSelectApplication",
        "checkCard",
        "mode",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
        "timeout",
        "",
        "connectBt",
        "bluetoothDevice",
        "Landroid/bluetooth/BluetoothDevice;",
        "disableInputAmount",
        "disconnectBt",
        "disconnectSerial",
        "enableInputAmount",
        "setAmountTimeout",
        "amountInputType",
        "Lcom/stripe/bbpos/sdk/AmountInputType;",
        "otherAmountOption",
        "Lcom/stripe/bbpos/sdk/OtherAmountOption;",
        "tippingOption",
        "Lcom/stripe/core/bbpos/hardware/api/TippingOption;",
        "encryptDataWithSettings",
        "data",
        "",
        "encryptionMethod",
        "Lcom/stripe/bbpos/sdk/EncryptionMethod;",
        "getDeviceInfo",
        "getDeviceInfoByKeys",
        "keys",
        "",
        "initSession",
        "vendorToken",
        "readAid",
        "appIndex",
        "readTerminalSetting",
        "acquirerIdentifier",
        "",
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
        "resetDevice",
        "selectAccountType",
        "type",
        "selectApplication",
        "index",
        "sendFinalConfirmResult",
        "confirm",
        "sendOnlineProcessResult",
        "tlv",
        "setDebugLogEnabled",
        "enabled",
        "setPinPadButtons",
        "zero",
        "Landroid/graphics/Rect;",
        "one",
        "two",
        "three",
        "four",
        "five",
        "six",
        "seven",
        "eight",
        "nine",
        "backspace",
        "cancel",
        "enter",
        "startBtScan",
        "deviceName",
        "scanTimeout",
        "startEmv",
        "transactionType",
        "Lcom/stripe/bbpos/sdk/TransactionType;",
        "checkCardMode",
        "quickChipOption",
        "Lcom/stripe/bbpos/sdk/QuickChipOption;",
        "disableQuickChip",
        "currencyCode",
        "currencyExponent",
        "amount",
        "terminalTime",
        "checkCardTimeout",
        "selectApplicationTimeout",
        "selectAccountTypeTimeout",
        "onlineProcessTimeout",
        "terminalCapabilitiesOverride",
        "domesticDebitPriority",
        "Lcom/stripe/bbpos/sdk/DomesticDebitPriority;",
        "contactlessOnlinePinOption",
        "Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;",
        "forcePinEntry",
        "isAccessiblePinPad",
        "pinEntryTimeoutInSeconds",
        "(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;Lcom/stripe/bbpos/sdk/QuickChipOption;ZIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;)V",
        "startPinEntry",
        "(ZLjava/lang/Integer;)V",
        "startSerial",
        "startUsb",
        "startUsbWithDeviceName",
        "stopBtScan",
        "stopUsb",
        "updateAid",
        "",
        "updateDisplaySettings",
        "updateTerminalSettings",
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


# direct methods
.method public static synthetic readTerminalSetting$default(Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;ZZZZZZZZZZZZZZZZZZZZZZZZZILjava/lang/Object;)V
    .locals 26

    move/from16 v0, p26

    if-nez p27, :cond_19

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v0, v0, v25

    if-eqz v0, :cond_18

    const/16 p26, 0x0

    goto :goto_18

    :cond_18
    move/from16 p26, p25

    :goto_18
    move-object/from16 p1, p0

    move/from16 p2, v1

    move/from16 p16, v2

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p13, v13

    move/from16 p14, v14

    move/from16 p15, v15

    move/from16 p17, v16

    move/from16 p18, v17

    move/from16 p19, v18

    move/from16 p20, v19

    move/from16 p21, v20

    move/from16 p22, v21

    move/from16 p23, v22

    move/from16 p24, v23

    move/from16 p25, v24

    .line 80
    invoke-interface/range {p1 .. p26}, Lcom/stripe/core/bbpos/hardware/api/DeviceControllerWrapper;->readTerminalSetting(ZZZZZZZZZZZZZZZZZZZZZZZZZ)V

    return-void

    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: readTerminalSetting"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract cancelCheckCard()V
.end method

.method public abstract cancelPinEntry()V
.end method

.method public abstract cancelSelectAccountType()V
.end method

.method public abstract cancelSelectApplication()V
.end method

.method public abstract checkCard(Lcom/stripe/bbpos/sdk/CheckCardMode;I)V
.end method

.method public abstract connectBt(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract disableInputAmount()V
    .annotation runtime Lcom/stripe/jvmcore/dagger/BluetoothUsbPinPadReaders;
    .end annotation
.end method

.method public abstract disconnectBt()V
.end method

.method public abstract disconnectSerial()V
.end method

.method public abstract enableInputAmount(ILcom/stripe/bbpos/sdk/AmountInputType;Lcom/stripe/bbpos/sdk/OtherAmountOption;Lcom/stripe/core/bbpos/hardware/api/TippingOption;)V
    .annotation runtime Lcom/stripe/jvmcore/dagger/BluetoothUsbPinPadReaders;
    .end annotation
.end method

.method public abstract encryptDataWithSettings(Ljava/lang/String;Lcom/stripe/bbpos/sdk/EncryptionMethod;)V
.end method

.method public abstract getDeviceInfo()V
.end method

.method public abstract getDeviceInfoByKeys(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract initSession(Ljava/lang/String;)V
.end method

.method public abstract readAid(Ljava/lang/String;)V
.end method

.method public abstract readTerminalSetting(ZZZZZZZZZZZZZZZZZZZZZZZZZ)V
.end method

.method public abstract resetDevice()V
.end method

.method public abstract selectAccountType(I)V
.end method

.method public abstract selectApplication(I)V
.end method

.method public abstract sendFinalConfirmResult(Z)V
.end method

.method public abstract sendOnlineProcessResult(Ljava/lang/String;)V
.end method

.method public abstract setDebugLogEnabled(Z)V
.end method

.method public abstract setPinPadButtons(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract startBtScan(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract startEmv(Lcom/stripe/bbpos/sdk/TransactionType;Lcom/stripe/bbpos/sdk/CheckCardMode;Lcom/stripe/bbpos/sdk/QuickChipOption;ZIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Lcom/stripe/bbpos/sdk/DomesticDebitPriority;Lcom/stripe/bbpos/sdk/ContactlessOnlinePinOption;ZZLjava/lang/Integer;)V
.end method

.method public abstract startPinEntry(ZLjava/lang/Integer;)V
.end method

.method public abstract startSerial()V
.end method

.method public abstract startUsb()V
.end method

.method public abstract startUsbWithDeviceName(Ljava/lang/String;)V
.end method

.method public abstract stopBtScan()V
.end method

.method public abstract stopUsb()V
.end method

.method public abstract updateAid(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateDisplaySettings(Ljava/util/Map;)V
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

.method public abstract updateTerminalSettings(Ljava/lang/String;)V
.end method
