package com.stripe.proto.model.offline_mode;

import com.google.firebase.analytics.FirebaseAnalytics;
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
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.sun.jna.platform.win32.WinError;
import com.sun.jna.platform.win32.WinUser;
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

/* JADX INFO: compiled from: OfflineLocation.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fBq\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\b\b\u0002\u0010\u0013\u001a\u00020\u0014¢\u0006\u0002\u0010\u0015Jr\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00122\b\b\u0002\u0010\u0013\u001a\u00020\u0014J\u0013\u0010\u0017\u001a\u00020\u00122\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0002H\u0016J\b\u0010\u001d\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00108\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0011\u001a\u00020\u00128\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;", OfflineStorageConstantsKt.ID, "", OfflineStorageConstantsKt.ACCOUNT_ID, "", "created_at", "last_activated_at", "tipping_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "bluetooth_auto_reconnect_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "usb_auto_reconnect_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "full_location", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "offline_enabled", "", "unknownFields", "Lokio/ByteString;", "(JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/model/merchant/ApiLocationPb;ZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineLocation extends Message<OfflineLocation, Builder> {
    public static final ProtoAdapter<OfflineLocation> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "accountId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String account_id;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb#ADAPTER", jsonName = "bluetoothAutoReconnectConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final BluetoothAutoReconnectConfigPb bluetooth_auto_reconnect_config;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "createdAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final long created_at;

    @WireField(adapter = "com.stripe.proto.model.merchant.ApiLocationPb#ADAPTER", jsonName = FirebaseAnalytics.Param.LOCATION, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final ApiLocationPb full_location;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", jsonName = "lastActivatedAt", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final long last_activated_at;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "offlineEnabled", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final boolean offline_enabled;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb#ADAPTER", jsonName = "tippingConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final TippingConfigPb tipping_config;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb#ADAPTER", jsonName = "usbAutoReconnectConfig", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final UsbAutoReconnectConfigPb usb_auto_reconnect_config;

    public OfflineLocation() {
        this(0L, null, 0L, 0L, null, null, null, null, false, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ OfflineLocation(long j, String str, long j2, long j3, TippingConfigPb tippingConfigPb, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb, ApiLocationPb apiLocationPb, boolean z, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? 0L : j2, (i & 8) == 0 ? j3 : 0L, (i & 16) != 0 ? null : tippingConfigPb, (i & 32) != 0 ? null : bluetoothAutoReconnectConfigPb, (i & 64) != 0 ? null : usbAutoReconnectConfigPb, (i & 128) == 0 ? apiLocationPb : null, (i & 256) != 0 ? false : z, (i & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OfflineLocation(long j, String account_id, long j2, long j3, TippingConfigPb tippingConfigPb, BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb, UsbAutoReconnectConfigPb usbAutoReconnectConfigPb, ApiLocationPb apiLocationPb, boolean z, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(account_id, "account_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = j;
        this.account_id = account_id;
        this.created_at = j2;
        this.last_activated_at = j3;
        this.tipping_config = tippingConfigPb;
        this.bluetooth_auto_reconnect_config = bluetoothAutoReconnectConfigPb;
        this.usb_auto_reconnect_config = usbAutoReconnectConfigPb;
        this.full_location = apiLocationPb;
        this.offline_enabled = z;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.account_id = this.account_id;
        builder.created_at = this.created_at;
        builder.last_activated_at = this.last_activated_at;
        builder.tipping_config = this.tipping_config;
        builder.bluetooth_auto_reconnect_config = this.bluetooth_auto_reconnect_config;
        builder.usb_auto_reconnect_config = this.usb_auto_reconnect_config;
        builder.full_location = this.full_location;
        builder.offline_enabled = this.offline_enabled;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof OfflineLocation)) {
            return false;
        }
        OfflineLocation offlineLocation = (OfflineLocation) other;
        return Intrinsics.areEqual(unknownFields(), offlineLocation.unknownFields()) && this.id == offlineLocation.id && Intrinsics.areEqual(this.account_id, offlineLocation.account_id) && this.created_at == offlineLocation.created_at && this.last_activated_at == offlineLocation.last_activated_at && Intrinsics.areEqual(this.tipping_config, offlineLocation.tipping_config) && Intrinsics.areEqual(this.bluetooth_auto_reconnect_config, offlineLocation.bluetooth_auto_reconnect_config) && Intrinsics.areEqual(this.usb_auto_reconnect_config, offlineLocation.usb_auto_reconnect_config) && Intrinsics.areEqual(this.full_location, offlineLocation.full_location) && this.offline_enabled == offlineLocation.offline_enabled;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((((((((unknownFields().hashCode() * 37) + Long.hashCode(this.id)) * 37) + this.account_id.hashCode()) * 37) + Long.hashCode(this.created_at)) * 37) + Long.hashCode(this.last_activated_at)) * 37;
        TippingConfigPb tippingConfigPb = this.tipping_config;
        int iHashCode2 = (iHashCode + (tippingConfigPb != null ? tippingConfigPb.hashCode() : 0)) * 37;
        BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb = this.bluetooth_auto_reconnect_config;
        int iHashCode3 = (iHashCode2 + (bluetoothAutoReconnectConfigPb != null ? bluetoothAutoReconnectConfigPb.hashCode() : 0)) * 37;
        UsbAutoReconnectConfigPb usbAutoReconnectConfigPb = this.usb_auto_reconnect_config;
        int iHashCode4 = (iHashCode3 + (usbAutoReconnectConfigPb != null ? usbAutoReconnectConfigPb.hashCode() : 0)) * 37;
        ApiLocationPb apiLocationPb = this.full_location;
        int iHashCode5 = ((iHashCode4 + (apiLocationPb != null ? apiLocationPb.hashCode() : 0)) * 37) + Boolean.hashCode(this.offline_enabled);
        this.hashCode = iHashCode5;
        return iHashCode5;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("id=" + this.id);
        arrayList2.add("account_id=" + Internal.sanitize(this.account_id));
        arrayList2.add("created_at=" + this.created_at);
        arrayList2.add("last_activated_at=" + this.last_activated_at);
        if (this.tipping_config != null) {
            arrayList2.add("tipping_config=" + this.tipping_config);
        }
        if (this.bluetooth_auto_reconnect_config != null) {
            arrayList2.add("bluetooth_auto_reconnect_config=" + this.bluetooth_auto_reconnect_config);
        }
        if (this.usb_auto_reconnect_config != null) {
            arrayList2.add("usb_auto_reconnect_config=" + this.usb_auto_reconnect_config);
        }
        if (this.full_location != null) {
            arrayList2.add("full_location=" + this.full_location);
        }
        arrayList2.add("offline_enabled=" + this.offline_enabled);
        return CollectionsKt.joinToString$default(arrayList, ", ", "OfflineLocation{", "}", 0, null, null, 56, null);
    }

    public final OfflineLocation copy(long id, String account_id, long created_at, long last_activated_at, TippingConfigPb tipping_config, BluetoothAutoReconnectConfigPb bluetooth_auto_reconnect_config, UsbAutoReconnectConfigPb usb_auto_reconnect_config, ApiLocationPb full_location, boolean offline_enabled, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(account_id, "account_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new OfflineLocation(id, account_id, created_at, last_activated_at, tipping_config, bluetooth_auto_reconnect_config, usb_auto_reconnect_config, full_location, offline_enabled, unknownFields);
    }

    /* JADX INFO: compiled from: OfflineLocation.kt */
    @Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\tJ\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\tJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u00002\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u000f8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "()V", OfflineStorageConstantsKt.ACCOUNT_ID, "", "bluetooth_auto_reconnect_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "created_at", "", "full_location", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", OfflineStorageConstantsKt.ID, "last_activated_at", "offline_enabled", "", "tipping_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "usb_auto_reconnect_config", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<OfflineLocation, Builder> {
        public String account_id = "";
        public BluetoothAutoReconnectConfigPb bluetooth_auto_reconnect_config;
        public long created_at;
        public ApiLocationPb full_location;
        public long id;
        public long last_activated_at;
        public boolean offline_enabled;
        public TippingConfigPb tipping_config;
        public UsbAutoReconnectConfigPb usb_auto_reconnect_config;

        public final Builder id(long id) {
            this.id = id;
            return this;
        }

        public final Builder account_id(String account_id) {
            Intrinsics.checkNotNullParameter(account_id, "account_id");
            this.account_id = account_id;
            return this;
        }

        public final Builder created_at(long created_at) {
            this.created_at = created_at;
            return this;
        }

        public final Builder last_activated_at(long last_activated_at) {
            this.last_activated_at = last_activated_at;
            return this;
        }

        public final Builder tipping_config(TippingConfigPb tipping_config) {
            this.tipping_config = tipping_config;
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

        public final Builder full_location(ApiLocationPb full_location) {
            this.full_location = full_location;
            return this;
        }

        public final Builder offline_enabled(boolean offline_enabled) {
            this.offline_enabled = offline_enabled;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public OfflineLocation build() {
            return new OfflineLocation(this.id, this.account_id, this.created_at, this.last_activated_at, this.tipping_config, this.bluetooth_auto_reconnect_config, this.usb_auto_reconnect_config, this.full_location, this.offline_enabled, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: OfflineLocation.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/offline_mode/OfflineLocation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/offline_mode/OfflineLocation$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ OfflineLocation build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(OfflineLocation.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<OfflineLocation>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.offline_mode.OfflineLocation$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(OfflineLocation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(1, Long.valueOf(value.id));
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.account_id);
                }
                if (value.created_at != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(3, Long.valueOf(value.created_at));
                }
                if (value.last_activated_at != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(4, Long.valueOf(value.last_activated_at));
                }
                if (value.tipping_config != null) {
                    size += TippingConfigPb.ADAPTER.encodedSizeWithTag(5, value.tipping_config);
                }
                if (value.bluetooth_auto_reconnect_config != null) {
                    size += BluetoothAutoReconnectConfigPb.ADAPTER.encodedSizeWithTag(6, value.bluetooth_auto_reconnect_config);
                }
                if (value.usb_auto_reconnect_config != null) {
                    size += UsbAutoReconnectConfigPb.ADAPTER.encodedSizeWithTag(7, value.usb_auto_reconnect_config);
                }
                if (value.full_location != null) {
                    size += ApiLocationPb.ADAPTER.encodedSizeWithTag(8, value.full_location);
                }
                return value.offline_enabled ? size + ProtoAdapter.BOOL.encodedSizeWithTag(9, Boolean.valueOf(value.offline_enabled)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, OfflineLocation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.id));
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.account_id);
                }
                if (value.created_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 3, Long.valueOf(value.created_at));
                }
                if (value.last_activated_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 4, Long.valueOf(value.last_activated_at));
                }
                if (value.tipping_config != null) {
                    TippingConfigPb.ADAPTER.encodeWithTag(writer, 5, value.tipping_config);
                }
                if (value.bluetooth_auto_reconnect_config != null) {
                    BluetoothAutoReconnectConfigPb.ADAPTER.encodeWithTag(writer, 6, value.bluetooth_auto_reconnect_config);
                }
                if (value.usb_auto_reconnect_config != null) {
                    UsbAutoReconnectConfigPb.ADAPTER.encodeWithTag(writer, 7, value.usb_auto_reconnect_config);
                }
                if (value.full_location != null) {
                    ApiLocationPb.ADAPTER.encodeWithTag(writer, 8, value.full_location);
                }
                if (value.offline_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.offline_enabled));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, OfflineLocation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.offline_enabled) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 9, Boolean.valueOf(value.offline_enabled));
                }
                if (value.full_location != null) {
                    ApiLocationPb.ADAPTER.encodeWithTag(writer, 8, value.full_location);
                }
                if (value.usb_auto_reconnect_config != null) {
                    UsbAutoReconnectConfigPb.ADAPTER.encodeWithTag(writer, 7, value.usb_auto_reconnect_config);
                }
                if (value.bluetooth_auto_reconnect_config != null) {
                    BluetoothAutoReconnectConfigPb.ADAPTER.encodeWithTag(writer, 6, value.bluetooth_auto_reconnect_config);
                }
                if (value.tipping_config != null) {
                    TippingConfigPb.ADAPTER.encodeWithTag(writer, 5, value.tipping_config);
                }
                if (value.last_activated_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 4, Long.valueOf(value.last_activated_at));
                }
                if (value.created_at != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 3, Long.valueOf(value.created_at));
                }
                if (!Intrinsics.areEqual(value.account_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.account_id);
                }
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.id));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public OfflineLocation redact(OfflineLocation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                TippingConfigPb tippingConfigPb = value.tipping_config;
                TippingConfigPb tippingConfigPbRedact = tippingConfigPb != null ? TippingConfigPb.ADAPTER.redact(tippingConfigPb) : null;
                BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPb = value.bluetooth_auto_reconnect_config;
                BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPbRedact = bluetoothAutoReconnectConfigPb != null ? BluetoothAutoReconnectConfigPb.ADAPTER.redact(bluetoothAutoReconnectConfigPb) : null;
                UsbAutoReconnectConfigPb usbAutoReconnectConfigPb = value.usb_auto_reconnect_config;
                UsbAutoReconnectConfigPb usbAutoReconnectConfigPbRedact = usbAutoReconnectConfigPb != null ? UsbAutoReconnectConfigPb.ADAPTER.redact(usbAutoReconnectConfigPb) : null;
                ApiLocationPb apiLocationPb = value.full_location;
                return value.copy((WinError.ERROR_NOTIFY_ENUM_DIR & 1) != 0 ? value.id : 0L, (WinError.ERROR_NOTIFY_ENUM_DIR & 2) != 0 ? value.account_id : null, (WinError.ERROR_NOTIFY_ENUM_DIR & 4) != 0 ? value.created_at : 0L, (WinError.ERROR_NOTIFY_ENUM_DIR & 8) != 0 ? value.last_activated_at : 0L, (WinError.ERROR_NOTIFY_ENUM_DIR & 16) != 0 ? value.tipping_config : tippingConfigPbRedact, (WinError.ERROR_NOTIFY_ENUM_DIR & 32) != 0 ? value.bluetooth_auto_reconnect_config : bluetoothAutoReconnectConfigPbRedact, (WinError.ERROR_NOTIFY_ENUM_DIR & 64) != 0 ? value.usb_auto_reconnect_config : usbAutoReconnectConfigPbRedact, (WinError.ERROR_NOTIFY_ENUM_DIR & 128) != 0 ? value.full_location : apiLocationPb != null ? ApiLocationPb.ADAPTER.redact(apiLocationPb) : null, (WinError.ERROR_NOTIFY_ENUM_DIR & 256) != 0 ? value.offline_enabled : false, (WinError.ERROR_NOTIFY_ENUM_DIR & 512) != 0 ? value.unknownFields() : ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public OfflineLocation decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                TippingConfigPb tippingConfigPbDecode = null;
                long jLongValue = 0;
                long jLongValue2 = 0;
                long jLongValue3 = 0;
                BluetoothAutoReconnectConfigPb bluetoothAutoReconnectConfigPbDecode = null;
                UsbAutoReconnectConfigPb usbAutoReconnectConfigPbDecode = null;
                boolean zBooleanValue = false;
                ApiLocationPb apiLocationPbDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                jLongValue2 = ProtoAdapter.UINT64.decode(reader).longValue();
                                break;
                            case 4:
                                jLongValue3 = ProtoAdapter.UINT64.decode(reader).longValue();
                                break;
                            case 5:
                                tippingConfigPbDecode = TippingConfigPb.ADAPTER.decode(reader);
                                break;
                            case 6:
                                bluetoothAutoReconnectConfigPbDecode = BluetoothAutoReconnectConfigPb.ADAPTER.decode(reader);
                                break;
                            case 7:
                                usbAutoReconnectConfigPbDecode = UsbAutoReconnectConfigPb.ADAPTER.decode(reader);
                                break;
                            case 8:
                                apiLocationPbDecode = ApiLocationPb.ADAPTER.decode(reader);
                                break;
                            case 9:
                                zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new OfflineLocation(jLongValue, strDecode, jLongValue2, jLongValue3, tippingConfigPbDecode, bluetoothAutoReconnectConfigPbDecode, usbAutoReconnectConfigPbDecode, apiLocationPbDecode, zBooleanValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
