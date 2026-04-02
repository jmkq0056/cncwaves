package com.stripe.proto.api.ipc;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
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

/* JADX INFO: compiled from: GetIntentResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0002\b\u0006\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016BA\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\u0006\u0012\b\b\u0002\u0010\n\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJB\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u00062\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\bH\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0006H\u0016R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/ipc/GetIntentResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/ipc/GetIntentResponse$Builder;", FirebaseAnalytics.Param.SUCCESS, "", "action", "", "flags", "", "package_name", "activity_name", "unknownFields", "Lokio/ByteString;", "(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GetIntentResponse extends Message<GetIntentResponse, Builder> {
    public static final ProtoAdapter<GetIntentResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String action;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "activityName", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 5)
    public final String activity_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final int flags;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = RemoteConfigConstants.RequestFieldKey.PACKAGE_NAME, label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String package_name;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final boolean success;

    public GetIntentResponse() {
        this(false, null, 0, null, null, null, 63, null);
    }

    public /* synthetic */ GetIntentResponse(boolean z, String str, int i, String str2, String str3, ByteString byteString, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? "" : str, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? "" : str2, (i2 & 16) != 0 ? "" : str3, (i2 & 32) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetIntentResponse(boolean z, String action, int i, String package_name, String activity_name, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(package_name, "package_name");
        Intrinsics.checkNotNullParameter(activity_name, "activity_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.success = z;
        this.action = action;
        this.flags = i;
        this.package_name = package_name;
        this.activity_name = activity_name;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.success = this.success;
        builder.action = this.action;
        builder.flags = this.flags;
        builder.package_name = this.package_name;
        builder.activity_name = this.activity_name;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof GetIntentResponse)) {
            return false;
        }
        GetIntentResponse getIntentResponse = (GetIntentResponse) other;
        return Intrinsics.areEqual(unknownFields(), getIntentResponse.unknownFields()) && this.success == getIntentResponse.success && Intrinsics.areEqual(this.action, getIntentResponse.action) && this.flags == getIntentResponse.flags && Intrinsics.areEqual(this.package_name, getIntentResponse.package_name) && Intrinsics.areEqual(this.activity_name, getIntentResponse.activity_name);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((unknownFields().hashCode() * 37) + Boolean.hashCode(this.success)) * 37) + this.action.hashCode()) * 37) + Integer.hashCode(this.flags)) * 37) + this.package_name.hashCode()) * 37) + this.activity_name.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("success=" + this.success);
        arrayList2.add("action=" + Internal.sanitize(this.action));
        arrayList2.add("flags=" + this.flags);
        arrayList2.add("package_name=" + Internal.sanitize(this.package_name));
        arrayList2.add("activity_name=" + Internal.sanitize(this.activity_name));
        return CollectionsKt.joinToString$default(arrayList, ", ", "GetIntentResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ GetIntentResponse copy$default(GetIntentResponse getIntentResponse, boolean z, String str, int i, String str2, String str3, ByteString byteString, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = getIntentResponse.success;
        }
        if ((i2 & 2) != 0) {
            str = getIntentResponse.action;
        }
        if ((i2 & 4) != 0) {
            i = getIntentResponse.flags;
        }
        if ((i2 & 8) != 0) {
            str2 = getIntentResponse.package_name;
        }
        if ((i2 & 16) != 0) {
            str3 = getIntentResponse.activity_name;
        }
        if ((i2 & 32) != 0) {
            byteString = getIntentResponse.unknownFields();
        }
        String str4 = str3;
        ByteString byteString2 = byteString;
        return getIntentResponse.copy(z, str, i, str2, str4, byteString2);
    }

    public final GetIntentResponse copy(boolean success, String action, int flags, String package_name, String activity_name, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(action, "action");
        Intrinsics.checkNotNullParameter(package_name, "package_name");
        Intrinsics.checkNotNullParameter(activity_name, "activity_name");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new GetIntentResponse(success, action, flags, package_name, activity_name, unknownFields);
    }

    /* JADX INFO: compiled from: GetIntentResponse.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\b\u0010\f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/ipc/GetIntentResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/ipc/GetIntentResponse;", "()V", "action", "", "activity_name", "flags", "", "package_name", FirebaseAnalytics.Param.SUCCESS, "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<GetIntentResponse, Builder> {
        public int flags;
        public boolean success;
        public String action = "";
        public String package_name = "";
        public String activity_name = "";

        public final Builder success(boolean success) {
            this.success = success;
            return this;
        }

        public final Builder action(String action) {
            Intrinsics.checkNotNullParameter(action, "action");
            this.action = action;
            return this;
        }

        public final Builder flags(int flags) {
            this.flags = flags;
            return this;
        }

        public final Builder package_name(String package_name) {
            Intrinsics.checkNotNullParameter(package_name, "package_name");
            this.package_name = package_name;
            return this;
        }

        public final Builder activity_name(String activity_name) {
            Intrinsics.checkNotNullParameter(activity_name, "activity_name");
            this.activity_name = activity_name;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public GetIntentResponse build() {
            return new GetIntentResponse(this.success, this.action, this.flags, this.package_name, this.activity_name, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: GetIntentResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/ipc/GetIntentResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/ipc/GetIntentResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/ipc/GetIntentResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ GetIntentResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(GetIntentResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<GetIntentResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.ipc.GetIntentResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(GetIntentResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.success) {
                    size += ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.success));
                }
                if (!Intrinsics.areEqual(value.action, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.action);
                }
                if (value.flags != 0) {
                    size += ProtoAdapter.INT32.encodedSizeWithTag(3, Integer.valueOf(value.flags));
                }
                if (!Intrinsics.areEqual(value.package_name, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.package_name);
                }
                return !Intrinsics.areEqual(value.activity_name, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(5, value.activity_name) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, GetIntentResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.success) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.success));
                }
                if (!Intrinsics.areEqual(value.action, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.action);
                }
                if (value.flags != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.flags));
                }
                if (!Intrinsics.areEqual(value.package_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.package_name);
                }
                if (!Intrinsics.areEqual(value.activity_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.activity_name);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, GetIntentResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.activity_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.activity_name);
                }
                if (!Intrinsics.areEqual(value.package_name, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.package_name);
                }
                if (value.flags != 0) {
                    ProtoAdapter.INT32.encodeWithTag(writer, 3, Integer.valueOf(value.flags));
                }
                if (!Intrinsics.areEqual(value.action, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.action);
                }
                if (value.success) {
                    ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.success));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public GetIntentResponse redact(GetIntentResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return GetIntentResponse.copy$default(value, false, null, 0, null, null, ByteString.EMPTY, 31, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public GetIntentResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                boolean zBooleanValue = false;
                int iIntValue = 0;
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new GetIntentResponse(zBooleanValue, strDecode, iIntValue, strDecode2, strDecode3, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        iIntValue = ProtoAdapter.INT32.decode(reader).intValue();
                    } else if (iNextTag == 4) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 5) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
