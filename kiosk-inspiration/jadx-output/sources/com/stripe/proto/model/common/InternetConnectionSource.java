package com.stripe.proto.model.common;

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
/* JADX INFO: compiled from: InternetConnectionSource.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000eB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/common/InternetConnectionSource;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN", "ETHERNET", "WIFI", "USB_IP", "MOBILE_LTE", "MOBILE_3G", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InternetConnectionSource implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ InternetConnectionSource[] $VALUES;
    public static final ProtoAdapter<InternetConnectionSource> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final InternetConnectionSource ETHERNET;
    public static final InternetConnectionSource MOBILE_3G;
    public static final InternetConnectionSource MOBILE_LTE;
    public static final InternetConnectionSource UNKNOWN;
    public static final InternetConnectionSource USB_IP;
    public static final InternetConnectionSource WIFI;
    private final int value;

    private static final /* synthetic */ InternetConnectionSource[] $values() {
        return new InternetConnectionSource[]{UNKNOWN, ETHERNET, WIFI, USB_IP, MOBILE_LTE, MOBILE_3G};
    }

    @JvmStatic
    public static final InternetConnectionSource fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<InternetConnectionSource> getEntries() {
        return $ENTRIES;
    }

    public static InternetConnectionSource valueOf(String str) {
        return (InternetConnectionSource) Enum.valueOf(InternetConnectionSource.class, str);
    }

    public static InternetConnectionSource[] values() {
        return (InternetConnectionSource[]) $VALUES.clone();
    }

    private InternetConnectionSource(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final InternetConnectionSource internetConnectionSource = new InternetConnectionSource("UNKNOWN", 0, 0);
        UNKNOWN = internetConnectionSource;
        ETHERNET = new InternetConnectionSource("ETHERNET", 1, 1);
        WIFI = new InternetConnectionSource("WIFI", 2, 2);
        USB_IP = new InternetConnectionSource("USB_IP", 3, 3);
        MOBILE_LTE = new InternetConnectionSource("MOBILE_LTE", 4, 4);
        MOBILE_3G = new InternetConnectionSource("MOBILE_3G", 5, 5);
        InternetConnectionSource[] internetConnectionSourceArr$values = $values();
        $VALUES = internetConnectionSourceArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(internetConnectionSourceArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(InternetConnectionSource.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<InternetConnectionSource>(orCreateKotlinClass, syntax, internetConnectionSource) { // from class: com.stripe.proto.model.common.InternetConnectionSource$Companion$ADAPTER$1
            {
                InternetConnectionSource internetConnectionSource2 = internetConnectionSource;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public InternetConnectionSource fromValue(int value) {
                return InternetConnectionSource.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: InternetConnectionSource.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/InternetConnectionSource$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/InternetConnectionSource;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final InternetConnectionSource fromValue(int value) {
            if (value == 0) {
                return InternetConnectionSource.UNKNOWN;
            }
            if (value == 1) {
                return InternetConnectionSource.ETHERNET;
            }
            if (value == 2) {
                return InternetConnectionSource.WIFI;
            }
            if (value == 3) {
                return InternetConnectionSource.USB_IP;
            }
            if (value == 4) {
                return InternetConnectionSource.MOBILE_LTE;
            }
            if (value != 5) {
                return null;
            }
            return InternetConnectionSource.MOBILE_3G;
        }
    }
}
