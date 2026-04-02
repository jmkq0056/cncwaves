package com.stripe.proto.terminal.terminal.pub.message.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: TippingConfigPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\t\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0006\u0013\u0014\u0015\u0016\u0017\u0018B%\u0012\u0014\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\u0014\b\u0002\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00042\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0005H\u0016R\u001c\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;", "localized_tipping_config", "", "", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/Map;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "FixedAmounts", "LocalizedTippingConfig", "Percentages", "SmartTip", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TippingConfigPb extends Message<TippingConfigPb, Builder> {
    public static final ProtoAdapter<TippingConfigPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb$LocalizedTippingConfig#ADAPTER", jsonName = "localizedTippingConfig", keyAdapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 0, tag = 1)
    public final Map<String, LocalizedTippingConfig> localized_tipping_config;

    /* JADX WARN: Multi-variable type inference failed */
    public TippingConfigPb() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ TippingConfigPb(Map map, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? MapsKt.emptyMap() : map, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TippingConfigPb(Map<String, LocalizedTippingConfig> localized_tipping_config, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(localized_tipping_config, "localized_tipping_config");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.localized_tipping_config = Internal.immutableCopyOf("localized_tipping_config", localized_tipping_config);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.localized_tipping_config = this.localized_tipping_config;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof TippingConfigPb)) {
            return false;
        }
        TippingConfigPb tippingConfigPb = (TippingConfigPb) other;
        return Intrinsics.areEqual(unknownFields(), tippingConfigPb.unknownFields()) && Intrinsics.areEqual(this.localized_tipping_config, tippingConfigPb.localized_tipping_config);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.localized_tipping_config.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.localized_tipping_config.isEmpty()) {
            arrayList.add("localized_tipping_config=" + this.localized_tipping_config);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "TippingConfigPb{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ TippingConfigPb copy$default(TippingConfigPb tippingConfigPb, Map map, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            map = tippingConfigPb.localized_tipping_config;
        }
        if ((i & 2) != 0) {
            byteString = tippingConfigPb.unknownFields();
        }
        return tippingConfigPb.copy(map, byteString);
    }

    public final TippingConfigPb copy(Map<String, LocalizedTippingConfig> localized_tipping_config, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(localized_tipping_config, "localized_tipping_config");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new TippingConfigPb(localized_tipping_config, unknownFields);
    }

    /* JADX INFO: compiled from: TippingConfigPb.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u001a\u0010\u0004\u001a\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005R\u001e\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "()V", "localized_tipping_config", "", "", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<TippingConfigPb, Builder> {
        public Map<String, LocalizedTippingConfig> localized_tipping_config = MapsKt.emptyMap();

        public final Builder localized_tipping_config(Map<String, LocalizedTippingConfig> localized_tipping_config) {
            Intrinsics.checkNotNullParameter(localized_tipping_config, "localized_tipping_config");
            this.localized_tipping_config = localized_tipping_config;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public TippingConfigPb build() {
            return new TippingConfigPb(this.localized_tipping_config, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: TippingConfigPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ TippingConfigPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TippingConfigPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<TippingConfigPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb$Companion$ADAPTER$1

            /* JADX INFO: renamed from: localized_tipping_configAdapter$delegate, reason: from kotlin metadata */
            private final Lazy localized_tipping_configAdapter = LazyKt.lazy(new Function0<ProtoAdapter<Map<String, ? extends TippingConfigPb.LocalizedTippingConfig>>>() { // from class: com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb$Companion$ADAPTER$1$localized_tipping_configAdapter$2
                @Override // kotlin.jvm.functions.Function0
                public final ProtoAdapter<Map<String, ? extends TippingConfigPb.LocalizedTippingConfig>> invoke() {
                    return ProtoAdapter.INSTANCE.newMapAdapter(ProtoAdapter.STRING, TippingConfigPb.LocalizedTippingConfig.ADAPTER);
                }
            });

            private final ProtoAdapter<Map<String, TippingConfigPb.LocalizedTippingConfig>> getLocalized_tipping_configAdapter() {
                return (ProtoAdapter) this.localized_tipping_configAdapter.getValue();
            }

            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(TippingConfigPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + getLocalized_tipping_configAdapter().encodedSizeWithTag(1, value.localized_tipping_config);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, TippingConfigPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                getLocalized_tipping_configAdapter().encodeWithTag(writer, 1, value.localized_tipping_config);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, TippingConfigPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                getLocalized_tipping_configAdapter().encodeWithTag(writer, 1, value.localized_tipping_config);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public TippingConfigPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new TippingConfigPb(linkedHashMap, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        linkedHashMap.putAll(getLocalized_tipping_configAdapter().decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public TippingConfigPb redact(TippingConfigPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.copy(Internal.m362redactElements(value.localized_tipping_config, TippingConfigPb.LocalizedTippingConfig.ADAPTER), ByteString.EMPTY);
            }
        };
    }

    /* JADX INFO: compiled from: TippingConfigPb.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B!\u0012\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\"\u0010\t\u001a\u00020\u00002\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u0005H\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages$Builder;", "percentages", "", "", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Percentages extends Message<Percentages, Builder> {
        public static final ProtoAdapter<Percentages> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
        public final List<Integer> percentages;

        /* JADX WARN: Multi-variable type inference failed */
        public Percentages() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ Percentages(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Percentages(List<Integer> percentages, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(percentages, "percentages");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.percentages = Internal.immutableCopyOf("percentages", percentages);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.percentages = this.percentages;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof Percentages)) {
                return false;
            }
            Percentages percentages = (Percentages) other;
            return Intrinsics.areEqual(unknownFields(), percentages.unknownFields()) && Intrinsics.areEqual(this.percentages, percentages.percentages);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.percentages.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.percentages.isEmpty()) {
                arrayList.add("percentages=" + this.percentages);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "Percentages{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Percentages copy$default(Percentages percentages, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = percentages.percentages;
            }
            if ((i & 2) != 0) {
                byteString = percentages.unknownFields();
            }
            return percentages.copy(list, byteString);
        }

        public final Percentages copy(List<Integer> percentages, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(percentages, "percentages");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new Percentages(percentages, unknownFields);
        }

        /* JADX INFO: compiled from: TippingConfigPb.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0016\u0010\u0004\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005R\u001a\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;", "()V", "percentages", "", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<Percentages, Builder> {
            public List<Integer> percentages = CollectionsKt.emptyList();

            public final Builder percentages(List<Integer> percentages) {
                Intrinsics.checkNotNullParameter(percentages, "percentages");
                Internal.checkElementsNotNull(percentages);
                this.percentages = percentages;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public Percentages build() {
                return new Percentages(this.percentages, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: TippingConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ Percentages build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Percentages.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<Percentages>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb$Percentages$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(TippingConfigPb.Percentages value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + ProtoAdapter.INT32_VALUE.asRepeated().encodedSizeWithTag(1, value.percentages);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, TippingConfigPb.Percentages value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.INT32_VALUE.asRepeated().encodeWithTag(writer, 1, value.percentages);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, TippingConfigPb.Percentages value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.INT32_VALUE.asRepeated().encodeWithTag(writer, 1, value.percentages);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public TippingConfigPb.Percentages decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new TippingConfigPb.Percentages(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(ProtoAdapter.INT32_VALUE.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public TippingConfigPb.Percentages redact(TippingConfigPb.Percentages value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(Internal.m361redactElements(value.percentages, ProtoAdapter.INT32_VALUE), ByteString.EMPTY);
                }
            };
        }
    }

    /* JADX INFO: compiled from: TippingConfigPb.kt */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0012\u0013B!\u0012\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\"\u0010\t\u001a\u00020\u00002\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u0005H\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts$Builder;", "fixed_amounts", "", "", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class FixedAmounts extends Message<FixedAmounts, Builder> {
        public static final ProtoAdapter<FixedAmounts> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", jsonName = "fixedAmounts", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
        public final List<Integer> fixed_amounts;

        /* JADX WARN: Multi-variable type inference failed */
        public FixedAmounts() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ FixedAmounts(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FixedAmounts(List<Integer> fixed_amounts, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(fixed_amounts, "fixed_amounts");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.fixed_amounts = Internal.immutableCopyOf("fixed_amounts", fixed_amounts);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.fixed_amounts = this.fixed_amounts;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof FixedAmounts)) {
                return false;
            }
            FixedAmounts fixedAmounts = (FixedAmounts) other;
            return Intrinsics.areEqual(unknownFields(), fixedAmounts.unknownFields()) && Intrinsics.areEqual(this.fixed_amounts, fixedAmounts.fixed_amounts);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (unknownFields().hashCode() * 37) + this.fixed_amounts.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.fixed_amounts.isEmpty()) {
                arrayList.add("fixed_amounts=" + this.fixed_amounts);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "FixedAmounts{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ FixedAmounts copy$default(FixedAmounts fixedAmounts, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = fixedAmounts.fixed_amounts;
            }
            if ((i & 2) != 0) {
                byteString = fixedAmounts.unknownFields();
            }
            return fixedAmounts.copy(list, byteString);
        }

        public final FixedAmounts copy(List<Integer> fixed_amounts, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(fixed_amounts, "fixed_amounts");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new FixedAmounts(fixed_amounts, unknownFields);
        }

        /* JADX INFO: compiled from: TippingConfigPb.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0016\u0010\u0004\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005R\u001a\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;", "()V", "fixed_amounts", "", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<FixedAmounts, Builder> {
            public List<Integer> fixed_amounts = CollectionsKt.emptyList();

            public final Builder fixed_amounts(List<Integer> fixed_amounts) {
                Intrinsics.checkNotNullParameter(fixed_amounts, "fixed_amounts");
                Internal.checkElementsNotNull(fixed_amounts);
                this.fixed_amounts = fixed_amounts;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public FixedAmounts build() {
                return new FixedAmounts(this.fixed_amounts, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: TippingConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ FixedAmounts build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(FixedAmounts.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<FixedAmounts>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb$FixedAmounts$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(TippingConfigPb.FixedAmounts value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + ProtoAdapter.INT32_VALUE.asRepeated().encodedSizeWithTag(1, value.fixed_amounts);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, TippingConfigPb.FixedAmounts value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.INT32_VALUE.asRepeated().encodeWithTag(writer, 1, value.fixed_amounts);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, TippingConfigPb.FixedAmounts value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    ProtoAdapter.INT32_VALUE.asRepeated().encodeWithTag(writer, 1, value.fixed_amounts);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public TippingConfigPb.FixedAmounts decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new TippingConfigPb.FixedAmounts(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(ProtoAdapter.INT32_VALUE.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public TippingConfigPb.FixedAmounts redact(TippingConfigPb.FixedAmounts value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.copy(Internal.m361redactElements(value.fixed_amounts, ProtoAdapter.INT32_VALUE), ByteString.EMPTY);
                }
            };
        }
    }

    /* JADX INFO: compiled from: TippingConfigPb.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B?\u0012\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJE\u0010\f\u001a\u00020\u00002\u0010\b\u0002\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\u0010\b\u0002\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00042\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0005H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0018\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\u0004\n\u0002\u0010\u000b¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;", "percentages", "", "", "fixed_amounts", "smart_tip_threshold", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Lokio/ByteString;)V", "Ljava/lang/Integer;", "copy", "(Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Lokio/ByteString;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;", "equals", "", "other", "", "hashCode", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class SmartTip extends Message<SmartTip, Builder> {
        public static final ProtoAdapter<SmartTip> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", jsonName = "fixedAmounts", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
        public final List<Integer> fixed_amounts;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
        public final List<Integer> percentages;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#INT32_VALUE", jsonName = "smartTipThreshold", schemaIndex = 2, tag = 3)
        public final Integer smart_tip_threshold;

        public SmartTip() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ SmartTip(List list, List list2, Integer num, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? CollectionsKt.emptyList() : list2, (i & 4) != 0 ? null : num, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SmartTip(List<Integer> percentages, List<Integer> fixed_amounts, Integer num, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(percentages, "percentages");
            Intrinsics.checkNotNullParameter(fixed_amounts, "fixed_amounts");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.smart_tip_threshold = num;
            this.percentages = Internal.immutableCopyOf("percentages", percentages);
            this.fixed_amounts = Internal.immutableCopyOf("fixed_amounts", fixed_amounts);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.percentages = this.percentages;
            builder.fixed_amounts = this.fixed_amounts;
            builder.smart_tip_threshold = this.smart_tip_threshold;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof SmartTip)) {
                return false;
            }
            SmartTip smartTip = (SmartTip) other;
            return Intrinsics.areEqual(unknownFields(), smartTip.unknownFields()) && Intrinsics.areEqual(this.percentages, smartTip.percentages) && Intrinsics.areEqual(this.fixed_amounts, smartTip.fixed_amounts) && Intrinsics.areEqual(this.smart_tip_threshold, smartTip.smart_tip_threshold);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = ((((unknownFields().hashCode() * 37) + this.percentages.hashCode()) * 37) + this.fixed_amounts.hashCode()) * 37;
            Integer num = this.smart_tip_threshold;
            int iHashCode2 = iHashCode + (num != null ? num.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (!this.percentages.isEmpty()) {
                arrayList.add("percentages=" + this.percentages);
            }
            if (!this.fixed_amounts.isEmpty()) {
                arrayList.add("fixed_amounts=" + this.fixed_amounts);
            }
            if (this.smart_tip_threshold != null) {
                arrayList.add("smart_tip_threshold=" + this.smart_tip_threshold);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "SmartTip{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ SmartTip copy$default(SmartTip smartTip, List list, List list2, Integer num, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                list = smartTip.percentages;
            }
            if ((i & 2) != 0) {
                list2 = smartTip.fixed_amounts;
            }
            if ((i & 4) != 0) {
                num = smartTip.smart_tip_threshold;
            }
            if ((i & 8) != 0) {
                byteString = smartTip.unknownFields();
            }
            return smartTip.copy(list, list2, num, byteString);
        }

        public final SmartTip copy(List<Integer> percentages, List<Integer> fixed_amounts, Integer smart_tip_threshold, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(percentages, "percentages");
            Intrinsics.checkNotNullParameter(fixed_amounts, "fixed_amounts");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new SmartTip(percentages, fixed_amounts, smart_tip_threshold, unknownFields);
        }

        /* JADX INFO: compiled from: TippingConfigPb.kt */
        @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0016\u0010\u0004\u001a\u00020\u00002\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005J\u0016\u0010\u0007\u001a\u00020\u00002\u000e\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005J\u0015\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\u0006¢\u0006\u0002\u0010\u000bR\u001a\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0004\n\u0002\u0010\t¨\u0006\f"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;", "()V", "fixed_amounts", "", "", "percentages", "smart_tip_threshold", "Ljava/lang/Integer;", "build", "(Ljava/lang/Integer;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<SmartTip, Builder> {
            public Integer smart_tip_threshold;
            public List<Integer> percentages = CollectionsKt.emptyList();
            public List<Integer> fixed_amounts = CollectionsKt.emptyList();

            public final Builder percentages(List<Integer> percentages) {
                Intrinsics.checkNotNullParameter(percentages, "percentages");
                Internal.checkElementsNotNull(percentages);
                this.percentages = percentages;
                return this;
            }

            public final Builder fixed_amounts(List<Integer> fixed_amounts) {
                Intrinsics.checkNotNullParameter(fixed_amounts, "fixed_amounts");
                Internal.checkElementsNotNull(fixed_amounts);
                this.fixed_amounts = fixed_amounts;
                return this;
            }

            public final Builder smart_tip_threshold(Integer smart_tip_threshold) {
                this.smart_tip_threshold = smart_tip_threshold;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public SmartTip build() {
                return new SmartTip(this.percentages, this.fixed_amounts, this.smart_tip_threshold, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: TippingConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ SmartTip build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(SmartTip.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<SmartTip>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb$SmartTip$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(TippingConfigPb.SmartTip value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size() + ProtoAdapter.INT32_VALUE.asRepeated().encodedSizeWithTag(1, value.percentages) + ProtoAdapter.INT32_VALUE.asRepeated().encodedSizeWithTag(2, value.fixed_amounts);
                    return value.smart_tip_threshold != null ? size + ProtoAdapter.INT32_VALUE.encodedSizeWithTag(3, value.smart_tip_threshold) : size;
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, TippingConfigPb.SmartTip value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    ProtoAdapter.INT32_VALUE.asRepeated().encodeWithTag(writer, 1, value.percentages);
                    ProtoAdapter.INT32_VALUE.asRepeated().encodeWithTag(writer, 2, value.fixed_amounts);
                    if (value.smart_tip_threshold != null) {
                        ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 3, value.smart_tip_threshold);
                    }
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, TippingConfigPb.SmartTip value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    if (value.smart_tip_threshold != null) {
                        ProtoAdapter.INT32_VALUE.encodeWithTag(writer, 3, value.smart_tip_threshold);
                    }
                    ProtoAdapter.INT32_VALUE.asRepeated().encodeWithTag(writer, 2, value.fixed_amounts);
                    ProtoAdapter.INT32_VALUE.asRepeated().encodeWithTag(writer, 1, value.percentages);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public TippingConfigPb.SmartTip decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    Integer numDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new TippingConfigPb.SmartTip(arrayList, arrayList2, numDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            arrayList.add(ProtoAdapter.INT32_VALUE.decode(reader));
                        } else if (iNextTag == 2) {
                            arrayList2.add(ProtoAdapter.INT32_VALUE.decode(reader));
                        } else if (iNextTag == 3) {
                            numDecode = ProtoAdapter.INT32_VALUE.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public TippingConfigPb.SmartTip redact(TippingConfigPb.SmartTip value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    List<Integer> listM361redactElements = Internal.m361redactElements(value.percentages, ProtoAdapter.INT32_VALUE);
                    List<Integer> listM361redactElements2 = Internal.m361redactElements(value.fixed_amounts, ProtoAdapter.INT32_VALUE);
                    Integer num = value.smart_tip_threshold;
                    return value.copy(listM361redactElements, listM361redactElements2, num != null ? ProtoAdapter.INT32_VALUE.redact(num) : null, ByteString.EMPTY);
                }
            };
        }
    }

    /* JADX INFO: compiled from: TippingConfigPb.kt */
    @Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;", "fixed_percentage", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;", "fixed_amount", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;", "smart_tip", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class LocalizedTippingConfig extends Message<LocalizedTippingConfig, Builder> {
        public static final ProtoAdapter<LocalizedTippingConfig> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb$FixedAmounts#ADAPTER", jsonName = "fixedAmount", oneofName = "tip", schemaIndex = 1, tag = 2)
        public final FixedAmounts fixed_amount;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb$Percentages#ADAPTER", jsonName = "fixedPercentage", oneofName = "tip", schemaIndex = 0, tag = 1)
        public final Percentages fixed_percentage;

        @WireField(adapter = "com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb$SmartTip#ADAPTER", jsonName = "smartTip", oneofName = "tip", schemaIndex = 2, tag = 3)
        public final SmartTip smart_tip;

        public LocalizedTippingConfig() {
            this(null, null, null, null, 15, null);
        }

        public /* synthetic */ LocalizedTippingConfig(Percentages percentages, FixedAmounts fixedAmounts, SmartTip smartTip, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : percentages, (i & 2) != 0 ? null : fixedAmounts, (i & 4) != 0 ? null : smartTip, (i & 8) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LocalizedTippingConfig(Percentages percentages, FixedAmounts fixedAmounts, SmartTip smartTip, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.fixed_percentage = percentages;
            this.fixed_amount = fixedAmounts;
            this.smart_tip = smartTip;
            if (Internal.countNonNull(percentages, fixedAmounts, smartTip) > 1) {
                throw new IllegalArgumentException("At most one of fixed_percentage, fixed_amount, smart_tip may be non-null".toString());
            }
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.fixed_percentage = this.fixed_percentage;
            builder.fixed_amount = this.fixed_amount;
            builder.smart_tip = this.smart_tip;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof LocalizedTippingConfig)) {
                return false;
            }
            LocalizedTippingConfig localizedTippingConfig = (LocalizedTippingConfig) other;
            return Intrinsics.areEqual(unknownFields(), localizedTippingConfig.unknownFields()) && Intrinsics.areEqual(this.fixed_percentage, localizedTippingConfig.fixed_percentage) && Intrinsics.areEqual(this.fixed_amount, localizedTippingConfig.fixed_amount) && Intrinsics.areEqual(this.smart_tip, localizedTippingConfig.smart_tip);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Percentages percentages = this.fixed_percentage;
            int iHashCode2 = (iHashCode + (percentages != null ? percentages.hashCode() : 0)) * 37;
            FixedAmounts fixedAmounts = this.fixed_amount;
            int iHashCode3 = (iHashCode2 + (fixedAmounts != null ? fixedAmounts.hashCode() : 0)) * 37;
            SmartTip smartTip = this.smart_tip;
            int iHashCode4 = iHashCode3 + (smartTip != null ? smartTip.hashCode() : 0);
            this.hashCode = iHashCode4;
            return iHashCode4;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.fixed_percentage != null) {
                arrayList.add("fixed_percentage=" + this.fixed_percentage);
            }
            if (this.fixed_amount != null) {
                arrayList.add("fixed_amount=" + this.fixed_amount);
            }
            if (this.smart_tip != null) {
                arrayList.add("smart_tip=" + this.smart_tip);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "LocalizedTippingConfig{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ LocalizedTippingConfig copy$default(LocalizedTippingConfig localizedTippingConfig, Percentages percentages, FixedAmounts fixedAmounts, SmartTip smartTip, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                percentages = localizedTippingConfig.fixed_percentage;
            }
            if ((i & 2) != 0) {
                fixedAmounts = localizedTippingConfig.fixed_amount;
            }
            if ((i & 4) != 0) {
                smartTip = localizedTippingConfig.smart_tip;
            }
            if ((i & 8) != 0) {
                byteString = localizedTippingConfig.unknownFields();
            }
            return localizedTippingConfig.copy(percentages, fixedAmounts, smartTip, byteString);
        }

        public final LocalizedTippingConfig copy(Percentages fixed_percentage, FixedAmounts fixed_amount, SmartTip smart_tip, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new LocalizedTippingConfig(fixed_percentage, fixed_amount, smart_tip, unknownFields);
        }

        /* JADX INFO: compiled from: TippingConfigPb.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;", "()V", "fixed_amount", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$FixedAmounts;", "fixed_percentage", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$Percentages;", "smart_tip", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$SmartTip;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<LocalizedTippingConfig, Builder> {
            public FixedAmounts fixed_amount;
            public Percentages fixed_percentage;
            public SmartTip smart_tip;

            public final Builder fixed_percentage(Percentages fixed_percentage) {
                this.fixed_percentage = fixed_percentage;
                this.fixed_amount = null;
                this.smart_tip = null;
                return this;
            }

            public final Builder fixed_amount(FixedAmounts fixed_amount) {
                this.fixed_amount = fixed_amount;
                this.fixed_percentage = null;
                this.smart_tip = null;
                return this;
            }

            public final Builder smart_tip(SmartTip smart_tip) {
                this.smart_tip = smart_tip;
                this.fixed_percentage = null;
                this.fixed_amount = null;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public LocalizedTippingConfig build() {
                return new LocalizedTippingConfig(this.fixed_percentage, this.fixed_amount, this.smart_tip, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: TippingConfigPb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb$LocalizedTippingConfig$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ LocalizedTippingConfig build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LocalizedTippingConfig.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<LocalizedTippingConfig>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.terminal.terminal.pub.message.config.TippingConfigPb$LocalizedTippingConfig$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(TippingConfigPb.LocalizedTippingConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + TippingConfigPb.Percentages.ADAPTER.encodedSizeWithTag(1, value.fixed_percentage) + TippingConfigPb.FixedAmounts.ADAPTER.encodedSizeWithTag(2, value.fixed_amount) + TippingConfigPb.SmartTip.ADAPTER.encodedSizeWithTag(3, value.smart_tip);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, TippingConfigPb.LocalizedTippingConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    TippingConfigPb.Percentages.ADAPTER.encodeWithTag(writer, 1, value.fixed_percentage);
                    TippingConfigPb.FixedAmounts.ADAPTER.encodeWithTag(writer, 2, value.fixed_amount);
                    TippingConfigPb.SmartTip.ADAPTER.encodeWithTag(writer, 3, value.smart_tip);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, TippingConfigPb.LocalizedTippingConfig value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    TippingConfigPb.SmartTip.ADAPTER.encodeWithTag(writer, 3, value.smart_tip);
                    TippingConfigPb.FixedAmounts.ADAPTER.encodeWithTag(writer, 2, value.fixed_amount);
                    TippingConfigPb.Percentages.ADAPTER.encodeWithTag(writer, 1, value.fixed_percentage);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public TippingConfigPb.LocalizedTippingConfig redact(TippingConfigPb.LocalizedTippingConfig value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    TippingConfigPb.Percentages percentages = value.fixed_percentage;
                    TippingConfigPb.Percentages percentagesRedact = percentages != null ? TippingConfigPb.Percentages.ADAPTER.redact(percentages) : null;
                    TippingConfigPb.FixedAmounts fixedAmounts = value.fixed_amount;
                    TippingConfigPb.FixedAmounts fixedAmountsRedact = fixedAmounts != null ? TippingConfigPb.FixedAmounts.ADAPTER.redact(fixedAmounts) : null;
                    TippingConfigPb.SmartTip smartTip = value.smart_tip;
                    return value.copy(percentagesRedact, fixedAmountsRedact, smartTip != null ? TippingConfigPb.SmartTip.ADAPTER.redact(smartTip) : null, ByteString.EMPTY);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public TippingConfigPb.LocalizedTippingConfig decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    TippingConfigPb.Percentages percentagesDecode = null;
                    TippingConfigPb.FixedAmounts fixedAmountsDecode = null;
                    TippingConfigPb.SmartTip smartTipDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new TippingConfigPb.LocalizedTippingConfig(percentagesDecode, fixedAmountsDecode, smartTipDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            percentagesDecode = TippingConfigPb.Percentages.ADAPTER.decode(reader);
                        } else if (iNextTag == 2) {
                            fixedAmountsDecode = TippingConfigPb.FixedAmounts.ADAPTER.decode(reader);
                        } else if (iNextTag == 3) {
                            smartTipDecode = TippingConfigPb.SmartTip.ADAPTER.decode(reader);
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }
}
