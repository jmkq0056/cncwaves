package com.stripe.proto.event_channel.pub.message;

import androidx.core.app.NotificationCompat;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
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

/* JADX INFO: compiled from: Surcharge.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Surcharge;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/Surcharge$Builder;", "maximum_amount", "", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/proto/event_channel/pub/message/SurchargeStatus;", "unknownFields", "Lokio/ByteString;", "(JLcom/stripe/proto/event_channel/pub/message/SurchargeStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Surcharge extends Message<Surcharge, Builder> {
    public static final ProtoAdapter<Surcharge> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT64", jsonName = "maximumAmount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final long maximum_amount;

    @WireField(adapter = "com.stripe.proto.event_channel.pub.message.SurchargeStatus#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final SurchargeStatus status;

    public Surcharge() {
        this(0L, null, null, 7, null);
    }

    public /* synthetic */ Surcharge(long j, SurchargeStatus surchargeStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? 0L : j, (i & 2) != 0 ? SurchargeStatus.SURCHARGE_STATUS_INVALID : surchargeStatus, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Surcharge(long j, SurchargeStatus status, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.maximum_amount = j;
        this.status = status;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.maximum_amount = this.maximum_amount;
        builder.status = this.status;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Surcharge)) {
            return false;
        }
        Surcharge surcharge = (Surcharge) other;
        return Intrinsics.areEqual(unknownFields(), surcharge.unknownFields()) && this.maximum_amount == surcharge.maximum_amount && this.status == surcharge.status;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((unknownFields().hashCode() * 37) + Long.hashCode(this.maximum_amount)) * 37) + this.status.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("maximum_amount=" + this.maximum_amount);
        arrayList2.add("status=" + this.status);
        return CollectionsKt.joinToString$default(arrayList, ", ", "Surcharge{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Surcharge copy$default(Surcharge surcharge, long j, SurchargeStatus surchargeStatus, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            j = surcharge.maximum_amount;
        }
        if ((i & 2) != 0) {
            surchargeStatus = surcharge.status;
        }
        if ((i & 4) != 0) {
            byteString = surcharge.unknownFields();
        }
        return surcharge.copy(j, surchargeStatus, byteString);
    }

    public final Surcharge copy(long maximum_amount, SurchargeStatus status, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Surcharge(maximum_amount, status, unknownFields);
    }

    /* JADX INFO: compiled from: Surcharge.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Surcharge$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/Surcharge;", "()V", "maximum_amount", "", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/proto/event_channel/pub/message/SurchargeStatus;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Surcharge, Builder> {
        public long maximum_amount;
        public SurchargeStatus status = SurchargeStatus.SURCHARGE_STATUS_INVALID;

        public final Builder maximum_amount(long maximum_amount) {
            this.maximum_amount = maximum_amount;
            return this;
        }

        public final Builder status(SurchargeStatus status) {
            Intrinsics.checkNotNullParameter(status, "status");
            this.status = status;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Surcharge build() {
            return new Surcharge(this.maximum_amount, this.status, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Surcharge.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/Surcharge$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/Surcharge;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/Surcharge$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Surcharge build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Surcharge.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Surcharge>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.Surcharge$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Surcharge value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.maximum_amount != 0) {
                    size += ProtoAdapter.INT64.encodedSizeWithTag(1, Long.valueOf(value.maximum_amount));
                }
                return value.status != SurchargeStatus.SURCHARGE_STATUS_INVALID ? size + SurchargeStatus.ADAPTER.encodedSizeWithTag(2, value.status) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Surcharge value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.maximum_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.maximum_amount));
                }
                if (value.status != SurchargeStatus.SURCHARGE_STATUS_INVALID) {
                    SurchargeStatus.ADAPTER.encodeWithTag(writer, 2, value.status);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Surcharge value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.status != SurchargeStatus.SURCHARGE_STATUS_INVALID) {
                    SurchargeStatus.ADAPTER.encodeWithTag(writer, 2, value.status);
                }
                if (value.maximum_amount != 0) {
                    ProtoAdapter.INT64.encodeWithTag(writer, 1, Long.valueOf(value.maximum_amount));
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Surcharge decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                SurchargeStatus surchargeStatusDecode = SurchargeStatus.SURCHARGE_STATUS_INVALID;
                long jBeginMessage = reader.beginMessage();
                long jLongValue = 0;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Surcharge(jLongValue, surchargeStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        jLongValue = ProtoAdapter.INT64.decode(reader).longValue();
                    } else if (iNextTag == 2) {
                        try {
                            surchargeStatusDecode = SurchargeStatus.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Surcharge redact(Surcharge value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return Surcharge.copy$default(value, 0L, null, ByteString.EMPTY, 3, null);
            }
        };
    }
}
