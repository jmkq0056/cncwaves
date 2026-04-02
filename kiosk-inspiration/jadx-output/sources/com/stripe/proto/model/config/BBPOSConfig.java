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
import com.stripe.proto.model.common.ClientUpgradeArgumentPb;
import com.stripe.proto.model.common.ClientVersionSpecPb;
import com.stripe.proto.terminal.terminal.pub.message.config.RegionalAidOrder;
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

/* JADX INFO: compiled from: BBPOSConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001f2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001e\u001fB\u0081\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J\u0082\u0001\u0010\u0015\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\r2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u0013J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J\b\u0010\u001c\u001a\u00020\u0002H\u0016J\b\u0010\u001d\u001a\u00020\tH\u0016R\u0012\u0010\u000e\u001a\u0004\u0018\u00010\u000f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u0004\u0018\u00010\r8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, d2 = {"Lcom/stripe/proto/model/config/BBPOSConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/BBPOSConfig$Builder;", "pinpad_image_assets", "Lcom/stripe/proto/model/config/PinpadImageAssets;", "firmware_spec", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "config_spec", "key_profile_id", "", "key_profile_name", "key_profile_pek0", "key_profile_upgrade_arg", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;", "aid_order", "Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;", "minimum_required_firmware_spec", "minimum_required_config_spec", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/config/PinpadImageAssets;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lcom/stripe/proto/model/common/ClientVersionSpecPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BBPOSConfig extends Message<BBPOSConfig, Builder> {
    public static final ProtoAdapter<BBPOSConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.RegionalAidOrder#ADAPTER", jsonName = "aidOrder", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 6)
    public final RegionalAidOrder aid_order;

    @WireField(adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER", jsonName = "configSpec", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final ClientVersionSpecPb config_spec;

    @WireField(adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER", jsonName = "firmwareSpec", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final ClientVersionSpecPb firmware_spec;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "keyProfileId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String key_profile_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "keyProfileName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String key_profile_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "keyProfilePek0", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 7)
    public final String key_profile_pek0;

    @WireField(adapter = "com.stripe.proto.model.common.ClientUpgradeArgumentPb#ADAPTER", jsonName = "keyProfileUpgradeArg", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 8)
    public final ClientUpgradeArgumentPb key_profile_upgrade_arg;

    @WireField(adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER", jsonName = "minimumRequiredConfigSpec", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 9, tag = 10)
    public final ClientVersionSpecPb minimum_required_config_spec;

    @WireField(adapter = "com.stripe.proto.model.common.ClientVersionSpecPb#ADAPTER", jsonName = "minimumRequiredFirmwareSpec", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final ClientVersionSpecPb minimum_required_firmware_spec;

    @WireField(adapter = "com.stripe.proto.model.config.PinpadImageAssets#ADAPTER", jsonName = "pinpadImageAssets", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final PinpadImageAssets pinpad_image_assets;

    public BBPOSConfig() {
        this(null, null, null, null, null, null, null, null, null, null, null, 2047, null);
    }

    public /* synthetic */ BBPOSConfig(PinpadImageAssets pinpadImageAssets, ClientVersionSpecPb clientVersionSpecPb, ClientVersionSpecPb clientVersionSpecPb2, String str, String str2, String str3, ClientUpgradeArgumentPb clientUpgradeArgumentPb, RegionalAidOrder regionalAidOrder, ClientVersionSpecPb clientVersionSpecPb3, ClientVersionSpecPb clientVersionSpecPb4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : pinpadImageAssets, (i & 2) != 0 ? null : clientVersionSpecPb, (i & 4) != 0 ? null : clientVersionSpecPb2, (i & 8) != 0 ? "" : str, (i & 16) != 0 ? "" : str2, (i & 32) != 0 ? "" : str3, (i & 64) != 0 ? null : clientUpgradeArgumentPb, (i & 128) != 0 ? null : regionalAidOrder, (i & 256) != 0 ? null : clientVersionSpecPb3, (i & 512) != 0 ? null : clientVersionSpecPb4, (i & 1024) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BBPOSConfig(PinpadImageAssets pinpadImageAssets, ClientVersionSpecPb clientVersionSpecPb, ClientVersionSpecPb clientVersionSpecPb2, String key_profile_id, String key_profile_name, String key_profile_pek0, ClientUpgradeArgumentPb clientUpgradeArgumentPb, RegionalAidOrder regionalAidOrder, ClientVersionSpecPb clientVersionSpecPb3, ClientVersionSpecPb clientVersionSpecPb4, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(key_profile_id, "key_profile_id");
        Intrinsics.checkNotNullParameter(key_profile_name, "key_profile_name");
        Intrinsics.checkNotNullParameter(key_profile_pek0, "key_profile_pek0");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.pinpad_image_assets = pinpadImageAssets;
        this.firmware_spec = clientVersionSpecPb;
        this.config_spec = clientVersionSpecPb2;
        this.key_profile_id = key_profile_id;
        this.key_profile_name = key_profile_name;
        this.key_profile_pek0 = key_profile_pek0;
        this.key_profile_upgrade_arg = clientUpgradeArgumentPb;
        this.aid_order = regionalAidOrder;
        this.minimum_required_firmware_spec = clientVersionSpecPb3;
        this.minimum_required_config_spec = clientVersionSpecPb4;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.pinpad_image_assets = this.pinpad_image_assets;
        builder.firmware_spec = this.firmware_spec;
        builder.config_spec = this.config_spec;
        builder.key_profile_id = this.key_profile_id;
        builder.key_profile_name = this.key_profile_name;
        builder.key_profile_pek0 = this.key_profile_pek0;
        builder.key_profile_upgrade_arg = this.key_profile_upgrade_arg;
        builder.aid_order = this.aid_order;
        builder.minimum_required_firmware_spec = this.minimum_required_firmware_spec;
        builder.minimum_required_config_spec = this.minimum_required_config_spec;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof BBPOSConfig)) {
            return false;
        }
        BBPOSConfig bBPOSConfig = (BBPOSConfig) other;
        return Intrinsics.areEqual(unknownFields(), bBPOSConfig.unknownFields()) && Intrinsics.areEqual(this.pinpad_image_assets, bBPOSConfig.pinpad_image_assets) && Intrinsics.areEqual(this.firmware_spec, bBPOSConfig.firmware_spec) && Intrinsics.areEqual(this.config_spec, bBPOSConfig.config_spec) && Intrinsics.areEqual(this.key_profile_id, bBPOSConfig.key_profile_id) && Intrinsics.areEqual(this.key_profile_name, bBPOSConfig.key_profile_name) && Intrinsics.areEqual(this.key_profile_pek0, bBPOSConfig.key_profile_pek0) && Intrinsics.areEqual(this.key_profile_upgrade_arg, bBPOSConfig.key_profile_upgrade_arg) && Intrinsics.areEqual(this.aid_order, bBPOSConfig.aid_order) && Intrinsics.areEqual(this.minimum_required_firmware_spec, bBPOSConfig.minimum_required_firmware_spec) && Intrinsics.areEqual(this.minimum_required_config_spec, bBPOSConfig.minimum_required_config_spec);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        PinpadImageAssets pinpadImageAssets = this.pinpad_image_assets;
        int iHashCode2 = (iHashCode + (pinpadImageAssets != null ? pinpadImageAssets.hashCode() : 0)) * 37;
        ClientVersionSpecPb clientVersionSpecPb = this.firmware_spec;
        int iHashCode3 = (iHashCode2 + (clientVersionSpecPb != null ? clientVersionSpecPb.hashCode() : 0)) * 37;
        ClientVersionSpecPb clientVersionSpecPb2 = this.config_spec;
        int iHashCode4 = (((((((iHashCode3 + (clientVersionSpecPb2 != null ? clientVersionSpecPb2.hashCode() : 0)) * 37) + this.key_profile_id.hashCode()) * 37) + this.key_profile_name.hashCode()) * 37) + this.key_profile_pek0.hashCode()) * 37;
        ClientUpgradeArgumentPb clientUpgradeArgumentPb = this.key_profile_upgrade_arg;
        int iHashCode5 = (iHashCode4 + (clientUpgradeArgumentPb != null ? clientUpgradeArgumentPb.hashCode() : 0)) * 37;
        RegionalAidOrder regionalAidOrder = this.aid_order;
        int iHashCode6 = (iHashCode5 + (regionalAidOrder != null ? regionalAidOrder.hashCode() : 0)) * 37;
        ClientVersionSpecPb clientVersionSpecPb3 = this.minimum_required_firmware_spec;
        int iHashCode7 = (iHashCode6 + (clientVersionSpecPb3 != null ? clientVersionSpecPb3.hashCode() : 0)) * 37;
        ClientVersionSpecPb clientVersionSpecPb4 = this.minimum_required_config_spec;
        int iHashCode8 = iHashCode7 + (clientVersionSpecPb4 != null ? clientVersionSpecPb4.hashCode() : 0);
        this.hashCode = iHashCode8;
        return iHashCode8;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.pinpad_image_assets != null) {
            arrayList.add("pinpad_image_assets=" + this.pinpad_image_assets);
        }
        if (this.firmware_spec != null) {
            arrayList.add("firmware_spec=" + this.firmware_spec);
        }
        if (this.config_spec != null) {
            arrayList.add("config_spec=" + this.config_spec);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("key_profile_id=" + Internal.sanitize(this.key_profile_id));
        arrayList2.add("key_profile_name=" + Internal.sanitize(this.key_profile_name));
        arrayList2.add("key_profile_pek0=" + Internal.sanitize(this.key_profile_pek0));
        if (this.key_profile_upgrade_arg != null) {
            arrayList2.add("key_profile_upgrade_arg=" + this.key_profile_upgrade_arg);
        }
        if (this.aid_order != null) {
            arrayList2.add("aid_order=" + this.aid_order);
        }
        if (this.minimum_required_firmware_spec != null) {
            arrayList2.add("minimum_required_firmware_spec=" + this.minimum_required_firmware_spec);
        }
        if (this.minimum_required_config_spec != null) {
            arrayList2.add("minimum_required_config_spec=" + this.minimum_required_config_spec);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "BBPOSConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ BBPOSConfig copy$default(BBPOSConfig bBPOSConfig, PinpadImageAssets pinpadImageAssets, ClientVersionSpecPb clientVersionSpecPb, ClientVersionSpecPb clientVersionSpecPb2, String str, String str2, String str3, ClientUpgradeArgumentPb clientUpgradeArgumentPb, RegionalAidOrder regionalAidOrder, ClientVersionSpecPb clientVersionSpecPb3, ClientVersionSpecPb clientVersionSpecPb4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            pinpadImageAssets = bBPOSConfig.pinpad_image_assets;
        }
        if ((i & 2) != 0) {
            clientVersionSpecPb = bBPOSConfig.firmware_spec;
        }
        if ((i & 4) != 0) {
            clientVersionSpecPb2 = bBPOSConfig.config_spec;
        }
        if ((i & 8) != 0) {
            str = bBPOSConfig.key_profile_id;
        }
        if ((i & 16) != 0) {
            str2 = bBPOSConfig.key_profile_name;
        }
        if ((i & 32) != 0) {
            str3 = bBPOSConfig.key_profile_pek0;
        }
        if ((i & 64) != 0) {
            clientUpgradeArgumentPb = bBPOSConfig.key_profile_upgrade_arg;
        }
        if ((i & 128) != 0) {
            regionalAidOrder = bBPOSConfig.aid_order;
        }
        if ((i & 256) != 0) {
            clientVersionSpecPb3 = bBPOSConfig.minimum_required_firmware_spec;
        }
        if ((i & 512) != 0) {
            clientVersionSpecPb4 = bBPOSConfig.minimum_required_config_spec;
        }
        if ((i & 1024) != 0) {
            byteString = bBPOSConfig.unknownFields();
        }
        ClientVersionSpecPb clientVersionSpecPb5 = clientVersionSpecPb4;
        ByteString byteString2 = byteString;
        RegionalAidOrder regionalAidOrder2 = regionalAidOrder;
        ClientVersionSpecPb clientVersionSpecPb6 = clientVersionSpecPb3;
        String str4 = str3;
        ClientUpgradeArgumentPb clientUpgradeArgumentPb2 = clientUpgradeArgumentPb;
        String str5 = str2;
        ClientVersionSpecPb clientVersionSpecPb7 = clientVersionSpecPb2;
        return bBPOSConfig.copy(pinpadImageAssets, clientVersionSpecPb, clientVersionSpecPb7, str, str5, str4, clientUpgradeArgumentPb2, regionalAidOrder2, clientVersionSpecPb6, clientVersionSpecPb5, byteString2);
    }

    public final BBPOSConfig copy(PinpadImageAssets pinpad_image_assets, ClientVersionSpecPb firmware_spec, ClientVersionSpecPb config_spec, String key_profile_id, String key_profile_name, String key_profile_pek0, ClientUpgradeArgumentPb key_profile_upgrade_arg, RegionalAidOrder aid_order, ClientVersionSpecPb minimum_required_firmware_spec, ClientVersionSpecPb minimum_required_config_spec, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(key_profile_id, "key_profile_id");
        Intrinsics.checkNotNullParameter(key_profile_name, "key_profile_name");
        Intrinsics.checkNotNullParameter(key_profile_pek0, "key_profile_pek0");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new BBPOSConfig(pinpad_image_assets, firmware_spec, config_spec, key_profile_id, key_profile_name, key_profile_pek0, key_profile_upgrade_arg, aid_order, minimum_required_firmware_spec, minimum_required_config_spec, unknownFields);
    }

    /* JADX INFO: compiled from: BBPOSConfig.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\nJ\u0010\u0010\r\u001a\u00020\u00002\b\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u000f\u001a\u00020\u00002\b\u0010\u000f\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0010\u001a\u00020\u00002\b\u0010\u0010\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0011\u001a\u00020\u00002\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0004\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/model/config/BBPOSConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/BBPOSConfig;", "()V", "aid_order", "Lcom/stripe/proto/terminal/terminal/pub/message/config/RegionalAidOrder;", "config_spec", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "firmware_spec", "key_profile_id", "", "key_profile_name", "key_profile_pek0", "key_profile_upgrade_arg", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;", "minimum_required_config_spec", "minimum_required_firmware_spec", "pinpad_image_assets", "Lcom/stripe/proto/model/config/PinpadImageAssets;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<BBPOSConfig, Builder> {
        public RegionalAidOrder aid_order;
        public ClientVersionSpecPb config_spec;
        public ClientVersionSpecPb firmware_spec;
        public String key_profile_id = "";
        public String key_profile_name = "";
        public String key_profile_pek0 = "";
        public ClientUpgradeArgumentPb key_profile_upgrade_arg;
        public ClientVersionSpecPb minimum_required_config_spec;
        public ClientVersionSpecPb minimum_required_firmware_spec;
        public PinpadImageAssets pinpad_image_assets;

        public final Builder pinpad_image_assets(PinpadImageAssets pinpad_image_assets) {
            this.pinpad_image_assets = pinpad_image_assets;
            return this;
        }

        public final Builder firmware_spec(ClientVersionSpecPb firmware_spec) {
            this.firmware_spec = firmware_spec;
            return this;
        }

        public final Builder config_spec(ClientVersionSpecPb config_spec) {
            this.config_spec = config_spec;
            return this;
        }

        public final Builder key_profile_id(String key_profile_id) {
            Intrinsics.checkNotNullParameter(key_profile_id, "key_profile_id");
            this.key_profile_id = key_profile_id;
            return this;
        }

        public final Builder key_profile_name(String key_profile_name) {
            Intrinsics.checkNotNullParameter(key_profile_name, "key_profile_name");
            this.key_profile_name = key_profile_name;
            return this;
        }

        public final Builder key_profile_pek0(String key_profile_pek0) {
            Intrinsics.checkNotNullParameter(key_profile_pek0, "key_profile_pek0");
            this.key_profile_pek0 = key_profile_pek0;
            return this;
        }

        public final Builder key_profile_upgrade_arg(ClientUpgradeArgumentPb key_profile_upgrade_arg) {
            this.key_profile_upgrade_arg = key_profile_upgrade_arg;
            return this;
        }

        public final Builder aid_order(RegionalAidOrder aid_order) {
            this.aid_order = aid_order;
            return this;
        }

        public final Builder minimum_required_firmware_spec(ClientVersionSpecPb minimum_required_firmware_spec) {
            this.minimum_required_firmware_spec = minimum_required_firmware_spec;
            return this;
        }

        public final Builder minimum_required_config_spec(ClientVersionSpecPb minimum_required_config_spec) {
            this.minimum_required_config_spec = minimum_required_config_spec;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public BBPOSConfig build() {
            return new BBPOSConfig(this.pinpad_image_assets, this.firmware_spec, this.config_spec, this.key_profile_id, this.key_profile_name, this.key_profile_pek0, this.key_profile_upgrade_arg, this.aid_order, this.minimum_required_firmware_spec, this.minimum_required_config_spec, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: BBPOSConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/BBPOSConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/BBPOSConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/BBPOSConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ BBPOSConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(BBPOSConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<BBPOSConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.BBPOSConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(BBPOSConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.pinpad_image_assets != null) {
                    size += PinpadImageAssets.ADAPTER.encodedSizeWithTag(1, value.pinpad_image_assets);
                }
                if (value.firmware_spec != null) {
                    size += ClientVersionSpecPb.ADAPTER.encodedSizeWithTag(2, value.firmware_spec);
                }
                if (value.config_spec != null) {
                    size += ClientVersionSpecPb.ADAPTER.encodedSizeWithTag(3, value.config_spec);
                }
                if (!Intrinsics.areEqual(value.key_profile_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.key_profile_id);
                }
                if (!Intrinsics.areEqual(value.key_profile_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.key_profile_name);
                }
                if (!Intrinsics.areEqual(value.key_profile_pek0, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.key_profile_pek0);
                }
                if (value.key_profile_upgrade_arg != null) {
                    size += ClientUpgradeArgumentPb.ADAPTER.encodedSizeWithTag(8, value.key_profile_upgrade_arg);
                }
                if (value.aid_order != null) {
                    size += RegionalAidOrder.ADAPTER.encodedSizeWithTag(6, value.aid_order);
                }
                if (value.minimum_required_firmware_spec != null) {
                    size += ClientVersionSpecPb.ADAPTER.encodedSizeWithTag(9, value.minimum_required_firmware_spec);
                }
                return value.minimum_required_config_spec != null ? size + ClientVersionSpecPb.ADAPTER.encodedSizeWithTag(10, value.minimum_required_config_spec) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, BBPOSConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.pinpad_image_assets != null) {
                    PinpadImageAssets.ADAPTER.encodeWithTag(writer, 1, value.pinpad_image_assets);
                }
                if (value.firmware_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 2, value.firmware_spec);
                }
                if (value.config_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 3, value.config_spec);
                }
                if (!Intrinsics.areEqual(value.key_profile_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.key_profile_id);
                }
                if (!Intrinsics.areEqual(value.key_profile_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.key_profile_name);
                }
                if (!Intrinsics.areEqual(value.key_profile_pek0, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.key_profile_pek0);
                }
                if (value.key_profile_upgrade_arg != null) {
                    ClientUpgradeArgumentPb.ADAPTER.encodeWithTag(writer, 8, value.key_profile_upgrade_arg);
                }
                if (value.aid_order != null) {
                    RegionalAidOrder.ADAPTER.encodeWithTag(writer, 6, value.aid_order);
                }
                if (value.minimum_required_firmware_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 9, value.minimum_required_firmware_spec);
                }
                if (value.minimum_required_config_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 10, value.minimum_required_config_spec);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, BBPOSConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.minimum_required_config_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 10, value.minimum_required_config_spec);
                }
                if (value.minimum_required_firmware_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 9, value.minimum_required_firmware_spec);
                }
                if (value.aid_order != null) {
                    RegionalAidOrder.ADAPTER.encodeWithTag(writer, 6, value.aid_order);
                }
                if (value.key_profile_upgrade_arg != null) {
                    ClientUpgradeArgumentPb.ADAPTER.encodeWithTag(writer, 8, value.key_profile_upgrade_arg);
                }
                if (!Intrinsics.areEqual(value.key_profile_pek0, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.key_profile_pek0);
                }
                if (!Intrinsics.areEqual(value.key_profile_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.key_profile_name);
                }
                if (!Intrinsics.areEqual(value.key_profile_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.key_profile_id);
                }
                if (value.config_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 3, value.config_spec);
                }
                if (value.firmware_spec != null) {
                    ClientVersionSpecPb.ADAPTER.encodeWithTag(writer, 2, value.firmware_spec);
                }
                if (value.pinpad_image_assets != null) {
                    PinpadImageAssets.ADAPTER.encodeWithTag(writer, 1, value.pinpad_image_assets);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public BBPOSConfig redact(BBPOSConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                PinpadImageAssets pinpadImageAssets = value.pinpad_image_assets;
                PinpadImageAssets pinpadImageAssetsRedact = pinpadImageAssets != null ? PinpadImageAssets.ADAPTER.redact(pinpadImageAssets) : null;
                ClientVersionSpecPb clientVersionSpecPb = value.firmware_spec;
                ClientVersionSpecPb clientVersionSpecPbRedact = clientVersionSpecPb != null ? ClientVersionSpecPb.ADAPTER.redact(clientVersionSpecPb) : null;
                ClientVersionSpecPb clientVersionSpecPb2 = value.config_spec;
                ClientVersionSpecPb clientVersionSpecPbRedact2 = clientVersionSpecPb2 != null ? ClientVersionSpecPb.ADAPTER.redact(clientVersionSpecPb2) : null;
                ClientUpgradeArgumentPb clientUpgradeArgumentPb = value.key_profile_upgrade_arg;
                ClientUpgradeArgumentPb clientUpgradeArgumentPbRedact = clientUpgradeArgumentPb != null ? ClientUpgradeArgumentPb.ADAPTER.redact(clientUpgradeArgumentPb) : null;
                RegionalAidOrder regionalAidOrder = value.aid_order;
                RegionalAidOrder regionalAidOrderRedact = regionalAidOrder != null ? RegionalAidOrder.ADAPTER.redact(regionalAidOrder) : null;
                ClientVersionSpecPb clientVersionSpecPb3 = value.minimum_required_firmware_spec;
                ClientVersionSpecPb clientVersionSpecPbRedact3 = clientVersionSpecPb3 != null ? ClientVersionSpecPb.ADAPTER.redact(clientVersionSpecPb3) : null;
                ClientVersionSpecPb clientVersionSpecPb4 = value.minimum_required_config_spec;
                return BBPOSConfig.copy$default(value, pinpadImageAssetsRedact, clientVersionSpecPbRedact, clientVersionSpecPbRedact2, null, null, null, clientUpgradeArgumentPbRedact, regionalAidOrderRedact, clientVersionSpecPbRedact3, clientVersionSpecPb4 != null ? ClientVersionSpecPb.ADAPTER.redact(clientVersionSpecPb4) : null, ByteString.EMPTY, 56, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public BBPOSConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                PinpadImageAssets pinpadImageAssetsDecode = null;
                ClientVersionSpecPb clientVersionSpecPbDecode = null;
                ClientUpgradeArgumentPb clientUpgradeArgumentPbDecode = null;
                RegionalAidOrder regionalAidOrderDecode = null;
                ClientVersionSpecPb clientVersionSpecPbDecode2 = null;
                ClientVersionSpecPb clientVersionSpecPbDecode3 = null;
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                ClientVersionSpecPb clientVersionSpecPbDecode4 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                pinpadImageAssetsDecode = PinpadImageAssets.ADAPTER.decode(reader);
                                break;
                            case 2:
                                clientVersionSpecPbDecode4 = ClientVersionSpecPb.ADAPTER.decode(reader);
                                break;
                            case 3:
                                clientVersionSpecPbDecode = ClientVersionSpecPb.ADAPTER.decode(reader);
                                break;
                            case 4:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                regionalAidOrderDecode = RegionalAidOrder.ADAPTER.decode(reader);
                                break;
                            case 7:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                clientUpgradeArgumentPbDecode = ClientUpgradeArgumentPb.ADAPTER.decode(reader);
                                break;
                            case 9:
                                clientVersionSpecPbDecode2 = ClientVersionSpecPb.ADAPTER.decode(reader);
                                break;
                            case 10:
                                clientVersionSpecPbDecode3 = ClientVersionSpecPb.ADAPTER.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new BBPOSConfig(pinpadImageAssetsDecode, clientVersionSpecPbDecode4, clientVersionSpecPbDecode, strDecode, strDecode2, strDecode3, clientUpgradeArgumentPbDecode, regionalAidOrderDecode, clientVersionSpecPbDecode2, clientVersionSpecPbDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
