package com.stripe.ext;

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
/* JADX INFO: compiled from: RequestPriority.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/ext/RequestPriority;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "P0", "P1", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RequestPriority implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ RequestPriority[] $VALUES;
    public static final ProtoAdapter<RequestPriority> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final RequestPriority P0 = new RequestPriority("P0", 0, 1);
    public static final RequestPriority P1 = new RequestPriority("P1", 1, 2);
    private final int value;

    private static final /* synthetic */ RequestPriority[] $values() {
        return new RequestPriority[]{P0, P1};
    }

    @JvmStatic
    public static final RequestPriority fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<RequestPriority> getEntries() {
        return $ENTRIES;
    }

    public static RequestPriority valueOf(String str) {
        return (RequestPriority) Enum.valueOf(RequestPriority.class, str);
    }

    public static RequestPriority[] values() {
        return (RequestPriority[]) $VALUES.clone();
    }

    private RequestPriority(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        RequestPriority[] requestPriorityArr$values = $values();
        $VALUES = requestPriorityArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(requestPriorityArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RequestPriority.class);
        final Syntax syntax = Syntax.PROTO_2;
        ADAPTER = new EnumAdapter<RequestPriority>(orCreateKotlinClass, syntax) { // from class: com.stripe.ext.RequestPriority$Companion$ADAPTER$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public RequestPriority fromValue(int value) {
                return RequestPriority.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: RequestPriority.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/RequestPriority$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/RequestPriority;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final RequestPriority fromValue(int value) {
            if (value == 1) {
                return RequestPriority.P0;
            }
            if (value != 2) {
                return null;
            }
            return RequestPriority.P1;
        }
    }
}
