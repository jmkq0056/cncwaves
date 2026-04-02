package com.stripe.bbpos.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ReadTerminalSettingRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 *2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002)*B\u0089\u0002\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0014\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0015\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0016\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0018\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0019\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001a\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001c\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001e¢\u0006\u0002\u0010\u001fJ\u008a\u0002\u0010 \u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u00042\b\b\u0002\u0010\u0010\u001a\u00020\u00042\b\b\u0002\u0010\u0011\u001a\u00020\u00042\b\b\u0002\u0010\u0012\u001a\u00020\u00042\b\b\u0002\u0010\u0013\u001a\u00020\u00042\b\b\u0002\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\u00042\b\b\u0002\u0010\u0016\u001a\u00020\u00042\b\b\u0002\u0010\u0017\u001a\u00020\u00042\b\b\u0002\u0010\u0018\u001a\u00020\u00042\b\b\u0002\u0010\u0019\u001a\u00020\u00042\b\b\u0002\u0010\u001a\u001a\u00020\u00042\b\b\u0002\u0010\u001b\u001a\u00020\u00042\b\b\u0002\u0010\u001c\u001a\u00020\u00042\b\b\u0002\u0010\u001d\u001a\u00020\u001eJ\u0013\u0010!\u001a\u00020\u00042\b\u0010\"\u001a\u0004\u0018\u00010#H\u0096\u0002J\b\u0010$\u001a\u00020%H\u0016J\b\u0010&\u001a\u00020\u0002H\u0016J\b\u0010'\u001a\u00020(H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0018\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006+"}, d2 = {"Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;", "acquirer_identifier", "", "terminal_country_code", "transaction_currency_code", "transaction_currency_exponent", "merchant_name_and_location", "merchant_identifier", "terminal_identification", "terminal_capabilities", "terminal_type", "additional_terminal_capabilities", "normal_mode_timeout", "standby_mode_timeout", "bluetooth_discovery_timeout", "msr_pin_entry_timeout", "firmware_fallback_enabled", "custom_bluetooth_name_prefix", "custom_bluetooth_serial_suffix", "firmware_force_chip_enabled", "icc_transaction_beep_enabled", "keypad_event_beep_enabled", "spoc_mode_enabled", "domestic_debit_aid_list", "visa_dynamic_reader_limit", "buzzer_sound_enabled", "config_hash", "unknownFields", "Lokio/ByteString;", "(ZZZZZZZZZZZZZZZZZZZZZZZZZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReadTerminalSettingRequest extends Message<ReadTerminalSettingRequest, Builder> {
    public static final ProtoAdapter<ReadTerminalSettingRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "acquirerIdentifier", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final boolean acquirer_identifier;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "additionalTerminalCapabilities", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final boolean additional_terminal_capabilities;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "bluetoothDiscoveryTimeout", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final boolean bluetooth_discovery_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "buzzerSoundEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 23, tag = 24)
    public final boolean buzzer_sound_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "configHash", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 24, tag = 25)
    public final boolean config_hash;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "customBluetoothNamePrefix", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 15, tag = 16)
    public final boolean custom_bluetooth_name_prefix;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "customBluetoothSerialSuffix", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 16, tag = 17)
    public final boolean custom_bluetooth_serial_suffix;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "domesticDebitAidList", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 21, tag = 22)
    public final boolean domestic_debit_aid_list;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "firmwareFallbackEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final boolean firmware_fallback_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "firmwareForceChipEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 17, tag = 18)
    public final boolean firmware_force_chip_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "iccTransactionBeepEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 18, tag = 19)
    public final boolean icc_transaction_beep_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "keypadEventBeepEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 19, tag = 20)
    public final boolean keypad_event_beep_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "merchantIdentifier", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final boolean merchant_identifier;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "merchantNameAndLocation", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final boolean merchant_name_and_location;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "msrPinEntryTimeout", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final boolean msr_pin_entry_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "normalModeTimeout", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final boolean normal_mode_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "spocModeEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 20, tag = 21)
    public final boolean spoc_mode_enabled;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "standbyModeTimeout", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final boolean standby_mode_timeout;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final boolean terminal_capabilities;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "terminalCountryCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final boolean terminal_country_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "terminalIdentification", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final boolean terminal_identification;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "terminalType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final boolean terminal_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "transactionCurrencyCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final boolean transaction_currency_code;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "transactionCurrencyExponent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final boolean transaction_currency_exponent;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "visaDynamicReaderLimit", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 22, tag = 23)
    public final boolean visa_dynamic_reader_limit;

    public ReadTerminalSettingRequest() {
        this(false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, null, 67108863, null);
    }

    public /* synthetic */ ReadTerminalSettingRequest(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? false : z4, (i & 16) != 0 ? false : z5, (i & 32) != 0 ? false : z6, (i & 64) != 0 ? false : z7, (i & 128) != 0 ? false : z8, (i & 256) != 0 ? false : z9, (i & 512) != 0 ? false : z10, (i & 1024) != 0 ? false : z11, (i & 2048) != 0 ? false : z12, (i & 4096) != 0 ? false : z13, (i & 8192) != 0 ? false : z14, (i & 16384) != 0 ? false : z15, (i & 32768) != 0 ? false : z16, (i & 65536) != 0 ? false : z17, (i & 131072) != 0 ? false : z18, (i & 262144) != 0 ? false : z19, (i & 524288) != 0 ? false : z20, (i & 1048576) != 0 ? false : z21, (i & 2097152) != 0 ? false : z22, (i & 4194304) != 0 ? false : z23, (i & 8388608) != 0 ? false : z24, (i & 16777216) != 0 ? false : z25, (i & 33554432) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadTerminalSettingRequest(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.acquirer_identifier = z;
        this.terminal_country_code = z2;
        this.transaction_currency_code = z3;
        this.transaction_currency_exponent = z4;
        this.merchant_name_and_location = z5;
        this.merchant_identifier = z6;
        this.terminal_identification = z7;
        this.terminal_capabilities = z8;
        this.terminal_type = z9;
        this.additional_terminal_capabilities = z10;
        this.normal_mode_timeout = z11;
        this.standby_mode_timeout = z12;
        this.bluetooth_discovery_timeout = z13;
        this.msr_pin_entry_timeout = z14;
        this.firmware_fallback_enabled = z15;
        this.custom_bluetooth_name_prefix = z16;
        this.custom_bluetooth_serial_suffix = z17;
        this.firmware_force_chip_enabled = z18;
        this.icc_transaction_beep_enabled = z19;
        this.keypad_event_beep_enabled = z20;
        this.spoc_mode_enabled = z21;
        this.domestic_debit_aid_list = z22;
        this.visa_dynamic_reader_limit = z23;
        this.buzzer_sound_enabled = z24;
        this.config_hash = z25;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.acquirer_identifier = this.acquirer_identifier;
        builder.terminal_country_code = this.terminal_country_code;
        builder.transaction_currency_code = this.transaction_currency_code;
        builder.transaction_currency_exponent = this.transaction_currency_exponent;
        builder.merchant_name_and_location = this.merchant_name_and_location;
        builder.merchant_identifier = this.merchant_identifier;
        builder.terminal_identification = this.terminal_identification;
        builder.terminal_capabilities = this.terminal_capabilities;
        builder.terminal_type = this.terminal_type;
        builder.additional_terminal_capabilities = this.additional_terminal_capabilities;
        builder.normal_mode_timeout = this.normal_mode_timeout;
        builder.standby_mode_timeout = this.standby_mode_timeout;
        builder.bluetooth_discovery_timeout = this.bluetooth_discovery_timeout;
        builder.msr_pin_entry_timeout = this.msr_pin_entry_timeout;
        builder.firmware_fallback_enabled = this.firmware_fallback_enabled;
        builder.custom_bluetooth_name_prefix = this.custom_bluetooth_name_prefix;
        builder.custom_bluetooth_serial_suffix = this.custom_bluetooth_serial_suffix;
        builder.firmware_force_chip_enabled = this.firmware_force_chip_enabled;
        builder.icc_transaction_beep_enabled = this.icc_transaction_beep_enabled;
        builder.keypad_event_beep_enabled = this.keypad_event_beep_enabled;
        builder.spoc_mode_enabled = this.spoc_mode_enabled;
        builder.domestic_debit_aid_list = this.domestic_debit_aid_list;
        builder.visa_dynamic_reader_limit = this.visa_dynamic_reader_limit;
        builder.buzzer_sound_enabled = this.buzzer_sound_enabled;
        builder.config_hash = this.config_hash;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReadTerminalSettingRequest)) {
            return false;
        }
        ReadTerminalSettingRequest readTerminalSettingRequest = (ReadTerminalSettingRequest) other;
        return Intrinsics.areEqual(unknownFields(), readTerminalSettingRequest.unknownFields()) && this.acquirer_identifier == readTerminalSettingRequest.acquirer_identifier && this.terminal_country_code == readTerminalSettingRequest.terminal_country_code && this.transaction_currency_code == readTerminalSettingRequest.transaction_currency_code && this.transaction_currency_exponent == readTerminalSettingRequest.transaction_currency_exponent && this.merchant_name_and_location == readTerminalSettingRequest.merchant_name_and_location && this.merchant_identifier == readTerminalSettingRequest.merchant_identifier && this.terminal_identification == readTerminalSettingRequest.terminal_identification && this.terminal_capabilities == readTerminalSettingRequest.terminal_capabilities && this.terminal_type == readTerminalSettingRequest.terminal_type && this.additional_terminal_capabilities == readTerminalSettingRequest.additional_terminal_capabilities && this.normal_mode_timeout == readTerminalSettingRequest.normal_mode_timeout && this.standby_mode_timeout == readTerminalSettingRequest.standby_mode_timeout && this.bluetooth_discovery_timeout == readTerminalSettingRequest.bluetooth_discovery_timeout && this.msr_pin_entry_timeout == readTerminalSettingRequest.msr_pin_entry_timeout && this.firmware_fallback_enabled == readTerminalSettingRequest.firmware_fallback_enabled && this.custom_bluetooth_name_prefix == readTerminalSettingRequest.custom_bluetooth_name_prefix && this.custom_bluetooth_serial_suffix == readTerminalSettingRequest.custom_bluetooth_serial_suffix && this.firmware_force_chip_enabled == readTerminalSettingRequest.firmware_force_chip_enabled && this.icc_transaction_beep_enabled == readTerminalSettingRequest.icc_transaction_beep_enabled && this.keypad_event_beep_enabled == readTerminalSettingRequest.keypad_event_beep_enabled && this.spoc_mode_enabled == readTerminalSettingRequest.spoc_mode_enabled && this.domestic_debit_aid_list == readTerminalSettingRequest.domestic_debit_aid_list && this.visa_dynamic_reader_limit == readTerminalSettingRequest.visa_dynamic_reader_limit && this.buzzer_sound_enabled == readTerminalSettingRequest.buzzer_sound_enabled && this.config_hash == readTerminalSettingRequest.config_hash;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((((((((((((((((((((((((((((((((((unknownFields().hashCode() * 37) + Boolean.hashCode(this.acquirer_identifier)) * 37) + Boolean.hashCode(this.terminal_country_code)) * 37) + Boolean.hashCode(this.transaction_currency_code)) * 37) + Boolean.hashCode(this.transaction_currency_exponent)) * 37) + Boolean.hashCode(this.merchant_name_and_location)) * 37) + Boolean.hashCode(this.merchant_identifier)) * 37) + Boolean.hashCode(this.terminal_identification)) * 37) + Boolean.hashCode(this.terminal_capabilities)) * 37) + Boolean.hashCode(this.terminal_type)) * 37) + Boolean.hashCode(this.additional_terminal_capabilities)) * 37) + Boolean.hashCode(this.normal_mode_timeout)) * 37) + Boolean.hashCode(this.standby_mode_timeout)) * 37) + Boolean.hashCode(this.bluetooth_discovery_timeout)) * 37) + Boolean.hashCode(this.msr_pin_entry_timeout)) * 37) + Boolean.hashCode(this.firmware_fallback_enabled)) * 37) + Boolean.hashCode(this.custom_bluetooth_name_prefix)) * 37) + Boolean.hashCode(this.custom_bluetooth_serial_suffix)) * 37) + Boolean.hashCode(this.firmware_force_chip_enabled)) * 37) + Boolean.hashCode(this.icc_transaction_beep_enabled)) * 37) + Boolean.hashCode(this.keypad_event_beep_enabled)) * 37) + Boolean.hashCode(this.spoc_mode_enabled)) * 37) + Boolean.hashCode(this.domestic_debit_aid_list)) * 37) + Boolean.hashCode(this.visa_dynamic_reader_limit)) * 37) + Boolean.hashCode(this.buzzer_sound_enabled)) * 37) + Boolean.hashCode(this.config_hash);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("acquirer_identifier=" + this.acquirer_identifier);
        arrayList2.add("terminal_country_code=" + this.terminal_country_code);
        arrayList2.add("transaction_currency_code=" + this.transaction_currency_code);
        arrayList2.add("transaction_currency_exponent=" + this.transaction_currency_exponent);
        arrayList2.add("merchant_name_and_location=" + this.merchant_name_and_location);
        arrayList2.add("merchant_identifier=" + this.merchant_identifier);
        arrayList2.add("terminal_identification=" + this.terminal_identification);
        arrayList2.add("terminal_capabilities=" + this.terminal_capabilities);
        arrayList2.add("terminal_type=" + this.terminal_type);
        arrayList2.add("additional_terminal_capabilities=" + this.additional_terminal_capabilities);
        arrayList2.add("normal_mode_timeout=" + this.normal_mode_timeout);
        arrayList2.add("standby_mode_timeout=" + this.standby_mode_timeout);
        arrayList2.add("bluetooth_discovery_timeout=" + this.bluetooth_discovery_timeout);
        arrayList2.add("msr_pin_entry_timeout=" + this.msr_pin_entry_timeout);
        arrayList2.add("firmware_fallback_enabled=" + this.firmware_fallback_enabled);
        arrayList2.add("custom_bluetooth_name_prefix=" + this.custom_bluetooth_name_prefix);
        arrayList2.add("custom_bluetooth_serial_suffix=" + this.custom_bluetooth_serial_suffix);
        arrayList2.add("firmware_force_chip_enabled=" + this.firmware_force_chip_enabled);
        arrayList2.add("icc_transaction_beep_enabled=" + this.icc_transaction_beep_enabled);
        arrayList2.add("keypad_event_beep_enabled=" + this.keypad_event_beep_enabled);
        arrayList2.add("spoc_mode_enabled=" + this.spoc_mode_enabled);
        arrayList2.add("domestic_debit_aid_list=" + this.domestic_debit_aid_list);
        arrayList2.add("visa_dynamic_reader_limit=" + this.visa_dynamic_reader_limit);
        arrayList2.add("buzzer_sound_enabled=" + this.buzzer_sound_enabled);
        arrayList2.add("config_hash=" + this.config_hash);
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReadTerminalSettingRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReadTerminalSettingRequest copy$default(ReadTerminalSettingRequest readTerminalSettingRequest, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16, boolean z17, boolean z18, boolean z19, boolean z20, boolean z21, boolean z22, boolean z23, boolean z24, boolean z25, ByteString byteString, int i, Object obj) {
        boolean z26 = (i & 1) != 0 ? readTerminalSettingRequest.acquirer_identifier : z;
        return readTerminalSettingRequest.copy(z26, (i & 2) != 0 ? readTerminalSettingRequest.terminal_country_code : z2, (i & 4) != 0 ? readTerminalSettingRequest.transaction_currency_code : z3, (i & 8) != 0 ? readTerminalSettingRequest.transaction_currency_exponent : z4, (i & 16) != 0 ? readTerminalSettingRequest.merchant_name_and_location : z5, (i & 32) != 0 ? readTerminalSettingRequest.merchant_identifier : z6, (i & 64) != 0 ? readTerminalSettingRequest.terminal_identification : z7, (i & 128) != 0 ? readTerminalSettingRequest.terminal_capabilities : z8, (i & 256) != 0 ? readTerminalSettingRequest.terminal_type : z9, (i & 512) != 0 ? readTerminalSettingRequest.additional_terminal_capabilities : z10, (i & 1024) != 0 ? readTerminalSettingRequest.normal_mode_timeout : z11, (i & 2048) != 0 ? readTerminalSettingRequest.standby_mode_timeout : z12, (i & 4096) != 0 ? readTerminalSettingRequest.bluetooth_discovery_timeout : z13, (i & 8192) != 0 ? readTerminalSettingRequest.msr_pin_entry_timeout : z14, (i & 16384) != 0 ? readTerminalSettingRequest.firmware_fallback_enabled : z15, (i & 32768) != 0 ? readTerminalSettingRequest.custom_bluetooth_name_prefix : z16, (i & 65536) != 0 ? readTerminalSettingRequest.custom_bluetooth_serial_suffix : z17, (i & 131072) != 0 ? readTerminalSettingRequest.firmware_force_chip_enabled : z18, (i & 262144) != 0 ? readTerminalSettingRequest.icc_transaction_beep_enabled : z19, (i & 524288) != 0 ? readTerminalSettingRequest.keypad_event_beep_enabled : z20, (i & 1048576) != 0 ? readTerminalSettingRequest.spoc_mode_enabled : z21, (i & 2097152) != 0 ? readTerminalSettingRequest.domestic_debit_aid_list : z22, (i & 4194304) != 0 ? readTerminalSettingRequest.visa_dynamic_reader_limit : z23, (i & 8388608) != 0 ? readTerminalSettingRequest.buzzer_sound_enabled : z24, (i & 16777216) != 0 ? readTerminalSettingRequest.config_hash : z25, (i & 33554432) != 0 ? readTerminalSettingRequest.unknownFields() : byteString);
    }

    public final ReadTerminalSettingRequest copy(boolean acquirer_identifier, boolean terminal_country_code, boolean transaction_currency_code, boolean transaction_currency_exponent, boolean merchant_name_and_location, boolean merchant_identifier, boolean terminal_identification, boolean terminal_capabilities, boolean terminal_type, boolean additional_terminal_capabilities, boolean normal_mode_timeout, boolean standby_mode_timeout, boolean bluetooth_discovery_timeout, boolean msr_pin_entry_timeout, boolean firmware_fallback_enabled, boolean custom_bluetooth_name_prefix, boolean custom_bluetooth_serial_suffix, boolean firmware_force_chip_enabled, boolean icc_transaction_beep_enabled, boolean keypad_event_beep_enabled, boolean spoc_mode_enabled, boolean domestic_debit_aid_list, boolean visa_dynamic_reader_limit, boolean buzzer_sound_enabled, boolean config_hash, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReadTerminalSettingRequest(acquirer_identifier, terminal_country_code, transaction_currency_code, transaction_currency_exponent, merchant_name_and_location, merchant_identifier, terminal_identification, terminal_capabilities, terminal_type, additional_terminal_capabilities, normal_mode_timeout, standby_mode_timeout, bluetooth_discovery_timeout, msr_pin_entry_timeout, firmware_fallback_enabled, custom_bluetooth_name_prefix, custom_bluetooth_serial_suffix, firmware_force_chip_enabled, icc_transaction_beep_enabled, keypad_event_beep_enabled, spoc_mode_enabled, domestic_debit_aid_list, visa_dynamic_reader_limit, buzzer_sound_enabled, config_hash, unknownFields);
    }

    /* JADX INFO: compiled from: ReadTerminalSettingRequest.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u001a\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\b\u0010\u001e\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0005J\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\u0005J\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0005J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0005J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0005J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0005J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0005J\u000e\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;", "()V", "acquirer_identifier", "", "additional_terminal_capabilities", "bluetooth_discovery_timeout", "buzzer_sound_enabled", "config_hash", "custom_bluetooth_name_prefix", "custom_bluetooth_serial_suffix", "domestic_debit_aid_list", "firmware_fallback_enabled", "firmware_force_chip_enabled", "icc_transaction_beep_enabled", "keypad_event_beep_enabled", "merchant_identifier", "merchant_name_and_location", "msr_pin_entry_timeout", "normal_mode_timeout", "spoc_mode_enabled", "standby_mode_timeout", "terminal_capabilities", "terminal_country_code", "terminal_identification", "terminal_type", "transaction_currency_code", "transaction_currency_exponent", "visa_dynamic_reader_limit", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReadTerminalSettingRequest, Builder> {
        public boolean acquirer_identifier;
        public boolean additional_terminal_capabilities;
        public boolean bluetooth_discovery_timeout;
        public boolean buzzer_sound_enabled;
        public boolean config_hash;
        public boolean custom_bluetooth_name_prefix;
        public boolean custom_bluetooth_serial_suffix;
        public boolean domestic_debit_aid_list;
        public boolean firmware_fallback_enabled;
        public boolean firmware_force_chip_enabled;
        public boolean icc_transaction_beep_enabled;
        public boolean keypad_event_beep_enabled;
        public boolean merchant_identifier;
        public boolean merchant_name_and_location;
        public boolean msr_pin_entry_timeout;
        public boolean normal_mode_timeout;
        public boolean spoc_mode_enabled;
        public boolean standby_mode_timeout;
        public boolean terminal_capabilities;
        public boolean terminal_country_code;
        public boolean terminal_identification;
        public boolean terminal_type;
        public boolean transaction_currency_code;
        public boolean transaction_currency_exponent;
        public boolean visa_dynamic_reader_limit;

        public final Builder acquirer_identifier(boolean acquirer_identifier) {
            this.acquirer_identifier = acquirer_identifier;
            return this;
        }

        public final Builder terminal_country_code(boolean terminal_country_code) {
            this.terminal_country_code = terminal_country_code;
            return this;
        }

        public final Builder transaction_currency_code(boolean transaction_currency_code) {
            this.transaction_currency_code = transaction_currency_code;
            return this;
        }

        public final Builder transaction_currency_exponent(boolean transaction_currency_exponent) {
            this.transaction_currency_exponent = transaction_currency_exponent;
            return this;
        }

        public final Builder merchant_name_and_location(boolean merchant_name_and_location) {
            this.merchant_name_and_location = merchant_name_and_location;
            return this;
        }

        public final Builder merchant_identifier(boolean merchant_identifier) {
            this.merchant_identifier = merchant_identifier;
            return this;
        }

        public final Builder terminal_identification(boolean terminal_identification) {
            this.terminal_identification = terminal_identification;
            return this;
        }

        public final Builder terminal_capabilities(boolean terminal_capabilities) {
            this.terminal_capabilities = terminal_capabilities;
            return this;
        }

        public final Builder terminal_type(boolean terminal_type) {
            this.terminal_type = terminal_type;
            return this;
        }

        public final Builder additional_terminal_capabilities(boolean additional_terminal_capabilities) {
            this.additional_terminal_capabilities = additional_terminal_capabilities;
            return this;
        }

        public final Builder normal_mode_timeout(boolean normal_mode_timeout) {
            this.normal_mode_timeout = normal_mode_timeout;
            return this;
        }

        public final Builder standby_mode_timeout(boolean standby_mode_timeout) {
            this.standby_mode_timeout = standby_mode_timeout;
            return this;
        }

        public final Builder bluetooth_discovery_timeout(boolean bluetooth_discovery_timeout) {
            this.bluetooth_discovery_timeout = bluetooth_discovery_timeout;
            return this;
        }

        public final Builder msr_pin_entry_timeout(boolean msr_pin_entry_timeout) {
            this.msr_pin_entry_timeout = msr_pin_entry_timeout;
            return this;
        }

        public final Builder firmware_fallback_enabled(boolean firmware_fallback_enabled) {
            this.firmware_fallback_enabled = firmware_fallback_enabled;
            return this;
        }

        public final Builder custom_bluetooth_name_prefix(boolean custom_bluetooth_name_prefix) {
            this.custom_bluetooth_name_prefix = custom_bluetooth_name_prefix;
            return this;
        }

        public final Builder custom_bluetooth_serial_suffix(boolean custom_bluetooth_serial_suffix) {
            this.custom_bluetooth_serial_suffix = custom_bluetooth_serial_suffix;
            return this;
        }

        public final Builder firmware_force_chip_enabled(boolean firmware_force_chip_enabled) {
            this.firmware_force_chip_enabled = firmware_force_chip_enabled;
            return this;
        }

        public final Builder icc_transaction_beep_enabled(boolean icc_transaction_beep_enabled) {
            this.icc_transaction_beep_enabled = icc_transaction_beep_enabled;
            return this;
        }

        public final Builder keypad_event_beep_enabled(boolean keypad_event_beep_enabled) {
            this.keypad_event_beep_enabled = keypad_event_beep_enabled;
            return this;
        }

        public final Builder spoc_mode_enabled(boolean spoc_mode_enabled) {
            this.spoc_mode_enabled = spoc_mode_enabled;
            return this;
        }

        public final Builder domestic_debit_aid_list(boolean domestic_debit_aid_list) {
            this.domestic_debit_aid_list = domestic_debit_aid_list;
            return this;
        }

        public final Builder visa_dynamic_reader_limit(boolean visa_dynamic_reader_limit) {
            this.visa_dynamic_reader_limit = visa_dynamic_reader_limit;
            return this;
        }

        public final Builder buzzer_sound_enabled(boolean buzzer_sound_enabled) {
            this.buzzer_sound_enabled = buzzer_sound_enabled;
            return this;
        }

        public final Builder config_hash(boolean config_hash) {
            this.config_hash = config_hash;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReadTerminalSettingRequest build() {
            return new ReadTerminalSettingRequest(this.acquirer_identifier, this.terminal_country_code, this.transaction_currency_code, this.transaction_currency_exponent, this.merchant_name_and_location, this.merchant_identifier, this.terminal_identification, this.terminal_capabilities, this.terminal_type, this.additional_terminal_capabilities, this.normal_mode_timeout, this.standby_mode_timeout, this.bluetooth_discovery_timeout, this.msr_pin_entry_timeout, this.firmware_fallback_enabled, this.custom_bluetooth_name_prefix, this.custom_bluetooth_serial_suffix, this.firmware_force_chip_enabled, this.icc_transaction_beep_enabled, this.keypad_event_beep_enabled, this.spoc_mode_enabled, this.domestic_debit_aid_list, this.visa_dynamic_reader_limit, this.buzzer_sound_enabled, this.config_hash, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReadTerminalSettingRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/ReadTerminalSettingRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReadTerminalSettingRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReadTerminalSettingRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReadTerminalSettingRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.ReadTerminalSettingRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReadTerminalSettingRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.acquirer_identifier) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.acquirer_identifier));
                }
                if (value.terminal_country_code) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(2, Boolean.valueOf(value.terminal_country_code));
                }
                if (value.transaction_currency_code) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(3, Boolean.valueOf(value.transaction_currency_code));
                }
                if (value.transaction_currency_exponent) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(4, Boolean.valueOf(value.transaction_currency_exponent));
                }
                if (value.merchant_name_and_location) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(5, Boolean.valueOf(value.merchant_name_and_location));
                }
                if (value.merchant_identifier) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(6, Boolean.valueOf(value.merchant_identifier));
                }
                if (value.terminal_identification) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(7, Boolean.valueOf(value.terminal_identification));
                }
                if (value.terminal_capabilities) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(8, Boolean.valueOf(value.terminal_capabilities));
                }
                if (value.terminal_type) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(9, Boolean.valueOf(value.terminal_type));
                }
                if (value.additional_terminal_capabilities) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(10, Boolean.valueOf(value.additional_terminal_capabilities));
                }
                if (value.normal_mode_timeout) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(11, Boolean.valueOf(value.normal_mode_timeout));
                }
                if (value.standby_mode_timeout) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(12, Boolean.valueOf(value.standby_mode_timeout));
                }
                if (value.bluetooth_discovery_timeout) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(13, Boolean.valueOf(value.bluetooth_discovery_timeout));
                }
                if (value.msr_pin_entry_timeout) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(14, Boolean.valueOf(value.msr_pin_entry_timeout));
                }
                if (value.firmware_fallback_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(15, Boolean.valueOf(value.firmware_fallback_enabled));
                }
                if (value.custom_bluetooth_name_prefix) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(16, Boolean.valueOf(value.custom_bluetooth_name_prefix));
                }
                if (value.custom_bluetooth_serial_suffix) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(17, Boolean.valueOf(value.custom_bluetooth_serial_suffix));
                }
                if (value.firmware_force_chip_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(18, Boolean.valueOf(value.firmware_force_chip_enabled));
                }
                if (value.icc_transaction_beep_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(19, Boolean.valueOf(value.icc_transaction_beep_enabled));
                }
                if (value.keypad_event_beep_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(20, Boolean.valueOf(value.keypad_event_beep_enabled));
                }
                if (value.spoc_mode_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(21, Boolean.valueOf(value.spoc_mode_enabled));
                }
                if (value.domestic_debit_aid_list) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(22, Boolean.valueOf(value.domestic_debit_aid_list));
                }
                if (value.visa_dynamic_reader_limit) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(23, Boolean.valueOf(value.visa_dynamic_reader_limit));
                }
                if (value.buzzer_sound_enabled) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(24, Boolean.valueOf(value.buzzer_sound_enabled));
                }
                return value.config_hash ? size + ProtoAdapter.BOOL.encodedSizeWithTag(25, Boolean.valueOf(value.config_hash)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReadTerminalSettingRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.acquirer_identifier) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.acquirer_identifier));
                }
                if (value.terminal_country_code) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.terminal_country_code));
                }
                if (value.transaction_currency_code) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.transaction_currency_code));
                }
                if (value.transaction_currency_exponent) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.transaction_currency_exponent));
                }
                if (value.merchant_name_and_location) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.merchant_name_and_location));
                }
                if (value.merchant_identifier) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.merchant_identifier));
                }
                if (value.terminal_identification) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.terminal_identification));
                }
                if (value.terminal_capabilities) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.terminal_capabilities));
                }
                if (value.terminal_type) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.terminal_type));
                }
                if (value.additional_terminal_capabilities) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.additional_terminal_capabilities));
                }
                if (value.normal_mode_timeout) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 11, Boolean.valueOf(value.normal_mode_timeout));
                }
                if (value.standby_mode_timeout) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 12, Boolean.valueOf(value.standby_mode_timeout));
                }
                if (value.bluetooth_discovery_timeout) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 13, Boolean.valueOf(value.bluetooth_discovery_timeout));
                }
                if (value.msr_pin_entry_timeout) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 14, Boolean.valueOf(value.msr_pin_entry_timeout));
                }
                if (value.firmware_fallback_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 15, Boolean.valueOf(value.firmware_fallback_enabled));
                }
                if (value.custom_bluetooth_name_prefix) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 16, Boolean.valueOf(value.custom_bluetooth_name_prefix));
                }
                if (value.custom_bluetooth_serial_suffix) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 17, Boolean.valueOf(value.custom_bluetooth_serial_suffix));
                }
                if (value.firmware_force_chip_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 18, Boolean.valueOf(value.firmware_force_chip_enabled));
                }
                if (value.icc_transaction_beep_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 19, Boolean.valueOf(value.icc_transaction_beep_enabled));
                }
                if (value.keypad_event_beep_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 20, Boolean.valueOf(value.keypad_event_beep_enabled));
                }
                if (value.spoc_mode_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 21, Boolean.valueOf(value.spoc_mode_enabled));
                }
                if (value.domestic_debit_aid_list) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 22, Boolean.valueOf(value.domestic_debit_aid_list));
                }
                if (value.visa_dynamic_reader_limit) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 23, Boolean.valueOf(value.visa_dynamic_reader_limit));
                }
                if (value.buzzer_sound_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 24, Boolean.valueOf(value.buzzer_sound_enabled));
                }
                if (value.config_hash) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 25, Boolean.valueOf(value.config_hash));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReadTerminalSettingRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.config_hash) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 25, Boolean.valueOf(value.config_hash));
                }
                if (value.buzzer_sound_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 24, Boolean.valueOf(value.buzzer_sound_enabled));
                }
                if (value.visa_dynamic_reader_limit) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 23, Boolean.valueOf(value.visa_dynamic_reader_limit));
                }
                if (value.domestic_debit_aid_list) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 22, Boolean.valueOf(value.domestic_debit_aid_list));
                }
                if (value.spoc_mode_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 21, Boolean.valueOf(value.spoc_mode_enabled));
                }
                if (value.keypad_event_beep_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 20, Boolean.valueOf(value.keypad_event_beep_enabled));
                }
                if (value.icc_transaction_beep_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 19, Boolean.valueOf(value.icc_transaction_beep_enabled));
                }
                if (value.firmware_force_chip_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 18, Boolean.valueOf(value.firmware_force_chip_enabled));
                }
                if (value.custom_bluetooth_serial_suffix) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 17, Boolean.valueOf(value.custom_bluetooth_serial_suffix));
                }
                if (value.custom_bluetooth_name_prefix) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 16, Boolean.valueOf(value.custom_bluetooth_name_prefix));
                }
                if (value.firmware_fallback_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 15, Boolean.valueOf(value.firmware_fallback_enabled));
                }
                if (value.msr_pin_entry_timeout) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 14, Boolean.valueOf(value.msr_pin_entry_timeout));
                }
                if (value.bluetooth_discovery_timeout) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 13, Boolean.valueOf(value.bluetooth_discovery_timeout));
                }
                if (value.standby_mode_timeout) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 12, Boolean.valueOf(value.standby_mode_timeout));
                }
                if (value.normal_mode_timeout) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 11, Boolean.valueOf(value.normal_mode_timeout));
                }
                if (value.additional_terminal_capabilities) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 10, Boolean.valueOf(value.additional_terminal_capabilities));
                }
                if (value.terminal_type) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.terminal_type));
                }
                if (value.terminal_capabilities) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 8, Boolean.valueOf(value.terminal_capabilities));
                }
                if (value.terminal_identification) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 7, Boolean.valueOf(value.terminal_identification));
                }
                if (value.merchant_identifier) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 6, Boolean.valueOf(value.merchant_identifier));
                }
                if (value.merchant_name_and_location) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 5, Boolean.valueOf(value.merchant_name_and_location));
                }
                if (value.transaction_currency_exponent) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 4, Boolean.valueOf(value.transaction_currency_exponent));
                }
                if (value.transaction_currency_code) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 3, Boolean.valueOf(value.transaction_currency_code));
                }
                if (value.terminal_country_code) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 2, Boolean.valueOf(value.terminal_country_code));
                }
                if (value.acquirer_identifier) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.acquirer_identifier));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReadTerminalSettingRequest redact(ReadTerminalSettingRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return ReadTerminalSettingRequest.copy$default(value, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, ByteString.EMPTY, 33554431, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReadTerminalSettingRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                boolean zBooleanValue = false;
                boolean zBooleanValue2 = false;
                boolean zBooleanValue3 = false;
                boolean zBooleanValue4 = false;
                boolean zBooleanValue5 = false;
                boolean zBooleanValue6 = false;
                boolean zBooleanValue7 = false;
                boolean zBooleanValue8 = false;
                boolean zBooleanValue9 = false;
                boolean zBooleanValue10 = false;
                boolean zBooleanValue11 = false;
                boolean zBooleanValue12 = false;
                boolean zBooleanValue13 = false;
                boolean zBooleanValue14 = false;
                boolean zBooleanValue15 = false;
                boolean zBooleanValue16 = false;
                boolean zBooleanValue17 = false;
                boolean zBooleanValue18 = false;
                boolean zBooleanValue19 = false;
                boolean zBooleanValue20 = false;
                boolean zBooleanValue21 = false;
                boolean zBooleanValue22 = false;
                boolean zBooleanValue23 = false;
                boolean zBooleanValue24 = false;
                boolean zBooleanValue25 = false;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 2:
                                zBooleanValue2 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 3:
                                zBooleanValue3 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 4:
                                zBooleanValue4 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 5:
                                zBooleanValue5 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 6:
                                zBooleanValue6 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 7:
                                zBooleanValue7 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 8:
                                zBooleanValue8 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 9:
                                zBooleanValue9 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 10:
                                zBooleanValue10 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 11:
                                zBooleanValue11 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 12:
                                zBooleanValue12 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 13:
                                zBooleanValue13 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 14:
                                zBooleanValue14 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 15:
                                zBooleanValue15 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 16:
                                zBooleanValue16 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 17:
                                zBooleanValue17 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 18:
                                zBooleanValue18 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 19:
                                zBooleanValue19 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 20:
                                zBooleanValue20 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 21:
                                zBooleanValue21 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 22:
                                zBooleanValue22 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 23:
                                zBooleanValue23 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 24:
                                zBooleanValue24 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            case 25:
                                zBooleanValue25 = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new ReadTerminalSettingRequest(zBooleanValue, zBooleanValue2, zBooleanValue3, zBooleanValue4, zBooleanValue5, zBooleanValue6, zBooleanValue7, zBooleanValue8, zBooleanValue9, zBooleanValue10, zBooleanValue11, zBooleanValue12, zBooleanValue13, zBooleanValue14, zBooleanValue15, zBooleanValue16, zBooleanValue17, zBooleanValue18, zBooleanValue19, zBooleanValue20, zBooleanValue21, zBooleanValue22, zBooleanValue23, zBooleanValue24, zBooleanValue25, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
