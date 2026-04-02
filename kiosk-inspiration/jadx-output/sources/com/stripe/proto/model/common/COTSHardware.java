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

/* JADX INFO: compiled from: COTSHardware.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ8\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/common/COTSHardware;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/COTSHardware$Builder;", "name", "", "model", "manufacturer", "mobile_os", "Lcom/stripe/proto/model/common/MobileOS;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/common/MobileOS;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class COTSHardware extends Message<COTSHardware, Builder> {
    public static final ProtoAdapter<COTSHardware> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String manufacturer;

    @WireField(adapter = "com.stripe.proto.model.common.MobileOS#ADAPTER", jsonName = "mobileOs", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final MobileOS mobile_os;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String model;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String name;

    public COTSHardware() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ COTSHardware(String str, String str2, String str3, MobileOS mobileOS, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? MobileOS.UNKNOWN_OS : mobileOS, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public COTSHardware(String name, String model, String manufacturer, MobileOS mobile_os, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
        Intrinsics.checkNotNullParameter(mobile_os, "mobile_os");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.name = name;
        this.model = model;
        this.manufacturer = manufacturer;
        this.mobile_os = mobile_os;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.name = this.name;
        builder.model = this.model;
        builder.manufacturer = this.manufacturer;
        builder.mobile_os = this.mobile_os;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof COTSHardware)) {
            return false;
        }
        COTSHardware cOTSHardware = (COTSHardware) other;
        return Intrinsics.areEqual(unknownFields(), cOTSHardware.unknownFields()) && Intrinsics.areEqual(this.name, cOTSHardware.name) && Intrinsics.areEqual(this.model, cOTSHardware.model) && Intrinsics.areEqual(this.manufacturer, cOTSHardware.manufacturer) && this.mobile_os == cOTSHardware.mobile_os;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.name.hashCode()) * 37) + this.model.hashCode()) * 37) + this.manufacturer.hashCode()) * 37) + this.mobile_os.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("name=" + Internal.sanitize(this.name));
        arrayList2.add("model=" + Internal.sanitize(this.model));
        arrayList2.add("manufacturer=" + Internal.sanitize(this.manufacturer));
        arrayList2.add("mobile_os=" + this.mobile_os);
        return CollectionsKt.joinToString$default(arrayList, ", ", "COTSHardware{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ COTSHardware copy$default(COTSHardware cOTSHardware, String str, String str2, String str3, MobileOS mobileOS, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = cOTSHardware.name;
        }
        if ((i & 2) != 0) {
            str2 = cOTSHardware.model;
        }
        if ((i & 4) != 0) {
            str3 = cOTSHardware.manufacturer;
        }
        if ((i & 8) != 0) {
            mobileOS = cOTSHardware.mobile_os;
        }
        if ((i & 16) != 0) {
            byteString = cOTSHardware.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str4 = str3;
        return cOTSHardware.copy(str, str2, str4, mobileOS, byteString2);
    }

    public final COTSHardware copy(String name, String model, String manufacturer, MobileOS mobile_os, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(model, "model");
        Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
        Intrinsics.checkNotNullParameter(mobile_os, "mobile_os");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new COTSHardware(name, model, manufacturer, mobile_os, unknownFields);
    }

    /* JADX INFO: compiled from: COTSHardware.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/common/COTSHardware$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/COTSHardware;", "()V", "manufacturer", "", "mobile_os", "Lcom/stripe/proto/model/common/MobileOS;", "model", "name", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<COTSHardware, Builder> {
        public String name = "";
        public String model = "";
        public String manufacturer = "";
        public MobileOS mobile_os = MobileOS.UNKNOWN_OS;

        public final Builder name(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            return this;
        }

        public final Builder model(String model) {
            Intrinsics.checkNotNullParameter(model, "model");
            this.model = model;
            return this;
        }

        public final Builder manufacturer(String manufacturer) {
            Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
            this.manufacturer = manufacturer;
            return this;
        }

        public final Builder mobile_os(MobileOS mobile_os) {
            Intrinsics.checkNotNullParameter(mobile_os, "mobile_os");
            this.mobile_os = mobile_os;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public COTSHardware build() {
            return new COTSHardware(this.name, this.model, this.manufacturer, this.mobile_os, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: COTSHardware.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/COTSHardware$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/COTSHardware;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/COTSHardware$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ COTSHardware build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(COTSHardware.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<COTSHardware>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.COTSHardware$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(COTSHardware value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.name);
                }
                if (!Intrinsics.areEqual(value.model, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.model);
                }
                if (!Intrinsics.areEqual(value.manufacturer, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.manufacturer);
                }
                return value.mobile_os != MobileOS.UNKNOWN_OS ? size + MobileOS.ADAPTER.encodedSizeWithTag(4, value.mobile_os) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, COTSHardware value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
                }
                if (!Intrinsics.areEqual(value.model, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.model);
                }
                if (!Intrinsics.areEqual(value.manufacturer, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.manufacturer);
                }
                if (value.mobile_os != MobileOS.UNKNOWN_OS) {
                    MobileOS.ADAPTER.encodeWithTag(writer, 4, value.mobile_os);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, COTSHardware value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.mobile_os != MobileOS.UNKNOWN_OS) {
                    MobileOS.ADAPTER.encodeWithTag(writer, 4, value.mobile_os);
                }
                if (!Intrinsics.areEqual(value.manufacturer, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.manufacturer);
                }
                if (!Intrinsics.areEqual(value.model, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.model);
                }
                if (Intrinsics.areEqual(value.name, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.name);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public COTSHardware decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                MobileOS mobileOSDecode = MobileOS.UNKNOWN_OS;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                String strDecode3 = strDecode2;
                while (true) {
                    MobileOS mobileOS = mobileOSDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new COTSHardware(strDecode, strDecode2, strDecode3, mobileOS, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 2) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode3 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            try {
                                mobileOSDecode = MobileOS.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public COTSHardware redact(COTSHardware value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return COTSHardware.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }
        };
    }
}
