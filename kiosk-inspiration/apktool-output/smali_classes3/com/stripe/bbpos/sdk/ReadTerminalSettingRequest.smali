.class public final Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;
.super Lcom/squareup/wire/Message;
.source "ReadTerminalSettingRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;,
        Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 *2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002)*B\u0089\u0002\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0002\u0010\u001fJ\u008a\u0002\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00042\u0008\u0008\u0002\u0010\t\u001a\u00020\u00042\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001eJ\u0013\u0010!\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0096\u0002J\u0008\u0010$\u001a\u00020%H\u0016J\u0008\u0010&\u001a\u00020\u0002H\u0016J\u0008\u0010\'\u001a\u00020(H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006+"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;",
        "acquirer_identifier",
        "",
        "terminal_country_code",
        "transaction_currency_code",
        "transaction_currency_exponent",
        "merchant_name_and_location",
        "merchant_identifier",
        "terminal_identification",
        "terminal_capabilities",
        "terminal_type",
        "additional_terminal_capabilities",
        "normal_mode_timeout",
        "standby_mode_timeout",
        "bluetooth_discovery_timeout",
        "msr_pin_entry_timeout",
        "firmware_fallback_enabled",
        "custom_bluetooth_name_prefix",
        "custom_bluetooth_serial_suffix",
        "firmware_force_chip_enabled",
        "icc_transaction_beep_enabled",
        "keypad_event_beep_enabled",
        "spoc_mode_enabled",
        "domestic_debit_aid_list",
        "visa_dynamic_reader_limit",
        "buzzer_sound_enabled",
        "config_hash",
        "unknownFields",
        "Lokio/ByteString;",
        "(ZZZZZZZZZZZZZZZZZZZZZZZZZLokio/ByteString;)V",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "Builder",
        "Companion",
        "sdk-protos_release"
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
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final acquirer_identifier:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "acquirerIdentifier"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final additional_terminal_capabilities:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "additionalTerminalCapabilities"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final bluetooth_discovery_timeout:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "bluetoothDiscoveryTimeout"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final buzzer_sound_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "buzzerSoundEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x17
        tag = 0x18
    .end annotation
.end field

.field public final config_hash:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "configHash"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x18
        tag = 0x19
    .end annotation
.end field

.field public final custom_bluetooth_name_prefix:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "customBluetoothNamePrefix"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final custom_bluetooth_serial_suffix:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "customBluetoothSerialSuffix"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x10
        tag = 0x11
    .end annotation
.end field

.field public final domestic_debit_aid_list:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "domesticDebitAidList"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x15
        tag = 0x16
    .end annotation
.end field

.field public final firmware_fallback_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "firmwareFallbackEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final firmware_force_chip_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "firmwareForceChipEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x11
        tag = 0x12
    .end annotation
.end field

.field public final icc_transaction_beep_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "iccTransactionBeepEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x12
        tag = 0x13
    .end annotation
.end field

.field public final keypad_event_beep_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "keypadEventBeepEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x13
        tag = 0x14
    .end annotation
.end field

.field public final merchant_identifier:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "merchantIdentifier"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final merchant_name_and_location:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "merchantNameAndLocation"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final msr_pin_entry_timeout:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "msrPinEntryTimeout"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final normal_mode_timeout:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "normalModeTimeout"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final spoc_mode_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "spocModeEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x14
        tag = 0x15
    .end annotation
.end field

