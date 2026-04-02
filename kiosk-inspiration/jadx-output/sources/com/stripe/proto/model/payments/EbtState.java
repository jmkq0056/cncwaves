package com.stripe.proto.model.payments;

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
/* JADX INFO: compiled from: EbtState.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b1\b\u0086\u0081\u0002\u0018\u0000 42\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u00014B\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b j\u0002\b!j\u0002\b\"j\u0002\b#j\u0002\b$j\u0002\b%j\u0002\b&j\u0002\b'j\u0002\b(j\u0002\b)j\u0002\b*j\u0002\b+j\u0002\b,j\u0002\b-j\u0002\b.j\u0002\b/j\u0002\b0j\u0002\b1j\u0002\b2j\u0002\b3¨\u00065"}, d2 = {"Lcom/stripe/proto/model/payments/EbtState;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "UNKNOWN_STATE", "ALASKA", "ALABAMA", "CALIFORNIA", "DISTRICT_OF_COLUMBIA", "DELAWARE", "FLORIDA", "GUAM", "IOWA", "INDIANA", "KANSAS", "KENTUCKY", "LOUISIANA", "MASSACHUSETTS", "MARYLAND", "MAINE", "MICHIGAN", "MINNESOTA", "MISSISSIPPI", "MONTANA", "NEBRASKA", "NEW_JERSEY", "NEW_MEXICO", "NORTH_AND_SOUTH_DAKOTAS", "NEVADA", "OHIO", "OKLAHOMA", "OREGON", "PENNSYLVANIA", "SOUTH_CAROLINA", "TENNESSEE", "UTAH", "VIRGINIA", "VIRGIN_ISLANDS", "WASHINGTON", "WISCONSIN", "WEST_VIRGINIA", "WYOMING", "COLORADO", "CONNECTICUT", "SOUTH_DAKOTA", "ILLINOIS", "CHEROKEE_NATION", "ARIZONA", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EbtState implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ EbtState[] $VALUES;
    public static final ProtoAdapter<EbtState> ADAPTER;
    public static final EbtState ALABAMA;
    public static final EbtState ALASKA;
    public static final EbtState ARIZONA;
    public static final EbtState CALIFORNIA;
    public static final EbtState CHEROKEE_NATION;
    public static final EbtState COLORADO;
    public static final EbtState CONNECTICUT;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final EbtState DELAWARE;
    public static final EbtState DISTRICT_OF_COLUMBIA;
    public static final EbtState FLORIDA;
    public static final EbtState GUAM;
    public static final EbtState ILLINOIS;
    public static final EbtState INDIANA;
    public static final EbtState IOWA;
    public static final EbtState KANSAS;
    public static final EbtState KENTUCKY;
    public static final EbtState LOUISIANA;
    public static final EbtState MAINE;
    public static final EbtState MARYLAND;
    public static final EbtState MASSACHUSETTS;
    public static final EbtState MICHIGAN;
    public static final EbtState MINNESOTA;
    public static final EbtState MISSISSIPPI;
    public static final EbtState MONTANA;
    public static final EbtState NEBRASKA;
    public static final EbtState NEVADA;
    public static final EbtState NEW_JERSEY;
    public static final EbtState NEW_MEXICO;
    public static final EbtState NORTH_AND_SOUTH_DAKOTAS;
    public static final EbtState OHIO;
    public static final EbtState OKLAHOMA;
    public static final EbtState OREGON;
    public static final EbtState PENNSYLVANIA;
    public static final EbtState SOUTH_CAROLINA;
    public static final EbtState SOUTH_DAKOTA;
    public static final EbtState TENNESSEE;
    public static final EbtState UNKNOWN_STATE;
    public static final EbtState UTAH;
    public static final EbtState VIRGINIA;
    public static final EbtState VIRGIN_ISLANDS;
    public static final EbtState WASHINGTON;
    public static final EbtState WEST_VIRGINIA;
    public static final EbtState WISCONSIN;
    public static final EbtState WYOMING;
    private final int value;

    private static final /* synthetic */ EbtState[] $values() {
        return new EbtState[]{UNKNOWN_STATE, ALASKA, ALABAMA, CALIFORNIA, DISTRICT_OF_COLUMBIA, DELAWARE, FLORIDA, GUAM, IOWA, INDIANA, KANSAS, KENTUCKY, LOUISIANA, MASSACHUSETTS, MARYLAND, MAINE, MICHIGAN, MINNESOTA, MISSISSIPPI, MONTANA, NEBRASKA, NEW_JERSEY, NEW_MEXICO, NORTH_AND_SOUTH_DAKOTAS, NEVADA, OHIO, OKLAHOMA, OREGON, PENNSYLVANIA, SOUTH_CAROLINA, TENNESSEE, UTAH, VIRGINIA, VIRGIN_ISLANDS, WASHINGTON, WISCONSIN, WEST_VIRGINIA, WYOMING, COLORADO, CONNECTICUT, SOUTH_DAKOTA, ILLINOIS, CHEROKEE_NATION, ARIZONA};
    }

    @JvmStatic
    public static final EbtState fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<EbtState> getEntries() {
        return $ENTRIES;
    }

    public static EbtState valueOf(String str) {
        return (EbtState) Enum.valueOf(EbtState.class, str);
    }

    public static EbtState[] values() {
        return (EbtState[]) $VALUES.clone();
    }

    private EbtState(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final EbtState ebtState = new EbtState("UNKNOWN_STATE", 0, 0);
        UNKNOWN_STATE = ebtState;
        ALASKA = new EbtState("ALASKA", 1, 1);
        ALABAMA = new EbtState("ALABAMA", 2, 2);
        CALIFORNIA = new EbtState("CALIFORNIA", 3, 3);
        DISTRICT_OF_COLUMBIA = new EbtState("DISTRICT_OF_COLUMBIA", 4, 4);
        DELAWARE = new EbtState("DELAWARE", 5, 5);
        FLORIDA = new EbtState("FLORIDA", 6, 6);
        GUAM = new EbtState("GUAM", 7, 7);
        IOWA = new EbtState("IOWA", 8, 8);
        INDIANA = new EbtState("INDIANA", 9, 9);
        KANSAS = new EbtState("KANSAS", 10, 10);
        KENTUCKY = new EbtState("KENTUCKY", 11, 11);
        LOUISIANA = new EbtState("LOUISIANA", 12, 12);
        MASSACHUSETTS = new EbtState("MASSACHUSETTS", 13, 13);
        MARYLAND = new EbtState("MARYLAND", 14, 14);
        MAINE = new EbtState("MAINE", 15, 15);
        MICHIGAN = new EbtState("MICHIGAN", 16, 16);
        MINNESOTA = new EbtState("MINNESOTA", 17, 17);
        MISSISSIPPI = new EbtState("MISSISSIPPI", 18, 18);
        MONTANA = new EbtState("MONTANA", 19, 19);
        NEBRASKA = new EbtState("NEBRASKA", 20, 20);
        NEW_JERSEY = new EbtState("NEW_JERSEY", 21, 21);
        NEW_MEXICO = new EbtState("NEW_MEXICO", 22, 22);
        NORTH_AND_SOUTH_DAKOTAS = new EbtState("NORTH_AND_SOUTH_DAKOTAS", 23, 23);
        NEVADA = new EbtState("NEVADA", 24, 24);
        OHIO = new EbtState("OHIO", 25, 25);
        OKLAHOMA = new EbtState("OKLAHOMA", 26, 26);
        OREGON = new EbtState("OREGON", 27, 27);
        PENNSYLVANIA = new EbtState("PENNSYLVANIA", 28, 28);
        SOUTH_CAROLINA = new EbtState("SOUTH_CAROLINA", 29, 29);
        TENNESSEE = new EbtState("TENNESSEE", 30, 30);
        UTAH = new EbtState("UTAH", 31, 31);
        VIRGINIA = new EbtState("VIRGINIA", 32, 32);
        VIRGIN_ISLANDS = new EbtState("VIRGIN_ISLANDS", 33, 33);
        WASHINGTON = new EbtState("WASHINGTON", 34, 34);
        WISCONSIN = new EbtState("WISCONSIN", 35, 35);
        WEST_VIRGINIA = new EbtState("WEST_VIRGINIA", 36, 36);
        WYOMING = new EbtState("WYOMING", 37, 37);
        COLORADO = new EbtState("COLORADO", 38, 38);
        CONNECTICUT = new EbtState("CONNECTICUT", 39, 39);
        SOUTH_DAKOTA = new EbtState("SOUTH_DAKOTA", 40, 40);
        ILLINOIS = new EbtState("ILLINOIS", 41, 41);
        CHEROKEE_NATION = new EbtState("CHEROKEE_NATION", 42, 42);
        ARIZONA = new EbtState("ARIZONA", 43, 43);
        EbtState[] ebtStateArr$values = $values();
        $VALUES = ebtStateArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(ebtStateArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(EbtState.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<EbtState>(orCreateKotlinClass, syntax, ebtState) { // from class: com.stripe.proto.model.payments.EbtState$Companion$ADAPTER$1
            {
                EbtState ebtState2 = ebtState;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public EbtState fromValue(int value) {
                return EbtState.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: EbtState.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/payments/EbtState$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/payments/EbtState;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final EbtState fromValue(int value) {
            switch (value) {
                case 0:
                    return EbtState.UNKNOWN_STATE;
                case 1:
                    return EbtState.ALASKA;
                case 2:
                    return EbtState.ALABAMA;
                case 3:
                    return EbtState.CALIFORNIA;
                case 4:
                    return EbtState.DISTRICT_OF_COLUMBIA;
                case 5:
                    return EbtState.DELAWARE;
                case 6:
                    return EbtState.FLORIDA;
                case 7:
                    return EbtState.GUAM;
                case 8:
                    return EbtState.IOWA;
                case 9:
                    return EbtState.INDIANA;
                case 10:
                    return EbtState.KANSAS;
                case 11:
                    return EbtState.KENTUCKY;
                case 12:
                    return EbtState.LOUISIANA;
                case 13:
                    return EbtState.MASSACHUSETTS;
                case 14:
                    return EbtState.MARYLAND;
                case 15:
                    return EbtState.MAINE;
                case 16:
                    return EbtState.MICHIGAN;
                case 17:
                    return EbtState.MINNESOTA;
                case 18:
                    return EbtState.MISSISSIPPI;
                case 19:
                    return EbtState.MONTANA;
                case 20:
                    return EbtState.NEBRASKA;
                case 21:
                    return EbtState.NEW_JERSEY;
                case 22:
                    return EbtState.NEW_MEXICO;
                case 23:
                    return EbtState.NORTH_AND_SOUTH_DAKOTAS;
                case 24:
                    return EbtState.NEVADA;
                case 25:
                    return EbtState.OHIO;
                case 26:
                    return EbtState.OKLAHOMA;
                case 27:
                    return EbtState.OREGON;
                case 28:
                    return EbtState.PENNSYLVANIA;
                case 29:
                    return EbtState.SOUTH_CAROLINA;
                case 30:
                    return EbtState.TENNESSEE;
                case 31:
                    return EbtState.UTAH;
                case 32:
                    return EbtState.VIRGINIA;
                case 33:
                    return EbtState.VIRGIN_ISLANDS;
                case 34:
                    return EbtState.WASHINGTON;
                case 35:
                    return EbtState.WISCONSIN;
                case 36:
                    return EbtState.WEST_VIRGINIA;
                case 37:
                    return EbtState.WYOMING;
                case 38:
                    return EbtState.COLORADO;
                case 39:
                    return EbtState.CONNECTICUT;
                case 40:
                    return EbtState.SOUTH_DAKOTA;
                case 41:
                    return EbtState.ILLINOIS;
                case 42:
                    return EbtState.CHEROKEE_NATION;
                case 43:
                    return EbtState.ARIZONA;
                default:
                    return null;
            }
        }
    }
}
