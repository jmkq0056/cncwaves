package com.stripe.proto.model.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.LoggingConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
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

/* JADX INFO: compiled from: MobileClientConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 $2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002#$B\u0085\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0018¢\u0006\u0002\u0010\u0019J\u0086\u0001\u0010\u001a\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0096\u0002J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020\u0002H\u0016J\b\u0010\"\u001a\u00020\bH\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u00148\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00168\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcom/stripe/proto/model/config/MobileClientConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/MobileClientConfig$Builder;", "client_visual_config", "Lcom/stripe/proto/model/config/ClientVisualConfig;", "client_checkout_options", "Lcom/stripe/proto/model/config/ClientCheckoutOptions;", "client_config_version", "", "bbpos_config", "Lcom/stripe/proto/model/config/BBPOSConfig;", "tipping_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", OfflineStorageConstantsKt.OFFLINE_CONFIG, "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "bluetooth_auto_reconnect_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usb_auto_reconnect_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "forms_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;", "logging_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/config/ClientVisualConfig;Lcom/stripe/proto/model/config/ClientCheckoutOptions;Ljava/lang/String;Lcom/stripe/proto/model/config/BBPOSConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MobileClientConfig extends Message<MobileClientConfig, Builder> {
    public static final ProtoAdapter<MobileClientConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.config.BBPOSConfig#ADAPTER", jsonName = "bbposConfig", oneofName = "mobile_configs", schemaIndex = 3, tag = 4)
    public final BBPOSConfig bbpos_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb#ADAPTER", jsonName = "bluetoothAutoReconnectConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final BluetoothAutoReconnectConfigPb bluetooth_auto_reconnect_config;

    @WireField(adapter = "com.stripe.proto.model.config.ClientCheckoutOptions#ADAPTER", jsonName = "clientCheckoutOptions", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ClientCheckoutOptions client_checkout_options;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "clientConfigVersion", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String client_config_version;

    @WireField(adapter = "com.stripe.proto.model.config.ClientVisualConfig#ADAPTER", jsonName = "clientVisualConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final ClientVisualConfig client_visual_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.FormsConfigPb#ADAPTER", jsonName = "formsConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final FormsConfigPb forms_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.LoggingConfigPb#ADAPTER", jsonName = "loggingConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final LoggingConfigPb logging_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.OfflineConfigPb#ADAPTER", jsonName = "offlineConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final OfflineConfigPb offline_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb#ADAPTER", jsonName = "tippingConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final TippingConfigPb tipping_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb#ADAPTER", jsonName = "usbAutoReconnectConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final UsbAutoReconnectConfigPb usb_auto_reconnect_config;

    public MobileClientConfig() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public /* synthetic */ MobileClientConfig(ClientVisualConfig clientVisualConfig, ClientCheckoutOptions clientCheckoutOptions, String str, BBPOSConfig bBPOSConfig, TippingConfigPb tippingConfigPb, OfflineConfigPb offlineConfigPb, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb, FormsConfigPb formsConfigPb, LoggingConfigPb loggingConfigPb, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : clientVisualConfig, (i & 2) != 0 ? null : clientCheckoutOptions, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? null : bBPOSConfig, (i & 16) != 0 ? null : tippingConfigPb, (i & 32) != 0 ? null : offlineConfigPb, (i & 64) != 0 ? null : bluetoothAutoReconnectConfigPb, (i & 128) != 0 ? null : usbAutoReconnectConfigPb, (i & 256) != 0 ? null : formsConfigPb, (i & 512) != 0 ? null : loggingConfigPb, (i & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MobileClientConfig(ClientVisualConfig clientVisualConfig, ClientCheckoutOptions clientCheckoutOptions, String client_config_version, BBPOSConfig bBPOSConfig, TippingConfigPb tippingConfigPb, OfflineConfigPb offlineConfigPb, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb, FormsConfigPb formsConfigPb, LoggingConfigPb loggingConfigPb, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(client_config_version, "client_config_version");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.client_visual_config = clientVisualConfig;
        this.client_checkout_options = clientCheckoutOptions;
        this.client_config_version = client_config_version;
        this.bbpos_config = bBPOSConfig;
        this.tipping_config = tippingConfigPb;
        this.offline_config = offlineConfigPb;
        this.bluetooth_auto_reconnect_config = bluetoothAutoReconnectConfigPb;
        this.usb_auto_reconnect_config = usbAutoReconnectConfigPb;
        this.forms_config = formsConfigPb;
        this.logging_config = loggingConfigPb;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.client_visual_config = this.client_visual_config;
        builder.client_checkout_options = this.client_checkout_options;
        builder.client_config_version = this.client_config_version;
        builder.bbpos_config = this.bbpos_config;
        builder.tipping_config = this.tipping_config;
        builder.offline_config = this.offline_config;
        builder.bluetooth_auto_reconnect_config = this.bluetooth_auto_reconnect_config;
        builder.usb_auto_reconnect_config = this.usb_auto_reconnect_config;
        builder.forms_config = this.forms_config;
        builder.logging_config = this.logging_config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof MobileClientConfig)) {
            return false;
        }
        MobileClientConfig mobileClientConfig = (MobileClientConfig) other;
        return Intrinsics.areEqual(unknownFields(), mobileClientConfig.unknownFields()) && Intrinsics.areEqual(this.client_visual_config, mobileClientConfig.client_visual_config) && Intrinsics.areEqual(this.client_checkout_options, mobileClientConfig.client_checkout_options) && Intrinsics.areEqual(this.client_config_version, mobileClientConfig.client_config_version) && Intrinsics.areEqual(this.bbpos_config, mobileClientConfig.bbpos_config) && Intrinsics.areEqual(this.tipping_config, mobileClientConfig.tipping_config) && Intrinsics.areEqual(this.offline_config, mobileClientConfig.offline_config) && Intrinsics.areEqual(this.bluetooth_auto_reconnect_config, mobileClientConfig.bluetooth_auto_reconnect_config) && Intrinsics.areEqual(this.usb_auto_reconnect_config, mobileClientConfig.usb_auto_reconnect_config) && Intrinsics.areEqual(this.forms_config, mobileClientConfig.forms_config) && Intrinsics.areEqual(this.logging_config, mobileClientConfig.logging_config);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        ClientVisualConfig clientVisualConfig = this.client_visual_config;
        int iHashCode2 = (iHashCode + (clientVisualConfig != null ? clientVisualConfig.hashCode() : 0)) * 37;
        ClientCheckoutOptions clientCheckoutOptions = this.client_checkout_options;
        int iHashCode3 = (((iHashCode2 + (clientCheckoutOptions != null ? clientCheckoutOptions.hashCode() : 0)) * 37) + this.client_config_version.hashCode()) * 37;
        BBPOSConfig bBPOSConfig = this.bbpos_config;
        int iHashCode4 = (iHashCode3 + (bBPOSConfig != null ? bBPOSConfig.hashCode() : 0)) * 37;
        TippingConfigPb tippingConfigPb = this.tipping_config;
        int iHashCode5 = (iHashCode4 + (tippingConfigPb != null ? tippingConfigPb.hashCode() : 0)) * 37;
        OfflineConfigPb offlineConfigPb = this.offline_config;
        int iHashCode6 = (iHashCode5 + (offlineConfigPb != null ? offlineConfigPb.hashCode() : 0)) * 37;
        BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb = this.bluetooth_auto_reconnect_config;
        int iHashCode7 = (iHashCode6 + (bluetoothAutoReconnectConfigPb != null ? bluetoothAutoReconnectConfigPb.hashCode() : 0)) * 37;
        UsbAutoReconnectConfigPb usbAutoReconnectConfigPb = this.usb_auto_reconnect_config;
        int iHashCode8 = (iHashCode7 + (usbAutoReconnectConfigPb != null ? usbAutoReconnectConfigPb.hashCode() : 0)) * 37;
        FormsConfigPb formsConfigPb = this.forms_config;
        int iHashCode9 = (iHashCode8 + (formsConfigPb != null ? formsConfigPb.hashCode() : 0)) * 37;
        LoggingConfigPb loggingConfigPb = this.logging_config;
        int iHashCode10 = iHashCode9 + (loggingConfigPb != null ? loggingConfigPb.hashCode() : 0);
        this.hashCode = iHashCode10;
        return iHashCode10;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.client_visual_config != null) {
            arrayList.add("client_visual_config=" + this.client_visual_config);
        }
        if (this.client_checkout_options != null) {
            arrayList.add("client_checkout_options=" + this.client_checkout_options);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("client_config_version=" + Internal.sanitize(this.client_config_version));
        if (this.bbpos_config != null) {
            arrayList2.add("bbpos_config=" + this.bbpos_config);
        }
        if (this.tipping_config != null) {
            arrayList2.add("tipping_config=" + this.tipping_config);
        }
        if (this.offline_config != null) {
            arrayList2.add("offline_config=" + this.offline_config);
        }
        if (this.bluetooth_auto_reconnect_config != null) {
            arrayList2.add("bluetooth_auto_reconnect_config=" + this.bluetooth_auto_reconnect_config);
        }
        if (this.usb_auto_reconnect_config != null) {
            arrayList2.add("usb_auto_reconnect_config=" + this.usb_auto_reconnect_config);
        }
        if (this.forms_config != null) {
            arrayList2.add("forms_config=" + this.forms_config);
        }
        if (this.logging_config != null) {
            arrayList2.add("logging_config=" + this.logging_config);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "MobileClientConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ MobileClientConfig copy$default(MobileClientConfig mobileClientConfig, ClientVisualConfig clientVisualConfig, ClientCheckoutOptions clientCheckoutOptions, String str, BBPOSConfig bBPOSConfig, TippingConfigPb tippingConfigPb, OfflineConfigPb offlineConfigPb, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb, FormsConfigPb formsConfigPb, LoggingConfigPb loggingConfigPb, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            clientVisualConfig = mobileClientConfig.client_visual_config;
        }
        if ((i & 2) != 0) {
            clientCheckoutOptions = mobileClientConfig.client_checkout_options;
        }
        if ((i & 4) != 0) {
            str = mobileClientConfig.client_config_version;
        }
        if ((i & 8) != 0) {
            bBPOSConfig = mobileClientConfig.bbpos_config;
        }
        if ((i & 16) != 0) {
            tippingConfigPb = mobileClientConfig.tipping_config;
        }
        if ((i & 32) != 0) {
            offlineConfigPb = mobileClientConfig.offline_config;
        }
        if ((i & 64) != 0) {
            bluetoothAutoReconnectConfigPb = mobileClientConfig.bluetooth_auto_reconnect_config;
        }
        if ((i & 128) != 0) {
            usbAutoReconnectConfigPb = mobileClientConfig.usb_auto_reconnect_config;
        }
        if ((i & 256) != 0) {
            formsConfigPb = mobileClientConfig.forms_config;
        }
        if ((i & 512) != 0) {
            loggingConfigPb = mobileClientConfig.logging_config;
        }
        if ((i & 1024) != 0) {
            byteString = mobileClientConfig.unknownFields();
        }
        LoggingConfigPb loggingConfigPb2 = loggingConfigPb;
        ByteString byteString2 = byteString;
        UsbAutoReconnectConfigPb usbAutoReconnectConfigPb2 = usbAutoReconnectConfigPb;
        FormsConfigPb formsConfigPb2 = formsConfigPb;
        OfflineConfigPb offlineConfigPb2 = offlineConfigPb;
        BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb2 = bluetoothAutoReconnectConfigPb;
        TippingConfigPb tippingConfigPb2 = tippingConfigPb;
        String str2 = str;
        return mobileClientConfig.copy(clientVisualConfig, clientCheckoutOptions, str2, bBPOSConfig, tippingConfigPb2, offlineConfigPb2, bluetoothAutoReconnectConfigPb2, usbAutoReconnectConfigPb2, formsConfigPb2, loggingConfigPb2, byteString2);
    }

    public final MobileClientConfig copy(ClientVisualConfig client_visual_config, ClientCheckoutOptions client_checkout_options, String client_config_version, BBPOSConfig bbpos_config, TippingConfigPb tipping_config, OfflineConfigPb offline_config, BluetoothAutoReconnectConfigPb bluetooth_auto_reconnect_config, UsbAutoReconnectConfigPb usb_auto_reconnect_config, FormsConfigPb forms_config, LoggingConfigPb logging_config, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(client_config_version, "client_config_version");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new MobileClientConfig(client_visual_config, client_checkout_options, client_config_version, bbpos_config, tipping_config, offline_config, bluetooth_auto_reconnect_config, usb_auto_reconnect_config, forms_config, logging_config, unknownFields);
    }

    /* JADX INFO: compiled from: MobileClientConfig.kt */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\u0018\u001a\u00020\u0002H\u0016J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rJ\u0010\u0010\u000e\u001a\u00020\u00002\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013J\u0010\u0010\u0014\u001a\u00020\u00002\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015J\u0010\u0010\u0016\u001a\u00020\u00002\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/model/config/MobileClientConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/MobileClientConfig;", "()V", "bbpos_config", "Lcom/stripe/proto/model/config/BBPOSConfig;", "bluetooth_auto_reconnect_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "client_checkout_options", "Lcom/stripe/proto/model/config/ClientCheckoutOptions;", "client_config_version", "", "client_visual_config", "Lcom/stripe/proto/model/config/ClientVisualConfig;", "forms_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/FormsConfigPb;", "logging_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/LoggingConfigPb;", OfflineStorageConstantsKt.OFFLINE_CONFIG, "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;", "tipping_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "usb_auto_reconnect_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<MobileClientConfig, Builder> {
        public BBPOSConfig bbpos_config;
        public BluetoothAutoReconnectConfigPb bluetooth_auto_reconnect_config;
        public ClientCheckoutOptions client_checkout_options;
        public String client_config_version = "";
        public ClientVisualConfig client_visual_config;
        public FormsConfigPb forms_config;
        public LoggingConfigPb logging_config;
        public OfflineConfigPb offline_config;
        public TippingConfigPb tipping_config;
        public UsbAutoReconnectConfigPb usb_auto_reconnect_config;

        public final Builder client_visual_config(ClientVisualConfig client_visual_config) {
            this.client_visual_config = client_visual_config;
            return this;
        }

        public final Builder client_checkout_options(ClientCheckoutOptions client_checkout_options) {
            this.client_checkout_options = client_checkout_options;
            return this;
        }

        public final Builder client_config_version(String client_config_version) {
            Intrinsics.checkNotNullParameter(client_config_version, "client_config_version");
            this.client_config_version = client_config_version;
            return this;
        }

        public final Builder tipping_config(TippingConfigPb tipping_config) {
            this.tipping_config = tipping_config;
            return this;
        }

        public final Builder offline_config(OfflineConfigPb offline_config) {
            this.offline_config = offline_config;
            return this;
        }

        public final Builder bluetooth_auto_reconnect_config(BluetoothAutoReconnectConfigPb bluetooth_auto_reconnect_config) {
            this.bluetooth_auto_reconnect_config = bluetooth_auto_reconnect_config;
            return this;
        }

        public final Builder usb_auto_reconnect_config(UsbAutoReconnectConfigPb usb_auto_reconnect_config) {
            this.usb_auto_reconnect_config = usb_auto_reconnect_config;
            return this;
        }

        public final Builder forms_config(FormsConfigPb forms_config) {
            this.forms_config = forms_config;
            return this;
        }

        public final Builder logging_config(LoggingConfigPb logging_config) {
            this.logging_config = logging_config;
            return this;
        }

        public final Builder bbpos_config(BBPOSConfig bbpos_config) {
            this.bbpos_config = bbpos_config;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public MobileClientConfig build() {
            return new MobileClientConfig(this.client_visual_config, this.client_checkout_options, this.client_config_version, this.bbpos_config, this.tipping_config, this.offline_config, this.bluetooth_auto_reconnect_config, this.usb_auto_reconnect_config, this.forms_config, this.logging_config, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: MobileClientConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/MobileClientConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/MobileClientConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/MobileClientConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ MobileClientConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(MobileClientConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<MobileClientConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.MobileClientConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(MobileClientConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.client_visual_config != null) {
                    size += ClientVisualConfig.ADAPTER.encodedSizeWithTag(1, value.client_visual_config);
                }
                if (value.client_checkout_options != null) {
                    size += ClientCheckoutOptions.ADAPTER.encodedSizeWithTag(2, value.client_checkout_options);
                }
                if (!Intrinsics.areEqual(value.client_config_version, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.client_config_version);
                }
                int iEncodedSizeWithTag = size + BBPOSConfig.ADAPTER.encodedSizeWithTag(4, value.bbpos_config);
                if (value.tipping_config != null) {
                    iEncodedSizeWithTag += TippingConfigPb.ADAPTER.encodedSizeWithTag(5, value.tipping_config);
                }
                if (value.offline_config != null) {
                    iEncodedSizeWithTag += OfflineConfigPb.ADAPTER.encodedSizeWithTag(6, value.offline_config);
                }
                if (value.bluetooth_auto_reconnect_config != null) {
                    iEncodedSizeWithTag += BluetoothAutoReconnectConfigPb.ADAPTER.encodedSizeWithTag(7, value.bluetooth_auto_reconnect_config);
                }
                if (value.usb_auto_reconnect_config != null) {
                    iEncodedSizeWithTag += UsbAutoReconnectConfigPb.ADAPTER.encodedSizeWithTag(8, value.usb_auto_reconnect_config);
                }
                if (value.forms_config != null) {
                    iEncodedSizeWithTag += FormsConfigPb.ADAPTER.encodedSizeWithTag(9, value.forms_config);
                }
                return value.logging_config != null ? iEncodedSizeWithTag + LoggingConfigPb.ADAPTER.encodedSizeWithTag(10, value.logging_config) : iEncodedSizeWithTag;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, MobileClientConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.client_visual_config != null) {
                    ClientVisualConfig.ADAPTER.encodeWithTag(writer, 1, value.client_visual_config);
                }
                if (value.client_checkout_options != null) {
                    ClientCheckoutOptions.ADAPTER.encodeWithTag(writer, 2, value.client_checkout_options);
                }
                if (!Intrinsics.areEqual(value.client_config_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.client_config_version);
                }
                if (value.tipping_config != null) {
                    TippingConfigPb.ADAPTER.encodeWithTag(writer, 5, value.tipping_config);
                }
                if (value.offline_config != null) {
                    OfflineConfigPb.ADAPTER.encodeWithTag(writer, 6, value.offline_config);
                }
                if (value.bluetooth_auto_reconnect_config != null) {
                    BluetoothAutoReconnectConfigPb.ADAPTER.encodeWithTag(writer, 7, value.bluetooth_auto_reconnect_config);
                }
                if (value.usb_auto_reconnect_config != null) {
                    UsbAutoReconnectConfigPb.ADAPTER.encodeWithTag(writer, 8, value.usb_auto_reconnect_config);
                }
                if (value.forms_config != null) {
                    FormsConfigPb.ADAPTER.encodeWithTag(writer, 9, value.forms_config);
                }
                if (value.logging_config != null) {
                    LoggingConfigPb.ADAPTER.encodeWithTag(writer, 10, value.logging_config);
                }
                BBPOSConfig.ADAPTER.encodeWithTag(writer, 4, value.bbpos_config);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, MobileClientConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                BBPOSConfig.ADAPTER.encodeWithTag(writer, 4, value.bbpos_config);
                if (value.logging_config != null) {
                    LoggingConfigPb.ADAPTER.encodeWithTag(writer, 10, value.logging_config);
                }
                if (value.forms_config != null) {
                    FormsConfigPb.ADAPTER.encodeWithTag(writer, 9, value.forms_config);
                }
                if (value.usb_auto_reconnect_config != null) {
                    UsbAutoReconnectConfigPb.ADAPTER.encodeWithTag(writer, 8, value.usb_auto_reconnect_config);
                }
                if (value.bluetooth_auto_reconnect_config != null) {
                    BluetoothAutoReconnectConfigPb.ADAPTER.encodeWithTag(writer, 7, value.bluetooth_auto_reconnect_config);
                }
                if (value.offline_config != null) {
                    OfflineConfigPb.ADAPTER.encodeWithTag(writer, 6, value.offline_config);
                }
                if (value.tipping_config != null) {
                    TippingConfigPb.ADAPTER.encodeWithTag(writer, 5, value.tipping_config);
                }
                if (!Intrinsics.areEqual(value.client_config_version, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.client_config_version);
                }
                if (value.client_checkout_options != null) {
                    ClientCheckoutOptions.ADAPTER.encodeWithTag(writer, 2, value.client_checkout_options);
                }
                if (value.client_visual_config != null) {
                    ClientVisualConfig.ADAPTER.encodeWithTag(writer, 1, value.client_visual_config);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public MobileClientConfig redact(MobileClientConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ClientVisualConfig clientVisualConfig = value.client_visual_config;
                ClientVisualConfig clientVisualConfigRedact = clientVisualConfig != null ? ClientVisualConfig.ADAPTER.redact(clientVisualConfig) : null;
                ClientCheckoutOptions clientCheckoutOptions = value.client_checkout_options;
                ClientCheckoutOptions clientCheckoutOptionsRedact = clientCheckoutOptions != null ? ClientCheckoutOptions.ADAPTER.redact(clientCheckoutOptions) : null;
                BBPOSConfig bBPOSConfig = value.bbpos_config;
                BBPOSConfig bBPOSConfigRedact = bBPOSConfig != null ? BBPOSConfig.ADAPTER.redact(bBPOSConfig) : null;
                TippingConfigPb tippingConfigPb = value.tipping_config;
                TippingConfigPb tippingConfigPbRedact = tippingConfigPb != null ? TippingConfigPb.ADAPTER.redact(tippingConfigPb) : null;
                OfflineConfigPb offlineConfigPb = value.offline_config;
                OfflineConfigPb offlineConfigPbRedact = offlineConfigPb != null ? OfflineConfigPb.ADAPTER.redact(offlineConfigPb) : null;
                BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb = value.bluetooth_auto_reconnect_config;
                BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPbRedact = bluetoothAutoReconnectConfigPb != null ? BluetoothAutoReconnectConfigPb.ADAPTER.redact(bluetoothAutoReconnectConfigPb) : null;
                UsbAutoReconnectConfigPb usbAutoReconnectConfigPb = value.usb_auto_reconnect_config;
                UsbAutoReconnectConfigPb usbAutoReconnectConfigPbRedact = usbAutoReconnectConfigPb != null ? UsbAutoReconnectConfigPb.ADAPTER.redact(usbAutoReconnectConfigPb) : null;
                FormsConfigPb formsConfigPb = value.forms_config;
                FormsConfigPb formsConfigPbRedact = formsConfigPb != null ? FormsConfigPb.ADAPTER.redact(formsConfigPb) : null;
                LoggingConfigPb loggingConfigPb = value.logging_config;
                return MobileClientConfig.copy$default(value, clientVisualConfigRedact, clientCheckoutOptionsRedact, null, bBPOSConfigRedact, tippingConfigPbRedact, offlineConfigPbRedact, bluetoothAutoReconnectConfigPbRedact, usbAutoReconnectConfigPbRedact, formsConfigPbRedact, loggingConfigPb != null ? LoggingConfigPb.ADAPTER.redact(loggingConfigPb) : null, ByteString.EMPTY, 4, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public MobileClientConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ClientVisualConfig clientVisualConfigDecode = null;
                BBPOSConfig bBPOSConfigDecode = null;
                TippingConfigPb tippingConfigPbDecode = null;
                OfflineConfigPb offlineConfigPbDecode = null;
                BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPbDecode = null;
                UsbAutoReconnectConfigPb usbAutoReconnectConfigPbDecode = null;
                FormsConfigPb formsConfigPbDecode = null;
                LoggingConfigPb loggingConfigPbDecode = null;
                String strDecode = "";
                ClientCheckoutOptions clientCheckoutOptionsDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                clientVisualConfigDecode = ClientVisualConfig.ADAPTER.decode(reader);
                                break;
                            case 2:
                                clientCheckoutOptionsDecode = ClientCheckoutOptions.ADAPTER.decode(reader);
                                break;
                            case 3:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                bBPOSConfigDecode = BBPOSConfig.ADAPTER.decode(reader);
                                break;
                            case 5:
                                tippingConfigPbDecode = TippingConfigPb.ADAPTER.decode(reader);
                                break;
                            case 6:
                                offlineConfigPbDecode = OfflineConfigPb.ADAPTER.decode(reader);
                                break;
                            case 7:
                                bluetoothAutoReconnectConfigPbDecode = BluetoothAutoReconnectConfigPb.ADAPTER.decode(reader);
                                break;
                            case 8:
                                usbAutoReconnectConfigPbDecode = UsbAutoReconnectConfigPb.ADAPTER.decode(reader);
                                break;
                            case 9:
                                formsConfigPbDecode = FormsConfigPb.ADAPTER.decode(reader);
                                break;
                            case 10:
                                loggingConfigPbDecode = LoggingConfigPb.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new MobileClientConfig(clientVisualConfigDecode, clientCheckoutOptionsDecode, strDecode, bBPOSConfigDecode, tippingConfigPbDecode, offlineConfigPbDecode, bluetoothAutoReconnectConfigPbDecode, usbAutoReconnectConfigPbDecode, formsConfigPbDecode, loggingConfigPbDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