.field public final standby_mode_timeout:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "standbyModeTimeout"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final terminal_capabilities:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "terminalCapabilities"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final terminal_country_code:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "terminalCountryCode"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final terminal_identification:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "terminalIdentification"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final terminal_type:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "terminalType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final transaction_currency_code:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "transactionCurrencyCode"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final transaction_currency_exponent:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "transactionCurrencyExponent"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final visa_dynamic_reader_limit:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "visaDynamicReaderLimit"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x16
        tag = 0x17
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->Companion:Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Companion;

    .line 648
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 647
    const-class v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 651
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 647
    new-instance v3, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 29

    const v27, 0x3ffffff

    const/16 v28, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v28}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;-><init>(ZZZZZZZZZZZZZZZZZZZZZZZZZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZZZZZZZZZZZZZZZZZZZZZLokio/ByteString;)V
    .locals 2

    move-object/from16 v0, p26

    const-string v1, "unknownFields"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    sget-object v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, v0}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 30
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->acquirer_identifier:Z

    .line 39
    iput-boolean p2, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_country_code:Z

    .line 48
    iput-boolean p3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_code:Z

    .line 57
    iput-boolean p4, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_exponent:Z

    .line 66
    iput-boolean p5, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_name_and_location:Z

    .line 75
    iput-boolean p6, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_identifier:Z

    .line 84
    iput-boolean p7, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_identification:Z

    .line 93
    iput-boolean p8, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_capabilities:Z

    .line 102
    iput-boolean p9, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_type:Z

    .line 111
    iput-boolean p10, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->additional_terminal_capabilities:Z

    .line 120
    iput-boolean p11, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->normal_mode_timeout:Z

    .line 129
    iput-boolean p12, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->standby_mode_timeout:Z

    .line 138
    iput-boolean p13, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->bluetooth_discovery_timeout:Z

    move/from16 p1, p14

    .line 147
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->msr_pin_entry_timeout:Z

    move/from16 p1, p15

    .line 156
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_fallback_enabled:Z

    move/from16 p1, p16

    .line 165
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_name_prefix:Z

    move/from16 p1, p17

    .line 174
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_serial_suffix:Z

    move/from16 p1, p18

    .line 183
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_force_chip_enabled:Z

    move/from16 p1, p19

    .line 192
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->icc_transaction_beep_enabled:Z

    move/from16 p1, p20

    .line 201
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->keypad_event_beep_enabled:Z

    move/from16 p1, p21

    .line 210
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->spoc_mode_enabled:Z

    move/from16 p1, p22

    .line 219
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->domestic_debit_aid_list:Z

    move/from16 p1, p23

    .line 228
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->visa_dynamic_reader_limit:Z

    move/from16 p1, p24

    .line 237
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->buzzer_sound_enabled:Z

    move/from16 p1, p25

    .line 246
    iput-boolean p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->config_hash:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZZZZZZZZZZZZZZZZZZZZZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p27

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

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    goto :goto_18

    :cond_18
    move/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v0, v0, v26

    if-eqz v0, :cond_19

    .line 255
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p27, v0

    goto :goto_19

    :cond_19
    move-object/from16 p27, p26

    :goto_19
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

    move/from16 p26, v25

    .line 29
    invoke-direct/range {p1 .. p27}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;-><init>(ZZZZZZZZZZZZZZZZZZZZZZZZZLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;ZZZZZZZZZZZZZZZZZZZZZZZZZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p27

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 385
    iget-boolean v2, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->acquirer_identifier:Z

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 386
    iget-boolean v3, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_country_code:Z

    goto :goto_1

    :cond_1
    move/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 387
    iget-boolean v4, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_code:Z

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 388
    iget-boolean v5, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_exponent:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 389
    iget-boolean v6, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_name_and_location:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 390
    iget-boolean v7, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_identifier:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 391
    iget-boolean v8, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_identification:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 392
    iget-boolean v9, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_capabilities:Z

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 393
    iget-boolean v10, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_type:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 394
    iget-boolean v11, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->additional_terminal_capabilities:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 395
    iget-boolean v12, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->normal_mode_timeout:Z

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 396
    iget-boolean v13, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->standby_mode_timeout:Z

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 397
    iget-boolean v14, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->bluetooth_discovery_timeout:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 398
    iget-boolean v15, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->msr_pin_entry_timeout:Z

    goto :goto_d

    :cond_d
    move/from16 v15, p14

    :goto_d
    move/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 399
    iget-boolean v2, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_fallback_enabled:Z

    goto :goto_e

    :cond_e
    move/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 400
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_name_prefix:Z

    goto :goto_f

    :cond_f
    move/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p27, v16

    move/from16 p2, v1

    if-eqz v16, :cond_10

    .line 401
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_serial_suffix:Z

    goto :goto_10

    :cond_10
    move/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p27, v16

    move/from16 p3, v1

    if-eqz v16, :cond_11

    .line 402
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_force_chip_enabled:Z

    goto :goto_11

    :cond_11
    move/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p27, v16

    move/from16 p4, v1

    if-eqz v16, :cond_12

    .line 403
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->icc_transaction_beep_enabled:Z

    goto :goto_12

    :cond_12
    move/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p27, v16

    move/from16 p5, v1

    if-eqz v16, :cond_13

    .line 404
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->keypad_event_beep_enabled:Z

    goto :goto_13

    :cond_13
    move/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p27, v16

    move/from16 p6, v1

    if-eqz v16, :cond_14

    .line 405
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->spoc_mode_enabled:Z

    goto :goto_14

    :cond_14
    move/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p27, v16

    move/from16 p7, v1

    if-eqz v16, :cond_15

    .line 406
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->domestic_debit_aid_list:Z

    goto :goto_15

    :cond_15
    move/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p27, v16

    move/from16 p8, v1

    if-eqz v16, :cond_16

    .line 407
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->visa_dynamic_reader_limit:Z

    goto :goto_16

    :cond_16
    move/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p27, v16

    move/from16 p9, v1

    if-eqz v16, :cond_17

    .line 408
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->buzzer_sound_enabled:Z

    goto :goto_17

    :cond_17
    move/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p27, v16

    move/from16 p10, v1

    if-eqz v16, :cond_18

    .line 409
    iget-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->config_hash:Z

    goto :goto_18

    :cond_18
    move/from16 v1, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p27, v16

    if-eqz v16, :cond_19

    .line 410
    invoke-virtual {v0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p27, v16

    goto :goto_19

    :cond_19
    move-object/from16 p27, p26

    :goto_19
    move/from16 p17, p2

    move/from16 p18, p3

    move/from16 p19, p4

    move/from16 p20, p5

    move/from16 p21, p6

    move/from16 p22, p7

    move/from16 p23, p8

    move/from16 p24, p9

    move/from16 p25, p10

    move/from16 p26, v1

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

    move/from16 p2, p1

    move-object/from16 p1, v0

    .line 384
    invoke-virtual/range {p1 .. p27}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->copy(ZZZZZZZZZZZZZZZZZZZZZZZZZLokio/ByteString;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(ZZZZZZZZZZZZZZZZZZZZZZZZZLokio/ByteString;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;
    .locals 28

    const-string v0, "unknownFields"

    move-object/from16 v1, p26

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    new-instance v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move/from16 v26, p25

    move-object/from16 v27, p26

    invoke-direct/range {v1 .. v27}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;-><init>(ZZZZZZZZZZZZZZZZZZZZZZZZZLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 290
    :cond_0
    instance-of v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 292
    :cond_2
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->acquirer_identifier:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->acquirer_identifier:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 293
    :cond_3
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_country_code:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_country_code:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 294
    :cond_4
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_code:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_code:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 295
    :cond_5
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_exponent:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_exponent:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 296
    :cond_6
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_name_and_location:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_name_and_location:Z

    if-eq v1, v3, :cond_7

    return v2

    .line 297
    :cond_7
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_identifier:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_identifier:Z

    if-eq v1, v3, :cond_8

    return v2

    .line 298
    :cond_8
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_identification:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_identification:Z

    if-eq v1, v3, :cond_9

    return v2

    .line 299
    :cond_9
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_capabilities:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_capabilities:Z

    if-eq v1, v3, :cond_a

    return v2

    .line 300
    :cond_a
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_type:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_type:Z

    if-eq v1, v3, :cond_b

    return v2

    .line 301
    :cond_b
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->additional_terminal_capabilities:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->additional_terminal_capabilities:Z

    if-eq v1, v3, :cond_c

    return v2

    .line 302
    :cond_c
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->normal_mode_timeout:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->normal_mode_timeout:Z

    if-eq v1, v3, :cond_d

    return v2

    .line 303
    :cond_d
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->standby_mode_timeout:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->standby_mode_timeout:Z

    if-eq v1, v3, :cond_e

    return v2

    .line 304
    :cond_e
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->bluetooth_discovery_timeout:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->bluetooth_discovery_timeout:Z

    if-eq v1, v3, :cond_f

    return v2

    .line 305
    :cond_f
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->msr_pin_entry_timeout:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->msr_pin_entry_timeout:Z

    if-eq v1, v3, :cond_10

    return v2

    .line 306
    :cond_10
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_fallback_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_fallback_enabled:Z

    if-eq v1, v3, :cond_11

    return v2

    .line 307
    :cond_11
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_name_prefix:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_name_prefix:Z

    if-eq v1, v3, :cond_12

    return v2

    .line 308
    :cond_12
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_serial_suffix:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_serial_suffix:Z

    if-eq v1, v3, :cond_13

    return v2

    .line 309
    :cond_13
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_force_chip_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_force_chip_enabled:Z

    if-eq v1, v3, :cond_14

    return v2

    .line 310
    :cond_14
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->icc_transaction_beep_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->icc_transaction_beep_enabled:Z

    if-eq v1, v3, :cond_15

    return v2

    .line 311
    :cond_15
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->keypad_event_beep_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->keypad_event_beep_enabled:Z

    if-eq v1, v3, :cond_16

    return v2

    .line 312
    :cond_16
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->spoc_mode_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->spoc_mode_enabled:Z

    if-eq v1, v3, :cond_17

    return v2

    .line 313
    :cond_17
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->domestic_debit_aid_list:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->domestic_debit_aid_list:Z

    if-eq v1, v3, :cond_18

    return v2

    .line 314
    :cond_18
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->visa_dynamic_reader_limit:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->visa_dynamic_reader_limit:Z

    if-eq v1, v3, :cond_19

    return v2

    .line 315
    :cond_19
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->buzzer_sound_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->buzzer_sound_enabled:Z

    if-eq v1, v3, :cond_1a

    return v2

    .line 316
    :cond_1a
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->config_hash:Z

    iget-boolean p1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->config_hash:Z

    if-eq v1, p1, :cond_1b

    return v2

    :cond_1b
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 321
    iget v0, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->hashCode:I

    if-nez v0, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 324
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->acquirer_identifier:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 325
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_country_code:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 326
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_code:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 327
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_exponent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 328
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_name_and_location:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 329
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_identifier:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 330
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_identification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 331
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_capabilities:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 332
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_type:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 333
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->additional_terminal_capabilities:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 334
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->normal_mode_timeout:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 335
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->standby_mode_timeout:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 336
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->bluetooth_discovery_timeout:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 337
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->msr_pin_entry_timeout:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 338
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_fallback_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 339
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_name_prefix:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 340
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_serial_suffix:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 341
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_force_chip_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 342
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->icc_transaction_beep_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 343
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->keypad_event_beep_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 344
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->spoc_mode_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 345
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->domestic_debit_aid_list:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 346
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->visa_dynamic_reader_limit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 347
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->buzzer_sound_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 348
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->config_hash:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 349
    iput v0, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->hashCode:I

    :cond_0
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->newBuilder()Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;
    .locals 2

    .line 258
    new-instance v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;

    invoke-direct {v0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;-><init>()V

    .line 259
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->acquirer_identifier:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->acquirer_identifier:Z

    .line 260
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_country_code:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_country_code:Z

    .line 261
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_code:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->transaction_currency_code:Z

    .line 262
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_exponent:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->transaction_currency_exponent:Z

    .line 263
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_name_and_location:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->merchant_name_and_location:Z

    .line 264
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_identifier:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->merchant_identifier:Z

    .line 265
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_identification:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_identification:Z

    .line 266
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_capabilities:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_capabilities:Z

    .line 267
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_type:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->terminal_type:Z

    .line 268
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->additional_terminal_capabilities:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->additional_terminal_capabilities:Z

    .line 269
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->normal_mode_timeout:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->normal_mode_timeout:Z

    .line 270
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->standby_mode_timeout:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->standby_mode_timeout:Z

    .line 271
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->bluetooth_discovery_timeout:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->bluetooth_discovery_timeout:Z

    .line 272
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->msr_pin_entry_timeout:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->msr_pin_entry_timeout:Z

    .line 273
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_fallback_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->firmware_fallback_enabled:Z

    .line 274
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_name_prefix:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->custom_bluetooth_name_prefix:Z

    .line 275
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_serial_suffix:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->custom_bluetooth_serial_suffix:Z

    .line 276
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_force_chip_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->firmware_force_chip_enabled:Z

    .line 277
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->icc_transaction_beep_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->icc_transaction_beep_enabled:Z

    .line 278
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->keypad_event_beep_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->keypad_event_beep_enabled:Z

    .line 279
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->spoc_mode_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->spoc_mode_enabled:Z

    .line 280
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->domestic_debit_aid_list:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->domestic_debit_aid_list:Z

    .line 281
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->visa_dynamic_reader_limit:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->visa_dynamic_reader_limit:Z

    .line 282
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->buzzer_sound_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->buzzer_sound_enabled:Z

    .line 283
    iget-boolean v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->config_hash:Z

    iput-boolean v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->config_hash:Z

    .line 284
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 356
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acquirer_identifier="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->acquirer_identifier:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_country_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_country_code:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transaction_currency_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_code:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transaction_currency_exponent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->transaction_currency_exponent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "merchant_name_and_location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_name_and_location:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "merchant_identifier="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->merchant_identifier:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_identification="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_identification:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_capabilities="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_capabilities:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 364
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->terminal_type:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "additional_terminal_capabilities="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->additional_terminal_capabilities:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "normal_mode_timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->normal_mode_timeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 367
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "standby_mode_timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->standby_mode_timeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 368
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bluetooth_discovery_timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->bluetooth_discovery_timeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msr_pin_entry_timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->msr_pin_entry_timeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firmware_fallback_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_fallback_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom_bluetooth_name_prefix="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_name_prefix:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom_bluetooth_serial_suffix="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->custom_bluetooth_serial_suffix:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firmware_force_chip_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->firmware_force_chip_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "icc_transaction_beep_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->icc_transaction_beep_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keypad_event_beep_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->keypad_event_beep_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "spoc_mode_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->spoc_mode_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "domestic_debit_aid_list="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->domestic_debit_aid_list:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "visa_dynamic_reader_limit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->visa_dynamic_reader_limit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "buzzer_sound_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->buzzer_sound_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config_hash="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;->config_hash:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 381
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ReadTerminalSettingRequest{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
