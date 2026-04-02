package com.stripe.ext;

import com.google.android.gms.stats.CodePackage;
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
/* JADX INFO: compiled from: PII.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0017\b\u0086\u0081\u0002\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\u001aB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lcom/stripe/ext/PII;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "ACCOUNT_NUMBER", "DEVICE", "DOB", "EMAIL_ADDRESS", "FREEFORM", "GENDER", "ID_NUMBER", "IMAGE", "IP_ADDRESS", CodePackage.LOCATION, "NAME", "ORGANIZATION", "PASSWORD", "PHONE_NUMBER", "RELATIONSHIP", "URL", "USERNAME", "ANY_PII", "Companion", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PII implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ PII[] $VALUES;
    public static final ProtoAdapter<PII> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    private final int value;
    public static final PII ACCOUNT_NUMBER = new PII("ACCOUNT_NUMBER", 0, 1);
    public static final PII DEVICE = new PII("DEVICE", 1, 2);
    public static final PII DOB = new PII("DOB", 2, 3);
    public static final PII EMAIL_ADDRESS = new PII("EMAIL_ADDRESS", 3, 4);
    public static final PII FREEFORM = new PII("FREEFORM", 4, 5);
    public static final PII GENDER = new PII("GENDER", 5, 18);
    public static final PII ID_NUMBER = new PII("ID_NUMBER", 6, 6);
    public static final PII IMAGE = new PII("IMAGE", 7, 7);
    public static final PII IP_ADDRESS = new PII("IP_ADDRESS", 8, 8);
    public static final PII LOCATION = new PII(CodePackage.LOCATION, 9, 9);
    public static final PII NAME = new PII("NAME", 10, 10);
    public static final PII ORGANIZATION = new PII("ORGANIZATION", 11, 11);
    public static final PII PASSWORD = new PII("PASSWORD", 12, 16);
    public static final PII PHONE_NUMBER = new PII("PHONE_NUMBER", 13, 12);
    public static final PII RELATIONSHIP = new PII("RELATIONSHIP", 14, 13);
    public static final PII URL = new PII("URL", 15, 14);
    public static final PII USERNAME = new PII("USERNAME", 16, 15);
    public static final PII ANY_PII = new PII("ANY_PII", 17, 17);

    private static final /* synthetic */ PII[] $values() {
        return new PII[]{ACCOUNT_NUMBER, DEVICE, DOB, EMAIL_ADDRESS, FREEFORM, GENDER, ID_NUMBER, IMAGE, IP_ADDRESS, LOCATION, NAME, ORGANIZATION, PASSWORD, PHONE_NUMBER, RELATIONSHIP, URL, USERNAME, ANY_PII};
    }

    @JvmStatic
    public static final PII fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<PII> getEntries() {
        return $ENTRIES;
    }

    public static PII valueOf(String str) {
        return (PII) Enum.valueOf(PII.class, str);
    }

    public static PII[] values() {
        return (PII[]) $VALUES.clone();
    }

    private PII(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        PII[] piiArr$values = $values();
        $VALUES = piiArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(piiArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(PII.class);
        final Syntax syntax = Syntax.PROTO_2;
        ADAPTER = new EnumAdapter<PII>(orCreateKotlinClass, syntax) { // from class: com.stripe.ext.PII$Companion$ADAPTER$1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public PII fromValue(int value) {
                return PII.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: PII.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/ext/PII$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/ext/PII;", "fromValue", "value", "", "common_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final PII fromValue(int value) {
            switch (value) {
                case 1:
                    return PII.ACCOUNT_NUMBER;
                case 2:
                    return PII.DEVICE;
                case 3:
                    return PII.DOB;
                case 4:
                    return PII.EMAIL_ADDRESS;
                case 5:
                    return PII.FREEFORM;
                case 6:
                    return PII.ID_NUMBER;
                case 7:
                    return PII.IMAGE;
                case 8:
                    return PII.IP_ADDRESS;
                case 9:
                    return PII.LOCATION;
                case 10:
                    return PII.NAME;
                case 11:
                    return PII.ORGANIZATION;
                case 12:
                    return PII.PHONE_NUMBER;
                case 13:
                    return PII.RELATIONSHIP;
                case 14:
                    return PII.URL;
                case 15:
                    return PII.USERNAME;
                case 16:
                    return PII.PASSWORD;
                case 17:
                    return PII.ANY_PII;
                case 18:
                    return PII.GENDER;
                default:
                    return null;
            }
        }
    }
}
