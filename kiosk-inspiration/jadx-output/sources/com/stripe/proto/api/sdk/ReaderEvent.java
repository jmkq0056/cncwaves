package com.stripe.proto.api.sdk;

import androidx.core.app.NotificationCompat;
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

/* JADX INFO: compiled from: ReaderEvent.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00192\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0018\u0019B=\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ>\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderEvent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;", OfflineStorageConstantsKt.ID, "", "forwarded_payment_result", "Lcom/stripe/proto/api/sdk/ForwardedPayment;", "forwarding_error", "Lcom/stripe/proto/api/sdk/ForwardingError;", "forwarded_setup_intent_result", "Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;", "unknownFields", "Lokio/ByteString;", "(JLcom/stripe/proto/api/sdk/ForwardedPayment;Lcom/stripe/proto/api/sdk/ForwardingError;Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderEvent extends Message<ReaderEvent, Builder> {
    public static final ProtoAdapter<ReaderEvent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.ForwardedPayment#ADAPTER", jsonName = "forwardedPaymentResult", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 1, tag = 2)
    public final ForwardedPayment forwarded_payment_result;

    @WireField(adapter = "com.stripe.proto.api.sdk.ForwardedSetupIntent#ADAPTER", jsonName = "forwardedSetupIntentResult", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 3, tag = 4)
    public final ForwardedSetupIntent forwarded_setup_intent_result;

    @WireField(adapter = "com.stripe.proto.api.sdk.ForwardingError#ADAPTER", jsonName = "forwardingError", oneofName = NotificationCompat.CATEGORY_EVENT, schemaIndex = 2, tag = 3)
    public final ForwardingError forwarding_error;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#UINT64", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long id;

    public ReaderEvent() {
        this(0L, null, null, null, null, 31, null);
    }

    public /* synthetic */ ReaderEvent(long j, ForwardedPayment forwardedPayment, ForwardingError forwardingError, ForwardedSetupIntent forwardedSetupIntent, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? null : forwardedPayment, (i & 4) != 0 ? null : forwardingError, (i & 8) != 0 ? null : forwardedSetupIntent, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderEvent(long j, ForwardedPayment forwardedPayment, ForwardingError forwardingError, ForwardedSetupIntent forwardedSetupIntent, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.id = j;
        this.forwarded_payment_result = forwardedPayment;
        this.forwarding_error = forwardingError;
        this.forwarded_setup_intent_result = forwardedSetupIntent;
        if (Internal.countNonNull(forwardedPayment, forwardingError, forwardedSetupIntent) > 1) {
            throw new IllegalArgumentException("At most one of forwarded_payment_result, forwarding_error, forwarded_setup_intent_result may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.id = this.id;
        builder.forwarded_payment_result = this.forwarded_payment_result;
        builder.forwarding_error = this.forwarding_error;
        builder.forwarded_setup_intent_result = this.forwarded_setup_intent_result;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReaderEvent)) {
            return false;
        }
        ReaderEvent readerEvent = (ReaderEvent) other;
        return Intrinsics.areEqual(unknownFields(), readerEvent.unknownFields()) && this.id == readerEvent.id && Intrinsics.areEqual(this.forwarded_payment_result, readerEvent.forwarded_payment_result) && Intrinsics.areEqual(this.forwarding_error, readerEvent.forwarding_error) && Intrinsics.areEqual(this.forwarded_setup_intent_result, readerEvent.forwarded_setup_intent_result);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + Long.hashCode(this.id)) * 37;
        ForwardedPayment forwardedPayment = this.forwarded_payment_result;
        int iHashCode2 = (iHashCode + (forwardedPayment != null ? forwardedPayment.hashCode() : 0)) * 37;
        ForwardingError forwardingError = this.forwarding_error;
        int iHashCode3 = (iHashCode2 + (forwardingError != null ? forwardingError.hashCode() : 0)) * 37;
        ForwardedSetupIntent forwardedSetupIntent = this.forwarded_setup_intent_result;
        int iHashCode4 = iHashCode3 + (forwardedSetupIntent != null ? forwardedSetupIntent.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("id=" + this.id);
        if (this.forwarded_payment_result != null) {
            arrayList2.add("forwarded_payment_result=" + this.forwarded_payment_result);
        }
        if (this.forwarding_error != null) {
            arrayList2.add("forwarding_error=" + this.forwarding_error);
        }
        if (this.forwarded_setup_intent_result != null) {
            arrayList2.add("forwarded_setup_intent_result=" + this.forwarded_setup_intent_result);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderEvent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReaderEvent copy$default(ReaderEvent readerEvent, long j, ForwardedPayment forwardedPayment, ForwardingError forwardingError, ForwardedSetupIntent forwardedSetupIntent, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            j = readerEvent.id;
        }
        long j2 = j;
        if ((i & 2) != 0) {
            forwardedPayment = readerEvent.forwarded_payment_result;
        }
        ForwardedPayment forwardedPayment2 = forwardedPayment;
        if ((i & 4) != 0) {
            forwardingError = readerEvent.forwarding_error;
        }
        ForwardingError forwardingError2 = forwardingError;
        if ((i & 8) != 0) {
            forwardedSetupIntent = readerEvent.forwarded_setup_intent_result;
        }
        ForwardedSetupIntent forwardedSetupIntent2 = forwardedSetupIntent;
        if ((i & 16) != 0) {
            byteString = readerEvent.unknownFields();
        }
        return readerEvent.copy(j2, forwardedPayment2, forwardingError2, forwardedSetupIntent2, byteString);
    }

    public final ReaderEvent copy(long id, ForwardedPayment forwarded_payment_result, ForwardingError forwarding_error, ForwardedSetupIntent forwarded_setup_intent_result, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReaderEvent(id, forwarded_payment_result, forwarding_error, forwarded_setup_intent_result, unknownFields);
    }

    /* JADX INFO: compiled from: ReaderEvent.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ReaderEvent;", "()V", "forwarded_payment_result", "Lcom/stripe/proto/api/sdk/ForwardedPayment;", "forwarded_setup_intent_result", "Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;", "forwarding_error", "Lcom/stripe/proto/api/sdk/ForwardingError;", OfflineStorageConstantsKt.ID, "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReaderEvent, Builder> {
        public ForwardedPayment forwarded_payment_result;
        public ForwardedSetupIntent forwarded_setup_intent_result;
        public ForwardingError forwarding_error;
        public long id;

        public final Builder id(long id) {
            this.id = id;
            return this;
        }

        public final Builder forwarded_payment_result(ForwardedPayment forwarded_payment_result) {
            this.forwarded_payment_result = forwarded_payment_result;
            this.forwarding_error = null;
            this.forwarded_setup_intent_result = null;
            return this;
        }

        public final Builder forwarding_error(ForwardingError forwarding_error) {
            this.forwarding_error = forwarding_error;
            this.forwarded_payment_result = null;
            this.forwarded_setup_intent_result = null;
            return this;
        }

        public final Builder forwarded_setup_intent_result(ForwardedSetupIntent forwarded_setup_intent_result) {
            this.forwarded_setup_intent_result = forwarded_setup_intent_result;
            this.forwarded_payment_result = null;
            this.forwarding_error = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReaderEvent build() {
            return new ReaderEvent(this.id, this.forwarded_payment_result, this.forwarding_error, this.forwarded_setup_intent_result, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReaderEvent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderEvent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ReaderEvent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ReaderEvent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReaderEvent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderEvent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReaderEvent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ReaderEvent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReaderEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.id != 0) {
                    size += ProtoAdapter.UINT64.encodedSizeWithTag(1, Long.valueOf(value.id));
                }
                return size + ForwardedPayment.ADAPTER.encodedSizeWithTag(2, value.forwarded_payment_result) + ForwardingError.ADAPTER.encodedSizeWithTag(3, value.forwarding_error) + ForwardedSetupIntent.ADAPTER.encodedSizeWithTag(4, value.forwarded_setup_intent_result);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReaderEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.id));
                }
                ForwardedPayment.ADAPTER.encodeWithTag(writer, 2, value.forwarded_payment_result);
                ForwardingError.ADAPTER.encodeWithTag(writer, 3, value.forwarding_error);
                ForwardedSetupIntent.ADAPTER.encodeWithTag(writer, 4, value.forwarded_setup_intent_result);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReaderEvent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ForwardedSetupIntent.ADAPTER.encodeWithTag(writer, 4, value.forwarded_setup_intent_result);
                ForwardingError.ADAPTER.encodeWithTag(writer, 3, value.forwarding_error);
                ForwardedPayment.ADAPTER.encodeWithTag(writer, 2, value.forwarded_payment_result);
                if (value.id != 0) {
                    ProtoAdapter.UINT64.encodeWithTag(writer, 1, Long.valueOf(value.id));
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReaderEvent redact(ReaderEvent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ForwardedPayment forwardedPayment = value.forwarded_payment_result;
                ForwardedPayment forwardedPaymentRedact = forwardedPayment != null ? ForwardedPayment.ADAPTER.redact(forwardedPayment) : null;
                ForwardingError forwardingError = value.forwarding_error;
                ForwardingError forwardingErrorRedact = forwardingError != null ? ForwardingError.ADAPTER.redact(forwardingError) : null;
                ForwardedSetupIntent forwardedSetupIntent = value.forwarded_setup_intent_result;
                return ReaderEvent.copy$default(value, 0L, forwardedPaymentRedact, forwardingErrorRedact, forwardedSetupIntent != null ? ForwardedSetupIntent.ADAPTER.redact(forwardedSetupIntent) : null, ByteString.EMPTY, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReaderEvent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ForwardedPayment forwardedPaymentDecode = null;
                long jLongValue = 0;
                ForwardingError forwardingErrorDecode = null;
                ForwardedSetupIntent forwardedSetupIntentDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReaderEvent(jLongValue, forwardedPaymentDecode, forwardingErrorDecode, forwardedSetupIntentDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        jLongValue = ProtoAdapter.UINT64.decode(reader).longValue();
                    } else if (iNextTag == 2) {
                        forwardedPaymentDecode = ForwardedPayment.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        forwardingErrorDecode = ForwardingError.ADAPTER.decode(reader);
                    } else if (iNextTag == 4) {
                        forwardedSetupIntentDecode = ForwardedSetupIntent.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
