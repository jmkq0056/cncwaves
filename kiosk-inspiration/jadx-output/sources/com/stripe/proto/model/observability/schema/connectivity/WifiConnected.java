package com.stripe.proto.model.observability.schema.connectivity;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: WifiConnected.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBi\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Jj\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\u00062\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0006H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;", "ssid", "", "signal_strength", "", "num_signal_strength_levels", "frequency", "security_type", "custom_ip_address", "custom_subnet_mask", "custom_router", "custom_dns", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WifiConnected extends Message<WifiConnected, Builder> {
    public static final ProtoAdapter<WifiConnected> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "customDns", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String custom_dns;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "customIpAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String custom_ip_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "customRouter", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String custom_router;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "customSubnetMask", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String custom_subnet_mask;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final int frequency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "numSignalStrengthLevels", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int num_signal_strength_levels;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "securityType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String security_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "signalStrength", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final int signal_strength;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String ssid;

    public WifiConnected() {
        this(null, 0, 0, 0, null, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ WifiConnected(String str, int i, int i2, int i3, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this((i4 & 1) != 0 ? "" : str, (i4 & 2) != 0 ? 0 : i, (i4 & 4) != 0 ? 0 : i2, (i4 & 8) != 0 ? 0 : i3, (i4 & 16) != 0 ? "" : str2, (i4 & 32) != 0 ? "" : str3, (i4 & 64) != 0 ? "" : str4, (i4 & 128) != 0 ? "" : str5, (i4 & 256) != 0 ? "" : str6, (i4 & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiConnected(String ssid, int i, int i2, int i3, String security_type, String custom_ip_address, String custom_subnet_mask, String custom_router, String custom_dns, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        Intrinsics.checkNotNullParameter(security_type, "security_type");
        Intrinsics.checkNotNullParameter(custom_ip_address, "custom_ip_address");
        Intrinsics.checkNotNullParameter(custom_subnet_mask, "custom_subnet_mask");
        Intrinsics.checkNotNullParameter(custom_router, "custom_router");
        Intrinsics.checkNotNullParameter(custom_dns, "custom_dns");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.ssid = ssid;
        this.signal_strength = i;
        this.num_signal_strength_levels = i2;
        this.frequency = i3;
        this.security_type = security_type;
        this.custom_ip_address = custom_ip_address;
        this.custom_subnet_mask = custom_subnet_mask;
        this.custom_router = custom_router;
        this.custom_dns = custom_dns;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.ssid = this.ssid;
        builder.signal_strength = this.signal_strength;
        builder.num_signal_strength_levels = this.num_signal_strength_levels;
        builder.frequency = this.frequency;
        builder.security_type = this.security_type;
        builder.custom_ip_address = this.custom_ip_address;
        builder.custom_subnet_mask = this.custom_subnet_mask;
        builder.custom_router = this.custom_router;
        builder.custom_dns = this.custom_dns;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof WifiConnected)) {
            return false;
        }
        WifiConnected wifiConnected = (WifiConnected) other;
        return Intrinsics.areEqual(unknownFields(), wifiConnected.unknownFields()) && Intrinsics.areEqual(this.ssid, wifiConnected.ssid) && this.signal_strength == wifiConnected.signal_strength && this.num_signal_strength_levels == wifiConnected.num_signal_strength_levels && this.frequency == wifiConnected.frequency && Intrinsics.areEqual(this.security_type, wifiConnected.security_type) && Intrinsics.areEqual(this.custom_ip_address, wifiConnected.custom_ip_address) && Intrinsics.areEqual(this.custom_subnet_mask, wifiConnected.custom_subnet_mask) && Intrinsics.areEqual(this.custom_router, wifiConnected.custom_router) && Intrinsics.areEqual(this.custom_dns, wifiConnected.custom_dns);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((unknownFields().hashCode() * 37) + this.ssid.hashCode()) * 37) + Integer.hashCode(this.signal_strength)) * 37) + Integer.hashCode(this.num_signal_strength_levels)) * 37) + Integer.hashCode(this.frequency)) * 37) + this.security_type.hashCode()) * 37) + this.custom_ip_address.hashCode()) * 37) + this.custom_subnet_mask.hashCode()) * 37) + this.custom_router.hashCode()) * 37) + this.custom_dns.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("ssid=" + Internal.sanitize(this.ssid));
        arrayList2.add("signal_strength=" + this.signal_strength);
        arrayList2.add("num_signal_strength_levels=" + this.num_signal_strength_levels);
        arrayList2.add("frequency=" + this.frequency);
        arrayList2.add("security_type=" + Internal.sanitize(this.security_type));
        arrayList2.add("custom_ip_address=" + Internal.sanitize(this.custom_ip_address));
        arrayList2.add("custom_subnet_mask=" + Internal.sanitize(this.custom_subnet_mask));
        arrayList2.add("custom_router=" + Internal.sanitize(this.custom_router));
        arrayList2.add("custom_dns=" + Internal.sanitize(this.custom_dns));
        return CollectionsKt.joinToString$default(arrayList, ", ", "WifiConnected{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ WifiConnected copy$default(WifiConnected wifiConnected, String str, int i, int i2, int i3, String str2, String str3, String str4, String str5, String str6, ByteString byteString, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = wifiConnected.ssid;
        }
        if ((i4 & 2) != 0) {
            i = wifiConnected.signal_strength;
        }
        if ((i4 & 4) != 0) {
            i2 = wifiConnected.num_signal_strength_levels;
        }
        if ((i4 & 8) != 0) {
            i3 = wifiConnected.frequency;
        }
        if ((i4 & 16) != 0) {
            str2 = wifiConnected.security_type;
        }
        if ((i4 & 32) != 0) {
            str3 = wifiConnected.custom_ip_address;
        }
        if ((i4 & 64) != 0) {
            str4 = wifiConnected.custom_subnet_mask;
        }
        if ((i4 & 128) != 0) {
            str5 = wifiConnected.custom_router;
        }
        if ((i4 & 256) != 0) {
            str6 = wifiConnected.custom_dns;
        }
        if ((i4 & 512) != 0) {
            byteString = wifiConnected.unknownFields();
        }
        String str7 = str6;
        ByteString byteString2 = byteString;
        String str8 = str4;
        String str9 = str5;
        String str10 = str2;
        String str11 = str3;
        return wifiConnected.copy(str, i, i2, i3, str10, str11, str8, str9, str7, byteString2);
    }

    public final WifiConnected copy(String ssid, int signal_strength, int num_signal_strength_levels, int frequency, String security_type, String custom_ip_address, String custom_subnet_mask, String custom_router, String custom_dns, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        Intrinsics.checkNotNullParameter(security_type, "security_type");
        Intrinsics.checkNotNullParameter(custom_ip_address, "custom_ip_address");
        Intrinsics.checkNotNullParameter(custom_subnet_mask, "custom_subnet_mask");
        Intrinsics.checkNotNullParameter(custom_router, "custom_router");
        Intrinsics.checkNotNullParameter(custom_dns, "custom_dns");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new WifiConnected(ssid, signal_strength, num_signal_strength_levels, frequency, security_type, custom_ip_address, custom_subnet_mask, custom_router, custom_dns, unknownFields);
    }

    /* JADX INFO: compiled from: WifiConnected.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\nJ\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\nJ\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\n8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected;", "()V", "custom_dns", "", "custom_ip_address", "custom_router", "custom_subnet_mask", "frequency", "", "num_signal_strength_levels", "security_type", "signal_strength", "ssid", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<WifiConnected, Builder> {
        public int frequency;
        public int num_signal_strength_levels;
        public int signal_strength;
        public String ssid = "";
        public String security_type = "";
        public String custom_ip_address = "";
        public String custom_subnet_mask = "";
        public String custom_router = "";
        public String custom_dns = "";

        public final Builder ssid(String ssid) {
            Intrinsics.checkNotNullParameter(ssid, "ssid");
            this.ssid = ssid;
            return this;
        }

        public final Builder signal_strength(int signal_strength) {
            this.signal_strength = signal_strength;
            return this;
        }

        public final Builder num_signal_strength_levels(int num_signal_strength_levels) {
            this.num_signal_strength_levels = num_signal_strength_levels;
            return this;
        }

        public final Builder frequency(int frequency) {
            this.frequency = frequency;
            return this;
        }

        public final Builder security_type(String security_type) {
            Intrinsics.checkNotNullParameter(security_type, "security_type");
            this.security_type = security_type;
            return this;
        }

        public final Builder custom_ip_address(String custom_ip_address) {
            Intrinsics.checkNotNullParameter(custom_ip_address, "custom_ip_address");
            this.custom_ip_address = custom_ip_address;
            return this;
        }

        public final Builder custom_subnet_mask(String custom_subnet_mask) {
            Intrinsics.checkNotNullParameter(custom_subnet_mask, "custom_subnet_mask");
            this.custom_subnet_mask = custom_subnet_mask;
            return this;
        }

        public final Builder custom_router(String custom_router) {
            Intrinsics.checkNotNullParameter(custom_router, "custom_router");
            this.custom_router = custom_router;
            return this;
        }

        public final Builder custom_dns(String custom_dns) {
            Intrinsics.checkNotNullParameter(custom_dns, "custom_dns");
            this.custom_dns = custom_dns;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public WifiConnected build() {
            return new WifiConnected(this.ssid, this.signal_strength, this.num_signal_strength_levels, this.frequency, this.security_type, this.custom_ip_address, this.custom_subnet_mask, this.custom_router, this.custom_dns, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: WifiConnected.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/observability/schema/connectivity/WifiConnected$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ WifiConnected build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WifiConnected.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<WifiConnected>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.observability.schema.connectivity.WifiConnected$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(WifiConnected value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.ssid, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.ssid);
                }
                if (value.signal_strength != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(2, Integer.valueOf(value.signal_strength));
                }
                if (value.num_signal_strength_levels != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(3, Integer.valueOf(value.num_signal_strength_levels));
                }
                if (value.frequency != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.frequency));
                }
                if (!Intrinsics.areEqual(value.security_type, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.security_type);
                }
                if (!Intrinsics.areEqual(value.custom_ip_address, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.custom_ip_address);
                }
                if (!Intrinsics.areEqual(value.custom_subnet_mask, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.custom_subnet_mask);
                }
                if (!Intrinsics.areEqual(value.custom_router, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.custom_router);
                }
                return !Intrinsics.areEqual(value.custom_dns, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(9, value.custom_dns) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, WifiConnected value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.ssid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ssid);
                }
                if (value.signal_strength != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.signal_strength));
                }
                if (value.num_signal_strength_levels != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.num_signal_strength_levels));
                }
                if (value.frequency != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.frequency));
                }
                if (!Intrinsics.areEqual(value.security_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.security_type);
                }
                if (!Intrinsics.areEqual(value.custom_ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.custom_ip_address);
                }
                if (!Intrinsics.areEqual(value.custom_subnet_mask, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.custom_subnet_mask);
                }
                if (!Intrinsics.areEqual(value.custom_router, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.custom_router);
                }
                if (!Intrinsics.areEqual(value.custom_dns, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.custom_dns);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, WifiConnected value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.custom_dns, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.custom_dns);
                }
                if (!Intrinsics.areEqual(value.custom_router, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.custom_router);
                }
                if (!Intrinsics.areEqual(value.custom_subnet_mask, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.custom_subnet_mask);
                }
                if (!Intrinsics.areEqual(value.custom_ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.custom_ip_address);
                }
                if (!Intrinsics.areEqual(value.security_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.security_type);
                }
                if (value.frequency != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.frequency));
                }
                if (value.num_signal_strength_levels != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.num_signal_strength_levels));
                }
                if (value.signal_strength != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 2, Integer.valueOf(value.signal_strength));
                }
                if (Intrinsics.areEqual(value.ssid, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ssid);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public WifiConnected redact(WifiConnected value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return WifiConnected.copy$default(value, null, 0, 0, 0, null, null, null, null, null, ByteString.EMPTY, 511, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public WifiConnected decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                int iIntValue = 0;
                int iIntValue2 = 0;
                int iIntValue3 = 0;
                String strDecode6 = strDecode5;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 3:
                                iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 4:
                                iIntValue3 = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 5:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new WifiConnected(strDecode, iIntValue, iIntValue2, iIntValue3, strDecode6, strDecode2, strDecode3, strDecode4, strDecode5, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
