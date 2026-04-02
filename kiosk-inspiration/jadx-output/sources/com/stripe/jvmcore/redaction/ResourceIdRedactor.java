package com.stripe.jvmcore.redaction;

import com.google.firebase.sessions.settings.RemoteSettings;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ResourceIdRedactor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \n2\u00020\u0001:\u0002\n\u000bB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\t\u001a\u00020\u0003R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;", "", "path", "", "(Ljava/lang/String;)V", "mainlandPathsWithIds", "", "Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;", "Lkotlin/text/Regex;", "redact", "Companion", "RedactionType", "redaction"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ResourceIdRedactor {
    private static final Companion Companion = new Companion(null);
    private static final String PaymentIntentResourceGetRegex = "\\/v1/payment_intents/[a-zA-Z0-9_]+";
    private static final String PaymentIntentResourceModifierRegex = "\\/v1\\/payment_intents\\/[a-zA-Z0-9_]+\\/(confirm|cancel|add_emv_second_generation_data)";
    private static final String RefundResourceModifierRegex = "\\/v1\\/refunds\\/[a-zA-Z0-9_]+\\/(add_emv_second_generation_data)";
    private final Map<RedactionType, Regex> mainlandPathsWithIds;
    private final String path;

    /* JADX INFO: compiled from: ResourceIdRedactor.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[RedactionType.values().length];
            try {
                iArr[RedactionType.PaymentIntentResourceModifier.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[RedactionType.RefundResourceModifier.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[RedactionType.PaymentIntentResourceGet.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public ResourceIdRedactor(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        this.path = path;
        this.mainlandPathsWithIds = MapsKt.mapOf(TuplesKt.to(RedactionType.PaymentIntentResourceModifier, new Regex(PaymentIntentResourceModifierRegex)), TuplesKt.to(RedactionType.RefundResourceModifier, new Regex(RefundResourceModifierRegex)), TuplesKt.to(RedactionType.PaymentIntentResourceGet, new Regex(PaymentIntentResourceGetRegex)));
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: ResourceIdRedactor.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$RedactionType;", "", "(Ljava/lang/String;I)V", "PaymentIntentResourceModifier", "RefundResourceModifier", "PaymentIntentResourceGet", "redaction"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class RedactionType {
        private static final /* synthetic */ EnumEntries $ENTRIES;
        private static final /* synthetic */ RedactionType[] $VALUES;
        public static final RedactionType PaymentIntentResourceModifier = new RedactionType("PaymentIntentResourceModifier", 0);
        public static final RedactionType RefundResourceModifier = new RedactionType("RefundResourceModifier", 1);
        public static final RedactionType PaymentIntentResourceGet = new RedactionType("PaymentIntentResourceGet", 2);

        private static final /* synthetic */ RedactionType[] $values() {
            return new RedactionType[]{PaymentIntentResourceModifier, RefundResourceModifier, PaymentIntentResourceGet};
        }

        public static EnumEntries<RedactionType> getEntries() {
            return $ENTRIES;
        }

        public static RedactionType valueOf(String str) {
            return (RedactionType) Enum.valueOf(RedactionType.class, str);
        }

        public static RedactionType[] values() {
            return (RedactionType[]) $VALUES.clone();
        }

        private RedactionType(String str, int i) {
        }

        static {
            RedactionType[] redactionTypeArr$values = $values();
            $VALUES = redactionTypeArr$values;
            $ENTRIES = EnumEntriesKt.enumEntries(redactionTypeArr$values);
        }
    }

    /* JADX INFO: compiled from: ResourceIdRedactor.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Lcom/stripe/jvmcore/redaction/ResourceIdRedactor$Companion;", "", "()V", "PaymentIntentResourceGetRegex", "", "PaymentIntentResourceModifierRegex", "RefundResourceModifierRegex", "redaction"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public final String redact() {
        for (RedactionType redactionType : RedactionType.getEntries()) {
            Regex regex = this.mainlandPathsWithIds.get(redactionType);
            if (regex != null && regex.containsMatchIn(this.path)) {
                List mutableList = CollectionsKt.toMutableList((Collection) StringsKt.split$default((CharSequence) this.path, new String[]{RemoteSettings.FORWARD_SLASH_STRING}, false, 0, 6, (Object) null));
                int i = WhenMappings.$EnumSwitchMapping$0[redactionType.ordinal()];
                if (i == 1 || i == 2) {
                    if (mutableList.size() > 3) {
                        mutableList.remove(3);
                    }
                    return CollectionsKt.joinToString$default(CollectionsKt.toList(mutableList), RemoteSettings.FORWARD_SLASH_STRING, null, null, 0, null, null, 62, null);
                }
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                if (mutableList.size() > 3) {
                    mutableList.remove(3);
                }
                mutableList.add("retrieve");
                return CollectionsKt.joinToString$default(CollectionsKt.toList(mutableList), RemoteSettings.FORWARD_SLASH_STRING, null, null, 0, null, null, 62, null);
            }
        }
        return this.path;
    }
}
