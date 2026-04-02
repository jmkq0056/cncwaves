package com.stripe.hardware.emv;

import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReaderSettings.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\bN\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 W2\u00020\u0001:\u0001WBÿ\u0001\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0015\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0018\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0019\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u001b\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u001cJ\u000b\u00107\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00108\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u00109\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010:\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010>\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010?\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010B\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010C\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010D\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010E\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010F\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010G\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010H\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010I\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010J\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010K\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010L\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010M\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010N\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010O\u001a\u0004\u0018\u00010\u0003HÆ\u0003Jµ\u0002\u0010P\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010Q\u001a\u00020R2\b\u0010S\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010T\u001a\u00020UHÖ\u0001J\t\u0010V\u001a\u00020\u0003HÖ\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0013\u0010\f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010\u001eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b \u0010\u001eR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\u001eR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u001eR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u001eR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u001eR\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\u001eR\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b&\u0010\u001eR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\u001eR\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b(\u0010\u001eR\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u001eR\u0013\u0010\b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u001eR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\u001eR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b,\u0010\u001eR\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\u001eR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b.\u0010\u001eR\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\u001eR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b0\u0010\u001eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\u001eR\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b2\u0010\u001eR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\u001eR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b4\u0010\u001eR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b5\u0010\u001eR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b6\u0010\u001e¨\u0006X"}, d2 = {"Lcom/stripe/hardware/emv/ReaderSettings;", "", "acquirerIdentifier", "", "terminalCountryCode", "transactionCurrencyCode", "transactionCurrencyExponent", "merchantNameAndLocation", "merchantIdentifier", "terminalIdentification", BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, "terminalType", "additionalTerminalCapabilities", "normalModeTimeout", "standbyModeTimeout", "bluetoothDiscoveryTimeout", "msrPinEntryTimeout", "firmwareFallbackEnabled", "customBluetoothNamePrefix", "customBluetoothSerialSuffix", "firmwareForceChipEnabled", "iccTransactionBeepEnabled", "keypadEventBeepEnabled", "spocModeEnabled", "domesticDebitAidList", "visaDynamicReaderLimit", "buzzerSoundEnabled", "configHash", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getAcquirerIdentifier", "()Ljava/lang/String;", "getAdditionalTerminalCapabilities", "getBluetoothDiscoveryTimeout", "getBuzzerSoundEnabled", "getConfigHash", "getCustomBluetoothNamePrefix", "getCustomBluetoothSerialSuffix", "getDomesticDebitAidList", "getFirmwareFallbackEnabled", "getFirmwareForceChipEnabled", "getIccTransactionBeepEnabled", "getKeypadEventBeepEnabled", "getMerchantIdentifier", "getMerchantNameAndLocation", "getMsrPinEntryTimeout", "getNormalModeTimeout", "getSpocModeEnabled", "getStandbyModeTimeout", "getTerminalCapabilities", "getTerminalCountryCode", "getTerminalIdentification", "getTerminalType", "getTransactionCurrencyCode", "getTransactionCurrencyExponent", "getVisaDynamicReaderLimit", "component1", "component10", "component11", "component12", "component13", "component14", "component15", "component16", "component17", "component18", "component19", "component2", "component20", "component21", "component22", "component23", "component24", "component25", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "", "toString", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ReaderSettings {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final String acquirerIdentifier;
    private final String additionalTerminalCapabilities;
    private final String bluetoothDiscoveryTimeout;
    private final String buzzerSoundEnabled;
    private final String configHash;
    private final String customBluetoothNamePrefix;
    private final String customBluetoothSerialSuffix;
    private final String domesticDebitAidList;
    private final String firmwareFallbackEnabled;
    private final String firmwareForceChipEnabled;
    private final String iccTransactionBeepEnabled;
    private final String keypadEventBeepEnabled;
    private final String merchantIdentifier;
    private final String merchantNameAndLocation;
    private final String msrPinEntryTimeout;
    private final String normalModeTimeout;
    private final String spocModeEnabled;
    private final String standbyModeTimeout;
    private final String terminalCapabilities;
    private final String terminalCountryCode;
    private final String terminalIdentification;
    private final String terminalType;
    private final String transactionCurrencyCode;
    private final String transactionCurrencyExponent;
    private final String visaDynamicReaderLimit;

    public static /* synthetic */ ReaderSettings copy$default(ReaderSettings readerSettings, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25, int i, Object obj) {
        String str26;
        String str27;
        String str28 = (i & 1) != 0 ? readerSettings.acquirerIdentifier : str;
        String str29 = (i & 2) != 0 ? readerSettings.terminalCountryCode : str2;
        String str30 = (i & 4) != 0 ? readerSettings.transactionCurrencyCode : str3;
        String str31 = (i & 8) != 0 ? readerSettings.transactionCurrencyExponent : str4;
        String str32 = (i & 16) != 0 ? readerSettings.merchantNameAndLocation : str5;
        String str33 = (i & 32) != 0 ? readerSettings.merchantIdentifier : str6;
        String str34 = (i & 64) != 0 ? readerSettings.terminalIdentification : str7;
        String str35 = (i & 128) != 0 ? readerSettings.terminalCapabilities : str8;
        String str36 = (i & 256) != 0 ? readerSettings.terminalType : str9;
        String str37 = (i & 512) != 0 ? readerSettings.additionalTerminalCapabilities : str10;
        String str38 = (i & 1024) != 0 ? readerSettings.normalModeTimeout : str11;
        String str39 = (i & 2048) != 0 ? readerSettings.standbyModeTimeout : str12;
        String str40 = (i & 4096) != 0 ? readerSettings.bluetoothDiscoveryTimeout : str13;
        String str41 = (i & 8192) != 0 ? readerSettings.msrPinEntryTimeout : str14;
        String str42 = str28;
        String str43 = (i & 16384) != 0 ? readerSettings.firmwareFallbackEnabled : str15;
        String str44 = (i & 32768) != 0 ? readerSettings.customBluetoothNamePrefix : str16;
        String str45 = (i & 65536) != 0 ? readerSettings.customBluetoothSerialSuffix : str17;
        String str46 = (i & 131072) != 0 ? readerSettings.firmwareForceChipEnabled : str18;
        String str47 = (i & 262144) != 0 ? readerSettings.iccTransactionBeepEnabled : str19;
        String str48 = (i & 524288) != 0 ? readerSettings.keypadEventBeepEnabled : str20;
        String str49 = (i & 1048576) != 0 ? readerSettings.spocModeEnabled : str21;
        String str50 = (i & 2097152) != 0 ? readerSettings.domesticDebitAidList : str22;
        String str51 = (i & 4194304) != 0 ? readerSettings.visaDynamicReaderLimit : str23;
        String str52 = (i & 8388608) != 0 ? readerSettings.buzzerSoundEnabled : str24;
        if ((i & 16777216) != 0) {
            str27 = str52;
            str26 = readerSettings.configHash;
        } else {
            str26 = str25;
            str27 = str52;
        }
        return readerSettings.copy(str42, str29, str30, str31, str32, str33, str34, str35, str36, str37, str38, str39, str40, str41, str43, str44, str45, str46, str47, str48, str49, str50, str51, str27, str26);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAcquirerIdentifier() {
        return this.acquirerIdentifier;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getAdditionalTerminalCapabilities() {
        return this.additionalTerminalCapabilities;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getNormalModeTimeout() {
        return this.normalModeTimeout;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final String getStandbyModeTimeout() {
        return this.standbyModeTimeout;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final String getBluetoothDiscoveryTimeout() {
        return this.bluetoothDiscoveryTimeout;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getMsrPinEntryTimeout() {
        return this.msrPinEntryTimeout;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getFirmwareFallbackEnabled() {
        return this.firmwareFallbackEnabled;
    }

    /* JADX INFO: renamed from: component16, reason: from getter */
    public final String getCustomBluetoothNamePrefix() {
        return this.customBluetoothNamePrefix;
    }

    /* JADX INFO: renamed from: component17, reason: from getter */
    public final String getCustomBluetoothSerialSuffix() {
        return this.customBluetoothSerialSuffix;
    }

    /* JADX INFO: renamed from: component18, reason: from getter */
    public final String getFirmwareForceChipEnabled() {
        return this.firmwareForceChipEnabled;
    }

    /* JADX INFO: renamed from: component19, reason: from getter */
    public final String getIccTransactionBeepEnabled() {
        return this.iccTransactionBeepEnabled;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getTerminalCountryCode() {
        return this.terminalCountryCode;
    }

    /* JADX INFO: renamed from: component20, reason: from getter */
    public final String getKeypadEventBeepEnabled() {
        return this.keypadEventBeepEnabled;
    }

    /* JADX INFO: renamed from: component21, reason: from getter */
    public final String getSpocModeEnabled() {
        return this.spocModeEnabled;
    }

    /* JADX INFO: renamed from: component22, reason: from getter */
    public final String getDomesticDebitAidList() {
        return this.domesticDebitAidList;
    }

    /* JADX INFO: renamed from: component23, reason: from getter */
    public final String getVisaDynamicReaderLimit() {
        return this.visaDynamicReaderLimit;
    }

    /* JADX INFO: renamed from: component24, reason: from getter */
    public final String getBuzzerSoundEnabled() {
        return this.buzzerSoundEnabled;
    }

    /* JADX INFO: renamed from: component25, reason: from getter */
    public final String getConfigHash() {
        return this.configHash;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getTransactionCurrencyCode() {
        return this.transactionCurrencyCode;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getTransactionCurrencyExponent() {
        return this.transactionCurrencyExponent;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getMerchantNameAndLocation() {
        return this.merchantNameAndLocation;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getMerchantIdentifier() {
        return this.merchantIdentifier;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getTerminalIdentification() {
        return this.terminalIdentification;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getTerminalCapabilities() {
        return this.terminalCapabilities;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getTerminalType() {
        return this.terminalType;
    }

    public final ReaderSettings copy(String acquirerIdentifier, String terminalCountryCode, String transactionCurrencyCode, String transactionCurrencyExponent, String merchantNameAndLocation, String merchantIdentifier, String terminalIdentification, String terminalCapabilities, String terminalType, String additionalTerminalCapabilities, String normalModeTimeout, String standbyModeTimeout, String bluetoothDiscoveryTimeout, String msrPinEntryTimeout, String firmwareFallbackEnabled, String customBluetoothNamePrefix, String customBluetoothSerialSuffix, String firmwareForceChipEnabled, String iccTransactionBeepEnabled, String keypadEventBeepEnabled, String spocModeEnabled, String domesticDebitAidList, String visaDynamicReaderLimit, String buzzerSoundEnabled, String configHash) {
        return new ReaderSettings(acquirerIdentifier, terminalCountryCode, transactionCurrencyCode, transactionCurrencyExponent, merchantNameAndLocation, merchantIdentifier, terminalIdentification, terminalCapabilities, terminalType, additionalTerminalCapabilities, normalModeTimeout, standbyModeTimeout, bluetoothDiscoveryTimeout, msrPinEntryTimeout, firmwareFallbackEnabled, customBluetoothNamePrefix, customBluetoothSerialSuffix, firmwareForceChipEnabled, iccTransactionBeepEnabled, keypadEventBeepEnabled, spocModeEnabled, domesticDebitAidList, visaDynamicReaderLimit, buzzerSoundEnabled, configHash);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ReaderSettings)) {
            return false;
        }
        ReaderSettings readerSettings = (ReaderSettings) other;
        return Intrinsics.areEqual(this.acquirerIdentifier, readerSettings.acquirerIdentifier) && Intrinsics.areEqual(this.terminalCountryCode, readerSettings.terminalCountryCode) && Intrinsics.areEqual(this.transactionCurrencyCode, readerSettings.transactionCurrencyCode) && Intrinsics.areEqual(this.transactionCurrencyExponent, readerSettings.transactionCurrencyExponent) && Intrinsics.areEqual(this.merchantNameAndLocation, readerSettings.merchantNameAndLocation) && Intrinsics.areEqual(this.merchantIdentifier, readerSettings.merchantIdentifier) && Intrinsics.areEqual(this.terminalIdentification, readerSettings.terminalIdentification) && Intrinsics.areEqual(this.terminalCapabilities, readerSettings.terminalCapabilities) && Intrinsics.areEqual(this.terminalType, readerSettings.terminalType) && Intrinsics.areEqual(this.additionalTerminalCapabilities, readerSettings.additionalTerminalCapabilities) && Intrinsics.areEqual(this.normalModeTimeout, readerSettings.normalModeTimeout) && Intrinsics.areEqual(this.standbyModeTimeout, readerSettings.standbyModeTimeout) && Intrinsics.areEqual(this.bluetoothDiscoveryTimeout, readerSettings.bluetoothDiscoveryTimeout) && Intrinsics.areEqual(this.msrPinEntryTimeout, readerSettings.msrPinEntryTimeout) && Intrinsics.areEqual(this.firmwareFallbackEnabled, readerSettings.firmwareFallbackEnabled) && Intrinsics.areEqual(this.customBluetoothNamePrefix, readerSettings.customBluetoothNamePrefix) && Intrinsics.areEqual(this.customBluetoothSerialSuffix, readerSettings.customBluetoothSerialSuffix) && Intrinsics.areEqual(this.firmwareForceChipEnabled, readerSettings.firmwareForceChipEnabled) && Intrinsics.areEqual(this.iccTransactionBeepEnabled, readerSettings.iccTransactionBeepEnabled) && Intrinsics.areEqual(this.keypadEventBeepEnabled, readerSettings.keypadEventBeepEnabled) && Intrinsics.areEqual(this.spocModeEnabled, readerSettings.spocModeEnabled) && Intrinsics.areEqual(this.domesticDebitAidList, readerSettings.domesticDebitAidList) && Intrinsics.areEqual(this.visaDynamicReaderLimit, readerSettings.visaDynamicReaderLimit) && Intrinsics.areEqual(this.buzzerSoundEnabled, readerSettings.buzzerSoundEnabled) && Intrinsics.areEqual(this.configHash, readerSettings.configHash);
    }

    public int hashCode() {
        String str = this.acquirerIdentifier;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.terminalCountryCode;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.transactionCurrencyCode;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.transactionCurrencyExponent;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.merchantNameAndLocation;
        int iHashCode5 = (iHashCode4 + (str5 == null ? 0 : str5.hashCode())) * 31;
        String str6 = this.merchantIdentifier;
        int iHashCode6 = (iHashCode5 + (str6 == null ? 0 : str6.hashCode())) * 31;
        String str7 = this.terminalIdentification;
        int iHashCode7 = (iHashCode6 + (str7 == null ? 0 : str7.hashCode())) * 31;
        String str8 = this.terminalCapabilities;
        int iHashCode8 = (iHashCode7 + (str8 == null ? 0 : str8.hashCode())) * 31;
        String str9 = this.terminalType;
        int iHashCode9 = (iHashCode8 + (str9 == null ? 0 : str9.hashCode())) * 31;
        String str10 = this.additionalTerminalCapabilities;
        int iHashCode10 = (iHashCode9 + (str10 == null ? 0 : str10.hashCode())) * 31;
        String str11 = this.normalModeTimeout;
        int iHashCode11 = (iHashCode10 + (str11 == null ? 0 : str11.hashCode())) * 31;
        String str12 = this.standbyModeTimeout;
        int iHashCode12 = (iHashCode11 + (str12 == null ? 0 : str12.hashCode())) * 31;
        String str13 = this.bluetoothDiscoveryTimeout;
        int iHashCode13 = (iHashCode12 + (str13 == null ? 0 : str13.hashCode())) * 31;
        String str14 = this.msrPinEntryTimeout;
        int iHashCode14 = (iHashCode13 + (str14 == null ? 0 : str14.hashCode())) * 31;
        String str15 = this.firmwareFallbackEnabled;
        int iHashCode15 = (iHashCode14 + (str15 == null ? 0 : str15.hashCode())) * 31;
        String str16 = this.customBluetoothNamePrefix;
        int iHashCode16 = (iHashCode15 + (str16 == null ? 0 : str16.hashCode())) * 31;
        String str17 = this.customBluetoothSerialSuffix;
        int iHashCode17 = (iHashCode16 + (str17 == null ? 0 : str17.hashCode())) * 31;
        String str18 = this.firmwareForceChipEnabled;
        int iHashCode18 = (iHashCode17 + (str18 == null ? 0 : str18.hashCode())) * 31;
        String str19 = this.iccTransactionBeepEnabled;
        int iHashCode19 = (iHashCode18 + (str19 == null ? 0 : str19.hashCode())) * 31;
        String str20 = this.keypadEventBeepEnabled;
        int iHashCode20 = (iHashCode19 + (str20 == null ? 0 : str20.hashCode())) * 31;
        String str21 = this.spocModeEnabled;
        int iHashCode21 = (iHashCode20 + (str21 == null ? 0 : str21.hashCode())) * 31;
        String str22 = this.domesticDebitAidList;
        int iHashCode22 = (iHashCode21 + (str22 == null ? 0 : str22.hashCode())) * 31;
        String str23 = this.visaDynamicReaderLimit;
        int iHashCode23 = (iHashCode22 + (str23 == null ? 0 : str23.hashCode())) * 31;
        String str24 = this.buzzerSoundEnabled;
        int iHashCode24 = (iHashCode23 + (str24 == null ? 0 : str24.hashCode())) * 31;
        String str25 = this.configHash;
        return iHashCode24 + (str25 != null ? str25.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ReaderSettings(acquirerIdentifier=");
        sb.append(this.acquirerIdentifier).append(", terminalCountryCode=").append(this.terminalCountryCode).append(", transactionCurrencyCode=").append(this.transactionCurrencyCode).append(", transactionCurrencyExponent=").append(this.transactionCurrencyExponent).append(", merchantNameAndLocation=").append(this.merchantNameAndLocation).append(", merchantIdentifier=").append(this.merchantIdentifier).append(", terminalIdentification=").append(this.terminalIdentification).append(", terminalCapabilities=").append(this.terminalCapabilities).append(", terminalType=").append(this.terminalType).append(", additionalTerminalCapabilities=").append(this.additionalTerminalCapabilities).append(", normalModeTimeout=").append(this.normalModeTimeout).append(", standbyModeTimeout=");
        sb.append(this.standbyModeTimeout).append(", bluetoothDiscoveryTimeout=").append(this.bluetoothDiscoveryTimeout).append(", msrPinEntryTimeout=").append(this.msrPinEntryTimeout).append(", firmwareFallbackEnabled=").append(this.firmwareFallbackEnabled).append(", customBluetoothNamePrefix=").append(this.customBluetoothNamePrefix).append(", customBluetoothSerialSuffix=").append(this.customBluetoothSerialSuffix).append(", firmwareForceChipEnabled=").append(this.firmwareForceChipEnabled).append(", iccTransactionBeepEnabled=").append(this.iccTransactionBeepEnabled).append(", keypadEventBeepEnabled=").append(this.keypadEventBeepEnabled).append(", spocModeEnabled=").append(this.spocModeEnabled).append(", domesticDebitAidList=").append(this.domesticDebitAidList).append(", visaDynamicReaderLimit=").append(this.visaDynamicReaderLimit);
        sb.append(", buzzerSoundEnabled=").append(this.buzzerSoundEnabled).append(", configHash=").append(this.configHash).append(')');
        return sb.toString();
    }

    public ReaderSettings(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, String str15, String str16, String str17, String str18, String str19, String str20, String str21, String str22, String str23, String str24, String str25) {
        this.acquirerIdentifier = str;
        this.terminalCountryCode = str2;
        this.transactionCurrencyCode = str3;
        this.transactionCurrencyExponent = str4;
        this.merchantNameAndLocation = str5;
        this.merchantIdentifier = str6;
        this.terminalIdentification = str7;
        this.terminalCapabilities = str8;
        this.terminalType = str9;
        this.additionalTerminalCapabilities = str10;
        this.normalModeTimeout = str11;
        this.standbyModeTimeout = str12;
        this.bluetoothDiscoveryTimeout = str13;
        this.msrPinEntryTimeout = str14;
        this.firmwareFallbackEnabled = str15;
        this.customBluetoothNamePrefix = str16;
        this.customBluetoothSerialSuffix = str17;
        this.firmwareForceChipEnabled = str18;
        this.iccTransactionBeepEnabled = str19;
        this.keypadEventBeepEnabled = str20;
        this.spocModeEnabled = str21;
        this.domesticDebitAidList = str22;
        this.visaDynamicReaderLimit = str23;
        this.buzzerSoundEnabled = str24;
        this.configHash = str25;
    }

    public final String getAcquirerIdentifier() {
        return this.acquirerIdentifier;
    }

    public final String getTerminalCountryCode() {
        return this.terminalCountryCode;
    }

    public final String getTransactionCurrencyCode() {
        return this.transactionCurrencyCode;
    }

    public final String getTransactionCurrencyExponent() {
        return this.transactionCurrencyExponent;
    }

    public final String getMerchantNameAndLocation() {
        return this.merchantNameAndLocation;
    }

    public final String getMerchantIdentifier() {
        return this.merchantIdentifier;
    }

    public final String getTerminalIdentification() {
        return this.terminalIdentification;
    }

    public final String getTerminalCapabilities() {
        return this.terminalCapabilities;
    }

    public final String getTerminalType() {
        return this.terminalType;
    }

    public final String getAdditionalTerminalCapabilities() {
        return this.additionalTerminalCapabilities;
    }

    public final String getNormalModeTimeout() {
        return this.normalModeTimeout;
    }

    public final String getStandbyModeTimeout() {
        return this.standbyModeTimeout;
    }

    public final String getBluetoothDiscoveryTimeout() {
        return this.bluetoothDiscoveryTimeout;
    }

    public final String getMsrPinEntryTimeout() {
        return this.msrPinEntryTimeout;
    }

    public final String getFirmwareFallbackEnabled() {
        return this.firmwareFallbackEnabled;
    }

    public final String getCustomBluetoothNamePrefix() {
        return this.customBluetoothNamePrefix;
    }

    public final String getCustomBluetoothSerialSuffix() {
        return this.customBluetoothSerialSuffix;
    }

    public final String getFirmwareForceChipEnabled() {
        return this.firmwareForceChipEnabled;
    }

    public final String getIccTransactionBeepEnabled() {
        return this.iccTransactionBeepEnabled;
    }

    public final String getKeypadEventBeepEnabled() {
        return this.keypadEventBeepEnabled;
    }

    public final String getSpocModeEnabled() {
        return this.spocModeEnabled;
    }

    public final String getDomesticDebitAidList() {
        return this.domesticDebitAidList;
    }

    public final String getVisaDynamicReaderLimit() {
        return this.visaDynamicReaderLimit;
    }

    public final String getBuzzerSoundEnabled() {
        return this.buzzerSoundEnabled;
    }

    public final String getConfigHash() {
        return this.configHash;
    }

    /* JADX INFO: compiled from: ReaderSettings.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0019\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J²\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0006¨\u0006\u001f"}, d2 = {"Lcom/stripe/hardware/emv/ReaderSettings$Companion;", "", "()V", "create", "Lcom/stripe/hardware/emv/ReaderSettings;", "acquirerIdentifier", "", "terminalCountryCode", "transactionCurrencyCode", "transactionCurrencyExponent", "merchantNameAndLocation", "merchantIdentifier", "terminalIdentification", BbposDeviceControllerImpl.TERMINAL_CAPABILITIES_PARAM_NAME, "terminalType", "additionalTerminalCapabilities", "normalModeTimeout", "standbyModeTimeout", "bluetoothDiscoveryTimeout", "msrPinEntryTimeout", "firmwareFallbackEnabled", "customBluetoothNamePrefix", "customBluetoothSerialSuffix", "firmwareForceChipEnabled", "iccTransactionBeepEnabled", "keypadEventBeepEnabled", "spocModeEnabled", "domesticDebitAidList", "visaDynamicReaderLimit", "buzzerSoundEnabled", "configHash", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ReaderSettings create(String acquirerIdentifier, String terminalCountryCode, String transactionCurrencyCode, String transactionCurrencyExponent, String merchantNameAndLocation, String merchantIdentifier, String terminalIdentification, String terminalCapabilities, String terminalType, String additionalTerminalCapabilities, String normalModeTimeout, String standbyModeTimeout, String bluetoothDiscoveryTimeout, String msrPinEntryTimeout, String firmwareFallbackEnabled, String customBluetoothNamePrefix, String customBluetoothSerialSuffix, String firmwareForceChipEnabled, String iccTransactionBeepEnabled, String keypadEventBeepEnabled, String spocModeEnabled, String domesticDebitAidList, String visaDynamicReaderLimit, String buzzerSoundEnabled, String configHash) {
            return new ReaderSettings(acquirerIdentifier, terminalCountryCode, transactionCurrencyCode, transactionCurrencyExponent, merchantNameAndLocation, merchantIdentifier, terminalIdentification, terminalCapabilities, terminalType, additionalTerminalCapabilities, normalModeTimeout, standbyModeTimeout, bluetoothDiscoveryTimeout, msrPinEntryTimeout, firmwareFallbackEnabled, customBluetoothNamePrefix, customBluetoothSerialSuffix, firmwareForceChipEnabled, iccTransactionBeepEnabled, keypadEventBeepEnabled, spocModeEnabled, domesticDebitAidList, visaDynamicReaderLimit, buzzerSoundEnabled, configHash);
        }
    }
}
