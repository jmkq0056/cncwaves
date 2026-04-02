package com.stripe.proto.api.armada;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.config.Locale;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: GenerateRegistrationCodeRequest.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B/\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ0\u0010\u000e\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\bH\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\b\n\u0000\u0012\u0004\b\f\u0010\rR\u0010\u0010\u0007\u001a\u00020\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "locale", "Lcom/stripe/proto/model/config/Locale;", "locale_string", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/DeviceInfo;Lcom/stripe/proto/model/config/Locale;Ljava/lang/String;Lokio/ByteString;)V", "getLocale$annotations", "()V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class GenerateRegistrationCodeRequest extends Message<GenerateRegistrationCodeRequest, Builder> {
    public static final ProtoAdapter<GenerateRegistrationCodeRequest> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.DeviceInfo#ADAPTER", jsonName = "deviceInfo", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceInfo device_info;

    @WireField(adapter = "com.stripe.proto.model.config.Locale#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final Locale locale;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "localeString", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String locale_string;

    public GenerateRegistrationCodeRequest() {
        this(null, null, null, null, 15, null);
    }

    @Deprecated(message = "locale is deprecated")
    public static /* synthetic */ void getLocale$annotations() {
    }

    public /* synthetic */ GenerateRegistrationCodeRequest(DeviceInfo deviceInfo, Locale locale, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceInfo, (i & 2) != 0 ? Locale.INVALID_LOCALE : locale, (i & 4) != 0 ? "" : str, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GenerateRegistrationCodeRequest(DeviceInfo deviceInfo, Locale locale, String locale_string, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(locale_string, "locale_string");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.device_info = deviceInfo;
        this.locale = locale;
        this.locale_string = locale_string;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.device_info = this.device_info;
        builder.locale = this.locale;
        builder.locale_string = this.locale_string;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof GenerateRegistrationCodeRequest)) {
            return false;
        }
        GenerateRegistrationCodeRequest generateRegistrationCodeRequest = (GenerateRegistrationCodeRequest) other;
        return Intrinsics.areEqual(unknownFields(), generateRegistrationCodeRequest.unknownFields()) && Intrinsics.areEqual(this.device_info, generateRegistrationCodeRequest.device_info) && this.locale == generateRegistrationCodeRequest.locale && Intrinsics.areEqual(this.locale_string, generateRegistrationCodeRequest.locale_string);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceInfo deviceInfo = this.device_info;
        int iHashCode2 = ((((iHashCode + (deviceInfo != null ? deviceInfo.hashCode() : 0)) * 37) + this.locale.hashCode()) * 37) + this.locale_string.hashCode();
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.device_info != null) {
            arrayList.add("device_info=" + this.device_info);
        }
        ArrayList arrayList2 = arrayList;
        arrayList2.add("locale=" + this.locale);
        arrayList2.add("locale_string=" + Internal.sanitize(this.locale_string));
        return CollectionsKt.joinToString$default(arrayList, ", ", "GenerateRegistrationCodeRequest{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ GenerateRegistrationCodeRequest copy$default(GenerateRegistrationCodeRequest generateRegistrationCodeRequest, DeviceInfo deviceInfo, Locale locale, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceInfo = generateRegistrationCodeRequest.device_info;
        }
        if ((i & 2) != 0) {
            locale = generateRegistrationCodeRequest.locale;
        }
        if ((i & 4) != 0) {
            str = generateRegistrationCodeRequest.locale_string;
        }
        if ((i & 8) != 0) {
            byteString = generateRegistrationCodeRequest.unknownFields();
        }
        return generateRegistrationCodeRequest.copy(deviceInfo, locale, str, byteString);
    }

    public final GenerateRegistrationCodeRequest copy(DeviceInfo device_info, Locale locale, String locale_string, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        Intrinsics.checkNotNullParameter(locale_string, "locale_string");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new GenerateRegistrationCodeRequest(device_info, locale, locale_string, unknownFields);
    }

    /* JADX INFO: compiled from: GenerateRegistrationCodeRequest.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007H\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;", "()V", "device_info", "Lcom/stripe/proto/model/common/DeviceInfo;", "locale", "Lcom/stripe/proto/model/config/Locale;", "locale_string", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<GenerateRegistrationCodeRequest, Builder> {
        public DeviceInfo device_info;
        public Locale locale = Locale.INVALID_LOCALE;
        public String locale_string = "";

        public final Builder device_info(DeviceInfo device_info) {
            this.device_info = device_info;
            return this;
        }

        @Deprecated(message = "locale is deprecated")
        public final Builder locale(Locale locale) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            this.locale = locale;
            return this;
        }

        public final Builder locale_string(String locale_string) {
            Intrinsics.checkNotNullParameter(locale_string, "locale_string");
            this.locale_string = locale_string;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public GenerateRegistrationCodeRequest build() {
            return new GenerateRegistrationCodeRequest(this.device_info, this.locale, this.locale_string, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: GenerateRegistrationCodeRequest.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/api/armada/GenerateRegistrationCodeRequest$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ GenerateRegistrationCodeRequest build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(GenerateRegistrationCodeRequest.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<GenerateRegistrationCodeRequest>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.api.armada.GenerateRegistrationCodeRequest$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(GenerateRegistrationCodeRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.device_info != null) {
                    size += DeviceInfo.ADAPTER.encodedSizeWithTag(1, value.device_info);
                }
                if (value.locale != Locale.INVALID_LOCALE) {
                    size += Locale.ADAPTER.encodedSizeWithTag(2, value.locale);
                }
                return !Intrinsics.areEqual(value.locale_string, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(3, value.locale_string) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, GenerateRegistrationCodeRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
                if (value.locale != Locale.INVALID_LOCALE) {
                    Locale.ADAPTER.encodeWithTag(writer, 2, value.locale);
                }
                if (!Intrinsics.areEqual(value.locale_string, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.locale_string);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, GenerateRegistrationCodeRequest value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.locale_string, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.locale_string);
                }
                if (value.locale != Locale.INVALID_LOCALE) {
                    Locale.ADAPTER.encodeWithTag(writer, 2, value.locale);
                }
                if (value.device_info != null) {
                    DeviceInfo.ADAPTER.encodeWithTag(writer, 1, value.device_info);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public GenerateRegistrationCodeRequest decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                Locale localeDecode = Locale.INVALID_LOCALE;
                long jBeginMessage = reader.beginMessage();
                DeviceInfo deviceInfoDecode = null;
                String strDecode = "";
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new GenerateRegistrationCodeRequest(deviceInfoDecode, localeDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceInfoDecode = DeviceInfo.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        try {
                            localeDecode = Locale.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 3) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public GenerateRegistrationCodeRequest redact(GenerateRegistrationCodeRequest value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceInfo deviceInfo = value.device_info;
                return GenerateRegistrationCodeRequest.copy$default(value, deviceInfo != null ? DeviceInfo.ADAPTER.redact(deviceInfo) : null, null, null, ByteString.EMPTY, 6, null);
            }
        };
    }
}
