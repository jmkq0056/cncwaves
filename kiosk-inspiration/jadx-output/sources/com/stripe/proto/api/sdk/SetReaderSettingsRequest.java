package com.stripe.proto.api.sdk;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.api.sdk.SetReaderSettingsRequest;
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

/* JADX INFO: compiled from: SetReaderSettingsRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$Builder;", "accessibility_parameters", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "AccessibilityParameters", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SetReaderSettingsRequest extends Message<SetReaderSettingsRequest, Builder> {
    public static final ProtoAdapter<SetReaderSettingsRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.SetReaderSettingsRequest$AccessibilityParameters#ADAPTER", jsonName = "accessibilityParameters", oneofName = "parameters", schemaIndex = 0, tag = 1)
    public final AccessibilityParameters accessibility_parameters;

    /* JADX WARN: Multi-variable type inference failed */
    public SetReaderSettingsRequest() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ SetReaderSettingsRequest(AccessibilityParameters accessibilityParameters, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : accessibilityParameters, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetReaderSettingsRequest(AccessibilityParameters accessibilityParameters, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.accessibility_parameters = accessibilityParameters;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.accessibility_parameters = this.accessibility_parameters;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof SetReaderSettingsRequest)) {
            return false;
        }
        SetReaderSettingsRequest setReaderSettingsRequest = (SetReaderSettingsRequest) other;
        return Intrinsics.areEqual(unknownFields(), setReaderSettingsRequest.unknownFields()) && Intrinsics.areEqual(this.accessibility_parameters, setReaderSettingsRequest.accessibility_parameters);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        AccessibilityParameters accessibilityParameters = this.accessibility_parameters;
        int iHashCode2 = iHashCode + (accessibilityParameters != null ? accessibilityParameters.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.accessibility_parameters != null) {
            arrayList.add("accessibility_parameters=" + this.accessibility_parameters);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "SetReaderSettingsRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ SetReaderSettingsRequest copy$default(SetReaderSettingsRequest setReaderSettingsRequest, AccessibilityParameters accessibilityParameters, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            accessibilityParameters = setReaderSettingsRequest.accessibility_parameters;
        }
        if ((i & 2) != 0) {
            byteString = setReaderSettingsRequest.unknownFields();
        }
        return setReaderSettingsRequest.copy(accessibilityParameters, byteString);
    }

    public final SetReaderSettingsRequest copy(AccessibilityParameters accessibility_parameters, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new SetReaderSettingsRequest(accessibility_parameters, unknownFields);
    }

    /* JADX INFO: compiled from: SetReaderSettingsRequest.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\b\u0010\u0006\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;", "()V", "accessibility_parameters", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<SetReaderSettingsRequest, Builder> {
        public AccessibilityParameters accessibility_parameters;

        public final Builder accessibility_parameters(AccessibilityParameters accessibility_parameters) {
            this.accessibility_parameters = accessibility_parameters;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public SetReaderSettingsRequest build() {
            return new SetReaderSettingsRequest(this.accessibility_parameters, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: SetReaderSettingsRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ SetReaderSettingsRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SetReaderSettingsRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<SetReaderSettingsRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.SetReaderSettingsRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(SetReaderSettingsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + SetReaderSettingsRequest.AccessibilityParameters.ADAPTER.encodedSizeWithTag(1, value.accessibility_parameters);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, SetReaderSettingsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                SetReaderSettingsRequest.AccessibilityParameters.ADAPTER.encodeWithTag(writer, 1, value.accessibility_parameters);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, SetReaderSettingsRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                SetReaderSettingsRequest.AccessibilityParameters.ADAPTER.encodeWithTag(writer, 1, value.accessibility_parameters);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public SetReaderSettingsRequest redact(SetReaderSettingsRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                SetReaderSettingsRequest.AccessibilityParameters accessibilityParameters = value.accessibility_parameters;
                return value.copy(accessibilityParameters != null ? SetReaderSettingsRequest.AccessibilityParameters.ADAPTER.redact(accessibilityParameters) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public SetReaderSettingsRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                SetReaderSettingsRequest.AccessibilityParameters accessibilityParametersDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new SetReaderSettingsRequest(accessibilityParametersDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        accessibilityParametersDecode = SetReaderSettingsRequest.AccessibilityParameters.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: SetReaderSettingsRequest.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00122\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0011\u0012B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0096\u0002J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters$Builder;", "enable_text_to_speech_speakers", "", "unknownFields", "Lokio/ByteString;", "(ZLokio/ByteString;)V", "copy", "equals", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AccessibilityParameters extends Message<AccessibilityParameters, Builder> {
        public static final ProtoAdapter<AccessibilityParameters> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#BOOL", jsonName = "enableTextToSpeechSpeakers", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final boolean enable_text_to_speech_speakers;

        /* JADX WARN: Multi-variable type inference failed */
        public AccessibilityParameters() {
            this(false, null, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ AccessibilityParameters(boolean z, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccessibilityParameters(boolean z, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.enable_text_to_speech_speakers = z;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.enable_text_to_speech_speakers = this.enable_text_to_speech_speakers;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AccessibilityParameters)) {
                return false;
            }
            AccessibilityParameters accessibilityParameters = (AccessibilityParameters) other;
            return Intrinsics.areEqual(unknownFields(), accessibilityParameters.unknownFields()) && this.enable_text_to_speech_speakers == accessibilityParameters.enable_text_to_speech_speakers;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + Boolean.hashCode(this.enable_text_to_speech_speakers);
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("enable_text_to_speech_speakers=" + this.enable_text_to_speech_speakers);
            return CollectionsKt.joinToString$default(arrayList, ", ", "AccessibilityParameters{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AccessibilityParameters copy$default(AccessibilityParameters accessibilityParameters, boolean z, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                z = accessibilityParameters.enable_text_to_speech_speakers;
            }
            if ((i & 2) != 0) {
                byteString = accessibilityParameters.unknownFields();
            }
            return accessibilityParameters.copy(z, byteString);
        }

        public final AccessibilityParameters copy(boolean enable_text_to_speech_speakers, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AccessibilityParameters(enable_text_to_speech_speakers, unknownFields);
        }

        /* JADX INFO: compiled from: SetReaderSettingsRequest.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters;", "()V", "enable_text_to_speech_speakers", "", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AccessibilityParameters, Builder> {
            public boolean enable_text_to_speech_speakers;

            public final Builder enable_text_to_speech_speakers(boolean enable_text_to_speech_speakers) {
                this.enable_text_to_speech_speakers = enable_text_to_speech_speakers;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AccessibilityParameters build() {
                return new AccessibilityParameters(this.enable_text_to_speech_speakers, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: SetReaderSettingsRequest.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest$AccessibilityParameters$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AccessibilityParameters build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccessibilityParameters.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AccessibilityParameters>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.SetReaderSettingsRequest$AccessibilityParameters$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(SetReaderSettingsRequest.AccessibilityParameters value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.enable_text_to_speech_speakers ? size + ProtoAdapter.BOOL.encodedSizeWithTag(1, Boolean.valueOf(value.enable_text_to_speech_speakers)) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, SetReaderSettingsRequest.AccessibilityParameters value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.enable_text_to_speech_speakers) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enable_text_to_speech_speakers));
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, SetReaderSettingsRequest.AccessibilityParameters value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.enable_text_to_speech_speakers) {
                        ProtoAdapter.BOOL.encodeWithTag(writer, 1, Boolean.valueOf(value.enable_text_to_speech_speakers));
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public SetReaderSettingsRequest.AccessibilityParameters redact(SetReaderSettingsRequest.AccessibilityParameters value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return SetReaderSettingsRequest.AccessibilityParameters.copy$default(value, false, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public SetReaderSettingsRequest.AccessibilityParameters decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    boolean zBooleanValue = false;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new SetReaderSettingsRequest.AccessibilityParameters(zBooleanValue, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            zBooleanValue = ProtoAdapter.BOOL.decode(reader).booleanValue();
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
