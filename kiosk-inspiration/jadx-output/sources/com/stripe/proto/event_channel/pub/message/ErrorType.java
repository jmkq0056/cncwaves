package com.stripe.proto.event_channel.pub.message;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ErrorType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000e\b\u0086\u0081\u0002\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0011B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0012"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/ErrorType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ERROR_TYPE_INVALID", "NONE", "READER_IN_USE", "READER_UNAVAILABLE", "ACTION_CANCELED", "SERVER_DRIVEN_DISABLED", "INTEGRATION_MODE_MISMATCH", "COMMAND_NOT_SUPPORTED", "READER_HARDWARE_FAULT", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ErrorType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ErrorType[] $VALUES;
    public static final ErrorType ACTION_CANCELED;
    public static final ProtoAdapter<ErrorType> ADAPTER;
    public static final ErrorType COMMAND_NOT_SUPPORTED;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ErrorType ERROR_TYPE_INVALID;
    public static final ErrorType INTEGRATION_MODE_MISMATCH;
    public static final ErrorType NONE;
    public static final ErrorType READER_HARDWARE_FAULT;
    public static final ErrorType READER_IN_USE;
    public static final ErrorType READER_UNAVAILABLE;
    public static final ErrorType SERVER_DRIVEN_DISABLED;
    private final int value;

    private static final /* synthetic */ ErrorType[] $values() {
        return new ErrorType[]{ERROR_TYPE_INVALID, NONE, READER_IN_USE, READER_UNAVAILABLE, ACTION_CANCELED, SERVER_DRIVEN_DISABLED, INTEGRATION_MODE_MISMATCH, COMMAND_NOT_SUPPORTED, READER_HARDWARE_FAULT};
    }

    @JvmStatic
    public static final ErrorType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<ErrorType> getEntries() {
        return $ENTRIES;
    }

    public static ErrorType valueOf(String str) {
        return (ErrorType) Enum.valueOf(ErrorType.class, str);
    }

    public static ErrorType[] values() {
        return (ErrorType[]) $VALUES.clone();
    }

    private ErrorType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final ErrorType errorType = new ErrorType("ERROR_TYPE_INVALID", 0, 0);
        ERROR_TYPE_INVALID = errorType;
        NONE = new ErrorType("NONE", 1, 1);
        READER_IN_USE = new ErrorType("READER_IN_USE", 2, 2);
        READER_UNAVAILABLE = new ErrorType("READER_UNAVAILABLE", 3, 3);
        ACTION_CANCELED = new ErrorType("ACTION_CANCELED", 4, 4);
        SERVER_DRIVEN_DISABLED = new ErrorType("SERVER_DRIVEN_DISABLED", 5, 5);
        INTEGRATION_MODE_MISMATCH = new ErrorType("INTEGRATION_MODE_MISMATCH", 6, 6);
        COMMAND_NOT_SUPPORTED = new ErrorType("COMMAND_NOT_SUPPORTED", 7, 7);
        READER_HARDWARE_FAULT = new ErrorType("READER_HARDWARE_FAULT", 8, 8);
        ErrorType[] errorTypeArr$values = $values();
        $VALUES = errorTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(errorTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ErrorType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<ErrorType>(orCreateKotlinClass, syntax, errorType) { // from class: com.stripe.proto.event_channel.pub.message.ErrorType$Companion$ADAPTER$1
            {
                ErrorType errorType2 = errorType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public ErrorType fromValue(int value) {
                return ErrorType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: ErrorType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/ErrorType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/ErrorType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ErrorType fromValue(int value) {
            switch (value) {
                case 0:
                    return ErrorType.ERROR_TYPE_INVALID;
                case 1:
                    return ErrorType.NONE;
                case 2:
                    return ErrorType.READER_IN_USE;
                case 3:
                    return ErrorType.READER_UNAVAILABLE;
                case 4:
                    return ErrorType.ACTION_CANCELED;
                case 5:
                    return ErrorType.SERVER_DRIVEN_DISABLED;
                case 6:
                    return ErrorType.INTEGRATION_MODE_MISMATCH;
                case 7:
                    return ErrorType.COMMAND_NOT_SUPPORTED;
                case 8:
                    return ErrorType.READER_HARDWARE_FAULT;
                default:
                    return null;
            }
        }
    }
}
