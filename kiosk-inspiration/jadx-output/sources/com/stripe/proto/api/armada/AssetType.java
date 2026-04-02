package com.stripe.proto.api.armada;

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
/* JADX INFO: compiled from: AssetType.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0086\u0081\u0002\u0018\u0000 \u000e2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u000eB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000f"}, d2 = {"Lcom/stripe/proto/api/armada/AssetType;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ASSET_TYPE_INVALID", "BIN_TABLE", "FONT_BUNDLE", "IMAGE_ASSET", "CHECKOUT_RULES", "LOCALIZATION_BUNDLE", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class AssetType implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ AssetType[] $VALUES;
    public static final ProtoAdapter<AssetType> ADAPTER;
    public static final AssetType ASSET_TYPE_INVALID;
    public static final AssetType BIN_TABLE;
    public static final AssetType CHECKOUT_RULES;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final AssetType FONT_BUNDLE;
    public static final AssetType IMAGE_ASSET;
    public static final AssetType LOCALIZATION_BUNDLE;
    private final int value;

    private static final /* synthetic */ AssetType[] $values() {
        return new AssetType[]{ASSET_TYPE_INVALID, BIN_TABLE, FONT_BUNDLE, IMAGE_ASSET, CHECKOUT_RULES, LOCALIZATION_BUNDLE};
    }

    @JvmStatic
    public static final AssetType fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<AssetType> getEntries() {
        return $ENTRIES;
    }

    public static AssetType valueOf(String str) {
        return (AssetType) Enum.valueOf(AssetType.class, str);
    }

    public static AssetType[] values() {
        return (AssetType[]) $VALUES.clone();
    }

    private AssetType(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final AssetType assetType = new AssetType("ASSET_TYPE_INVALID", 0, 0);
        ASSET_TYPE_INVALID = assetType;
        BIN_TABLE = new AssetType("BIN_TABLE", 1, 1);
        FONT_BUNDLE = new AssetType("FONT_BUNDLE", 2, 2);
        IMAGE_ASSET = new AssetType("IMAGE_ASSET", 3, 3);
        CHECKOUT_RULES = new AssetType("CHECKOUT_RULES", 4, 5);
        LOCALIZATION_BUNDLE = new AssetType("LOCALIZATION_BUNDLE", 5, 6);
        AssetType[] assetTypeArr$values = $values();
        $VALUES = assetTypeArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(assetTypeArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(AssetType.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<AssetType>(orCreateKotlinClass, syntax, assetType) { // from class: com.stripe.proto.api.armada.AssetType$Companion$ADAPTER$1
            {
                AssetType assetType2 = assetType;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public AssetType fromValue(int value) {
                return AssetType.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: AssetType.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/api/armada/AssetType$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/api/armada/AssetType;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final AssetType fromValue(int value) {
            if (value == 0) {
                return AssetType.ASSET_TYPE_INVALID;
            }
            if (value == 1) {
                return AssetType.BIN_TABLE;
            }
            if (value == 2) {
                return AssetType.FONT_BUNDLE;
            }
            if (value == 3) {
                return AssetType.IMAGE_ASSET;
            }
            if (value == 5) {
                return AssetType.CHECKOUT_RULES;
            }
            if (value != 6) {
                return null;
            }
            return AssetType.LOCALIZATION_BUNDLE;
        }
    }
}
