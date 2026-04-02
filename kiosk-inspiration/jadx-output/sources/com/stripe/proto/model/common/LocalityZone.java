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
/* JADX INFO: compiled from: LocalityZone.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000bB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lcom/stripe/proto/model/common/LocalityZone;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "LOCALITY_ZONE_INVALID", "DEFAULT", "INDIA", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LocalityZone implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ LocalityZone[] $VALUES;
    public static final ProtoAdapter<LocalityZone> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final LocalityZone DEFAULT;
    public static final LocalityZone INDIA;
    public static final LocalityZone LOCALITY_ZONE_INVALID;
    private final int value;

    private static final /* synthetic */ LocalityZone[] $values() {
        return new LocalityZone[]{LOCALITY_ZONE_INVALID, DEFAULT, INDIA};
    }

    @JvmStatic
    public static final LocalityZone fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<LocalityZone> getEntries() {
        return $ENTRIES;
    }

    public static LocalityZone valueOf(String str) {
        return (LocalityZone) Enum.valueOf(LocalityZone.class, str);
    }

    public static LocalityZone[] values() {
        return (LocalityZone[]) $VALUES.clone();
    }

    private LocalityZone(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final LocalityZone localityZone = new LocalityZone("LOCALITY_ZONE_INVALID", 0, 0);
        LOCALITY_ZONE_INVALID = localityZone;
        DEFAULT = new LocalityZone("DEFAULT", 1, 1);
        INDIA = new LocalityZone("INDIA", 2, 2);
        LocalityZone[] localityZoneArr$values = $values();
        $VALUES = localityZoneArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(localityZoneArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LocalityZone.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<LocalityZone>(orCreateKotlinClass, syntax, localityZone) { // from class: com.stripe.proto.model.common.LocalityZone$Companion$ADAPTER$1
            {
                LocalityZone localityZone2 = localityZone;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public LocalityZone fromValue(int value) {
                return LocalityZone.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: LocalityZone.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/LocalityZone$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/LocalityZone;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final LocalityZone fromValue(int value) {
            if (value == 0) {
                return LocalityZone.LOCALITY_ZONE_INVALID;
            }
            if (value == 1) {
                return LocalityZone.DEFAULT;
            }
            if (value != 2) {
                return null;
            }
            return LocalityZone.INDIA;
        }
    }
}
