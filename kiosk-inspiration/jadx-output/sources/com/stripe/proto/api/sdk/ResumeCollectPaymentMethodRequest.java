package com.stripe.proto.api.sdk;

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

/* JADX INFO: compiled from: ResumeCollectPaymentMethodRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0004H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest$Builder;", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ResumeCollectPaymentMethodRequest extends Message<ResumeCollectPaymentMethodRequest, Builder> {
    public static final ProtoAdapter<ResumeCollectPaymentMethodRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflinePaymentDetails#ADAPTER", jsonName = "offlineDetails", schemaIndex = 1, tag = 3)
    public final OfflinePaymentDetails offline_details;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "paymentIntentId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String payment_intent_id;

    public ResumeCollectPaymentMethodRequest() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ResumeCollectPaymentMethodRequest(String str, OfflinePaymentDetails offlinePaymentDetails, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : offlinePaymentDetails, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ResumeCollectPaymentMethodRequest(String payment_intent_id, OfflinePaymentDetails offlinePaymentDetails, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.payment_intent_id = payment_intent_id;
        this.offline_details = offlinePaymentDetails;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.payment_intent_id = this.payment_intent_id;
        builder.offline_details = this.offline_details;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ResumeCollectPaymentMethodRequest)) {
            return false;
        }
        ResumeCollectPaymentMethodRequest resumeCollectPaymentMethodRequest = (ResumeCollectPaymentMethodRequest) other;
        return Intrinsics.areEqual(unknownFields(), resumeCollectPaymentMethodRequest.unknownFields()) && Intrinsics.areEqual(this.payment_intent_id, resumeCollectPaymentMethodRequest.payment_intent_id) && Intrinsics.areEqual(this.offline_details, resumeCollectPaymentMethodRequest.offline_details);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.payment_intent_id.hashCode()) * 37;
        OfflinePaymentDetails offlinePaymentDetails = this.offline_details;
        int iHashCode2 = iHashCode + (offlinePaymentDetails != null ? offlinePaymentDetails.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("payment_intent_id=" + Internal.sanitize(this.payment_intent_id));
        if (this.offline_details != null) {
            arrayList2.add("offline_details=" + this.offline_details);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ResumeCollectPaymentMethodRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ResumeCollectPaymentMethodRequest copy$default(ResumeCollectPaymentMethodRequest resumeCollectPaymentMethodRequest, String str, OfflinePaymentDetails offlinePaymentDetails, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = resumeCollectPaymentMethodRequest.payment_intent_id;
        }
        if ((i & 2) != 0) {
            offlinePaymentDetails = resumeCollectPaymentMethodRequest.offline_details;
        }
        if ((i & 4) != 0) {
            byteString = resumeCollectPaymentMethodRequest.unknownFields();
        }
        return resumeCollectPaymentMethodRequest.copy(str, offlinePaymentDetails, byteString);
    }

    public final ResumeCollectPaymentMethodRequest copy(String payment_intent_id, OfflinePaymentDetails offline_details, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ResumeCollectPaymentMethodRequest(payment_intent_id, offline_details, unknownFields);
    }

    /* JADX INFO: compiled from: ResumeCollectPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;", "()V", "offline_details", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", OfflineStorageConstantsKt.PAYMENT_INTENT_ID, "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ResumeCollectPaymentMethodRequest, Builder> {
        public OfflinePaymentDetails offline_details;
        public String payment_intent_id = "";

        public final Builder payment_intent_id(String payment_intent_id) {
            Intrinsics.checkNotNullParameter(payment_intent_id, "payment_intent_id");
            this.payment_intent_id = payment_intent_id;
            return this;
        }

        public final Builder offline_details(OfflinePaymentDetails offline_details) {
            this.offline_details = offline_details;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ResumeCollectPaymentMethodRequest build() {
            return new ResumeCollectPaymentMethodRequest(this.payment_intent_id, this.offline_details, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ResumeCollectPaymentMethodRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ResumeCollectPaymentMethodRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ResumeCollectPaymentMethodRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ResumeCollectPaymentMethodRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ResumeCollectPaymentMethodRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ResumeCollectPaymentMethodRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ResumeCollectPaymentMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.payment_intent_id);
                }
                return size + OfflinePaymentDetails.ADAPTER.encodedSizeWithTag(3, value.offline_details);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ResumeCollectPaymentMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.payment_intent_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.payment_intent_id);
                }
                OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 3, value.offline_details);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ResumeCollectPaymentMethodRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                OfflinePaymentDetails.ADAPTER.encodeWithTag(writer, 3, value.offline_details);
                if (Intrinsics.areEqual(value.payment_intent_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.payment_intent_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ResumeCollectPaymentMethodRequest redact(ResumeCollectPaymentMethodRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                OfflinePaymentDetails offlinePaymentDetails = value.offline_details;
                return ResumeCollectPaymentMethodRequest.copy$default(value, null, offlinePaymentDetails != null ? OfflinePaymentDetails.ADAPTER.redact(offlinePaymentDetails) : null, ByteString.EMPTY, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ResumeCollectPaymentMethodRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                OfflinePaymentDetails offlinePaymentDetailsDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ResumeCollectPaymentMethodRequest(strDecode, offlinePaymentDetailsDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        offlinePaymentDetailsDecode = OfflinePaymentDetails.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
