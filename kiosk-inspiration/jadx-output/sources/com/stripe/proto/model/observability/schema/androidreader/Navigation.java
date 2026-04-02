package com.stripe.proto.model.observability.schema.androidreader;

import com.google.firebase.analytics.FirebaseAnalytics;
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
import com.stripe.proto.model.observability.schema.androidreader.Navigation;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Deprecated;
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
import org.apache.http.HttpHeaders;

/* JADX INFO: compiled from: Navigation.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00132\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0012\u0013\u0014B\u0019\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u0006J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fH\u0096\u0002J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0002H\u0016J\b\u0010\u0010\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/observability/schema/androidreader/Navigation;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Builder;", FirebaseAnalytics.Param.DESTINATION, "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", HttpHeaders.DESTINATION, "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Navigation extends Message<Navigation, Builder> {
    public static final ProtoAdapter<Navigation> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.observability.schema.androidreader.Navigation$Destination#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Destination destination;

    /* JADX WARN: Multi-variable type inference failed */
    public Navigation() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ Navigation(Destination destination, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Destination.UNKNOWN_NAVIGATION_DESTINATION : destination, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Navigation(Destination destination, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.destination = destination;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.destination = this.destination;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof Navigation)) {
            return false;
        }
        Navigation navigation = (Navigation) other;
        return Intrinsics.areEqual(unknownFields(), navigation.unknownFields()) && this.destination == navigation.destination;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.destination.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("destination=" + this.destination);
        return CollectionsKt.joinToString$default(arrayList, ", ", "Navigation{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ Navigation copy$default(Navigation navigation, Destination destination, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            destination = navigation.destination;
        }
        if ((i & 2) != 0) {
            byteString = navigation.unknownFields();
        }
        return navigation.copy(destination, byteString);
    }

    public final Navigation copy(Destination destination, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new Navigation(destination, unknownFields);
    }

    /* JADX INFO: compiled from: Navigation.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0006\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation;", "()V", FirebaseAnalytics.Param.DESTINATION, "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;", "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<Navigation, Builder> {
        public Destination destination = Destination.UNKNOWN_NAVIGATION_DESTINATION;

        public final Builder destination(Destination destination) {
            Intrinsics.checkNotNullParameter(destination, "destination");
            this.destination = destination;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public Navigation build() {
            return new Navigation(this.destination, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: Navigation.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ Navigation build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Navigation.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<Navigation>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.observability.schema.androidreader.Navigation$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(Navigation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                return value.destination != Navigation.Destination.UNKNOWN_NAVIGATION_DESTINATION ? size + Navigation.Destination.ADAPTER.encodedSizeWithTag(1, value.destination) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, Navigation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.destination != Navigation.Destination.UNKNOWN_NAVIGATION_DESTINATION) {
                    Navigation.Destination.ADAPTER.encodeWithTag(writer, 1, value.destination);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, Navigation value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.destination != Navigation.Destination.UNKNOWN_NAVIGATION_DESTINATION) {
                    Navigation.Destination.ADAPTER.encodeWithTag(writer, 1, value.destination);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public Navigation decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                Navigation.Destination destinationDecode = Navigation.Destination.UNKNOWN_NAVIGATION_DESTINATION;
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new Navigation(destinationDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            destinationDecode = Navigation.Destination.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public Navigation redact(Navigation value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return Navigation.copy$default(value, null, ByteString.EMPTY, 1, null);
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: Navigation.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\u0081\u0002\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0017B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN_NAVIGATION_DESTINATION", "REDIRECT", "HOME", "ADMIN", "REGISTRATION", "TRANSACTION", "WIFI", "LOCALE", "DEBUG", "DIAGNOSTICS", "OOBE", "UPDATER", "BOOT", "POP_BACK_STACK", "FORM", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Destination implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Destination[] $VALUES;
        public static final ProtoAdapter<Destination> ADAPTER;
        public static final Destination ADMIN;
        public static final Destination BOOT;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Destination DEBUG;
        public static final Destination DIAGNOSTICS;
        public static final Destination FORM;

        @Deprecated(message = "HOME is deprecated")
        public static final Destination HOME;
        public static final Destination LOCALE;
        public static final Destination OOBE;
        public static final Destination POP_BACK_STACK;
        public static final Destination REDIRECT;
        public static final Destination REGISTRATION;
        public static final Destination TRANSACTION;
        public static final Destination UNKNOWN_NAVIGATION_DESTINATION;
        public static final Destination UPDATER;
        public static final Destination WIFI;
        private final int value;

        private static final /* synthetic */ Destination[] $values() {
            return new Destination[]{UNKNOWN_NAVIGATION_DESTINATION, REDIRECT, HOME, ADMIN, REGISTRATION, TRANSACTION, WIFI, LOCALE, DEBUG, DIAGNOSTICS, OOBE, UPDATER, BOOT, POP_BACK_STACK, FORM};
        }

        @JvmStatic
        public static final Destination fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Destination> getEntries() {
            return $ENTRIES;
        }

        public static Destination valueOf(String str) {
            return (Destination) Enum.valueOf(Destination.class, str);
        }

        public static Destination[] values() {
            return (Destination[]) $VALUES.clone();
        }

        private Destination(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Destination destination = new Destination("UNKNOWN_NAVIGATION_DESTINATION", 0, 0);
            UNKNOWN_NAVIGATION_DESTINATION = destination;
            REDIRECT = new Destination("REDIRECT", 1, 1);
            HOME = new Destination("HOME", 2, 2);
            ADMIN = new Destination("ADMIN", 3, 3);
            REGISTRATION = new Destination("REGISTRATION", 4, 4);
            TRANSACTION = new Destination("TRANSACTION", 5, 5);
            WIFI = new Destination("WIFI", 6, 6);
            LOCALE = new Destination("LOCALE", 7, 7);
            DEBUG = new Destination("DEBUG", 8, 8);
            DIAGNOSTICS = new Destination("DIAGNOSTICS", 9, 9);
            OOBE = new Destination("OOBE", 10, 10);
            UPDATER = new Destination("UPDATER", 11, 11);
            BOOT = new Destination("BOOT", 12, 12);
            POP_BACK_STACK = new Destination("POP_BACK_STACK", 13, 13);
            FORM = new Destination("FORM", 14, 14);
            Destination[] destinationArr$values = $values();
            $VALUES = destinationArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(destinationArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Destination.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Destination>(orCreateKotlinClass, syntax, destination) { // from class: com.stripe.proto.model.observability.schema.androidreader.Navigation$Destination$Companion$ADAPTER$1
                {
                    Navigation.Destination destination2 = destination;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public Navigation.Destination fromValue(int value) {
                    return Navigation.Destination.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: Navigation.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/observability/schema/androidreader/Navigation$Destination;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Destination fromValue(int value) {
                switch (value) {
                    case 0:
                        return Destination.UNKNOWN_NAVIGATION_DESTINATION;
                    case 1:
                        return Destination.REDIRECT;
                    case 2:
                        return Destination.HOME;
                    case 3:
                        return Destination.ADMIN;
                    case 4:
                        return Destination.REGISTRATION;
                    case 5:
                        return Destination.TRANSACTION;
                    case 6:
                        return Destination.WIFI;
                    case 7:
                        return Destination.LOCALE;
                    case 8:
                        return Destination.DEBUG;
                    case 9:
                        return Destination.DIAGNOSTICS;
                    case 10:
                        return Destination.OOBE;
                    case 11:
                        return Destination.UPDATER;
                    case 12:
                        return Destination.BOOT;
                    case 13:
                        return Destination.POP_BACK_STACK;
                    case 14:
                        return Destination.FORM;
                    default:
                        return null;
                }
            }
        }
    }
}
