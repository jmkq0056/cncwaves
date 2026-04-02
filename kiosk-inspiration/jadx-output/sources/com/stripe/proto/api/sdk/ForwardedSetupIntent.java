package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.rest.SetupIntent;
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

/* JADX INFO: compiled from: ForwardedSetupIntent.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "setup_intent", "Lcom/stripe/proto/model/rest/SetupIntent;", "forwarding_error", "Lcom/stripe/proto/api/sdk/ForwardingError;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;Lcom/stripe/proto/model/rest/SetupIntent;Lcom/stripe/proto/api/sdk/ForwardingError;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ForwardedSetupIntent extends Message<ForwardedSetupIntent, Builder> {
    public static final ProtoAdapter<ForwardedSetupIntent> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.ForwardingError#ADAPTER", jsonName = "forwardingError", schemaIndex = 2, tag = 3)
    public final ForwardingError forwarding_error;

    @WireField(adapter = "com.stripe.proto.api.sdk.OfflineSetupIntentDetails#ADAPTER", jsonName = "offlineDetails", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final OfflineSetupIntentDetails offline_details;

    @WireField(adapter = "com.stripe.proto.model.rest.SetupIntent#ADAPTER", jsonName = "setupIntent", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final SetupIntent setup_intent;

    public ForwardedSetupIntent() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ ForwardedSetupIntent(OfflineSetupIntentDetails offlineSetupIntentDetails, SetupIntent setupIntent, ForwardingError forwardingError, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : offlineSetupIntentDetails, (i & 2) != 0 ? null : setupIntent, (i & 4) != 0 ? null : forwardingError, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForwardedSetupIntent(OfflineSetupIntentDetails offlineSetupIntentDetails, SetupIntent setupIntent, ForwardingError forwardingError, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.offline_details = offlineSetupIntentDetails;
        this.setup_intent = setupIntent;
        this.forwarding_error = forwardingError;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.offline_details = this.offline_details;
        builder.setup_intent = this.setup_intent;
        builder.forwarding_error = this.forwarding_error;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ForwardedSetupIntent)) {
            return false;
        }
        ForwardedSetupIntent forwardedSetupIntent = (ForwardedSetupIntent) other;
        return Intrinsics.areEqual(unknownFields(), forwardedSetupIntent.unknownFields()) && Intrinsics.areEqual(this.offline_details, forwardedSetupIntent.offline_details) && Intrinsics.areEqual(this.setup_intent, forwardedSetupIntent.setup_intent) && Intrinsics.areEqual(this.forwarding_error, forwardedSetupIntent.forwarding_error);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        OfflineSetupIntentDetails offlineSetupIntentDetails = this.offline_details;
        int iHashCode2 = (iHashCode + (offlineSetupIntentDetails != null ? offlineSetupIntentDetails.hashCode() : 0)) * 37;
        SetupIntent setupIntent = this.setup_intent;
        int iHashCode3 = (iHashCode2 + (setupIntent != null ? setupIntent.hashCode() : 0)) * 37;
        ForwardingError forwardingError = this.forwarding_error;
        int iHashCode4 = iHashCode3 + (forwardingError != null ? forwardingError.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.offline_details != null) {
            arrayList.add("offline_details=" + this.offline_details);
        }
        if (this.setup_intent != null) {
            arrayList.add("setup_intent=" + this.setup_intent);
        }
        if (this.forwarding_error != null) {
            arrayList.add("forwarding_error=" + this.forwarding_error);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ForwardedSetupIntent{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ForwardedSetupIntent copy$default(ForwardedSetupIntent forwardedSetupIntent, OfflineSetupIntentDetails offlineSetupIntentDetails, SetupIntent setupIntent, ForwardingError forwardingError, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            offlineSetupIntentDetails = forwardedSetupIntent.offline_details;
        }
        if ((i & 2) != 0) {
            setupIntent = forwardedSetupIntent.setup_intent;
        }
        if ((i & 4) != 0) {
            forwardingError = forwardedSetupIntent.forwarding_error;
        }
        if ((i & 8) != 0) {
            byteString = forwardedSetupIntent.unknownFields();
        }
        return forwardedSetupIntent.copy(offlineSetupIntentDetails, setupIntent, forwardingError, byteString);
    }

    public final ForwardedSetupIntent copy(OfflineSetupIntentDetails offline_details, SetupIntent setup_intent, ForwardingError forwarding_error, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ForwardedSetupIntent(offline_details, setup_intent, forwarding_error, unknownFields);
    }

    /* JADX INFO: compiled from: ForwardedSetupIntent.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;", "()V", "forwarding_error", "Lcom/stripe/proto/api/sdk/ForwardingError;", "offline_details", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "setup_intent", "Lcom/stripe/proto/model/rest/SetupIntent;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ForwardedSetupIntent, Builder> {
        public ForwardingError forwarding_error;
        public OfflineSetupIntentDetails offline_details;
        public SetupIntent setup_intent;

        public final Builder offline_details(OfflineSetupIntentDetails offline_details) {
            this.offline_details = offline_details;
            return this;
        }

        public final Builder setup_intent(SetupIntent setup_intent) {
            this.setup_intent = setup_intent;
            return this;
        }

        public final Builder forwarding_error(ForwardingError forwarding_error) {
            this.forwarding_error = forwarding_error;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ForwardedSetupIntent build() {
            return new ForwardedSetupIntent(this.offline_details, this.setup_intent, this.forwarding_error, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ForwardedSetupIntent.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ForwardedSetupIntent;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ForwardedSetupIntent$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ForwardedSetupIntent build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ForwardedSetupIntent.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ForwardedSetupIntent>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ForwardedSetupIntent$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ForwardedSetupIntent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.offline_details != null) {
                    size += OfflineSetupIntentDetails.ADAPTER.encodedSizeWithTag(1, value.offline_details);
                }
                if (value.setup_intent != null) {
                    size += SetupIntent.ADAPTER.encodedSizeWithTag(2, value.setup_intent);
                }
                return size + ForwardingError.ADAPTER.encodedSizeWithTag(3, value.forwarding_error);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ForwardedSetupIntent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.offline_details != null) {
                    OfflineSetupIntentDetails.ADAPTER.encodeWithTag(writer, 1, value.offline_details);
                }
                if (value.setup_intent != null) {
                    SetupIntent.ADAPTER.encodeWithTag(writer, 2, value.setup_intent);
                }
                ForwardingError.ADAPTER.encodeWithTag(writer, 3, value.forwarding_error);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ForwardedSetupIntent value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ForwardingError.ADAPTER.encodeWithTag(writer, 3, value.forwarding_error);
                if (value.setup_intent != null) {
                    SetupIntent.ADAPTER.encodeWithTag(writer, 2, value.setup_intent);
                }
                if (value.offline_details != null) {
                    OfflineSetupIntentDetails.ADAPTER.encodeWithTag(writer, 1, value.offline_details);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ForwardedSetupIntent redact(ForwardedSetupIntent value) {
                Intrinsics.checkNotNullParameter(value, "value");
                OfflineSetupIntentDetails offlineSetupIntentDetails = value.offline_details;
                OfflineSetupIntentDetails offlineSetupIntentDetailsRedact = offlineSetupIntentDetails != null ? OfflineSetupIntentDetails.ADAPTER.redact(offlineSetupIntentDetails) : null;
                SetupIntent setupIntent = value.setup_intent;
                SetupIntent setupIntentRedact = setupIntent != null ? SetupIntent.ADAPTER.redact(setupIntent) : null;
                ForwardingError forwardingError = value.forwarding_error;
                return value.copy(offlineSetupIntentDetailsRedact, setupIntentRedact, forwardingError != null ? ForwardingError.ADAPTER.redact(forwardingError) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ForwardedSetupIntent decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                OfflineSetupIntentDetails offlineSetupIntentDetailsDecode = null;
                SetupIntent setupIntentDecode = null;
                ForwardingError forwardingErrorDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ForwardedSetupIntent(offlineSetupIntentDetailsDecode, setupIntentDecode, forwardingErrorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        offlineSetupIntentDetailsDecode = OfflineSetupIntentDetails.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        setupIntentDecode = SetupIntent.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        forwardingErrorDecode = ForwardingError.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
