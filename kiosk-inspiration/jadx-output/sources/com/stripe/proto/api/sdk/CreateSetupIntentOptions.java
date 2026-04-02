package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.api.sdk.CreatePaymentIntentOptions;
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

/* JADX INFO: compiled from: CreateSetupIntentOptions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions$Builder;", "offline_behavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CreateSetupIntentOptions extends Message<CreateSetupIntentOptions, Builder> {
    public static final ProtoAdapter<CreateSetupIntentOptions> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.CreatePaymentIntentOptions$OfflineBehavior#ADAPTER", jsonName = "offlineBehavior", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final CreatePaymentIntentOptions.OfflineBehavior offline_behavior;

    /* JADX WARN: Multi-variable type inference failed */
    public CreateSetupIntentOptions() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ CreateSetupIntentOptions(CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CreatePaymentIntentOptions.OfflineBehavior.BEHAVIOR_INVALID : offlineBehavior, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CreateSetupIntentOptions(CreatePaymentIntentOptions.OfflineBehavior offline_behavior, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(offline_behavior, "offline_behavior");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.offline_behavior = offline_behavior;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.offline_behavior = this.offline_behavior;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CreateSetupIntentOptions)) {
            return false;
        }
        CreateSetupIntentOptions createSetupIntentOptions = (CreateSetupIntentOptions) other;
        return Intrinsics.areEqual(unknownFields(), createSetupIntentOptions.unknownFields()) && this.offline_behavior == createSetupIntentOptions.offline_behavior;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.offline_behavior.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("offline_behavior=" + this.offline_behavior);
        return CollectionsKt.joinToString$default(arrayList, ", ", "CreateSetupIntentOptions{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CreateSetupIntentOptions copy$default(CreateSetupIntentOptions createSetupIntentOptions, CreatePaymentIntentOptions.OfflineBehavior offlineBehavior, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            offlineBehavior = createSetupIntentOptions.offline_behavior;
        }
        if ((i & 2) != 0) {
            byteString = createSetupIntentOptions.unknownFields();
        }
        return createSetupIntentOptions.copy(offlineBehavior, byteString);
    }

    public final CreateSetupIntentOptions copy(CreatePaymentIntentOptions.OfflineBehavior offline_behavior, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(offline_behavior, "offline_behavior");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CreateSetupIntentOptions(offline_behavior, unknownFields);
    }

    /* JADX INFO: compiled from: CreateSetupIntentOptions.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;", "()V", "offline_behavior", "Lcom/stripe/proto/api/sdk/CreatePaymentIntentOptions$OfflineBehavior;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CreateSetupIntentOptions, Builder> {
        public CreatePaymentIntentOptions.OfflineBehavior offline_behavior = CreatePaymentIntentOptions.OfflineBehavior.BEHAVIOR_INVALID;

        public final Builder offline_behavior(CreatePaymentIntentOptions.OfflineBehavior offline_behavior) {
            Intrinsics.checkNotNullParameter(offline_behavior, "offline_behavior");
            this.offline_behavior = offline_behavior;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CreateSetupIntentOptions build() {
            return new CreateSetupIntentOptions(this.offline_behavior, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CreateSetupIntentOptions.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/CreateSetupIntentOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CreateSetupIntentOptions build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CreateSetupIntentOptions.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CreateSetupIntentOptions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.CreateSetupIntentOptions$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CreateSetupIntentOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.offline_behavior != CreatePaymentIntentOptions.OfflineBehavior.BEHAVIOR_INVALID ? size + CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodedSizeWithTag(1, value.offline_behavior) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CreateSetupIntentOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.offline_behavior != CreatePaymentIntentOptions.OfflineBehavior.BEHAVIOR_INVALID) {
                    CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodeWithTag(writer, 1, value.offline_behavior);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CreateSetupIntentOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.offline_behavior != CreatePaymentIntentOptions.OfflineBehavior.BEHAVIOR_INVALID) {
                    CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.encodeWithTag(writer, 1, value.offline_behavior);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CreateSetupIntentOptions decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                CreatePaymentIntentOptions.OfflineBehavior offlineBehaviorDecode = CreatePaymentIntentOptions.OfflineBehavior.BEHAVIOR_INVALID;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CreateSetupIntentOptions(offlineBehaviorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            offlineBehaviorDecode = CreatePaymentIntentOptions.OfflineBehavior.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CreateSetupIntentOptions redact(CreateSetupIntentOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CreateSetupIntentOptions.copy$default(value, null, ByteString.EMPTY, 1, null);
            }
        };
    }
}
