package com.stripe.stripeterminal.internal.common.api;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ApiClientErrorHandling.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/api/ApiResource;", "", "(Ljava/lang/String;I)V", "resourceName", "", "PAYMENT_INTENT", "SETUP_INTENT", "REFUND", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiResource {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ApiResource[] $VALUES;
    public static final ApiResource PAYMENT_INTENT = new ApiResource("PAYMENT_INTENT", 0);
    public static final ApiResource SETUP_INTENT = new ApiResource("SETUP_INTENT", 1);
    public static final ApiResource REFUND = new ApiResource("REFUND", 2);

    /* JADX INFO: compiled from: ApiClientErrorHandling.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ApiResource.values().length];
            try {
                iArr[ApiResource.PAYMENT_INTENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ApiResource.SETUP_INTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ApiResource.REFUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ ApiResource[] $values() {
        return new ApiResource[]{PAYMENT_INTENT, SETUP_INTENT, REFUND};
    }

    public static EnumEntries<ApiResource> getEntries() {
        return $ENTRIES;
    }

    public static ApiResource valueOf(String str) {
        return (ApiResource) Enum.valueOf(ApiResource.class, str);
    }

    public static ApiResource[] values() {
        return (ApiResource[]) $VALUES.clone();
    }

    private ApiResource(String str, int i) {
    }

    static {
        ApiResource[] apiResourceArr$values = $values();
        $VALUES = apiResourceArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(apiResourceArr$values);
    }

    public final String resourceName() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return "PaymentIntent";
        }
        if (i == 2) {
            return "SetupIntent";
        }
        if (i == 3) {
            return "Refund";
        }
        throw new NoWhenBranchMatchedException();
    }
}
