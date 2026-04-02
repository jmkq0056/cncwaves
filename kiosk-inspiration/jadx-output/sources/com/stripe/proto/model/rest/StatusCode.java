package com.stripe.proto.model.rest;

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
/* JADX INFO: compiled from: StatusCode.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0011\b\u0086\u0081\u0002\u0018\u0000 \u00142\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0014B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/rest/StatusCode;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN_STATUS", "OK", "HTTP_ERROR", "HTTP_ERROR_UNKNOWN_STATE", "BAD_REQUEST", "UNAUTHORIZED", "REQUEST_FAILED", "FORBIDDEN", "NOT_FOUND", "CONFLICT", "TOO_MANY_REQUESTS", "SERVER_ERROR", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class StatusCode implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ StatusCode[] $VALUES;
    public static final ProtoAdapter<StatusCode> ADAPTER;
    public static final StatusCode BAD_REQUEST;
    public static final StatusCode CONFLICT;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final StatusCode FORBIDDEN;
    public static final StatusCode HTTP_ERROR;
    public static final StatusCode HTTP_ERROR_UNKNOWN_STATE;
    public static final StatusCode NOT_FOUND;
    public static final StatusCode OK;
    public static final StatusCode REQUEST_FAILED;
    public static final StatusCode SERVER_ERROR;
    public static final StatusCode TOO_MANY_REQUESTS;
    public static final StatusCode UNAUTHORIZED;
    public static final StatusCode UNKNOWN_STATUS;
    private final int value;

    private static final /* synthetic */ StatusCode[] $values() {
        return new StatusCode[]{UNKNOWN_STATUS, OK, HTTP_ERROR, HTTP_ERROR_UNKNOWN_STATE, BAD_REQUEST, UNAUTHORIZED, REQUEST_FAILED, FORBIDDEN, NOT_FOUND, CONFLICT, TOO_MANY_REQUESTS, SERVER_ERROR};
    }

    @JvmStatic
    public static final StatusCode fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<StatusCode> getEntries() {
        return $ENTRIES;
    }

    public static StatusCode valueOf(String str) {
        return (StatusCode) Enum.valueOf(StatusCode.class, str);
    }

    public static StatusCode[] values() {
        return (StatusCode[]) $VALUES.clone();
    }

    private StatusCode(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final StatusCode statusCode = new StatusCode("UNKNOWN_STATUS", 0, 0);
        UNKNOWN_STATUS = statusCode;
        OK = new StatusCode("OK", 1, 1);
        HTTP_ERROR = new StatusCode("HTTP_ERROR", 2, 2);
        HTTP_ERROR_UNKNOWN_STATE = new StatusCode("HTTP_ERROR_UNKNOWN_STATE", 3, 3);
        BAD_REQUEST = new StatusCode("BAD_REQUEST", 4, 4);
        UNAUTHORIZED = new StatusCode("UNAUTHORIZED", 5, 5);
        REQUEST_FAILED = new StatusCode("REQUEST_FAILED", 6, 6);
        FORBIDDEN = new StatusCode("FORBIDDEN", 7, 11);
        NOT_FOUND = new StatusCode("NOT_FOUND", 8, 7);
        CONFLICT = new StatusCode("CONFLICT", 9, 8);
        TOO_MANY_REQUESTS = new StatusCode("TOO_MANY_REQUESTS", 10, 9);
        SERVER_ERROR = new StatusCode("SERVER_ERROR", 11, 10);
        StatusCode[] statusCodeArr$values = $values();
        $VALUES = statusCodeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(statusCodeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(StatusCode.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<StatusCode>(orCreateKotlinClass, syntax, statusCode) { // from class: com.stripe.proto.model.rest.StatusCode$Companion$ADAPTER$1
            {
                StatusCode statusCode2 = statusCode;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public StatusCode fromValue(int value) {
                return StatusCode.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: StatusCode.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/rest/StatusCode$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/rest/StatusCode;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final StatusCode fromValue(int value) {
            switch (value) {
                case 0:
                    return StatusCode.UNKNOWN_STATUS;
                case 1:
                    return StatusCode.OK;
                case 2:
                    return StatusCode.HTTP_ERROR;
                case 3:
                    return StatusCode.HTTP_ERROR_UNKNOWN_STATE;
                case 4:
                    return StatusCode.BAD_REQUEST;
                case 5:
                    return StatusCode.UNAUTHORIZED;
                case 6:
                    return StatusCode.REQUEST_FAILED;
                case 7:
                    return StatusCode.NOT_FOUND;
                case 8:
                    return StatusCode.CONFLICT;
                case 9:
                    return StatusCode.TOO_MANY_REQUESTS;
                case 10:
                    return StatusCode.SERVER_ERROR;
                case 11:
                    return StatusCode.FORBIDDEN;
                default:
                    return null;
            }
        }
    }
}
