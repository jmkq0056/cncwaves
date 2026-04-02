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
/* JADX INFO: compiled from: ReleaseClientType.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000f\b\u0086\u0081\u0002\u0018\u0000 \u00122\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u0012B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011¨\u0006\u0013"}, d2 = {"Lcom/stripe/proto/model/common/ReleaseClientType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "INVALID_RELEASE_CLIENT_TYPE", "LOCALIZATION", "RACCOON", "WARDEN", "RACCOON_UX_BUNDLE", "ANDROID_READER", "ANDROID_READER_UPDATER", "BBPOS_FIRMWARE", "BBPOS_CONFIGURATION", "BBPOS_KEY_PROFILE", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReleaseClientType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ReleaseClientType[] $VALUES;
    public static final ProtoAdapter<ReleaseClientType> ADAPTER;
    public static final ReleaseClientType ANDROID_READER;
    public static final ReleaseClientType ANDROID_READER_UPDATER;
    public static final ReleaseClientType BBPOS_CONFIGURATION;
    public static final ReleaseClientType BBPOS_FIRMWARE;
    public static final ReleaseClientType BBPOS_KEY_PROFILE;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ReleaseClientType INVALID_RELEASE_CLIENT_TYPE;
    public static final ReleaseClientType LOCALIZATION;
    public static final ReleaseClientType RACCOON;
    public static final ReleaseClientType RACCOON_UX_BUNDLE;
    public static final ReleaseClientType WARDEN;
    private final int value;

    private static final /* synthetic */ ReleaseClientType[] $values() {
        return new ReleaseClientType[]{INVALID_RELEASE_CLIENT_TYPE, LOCALIZATION, RACCOON, WARDEN, RACCOON_UX_BUNDLE, ANDROID_READER, ANDROID_READER_UPDATER, BBPOS_FIRMWARE, BBPOS_CONFIGURATION, BBPOS_KEY_PROFILE};
    }

    @JvmStatic
    public static final ReleaseClientType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<ReleaseClientType> getEntries() {
        return $ENTRIES;
    }

    public static ReleaseClientType valueOf(String str) {
        return (ReleaseClientType) Enum.valueOf(ReleaseClientType.class, str);
    }

    public static ReleaseClientType[] values() {
        return (ReleaseClientType[]) $VALUES.clone();
    }

    private ReleaseClientType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final ReleaseClientType releaseClientType = new ReleaseClientType("INVALID_RELEASE_CLIENT_TYPE", 0, 0);
        INVALID_RELEASE_CLIENT_TYPE = releaseClientType;
        LOCALIZATION = new ReleaseClientType("LOCALIZATION", 1, 1);
        RACCOON = new ReleaseClientType("RACCOON", 2, 2);
        WARDEN = new ReleaseClientType("WARDEN", 3, 3);
        RACCOON_UX_BUNDLE = new ReleaseClientType("RACCOON_UX_BUNDLE", 4, 4);
        ANDROID_READER = new ReleaseClientType("ANDROID_READER", 5, 5);
        ANDROID_READER_UPDATER = new ReleaseClientType("ANDROID_READER_UPDATER", 6, 6);
        BBPOS_FIRMWARE = new ReleaseClientType("BBPOS_FIRMWARE", 7, 7);
        BBPOS_CONFIGURATION = new ReleaseClientType("BBPOS_CONFIGURATION", 8, 8);
        BBPOS_KEY_PROFILE = new ReleaseClientType("BBPOS_KEY_PROFILE", 9, 9);
        ReleaseClientType[] releaseClientTypeArr$values = $values();
        $VALUES = releaseClientTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(releaseClientTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ReleaseClientType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<ReleaseClientType>(orCreateKotlinClass, syntax, releaseClientType) { // from class: com.stripe.proto.model.common.ReleaseClientType$Companion$ADAPTER$1
            {
                ReleaseClientType releaseClientType2 = releaseClientType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public ReleaseClientType fromValue(int value) {
                return ReleaseClientType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: ReleaseClientType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/common/ReleaseClientType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/common/ReleaseClientType;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ReleaseClientType fromValue(int value) {
            switch (value) {
                case 0:
                    return ReleaseClientType.INVALID_RELEASE_CLIENT_TYPE;
                case 1:
                    return ReleaseClientType.LOCALIZATION;
                case 2:
                    return ReleaseClientType.RACCOON;
                case 3:
                    return ReleaseClientType.WARDEN;
                case 4:
                    return ReleaseClientType.RACCOON_UX_BUNDLE;
                case 5:
                    return ReleaseClientType.ANDROID_READER;
                case 6:
                    return ReleaseClientType.ANDROID_READER_UPDATER;
                case 7:
                    return ReleaseClientType.BBPOS_FIRMWARE;
                case 8:
                    return ReleaseClientType.BBPOS_CONFIGURATION;
                case 9:
                    return ReleaseClientType.BBPOS_KEY_PROFILE;
                default:
                    return null;
            }
        }
    }
}
