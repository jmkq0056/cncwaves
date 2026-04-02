package com.stripe.bbpos.sdk;

import androidx.core.app.NotificationCompat;
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
import com.stripe.bbpos.sdk.TerminalSettingValue;
import com.sun.jna.platform.win32.Ddeml;
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

/* JADX INFO: compiled from: TerminalSettingValue.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B'\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ(\u0010\n\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/bbpos/sdk/TerminalSettingValue;", "Lcom/squareup/wire/Message;", "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;", "hexadecimal", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", Ddeml.SZDDESYS_ITEM_STATUS, "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class TerminalSettingValue extends Message<TerminalSettingValue, Builder> {
    public static final ProtoAdapter<TerminalSettingValue> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", oneofName = "value", schemaIndex = 1, tag = 2)
    public final String hexadecimal;

    @WireField(adapter = "com.stripe.bbpos.sdk.TerminalSettingValue$Status#ADAPTER", oneofName = "value", schemaIndex = 0, tag = 1)
    public final Status status;

    public TerminalSettingValue() {
        this(null, null, null, 7, null);
    }

    public /* synthetic */ TerminalSettingValue(Status status, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : status, (i & 2) != 0 ? null : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TerminalSettingValue(Status status, String str, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.status = status;
        this.hexadecimal = str;
        if (Internal.countNonNull(status, str) > 1) {
            throw new IllegalArgumentException("At most one of status, hexadecimal may be non-null".toString());
        }
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.status = this.status;
        builder.hexadecimal = this.hexadecimal;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof TerminalSettingValue)) {
            return false;
        }
        TerminalSettingValue terminalSettingValue = (TerminalSettingValue) other;
        return Intrinsics.areEqual(unknownFields(), terminalSettingValue.unknownFields()) && this.status == terminalSettingValue.status && Intrinsics.areEqual(this.hexadecimal, terminalSettingValue.hexadecimal);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = unknownFields().hashCode() * 37;
        Status status = this.status;
        int iHashCode2 = (iHashCode + (status != null ? status.hashCode() : 0)) * 37;
        String str = this.hexadecimal;
        int iHashCode3 = iHashCode2 + (str != null ? str.hashCode() : 0);
        this.hashCode = iHashCode3;
        return iHashCode3;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (this.status != null) {
            arrayList.add("status=" + this.status);
        }
        if (this.hexadecimal != null) {
            arrayList.add("hexadecimal=" + Internal.sanitize(this.hexadecimal));
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "TerminalSettingValue{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ TerminalSettingValue copy$default(TerminalSettingValue terminalSettingValue, Status status, String str, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            status = terminalSettingValue.status;
        }
        if ((i & 2) != 0) {
            str = terminalSettingValue.hexadecimal;
        }
        if ((i & 4) != 0) {
            byteString = terminalSettingValue.unknownFields();
        }
        return terminalSettingValue.copy(status, str, byteString);
    }

    public final TerminalSettingValue copy(Status status, String hexadecimal, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new TerminalSettingValue(status, hexadecimal, unknownFields);
    }

    /* JADX INFO: compiled from: TerminalSettingValue.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007R\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/bbpos/sdk/TerminalSettingValue;", "()V", "hexadecimal", "", NotificationCompat.CATEGORY_STATUS, "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;", "build", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<TerminalSettingValue, Builder> {
        public String hexadecimal;
        public Status status;

        public final Builder status(Status status) {
            this.status = status;
            this.hexadecimal = null;
            return this;
        }

        public final Builder hexadecimal(String hexadecimal) {
            this.hexadecimal = hexadecimal;
            this.status = null;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public TerminalSettingValue build() {
            return new TerminalSettingValue(this.status, this.hexadecimal, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: TerminalSettingValue.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/bbpos/sdk/TerminalSettingValue$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/TerminalSettingValue;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Builder;", "", "Lkotlin/ExtensionFunctionType;", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ TerminalSettingValue build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(TerminalSettingValue.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<TerminalSettingValue>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.bbpos.sdk.TerminalSettingValue$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(TerminalSettingValue value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + TerminalSettingValue.Status.ADAPTER.encodedSizeWithTag(1, value.status) + ProtoAdapter.STRING.encodedSizeWithTag(2, value.hexadecimal);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, TerminalSettingValue value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                TerminalSettingValue.Status.ADAPTER.encodeWithTag(writer, 1, value.status);
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.hexadecimal);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, TerminalSettingValue value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                ProtoAdapter.STRING.encodeWithTag(writer, 2, value.hexadecimal);
                TerminalSettingValue.Status.ADAPTER.encodeWithTag(writer, 1, value.status);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public TerminalSettingValue redact(TerminalSettingValue value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return TerminalSettingValue.copy$default(value, null, null, ByteString.EMPTY, 3, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public TerminalSettingValue decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                TerminalSettingValue.Status statusDecode = null;
                String strDecode = null;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new TerminalSettingValue(statusDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        try {
                            statusDecode = TerminalSettingValue.Status.ADAPTER.decode(reader);
                        } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                            reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                        }
                    } else if (iNextTag == 2) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: TerminalSettingValue.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0014B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0015"}, d2 = {"Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "TERMINAL_SETTING_STATUS_UNKNOWN", "SUCCESS", "TLV_INCORRECT", "TAG_NOT_FOUND", "LENGTH_INCORRECT", "BOOTLOADER_NOT_SUPPORT", "TAG_NOT_ALLOWED_TO_ACCESS", "TAG_NOT_WRITTEN_CORRECTLY", "INVALID_VALUE", "USER_DEFINED_DATA_NOT_ENALBLED", "TAG_NOT_UPDATED", "UNKNOWN", "Companion", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Status implements WireEnum {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ Status[] $VALUES;
        public static final ProtoAdapter<Status> ADAPTER;
        public static final Status BOOTLOADER_NOT_SUPPORT;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE;
        public static final Status INVALID_VALUE;
        public static final Status LENGTH_INCORRECT;
        public static final Status SUCCESS;
        public static final Status TAG_NOT_ALLOWED_TO_ACCESS;
        public static final Status TAG_NOT_FOUND;
        public static final Status TAG_NOT_UPDATED;
        public static final Status TAG_NOT_WRITTEN_CORRECTLY;
        public static final Status TERMINAL_SETTING_STATUS_UNKNOWN;
        public static final Status TLV_INCORRECT;
        public static final Status UNKNOWN;
        public static final Status USER_DEFINED_DATA_NOT_ENALBLED;
        private final int value;

        private static final /* synthetic */ Status[] $values() {
            return new Status[]{TERMINAL_SETTING_STATUS_UNKNOWN, SUCCESS, TLV_INCORRECT, TAG_NOT_FOUND, LENGTH_INCORRECT, BOOTLOADER_NOT_SUPPORT, TAG_NOT_ALLOWED_TO_ACCESS, TAG_NOT_WRITTEN_CORRECTLY, INVALID_VALUE, USER_DEFINED_DATA_NOT_ENALBLED, TAG_NOT_UPDATED, UNKNOWN};
        }

        @JvmStatic
        public static final Status fromValue(int i) {
            return INSTANCE.fromValue(i);
        }

        public static EnumEntries<Status> getEntries() {
            return $ENTRIES;
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) $VALUES.clone();
        }

        private Status(String str, int i, int i2) {
            this.value = i2;
        }

        @Override // com.squareup.wire.WireEnum
        public int getValue() {
            return this.value;
        }

        static {
            final Status status = new Status("TERMINAL_SETTING_STATUS_UNKNOWN", 0, 0);
            TERMINAL_SETTING_STATUS_UNKNOWN = status;
            SUCCESS = new Status("SUCCESS", 1, 1);
            TLV_INCORRECT = new Status("TLV_INCORRECT", 2, 2);
            TAG_NOT_FOUND = new Status("TAG_NOT_FOUND", 3, 3);
            LENGTH_INCORRECT = new Status("LENGTH_INCORRECT", 4, 4);
            BOOTLOADER_NOT_SUPPORT = new Status("BOOTLOADER_NOT_SUPPORT", 5, 5);
            TAG_NOT_ALLOWED_TO_ACCESS = new Status("TAG_NOT_ALLOWED_TO_ACCESS", 6, 6);
            TAG_NOT_WRITTEN_CORRECTLY = new Status("TAG_NOT_WRITTEN_CORRECTLY", 7, 7);
            INVALID_VALUE = new Status("INVALID_VALUE", 8, 8);
            USER_DEFINED_DATA_NOT_ENALBLED = new Status("USER_DEFINED_DATA_NOT_ENALBLED", 9, 9);
            TAG_NOT_UPDATED = new Status("TAG_NOT_UPDATED", 10, 10);
            UNKNOWN = new Status("UNKNOWN", 11, 11);
            Status[] statusArr$values = $values();
            $VALUES = statusArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(statusArr$values);
            INSTANCE = new Companion(null);
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(Status.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new EnumAdapter<Status>(orCreateKotlinClass, syntax, status) { // from class: com.stripe.bbpos.sdk.TerminalSettingValue$Status$Companion$ADAPTER$1
                {
                    TerminalSettingValue.Status status2 = status;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.squareup.wire.EnumAdapter
                public TerminalSettingValue.Status fromValue(int value) {
                    return TerminalSettingValue.Status.INSTANCE.fromValue(value);
                }
            };
        }

        /* JADX INFO: compiled from: TerminalSettingValue.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/bbpos/sdk/TerminalSettingValue$Status;", "fromValue", "value", "", "sdk-protos_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            @JvmStatic
            public final Status fromValue(int value) {
                switch (value) {
                    case 0:
                        return Status.TERMINAL_SETTING_STATUS_UNKNOWN;
                    case 1:
                        return Status.SUCCESS;
                    case 2:
                        return Status.TLV_INCORRECT;
                    case 3:
                        return Status.TAG_NOT_FOUND;
                    case 4:
                        return Status.LENGTH_INCORRECT;
                    case 5:
                        return Status.BOOTLOADER_NOT_SUPPORT;
                    case 6:
                        return Status.TAG_NOT_ALLOWED_TO_ACCESS;
                    case 7:
                        return Status.TAG_NOT_WRITTEN_CORRECTLY;
                    case 8:
                        return Status.INVALID_VALUE;
                    case 9:
                        return Status.USER_DEFINED_DATA_NOT_ENALBLED;
                    case 10:
                        return Status.TAG_NOT_UPDATED;
                    case 11:
                        return Status.UNKNOWN;
                    default:
                        return null;
                }
            }
        }
    }
}
