package com.stripe.proto.model.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.stripe.proto.model.common.HardwareModel;
import com.stripe.proto.terminal.terminal.pub.message.common.CroppedImagePackage;
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

/* JADX INFO: compiled from: DeviceTypeSpecificFeatureConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig$Builder;", "hardware_model", "Lcom/stripe/proto/model/common/HardwareModel;", "splash_screen", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/HardwareModel;Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceTypeSpecificFeatureConfig extends Message<DeviceTypeSpecificFeatureConfig, Builder> {
    public static final ProtoAdapter<DeviceTypeSpecificFeatureConfig> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.HardwareModel#ADAPTER", jsonName = "hardwareModel", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final HardwareModel hardware_model;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.common.CroppedImagePackage#ADAPTER", jsonName = "splashScreen", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final CroppedImagePackage splash_screen;

    public DeviceTypeSpecificFeatureConfig() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ DeviceTypeSpecificFeatureConfig(HardwareModel hardwareModel, CroppedImagePackage croppedImagePackage, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : hardwareModel, (i & 2) != 0 ? null : croppedImagePackage, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceTypeSpecificFeatureConfig(HardwareModel hardwareModel, CroppedImagePackage croppedImagePackage, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.hardware_model = hardwareModel;
        this.splash_screen = croppedImagePackage;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.hardware_model = this.hardware_model;
        builder.splash_screen = this.splash_screen;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof DeviceTypeSpecificFeatureConfig)) {
            return false;
        }
        DeviceTypeSpecificFeatureConfig deviceTypeSpecificFeatureConfig = (DeviceTypeSpecificFeatureConfig) other;
        return Intrinsics.areEqual(unknownFields(), deviceTypeSpecificFeatureConfig.unknownFields()) && Intrinsics.areEqual(this.hardware_model, deviceTypeSpecificFeatureConfig.hardware_model) && Intrinsics.areEqual(this.splash_screen, deviceTypeSpecificFeatureConfig.splash_screen);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        HardwareModel hardwareModel = this.hardware_model;
        int iHashCode2 = (iHashCode + (hardwareModel != null ? hardwareModel.hashCode() : 0)) * 37;
        CroppedImagePackage croppedImagePackage = this.splash_screen;
        int iHashCode3 = iHashCode2 + (croppedImagePackage != null ? croppedImagePackage.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.hardware_model != null) {
            arrayList.add("hardware_model=" + this.hardware_model);
        }
        if (this.splash_screen != null) {
            arrayList.add("splash_screen=" + this.splash_screen);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "DeviceTypeSpecificFeatureConfig{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ DeviceTypeSpecificFeatureConfig copy$default(DeviceTypeSpecificFeatureConfig deviceTypeSpecificFeatureConfig, HardwareModel hardwareModel, CroppedImagePackage croppedImagePackage, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            hardwareModel = deviceTypeSpecificFeatureConfig.hardware_model;
        }
        if ((i & 2) != 0) {
            croppedImagePackage = deviceTypeSpecificFeatureConfig.splash_screen;
        }
        if ((i & 4) != 0) {
            byteString = deviceTypeSpecificFeatureConfig.unknownFields();
        }
        return deviceTypeSpecificFeatureConfig.copy(hardwareModel, croppedImagePackage, byteString);
    }

    public final DeviceTypeSpecificFeatureConfig copy(HardwareModel hardware_model, CroppedImagePackage splash_screen, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new DeviceTypeSpecificFeatureConfig(hardware_model, splash_screen, unknownFields);
    }

    /* JADX INFO: compiled from: DeviceTypeSpecificFeatureConfig.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;", "()V", "hardware_model", "Lcom/stripe/proto/model/common/HardwareModel;", "splash_screen", "Lcom/stripe/proto/terminal/terminal/pub/message/common/CroppedImagePackage;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<DeviceTypeSpecificFeatureConfig, Builder> {
        public HardwareModel hardware_model;
        public CroppedImagePackage splash_screen;

        public final Builder hardware_model(HardwareModel hardware_model) {
            this.hardware_model = hardware_model;
            return this;
        }

        public final Builder splash_screen(CroppedImagePackage splash_screen) {
            this.splash_screen = splash_screen;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public DeviceTypeSpecificFeatureConfig build() {
            return new DeviceTypeSpecificFeatureConfig(this.hardware_model, this.splash_screen, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: DeviceTypeSpecificFeatureConfig.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/DeviceTypeSpecificFeatureConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ DeviceTypeSpecificFeatureConfig build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(DeviceTypeSpecificFeatureConfig.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<DeviceTypeSpecificFeatureConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.DeviceTypeSpecificFeatureConfig$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(DeviceTypeSpecificFeatureConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.hardware_model != null) {
                    size += HardwareModel.ADAPTER.encodedSizeWithTag(1, value.hardware_model);
                }
                return value.splash_screen != null ? size + CroppedImagePackage.ADAPTER.encodedSizeWithTag(2, value.splash_screen) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, DeviceTypeSpecificFeatureConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.hardware_model != null) {
                    HardwareModel.ADAPTER.encodeWithTag(writer, 1, value.hardware_model);
                }
                if (value.splash_screen != null) {
                    CroppedImagePackage.ADAPTER.encodeWithTag(writer, 2, value.splash_screen);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, DeviceTypeSpecificFeatureConfig value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.splash_screen != null) {
                    CroppedImagePackage.ADAPTER.encodeWithTag(writer, 2, value.splash_screen);
                }
                if (value.hardware_model != null) {
                    HardwareModel.ADAPTER.encodeWithTag(writer, 1, value.hardware_model);
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public DeviceTypeSpecificFeatureConfig redact(DeviceTypeSpecificFeatureConfig value) {
                Intrinsics.checkNotNullParameter(value, "value");
                HardwareModel hardwareModel = value.hardware_model;
                HardwareModel hardwareModelRedact = hardwareModel != null ? HardwareModel.ADAPTER.redact(hardwareModel) : null;
                CroppedImagePackage croppedImagePackage = value.splash_screen;
                return value.copy(hardwareModelRedact, croppedImagePackage != null ? CroppedImagePackage.ADAPTER.redact(croppedImagePackage) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public DeviceTypeSpecificFeatureConfig decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                HardwareModel hardwareModelDecode = null;
                CroppedImagePackage croppedImagePackageDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new DeviceTypeSpecificFeatureConfig(hardwareModelDecode, croppedImagePackageDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        hardwareModelDecode = HardwareModel.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        croppedImagePackageDecode = CroppedImagePackage.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
