package com.stripe.proto.net.rpc.base;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ApplicationEC.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0014\b\u0086\u0081\u0002\u0018\u0000 \u00172\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0017B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/net/rpc/base/ApplicationEC;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "APPLICATION_EC_INVALID", "OK", "LOCK_RESOURCES_EXCEPTION", "INVALID_LOAD_ID", "ILLEGAL_STATE", "AUTHENTICATION_FAILURE", "INVALID_SESSION_TOKEN", "UNAUTHORIZED", "INVALID_REQUEST", "SERVER_ERROR", "TOO_MANY_REQUESTS", "UNIMPLEMENTED", "INVALID_CONFIG", "ALREADY_EXISTS", "READER_IN_USE", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationEC implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ApplicationEC[] $VALUES;
    public static final ProtoAdapter<ApplicationEC> ADAPTER;
    public static final ApplicationEC ALREADY_EXISTS;
    public static final ApplicationEC APPLICATION_EC_INVALID;
    public static final ApplicationEC AUTHENTICATION_FAILURE;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ApplicationEC ILLEGAL_STATE;
    public static final ApplicationEC INVALID_CONFIG;
    public static final ApplicationEC INVALID_LOAD_ID;
    public static final ApplicationEC INVALID_REQUEST;
    public static final ApplicationEC INVALID_SESSION_TOKEN;
    public static final ApplicationEC LOCK_RESOURCES_EXCEPTION;
    public static final ApplicationEC OK;

    @Deprecated(message = "READER_IN_USE is deprecated")
    public static final ApplicationEC READER_IN_USE;
    public static final ApplicationEC SERVER_ERROR;
    public static final ApplicationEC TOO_MANY_REQUESTS;
    public static final ApplicationEC UNAUTHORIZED;
    public static final ApplicationEC UNIMPLEMENTED;
    private final int value;

    private static final /* synthetic */ ApplicationEC[] $values() {
        return new ApplicationEC[]{APPLICATION_EC_INVALID, OK, LOCK_RESOURCES_EXCEPTION, INVALID_LOAD_ID, ILLEGAL_STATE, AUTHENTICATION_FAILURE, INVALID_SESSION_TOKEN, UNAUTHORIZED, INVALID_REQUEST, SERVER_ERROR, TOO_MANY_REQUESTS, UNIMPLEMENTED, INVALID_CONFIG, ALREADY_EXISTS, READER_IN_USE};
    }

    @JvmStatic
    public static final ApplicationEC fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<ApplicationEC> getEntries() {
        return $ENTRIES;
    }

    public static ApplicationEC valueOf(String str) {
        return (ApplicationEC) Enum.valueOf(ApplicationEC.class, str);
    }

    public static ApplicationEC[] values() {
        return (ApplicationEC[]) $VALUES.clone();
    }

    private ApplicationEC(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final ApplicationEC applicationEC = new ApplicationEC("APPLICATION_EC_INVALID", 0, 0);
        APPLICATION_EC_INVALID = applicationEC;
        OK = new ApplicationEC("OK", 1, 1);
        LOCK_RESOURCES_EXCEPTION = new ApplicationEC("LOCK_RESOURCES_EXCEPTION", 2, 2);
        INVALID_LOAD_ID = new ApplicationEC("INVALID_LOAD_ID", 3, 3);
        ILLEGAL_STATE = new ApplicationEC("ILLEGAL_STATE", 4, 4);
        AUTHENTICATION_FAILURE = new ApplicationEC("AUTHENTICATION_FAILURE", 5, 5);
        INVALID_SESSION_TOKEN = new ApplicationEC("INVALID_SESSION_TOKEN", 6, 13);
        UNAUTHORIZED = new ApplicationEC("UNAUTHORIZED", 7, 6);
        INVALID_REQUEST = new ApplicationEC("INVALID_REQUEST", 8, 7);
        SERVER_ERROR = new ApplicationEC("SERVER_ERROR", 9, 10);
        TOO_MANY_REQUESTS = new ApplicationEC("TOO_MANY_REQUESTS", 10, 20);
        UNIMPLEMENTED = new ApplicationEC("UNIMPLEMENTED", 11, 21);
        INVALID_CONFIG = new ApplicationEC("INVALID_CONFIG", 12, 14);
        ALREADY_EXISTS = new ApplicationEC("ALREADY_EXISTS", 13, 322);
        READER_IN_USE = new ApplicationEC("READER_IN_USE", 14, 323);
        ApplicationEC[] applicationECArr$values = $values();
        $VALUES = applicationECArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(applicationECArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApplicationEC.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<ApplicationEC>(orCreateKotlinClass, syntax, applicationEC) { // from class: com.stripe.proto.net.rpc.base.ApplicationEC$Companion$ADAPTER$1
            {
                ApplicationEC applicationEC2 = applicationEC;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public ApplicationEC fromValue(int value) {
                return ApplicationEC.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: ApplicationEC.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/net/rpc/base/ApplicationEC$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/net/rpc/base/ApplicationEC;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ApplicationEC fromValue(int value) {
            if (value == 10) {
                return ApplicationEC.SERVER_ERROR;
            }
            if (value == 13) {
                return ApplicationEC.INVALID_SESSION_TOKEN;
            }
            if (value == 14) {
                return ApplicationEC.INVALID_CONFIG;
            }
            if (value == 20) {
                return ApplicationEC.TOO_MANY_REQUESTS;
            }
            if (value == 21) {
                return ApplicationEC.UNIMPLEMENTED;
            }
            if (value == 322) {
                return ApplicationEC.ALREADY_EXISTS;
            }
            if (value != 323) {
                switch (value) {
                    case 0:
                        return ApplicationEC.APPLICATION_EC_INVALID;
                    case 1:
                        return ApplicationEC.OK;
                    case 2:
                        return ApplicationEC.LOCK_RESOURCES_EXCEPTION;
                    case 3:
                        return ApplicationEC.INVALID_LOAD_ID;
                    case 4:
                        return ApplicationEC.ILLEGAL_STATE;
                    case 5:
                        return ApplicationEC.AUTHENTICATION_FAILURE;
                    case 6:
                        return ApplicationEC.UNAUTHORIZED;
                    case 7:
                        return ApplicationEC.INVALID_REQUEST;
                    default:
                        return null;
                }
            }
            return ApplicationEC.READER_IN_USE;
        }
    }
}
