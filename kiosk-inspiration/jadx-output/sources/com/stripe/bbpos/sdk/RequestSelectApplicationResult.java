package com.stripe.bbpos.sdk;

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
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: RequestSelectApplicationResult.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0005H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;", "appList", "", "", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RequestSelectApplicationResult extends Message<RequestSelectApplicationResult, Builder> {
    public static final ProtoAdapter<RequestSelectApplicationResult> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<String> appList;

    /* JADX WARN: Multi-variable type inference failed */
    public RequestSelectApplicationResult() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ RequestSelectApplicationResult(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RequestSelectApplicationResult(List<String> appList, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(appList, "appList");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.appList = Internal.immutableCopyOf("appList", appList);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.appList = this.appList;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RequestSelectApplicationResult)) {
            return false;
        }
        RequestSelectApplicationResult requestSelectApplicationResult = (RequestSelectApplicationResult) other;
        return Intrinsics.areEqual(unknownFields(), requestSelectApplicationResult.unknownFields()) && Intrinsics.areEqual(this.appList, requestSelectApplicationResult.appList);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.appList.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.appList.isEmpty()) {
            arrayList.add("appList=" + Internal.sanitize(this.appList));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "RequestSelectApplicationResult{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RequestSelectApplicationResult copy$default(RequestSelectApplicationResult requestSelectApplicationResult, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = requestSelectApplicationResult.appList;
        }
        if ((i & 2) != 0) {
            byteString = requestSelectApplicationResult.unknownFields();
        }
        return requestSelectApplicationResult.copy(list, byteString);
    }

    public final RequestSelectApplicationResult copy(List<String> appList, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(appList, "appList");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RequestSelectApplicationResult(appList, unknownFields);
    }

    /* JADX INFO: compiled from: RequestSelectApplicationResult.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005J\b\u0010\u0007\u001a\u00020\u0002H\u0016R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult;", "()V", "appList", "", "", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RequestSelectApplicationResult, Builder> {
        public List<String> appList = CollectionsKt.emptyList();

        public final Builder appList(List<String> appList) {
            Intrinsics.checkNotNullParameter(appList, "appList");
            Internal.checkElementsNotNull(appList);
            this.appList = appList;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RequestSelectApplicationResult build() {
            return new RequestSelectApplicationResult(this.appList, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RequestSelectApplicationResult.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/RequestSelectApplicationResult$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RequestSelectApplicationResult build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RequestSelectApplicationResult.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RequestSelectApplicationResult>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.RequestSelectApplicationResult$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RequestSelectApplicationResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ProtoAdapter.STRING.asRepeated().encodedSizeWithTag(1, value.appList);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RequestSelectApplicationResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.appList);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RequestSelectApplicationResult value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.asRepeated().encodeWithTag(writer, 1, value.appList);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RequestSelectApplicationResult decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new RequestSelectApplicationResult(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(ProtoAdapter.STRING.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RequestSelectApplicationResult redact(RequestSelectApplicationResult value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return RequestSelectApplicationResult.copy$default(value, null, ByteString.EMPTY, 1, null);
            }
        };
    }
}
