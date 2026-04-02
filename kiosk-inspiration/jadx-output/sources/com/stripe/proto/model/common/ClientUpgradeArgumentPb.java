package com.stripe.proto.model.common;

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
import com.stripe.proto.model.common.ClientUpgradeArgumentPb;
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

/* JADX INFO: compiled from: ClientUpgradeArgumentPb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0014\u0015\u0016B%\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ&\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$Builder;", "upgrade_predicate", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$UpgradeTimeArgument;", "time_to_upgrade", "Lcom/stripe/proto/model/common/InstantPb;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$UpgradeTimeArgument;Lcom/stripe/proto/model/common/InstantPb;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "UpgradeTimeArgument", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ClientUpgradeArgumentPb extends Message<ClientUpgradeArgumentPb, Builder> {
    public static final ProtoAdapter<ClientUpgradeArgumentPb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.common.InstantPb#ADAPTER", jsonName = "timeToUpgrade", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final InstantPb time_to_upgrade;

    @WireField(adapter = "com.stripe.proto.model.common.ClientUpgradeArgumentPb$UpgradeTimeArgument#ADAPTER", jsonName = "upgradePredicate", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final UpgradeTimeArgument upgrade_predicate;

    public ClientUpgradeArgumentPb() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ ClientUpgradeArgumentPb(UpgradeTimeArgument upgradeTimeArgument, InstantPb instantPb, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? UpgradeTimeArgument.UNKNOWN : upgradeTimeArgument, (i & 2) != 0 ? null : instantPb, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ClientUpgradeArgumentPb(UpgradeTimeArgument upgrade_predicate, InstantPb instantPb, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(upgrade_predicate, "upgrade_predicate");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.upgrade_predicate = upgrade_predicate;
        this.time_to_upgrade = instantPb;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.upgrade_predicate = this.upgrade_predicate;
        builder.time_to_upgrade = this.time_to_upgrade;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof ClientUpgradeArgumentPb)) {
            return false;
        }
        ClientUpgradeArgumentPb clientUpgradeArgumentPb = (ClientUpgradeArgumentPb) other;
        return Intrinsics.areEqual(unknownFields(), clientUpgradeArgumentPb.unknownFields()) && this.upgrade_predicate == clientUpgradeArgumentPb.upgrade_predicate && Intrinsics.areEqual(this.time_to_upgrade, clientUpgradeArgumentPb.time_to_upgrade);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = ((unknownFields().hashCode() * 37) + this.upgrade_predicate.hashCode()) * 37;
        InstantPb instantPb = this.time_to_upgrade;
        int iHashCode2 = iHashCode + (instantPb != null ? instantPb.hashCode() : 0);
        this.hashCode = iHashCode2;
        return iHashCode2;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("upgrade_predicate=" + this.upgrade_predicate);
        if (this.time_to_upgrade != null) {
            arrayList2.add("time_to_upgrade=" + this.time_to_upgrade);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "ClientUpgradeArgumentPb{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ ClientUpgradeArgumentPb copy$default(ClientUpgradeArgumentPb clientUpgradeArgumentPb, UpgradeTimeArgument upgradeTimeArgument, InstantPb instantPb, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            upgradeTimeArgument = clientUpgradeArgumentPb.upgrade_predicate;
        }
        if ((i & 2) != 0) {
            instantPb = clientUpgradeArgumentPb.time_to_upgrade;
        }
        if ((i & 4) != 0) {
            byteString = clientUpgradeArgumentPb.unknownFields();
        }
        return clientUpgradeArgumentPb.copy(upgradeTimeArgument, instantPb, byteString);
    }

    public final ClientUpgradeArgumentPb copy(UpgradeTimeArgument upgrade_predicate, InstantPb time_to_upgrade, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(upgrade_predicate, "upgrade_predicate");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new ClientUpgradeArgumentPb(upgrade_predicate, time_to_upgrade, unknownFields);
    }

    /* JADX INFO: compiled from: ClientUpgradeArgumentPb.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;", "()V", "time_to_upgrade", "Lcom/stripe/proto/model/common/InstantPb;", "upgrade_predicate", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$UpgradeTimeArgument;", "build", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<ClientUpgradeArgumentPb, Builder> {
        public InstantPb time_to_upgrade;
        public UpgradeTimeArgument upgrade_predicate = UpgradeTimeArgument.UNKNOWN;

        public final Builder upgrade_predicate(UpgradeTimeArgument upgrade_predicate) {
            Intrinsics.checkNotNullParameter(upgrade_predicate, "upgrade_predicate");
            this.upgrade_predicate = upgrade_predicate;
            return this;
        }

        public final Builder time_to_upgrade(InstantPb time_to_upgrade) {
            this.time_to_upgrade = time_to_upgrade;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public ClientUpgradeArgumentPb build() {
            return new ClientUpgradeArgumentPb(this.upgrade_predicate, this.time_to_upgrade, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: ClientUpgradeArgumentPb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ ClientUpgradeArgumentPb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ClientUpgradeArgumentPb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<ClientUpgradeArgumentPb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.common.ClientUpgradeArgumentPb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(ClientUpgradeArgumentPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.upgrade_predicate != ClientUpgradeArgumentPb.UpgradeTimeArgument.UNKNOWN) {
                    size += ClientUpgradeArgumentPb.UpgradeTimeArgument.ADAPTER.encodedSizeWithTag(1, value.upgrade_predicate);
                }
                return value.time_to_upgrade != null ? size + InstantPb.ADAPTER.encodedSizeWithTag(2, value.time_to_upgrade) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, ClientUpgradeArgumentPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.upgrade_predicate != ClientUpgradeArgumentPb.UpgradeTimeArgument.UNKNOWN) {
                    ClientUpgradeArgumentPb.UpgradeTimeArgument.ADAPTER.encodeWithTag(writer, 1, value.upgrade_predicate);
                }
                if (value.time_to_upgrade != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 2, value.time_to_upgrade);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, ClientUpgradeArgumentPb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.time_to_upgrade != null) {
                    InstantPb.ADAPTER.encodeWithTag(writer, 2, value.time_to_upgrade);
                }
                if (value.upgrade_predicate != ClientUpgradeArgumentPb.UpgradeTimeArgument.UNKNOWN) {
                    ClientUpgradeArgumentPb.UpgradeTimeArgument.ADAPTER.encodeWithTag(writer, 1, value.upgrade_predicate);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public ClientUpgradeArgumentPb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ClientUpgradeArgumentPb.UpgradeTimeArgument upgradeTimeArgumentDecode = ClientUpgradeArgumentPb.UpgradeTimeArgument.UNKNOWN;
                long jBeginMessage = reader.beginMessage();
                InstantPb instantPbDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new ClientUpgradeArgumentPb(upgradeTimeArgumentDecode, instantPbDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            upgradeTimeArgumentDecode = ClientUpgradeArgumentPb.UpgradeTimeArgument.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        instantPbDecode = InstantPb.ADAPTER.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public ClientUpgradeArgumentPb redact(ClientUpgradeArgumentPb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                InstantPb instantPb = value.time_to_upgrade;
                return ClientUpgradeArgumentPb.copy$default(value, null, instantPb != null ? InstantPb.ADAPTER.redact(instantPb) : null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ClientUpgradeArgumentPb.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u0000 \u000f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u0010"}, d2 = {"Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$UpgradeTimeArgument;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN", "FORCE_IMMEDIATE", "ON_SIGN_OFF", "MIDNIGHT", "CUSTOM", "DO_NOT_UPGRADE", "ON_BOOT", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UpgradeTimeArgument implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ UpgradeTimeArgument[] $VALUES;
        public static final ProtoAdapter<UpgradeTimeArgument> ADAPTER;
        public static final UpgradeTimeArgument CUSTOM;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final UpgradeTimeArgument DO_NOT_UPGRADE;
        public static final UpgradeTimeArgument FORCE_IMMEDIATE;
        public static final UpgradeTimeArgument MIDNIGHT;
        public static final UpgradeTimeArgument ON_BOOT;
        public static final UpgradeTimeArgument ON_SIGN_OFF;
        public static final UpgradeTimeArgument UNKNOWN;
        private final int value;

        private static final /* synthetic */ UpgradeTimeArgument[] $values() {
            return new UpgradeTimeArgument[]{UNKNOWN, FORCE_IMMEDIATE, ON_SIGN_OFF, MIDNIGHT, CUSTOM, DO_NOT_UPGRADE, ON_BOOT};
        }

        @JvmStatic
        public static final UpgradeTimeArgument fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<UpgradeTimeArgument> getEntries() {
            return $ENTRIES;
        }

        public static UpgradeTimeArgument valueOf(String str) {
            return (UpgradeTimeArgument) Enum.valueOf(UpgradeTimeArgument.class, str);
        }

        public static UpgradeTimeArgument[] values() {
            return (UpgradeTimeArgument[]) $VALUES.clone();
        }

        private UpgradeTimeArgument(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final UpgradeTimeArgument upgradeTimeArgument = new UpgradeTimeArgument("UNKNOWN", 0, 0);
            UNKNOWN = upgradeTimeArgument;
            FORCE_IMMEDIATE = new UpgradeTimeArgument("FORCE_IMMEDIATE", 1, 1);
            ON_SIGN_OFF = new UpgradeTimeArgument("ON_SIGN_OFF", 2, 2);
            MIDNIGHT = new UpgradeTimeArgument("MIDNIGHT", 3, 3);
            CUSTOM = new UpgradeTimeArgument("CUSTOM", 4, 4);
            DO_NOT_UPGRADE = new UpgradeTimeArgument("DO_NOT_UPGRADE", 5, 5);
            ON_BOOT = new UpgradeTimeArgument("ON_BOOT", 6, 6);
            UpgradeTimeArgument[] upgradeTimeArgumentArr$values = $values();
            $VALUES = upgradeTimeArgumentArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(upgradeTimeArgumentArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(UpgradeTimeArgument.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<UpgradeTimeArgument>(orCreateKotlinClass, syntax, upgradeTimeArgument) { // from class: com.stripe.proto.model.common.ClientUpgradeArgumentPb$UpgradeTimeArgument$Companion$ADAPTER$1
                {
                    ClientUpgradeArgumentPb.UpgradeTimeArgument upgradeTimeArgument2 = upgradeTimeArgument;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public ClientUpgradeArgumentPb.UpgradeTimeArgument fromValue(int value) {
                    return ClientUpgradeArgumentPb.UpgradeTimeArgument.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: ClientUpgradeArgumentPb.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$UpgradeTimeArgument$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ClientUpgradeArgumentPb$UpgradeTimeArgument;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final UpgradeTimeArgument fromValue(int value) {
                switch (value) {
                    case 0:
                        return UpgradeTimeArgument.UNKNOWN;
                    case 1:
                        return UpgradeTimeArgument.FORCE_IMMEDIATE;
                    case 2:
                        return UpgradeTimeArgument.ON_SIGN_OFF;
                    case 3:
                        return UpgradeTimeArgument.MIDNIGHT;
                    case 4:
                        return UpgradeTimeArgument.CUSTOM;
                    case 5:
                        return UpgradeTimeArgument.DO_NOT_UPGRADE;
                    case 6:
                        return UpgradeTimeArgument.ON_BOOT;
                    default:
                        return null;
                }
            }
        }
    }
}
