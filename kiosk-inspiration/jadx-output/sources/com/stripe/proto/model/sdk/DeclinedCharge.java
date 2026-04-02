package com.stripe.proto.model.sdk;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.rest.Source;
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

/* JADX INFO: compiled from: DeclinedCharge.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0015\u0016B1\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ2\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/sdk/DeclinedCharge;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;", "charge_id", "", FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/model/rest/Source;", "error", "Lcom/stripe/proto/model/sdk/Error;", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeclinedCharge extends Message<DeclinedCharge, Builder> {
    public static final ProtoAdapter<DeclinedCharge> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "chargeId", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String charge_id;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 5)
    public final Error error;

    @WireField(adapter = "com.stripe.proto.model.rest.Source#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 6)
    public final Source source;

    public DeclinedCharge() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ DeclinedCharge(String str, Source source, Error error, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? null : source, (i & 4) != 0 ? null : error, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeclinedCharge(String charge_id, Source source, Error error, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(charge_id, "charge_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.charge_id = charge_id;
        this.source = source;
        this.error = error;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.charge_id = this.charge_id;
        builder.source = this.source;
        builder.error = this.error;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeclinedCharge)) {
            return false;
        }
        DeclinedCharge declinedCharge = (DeclinedCharge) other;
        return Intrinsics.areEqual(unknownFields(), declinedCharge.unknownFields()) && Intrinsics.areEqual(this.charge_id, declinedCharge.charge_id) && Intrinsics.areEqual(this.source, declinedCharge.source) && Intrinsics.areEqual(this.error, declinedCharge.error);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.charge_id.hashCode()) * 37;
        Source source = this.source;
        int iHashCode2 = (iHashCode + (source != null ? source.hashCode() : 0)) * 37;
        Error error = this.error;
        int iHashCode3 = iHashCode2 + (error != null ? error.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("charge_id=" + Internal.sanitize(this.charge_id));
        if (this.source != null) {
            arrayList2.add("source=" + this.source);
        }
        if (this.error != null) {
            arrayList2.add("error=" + this.error);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeclinedCharge{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeclinedCharge copy$default(DeclinedCharge declinedCharge, String str, Source source, Error error, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = declinedCharge.charge_id;
        }
        if ((i & 2) != 0) {
            source = declinedCharge.source;
        }
        if ((i & 4) != 0) {
            error = declinedCharge.error;
        }
        if ((i & 8) != 0) {
            byteString = declinedCharge.unknownFields();
        }
        return declinedCharge.copy(str, source, error, byteString);
    }

    public final DeclinedCharge copy(String charge_id, Source source, Error error, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(charge_id, "charge_id");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeclinedCharge(charge_id, source, error, unknownFields);
    }

    /* JADX INFO: compiled from: DeclinedCharge.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/DeclinedCharge;", "()V", "charge_id", "", "error", "Lcom/stripe/proto/model/sdk/Error;", FirebaseAnalytics.Param.SOURCE, "Lcom/stripe/proto/model/rest/Source;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeclinedCharge, Builder> {
        public String charge_id = "";
        public Error error;
        public Source source;

        public final Builder charge_id(String charge_id) {
            Intrinsics.checkNotNullParameter(charge_id, "charge_id");
            this.charge_id = charge_id;
            return this;
        }

        public final Builder source(Source source) {
            this.source = source;
            return this;
        }

        public final Builder error(Error error) {
            this.error = error;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeclinedCharge build() {
            return new DeclinedCharge(this.charge_id, this.source, this.error, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeclinedCharge.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/DeclinedCharge$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/DeclinedCharge;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/DeclinedCharge$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeclinedCharge build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeclinedCharge.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeclinedCharge>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.DeclinedCharge$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeclinedCharge value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.charge_id, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.charge_id);
                }
                if (value.source != null) {
                    size += Source.ADAPTER.encodedSizeWithTag(6, value.source);
                }
                return value.error != null ? size + Error.ADAPTER.encodedSizeWithTag(5, value.error) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeclinedCharge value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.charge_id, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.charge_id);
                }
                if (value.source != null) {
                    Source.ADAPTER.encodeWithTag(writer, 6, value.source);
                }
                if (value.error != null) {
                    Error.ADAPTER.encodeWithTag(writer, 5, value.error);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeclinedCharge value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.error != null) {
                    Error.ADAPTER.encodeWithTag(writer, 5, value.error);
                }
                if (value.source != null) {
                    Source.ADAPTER.encodeWithTag(writer, 6, value.source);
                }
                if (Intrinsics.areEqual(value.charge_id, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.charge_id);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeclinedCharge redact(DeclinedCharge value) {
                Intrinsics.checkNotNullParameter(value, "value");
                Source source = value.source;
                Source sourceRedact = source != null ? Source.ADAPTER.redact(source) : null;
                Error error = value.error;
                return DeclinedCharge.copy$default(value, null, sourceRedact, error != null ? Error.ADAPTER.redact(error) : null, ByteString.EMPTY, 1, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeclinedCharge decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                Source sourceDecode = null;
                Error errorDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DeclinedCharge(strDecode, sourceDecode, errorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 5) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else if (iNextTag == 6) {
                        sourceDecode = Source.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
