package com.stripe.proto.api.rest;

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
/* JADX INFO: compiled from: ConnectionType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\fB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\r"}, d2 = {"Lcom/stripe/proto/api/rest/ConnectionType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "bluetooth", "usb", "handoff", "countertop", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ConnectionType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ConnectionType[] $VALUES;
    public static final ProtoAdapter<ConnectionType> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ConnectionType bluetooth;
    public static final ConnectionType countertop;
    public static final ConnectionType handoff;
    public static final ConnectionType usb;
    private final int value;

    private static final /* synthetic */ ConnectionType[] $values() {
        return new ConnectionType[]{bluetooth, usb, handoff, countertop};
    }

    @JvmStatic
    public static final ConnectionType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<ConnectionType> getEntries() {
        return $ENTRIES;
    }

    public static ConnectionType valueOf(String str) {
        return (ConnectionType) Enum.valueOf(ConnectionType.class, str);
    }

    public static ConnectionType[] values() {
        return (ConnectionType[]) $VALUES.clone();
    }

    private ConnectionType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final ConnectionType connectionType = new ConnectionType("bluetooth", 0, 0);
        bluetooth = connectionType;
        usb = new ConnectionType("usb", 1, 1);
        handoff = new ConnectionType("handoff", 2, 2);
        countertop = new ConnectionType("countertop", 3, 3);
        ConnectionType[] connectionTypeArr$values = $values();
        $VALUES = connectionTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(connectionTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ConnectionType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<ConnectionType>(orCreateKotlinClass, syntax, connectionType) { // from class: com.stripe.proto.api.rest.ConnectionType$Companion$ADAPTER$1
            {
                ConnectionType connectionType2 = connectionType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public ConnectionType fromValue(int value) {
                return ConnectionType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: ConnectionType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/rest/ConnectionType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/rest/ConnectionType;", "fromValue", "value", "", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ConnectionType fromValue(int value) {
            if (value == 0) {
                return ConnectionType.bluetooth;
            }
            if (value == 1) {
                return ConnectionType.usb;
            }
            if (value == 2) {
                return ConnectionType.handoff;
            }
            if (value != 3) {
                return null;
            }
            return ConnectionType.countertop;
        }
    }
}
