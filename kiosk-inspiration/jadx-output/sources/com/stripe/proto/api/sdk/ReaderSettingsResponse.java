package com.stripe.proto.api.sdk;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.api.sdk.ReaderSettingsResponse;
import com.stripe.proto.model.sdk.Error;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: ReaderSettingsResponse.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;", "accessibility_settings", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;", "accessibility_settings_error", "Lcom/stripe/proto/model/sdk/Error;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;Lcom/stripe/proto/model/sdk/Error;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "AccessibilitySettings", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReaderSettingsResponse extends Message<ReaderSettingsResponse, Builder> {
    public static final ProtoAdapter<ReaderSettingsResponse> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.api.sdk.ReaderSettingsResponse$AccessibilitySettings#ADAPTER", jsonName = "accessibilitySettings", oneofName = "maybe_accessibility_settings", schemaIndex = 0, tag = 1)
    public final AccessibilitySettings accessibility_settings;

    @WireField(adapter = "com.stripe.proto.model.sdk.Error#ADAPTER", jsonName = "accessibilitySettingsError", oneofName = "maybe_accessibility_settings", schemaIndex = 1, tag = 2)
    public final Error accessibility_settings_error;

    public ReaderSettingsResponse() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ReaderSettingsResponse(AccessibilitySettings accessibilitySettings, Error error, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : accessibilitySettings, (i & 2) != 0 ? null : error, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReaderSettingsResponse(AccessibilitySettings accessibilitySettings, Error error, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.accessibility_settings = accessibilitySettings;
        this.accessibility_settings_error = error;
        if (Internal.countNonNull(accessibilitySettings, error) > 1) {
            throw new IllegalArgumentException("At most one of accessibility_settings, accessibility_settings_error may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.accessibility_settings = this.accessibility_settings;
        builder.accessibility_settings_error = this.accessibility_settings_error;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ReaderSettingsResponse)) {
            return false;
        }
        ReaderSettingsResponse readerSettingsResponse = (ReaderSettingsResponse) other;
        return Intrinsics.areEqual(unknownFields(), readerSettingsResponse.unknownFields()) && Intrinsics.areEqual(this.accessibility_settings, readerSettingsResponse.accessibility_settings) && Intrinsics.areEqual(this.accessibility_settings_error, readerSettingsResponse.accessibility_settings_error);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        AccessibilitySettings accessibilitySettings = this.accessibility_settings;
        int iHashCode2 = (iHashCode + (accessibilitySettings != null ? accessibilitySettings.hashCode() : 0)) * 37;
        Error error = this.accessibility_settings_error;
        int iHashCode3 = iHashCode2 + (error != null ? error.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.accessibility_settings != null) {
            arrayList.add("accessibility_settings=" + this.accessibility_settings);
        }
        if (this.accessibility_settings_error != null) {
            arrayList.add("accessibility_settings_error=" + this.accessibility_settings_error);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ReaderSettingsResponse{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ReaderSettingsResponse copy$default(ReaderSettingsResponse readerSettingsResponse, AccessibilitySettings accessibilitySettings, Error error, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            accessibilitySettings = readerSettingsResponse.accessibility_settings;
        }
        if ((i & 2) != 0) {
            error = readerSettingsResponse.accessibility_settings_error;
        }
        if ((i & 4) != 0) {
            byteString = readerSettingsResponse.unknownFields();
        }
        return readerSettingsResponse.copy(accessibilitySettings, error, byteString);
    }

    public final ReaderSettingsResponse copy(AccessibilitySettings accessibility_settings, Error accessibility_settings_error, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ReaderSettingsResponse(accessibility_settings, accessibility_settings_error, unknownFields);
    }

    /* JADX INFO: compiled from: ReaderSettingsResponse.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\b\u0010\b\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;", "()V", "accessibility_settings", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;", "accessibility_settings_error", "Lcom/stripe/proto/model/sdk/Error;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ReaderSettingsResponse, Builder> {
        public AccessibilitySettings accessibility_settings;
        public Error accessibility_settings_error;

        public final Builder accessibility_settings(AccessibilitySettings accessibility_settings) {
            this.accessibility_settings = accessibility_settings;
            this.accessibility_settings_error = null;
            return this;
        }

        public final Builder accessibility_settings_error(Error accessibility_settings_error) {
            this.accessibility_settings_error = accessibility_settings_error;
            this.accessibility_settings = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ReaderSettingsResponse build() {
            return new ReaderSettingsResponse(this.accessibility_settings, this.accessibility_settings_error, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ReaderSettingsResponse.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ReaderSettingsResponse build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReaderSettingsResponse.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ReaderSettingsResponse>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ReaderSettingsResponse$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ReaderSettingsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + ReaderSettingsResponse.AccessibilitySettings.ADAPTER.encodedSizeWithTag(1, value.accessibility_settings) + Error.ADAPTER.encodedSizeWithTag(2, value.accessibility_settings_error);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ReaderSettingsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                ReaderSettingsResponse.AccessibilitySettings.ADAPTER.encodeWithTag(writer, 1, value.accessibility_settings);
                Error.ADAPTER.encodeWithTag(writer, 2, value.accessibility_settings_error);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ReaderSettingsResponse value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                Error.ADAPTER.encodeWithTag(writer, 2, value.accessibility_settings_error);
                ReaderSettingsResponse.AccessibilitySettings.ADAPTER.encodeWithTag(writer, 1, value.accessibility_settings);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ReaderSettingsResponse redact(ReaderSettingsResponse value) {
                Intrinsics.checkNotNullParameter(value, "value");
                ReaderSettingsResponse.AccessibilitySettings accessibilitySettings = value.accessibility_settings;
                ReaderSettingsResponse.AccessibilitySettings accessibilitySettingsRedact = accessibilitySettings != null ? ReaderSettingsResponse.AccessibilitySettings.ADAPTER.redact(accessibilitySettings) : null;
                Error error = value.accessibility_settings_error;
                return value.copy(accessibilitySettingsRedact, error != null ? Error.ADAPTER.redact(error) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ReaderSettingsResponse decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                ReaderSettingsResponse.AccessibilitySettings accessibilitySettingsDecode = null;
                Error errorDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ReaderSettingsResponse(accessibilitySettingsDecode, errorDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        accessibilitySettingsDecode = ReaderSettingsResponse.AccessibilitySettings.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        errorDecode = Error.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX INFO: compiled from: ReaderSettingsResponse.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;", "text_to_speech_status", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "TextToSpeechStatus", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class AccessibilitySettings extends Message<AccessibilitySettings, Builder> {
        public static final ProtoAdapter<AccessibilitySettings> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.api.sdk.ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus#ADAPTER", jsonName = "textToSpeechStatus", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final TextToSpeechStatus text_to_speech_status;

        /* JADX WARN: Multi-variable type inference failed */
        public AccessibilitySettings() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ AccessibilitySettings(TextToSpeechStatus textToSpeechStatus, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? TextToSpeechStatus.TEXT_TO_SPEECH_STATUS_INVALID : textToSpeechStatus, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AccessibilitySettings(TextToSpeechStatus text_to_speech_status, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(text_to_speech_status, "text_to_speech_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.text_to_speech_status = text_to_speech_status;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.text_to_speech_status = this.text_to_speech_status;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof AccessibilitySettings)) {
                return false;
            }
            AccessibilitySettings accessibilitySettings = (AccessibilitySettings) other;
            return Intrinsics.areEqual(unknownFields(), accessibilitySettings.unknownFields()) && this.text_to_speech_status == accessibilitySettings.text_to_speech_status;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.text_to_speech_status.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            arrayList.add("text_to_speech_status=" + this.text_to_speech_status);
            return CollectionsKt.joinToString$default(arrayList, ", ", "AccessibilitySettings{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ AccessibilitySettings copy$default(AccessibilitySettings accessibilitySettings, TextToSpeechStatus textToSpeechStatus, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                textToSpeechStatus = accessibilitySettings.text_to_speech_status;
            }
            if ((i & 2) != 0) {
                byteString = accessibilitySettings.unknownFields();
            }
            return accessibilitySettings.copy(textToSpeechStatus, byteString);
        }

        public final AccessibilitySettings copy(TextToSpeechStatus text_to_speech_status, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(text_to_speech_status, "text_to_speech_status");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new AccessibilitySettings(text_to_speech_status, unknownFields);
        }

        /* JADX INFO: compiled from: ReaderSettingsResponse.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;", "()V", "text_to_speech_status", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<AccessibilitySettings, Builder> {
            public TextToSpeechStatus text_to_speech_status = TextToSpeechStatus.TEXT_TO_SPEECH_STATUS_INVALID;

            public final Builder text_to_speech_status(TextToSpeechStatus text_to_speech_status) {
                Intrinsics.checkNotNullParameter(text_to_speech_status, "text_to_speech_status");
                this.text_to_speech_status = text_to_speech_status;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public AccessibilitySettings build() {
                return new AccessibilitySettings(this.text_to_speech_status, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: ReaderSettingsResponse.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ AccessibilitySettings build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AccessibilitySettings.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<AccessibilitySettings>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.sdk.ReaderSettingsResponse$AccessibilitySettings$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(ReaderSettingsResponse.AccessibilitySettings value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    return value.text_to_speech_status != ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.TEXT_TO_SPEECH_STATUS_INVALID ? size + ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.ADAPTER.encodedSizeWithTag(1, value.text_to_speech_status) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, ReaderSettingsResponse.AccessibilitySettings value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.text_to_speech_status != ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.TEXT_TO_SPEECH_STATUS_INVALID) {
                        ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.ADAPTER.encodeWithTag(writer, 1, value.text_to_speech_status);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, ReaderSettingsResponse.AccessibilitySettings value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.text_to_speech_status != ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.TEXT_TO_SPEECH_STATUS_INVALID) {
                        ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.ADAPTER.encodeWithTag(writer, 1, value.text_to_speech_status);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public ReaderSettingsResponse.AccessibilitySettings decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus textToSpeechStatusDecode = ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.TEXT_TO_SPEECH_STATUS_INVALID;
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new ReaderSettingsResponse.AccessibilitySettings(textToSpeechStatusDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                textToSpeechStatusDecode = ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public ReaderSettingsResponse.AccessibilitySettings redact(ReaderSettingsResponse.AccessibilitySettings value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return ReaderSettingsResponse.AccessibilitySettings.copy$default(value, null, ByteString.EMPTY, 1, null);
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: ReaderSettingsResponse.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "TEXT_TO_SPEECH_STATUS_INVALID", "OFF", "HEADPHONES", "SPEAKERS", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class TextToSpeechStatus implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ TextToSpeechStatus[] $VALUES;
            public static final ProtoAdapter<TextToSpeechStatus> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final TextToSpeechStatus HEADPHONES;
            public static final TextToSpeechStatus OFF;
            public static final TextToSpeechStatus SPEAKERS;
            public static final TextToSpeechStatus TEXT_TO_SPEECH_STATUS_INVALID;
            private final int value;

            private static final /* synthetic */ TextToSpeechStatus[] $values() {
                return new TextToSpeechStatus[]{TEXT_TO_SPEECH_STATUS_INVALID, OFF, HEADPHONES, SPEAKERS};
            }

            @JvmStatic
            public static final TextToSpeechStatus fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<TextToSpeechStatus> getEntries() {
                return $ENTRIES;
            }

            public static TextToSpeechStatus valueOf(String str) {
                return (TextToSpeechStatus) Enum.valueOf(TextToSpeechStatus.class, str);
            }

            public static TextToSpeechStatus[] values() {
                return (TextToSpeechStatus[]) $VALUES.clone();
            }

            private TextToSpeechStatus(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final TextToSpeechStatus textToSpeechStatus = new TextToSpeechStatus("TEXT_TO_SPEECH_STATUS_INVALID", 0, 0);
                TEXT_TO_SPEECH_STATUS_INVALID = textToSpeechStatus;
                OFF = new TextToSpeechStatus("OFF", 1, 1);
                HEADPHONES = new TextToSpeechStatus("HEADPHONES", 2, 2);
                SPEAKERS = new TextToSpeechStatus("SPEAKERS", 3, 3);
                TextToSpeechStatus[] textToSpeechStatusArr$values = $values();
                $VALUES = textToSpeechStatusArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(textToSpeechStatusArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TextToSpeechStatus.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new EnumAdapter<TextToSpeechStatus>(orCreateKotlinClass, syntax, textToSpeechStatus) { // from class: com.stripe.proto.api.sdk.ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus$Companion$ADAPTER$1
                    {
                        ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus textToSpeechStatus2 = textToSpeechStatus;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus fromValue(int value) {
                        return ReaderSettingsResponse.AccessibilitySettings.TextToSpeechStatus.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: ReaderSettingsResponse.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/sdk/ReaderSettingsResponse$AccessibilitySettings$TextToSpeechStatus;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final TextToSpeechStatus fromValue(int value) {
                    if (value == 0) {
                        return TextToSpeechStatus.TEXT_TO_SPEECH_STATUS_INVALID;
                    }
                    if (value == 1) {
                        return TextToSpeechStatus.OFF;
                    }
                    if (value == 2) {
                        return TextToSpeechStatus.HEADPHONES;
                    }
                    if (value != 3) {
                        return null;
                    }
                    return TextToSpeechStatus.SPEAKERS;
                }
            }
        }
    }
}
