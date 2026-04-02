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
/* JADX INFO: compiled from: VersionUpdateStatus.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\rB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/common/VersionUpdateStatus;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INVALID", "SENT_FROM_SERVER", "APPLIED", "STALE", "RESTARTED", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VersionUpdateStatus implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ VersionUpdateStatus[] $VALUES;
    public static final ProtoAdapter<VersionUpdateStatus> ADAPTER;
    public static final VersionUpdateStatus APPLIED;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final VersionUpdateStatus INVALID;
    public static final VersionUpdateStatus RESTARTED;
    public static final VersionUpdateStatus SENT_FROM_SERVER;
    public static final VersionUpdateStatus STALE;
    private final int value;

    private static final /* synthetic */ VersionUpdateStatus[] $values() {
        return new VersionUpdateStatus[]{INVALID, SENT_FROM_SERVER, APPLIED, STALE, RESTARTED};
    }

    @JvmStatic
    public static final VersionUpdateStatus fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<VersionUpdateStatus> getEntries() {
        return $ENTRIES;
    }

    public static VersionUpdateStatus valueOf(String str) {
        return (VersionUpdateStatus) Enum.valueOf(VersionUpdateStatus.class, str);
    }

    public static VersionUpdateStatus[] values() {
        return (VersionUpdateStatus[]) $VALUES.clone();
    }

    private VersionUpdateStatus(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final VersionUpdateStatus versionUpdateStatus = new VersionUpdateStatus("INVALID", 0, 0);
        INVALID = versionUpdateStatus;
        SENT_FROM_SERVER = new VersionUpdateStatus("SENT_FROM_SERVER", 1, 1);
        APPLIED = new VersionUpdateStatus("APPLIED", 2, 2);
        STALE = new VersionUpdateStatus("STALE", 3, 3);
        RESTARTED = new VersionUpdateStatus("RESTARTED", 4, 4);
        VersionUpdateStatus[] versionUpdateStatusArr$values = $values();
        $VALUES = versionUpdateStatusArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(versionUpdateStatusArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(VersionUpdateStatus.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<VersionUpdateStatus>(orCreateKotlinClass, syntax, versionUpdateStatus) { // from class: com.stripe.proto.model.common.VersionUpdateStatus$Companion$ADAPTER$1
            {
                VersionUpdateStatus versionUpdateStatus2 = versionUpdateStatus;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public VersionUpdateStatus fromValue(int value) {
                return VersionUpdateStatus.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: VersionUpdateStatus.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/VersionUpdateStatus$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/VersionUpdateStatus;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final VersionUpdateStatus fromValue(int value) {
            if (value == 0) {
                return VersionUpdateStatus.INVALID;
            }
            if (value == 1) {
                return VersionUpdateStatus.SENT_FROM_SERVER;
            }
            if (value == 2) {
                return VersionUpdateStatus.APPLIED;
            }
            if (value == 3) {
                return VersionUpdateStatus.STALE;
            }
            if (value != 4) {
                return null;
            }
            return VersionUpdateStatus.RESTARTED;
        }
    }
}
