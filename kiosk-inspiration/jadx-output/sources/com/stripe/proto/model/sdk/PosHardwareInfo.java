package com.stripe.proto.model.sdk;

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

/* JADX INFO: compiled from: PosHardwareInfo.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00182\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018BU\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0004\u0012\b\b\u0002\u0010\n\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJV\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\u00042\b\b\u0002\u0010\t\u001a\u00020\u00042\b\b\u0002\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\fJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0096\u0002J\b\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0002H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/model/sdk/PosHardwareInfo;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;", "cpu_architecture", "", "cpu_maker", "cpu_speed", "memory_amount", "model_number", "os_architecture", OfflineStorageConstantsKt.READER_SERIAL_NUMBER, "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PosHardwareInfo extends Message<PosHardwareInfo, Builder> {
    public static final ProtoAdapter<PosHardwareInfo> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "cpuArchitecture", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 2)
    public final String cpu_architecture;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "cpuMaker", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 3)
    public final String cpu_maker;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "cpuSpeed", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 4)
    public final String cpu_speed;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "memoryAmount", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 1)
    public final String memory_amount;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "modelNumber", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 4, tag = 6)
    public final String model_number;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "osArchitecture", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 5, tag = 5)
    public final String os_architecture;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "serialNumber", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 6, tag = 7)
    public final String serial_number;

    public PosHardwareInfo() {
        this(null, null, null, null, null, null, null, null, 255, null);
    }

    public /* synthetic */ PosHardwareInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? "" : str5, (i & 32) != 0 ? "" : str6, (i & 64) != 0 ? "" : str7, (i & 128) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PosHardwareInfo(String cpu_architecture, String cpu_maker, String cpu_speed, String memory_amount, String model_number, String os_architecture, String serial_number, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(cpu_architecture, "cpu_architecture");
        Intrinsics.checkNotNullParameter(cpu_maker, "cpu_maker");
        Intrinsics.checkNotNullParameter(cpu_speed, "cpu_speed");
        Intrinsics.checkNotNullParameter(memory_amount, "memory_amount");
        Intrinsics.checkNotNullParameter(model_number, "model_number");
        Intrinsics.checkNotNullParameter(os_architecture, "os_architecture");
        Intrinsics.checkNotNullParameter(serial_number, "serial_number");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.cpu_architecture = cpu_architecture;
        this.cpu_maker = cpu_maker;
        this.cpu_speed = cpu_speed;
        this.memory_amount = memory_amount;
        this.model_number = model_number;
        this.os_architecture = os_architecture;
        this.serial_number = serial_number;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.cpu_architecture = this.cpu_architecture;
        builder.cpu_maker = this.cpu_maker;
        builder.cpu_speed = this.cpu_speed;
        builder.memory_amount = this.memory_amount;
        builder.model_number = this.model_number;
        builder.os_architecture = this.os_architecture;
        builder.serial_number = this.serial_number;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof PosHardwareInfo)) {
            return false;
        }
        PosHardwareInfo posHardwareInfo = (PosHardwareInfo) other;
        return Intrinsics.areEqual(unknownFields(), posHardwareInfo.unknownFields()) && Intrinsics.areEqual(this.cpu_architecture, posHardwareInfo.cpu_architecture) && Intrinsics.areEqual(this.cpu_maker, posHardwareInfo.cpu_maker) && Intrinsics.areEqual(this.cpu_speed, posHardwareInfo.cpu_speed) && Intrinsics.areEqual(this.memory_amount, posHardwareInfo.memory_amount) && Intrinsics.areEqual(this.model_number, posHardwareInfo.model_number) && Intrinsics.areEqual(this.os_architecture, posHardwareInfo.os_architecture) && Intrinsics.areEqual(this.serial_number, posHardwareInfo.serial_number);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((((((((unknownFields().hashCode() * 37) + this.cpu_architecture.hashCode()) * 37) + this.cpu_maker.hashCode()) * 37) + this.cpu_speed.hashCode()) * 37) + this.memory_amount.hashCode()) * 37) + this.model_number.hashCode()) * 37) + this.os_architecture.hashCode()) * 37) + this.serial_number.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("cpu_architecture=" + Internal.sanitize(this.cpu_architecture));
        arrayList2.add("cpu_maker=" + Internal.sanitize(this.cpu_maker));
        arrayList2.add("cpu_speed=" + Internal.sanitize(this.cpu_speed));
        arrayList2.add("memory_amount=" + Internal.sanitize(this.memory_amount));
        arrayList2.add("model_number=" + Internal.sanitize(this.model_number));
        arrayList2.add("os_architecture=" + Internal.sanitize(this.os_architecture));
        arrayList2.add("serial_number=" + Internal.sanitize(this.serial_number));
        return CollectionsKt.joinToString$default(arrayList, ", ", "PosHardwareInfo{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ PosHardwareInfo copy$default(PosHardwareInfo posHardwareInfo, String str, String str2, String str3, String str4, String str5, String str6, String str7, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = posHardwareInfo.cpu_architecture;
        }
        if ((i & 2) != 0) {
            str2 = posHardwareInfo.cpu_maker;
        }
        if ((i & 4) != 0) {
            str3 = posHardwareInfo.cpu_speed;
        }
        if ((i & 8) != 0) {
            str4 = posHardwareInfo.memory_amount;
        }
        if ((i & 16) != 0) {
            str5 = posHardwareInfo.model_number;
        }
        if ((i & 32) != 0) {
            str6 = posHardwareInfo.os_architecture;
        }
        if ((i & 64) != 0) {
            str7 = posHardwareInfo.serial_number;
        }
        if ((i & 128) != 0) {
            byteString = posHardwareInfo.unknownFields();
        }
        String str8 = str7;
        ByteString byteString2 = byteString;
        String str9 = str5;
        String str10 = str6;
        return posHardwareInfo.copy(str, str2, str3, str4, str9, str10, str8, byteString2);
    }

    public final PosHardwareInfo copy(String cpu_architecture, String cpu_maker, String cpu_speed, String memory_amount, String model_number, String os_architecture, String serial_number, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(cpu_architecture, "cpu_architecture");
        Intrinsics.checkNotNullParameter(cpu_maker, "cpu_maker");
        Intrinsics.checkNotNullParameter(cpu_speed, "cpu_speed");
        Intrinsics.checkNotNullParameter(memory_amount, "memory_amount");
        Intrinsics.checkNotNullParameter(model_number, "model_number");
        Intrinsics.checkNotNullParameter(os_architecture, "os_architecture");
        Intrinsics.checkNotNullParameter(serial_number, "serial_number");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new PosHardwareInfo(cpu_architecture, cpu_maker, cpu_speed, memory_amount, model_number, os_architecture, serial_number, unknownFields);
    }

    /* JADX INFO: compiled from: PosHardwareInfo.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\f\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00002\u0006\u0010\t\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/sdk/PosHardwareInfo;", "()V", "cpu_architecture", "", "cpu_maker", "cpu_speed", "memory_amount", "model_number", "os_architecture", OfflineStorageConstantsKt.READER_SERIAL_NUMBER, "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<PosHardwareInfo, Builder> {
        public String cpu_architecture = "";
        public String cpu_maker = "";
        public String cpu_speed = "";
        public String memory_amount = "";
        public String model_number = "";
        public String os_architecture = "";
        public String serial_number = "";

        public final Builder cpu_architecture(String cpu_architecture) {
            Intrinsics.checkNotNullParameter(cpu_architecture, "cpu_architecture");
            this.cpu_architecture = cpu_architecture;
            return this;
        }

        public final Builder cpu_maker(String cpu_maker) {
            Intrinsics.checkNotNullParameter(cpu_maker, "cpu_maker");
            this.cpu_maker = cpu_maker;
            return this;
        }

        public final Builder cpu_speed(String cpu_speed) {
            Intrinsics.checkNotNullParameter(cpu_speed, "cpu_speed");
            this.cpu_speed = cpu_speed;
            return this;
        }

        public final Builder memory_amount(String memory_amount) {
            Intrinsics.checkNotNullParameter(memory_amount, "memory_amount");
            this.memory_amount = memory_amount;
            return this;
        }

        public final Builder model_number(String model_number) {
            Intrinsics.checkNotNullParameter(model_number, "model_number");
            this.model_number = model_number;
            return this;
        }

        public final Builder os_architecture(String os_architecture) {
            Intrinsics.checkNotNullParameter(os_architecture, "os_architecture");
            this.os_architecture = os_architecture;
            return this;
        }

        public final Builder serial_number(String serial_number) {
            Intrinsics.checkNotNullParameter(serial_number, "serial_number");
            this.serial_number = serial_number;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public PosHardwareInfo build() {
            return new PosHardwareInfo(this.cpu_architecture, this.cpu_maker, this.cpu_speed, this.memory_amount, this.model_number, this.os_architecture, this.serial_number, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: PosHardwareInfo.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/sdk/PosHardwareInfo$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/sdk/PosHardwareInfo;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/sdk/PosHardwareInfo$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ PosHardwareInfo build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PosHardwareInfo.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<PosHardwareInfo>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.sdk.PosHardwareInfo$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(PosHardwareInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.cpu_architecture, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.cpu_architecture);
                }
                if (!Intrinsics.areEqual(value.cpu_maker, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.cpu_maker);
                }
                if (!Intrinsics.areEqual(value.cpu_speed, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(4, value.cpu_speed);
                }
                if (!Intrinsics.areEqual(value.memory_amount, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.memory_amount);
                }
                if (!Intrinsics.areEqual(value.model_number, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(6, value.model_number);
                }
                if (!Intrinsics.areEqual(value.os_architecture, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(5, value.os_architecture);
                }
                return !Intrinsics.areEqual(value.serial_number, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(7, value.serial_number) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, PosHardwareInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.cpu_architecture, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.cpu_architecture);
                }
                if (!Intrinsics.areEqual(value.cpu_maker, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.cpu_maker);
                }
                if (!Intrinsics.areEqual(value.cpu_speed, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.cpu_speed);
                }
                if (!Intrinsics.areEqual(value.memory_amount, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.memory_amount);
                }
                if (!Intrinsics.areEqual(value.model_number, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.model_number);
                }
                if (!Intrinsics.areEqual(value.os_architecture, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.os_architecture);
                }
                if (!Intrinsics.areEqual(value.serial_number, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.serial_number);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, PosHardwareInfo value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.serial_number, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 7, value.serial_number);
                }
                if (!Intrinsics.areEqual(value.os_architecture, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 5, value.os_architecture);
                }
                if (!Intrinsics.areEqual(value.model_number, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 6, value.model_number);
                }
                if (!Intrinsics.areEqual(value.memory_amount, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.memory_amount);
                }
                if (!Intrinsics.areEqual(value.cpu_speed, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.cpu_speed);
                }
                if (!Intrinsics.areEqual(value.cpu_maker, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.cpu_maker);
                }
                if (Intrinsics.areEqual(value.cpu_architecture, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.cpu_architecture);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public PosHardwareInfo redact(PosHardwareInfo value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return PosHardwareInfo.copy$default(value, null, null, null, null, null, null, null, ByteString.EMPTY, 127, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public PosHardwareInfo decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                String strDecode5 = strDecode4;
                String strDecode6 = strDecode5;
                String strDecode7 = strDecode6;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag != -1) {
                        switch (iNextTag) {
                            case 1:
                                strDecode4 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 2:
                                strDecode = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 3:
                                strDecode2 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 4:
                                strDecode3 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 5:
                                strDecode6 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 6:
                                strDecode5 = ProtoAdapter.STRING.decode(reader);
                                break;
                            case 7:
                                strDecode7 = ProtoAdapter.STRING.decode(reader);
                                break;
                            default:
                                reader.readUnknownField(iNextTag);
                                break;
                        }
                    } else {
                        return new PosHardwareInfo(strDecode, strDecode2, strDecode3, strDecode4, strDecode5, strDecode6, strDecode7, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                }
            }
        };
    }
}
