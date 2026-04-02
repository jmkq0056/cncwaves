.class public final Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;
.super Lcom/squareup/wire/Message;
.source "ReadTerminalSettingResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;,
        Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0019\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0018\u0000 +2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002*+B\u00bb\u0002\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001e\u00a2\u0006\u0002\u0010\u001fJ\u00bc\u0002\u0010 \u001a\u00020\u00002\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00042\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u001eJ\u0013\u0010!\u001a\u00020\"2\u0008\u0010#\u001a\u0004\u0018\u00010$H\u0096\u0002J\u0008\u0010%\u001a\u00020&H\u0016J\u0008\u0010\'\u001a\u00020\u0002H\u0016J\u0008\u0010(\u001a\u00020)H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006,"
    }
    d2 = {
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;",
        "acquirer_identifier",
        "Lcom/stripe/bbpos/sdk/TerminalSettingValue;",
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
        "(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;)V",
        "copy",
        "equals",
        "",
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
            "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "acquirerIdentifier"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "additionalTerminalCapabilities"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "bluetoothDiscoveryTimeout"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "buzzerSoundEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x17
        tag = 0x18
    .end annotation
.end field

.field public final config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "configHash"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x18
        tag = 0x19
    .end annotation
.end field

.field public final custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "customBluetoothNamePrefix"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "customBluetoothSerialSuffix"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x10
        tag = 0x11
    .end annotation
.end field

.field public final domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "domesticDebitAidList"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x15
        tag = 0x16
    .end annotation
.end field

.field public final firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "firmwareFallbackEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "firmwareForceChipEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x11
        tag = 0x12
    .end annotation
.end field

.field public final icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "iccTransactionBeepEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x12
        tag = 0x13
    .end annotation
.end field

.field public final keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "keypadEventBeepEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x13
        tag = 0x14
    .end annotation
.end field

.field public final merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "merchantIdentifier"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "merchantNameAndLocation"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "msrPinEntryTimeout"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "normalModeTimeout"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "spocModeEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x14
        tag = 0x15
    .end annotation
.end field

.field public final standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "standbyModeTimeout"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "terminalCapabilities"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "terminalCountryCode"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "terminalIdentification"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "terminalType"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "transactionCurrencyCode"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "transactionCurrencyExponent"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER"
        jsonName = "visaDynamicReaderLimit"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x16
        tag = 0x17
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->Companion:Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion;

    .line 645
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 644
    const-class v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 648
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 644
    new-instance v3, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

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

    invoke-direct/range {v0 .. v28}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;-><init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;)V
    .locals 2

    move-object/from16 v0, p26

    const-string v1, "unknownFields"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    sget-object v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, v0}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 27
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 36
    iput-object p2, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 45
    iput-object p3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 54
    iput-object p4, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 63
    iput-object p5, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 72
    iput-object p6, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 81
    iput-object p7, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 90
    iput-object p8, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 99
    iput-object p9, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 108
    iput-object p10, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 117
    iput-object p11, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 126
    iput-object p12, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 135
    iput-object p13, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p14

    .line 144
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p15

    .line 153
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p16

    .line 162
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p17

    .line 171
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p18

    .line 180
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p19

    .line 189
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p20

    .line 198
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p21

    .line 207
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p22

    .line 216
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p23

    .line 225
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p24

    .line 234
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-object/from16 p1, p25

    .line 243
    iput-object p1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p27

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_15

    const/16 v22, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v22, p22

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_16

    const/16 v23, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v23, p23

    :goto_16
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_17

    const/16 v24, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v24, p24

    :goto_17
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_18

    const/16 v25, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v25, p25

    :goto_18
    const/high16 v26, 0x2000000

    and-int v0, v0, v26

    if-eqz v0, :cond_19

    .line 252
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/from16 p27, v0

    goto :goto_19

    :cond_19
    move-object/from16 p27, p26

    :goto_19
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move-object/from16 p25, v24

    move-object/from16 p26, v25

    .line 26
    invoke-direct/range {p1 .. p27}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;-><init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p27

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 382
    iget-object v2, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    .line 383
    iget-object v3, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    .line 384
    iget-object v4, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    .line 385
    iget-object v5, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    .line 386
    iget-object v6, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    .line 387
    iget-object v7, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    .line 388
    iget-object v8, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    .line 389
    iget-object v9, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    .line 390
    iget-object v10, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    .line 391
    iget-object v11, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    .line 392
    iget-object v12, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    .line 393
    iget-object v13, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    .line 394
    iget-object v14, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    .line 395
    iget-object v15, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    .line 396
    iget-object v2, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    .line 397
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p27, v16

    move-object/from16 p2, v1

    if-eqz v16, :cond_10

    .line 398
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p27, v16

    move-object/from16 p3, v1

    if-eqz v16, :cond_11

    .line 399
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p27, v16

    move-object/from16 p4, v1

    if-eqz v16, :cond_12

    .line 400
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p27, v16

    move-object/from16 p5, v1

    if-eqz v16, :cond_13

    .line 401
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p27, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_14

    .line 402
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p27, v16

    move-object/from16 p7, v1

    if-eqz v16, :cond_15

    .line 403
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p27, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_16

    .line 404
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p23

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p27, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_17

    .line 405
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p24

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p27, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_18

    .line 406
    iget-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p25

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p27, v16

    if-eqz v16, :cond_19

    .line 407
    invoke-virtual {v0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->unknownFields()Lokio/ByteString;

    move-result-object v16

    move-object/from16 p27, v16

    goto :goto_19

    :cond_19
    move-object/from16 p27, p26

    :goto_19
    move-object/from16 p17, p2

    move-object/from16 p18, p3

    move-object/from16 p19, p4

    move-object/from16 p20, p5

    move-object/from16 p21, p6

    move-object/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    move-object/from16 p26, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    .line 381
    invoke-virtual/range {p1 .. p27}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->copy(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final copy(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;)Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;
    .locals 28

    const-string v0, "unknownFields"

    move-object/from16 v1, p26

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    new-instance v1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move-object/from16 v27, p26

    invoke-direct/range {v1 .. v27}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;-><init>(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 287
    :cond_0
    instance-of v1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;

    invoke-virtual {p1}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 290
    :cond_3
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 291
    :cond_4
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 292
    :cond_5
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 293
    :cond_6
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 294
    :cond_7
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 295
    :cond_8
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    .line 296
    :cond_9
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    .line 297
    :cond_a
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 298
    :cond_b
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    .line 299
    :cond_c
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 300
    :cond_d
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    .line 301
    :cond_e
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    .line 302
    :cond_f
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 303
    :cond_10
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 304
    :cond_11
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 305
    :cond_12
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 306
    :cond_13
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    .line 307
    :cond_14
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    .line 308
    :cond_15
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    .line 309
    :cond_16
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    .line 310
    :cond_17
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    .line 311
    :cond_18
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    .line 312
    :cond_19
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object v3, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    .line 313
    :cond_1a
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iget-object p1, p1, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    return v2

    :cond_1b
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 318
    iget v0, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->hashCode:I

    if-nez v0, :cond_19

    .line 320
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 321
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 322
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 323
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 324
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 325
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 326
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 327
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 328
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 329
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 330
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 331
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 332
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_b

    :cond_b
    move v1, v2

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 333
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_c

    :cond_c
    move v1, v2

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 334
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_d

    :cond_d
    move v1, v2

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 335
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_e

    :cond_e
    move v1, v2

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 336
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 337
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 338
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_11

    :cond_11
    move v1, v2

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 339
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_12

    :cond_12
    move v1, v2

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 340
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_13

    :cond_13
    move v1, v2

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 341
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_14

    :cond_14
    move v1, v2

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 342
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_15
    move v1, v2

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 343
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_16

    :cond_16
    move v1, v2

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 344
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v1

    goto :goto_17

    :cond_17
    move v1, v2

    :goto_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 345
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/stripe/bbpos/sdk/TerminalSettingValue;->hashCode()I

    move-result v2

    :cond_18
    add-int/2addr v0, v2

    .line 346
    iput v0, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->hashCode:I

    :cond_19
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->newBuilder()Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;
    .locals 2

    .line 255
    new-instance v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;

    invoke-direct {v0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 257
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 258
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 259
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 260
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 261
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 262
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 263
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 264
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 265
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 266
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 267
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 268
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 269
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 270
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 271
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 272
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 273
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 274
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 275
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 276
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 277
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 278
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 279
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 280
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    iput-object v1, v0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    .line 281
    invoke-virtual {p0}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 353
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "acquirer_identifier="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->acquirer_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_country_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_country_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transaction_currency_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_code:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_2
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "transaction_currency_exponent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->transaction_currency_exponent:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_3
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "merchant_name_and_location="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_name_and_location:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_4
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "merchant_identifier="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->merchant_identifier:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_5
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_identification="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_identification:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_6
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_capabilities="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_7
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "terminal_type="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->terminal_type:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_8
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_9

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "additional_terminal_capabilities="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->additional_terminal_capabilities:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_9
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_a

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "normal_mode_timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->normal_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_a
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_b

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "standby_mode_timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->standby_mode_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_b
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bluetooth_discovery_timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->bluetooth_discovery_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 366
    :cond_c
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_d

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msr_pin_entry_timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->msr_pin_entry_timeout:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_d
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_e

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firmware_fallback_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_fallback_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 368
    :cond_e
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_f

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom_bluetooth_name_prefix="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_name_prefix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 369
    :cond_f
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_10

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "custom_bluetooth_serial_suffix="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->custom_bluetooth_serial_suffix:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_10
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_11

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "firmware_force_chip_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->firmware_force_chip_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_11
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_12

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "icc_transaction_beep_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->icc_transaction_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_12
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_13

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "keypad_event_beep_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->keypad_event_beep_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_13
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_14

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "spoc_mode_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->spoc_mode_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_14
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_15

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "domestic_debit_aid_list="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->domestic_debit_aid_list:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_15
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_16

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "visa_dynamic_reader_limit="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->visa_dynamic_reader_limit:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_16
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_17

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "buzzer_sound_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->buzzer_sound_enabled:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_17
    iget-object v1, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    if-eqz v1, :cond_18

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "config_hash="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;->config_hash:Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_18
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ReadTerminalSettingResult{"

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
