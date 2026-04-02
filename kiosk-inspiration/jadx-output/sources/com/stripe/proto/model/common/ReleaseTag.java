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
/* JADX INFO: compiled from: ReleaseTag.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000eB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/model/common/ReleaseTag;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "RELEASE_TAG_INVALID", "GENERAL", "BETA", "ALPHA", "DEV_INTERNAL", "INCIDENT_ROLLBACK", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReleaseTag implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReleaseTag[] $VALUES;
    public static final ProtoAdapter<ReleaseTag> ADAPTER;
    public static final ReleaseTag ALPHA;
    public static final ReleaseTag BETA;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ReleaseTag DEV_INTERNAL;
    public static final ReleaseTag GENERAL;
    public static final ReleaseTag INCIDENT_ROLLBACK;
    public static final ReleaseTag RELEASE_TAG_INVALID;
    private final int value;

    private static final /* synthetic */ ReleaseTag[] $values() {
        return new ReleaseTag[]{RELEASE_TAG_INVALID, GENERAL, BETA, ALPHA, DEV_INTERNAL, INCIDENT_ROLLBACK};
    }

    @JvmStatic
    public static final ReleaseTag fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<ReleaseTag> getEntries() {
        return $ENTRIES;
    }

    public static ReleaseTag valueOf(String str) {
        return (ReleaseTag) Enum.valueOf(ReleaseTag.class, str);
    }

    public static ReleaseTag[] values() {
        return (ReleaseTag[]) $VALUES.clone();
    }

    private ReleaseTag(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final ReleaseTag releaseTag = new ReleaseTag("RELEASE_TAG_INVALID", 0, 0);
        RELEASE_TAG_INVALID = releaseTag;
        GENERAL = new ReleaseTag("GENERAL", 1, 1);
        BETA = new ReleaseTag("BETA", 2, 2);
        ALPHA = new ReleaseTag("ALPHA", 3, 3);
        DEV_INTERNAL = new ReleaseTag("DEV_INTERNAL", 4, 4);
        INCIDENT_ROLLBACK = new ReleaseTag("INCIDENT_ROLLBACK", 5, 5);
        ReleaseTag[] releaseTagArr$values = $values();
        $VALUES = releaseTagArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(releaseTagArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReleaseTag.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<ReleaseTag>(orCreateKotlinClass, syntax, releaseTag) { // from class: com.stripe.proto.model.common.ReleaseTag$Companion$ADAPTER$1
            {
                ReleaseTag releaseTag2 = releaseTag;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public ReleaseTag fromValue(int value) {
                return ReleaseTag.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: ReleaseTag.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/ReleaseTag$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ReleaseTag;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ReleaseTag fromValue(int value) {
            if (value == 0) {
                return ReleaseTag.RELEASE_TAG_INVALID;
            }
            if (value == 1) {
                return ReleaseTag.GENERAL;
            }
            if (value == 2) {
                return ReleaseTag.BETA;
            }
            if (value == 3) {
                return ReleaseTag.ALPHA;
            }
            if (value == 4) {
                return ReleaseTag.DEV_INTERNAL;
            }
            if (value != 5) {
                return null;
            }
            return ReleaseTag.INCIDENT_ROLLBACK;
        }
    }
}
