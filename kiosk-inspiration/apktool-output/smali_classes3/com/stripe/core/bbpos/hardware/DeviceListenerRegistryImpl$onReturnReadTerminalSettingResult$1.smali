.class final Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DeviceListenerRegistryImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl;->onReturnReadTerminalSettingResult(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $acquirerIdentifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $additionalTerminalCapabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $bluetoothDiscoveryTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $buzzerSoundEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $configHash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $customBluetoothNamePrefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $customBluetoothSerialSuffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $domesticDebitAidList:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $firmwareFallbackEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $firmwareForceChipEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $iccTransactionBeepEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $keypadEventBeepEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $merchantIdentifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $merchantNameAndLocation:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $msrPinEntryTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $normalModeTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $spocModeEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $standbyModeTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $terminalCapabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $terminalCountryCode:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $terminalIdentification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $terminalType:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $transactionCurrencyCode:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $transactionCurrencyExponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

.field final synthetic $visaDynamicReaderLimit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;


# direct methods
.method constructor <init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;)V
    .locals 0

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$acquirerIdentifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p2, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$terminalCountryCode:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p3, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$transactionCurrencyCode:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p4, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$transactionCurrencyExponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p5, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$merchantNameAndLocation:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p6, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$merchantIdentifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p7, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$terminalIdentification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p8, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$terminalCapabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p9, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$terminalType:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p10, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$additionalTerminalCapabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p11, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$normalModeTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p12, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$standbyModeTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p13, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$bluetoothDiscoveryTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p14, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$msrPinEntryTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object p15, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$firmwareFallbackEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$customBluetoothNamePrefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$customBluetoothSerialSuffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$firmwareForceChipEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$iccTransactionBeepEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$keypadEventBeepEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$spocModeEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p22

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$domesticDebitAidList:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p23

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$visaDynamicReaderLimit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p24

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$buzzerSoundEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$configHash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 169
    check-cast p1, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-virtual {p0, p1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->invoke(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;)V
    .locals 28

    move-object/from16 v0, p0

    const-string v1, "it"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v3, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$acquirerIdentifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 172
    iget-object v4, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$terminalCountryCode:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 173
    iget-object v5, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$transactionCurrencyCode:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 174
    iget-object v6, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$transactionCurrencyExponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 175
    iget-object v7, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$merchantNameAndLocation:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 176
    iget-object v8, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$merchantIdentifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 177
    iget-object v9, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$terminalIdentification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 178
    iget-object v10, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$terminalCapabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 179
    iget-object v11, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$terminalType:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 180
    iget-object v12, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$additionalTerminalCapabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 181
    iget-object v13, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$normalModeTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 182
    iget-object v14, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$standbyModeTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 183
    iget-object v15, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$bluetoothDiscoveryTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 184
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$msrPinEntryTimeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v16, v1

    .line 185
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$firmwareFallbackEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v17, v1

    .line 186
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$customBluetoothNamePrefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v18, v1

    .line 187
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$customBluetoothSerialSuffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v19, v1

    .line 188
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$firmwareForceChipEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v20, v1

    .line 189
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$iccTransactionBeepEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v21, v1

    .line 190
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$keypadEventBeepEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v22, v1

    .line 191
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$spocModeEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v23, v1

    .line 192
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$domesticDebitAidList:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v24, v1

    .line 193
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$visaDynamicReaderLimit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v25, v1

    .line 194
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$buzzerSoundEnabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v26, v1

    .line 195
    iget-object v1, v0, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistryImpl$onReturnReadTerminalSettingResult$1;->$configHash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 v27, v1

    .line 170
    invoke-interface/range {v2 .. v27}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnReadTerminalSettingResult(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;)V

    return-void
.end method
