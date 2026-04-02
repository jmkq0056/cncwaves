package com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity;

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

/* JADX INFO: compiled from: CellularContext.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBi\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\f\u001a\u00020\u0004\u0012\b\b\u0002\u0010\r\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010Jj\u0010\u0011\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u00042\b\b\u0002\u0010\r\u001a\u00020\u00042\b\b\u0002\u0010\u000e\u001a\u00020\u000fJ\u0013\u0010\u0012\u001a\u00020\u00132\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\tH\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0004H\u0016R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;", "cellular_mac_address", "", "iccid", "imsi", "meid", "carrier_id", "", "carrier_name", "network_type", "network_operator", "subscriber_id", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CellularContext extends Message<CellularContext, Builder> {
    public static final ProtoAdapter<CellularContext> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "carrierId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final int carrier_id;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "carrierName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 6)
    public final String carrier_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "cellularMacAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String cellular_mac_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String iccid;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String imsi;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String meid;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "networkOperator", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 7, tag = 8)
    public final String network_operator;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "networkType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String network_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "subscriberId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 8, tag = 9)
    public final String subscriber_id;

    public CellularContext() {
        this(null, null, null, null, 0, null, null, null, null, null, WinUser.CF_GDIOBJLAST, null);
    }

    public /* synthetic */ CellularContext(String str, String str2, String str3, String str4, int i, String str5, String str6, String str7, String str8, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? "" : str, (i2 & 2) != 0 ? "" : str2, (i2 & 4) != 0 ? "" : str3, (i2 & 8) != 0 ? "" : str4, (i2 & 16) != 0 ? 0 : i, (i2 & 32) != 0 ? "" : str5, (i2 & 64) != 0 ? "" : str6, (i2 & 128) != 0 ? "" : str7, (i2 & 256) != 0 ? "" : str8, (i2 & 512) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellularContext(String cellular_mac_address, String iccid, String imsi, String meid, int i, String carrier_name, String network_type, String network_operator, String subscriber_id, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(cellular_mac_address, "cellular_mac_address");
        Intrinsics.checkNotNullParameter(iccid, "iccid");
        Intrinsics.checkNotNullParameter(imsi, "imsi");
        Intrinsics.checkNotNullParameter(meid, "meid");
        Intrinsics.checkNotNullParameter(carrier_name, "carrier_name");
        Intrinsics.checkNotNullParameter(network_type, "network_type");
        Intrinsics.checkNotNullParameter(network_operator, "network_operator");
        Intrinsics.checkNotNullParameter(subscriber_id, "subscriber_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.cellular_mac_address = cellular_mac_address;
        this.iccid = iccid;
        this.imsi = imsi;
        this.meid = meid;
        this.carrier_id = i;
        this.carrier_name = carrier_name;
        this.network_type = network_type;
        this.network_operator = network_operator;
        this.subscriber_id = subscriber_id;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.cellular_mac_address = this.cellular_mac_address;
        builder.iccid = this.iccid;
        builder.imsi = this.imsi;
        builder.meid = this.meid;
        builder.carrier_id = this.carrier_id;
        builder.carrier_name = this.carrier_name;
        builder.network_type = this.network_type;
        builder.network_operator = this.network_operator;
        builder.subscriber_id = this.subscriber_id;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CellularContext)) {
            return false;
        }
        CellularContext cellularContext = (CellularContext) other;
        return Intrinsics.areEqual(unknownFields(), cellularContext.unknownFields()) && Intrinsics.areEqual(this.cellular_mac_address, cellularContext.cellular_mac_address) && Intrinsics.areEqual(this.iccid, cellularContext.iccid) && Intrinsics.areEqual(this.imsi, cellularContext.imsi) && Intrinsics.areEqual(this.meid, cellularContext.meid) && this.carrier_id == cellularContext.carrier_id && Intrinsics.areEqual(this.carrier_name, cellularContext.carrier_name) && Intrinsics.areEqual(this.network_type, cellularContext.network_type) && Intrinsics.areEqual(this.network_operator, cellularContext.network_operator) && Intrinsics.areEqual(this.subscriber_id, cellularContext.subscriber_id);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((((((unknownFields().hashCode() * 37) + this.cellular_mac_address.hashCode()) * 37) + this.iccid.hashCode()) * 37) + this.imsi.hashCode()) * 37) + this.meid.hashCode()) * 37) + Integer.hashCode(this.carrier_id)) * 37) + this.carrier_name.hashCode()) * 37) + this.network_type.hashCode()) * 37) + this.network_operator.hashCode()) * 37) + this.subscriber_id.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("cellular_mac_address=" + Internal.sanitize(this.cellular_mac_address));
        arrayList2.add("iccid=" + Internal.sanitize(this.iccid));
        arrayList2.add("imsi=" + Internal.sanitize(this.imsi));
        arrayList2.add("meid=" + Internal.sanitize(this.meid));
        arrayList2.add("carrier_id=" + this.carrier_id);
        arrayList2.add("carrier_name=" + Internal.sanitize(this.carrier_name));
        arrayList2.add("network_type=" + Internal.sanitize(this.network_type));
        arrayList2.add("network_operator=" + Internal.sanitize(this.network_operator));
        arrayList2.add("subscriber_id=" + Internal.sanitize(this.subscriber_id));
        return CollectionsKt.joinToString$default(arrayList, ", ", "CellularContext{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CellularContext copy$default(CellularContext cellularContext, String str, String str2, String str3, String str4, int i, String str5, String str6, String str7, String str8, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = cellularContext.cellular_mac_address;
        }
        if ((i2 & 2) != 0) {
            str2 = cellularContext.iccid;
        }
        if ((i2 & 4) != 0) {
            str3 = cellularContext.imsi;
        }
        if ((i2 & 8) != 0) {
            str4 = cellularContext.meid;
        }
        if ((i2 & 16) != 0) {
            i = cellularContext.carrier_id;
        }
        if ((i2 & 32) != 0) {
            str5 = cellularContext.carrier_name;
        }
        if ((i2 & 64) != 0) {
            str6 = cellularContext.network_type;
        }
        if ((i2 & 128) != 0) {
            str7 = cellularContext.network_operator;
        }
        if ((i2 & 256) != 0) {
            str8 = cellularContext.subscriber_id;
        }
        if ((i2 & 512) != 0) {
            byteString = cellularContext.unknownFields();
        }
        String str9 = str8;
        ByteString byteString2 = byteString;
        String str10 = str6;
        String str11 = str7;
        int i3 = i;
        String str12 = str5;
        return cellularContext.copy(str, str2, str3, str4, i3, str12, str10, str11, str9, byteString2);
    }

    public final CellularContext copy(String cellular_mac_address, String iccid, String imsi, String meid, int carrier_id, String carrier_name, String network_type, String network_operator, String subscriber_id, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(cellular_mac_address, "cellular_mac_address");
        Intrinsics.checkNotNullParameter(iccid, "iccid");
        Intrinsics.checkNotNullParameter(imsi, "imsi");
        Intrinsics.checkNotNullParameter(meid, "meid");
        Intrinsics.checkNotNullParameter(carrier_name, "carrier_name");
        Intrinsics.checkNotNullParameter(network_type, "network_type");
        Intrinsics.checkNotNullParameter(network_operator, "network_operator");
        Intrinsics.checkNotNullParameter(subscriber_id, "subscriber_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CellularContext(cellular_mac_address, iccid, imsi, meid, carrier_id, carrier_name, network_type, network_operator, subscriber_id, unknownFields);
    }

    /* JADX INFO: compiled from: CellularContext.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0007J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0007J\u000e\u0010\f\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u0007J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0007J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;", "()V", "carrier_id", "", "carrier_name", "", "cellular_mac_address", "iccid", "imsi", "meid", "network_operator", "network_type", "subscriber_id", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CellularContext, Builder> {
        public int carrier_id;
        public String cellular_mac_address = "";
        public String iccid = "";
        public String imsi = "";
        public String meid = "";
        public String carrier_name = "";
        public String network_type = "";
        public String network_operator = "";
        public String subscriber_id = "";

        public final Builder cellular_mac_address(String cellular_mac_address) {
            Intrinsics.checkNotNullParameter(cellular_mac_address, "cellular_mac_address");
            this.cellular_mac_address = cellular_mac_address;
            return this;
        }

        public final Builder iccid(String iccid) {
            Intrinsics.checkNotNullParameter(iccid, "iccid");
            this.iccid = iccid;
            return this;
        }

        public final Builder imsi(String imsi) {
            Intrinsics.checkNotNullParameter(imsi, "imsi");
            this.imsi = imsi;
            return this;
        }

        public final Builder meid(String meid) {
            Intrinsics.checkNotNullParameter(meid, "meid");
            this.meid = meid;
            return this;
        }

        public final Builder carrier_id(int carrier_id) {
            this.carrier_id = carrier_id;
            return this;
        }

        public final Builder carrier_name(String carrier_name) {
            Intrinsics.checkNotNullParameter(carrier_name, "carrier_name");
            this.carrier_name = carrier_name;
            return this;
        }

        public final Builder network_type(String network_type) {
            Intrinsics.checkNotNullParameter(network_type, "network_type");
            this.network_type = network_type;
            return this;
        }

        public final Builder network_operator(String network_operator) {
            Intrinsics.checkNotNullParameter(network_operator, "network_operator");
            this.network_operator = network_operator;
            return this;
        }

        public final Builder subscriber_id(String subscriber_id) {
            Intrinsics.checkNotNullParameter(subscriber_id, "subscriber_id");
            this.subscriber_id = subscriber_id;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CellularContext build() {
            return new CellularContext(this.cellular_mac_address, this.iccid, this.imsi, this.meid, this.carrier_id, this.carrier_name, this.network_type, this.network_operator, this.subscriber_id, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CellularContext.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/network_connectivity/CellularContext$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CellularContext build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CellularContext.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CellularContext>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.network_connectivity.CellularContext$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CellularContext value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.cellular_mac_address, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.cellular_mac_address);
                }
                if (!Intrinsics.areEqual(value.iccid, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.iccid);
                }
                if (!Intrinsics.areEqual(value.imsi, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.imsi);
                }
                if (!Intrinsics.areEqual(value.meid, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.meid);
                }
                if (value.carrier_id != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(5, Integer.valueOf(value.carrier_id));
                }
                if (!Intrinsics.areEqual(value.carrier_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.carrier_name);
                }
                if (!Intrinsics.areEqual(value.network_type, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(7, value.network_type);
                }
                if (!Intrinsics.areEqual(value.network_operator, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(8, value.network_operator);
                }
                return !Intrinsics.areEqual(value.subscriber_id, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(9, value.subscriber_id) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CellularContext value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.cellular_mac_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.cellular_mac_address);
                }
                if (!Intrinsics.areEqual(value.iccid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.iccid);
                }
                if (!Intrinsics.areEqual(value.imsi, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.imsi);
                }
                if (!Intrinsics.areEqual(value.meid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.meid);
                }
                if (value.carrier_id != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.carrier_id));
                }
                if (!Intrinsics.areEqual(value.carrier_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.carrier_name);
                }
                if (!Intrinsics.areEqual(value.network_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.network_type);
                }
                if (!Intrinsics.areEqual(value.network_operator, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.network_operator);
                }
                if (!Intrinsics.areEqual(value.subscriber_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.subscriber_id);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CellularContext value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.subscriber_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 9, value.subscriber_id);
                }
                if (!Intrinsics.areEqual(value.network_operator, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 8, value.network_operator);
                }
                if (!Intrinsics.areEqual(value.network_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.network_type);
                }
                if (!Intrinsics.areEqual(value.carrier_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.carrier_name);
                }
                if (value.carrier_id != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 5, Integer.valueOf(value.carrier_id));
                }
                if (!Intrinsics.areEqual(value.meid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.meid);
                }
                if (!Intrinsics.areEqual(value.imsi, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.imsi);
                }
                if (!Intrinsics.areEqual(value.iccid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.iccid);
                }
                if (Intrinsics.areEqual(value.cellular_mac_address, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.cellular_mac_address);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CellularContext redact(CellularContext value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CellularContext.copy$default(value, null, null, null, null, 0, null, null, null, null, ByteString.EMPTY, 511, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CellularContext decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                String strDecode7 = strDecode6;
                int iIntValue = 0;
                String strDecode8 = strDecode7;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode8 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                                break;
                            case 6:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 8:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 9:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new CellularContext(strDecode, strDecode8, strDecode2, strDecode3, iIntValue, strDecode4, strDecode5, strDecode6, strDecode7, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
