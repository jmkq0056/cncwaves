package com.stripe.ext;

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
import com.stripe.ext.CellPinning;
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

/* JADX INFO: compiled from: CellPinning.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\t\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001eB3\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ4\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\b\b\u0002\u0010\t\u001a\u00020\nJ\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u0002H\u0016J\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcom/stripe/ext/CellPinning;", "Lcom/squareup/wire/Message;", "Lcom/stripe/ext/CellPinning$Builder;", "spec", "Lcom/stripe/ext/CellPinning$CellPinningSpec;", "bypass", "Lcom/stripe/ext/CellPinning$CellPinningBypass;", "regional_resiliency_check", "Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/ext/CellPinning$CellPinningSpec;Lcom/stripe/ext/CellPinning$CellPinningBypass;Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "CellPinningBypass", "CellPinningSpec", "CellType", "Companion", "EnforcementMode", "RegionalResiliencyCheck", "RoutingFallback", "RoutingPreference", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CellPinning extends Message<CellPinning, Builder> {
    public static final ProtoAdapter<CellPinning> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.ext.CellPinning$CellPinningBypass#ADAPTER", oneofName = "pinning_strategy", schemaIndex = 1, tag = 2)
    public final CellPinningBypass bypass;

    @WireField(adapter = "com.stripe.ext.CellPinning$RegionalResiliencyCheck#ADAPTER", schemaIndex = 2, tag = 3)
    public final RegionalResiliencyCheck regional_resiliency_check;

    @WireField(adapter = "com.stripe.ext.CellPinning$CellPinningSpec#ADAPTER", oneofName = "pinning_strategy", schemaIndex = 0, tag = 1)
    public final CellPinningSpec spec;

    public CellPinning() {
        this(null, null, null, null, 15, null);
    }

    public /* synthetic */ CellPinning(CellPinningSpec cellPinningSpec, CellPinningBypass cellPinningBypass, RegionalResiliencyCheck regionalResiliencyCheck, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : cellPinningSpec, (i & 2) != 0 ? null : cellPinningBypass, (i & 4) != 0 ? null : regionalResiliencyCheck, (i & 8) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CellPinning(CellPinningSpec cellPinningSpec, CellPinningBypass cellPinningBypass, RegionalResiliencyCheck regionalResiliencyCheck, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.spec = cellPinningSpec;
        this.bypass = cellPinningBypass;
        this.regional_resiliency_check = regionalResiliencyCheck;
        if (Internal.countNonNull(cellPinningSpec, cellPinningBypass) > 1) {
            throw new IllegalArgumentException("At most one of spec, bypass may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.spec = this.spec;
        builder.bypass = this.bypass;
        builder.regional_resiliency_check = this.regional_resiliency_check;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CellPinning)) {
            return false;
        }
        CellPinning cellPinning = (CellPinning) other;
        return Intrinsics.areEqual(unknownFields(), cellPinning.unknownFields()) && Intrinsics.areEqual(this.spec, cellPinning.spec) && Intrinsics.areEqual(this.bypass, cellPinning.bypass) && Intrinsics.areEqual(this.regional_resiliency_check, cellPinning.regional_resiliency_check);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        CellPinningSpec cellPinningSpec = this.spec;
        int iHashCode2 = (iHashCode + (cellPinningSpec != null ? cellPinningSpec.hashCode() : 0)) * 37;
        CellPinningBypass cellPinningBypass = this.bypass;
        int iHashCode3 = (iHashCode2 + (cellPinningBypass != null ? cellPinningBypass.hashCode() : 0)) * 37;
        RegionalResiliencyCheck regionalResiliencyCheck = this.regional_resiliency_check;
        int iHashCode4 = iHashCode3 + (regionalResiliencyCheck != null ? regionalResiliencyCheck.hashCode() : 0);
        this.hashCode = iHashCode4;
        return iHashCode4;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.spec != null) {
            arrayList.add("spec=" + this.spec);
        }
        if (this.bypass != null) {
            arrayList.add("bypass=" + this.bypass);
        }
        if (this.regional_resiliency_check != null) {
            arrayList.add("regional_resiliency_check=" + this.regional_resiliency_check);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "CellPinning{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CellPinning copy$default(CellPinning cellPinning, CellPinningSpec cellPinningSpec, CellPinningBypass cellPinningBypass, RegionalResiliencyCheck regionalResiliencyCheck, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            cellPinningSpec = cellPinning.spec;
        }
        if ((i & 2) != 0) {
            cellPinningBypass = cellPinning.bypass;
        }
        if ((i & 4) != 0) {
            regionalResiliencyCheck = cellPinning.regional_resiliency_check;
        }
        if ((i & 8) != 0) {
            byteString = cellPinning.unknownFields();
        }
        return cellPinning.copy(cellPinningSpec, cellPinningBypass, regionalResiliencyCheck, byteString);
    }

    public final CellPinning copy(CellPinningSpec spec, CellPinningBypass bypass, RegionalResiliencyCheck regional_resiliency_check, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CellPinning(spec, bypass, regional_resiliency_check, unknownFields);
    }

    /* JADX INFO: compiled from: CellPinning.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/ext/CellPinning$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/ext/CellPinning;", "()V", "bypass", "Lcom/stripe/ext/CellPinning$CellPinningBypass;", "regional_resiliency_check", "Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;", "spec", "Lcom/stripe/ext/CellPinning$CellPinningSpec;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CellPinning, Builder> {
        public CellPinningBypass bypass;
        public RegionalResiliencyCheck regional_resiliency_check;
        public CellPinningSpec spec;

        public final Builder regional_resiliency_check(RegionalResiliencyCheck regional_resiliency_check) {
            this.regional_resiliency_check = regional_resiliency_check;
            return this;
        }

        public final Builder spec(CellPinningSpec spec) {
            this.spec = spec;
            this.bypass = null;
            return this;
        }

        public final Builder bypass(CellPinningBypass bypass) {
            this.bypass = bypass;
            this.spec = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CellPinning build() {
            return new CellPinning(this.spec, this.bypass, this.regional_resiliency_check, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CellPinning.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/CellPinning$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/CellPinning;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/ext/CellPinning$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CellPinning build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CellPinning.class);
        final Syntax syntax = Syntax.PROTO_2;
        ADAPTER = new ProtoAdapter<CellPinning>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.ext.CellPinning$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CellPinning value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + CellPinning.CellPinningSpec.ADAPTER.encodedSizeWithTag(1, value.spec) + CellPinning.CellPinningBypass.ADAPTER.encodedSizeWithTag(2, value.bypass) + CellPinning.RegionalResiliencyCheck.ADAPTER.encodedSizeWithTag(3, value.regional_resiliency_check);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CellPinning value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                CellPinning.RegionalResiliencyCheck.ADAPTER.encodeWithTag(writer, 3, value.regional_resiliency_check);
                CellPinning.CellPinningSpec.ADAPTER.encodeWithTag(writer, 1, value.spec);
                CellPinning.CellPinningBypass.ADAPTER.encodeWithTag(writer, 2, value.bypass);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CellPinning value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                CellPinning.CellPinningBypass.ADAPTER.encodeWithTag(writer, 2, value.bypass);
                CellPinning.CellPinningSpec.ADAPTER.encodeWithTag(writer, 1, value.spec);
                CellPinning.RegionalResiliencyCheck.ADAPTER.encodeWithTag(writer, 3, value.regional_resiliency_check);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CellPinning redact(CellPinning value) {
                Intrinsics.checkNotNullParameter(value, "value");
                CellPinning.CellPinningSpec cellPinningSpec = value.spec;
                CellPinning.CellPinningSpec cellPinningSpecRedact = cellPinningSpec != null ? CellPinning.CellPinningSpec.ADAPTER.redact(cellPinningSpec) : null;
                CellPinning.CellPinningBypass cellPinningBypass = value.bypass;
                CellPinning.CellPinningBypass cellPinningBypassRedact = cellPinningBypass != null ? CellPinning.CellPinningBypass.ADAPTER.redact(cellPinningBypass) : null;
                CellPinning.RegionalResiliencyCheck regionalResiliencyCheck = value.regional_resiliency_check;
                return value.copy(cellPinningSpecRedact, cellPinningBypassRedact, regionalResiliencyCheck != null ? CellPinning.RegionalResiliencyCheck.ADAPTER.redact(regionalResiliencyCheck) : null, ByteString.EMPTY);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CellPinning decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                CellPinning.CellPinningSpec cellPinningSpecDecode = null;
                CellPinning.CellPinningBypass cellPinningBypassDecode = null;
                CellPinning.RegionalResiliencyCheck regionalResiliencyCheckDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CellPinning(cellPinningSpecDecode, cellPinningBypassDecode, regionalResiliencyCheckDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        cellPinningSpecDecode = CellPinning.CellPinningSpec.ADAPTER.decode(reader);
                    } else if (iNextTag == 2) {
                        cellPinningBypassDecode = CellPinning.CellPinningBypass.ADAPTER.decode(reader);
                    } else if (iNextTag == 3) {
                        regionalResiliencyCheckDecode = CellPinning.RegionalResiliencyCheck.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CellPinning.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/ext/CellPinning$RoutingPreference;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "PREFERENCE_INVALID", "PRIMARY", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RoutingPreference implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RoutingPreference[] $VALUES;
        public static final ProtoAdapter<RoutingPreference> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final RoutingPreference PREFERENCE_INVALID;
        public static final RoutingPreference PRIMARY;
        private final int value;

        private static final /* synthetic */ RoutingPreference[] $values() {
            return new RoutingPreference[]{PREFERENCE_INVALID, PRIMARY};
        }

        @JvmStatic
        public static final RoutingPreference fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<RoutingPreference> getEntries() {
            return $ENTRIES;
        }

        public static RoutingPreference valueOf(String str) {
            return (RoutingPreference) Enum.valueOf(RoutingPreference.class, str);
        }

        public static RoutingPreference[] values() {
            return (RoutingPreference[]) $VALUES.clone();
        }

        private RoutingPreference(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final RoutingPreference routingPreference = new RoutingPreference("PREFERENCE_INVALID", 0, 0);
            PREFERENCE_INVALID = routingPreference;
            PRIMARY = new RoutingPreference("PRIMARY", 1, 2);
            RoutingPreference[] routingPreferenceArr$values = $values();
            $VALUES = routingPreferenceArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(routingPreferenceArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RoutingPreference.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new EnumAdapter<RoutingPreference>(orCreateKotlinClass, syntax, routingPreference) { // from class: com.stripe.ext.CellPinning$RoutingPreference$Companion$ADAPTER$1
                {
                    CellPinning.RoutingPreference routingPreference2 = routingPreference;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CellPinning.RoutingPreference fromValue(int value) {
                    return CellPinning.RoutingPreference.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/CellPinning$RoutingPreference$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/CellPinning$RoutingPreference;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final RoutingPreference fromValue(int value) {
                if (value == 0) {
                    return RoutingPreference.PREFERENCE_INVALID;
                }
                if (value != 2) {
                    return null;
                }
                return RoutingPreference.PRIMARY;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CellPinning.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/ext/CellPinning$EnforcementMode;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "MODE_INVALID", "MODE_ALLOW", "MODE_WARN", "MODE_DENY", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class EnforcementMode implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ EnforcementMode[] $VALUES;
        public static final ProtoAdapter<EnforcementMode> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final EnforcementMode MODE_ALLOW;
        public static final EnforcementMode MODE_DENY;
        public static final EnforcementMode MODE_INVALID;
        public static final EnforcementMode MODE_WARN;
        private final int value;

        private static final /* synthetic */ EnforcementMode[] $values() {
            return new EnforcementMode[]{MODE_INVALID, MODE_ALLOW, MODE_WARN, MODE_DENY};
        }

        @JvmStatic
        public static final EnforcementMode fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<EnforcementMode> getEntries() {
            return $ENTRIES;
        }

        public static EnforcementMode valueOf(String str) {
            return (EnforcementMode) Enum.valueOf(EnforcementMode.class, str);
        }

        public static EnforcementMode[] values() {
            return (EnforcementMode[]) $VALUES.clone();
        }

        private EnforcementMode(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final EnforcementMode enforcementMode = new EnforcementMode("MODE_INVALID", 0, 0);
            MODE_INVALID = enforcementMode;
            MODE_ALLOW = new EnforcementMode("MODE_ALLOW", 1, 1);
            MODE_WARN = new EnforcementMode("MODE_WARN", 2, 2);
            MODE_DENY = new EnforcementMode("MODE_DENY", 3, 3);
            EnforcementMode[] enforcementModeArr$values = $values();
            $VALUES = enforcementModeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(enforcementModeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EnforcementMode.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new EnumAdapter<EnforcementMode>(orCreateKotlinClass, syntax, enforcementMode) { // from class: com.stripe.ext.CellPinning$EnforcementMode$Companion$ADAPTER$1
                {
                    CellPinning.EnforcementMode enforcementMode2 = enforcementMode;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CellPinning.EnforcementMode fromValue(int value) {
                    return CellPinning.EnforcementMode.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/CellPinning$EnforcementMode$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/CellPinning$EnforcementMode;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final EnforcementMode fromValue(int value) {
                if (value == 0) {
                    return EnforcementMode.MODE_INVALID;
                }
                if (value == 1) {
                    return EnforcementMode.MODE_ALLOW;
                }
                if (value == 2) {
                    return EnforcementMode.MODE_WARN;
                }
                if (value != 3) {
                    return null;
                }
                return EnforcementMode.MODE_DENY;
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CellPinning.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0013\b\u0086\u0081\u0002\u0018\u0000 \u00162\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0016B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015¨\u0006\u0017"}, d2 = {"Lcom/stripe/ext/CellPinning$CellType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "CELL_TYPE_INVALID", "MERCHANT_CELL", "GLOBAL_CELL", "CLUSTER_LOCAL_CELL", "OFFLINE_LZ_CELL", "LEGACY_NW_CELL", "ONLINE_LZ_CELL", "COMPACT_MERCHANT_CELL", "KAFKA_CELL_TYPE", "MAINLAND_TOKEN_CELL", "STRIPE_CORP_CELL", "API_CELL", "LIMITED_FAILOVER_API_CELL", "CLEARING_CELL", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CellType implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ CellType[] $VALUES;
        public static final ProtoAdapter<CellType> ADAPTER;
        public static final CellType API_CELL;
        public static final CellType CELL_TYPE_INVALID;
        public static final CellType CLEARING_CELL;
        public static final CellType CLUSTER_LOCAL_CELL;
        public static final CellType COMPACT_MERCHANT_CELL;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final CellType GLOBAL_CELL;
        public static final CellType KAFKA_CELL_TYPE;
        public static final CellType LEGACY_NW_CELL;
        public static final CellType LIMITED_FAILOVER_API_CELL;
        public static final CellType MAINLAND_TOKEN_CELL;
        public static final CellType MERCHANT_CELL;
        public static final CellType OFFLINE_LZ_CELL;
        public static final CellType ONLINE_LZ_CELL;
        public static final CellType STRIPE_CORP_CELL;
        private final int value;

        private static final /* synthetic */ CellType[] $values() {
            return new CellType[]{CELL_TYPE_INVALID, MERCHANT_CELL, GLOBAL_CELL, CLUSTER_LOCAL_CELL, OFFLINE_LZ_CELL, LEGACY_NW_CELL, ONLINE_LZ_CELL, COMPACT_MERCHANT_CELL, KAFKA_CELL_TYPE, MAINLAND_TOKEN_CELL, STRIPE_CORP_CELL, API_CELL, LIMITED_FAILOVER_API_CELL, CLEARING_CELL};
        }

        @JvmStatic
        public static final CellType fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<CellType> getEntries() {
            return $ENTRIES;
        }

        public static CellType valueOf(String str) {
            return (CellType) Enum.valueOf(CellType.class, str);
        }

        public static CellType[] values() {
            return (CellType[]) $VALUES.clone();
        }

        private CellType(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final CellType cellType = new CellType("CELL_TYPE_INVALID", 0, 0);
            CELL_TYPE_INVALID = cellType;
            MERCHANT_CELL = new CellType("MERCHANT_CELL", 1, 1);
            GLOBAL_CELL = new CellType("GLOBAL_CELL", 2, 2);
            CLUSTER_LOCAL_CELL = new CellType("CLUSTER_LOCAL_CELL", 3, 3);
            OFFLINE_LZ_CELL = new CellType("OFFLINE_LZ_CELL", 4, 4);
            LEGACY_NW_CELL = new CellType("LEGACY_NW_CELL", 5, 5);
            ONLINE_LZ_CELL = new CellType("ONLINE_LZ_CELL", 6, 6);
            COMPACT_MERCHANT_CELL = new CellType("COMPACT_MERCHANT_CELL", 7, 7);
            KAFKA_CELL_TYPE = new CellType("KAFKA_CELL_TYPE", 8, 8);
            MAINLAND_TOKEN_CELL = new CellType("MAINLAND_TOKEN_CELL", 9, 9);
            STRIPE_CORP_CELL = new CellType("STRIPE_CORP_CELL", 10, 10);
            API_CELL = new CellType("API_CELL", 11, 11);
            LIMITED_FAILOVER_API_CELL = new CellType("LIMITED_FAILOVER_API_CELL", 12, 12);
            CLEARING_CELL = new CellType("CLEARING_CELL", 13, 13);
            CellType[] cellTypeArr$values = $values();
            $VALUES = cellTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(cellTypeArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CellType.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new EnumAdapter<CellType>(orCreateKotlinClass, syntax, cellType) { // from class: com.stripe.ext.CellPinning$CellType$Companion$ADAPTER$1
                {
                    CellPinning.CellType cellType2 = cellType;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CellPinning.CellType fromValue(int value) {
                    return CellPinning.CellType.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/CellPinning$CellType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/CellPinning$CellType;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final CellType fromValue(int value) {
                switch (value) {
                    case 0:
                        return CellType.CELL_TYPE_INVALID;
                    case 1:
                        return CellType.MERCHANT_CELL;
                    case 2:
                        return CellType.GLOBAL_CELL;
                    case 3:
                        return CellType.CLUSTER_LOCAL_CELL;
                    case 4:
                        return CellType.OFFLINE_LZ_CELL;
                    case 5:
                        return CellType.LEGACY_NW_CELL;
                    case 6:
                        return CellType.ONLINE_LZ_CELL;
                    case 7:
                        return CellType.COMPACT_MERCHANT_CELL;
                    case 8:
                        return CellType.KAFKA_CELL_TYPE;
                    case 9:
                        return CellType.MAINLAND_TOKEN_CELL;
                    case 10:
                        return CellType.STRIPE_CORP_CELL;
                    case 11:
                        return CellType.API_CELL;
                    case 12:
                        return CellType.LIMITED_FAILOVER_API_CELL;
                    case 13:
                        return CellType.CLEARING_CELL;
                    default:
                        return null;
                }
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: CellPinning.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/ext/CellPinning$RoutingFallback;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "FALLBACK_INVALID", "FALLBACK_LOCAL", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RoutingFallback implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RoutingFallback[] $VALUES;
        public static final ProtoAdapter<RoutingFallback> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final RoutingFallback FALLBACK_INVALID;
        public static final RoutingFallback FALLBACK_LOCAL;
        private final int value;

        private static final /* synthetic */ RoutingFallback[] $values() {
            return new RoutingFallback[]{FALLBACK_INVALID, FALLBACK_LOCAL};
        }

        @JvmStatic
        public static final RoutingFallback fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<RoutingFallback> getEntries() {
            return $ENTRIES;
        }

        public static RoutingFallback valueOf(String str) {
            return (RoutingFallback) Enum.valueOf(RoutingFallback.class, str);
        }

        public static RoutingFallback[] values() {
            return (RoutingFallback[]) $VALUES.clone();
        }

        private RoutingFallback(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final RoutingFallback routingFallback = new RoutingFallback("FALLBACK_INVALID", 0, 0);
            FALLBACK_INVALID = routingFallback;
            FALLBACK_LOCAL = new RoutingFallback("FALLBACK_LOCAL", 1, 1);
            RoutingFallback[] routingFallbackArr$values = $values();
            $VALUES = routingFallbackArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(routingFallbackArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RoutingFallback.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new EnumAdapter<RoutingFallback>(orCreateKotlinClass, syntax, routingFallback) { // from class: com.stripe.ext.CellPinning$RoutingFallback$Companion$ADAPTER$1
                {
                    CellPinning.RoutingFallback routingFallback2 = routingFallback;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public CellPinning.RoutingFallback fromValue(int value) {
                    return CellPinning.RoutingFallback.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/CellPinning$RoutingFallback$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/CellPinning$RoutingFallback;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final RoutingFallback fromValue(int value) {
                if (value == 0) {
                    return RoutingFallback.FALLBACK_INVALID;
                }
                if (value != 1) {
                    return null;
                }
                return RoutingFallback.FALLBACK_LOCAL;
            }
        }
    }

    /* JADX INFO: compiled from: CellPinning.kt */
    @Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u001a2\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0019\u001aBK\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJL\u0010\u0010\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b2\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\b\u0002\u0010\r\u001a\u00020\u000eJ\u0013\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0002H\u0016J\b\u0010\u0018\u001a\u00020\u0006H\u0016R\u0012\u0010\t\u001a\u0004\u0018\u00010\n8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u0004\u0018\u00010\f8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u0004\u0018\u00010\b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcom/stripe/ext/CellPinning$CellPinningSpec;", "Lcom/squareup/wire/Message;", "Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;", "type", "Lcom/stripe/ext/CellPinning$CellType;", "entity_id_field", "", "routing_preference", "Lcom/stripe/ext/CellPinning$RoutingPreference;", "enforcement_mode", "Lcom/stripe/ext/CellPinning$EnforcementMode;", "routing_fallback", "Lcom/stripe/ext/CellPinning$RoutingFallback;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/ext/CellPinning$CellType;Ljava/lang/String;Lcom/stripe/ext/CellPinning$RoutingPreference;Lcom/stripe/ext/CellPinning$EnforcementMode;Lcom/stripe/ext/CellPinning$RoutingFallback;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CellPinningSpec extends Message<CellPinningSpec, Builder> {
        public static final ProtoAdapter<CellPinningSpec> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.ext.CellPinning$EnforcementMode#ADAPTER", schemaIndex = 3, tag = 4)
        public final EnforcementMode enforcement_mode;

        @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", schemaIndex = 1, tag = 2)
        public final String entity_id_field;

        @WireField(adapter = "com.stripe.ext.CellPinning$RoutingFallback#ADAPTER", schemaIndex = 4, tag = 5)
        public final RoutingFallback routing_fallback;

        @WireField(adapter = "com.stripe.ext.CellPinning$RoutingPreference#ADAPTER", schemaIndex = 2, tag = 3)
        public final RoutingPreference routing_preference;

        @WireField(adapter = "com.stripe.ext.CellPinning$CellType#ADAPTER", schemaIndex = 0, tag = 1)
        public final CellType type;

        public CellPinningSpec() {
            this(null, null, null, null, null, null, 63, null);
        }

        public /* synthetic */ CellPinningSpec(CellType cellType, String str, RoutingPreference routingPreference, EnforcementMode enforcementMode, RoutingFallback routingFallback, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : cellType, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : routingPreference, (i & 8) != 0 ? null : enforcementMode, (i & 16) != 0 ? null : routingFallback, (i & 32) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CellPinningSpec(CellType cellType, String str, RoutingPreference routingPreference, EnforcementMode enforcementMode, RoutingFallback routingFallback, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.type = cellType;
            this.entity_id_field = str;
            this.routing_preference = routingPreference;
            this.enforcement_mode = enforcementMode;
            this.routing_fallback = routingFallback;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.type = this.type;
            builder.entity_id_field = this.entity_id_field;
            builder.routing_preference = this.routing_preference;
            builder.enforcement_mode = this.enforcement_mode;
            builder.routing_fallback = this.routing_fallback;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof CellPinningSpec)) {
                return false;
            }
            CellPinningSpec cellPinningSpec = (CellPinningSpec) other;
            return Intrinsics.areEqual(unknownFields(), cellPinningSpec.unknownFields()) && this.type == cellPinningSpec.type && Intrinsics.areEqual(this.entity_id_field, cellPinningSpec.entity_id_field) && this.routing_preference == cellPinningSpec.routing_preference && this.enforcement_mode == cellPinningSpec.enforcement_mode && this.routing_fallback == cellPinningSpec.routing_fallback;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            CellType cellType = this.type;
            int iHashCode2 = (iHashCode + (cellType != null ? cellType.hashCode() : 0)) * 37;
            String str = this.entity_id_field;
            int iHashCode3 = (iHashCode2 + (str != null ? str.hashCode() : 0)) * 37;
            RoutingPreference routingPreference = this.routing_preference;
            int iHashCode4 = (iHashCode3 + (routingPreference != null ? routingPreference.hashCode() : 0)) * 37;
            EnforcementMode enforcementMode = this.enforcement_mode;
            int iHashCode5 = (iHashCode4 + (enforcementMode != null ? enforcementMode.hashCode() : 0)) * 37;
            RoutingFallback routingFallback = this.routing_fallback;
            int iHashCode6 = iHashCode5 + (routingFallback != null ? routingFallback.hashCode() : 0);
            this.hashCode = iHashCode6;
            return iHashCode6;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.type != null) {
                arrayList.add("type=" + this.type);
            }
            if (this.entity_id_field != null) {
                arrayList.add("entity_id_field=" + Internal.sanitize(this.entity_id_field));
            }
            if (this.routing_preference != null) {
                arrayList.add("routing_preference=" + this.routing_preference);
            }
            if (this.enforcement_mode != null) {
                arrayList.add("enforcement_mode=" + this.enforcement_mode);
            }
            if (this.routing_fallback != null) {
                arrayList.add("routing_fallback=" + this.routing_fallback);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "CellPinningSpec{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ CellPinningSpec copy$default(CellPinningSpec cellPinningSpec, CellType cellType, String str, RoutingPreference routingPreference, EnforcementMode enforcementMode, RoutingFallback routingFallback, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                cellType = cellPinningSpec.type;
            }
            if ((i & 2) != 0) {
                str = cellPinningSpec.entity_id_field;
            }
            if ((i & 4) != 0) {
                routingPreference = cellPinningSpec.routing_preference;
            }
            if ((i & 8) != 0) {
                enforcementMode = cellPinningSpec.enforcement_mode;
            }
            if ((i & 16) != 0) {
                routingFallback = cellPinningSpec.routing_fallback;
            }
            if ((i & 32) != 0) {
                byteString = cellPinningSpec.unknownFields();
            }
            RoutingFallback routingFallback2 = routingFallback;
            ByteString byteString2 = byteString;
            return cellPinningSpec.copy(cellType, str, routingPreference, enforcementMode, routingFallback2, byteString2);
        }

        public final CellPinningSpec copy(CellType type, String entity_id_field, RoutingPreference routing_preference, EnforcementMode enforcement_mode, RoutingFallback routing_fallback, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new CellPinningSpec(type, entity_id_field, routing_preference, enforcement_mode, routing_fallback, unknownFields);
        }

        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000e\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\b\u001a\u00020\u00002\b\u0010\b\u001a\u0004\u0018\u00010\tJ\u0010\u0010\n\u001a\u00020\u00002\b\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0010\u0010\f\u001a\u00020\u00002\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/ext/CellPinning$CellPinningSpec;", "()V", "enforcement_mode", "Lcom/stripe/ext/CellPinning$EnforcementMode;", "entity_id_field", "", "routing_fallback", "Lcom/stripe/ext/CellPinning$RoutingFallback;", "routing_preference", "Lcom/stripe/ext/CellPinning$RoutingPreference;", "type", "Lcom/stripe/ext/CellPinning$CellType;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<CellPinningSpec, Builder> {
            public EnforcementMode enforcement_mode;
            public String entity_id_field;
            public RoutingFallback routing_fallback;
            public RoutingPreference routing_preference;
            public CellType type;

            public final Builder type(CellType type) {
                this.type = type;
                return this;
            }

            public final Builder entity_id_field(String entity_id_field) {
                this.entity_id_field = entity_id_field;
                return this;
            }

            public final Builder routing_preference(RoutingPreference routing_preference) {
                this.routing_preference = routing_preference;
                return this;
            }

            public final Builder enforcement_mode(EnforcementMode enforcement_mode) {
                this.enforcement_mode = enforcement_mode;
                return this;
            }

            public final Builder routing_fallback(RoutingFallback routing_fallback) {
                this.routing_fallback = routing_fallback;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public CellPinningSpec build() {
                return new CellPinningSpec(this.type, this.entity_id_field, this.routing_preference, this.enforcement_mode, this.routing_fallback, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/CellPinning$CellPinningSpec$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/CellPinning$CellPinningSpec;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/ext/CellPinning$CellPinningSpec$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ CellPinningSpec build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CellPinningSpec.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new ProtoAdapter<CellPinningSpec>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.ext.CellPinning$CellPinningSpec$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CellPinning.CellPinningSpec value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + CellPinning.CellType.ADAPTER.encodedSizeWithTag(1, value.type) + ProtoAdapter.STRING.encodedSizeWithTag(2, value.entity_id_field) + CellPinning.RoutingPreference.ADAPTER.encodedSizeWithTag(3, value.routing_preference) + CellPinning.EnforcementMode.ADAPTER.encodedSizeWithTag(4, value.enforcement_mode) + CellPinning.RoutingFallback.ADAPTER.encodedSizeWithTag(5, value.routing_fallback);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CellPinning.CellPinningSpec value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    CellPinning.CellType.ADAPTER.encodeWithTag(writer, 1, value.type);
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.entity_id_field);
                    CellPinning.RoutingPreference.ADAPTER.encodeWithTag(writer, 3, value.routing_preference);
                    CellPinning.EnforcementMode.ADAPTER.encodeWithTag(writer, 4, value.enforcement_mode);
                    CellPinning.RoutingFallback.ADAPTER.encodeWithTag(writer, 5, value.routing_fallback);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CellPinning.CellPinningSpec value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    CellPinning.RoutingFallback.ADAPTER.encodeWithTag(writer, 5, value.routing_fallback);
                    CellPinning.EnforcementMode.ADAPTER.encodeWithTag(writer, 4, value.enforcement_mode);
                    CellPinning.RoutingPreference.ADAPTER.encodeWithTag(writer, 3, value.routing_preference);
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.entity_id_field);
                    CellPinning.CellType.ADAPTER.encodeWithTag(writer, 1, value.type);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CellPinning.CellPinningSpec redact(CellPinning.CellPinningSpec value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CellPinning.CellPinningSpec.copy$default(value, null, null, null, null, null, ByteString.EMPTY, 31, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CellPinning.CellPinningSpec decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    CellPinning.CellType cellTypeDecode = null;
                    String strDecode = null;
                    CellPinning.RoutingPreference routingPreferenceDecode = null;
                    CellPinning.EnforcementMode enforcementModeDecode = null;
                    CellPinning.RoutingFallback routingFallbackDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CellPinning.CellPinningSpec(cellTypeDecode, strDecode, routingPreferenceDecode, enforcementModeDecode, routingFallbackDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                cellTypeDecode = CellPinning.CellType.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 2) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            try {
                                routingPreferenceDecode = CellPinning.RoutingPreference.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                            }
                        } else if (iNextTag == 4) {
                            try {
                                enforcementModeDecode = CellPinning.EnforcementMode.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e3) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e3.value));
                            }
                        } else if (iNextTag == 5) {
                            try {
                                routingFallbackDecode = CellPinning.RoutingFallback.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e4) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e4.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }
    }

    /* JADX INFO: compiled from: CellPinning.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/ext/CellPinning$CellPinningBypass;", "Lcom/squareup/wire/Message;", "Lcom/stripe/ext/CellPinning$CellPinningBypass$Builder;", "reason", "Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "Reason", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class CellPinningBypass extends Message<CellPinningBypass, Builder> {
        public static final ProtoAdapter<CellPinningBypass> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.ext.CellPinning$CellPinningBypass$Reason#ADAPTER", schemaIndex = 0, tag = 1)
        public final Reason reason;

        /* JADX WARN: Multi-variable type inference failed */
        public CellPinningBypass() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ CellPinningBypass(Reason reason, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : reason, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public CellPinningBypass(Reason reason, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.reason = reason;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.reason = this.reason;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof CellPinningBypass)) {
                return false;
            }
            CellPinningBypass cellPinningBypass = (CellPinningBypass) other;
            return Intrinsics.areEqual(unknownFields(), cellPinningBypass.unknownFields()) && this.reason == cellPinningBypass.reason;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            Reason reason = this.reason;
            int iHashCode2 = iHashCode + (reason != null ? reason.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.reason != null) {
                arrayList.add("reason=" + this.reason);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "CellPinningBypass{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ CellPinningBypass copy$default(CellPinningBypass cellPinningBypass, Reason reason, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                reason = cellPinningBypass.reason;
            }
            if ((i & 2) != 0) {
                byteString = cellPinningBypass.unknownFields();
            }
            return cellPinningBypass.copy(reason, byteString);
        }

        public final CellPinningBypass copy(Reason reason, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new CellPinningBypass(reason, unknownFields);
        }

        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/ext/CellPinning$CellPinningBypass$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/ext/CellPinning$CellPinningBypass;", "()V", "reason", "Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<CellPinningBypass, Builder> {
            public Reason reason;

            public final Builder reason(Reason reason) {
                this.reason = reason;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public CellPinningBypass build() {
                return new CellPinningBypass(this.reason, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/CellPinning$CellPinningBypass$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/CellPinning$CellPinningBypass;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/ext/CellPinning$CellPinningBypass$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ CellPinningBypass build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CellPinningBypass.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new ProtoAdapter<CellPinningBypass>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.ext.CellPinning$CellPinningBypass$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CellPinning.CellPinningBypass value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + CellPinning.CellPinningBypass.Reason.ADAPTER.encodedSizeWithTag(1, value.reason);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CellPinning.CellPinningBypass value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    CellPinning.CellPinningBypass.Reason.ADAPTER.encodeWithTag(writer, 1, value.reason);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CellPinning.CellPinningBypass value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    CellPinning.CellPinningBypass.Reason.ADAPTER.encodeWithTag(writer, 1, value.reason);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CellPinning.CellPinningBypass redact(CellPinning.CellPinningBypass value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CellPinning.CellPinningBypass.copy$default(value, null, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CellPinning.CellPinningBypass decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    CellPinning.CellPinningBypass.Reason reasonDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CellPinning.CellPinningBypass(reasonDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                reasonDecode = CellPinning.CellPinningBypass.Reason.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "REASON_INVALID", "INFRA_ENDPOINT", "ADMIN_ENDPOINT", "INTRA_CLUSTER_SECONDARY_READ_ONLY_ENDPOINT", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Reason implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Reason[] $VALUES;
            public static final ProtoAdapter<Reason> ADAPTER;
            public static final Reason ADMIN_ENDPOINT;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final Reason INFRA_ENDPOINT;
            public static final Reason INTRA_CLUSTER_SECONDARY_READ_ONLY_ENDPOINT;
            public static final Reason REASON_INVALID;
            private final int value;

            private static final /* synthetic */ Reason[] $values() {
                return new Reason[]{REASON_INVALID, INFRA_ENDPOINT, ADMIN_ENDPOINT, INTRA_CLUSTER_SECONDARY_READ_ONLY_ENDPOINT};
            }

            @JvmStatic
            public static final Reason fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<Reason> getEntries() {
                return $ENTRIES;
            }

            public static Reason valueOf(String str) {
                return (Reason) Enum.valueOf(Reason.class, str);
            }

            public static Reason[] values() {
                return (Reason[]) $VALUES.clone();
            }

            private Reason(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final Reason reason = new Reason("REASON_INVALID", 0, 0);
                REASON_INVALID = reason;
                INFRA_ENDPOINT = new Reason("INFRA_ENDPOINT", 1, 1);
                ADMIN_ENDPOINT = new Reason("ADMIN_ENDPOINT", 2, 2);
                INTRA_CLUSTER_SECONDARY_READ_ONLY_ENDPOINT = new Reason("INTRA_CLUSTER_SECONDARY_READ_ONLY_ENDPOINT", 3, 3);
                Reason[] reasonArr$values = $values();
                $VALUES = reasonArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(reasonArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Reason.class);
                final Syntax syntax = Syntax.PROTO_2;
                ADAPTER = new EnumAdapter<Reason>(orCreateKotlinClass, syntax, reason) { // from class: com.stripe.ext.CellPinning$CellPinningBypass$Reason$Companion$ADAPTER$1
                    {
                        CellPinning.CellPinningBypass.Reason reason2 = reason;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public CellPinning.CellPinningBypass.Reason fromValue(int value) {
                        return CellPinning.CellPinningBypass.Reason.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: CellPinning.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/CellPinning$CellPinningBypass$Reason;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final Reason fromValue(int value) {
                    if (value == 0) {
                        return Reason.REASON_INVALID;
                    }
                    if (value == 1) {
                        return Reason.INFRA_ENDPOINT;
                    }
                    if (value == 2) {
                        return Reason.ADMIN_ENDPOINT;
                    }
                    if (value != 3) {
                        return null;
                    }
                    return Reason.INTRA_CLUSTER_SECONDARY_READ_ONLY_ENDPOINT;
                }
            }
        }
    }

    /* JADX INFO: compiled from: CellPinning.kt */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u001b\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001c\u0010\b\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;", "Lcom/squareup/wire/Message;", "Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck$Builder;", "enforcement_mode", "Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck$EnforcementMode;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck$EnforcementMode;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "EnforcementMode", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RegionalResiliencyCheck extends Message<RegionalResiliencyCheck, Builder> {
        public static final ProtoAdapter<RegionalResiliencyCheck> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.ext.CellPinning$RegionalResiliencyCheck$EnforcementMode#ADAPTER", schemaIndex = 0, tag = 1)
        public final EnforcementMode enforcement_mode;

        /* JADX WARN: Multi-variable type inference failed */
        public RegionalResiliencyCheck() {
            this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
        }

        public /* synthetic */ RegionalResiliencyCheck(EnforcementMode enforcementMode, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : enforcementMode, (i & 2) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RegionalResiliencyCheck(EnforcementMode enforcementMode, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.enforcement_mode = enforcementMode;
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.enforcement_mode = this.enforcement_mode;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof RegionalResiliencyCheck)) {
                return false;
            }
            RegionalResiliencyCheck regionalResiliencyCheck = (RegionalResiliencyCheck) other;
            return Intrinsics.areEqual(unknownFields(), regionalResiliencyCheck.unknownFields()) && this.enforcement_mode == regionalResiliencyCheck.enforcement_mode;
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = unknownFields().hashCode() * 37;
            EnforcementMode enforcementMode = this.enforcement_mode;
            int iHashCode2 = iHashCode + (enforcementMode != null ? enforcementMode.hashCode() : 0);
            this.hashCode = iHashCode2;
            return iHashCode2;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            if (this.enforcement_mode != null) {
                arrayList.add("enforcement_mode=" + this.enforcement_mode);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "RegionalResiliencyCheck{", "}", 0, null, null, 56, null);
        }

        public static /* synthetic */ RegionalResiliencyCheck copy$default(RegionalResiliencyCheck regionalResiliencyCheck, EnforcementMode enforcementMode, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                enforcementMode = regionalResiliencyCheck.enforcement_mode;
            }
            if ((i & 2) != 0) {
                byteString = regionalResiliencyCheck.unknownFields();
            }
            return regionalResiliencyCheck.copy(enforcementMode, byteString);
        }

        public final RegionalResiliencyCheck copy(EnforcementMode enforcement_mode, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new RegionalResiliencyCheck(enforcement_mode, unknownFields);
        }

        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;", "()V", "enforcement_mode", "Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck$EnforcementMode;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<RegionalResiliencyCheck, Builder> {
            public EnforcementMode enforcement_mode;

            public final Builder enforcement_mode(EnforcementMode enforcement_mode) {
                this.enforcement_mode = enforcement_mode;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public RegionalResiliencyCheck build() {
                return new RegionalResiliencyCheck(this.enforcement_mode, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ RegionalResiliencyCheck build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RegionalResiliencyCheck.class);
            final Syntax syntax = Syntax.PROTO_2;
            ADAPTER = new ProtoAdapter<RegionalResiliencyCheck>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.ext.CellPinning$RegionalResiliencyCheck$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(CellPinning.RegionalResiliencyCheck value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return value.unknownFields().size() + CellPinning.RegionalResiliencyCheck.EnforcementMode.ADAPTER.encodedSizeWithTag(1, value.enforcement_mode);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, CellPinning.RegionalResiliencyCheck value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    CellPinning.RegionalResiliencyCheck.EnforcementMode.ADAPTER.encodeWithTag(writer, 1, value.enforcement_mode);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, CellPinning.RegionalResiliencyCheck value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    CellPinning.RegionalResiliencyCheck.EnforcementMode.ADAPTER.encodeWithTag(writer, 1, value.enforcement_mode);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public CellPinning.RegionalResiliencyCheck redact(CellPinning.RegionalResiliencyCheck value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return CellPinning.RegionalResiliencyCheck.copy$default(value, null, ByteString.EMPTY, 1, null);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public CellPinning.RegionalResiliencyCheck decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    long jBeginMessage = reader.beginMessage();
                    CellPinning.RegionalResiliencyCheck.EnforcementMode enforcementModeDecode = null;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new CellPinning.RegionalResiliencyCheck(enforcementModeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                enforcementModeDecode = CellPinning.RegionalResiliencyCheck.EnforcementMode.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            };
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: CellPinning.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck$EnforcementMode;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNSPECIFIED", "ENFORCE", "DO_NOT_ENFORCE", "WIP_DO_NOT_ENFORCE", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class EnforcementMode implements WireEnum {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ EnforcementMode[] $VALUES;
            public static final ProtoAdapter<EnforcementMode> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE;
            public static final EnforcementMode DO_NOT_ENFORCE;
            public static final EnforcementMode ENFORCE;
            public static final EnforcementMode UNSPECIFIED;
            public static final EnforcementMode WIP_DO_NOT_ENFORCE;
            private final int value;

            private static final /* synthetic */ EnforcementMode[] $values() {
                return new EnforcementMode[]{UNSPECIFIED, ENFORCE, DO_NOT_ENFORCE, WIP_DO_NOT_ENFORCE};
            }

            @JvmStatic
            public static final EnforcementMode fromValue(int i) {
                return INSTANCE.fromValue(i);
            }

            public static EnumEntries<EnforcementMode> getEntries() {
                return $ENTRIES;
            }

            public static EnforcementMode valueOf(String str) {
                return (EnforcementMode) Enum.valueOf(EnforcementMode.class, str);
            }

            public static EnforcementMode[] values() {
                return (EnforcementMode[]) $VALUES.clone();
            }

            private EnforcementMode(String str, int i, int i2) {
                this.value = i2;
            }

            @Override // com.squareup.wire.WireEnum
            public int getValue() {
                return this.value;
            }

            static {
                final EnforcementMode enforcementMode = new EnforcementMode("UNSPECIFIED", 0, 0);
                UNSPECIFIED = enforcementMode;
                ENFORCE = new EnforcementMode("ENFORCE", 1, 1);
                DO_NOT_ENFORCE = new EnforcementMode("DO_NOT_ENFORCE", 2, 2);
                WIP_DO_NOT_ENFORCE = new EnforcementMode("WIP_DO_NOT_ENFORCE", 3, 3);
                EnforcementMode[] enforcementModeArr$values = $values();
                $VALUES = enforcementModeArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(enforcementModeArr$values);
                INSTANCE = new Companion(null);
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EnforcementMode.class);
                final Syntax syntax = Syntax.PROTO_2;
                ADAPTER = new EnumAdapter<EnforcementMode>(orCreateKotlinClass, syntax, enforcementMode) { // from class: com.stripe.ext.CellPinning$RegionalResiliencyCheck$EnforcementMode$Companion$ADAPTER$1
                    {
                        CellPinning.RegionalResiliencyCheck.EnforcementMode enforcementMode2 = enforcementMode;
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // com.squareup.wire.EnumAdapter
                    public CellPinning.RegionalResiliencyCheck.EnforcementMode fromValue(int value) {
                        return CellPinning.RegionalResiliencyCheck.EnforcementMode.INSTANCE.fromValue(value);
                    }
                };
            }

            /* JADX INFO: compiled from: CellPinning.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck$EnforcementMode$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/CellPinning$RegionalResiliencyCheck$EnforcementMode;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                @JvmStatic
                public final EnforcementMode fromValue(int value) {
                    if (value == 0) {
                        return EnforcementMode.UNSPECIFIED;
                    }
                    if (value == 1) {
                        return EnforcementMode.ENFORCE;
                    }
                    if (value == 2) {
                        return EnforcementMode.DO_NOT_ENFORCE;
                    }
                    if (value != 3) {
                        return null;
                    }
                    return EnforcementMode.WIP_DO_NOT_ENFORCE;
                }
            }
        }
    }
}
