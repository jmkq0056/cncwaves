package com.stripe.proto.model.theme;

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

/* JADX INFO: compiled from: AppTheme.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ(\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/theme/AppTheme;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/theme/AppTheme$Builder;", "light_mode_theme", "Lcom/stripe/proto/model/theme/DeviceTheme;", "dark_mode_theme", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/theme/DeviceTheme;Lcom/stripe/proto/model/theme/DeviceTheme;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AppTheme extends Message<AppTheme, Builder> {
    public static final ProtoAdapter<AppTheme> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.theme.DeviceTheme#ADAPTER", jsonName = "darkModeTheme", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final DeviceTheme dark_mode_theme;

    @WireField(adapter = "com.stripe.proto.model.theme.DeviceTheme#ADAPTER", jsonName = "lightModeTheme", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final DeviceTheme light_mode_theme;

    public AppTheme() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ AppTheme(DeviceTheme deviceTheme, DeviceTheme deviceTheme2, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : deviceTheme, (i & 2) != 0 ? null : deviceTheme2, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppTheme(DeviceTheme deviceTheme, DeviceTheme deviceTheme2, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.light_mode_theme = deviceTheme;
        this.dark_mode_theme = deviceTheme2;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.light_mode_theme = this.light_mode_theme;
        builder.dark_mode_theme = this.dark_mode_theme;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof AppTheme)) {
            return false;
        }
        AppTheme appTheme = (AppTheme) other;
        return Intrinsics.areEqual(unknownFields(), appTheme.unknownFields()) && Intrinsics.areEqual(this.light_mode_theme, appTheme.light_mode_theme) && Intrinsics.areEqual(this.dark_mode_theme, appTheme.dark_mode_theme);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        DeviceTheme deviceTheme = this.light_mode_theme;
        int iHashCode2 = (iHashCode + (deviceTheme != null ? deviceTheme.hashCode() : 0)) * 37;
        DeviceTheme deviceTheme2 = this.dark_mode_theme;
        int iHashCode3 = iHashCode2 + (deviceTheme2 != null ? deviceTheme2.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.light_mode_theme != null) {
            arrayList.add("light_mode_theme=" + this.light_mode_theme);
        }
        if (this.dark_mode_theme != null) {
            arrayList.add("dark_mode_theme=" + this.dark_mode_theme);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "AppTheme{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ AppTheme copy$default(AppTheme appTheme, DeviceTheme deviceTheme, DeviceTheme deviceTheme2, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            deviceTheme = appTheme.light_mode_theme;
        }
        if ((i & 2) != 0) {
            deviceTheme2 = appTheme.dark_mode_theme;
        }
        if ((i & 4) != 0) {
            byteString = appTheme.unknownFields();
        }
        return appTheme.copy(deviceTheme, deviceTheme2, byteString);
    }

    public final AppTheme copy(DeviceTheme light_mode_theme, DeviceTheme dark_mode_theme, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new AppTheme(light_mode_theme, dark_mode_theme, unknownFields);
    }

    /* JADX INFO: compiled from: AppTheme.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/theme/AppTheme$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/theme/AppTheme;", "()V", "dark_mode_theme", "Lcom/stripe/proto/model/theme/DeviceTheme;", "light_mode_theme", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<AppTheme, Builder> {
        public DeviceTheme dark_mode_theme;
        public DeviceTheme light_mode_theme;

        public final Builder light_mode_theme(DeviceTheme light_mode_theme) {
            this.light_mode_theme = light_mode_theme;
            return this;
        }

        public final Builder dark_mode_theme(DeviceTheme dark_mode_theme) {
            this.dark_mode_theme = dark_mode_theme;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public AppTheme build() {
            return new AppTheme(this.light_mode_theme, this.dark_mode_theme, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: AppTheme.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/theme/AppTheme$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/theme/AppTheme;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/theme/AppTheme$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ AppTheme build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AppTheme.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<AppTheme>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.theme.AppTheme$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(AppTheme value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.light_mode_theme != null) {
                    size += DeviceTheme.ADAPTER.encodedSizeWithTag(1, value.light_mode_theme);
                }
                return value.dark_mode_theme != null ? size + DeviceTheme.ADAPTER.encodedSizeWithTag(2, value.dark_mode_theme) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, AppTheme value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.light_mode_theme != null) {
                    DeviceTheme.ADAPTER.encodeWithTag(writer, 1, value.light_mode_theme);
                }
                if (value.dark_mode_theme != null) {
                    DeviceTheme.ADAPTER.encodeWithTag(writer, 2, value.dark_mode_theme);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, AppTheme value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.dark_mode_theme != null) {
                    DeviceTheme.ADAPTER.encodeWithTag(writer, 2, value.dark_mode_theme);
                }
                if (value.light_mode_theme != null) {
                    DeviceTheme.ADAPTER.encodeWithTag(writer, 1, value.light_mode_theme);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public AppTheme redact(AppTheme value) {
                Intrinsics.checkNotNullParameter(value, "value");
                DeviceTheme deviceTheme = value.light_mode_theme;
                DeviceTheme deviceThemeRedact = deviceTheme != null ? DeviceTheme.ADAPTER.redact(deviceTheme) : null;
                DeviceTheme deviceTheme2 = value.dark_mode_theme;
                return value.copy(deviceThemeRedact, deviceTheme2 != null ? DeviceTheme.ADAPTER.redact(deviceTheme2) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public AppTheme decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                DeviceTheme deviceThemeDecode = null;
                DeviceTheme deviceThemeDecode2 = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new AppTheme(deviceThemeDecode, deviceThemeDecode2, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        deviceThemeDecode = DeviceTheme.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        deviceThemeDecode2 = DeviceTheme.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
