package com.stripe.proto.model.common;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: WifiConnection.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\u00072\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0007H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/common/WifiConnection;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/WifiConnection$Builder;", "ip_address", "", "ssid", "frequency", "", "signal_strength_percentage", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;IILokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class WifiConnection extends Message<WifiConnection, Builder> {
    public static final ProtoAdapter<WifiConnection> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int frequency;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "ipAddress", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String ip_address;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", jsonName = "signalStrengthPercentage", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final int signal_strength_percentage;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String ssid;

    public WifiConnection() {
        this(null, null, 0, 0, null, 31, null);
    }

    public /* synthetic */ WifiConnection(String str, String str2, int i, int i2, ByteString byteString, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? "" : str, (i3 & 2) != 0 ? "" : str2, (i3 & 4) != 0 ? 0 : i, (i3 & 8) != 0 ? 0 : i2, (i3 & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiConnection(String ip_address, String ssid, int i, int i2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(ip_address, "ip_address");
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.ip_address = ip_address;
        this.ssid = ssid;
        this.frequency = i;
        this.signal_strength_percentage = i2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.ip_address = this.ip_address;
        builder.ssid = this.ssid;
        builder.frequency = this.frequency;
        builder.signal_strength_percentage = this.signal_strength_percentage;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof WifiConnection)) {
            return false;
        }
        WifiConnection wifiConnection = (WifiConnection) other;
        return Intrinsics.areEqual(unknownFields(), wifiConnection.unknownFields()) && Intrinsics.areEqual(this.ip_address, wifiConnection.ip_address) && Intrinsics.areEqual(this.ssid, wifiConnection.ssid) && this.frequency == wifiConnection.frequency && this.signal_strength_percentage == wifiConnection.signal_strength_percentage;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.ip_address.hashCode()) * 37) + this.ssid.hashCode()) * 37) + Integer.hashCode(this.frequency)) * 37) + Integer.hashCode(this.signal_strength_percentage);
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("ip_address=" + Internal.sanitize(this.ip_address));
        arrayList2.add("ssid=" + Internal.sanitize(this.ssid));
        arrayList2.add("frequency=" + this.frequency);
        arrayList2.add("signal_strength_percentage=" + this.signal_strength_percentage);
        return CollectionsKt.joinToString$default(arrayList, ", ", "WifiConnection{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ WifiConnection copy$default(WifiConnection wifiConnection, String str, String str2, int i, int i2, ByteString byteString, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = wifiConnection.ip_address;
        }
        if ((i3 & 2) != 0) {
            str2 = wifiConnection.ssid;
        }
        if ((i3 & 4) != 0) {
            i = wifiConnection.frequency;
        }
        if ((i3 & 8) != 0) {
            i2 = wifiConnection.signal_strength_percentage;
        }
        if ((i3 & 16) != 0) {
            byteString = wifiConnection.unknownFields();
        }
        ByteString byteString2 = byteString;
        int i4 = i;
        return wifiConnection.copy(str, str2, i4, i2, byteString2);
    }

    public final WifiConnection copy(String ip_address, String ssid, int frequency, int signal_strength_percentage, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(ip_address, "ip_address");
        Intrinsics.checkNotNullParameter(ssid, "ssid");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new WifiConnection(ip_address, ssid, frequency, signal_strength_percentage, unknownFields);
    }

    /* JADX INFO: compiled from: WifiConnection.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/WifiConnection$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/WifiConnection;", "()V", "frequency", "", "ip_address", "", "signal_strength_percentage", "ssid", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<WifiConnection, Builder> {
        public int frequency;
        public int signal_strength_percentage;
        public String ip_address = "";
        public String ssid = "";

        public final Builder ip_address(String ip_address) {
            Intrinsics.checkNotNullParameter(ip_address, "ip_address");
            this.ip_address = ip_address;
            return this;
        }

        public final Builder ssid(String ssid) {
            Intrinsics.checkNotNullParameter(ssid, "ssid");
            this.ssid = ssid;
            return this;
        }

        public final Builder frequency(int frequency) {
            this.frequency = frequency;
            return this;
        }

        public final Builder signal_strength_percentage(int signal_strength_percentage) {
            this.signal_strength_percentage = signal_strength_percentage;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public WifiConnection build() {
            return new WifiConnection(this.ip_address, this.ssid, this.frequency, this.signal_strength_percentage, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: WifiConnection.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/WifiConnection$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/WifiConnection;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/WifiConnection$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ WifiConnection build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(WifiConnection.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<WifiConnection>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.WifiConnection$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(WifiConnection value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.ip_address, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.ip_address);
                }
                if (!Intrinsics.areEqual(value.ssid, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.ssid);
                }
                if (value.frequency != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(3, Integer.valueOf(value.frequency));
                }
                return value.signal_strength_percentage != 0 ? size + ProtoAdapter.INT32.encodedSizeWithTag(4, Integer.valueOf(value.signal_strength_percentage)) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, WifiConnection value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.ip_address, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ip_address);
                }
                if (!Intrinsics.areEqual(value.ssid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.ssid);
                }
                if (value.frequency != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.frequency));
                }
                if (value.signal_strength_percentage != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.signal_strength_percentage));
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, WifiConnection value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.signal_strength_percentage != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 4, Integer.valueOf(value.signal_strength_percentage));
                }
                if (value.frequency != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.frequency));
                }
                if (!Intrinsics.areEqual(value.ssid, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.ssid);
                }
                if (Intrinsics.areEqual(value.ip_address, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.ip_address);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public WifiConnection redact(WifiConnection value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return WifiConnection.copy$default(value, null, null, 0, 0, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public WifiConnection decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                int iIntValue = 0;
                int iIntValue2 = 0;
                String strDecode2 = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new WifiConnection(strDecode, strDecode2, iIntValue, iIntValue2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 4) {
                        iIntValue2 = ProtoAdapter.INT32.decode(reader).intValue();
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
