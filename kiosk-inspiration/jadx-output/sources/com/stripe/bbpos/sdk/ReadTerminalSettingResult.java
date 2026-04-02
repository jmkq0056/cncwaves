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

/* JADX INFO: compiled from: ReadTerminalSettingResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 +2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002*+B»\u0002\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u001d\u001a\u00020\u001e¢\u0006\u0002\u0010\u001fJ¼\u0002\u0010 \u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u001d\u001a\u00020\u001eJ\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010$H\u0096\u0002J\b\u0010%\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020\u0002H\u0016J\b\u0010(\u001a\u00020)H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006,"}, d2 = {"Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;", "acquirer_identifier", "Lcom/stripe/bbpos/sdk/TerminalSettingValue;", "terminal_country_code", "transaction_currency_code", "transaction_currency_exponent", "merchant_name_and_location", "merchant_identifier", "terminal_identification", "terminal_capabilities", "terminal_type", "additional_terminal_capabilities", "normal_mode_timeout", "standby_mode_timeout", "bluetooth_discovery_timeout", "msr_pin_entry_timeout", "firmware_fallback_enabled", "custom_bluetooth_name_prefix", "custom_bluetooth_serial_suffix", "firmware_force_chip_enabled", "icc_transaction_beep_enabled", "keypad_event_beep_enabled", "spoc_mode_enabled", "domestic_debit_aid_list", "visa_dynamic_reader_limit", "buzzer_sound_enabled", "config_hash", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReadTerminalSettingResult extends Message<ReadTerminalSettingResult, Builder> {
    public static final ProtoAdapter<ReadTerminalSettingResult> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "acquirerIdentifier", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final TerminalSettingValue acquirer_identifier;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "additionalTerminalCapabilities", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final TerminalSettingValue additional_terminal_capabilities;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "bluetoothDiscoveryTimeout", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 12, tag = 13)
    public final TerminalSettingValue bluetooth_discovery_timeout;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "buzzerSoundEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 23, tag = 24)
    public final TerminalSettingValue buzzer_sound_enabled;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "configHash", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 24, tag = 25)
    public final TerminalSettingValue config_hash;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "customBluetoothNamePrefix", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 15, tag = 16)
    public final TerminalSettingValue custom_bluetooth_name_prefix;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "customBluetoothSerialSuffix", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 16, tag = 17)
    public final TerminalSettingValue custom_bluetooth_serial_suffix;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "domesticDebitAidList", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 21, tag = 22)
    public final TerminalSettingValue domestic_debit_aid_list;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "firmwareFallbackEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 14, tag = 15)
    public final TerminalSettingValue firmware_fallback_enabled;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "firmwareForceChipEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 17, tag = 18)
    public final TerminalSettingValue firmware_force_chip_enabled;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "iccTransactionBeepEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 18, tag = 19)
    public final TerminalSettingValue icc_transaction_beep_enabled;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "keypadEventBeepEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 19, tag = 20)
    public final TerminalSettingValue keypad_event_beep_enabled;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "merchantIdentifier", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final TerminalSettingValue merchant_identifier;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "merchantNameAndLocation", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final TerminalSettingValue merchant_name_and_location;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "msrPinEntryTimeout", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 13, tag = 14)
    public final TerminalSettingValue msr_pin_entry_timeout;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "normalModeTimeout", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 10, tag = 11)
    public final TerminalSettingValue normal_mode_timeout;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "spocModeEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 20, tag = 21)
    public final TerminalSettingValue spoc_mode_enabled;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "standbyModeTimeout", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 11, tag = 12)
    public final TerminalSettingValue standby_mode_timeout;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final TerminalSettingValue terminal_capabilities;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "terminalCountryCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final TerminalSettingValue terminal_country_code;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "terminalIdentification", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final TerminalSettingValue terminal_identification;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "terminalType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final TerminalSettingValue terminal_type;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "transactionCurrencyCode", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final TerminalSettingValue transaction_currency_code;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "transactionCurrencyExponent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final TerminalSettingValue transaction_currency_exponent;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue#ADAPTER", jsonName = "visaDynamicReaderLimit", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 22, tag = 23)
    public final TerminalSettingValue visa_dynamic_reader_limit;

    public ReadTerminalSettingResult() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 67108863, null);
    }

    public /* synthetic */ ReadTerminalSettingResult(TerminalSettingValue terminalSettingValue, TerminalSettingValue terminalSettingValue2, TerminalSettingValue terminalSettingValue3, TerminalSettingValue terminalSettingValue4, TerminalSettingValue terminalSettingValue5, TerminalSettingValue terminalSettingValue6, TerminalSettingValue terminalSettingValue7, TerminalSettingValue terminalSettingValue8, TerminalSettingValue terminalSettingValue9, TerminalSettingValue terminalSettingValue10, TerminalSettingValue terminalSettingValue11, TerminalSettingValue terminalSettingValue12, TerminalSettingValue terminalSettingValue13, TerminalSettingValue terminalSettingValue14, TerminalSettingValue terminalSettingValue15, TerminalSettingValue terminalSettingValue16, TerminalSettingValue terminalSettingValue17, TerminalSettingValue terminalSettingValue18, TerminalSettingValue terminalSettingValue19, TerminalSettingValue terminalSettingValue20, TerminalSettingValue terminalSettingValue21, TerminalSettingValue terminalSettingValue22, TerminalSettingValue terminalSettingValue23, TerminalSettingValue terminalSettingValue24, TerminalSettingValue terminalSettingValue25, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : terminalSettingValue, (i & 2) != 0 ? null : terminalSettingValue2, (i & 4) != 0 ? null : terminalSettingValue3, (i & 8) != 0 ? null : terminalSettingValue4, (i & 16) != 0 ? null : terminalSettingValue5, (i & 32) != 0 ? null : terminalSettingValue6, (i & 64) != 0 ? null : terminalSettingValue7, (i & 128) != 0 ? null : terminalSettingValue8, (i & 256) != 0 ? null : terminalSettingValue9, (i & 512) != 0 ? null : terminalSettingValue10, (i & 1024) != 0 ? null : terminalSettingValue11, (i & 2048) != 0 ? null : terminalSettingValue12, (i & 4096) != 0 ? null : terminalSettingValue13, (i & 8192) != 0 ? null : terminalSettingValue14, (i & 16384) != 0 ? null : terminalSettingValue15, (i & 32768) != 0 ? null : terminalSettingValue16, (i & 65536) != 0 ? null : terminalSettingValue17, (i & 131072) != 0 ? null : terminalSettingValue18, (i & 262144) != 0 ? null : terminalSettingValue19, (i & 524288) != 0 ? null : terminalSettingValue20, (i & 1048576) != 0 ? null : terminalSettingValue21, (i & 2097152) != 0 ? null : terminalSettingValue22, (i & 4194304) != 0 ? null : terminalSettingValue23, (i & 8388608) != 0 ? null : terminalSettingValue24, (i & 16777216) != 0 ? null : terminalSettingValue25, (i & 33554432) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReadTerminalSettingResult(TerminalSettingValue terminalSettingValue, TerminalSettingValue terminalSettingValue2, TerminalSettingValue terminalSettingValue3, TerminalSettingValue terminalSettingValue4, TerminalSettingValue terminalSettingValue5, TerminalSettingValue terminalSettingValue6, TerminalSettingValue terminalSettingValue7, TerminalSettingValue terminalSettingValue8, TerminalSettingValue terminalSettingValue9, TerminalSettingValue terminalSettingValue10, TerminalSettingValue terminalSettingValue11, TerminalSettingValue terminalSettingValue12, TerminalSettingValue terminalSettingValue13, TerminalSettingValue terminalSettingValue14, TerminalSettingValue terminalSettingValue15, TerminalSettingValue terminalSettingValue16, TerminalSettingValue terminalSettingValue17, TerminalSettingValue terminalSettingValue18, TerminalSettingValue terminalSettingValue19, TerminalSettingValue terminalSettingValue20, TerminalSettingValue terminalSettingValue21, TerminalSettingValue terminalSettingValue22, TerminalSettingValue terminalSettingValue23, TerminalSettingValue terminalSettingValue24, TerminalSettingValue terminalSettingValue25, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.acquirer_identifier = terminalSettingValue;
        this.terminal_country_code = terminalSettingValue2;
        this.transaction_currency_code = terminalSettingValue3;
        this.transaction_currency_exponent = terminalSettingValue4;
        this.merchant_name_and_location = terminalSettingValue5;
        this.merchant_identifier = terminalSettingValue6;
        this.terminal_identification = terminalSettingValue7;
        this.terminal_capabilities = terminalSettingValue8;
        this.terminal_type = terminalSettingValue9;
        this.additional_terminal_capabilities = terminalSettingValue10;
        this.normal_mode_timeout = terminalSettingValue11;
        this.standby_mode_timeout = terminalSettingValue12;
        this.bluetooth_discovery_timeout = terminalSettingValue13;
        this.msr_pin_entry_timeout = terminalSettingValue14;
        this.firmware_fallback_enabled = terminalSettingValue15;
        this.custom_bluetooth_name_prefix = terminalSettingValue16;
        this.custom_bluetooth_serial_suffix = terminalSettingValue17;
        this.firmware_force_chip_enabled = terminalSettingValue18;
        this.icc_transaction_beep_enabled = terminalSettingValue19;
        this.keypad_event_beep_enabled = terminalSettingValue20;
        this.spoc_mode_enabled = terminalSettingValue21;
        this.domestic_debit_aid_list = terminalSettingValue22;
        this.visa_dynamic_reader_limit = terminalSettingValue23;
        this.buzzer_sound_enabled = terminalSettingValue24;
        this.config_hash = terminalSettingValue25;
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
        if (!(other instanceof ReadTerminalSettingResult)) {
            return false;
        }
        ReadTerminalSettingResult readTerminalSettingResult = (ReadTerminalSettingResult) other;
        return Intrinsics.areEqual(unknownFields(), readTerminalSettingResult.unknownFields()) && Intrinsics.areEqual(this.acquirer_identifier, readTerminalSettingResult.acquirer_identifier) && Intrinsics.areEqual(this.terminal_country_code, readTerminalSettingResult.terminal_country_code) && Intrinsics.areEqual(this.transaction_currency_code, readTerminalSettingResult.transaction_currency_code) && Intrinsics.areEqual(this.transaction_currency_exponent, readTerminalSettingResult.transaction_currency_exponent) && Intrinsics.areEqual(this.merchant_name_and_location, readTerminalSettingResult.merchant_name_and_location) && Intrinsics.areEqual(this.merchant_identifier, readTerminalSettingResult.merchant_identifier) && Intrinsics.areEqual(this.terminal_identification, readTerminalSettingResult.terminal_identification) && Intrinsics.areEqual(this.terminal_capabilities, readTerminalSettingResult.terminal_capabilities) && Intrinsics.areEqual(this.terminal_type, readTerminalSettingResult.terminal_type) && Intrinsics.areEqual(this.additional_terminal_capabilities, readTerminalSettingResult.additional_terminal_capabilities) && Intrinsics.areEqual(this.normal_mode_timeout, readTerminalSettingResult.normal_mode_timeout) && Intrinsics.areEqual(this.standby_mode_timeout, readTerminalSettingResult.standby_mode_timeout) && Intrinsics.areEqual(this.bluetooth_discovery_timeout, readTerminalSettingResult.bluetooth_discovery_timeout) && Intrinsics.areEqual(this.msr_pin_entry_timeout, readTerminalSettingResult.msr_pin_entry_timeout) && Intrinsics.areEqual(this.firmware_fallback_enabled, readTerminalSettingResult.firmware_fallback_enabled) && Intrinsics.areEqual(this.custom_bluetooth_name_prefix, readTerminalSettingResult.custom_bluetooth_name_prefix) && Intrinsics.areEqual(this.custom_bluetooth_serial_suffix, readTerminalSettingResult.custom_bluetooth_serial_suffix) && Intrinsics.areEqual(this.firmware_force_chip_enabled, readTerminalSettingResult.firmware_force_chip_enabled) && Intrinsics.areEqual(this.icc_transaction_beep_enabled, readTerminalSettingResult.icc_transaction_beep_enabled) && Intrinsics.areEqual(this.keypad_event_beep_enabled, readTerminalSettingResult.keypad_event_beep_enabled) && Intrinsics.areEqual(this.spoc_mode_enabled, readTerminalSettingResult.spoc_mode_enabled) && Intrinsics.areEqual(this.domestic_debit_aid_list, readTerminalSettingResult.domestic_debit_aid_list) && Intrinsics.areEqual(this.visa_dynamic_reader_limit, readTerminalSettingResult.visa_dynamic_reader_limit) && Intrinsics.areEqual(this.buzzer_sound_enabled, readTerminalSettingResult.buzzer_sound_enabled) && Intrinsics.areEqual(this.config_hash, readTerminalSettingResult.config_hash);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        TerminalSettingValue terminalSettingValue = this.acquirer_identifier;
        int iHashCode2 = (iHashCode + (terminalSettingValue != null ? terminalSettingValue.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue2 = this.terminal_country_code;
        int iHashCode3 = (iHashCode2 + (terminalSettingValue2 != null ? terminalSettingValue2.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue3 = this.transaction_currency_code;
        int iHashCode4 = (iHashCode3 + (terminalSettingValue3 != null ? terminalSettingValue3.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue4 = this.transaction_currency_exponent;
        int iHashCode5 = (iHashCode4 + (terminalSettingValue4 != null ? terminalSettingValue4.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue5 = this.merchant_name_and_location;
        int iHashCode6 = (iHashCode5 + (terminalSettingValue5 != null ? terminalSettingValue5.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue6 = this.merchant_identifier;
        int iHashCode7 = (iHashCode6 + (terminalSettingValue6 != null ? terminalSettingValue6.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue7 = this.terminal_identification;
        int iHashCode8 = (iHashCode7 + (terminalSettingValue7 != null ? terminalSettingValue7.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue8 = this.terminal_capabilities;
        int iHashCode9 = (iHashCode8 + (terminalSettingValue8 != null ? terminalSettingValue8.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue9 = this.terminal_type;
        int iHashCode10 = (iHashCode9 + (terminalSettingValue9 != null ? terminalSettingValue9.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue10 = this.additional_terminal_capabilities;
        int iHashCode11 = (iHashCode10 + (terminalSettingValue10 != null ? terminalSettingValue10.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue11 = this.normal_mode_timeout;
        int iHashCode12 = (iHashCode11 + (terminalSettingValue11 != null ? terminalSettingValue11.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue12 = this.standby_mode_timeout;
        int iHashCode13 = (iHashCode12 + (terminalSettingValue12 != null ? terminalSettingValue12.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue13 = this.bluetooth_discovery_timeout;
        int iHashCode14 = (iHashCode13 + (terminalSettingValue13 != null ? terminalSettingValue13.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue14 = this.msr_pin_entry_timeout;
        int iHashCode15 = (iHashCode14 + (terminalSettingValue14 != null ? terminalSettingValue14.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue15 = this.firmware_fallback_enabled;
        int iHashCode16 = (iHashCode15 + (terminalSettingValue15 != null ? terminalSettingValue15.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue16 = this.custom_bluetooth_name_prefix;
        int iHashCode17 = (iHashCode16 + (terminalSettingValue16 != null ? terminalSettingValue16.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue17 = this.custom_bluetooth_serial_suffix;
        int iHashCode18 = (iHashCode17 + (terminalSettingValue17 != null ? terminalSettingValue17.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue18 = this.firmware_force_chip_enabled;
        int iHashCode19 = (iHashCode18 + (terminalSettingValue18 != null ? terminalSettingValue18.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue19 = this.icc_transaction_beep_enabled;
        int iHashCode20 = (iHashCode19 + (terminalSettingValue19 != null ? terminalSettingValue19.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue20 = this.keypad_event_beep_enabled;
        int iHashCode21 = (iHashCode20 + (terminalSettingValue20 != null ? terminalSettingValue20.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue21 = this.spoc_mode_enabled;
        int iHashCode22 = (iHashCode21 + (terminalSettingValue21 != null ? terminalSettingValue21.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue22 = this.domestic_debit_aid_list;
        int iHashCode23 = (iHashCode22 + (terminalSettingValue22 != null ? terminalSettingValue22.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue23 = this.visa_dynamic_reader_limit;
        int iHashCode24 = (iHashCode23 + (terminalSettingValue23 != null ? terminalSettingValue23.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue24 = this.buzzer_sound_enabled;
        int iHashCode25 = (iHashCode24 + (terminalSettingValue24 != null ? terminalSettingValue24.hashCode() : 0)) * 37;
        TerminalSettingValue terminalSettingValue25 = this.config_hash;
        int iHashCode26 = iHashCode25 + (terminalSettingValue25 != null ? terminalSettingValue25.hashCode() : 0);
        this.hashCode = iHashCode26;
        return iHashCode26;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.acquirer_identifier != null) {
            arrayList.add("acquirer_identifier=" + this.acquirer_identifier);
        }
        if (this.terminal_country_code != null) {
            arrayList.add("terminal_country_code=" + this.terminal_country_code);
        }
        if (this.transaction_currency_code != null) {
            arrayList.add("transaction_currency_code=" + this.transaction_currency_code);
        }
        if (this.transaction_currency_exponent != null) {
            arrayList.add("transaction_currency_exponent=" + this.transaction_currency_exponent);
        }
        if (this.merchant_name_and_location != null) {
            arrayList.add("merchant_name_and_location=" + this.merchant_name_and_location);
        }
        if (this.merchant_identifier != null) {
            arrayList.add("merchant_identifier=" + this.merchant_identifier);
        }
        if (this.terminal_identification != null) {
            arrayList.add("terminal_identification=" + this.terminal_identification);
        }
        if (this.terminal_capabilities != null) {
            arrayList.add("terminal_capabilities=" + this.terminal_capabilities);
        }
        if (this.terminal_type != null) {
            arrayList.add("terminal_type=" + this.terminal_type);
        }
        if (this.additional_terminal_capabilities != null) {
            arrayList.add("additional_terminal_capabilities=" + this.additional_terminal_capabilities);
        }
        if (this.normal_mode_timeout != null) {
            arrayList.add("normal_mode_timeout=" + this.normal_mode_timeout);
        }
        if (this.standby_mode_timeout != null) {
            arrayList.add("standby_mode_timeout=" + this.standby_mode_timeout);
        }
        if (this.bluetooth_discovery_timeout != null) {
            arrayList.add("bluetooth_discovery_timeout=" + this.bluetooth_discovery_timeout);
        }
        if (this.msr_pin_entry_timeout != null) {
            arrayList.add("msr_pin_entry_timeout=" + this.msr_pin_entry_timeout);
        }
        if (this.firmware_fallback_enabled != null) {
            arrayList.add("firmware_fallback_enabled=" + this.firmware_fallback_enabled);
        }
        if (this.custom_bluetooth_name_prefix != null) {
            arrayList.add("custom_bluetooth_name_prefix=" + this.custom_bluetooth_name_prefix);
        }
        if (this.custom_bluetooth_serial_suffix != null) {
            arrayList.add("custom_bluetooth_serial_suffix=" + this.custom_bluetooth_serial_suffix);
        }
        if (this.firmware_force_chip_enabled != null) {
            arrayList.add("firmware_force_chip_enabled=" + this.firmware_force_chip_enabled);
        }
        if (this.icc_transaction_beep_enabled != null) {
            arrayList.add("icc_transaction_beep_enabled=" + this.icc_transaction_beep_enabled);
        }
        if (this.keypad_event_beep_enabled != null) {
            arrayList.add("keypad_event_beep_enabled=" + this.keypad_event_beep_enabled);
        }
        if (this.spoc_mode_enabled != null) {
            arrayList.add("spoc_mode_enabled=" + this.spoc_mode_enabled);
        }
        if (this.domestic_debit_aid_list != null) {
            arrayList.add("domestic_debit_aid_list=" + this.domestic_debit_aid_list);
        }
        if (this.visa_dynamic_reader_limit != null) {
            arrayList.add("visa_dynamic_reader_limit=" + this.visa_dynamic_reader_limit);
        }
        if (this.buzzer_sound_enabled != null) {
            arrayList.add("buzzer_sound_enabled=" + this.buzzer_sound_enabled);
        }
        if (this.config_hash != null) {
            arrayList.add("config_hash=" + this.config_hash);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReadTerminalSettingResult{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReadTerminalSettingResult copy$default(ReadTerminalSettingResult readTerminalSettingResult, TerminalSettingValue terminalSettingValue, TerminalSettingValue terminalSettingValue2, TerminalSettingValue terminalSettingValue3, TerminalSettingValue terminalSettingValue4, TerminalSettingValue terminalSettingValue5, TerminalSettingValue terminalSettingValue6, TerminalSettingValue terminalSettingValue7, TerminalSettingValue terminalSettingValue8, TerminalSettingValue terminalSettingValue9, TerminalSettingValue terminalSettingValue10, TerminalSettingValue terminalSettingValue11, TerminalSettingValue terminalSettingValue12, TerminalSettingValue terminalSettingValue13, TerminalSettingValue terminalSettingValue14, TerminalSettingValue terminalSettingValue15, TerminalSettingValue terminalSettingValue16, TerminalSettingValue terminalSettingValue17, TerminalSettingValue terminalSettingValue18, TerminalSettingValue terminalSettingValue19, TerminalSettingValue terminalSettingValue20, TerminalSettingValue terminalSettingValue21, TerminalSettingValue terminalSettingValue22, TerminalSettingValue terminalSettingValue23, TerminalSettingValue terminalSettingValue24, TerminalSettingValue terminalSettingValue25, ByteString byteString, int i, Object obj) {
        TerminalSettingValue terminalSettingValue26 = (i & 1) != 0 ? readTerminalSettingResult.acquirer_identifier : terminalSettingValue;
        return readTerminalSettingResult.copy(terminalSettingValue26, (i & 2) != 0 ? readTerminalSettingResult.terminal_country_code : terminalSettingValue2, (i & 4) != 0 ? readTerminalSettingResult.transaction_currency_code : terminalSettingValue3, (i & 8) != 0 ? readTerminalSettingResult.transaction_currency_exponent : terminalSettingValue4, (i & 16) != 0 ? readTerminalSettingResult.merchant_name_and_location : terminalSettingValue5, (i & 32) != 0 ? readTerminalSettingResult.merchant_identifier : terminalSettingValue6, (i & 64) != 0 ? readTerminalSettingResult.terminal_identification : terminalSettingValue7, (i & 128) != 0 ? readTerminalSettingResult.terminal_capabilities : terminalSettingValue8, (i & 256) != 0 ? readTerminalSettingResult.terminal_type : terminalSettingValue9, (i & 512) != 0 ? readTerminalSettingResult.additional_terminal_capabilities : terminalSettingValue10, (i & 1024) != 0 ? readTerminalSettingResult.normal_mode_timeout : terminalSettingValue11, (i & 2048) != 0 ? readTerminalSettingResult.standby_mode_timeout : terminalSettingValue12, (i & 4096) != 0 ? readTerminalSettingResult.bluetooth_discovery_timeout : terminalSettingValue13, (i & 8192) != 0 ? readTerminalSettingResult.msr_pin_entry_timeout : terminalSettingValue14, (i & 16384) != 0 ? readTerminalSettingResult.firmware_fallback_enabled : terminalSettingValue15, (i & 32768) != 0 ? readTerminalSettingResult.custom_bluetooth_name_prefix : terminalSettingValue16, (i & 65536) != 0 ? readTerminalSettingResult.custom_bluetooth_serial_suffix : terminalSettingValue17, (i & 131072) != 0 ? readTerminalSettingResult.firmware_force_chip_enabled : terminalSettingValue18, (i & 262144) != 0 ? readTerminalSettingResult.icc_transaction_beep_enabled : terminalSettingValue19, (i & 524288) != 0 ? readTerminalSettingResult.keypad_event_beep_enabled : terminalSettingValue20, (i & 1048576) != 0 ? readTerminalSettingResult.spoc_mode_enabled : terminalSettingValue21, (i & 2097152) != 0 ? readTerminalSettingResult.domestic_debit_aid_list : terminalSettingValue22, (i & 4194304) != 0 ? readTerminalSettingResult.visa_dynamic_reader_limit : terminalSettingValue23, (i & 8388608) != 0 ? readTerminalSettingResult.buzzer_sound_enabled : terminalSettingValue24, (i & 16777216) != 0 ? readTerminalSettingResult.config_hash : terminalSettingValue25, (i & 33554432) != 0 ? readTerminalSettingResult.unknownFields() : byteString);
    }

    public final ReadTerminalSettingResult copy(TerminalSettingValue acquirer_identifier, TerminalSettingValue terminal_country_code, TerminalSettingValue transaction_currency_code, TerminalSettingValue transaction_currency_exponent, TerminalSettingValue merchant_name_and_location, TerminalSettingValue merchant_identifier, TerminalSettingValue terminal_identification, TerminalSettingValue terminal_capabilities, TerminalSettingValue terminal_type, TerminalSettingValue additional_terminal_capabilities, TerminalSettingValue normal_mode_timeout, TerminalSettingValue standby_mode_timeout, TerminalSettingValue bluetooth_discovery_timeout, TerminalSettingValue msr_pin_entry_timeout, TerminalSettingValue firmware_fallback_enabled, TerminalSettingValue custom_bluetooth_name_prefix, TerminalSettingValue custom_bluetooth_serial_suffix, TerminalSettingValue firmware_force_chip_enabled, TerminalSettingValue icc_transaction_beep_enabled, TerminalSettingValue keypad_event_beep_enabled, TerminalSettingValue spoc_mode_enabled, TerminalSettingValue domestic_debit_aid_list, TerminalSettingValue visa_dynamic_reader_limit, TerminalSettingValue buzzer_sound_enabled, TerminalSettingValue config_hash, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReadTerminalSettingResult(acquirer_identifier, terminal_country_code, transaction_currency_code, transaction_currency_exponent, merchant_name_and_location, merchant_identifier, terminal_identification, terminal_capabilities, terminal_type, additional_terminal_capabilities, normal_mode_timeout, standby_mode_timeout, bluetooth_discovery_timeout, msr_pin_entry_timeout, firmware_fallback_enabled, custom_bluetooth_name_prefix, custom_bluetooth_serial_suffix, firmware_force_chip_enabled, icc_transaction_beep_enabled, keypad_event_beep_enabled, spoc_mode_enabled, domestic_debit_aid_list, visa_dynamic_reader_limit, buzzer_sound_enabled, config_hash, unknownFields);
    }

    /* JADX INFO: compiled from: ReadTerminalSettingResult.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001a\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0007\u001a\u00020\u00002\b\u0010\u0007\u001a\u0004\u0018\u00010\u0005J\b\u0010\u001e\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\t\u001a\u00020\u00002\b\u0010\t\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000b\u001a\u00020\u00002\b\u0010\u000b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0013\u001a\u00020\u00002\b\u0010\u0013\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0015\u001a\u00020\u00002\b\u0010\u0015\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0017\u001a\u00020\u00002\b\u0010\u0017\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0018\u001a\u00020\u00002\b\u0010\u0018\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0019\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001a\u001a\u00020\u00002\b\u0010\u001a\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001b\u001a\u00020\u00002\b\u0010\u001b\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001c\u001a\u00020\u00002\b\u0010\u001c\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u001d\u001a\u00020\u00002\b\u0010\u001d\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001c\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;", "()V", "acquirer_identifier", "Lcom/stripe/bbpos/sdk/TerminalSettingValue;", "additional_terminal_capabilities", "bluetooth_discovery_timeout", "buzzer_sound_enabled", "config_hash", "custom_bluetooth_name_prefix", "custom_bluetooth_serial_suffix", "domestic_debit_aid_list", "firmware_fallback_enabled", "firmware_force_chip_enabled", "icc_transaction_beep_enabled", "keypad_event_beep_enabled", "merchant_identifier", "merchant_name_and_location", "msr_pin_entry_timeout", "normal_mode_timeout", "spoc_mode_enabled", "standby_mode_timeout", "terminal_capabilities", "terminal_country_code", "terminal_identification", "terminal_type", "transaction_currency_code", "transaction_currency_exponent", "visa_dynamic_reader_limit", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReadTerminalSettingResult, Builder> {
        public TerminalSettingValue acquirer_identifier;
        public TerminalSettingValue additional_terminal_capabilities;
        public TerminalSettingValue bluetooth_discovery_timeout;
        public TerminalSettingValue buzzer_sound_enabled;
        public TerminalSettingValue config_hash;
        public TerminalSettingValue custom_bluetooth_name_prefix;
        public TerminalSettingValue custom_bluetooth_serial_suffix;
        public TerminalSettingValue domestic_debit_aid_list;
        public TerminalSettingValue firmware_fallback_enabled;
        public TerminalSettingValue firmware_force_chip_enabled;
        public TerminalSettingValue icc_transaction_beep_enabled;
        public TerminalSettingValue keypad_event_beep_enabled;
        public TerminalSettingValue merchant_identifier;
        public TerminalSettingValue merchant_name_and_location;
        public TerminalSettingValue msr_pin_entry_timeout;
        public TerminalSettingValue normal_mode_timeout;
        public TerminalSettingValue spoc_mode_enabled;
        public TerminalSettingValue standby_mode_timeout;
        public TerminalSettingValue terminal_capabilities;
        public TerminalSettingValue terminal_country_code;
        public TerminalSettingValue terminal_identification;
        public TerminalSettingValue terminal_type;
        public TerminalSettingValue transaction_currency_code;
        public TerminalSettingValue transaction_currency_exponent;
        public TerminalSettingValue visa_dynamic_reader_limit;

        public final Builder acquirer_identifier(TerminalSettingValue acquirer_identifier) {
            this.acquirer_identifier = acquirer_identifier;
            return this;
        }

        public final Builder terminal_country_code(TerminalSettingValue terminal_country_code) {
            this.terminal_country_code = terminal_country_code;
            return this;
        }

        public final Builder transaction_currency_code(TerminalSettingValue transaction_currency_code) {
            this.transaction_currency_code = transaction_currency_code;
            return this;
        }

        public final Builder transaction_currency_exponent(TerminalSettingValue transaction_currency_exponent) {
            this.transaction_currency_exponent = transaction_currency_exponent;
            return this;
        }

        public final Builder merchant_name_and_location(TerminalSettingValue merchant_name_and_location) {
            this.merchant_name_and_location = merchant_name_and_location;
            return this;
        }

        public final Builder merchant_identifier(TerminalSettingValue merchant_identifier) {
            this.merchant_identifier = merchant_identifier;
            return this;
        }

        public final Builder terminal_identification(TerminalSettingValue terminal_identification) {
            this.terminal_identification = terminal_identification;
            return this;
        }

        public final Builder terminal_capabilities(TerminalSettingValue terminal_capabilities) {
            this.terminal_capabilities = terminal_capabilities;
            return this;
        }

        public final Builder terminal_type(TerminalSettingValue terminal_type) {
            this.terminal_type = terminal_type;
            return this;
        }

        public final Builder additional_terminal_capabilities(TerminalSettingValue additional_terminal_capabilities) {
            this.additional_terminal_capabilities = additional_terminal_capabilities;
            return this;
        }

        public final Builder normal_mode_timeout(TerminalSettingValue normal_mode_timeout) {
            this.normal_mode_timeout = normal_mode_timeout;
            return this;
        }

        public final Builder standby_mode_timeout(TerminalSettingValue standby_mode_timeout) {
            this.standby_mode_timeout = standby_mode_timeout;
            return this;
        }

        public final Builder bluetooth_discovery_timeout(TerminalSettingValue bluetooth_discovery_timeout) {
            this.bluetooth_discovery_timeout = bluetooth_discovery_timeout;
            return this;
        }

        public final Builder msr_pin_entry_timeout(TerminalSettingValue msr_pin_entry_timeout) {
            this.msr_pin_entry_timeout = msr_pin_entry_timeout;
            return this;
        }

        public final Builder firmware_fallback_enabled(TerminalSettingValue firmware_fallback_enabled) {
            this.firmware_fallback_enabled = firmware_fallback_enabled;
            return this;
        }

        public final Builder custom_bluetooth_name_prefix(TerminalSettingValue custom_bluetooth_name_prefix) {
            this.custom_bluetooth_name_prefix = custom_bluetooth_name_prefix;
            return this;
        }

        public final Builder custom_bluetooth_serial_suffix(TerminalSettingValue custom_bluetooth_serial_suffix) {
            this.custom_bluetooth_serial_suffix = custom_bluetooth_serial_suffix;
            return this;
        }

        public final Builder firmware_force_chip_enabled(TerminalSettingValue firmware_force_chip_enabled) {
            this.firmware_force_chip_enabled = firmware_force_chip_enabled;
            return this;
        }

        public final Builder icc_transaction_beep_enabled(TerminalSettingValue icc_transaction_beep_enabled) {
            this.icc_transaction_beep_enabled = icc_transaction_beep_enabled;
            return this;
        }

        public final Builder keypad_event_beep_enabled(TerminalSettingValue keypad_event_beep_enabled) {
            this.keypad_event_beep_enabled = keypad_event_beep_enabled;
            return this;
        }

        public final Builder spoc_mode_enabled(TerminalSettingValue spoc_mode_enabled) {
            this.spoc_mode_enabled = spoc_mode_enabled;
            return this;
        }

        public final Builder domestic_debit_aid_list(TerminalSettingValue domestic_debit_aid_list) {
            this.domestic_debit_aid_list = domestic_debit_aid_list;
            return this;
        }

        public final Builder visa_dynamic_reader_limit(TerminalSettingValue visa_dynamic_reader_limit) {
            this.visa_dynamic_reader_limit = visa_dynamic_reader_limit;
            return this;
        }

        public final Builder buzzer_sound_enabled(TerminalSettingValue buzzer_sound_enabled) {
            this.buzzer_sound_enabled = buzzer_sound_enabled;
            return this;
        }

        public final Builder config_hash(TerminalSettingValue config_hash) {
            this.config_hash = config_hash;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReadTerminalSettingResult build() {
            return new ReadTerminalSettingResult(this.acquirer_identifier, this.terminal_country_code, this.transaction_currency_code, this.transaction_currency_exponent, this.merchant_name_and_location, this.merchant_identifier, this.terminal_identification, this.terminal_capabilities, this.terminal_type, this.additional_terminal_capabilities, this.normal_mode_timeout, this.standby_mode_timeout, this.bluetooth_discovery_timeout, this.msr_pin_entry_timeout, this.firmware_fallback_enabled, this.custom_bluetooth_name_prefix, this.custom_bluetooth_serial_suffix, this.firmware_force_chip_enabled, this.icc_transaction_beep_enabled, this.keypad_event_beep_enabled, this.spoc_mode_enabled, this.domestic_debit_aid_list, this.visa_dynamic_reader_limit, this.buzzer_sound_enabled, this.config_hash, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReadTerminalSettingResult.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/ReadTerminalSettingResult$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReadTerminalSettingResult build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReadTerminalSettingResult.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReadTerminalSettingResult>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.ReadTerminalSettingResult$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReadTerminalSettingResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.acquirer_identifier != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(1, value.acquirer_identifier);
                }
                if (value.terminal_country_code != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(2, value.terminal_country_code);
                }
                if (value.transaction_currency_code != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(3, value.transaction_currency_code);
                }
                if (value.transaction_currency_exponent != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(4, value.transaction_currency_exponent);
                }
                if (value.merchant_name_and_location != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(5, value.merchant_name_and_location);
                }
                if (value.merchant_identifier != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(6, value.merchant_identifier);
                }
                if (value.terminal_identification != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(7, value.terminal_identification);
                }
                if (value.terminal_capabilities != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(8, value.terminal_capabilities);
                }
                if (value.terminal_type != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(9, value.terminal_type);
                }
                if (value.additional_terminal_capabilities != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(10, value.additional_terminal_capabilities);
                }
                if (value.normal_mode_timeout != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(11, value.normal_mode_timeout);
                }
                if (value.standby_mode_timeout != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(12, value.standby_mode_timeout);
                }
                if (value.bluetooth_discovery_timeout != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(13, value.bluetooth_discovery_timeout);
                }
                if (value.msr_pin_entry_timeout != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(14, value.msr_pin_entry_timeout);
                }
                if (value.firmware_fallback_enabled != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(15, value.firmware_fallback_enabled);
                }
                if (value.custom_bluetooth_name_prefix != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(16, value.custom_bluetooth_name_prefix);
                }
                if (value.custom_bluetooth_serial_suffix != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(17, value.custom_bluetooth_serial_suffix);
                }
                if (value.firmware_force_chip_enabled != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(18, value.firmware_force_chip_enabled);
                }
                if (value.icc_transaction_beep_enabled != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(19, value.icc_transaction_beep_enabled);
                }
                if (value.keypad_event_beep_enabled != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(20, value.keypad_event_beep_enabled);
                }
                if (value.spoc_mode_enabled != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(21, value.spoc_mode_enabled);
                }
                if (value.domestic_debit_aid_list != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(22, value.domestic_debit_aid_list);
                }
                if (value.visa_dynamic_reader_limit != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(23, value.visa_dynamic_reader_limit);
                }
                if (value.buzzer_sound_enabled != null) {
                    size += TerminalSettingValue.ADAPTER.encodedSizeWithTag(24, value.buzzer_sound_enabled);
                }
                return value.config_hash != null ? size + TerminalSettingValue.ADAPTER.encodedSizeWithTag(25, value.config_hash) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReadTerminalSettingResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.acquirer_identifier != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 1, value.acquirer_identifier);
                }
                if (value.terminal_country_code != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 2, value.terminal_country_code);
                }
                if (value.transaction_currency_code != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 3, value.transaction_currency_code);
                }
                if (value.transaction_currency_exponent != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 4, value.transaction_currency_exponent);
                }
                if (value.merchant_name_and_location != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 5, value.merchant_name_and_location);
                }
                if (value.merchant_identifier != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 6, value.merchant_identifier);
                }
                if (value.terminal_identification != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 7, value.terminal_identification);
                }
                if (value.terminal_capabilities != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 8, value.terminal_capabilities);
                }
                if (value.terminal_type != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 9, value.terminal_type);
                }
                if (value.additional_terminal_capabilities != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 10, value.additional_terminal_capabilities);
                }
                if (value.normal_mode_timeout != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 11, value.normal_mode_timeout);
                }
                if (value.standby_mode_timeout != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 12, value.standby_mode_timeout);
                }
                if (value.bluetooth_discovery_timeout != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 13, value.bluetooth_discovery_timeout);
                }
                if (value.msr_pin_entry_timeout != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 14, value.msr_pin_entry_timeout);
                }
                if (value.firmware_fallback_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 15, value.firmware_fallback_enabled);
                }
                if (value.custom_bluetooth_name_prefix != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 16, value.custom_bluetooth_name_prefix);
                }
                if (value.custom_bluetooth_serial_suffix != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 17, value.custom_bluetooth_serial_suffix);
                }
                if (value.firmware_force_chip_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 18, value.firmware_force_chip_enabled);
                }
                if (value.icc_transaction_beep_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 19, value.icc_transaction_beep_enabled);
                }
                if (value.keypad_event_beep_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 20, value.keypad_event_beep_enabled);
                }
                if (value.spoc_mode_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 21, value.spoc_mode_enabled);
                }
                if (value.domestic_debit_aid_list != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 22, value.domestic_debit_aid_list);
                }
                if (value.visa_dynamic_reader_limit != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 23, value.visa_dynamic_reader_limit);
                }
                if (value.buzzer_sound_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 24, value.buzzer_sound_enabled);
                }
                if (value.config_hash != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 25, value.config_hash);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReadTerminalSettingResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.config_hash != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 25, value.config_hash);
                }
                if (value.buzzer_sound_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 24, value.buzzer_sound_enabled);
                }
                if (value.visa_dynamic_reader_limit != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 23, value.visa_dynamic_reader_limit);
                }
                if (value.domestic_debit_aid_list != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 22, value.domestic_debit_aid_list);
                }
                if (value.spoc_mode_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 21, value.spoc_mode_enabled);
                }
                if (value.keypad_event_beep_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 20, value.keypad_event_beep_enabled);
                }
                if (value.icc_transaction_beep_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 19, value.icc_transaction_beep_enabled);
                }
                if (value.firmware_force_chip_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 18, value.firmware_force_chip_enabled);
                }
                if (value.custom_bluetooth_serial_suffix != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 17, value.custom_bluetooth_serial_suffix);
                }
                if (value.custom_bluetooth_name_prefix != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 16, value.custom_bluetooth_name_prefix);
                }
                if (value.firmware_fallback_enabled != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 15, value.firmware_fallback_enabled);
                }
                if (value.msr_pin_entry_timeout != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 14, value.msr_pin_entry_timeout);
                }
                if (value.bluetooth_discovery_timeout != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 13, value.bluetooth_discovery_timeout);
                }
                if (value.standby_mode_timeout != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 12, value.standby_mode_timeout);
                }
                if (value.normal_mode_timeout != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 11, value.normal_mode_timeout);
                }
                if (value.additional_terminal_capabilities != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 10, value.additional_terminal_capabilities);
                }
                if (value.terminal_type != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 9, value.terminal_type);
                }
                if (value.terminal_capabilities != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 8, value.terminal_capabilities);
                }
                if (value.terminal_identification != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 7, value.terminal_identification);
                }
                if (value.merchant_identifier != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 6, value.merchant_identifier);
                }
                if (value.merchant_name_and_location != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 5, value.merchant_name_and_location);
                }
                if (value.transaction_currency_exponent != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 4, value.transaction_currency_exponent);
                }
                if (value.transaction_currency_code != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 3, value.transaction_currency_code);
                }
                if (value.terminal_country_code != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 2, value.terminal_country_code);
                }
                if (value.acquirer_identifier != null) {
                    TerminalSettingValue.ADAPTER.encodeWithTag(writer, 1, value.acquirer_identifier);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReadTerminalSettingResult redact(ReadTerminalSettingResult value) {
                TerminalSettingValue terminalSettingValue;
                TerminalSettingValue terminalSettingValue2;
                TerminalSettingValue terminalSettingValue3;
                TerminalSettingValue terminalSettingValue4;
                TerminalSettingValue terminalSettingValue5;
                TerminalSettingValue terminalSettingValue6;
                TerminalSettingValue terminalSettingValueRedact;
                Intrinsics.checkNotNullParameter(value, "value");
                TerminalSettingValue terminalSettingValue7 = value.acquirer_identifier;
                TerminalSettingValue terminalSettingValueRedact2 = terminalSettingValue7 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue7) : null;
                TerminalSettingValue terminalSettingValue8 = value.terminal_country_code;
                TerminalSettingValue terminalSettingValueRedact3 = terminalSettingValue8 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue8) : null;
                TerminalSettingValue terminalSettingValue9 = value.transaction_currency_code;
                TerminalSettingValue terminalSettingValueRedact4 = terminalSettingValue9 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue9) : null;
                TerminalSettingValue terminalSettingValue10 = value.transaction_currency_exponent;
                TerminalSettingValue terminalSettingValueRedact5 = terminalSettingValue10 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue10) : null;
                TerminalSettingValue terminalSettingValue11 = value.merchant_name_and_location;
                TerminalSettingValue terminalSettingValueRedact6 = terminalSettingValue11 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue11) : null;
                TerminalSettingValue terminalSettingValue12 = value.merchant_identifier;
                TerminalSettingValue terminalSettingValueRedact7 = terminalSettingValue12 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue12) : null;
                TerminalSettingValue terminalSettingValue13 = value.terminal_identification;
                TerminalSettingValue terminalSettingValueRedact8 = terminalSettingValue13 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue13) : null;
                TerminalSettingValue terminalSettingValue14 = value.terminal_capabilities;
                TerminalSettingValue terminalSettingValueRedact9 = terminalSettingValue14 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue14) : null;
                TerminalSettingValue terminalSettingValue15 = value.terminal_type;
                TerminalSettingValue terminalSettingValueRedact10 = terminalSettingValue15 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue15) : null;
                TerminalSettingValue terminalSettingValue16 = value.additional_terminal_capabilities;
                TerminalSettingValue terminalSettingValueRedact11 = terminalSettingValue16 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue16) : null;
                TerminalSettingValue terminalSettingValue17 = value.normal_mode_timeout;
                TerminalSettingValue terminalSettingValueRedact12 = terminalSettingValue17 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue17) : null;
                TerminalSettingValue terminalSettingValue18 = value.standby_mode_timeout;
                TerminalSettingValue terminalSettingValueRedact13 = terminalSettingValue18 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue18) : null;
                TerminalSettingValue terminalSettingValue19 = value.bluetooth_discovery_timeout;
                TerminalSettingValue terminalSettingValueRedact14 = terminalSettingValue19 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue19) : null;
                TerminalSettingValue terminalSettingValue20 = value.msr_pin_entry_timeout;
                TerminalSettingValue terminalSettingValueRedact15 = terminalSettingValue20 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue20) : null;
                TerminalSettingValue terminalSettingValue21 = value.firmware_fallback_enabled;
                TerminalSettingValue terminalSettingValue22 = terminalSettingValueRedact2;
                TerminalSettingValue terminalSettingValueRedact16 = terminalSettingValue21 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue21) : null;
                TerminalSettingValue terminalSettingValue23 = value.custom_bluetooth_name_prefix;
                TerminalSettingValue terminalSettingValue24 = terminalSettingValueRedact16;
                TerminalSettingValue terminalSettingValueRedact17 = terminalSettingValue23 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue23) : null;
                TerminalSettingValue terminalSettingValue25 = value.custom_bluetooth_serial_suffix;
                TerminalSettingValue terminalSettingValue26 = terminalSettingValueRedact17;
                TerminalSettingValue terminalSettingValueRedact18 = terminalSettingValue25 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue25) : null;
                TerminalSettingValue terminalSettingValue27 = value.firmware_force_chip_enabled;
                TerminalSettingValue terminalSettingValue28 = terminalSettingValueRedact18;
                TerminalSettingValue terminalSettingValueRedact19 = terminalSettingValue27 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue27) : null;
                TerminalSettingValue terminalSettingValue29 = value.icc_transaction_beep_enabled;
                TerminalSettingValue terminalSettingValue30 = terminalSettingValueRedact19;
                TerminalSettingValue terminalSettingValueRedact20 = terminalSettingValue29 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue29) : null;
                TerminalSettingValue terminalSettingValue31 = value.keypad_event_beep_enabled;
                TerminalSettingValue terminalSettingValue32 = terminalSettingValueRedact20;
                TerminalSettingValue terminalSettingValueRedact21 = terminalSettingValue31 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue31) : null;
                TerminalSettingValue terminalSettingValue33 = value.spoc_mode_enabled;
                TerminalSettingValue terminalSettingValue34 = terminalSettingValueRedact21;
                TerminalSettingValue terminalSettingValueRedact22 = terminalSettingValue33 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue33) : null;
                TerminalSettingValue terminalSettingValue35 = value.domestic_debit_aid_list;
                TerminalSettingValue terminalSettingValue36 = terminalSettingValueRedact22;
                TerminalSettingValue terminalSettingValueRedact23 = terminalSettingValue35 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue35) : null;
                TerminalSettingValue terminalSettingValue37 = value.visa_dynamic_reader_limit;
                TerminalSettingValue terminalSettingValue38 = terminalSettingValueRedact23;
                TerminalSettingValue terminalSettingValueRedact24 = terminalSettingValue37 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue37) : null;
                TerminalSettingValue terminalSettingValue39 = value.buzzer_sound_enabled;
                TerminalSettingValue terminalSettingValue40 = terminalSettingValueRedact24;
                TerminalSettingValue terminalSettingValueRedact25 = terminalSettingValue39 != null ? TerminalSettingValue.ADAPTER.redact(terminalSettingValue39) : null;
                TerminalSettingValue terminalSettingValue41 = value.config_hash;
                if (terminalSettingValue41 != null) {
                    TerminalSettingValue terminalSettingValue42 = terminalSettingValueRedact25;
                    terminalSettingValueRedact = TerminalSettingValue.ADAPTER.redact(terminalSettingValue41);
                    terminalSettingValue2 = terminalSettingValue22;
                    terminalSettingValue3 = terminalSettingValue26;
                    terminalSettingValue4 = terminalSettingValue30;
                    terminalSettingValue5 = terminalSettingValue34;
                    terminalSettingValue6 = terminalSettingValue38;
                    terminalSettingValue = terminalSettingValue42;
                } else {
                    terminalSettingValue = terminalSettingValueRedact25;
                    terminalSettingValue2 = terminalSettingValue22;
                    terminalSettingValue3 = terminalSettingValue26;
                    terminalSettingValue4 = terminalSettingValue30;
                    terminalSettingValue5 = terminalSettingValue34;
                    terminalSettingValue6 = terminalSettingValue38;
                    terminalSettingValueRedact = null;
                }
                return value.copy(terminalSettingValue2, terminalSettingValueRedact3, terminalSettingValueRedact4, terminalSettingValueRedact5, terminalSettingValueRedact6, terminalSettingValueRedact7, terminalSettingValueRedact8, terminalSettingValueRedact9, terminalSettingValueRedact10, terminalSettingValueRedact11, terminalSettingValueRedact12, terminalSettingValueRedact13, terminalSettingValueRedact14, terminalSettingValueRedact15, terminalSettingValue24, terminalSettingValue3, terminalSettingValue28, terminalSettingValue4, terminalSettingValue32, terminalSettingValue5, terminalSettingValue36, terminalSettingValue6, terminalSettingValue40, terminalSettingValue, terminalSettingValueRedact, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReadTerminalSettingResult decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                TerminalSettingValue terminalSettingValueDecode = null;
                TerminalSettingValue terminalSettingValueDecode2 = null;
                TerminalSettingValue terminalSettingValueDecode3 = null;
                TerminalSettingValue terminalSettingValueDecode4 = null;
                TerminalSettingValue terminalSettingValueDecode5 = null;
                TerminalSettingValue terminalSettingValueDecode6 = null;
                TerminalSettingValue terminalSettingValueDecode7 = null;
                TerminalSettingValue terminalSettingValueDecode8 = null;
                TerminalSettingValue terminalSettingValueDecode9 = null;
                TerminalSettingValue terminalSettingValueDecode10 = null;
                TerminalSettingValue terminalSettingValueDecode11 = null;
                TerminalSettingValue terminalSettingValueDecode12 = null;
                TerminalSettingValue terminalSettingValueDecode13 = null;
                TerminalSettingValue terminalSettingValueDecode14 = null;
                TerminalSettingValue terminalSettingValueDecode15 = null;
                TerminalSettingValue terminalSettingValueDecode16 = null;
                TerminalSettingValue terminalSettingValueDecode17 = null;
                TerminalSettingValue terminalSettingValueDecode18 = null;
                TerminalSettingValue terminalSettingValueDecode19 = null;
                TerminalSettingValue terminalSettingValueDecode20 = null;
                TerminalSettingValue terminalSettingValueDecode21 = null;
                TerminalSettingValue terminalSettingValueDecode22 = null;
                TerminalSettingValue terminalSettingValueDecode23 = null;
                TerminalSettingValue terminalSettingValueDecode24 = null;
                TerminalSettingValue terminalSettingValueDecode25 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    TerminalSettingValue terminalSettingValue = terminalSettingValueDecode;
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                terminalSettingValueDecode25 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 2:
                                terminalSettingValueDecode = TerminalSettingValue.ADAPTER.decode(reader);
                                continue;
                            case 3:
                                terminalSettingValueDecode2 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 4:
                                terminalSettingValueDecode3 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 5:
                                terminalSettingValueDecode4 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 6:
                                terminalSettingValueDecode5 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 7:
                                terminalSettingValueDecode6 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 8:
                                terminalSettingValueDecode7 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 9:
                                terminalSettingValueDecode8 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 10:
                                terminalSettingValueDecode9 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 11:
                                terminalSettingValueDecode10 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 12:
                                terminalSettingValueDecode11 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 13:
                                terminalSettingValueDecode12 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 14:
                                terminalSettingValueDecode13 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 15:
                                terminalSettingValueDecode14 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 16:
                                terminalSettingValueDecode15 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 17:
                                terminalSettingValueDecode16 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 18:
                                terminalSettingValueDecode17 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 19:
                                terminalSettingValueDecode18 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 20:
                                terminalSettingValueDecode19 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 21:
                                terminalSettingValueDecode20 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 22:
                                terminalSettingValueDecode21 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 23:
                                terminalSettingValueDecode22 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 24:
                                terminalSettingValueDecode23 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            case 25:
                                terminalSettingValueDecode24 = TerminalSettingValue.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                        terminalSettingValueDecode = terminalSettingValue;
                    } else {
                        return new ReadTerminalSettingResult(terminalSettingValueDecode25, terminalSettingValue, terminalSettingValueDecode2, terminalSettingValueDecode3, terminalSettingValueDecode4, terminalSettingValueDecode5, terminalSettingValueDecode6, terminalSettingValueDecode7, terminalSettingValueDecode8, terminalSettingValueDecode9, terminalSettingValueDecode10, terminalSettingValueDecode11, terminalSettingValueDecode12, terminalSettingValueDecode13, terminalSettingValueDecode14, terminalSettingValueDecode15, terminalSettingValueDecode16, terminalSettingValueDecode17, terminalSettingValueDecode18, terminalSettingValueDecode19, terminalSettingValueDecode20, terminalSettingValueDecode21, terminalSettingValueDecode22, terminalSettingValueDecode23, terminalSettingValueDecode24, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
