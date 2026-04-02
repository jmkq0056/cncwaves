package com.stripe.stripeterminal.internal.common.api;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ApiClientErrorHandling.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;", "", "(Ljava/lang/String;I)V", "operationVerb", "", "CONFIRM", "CANCEL", "UPDATE", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiOperation {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ApiOperation[] $VALUES;
    public static final ApiOperation CONFIRM = new ApiOperation("CONFIRM", 0);
    public static final ApiOperation CANCEL = new ApiOperation("CANCEL", 1);
    public static final ApiOperation UPDATE = new ApiOperation("UPDATE", 2);

    /* JADX INFO: compiled from: ApiClientErrorHandling.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ApiOperation.values().length];
            try {
                iArr[ApiOperation.CONFIRM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ApiOperation.CANCEL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[ApiOperation.UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private static final /* synthetic */ ApiOperation[] $values() {
        return new ApiOperation[]{CONFIRM, CANCEL, UPDATE};
    }

    public static EnumEntries<ApiOperation> getEntries() {
        return $ENTRIES;
    }

    public static ApiOperation valueOf(String str) {
        return (ApiOperation) Enum.valueOf(ApiOperation.class, str);
    }

    public static ApiOperation[] values() {
        return (ApiOperation[]) $VALUES.clone();
    }

    private ApiOperation(String str, int i) {
    }

    static {
        ApiOperation[] apiOperationArr$values = $values();
        $VALUES = apiOperationArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(apiOperationArr$values);
    }

    public final String operationVerb() {
        int i = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i == 1) {
            return "confirming";
        }
        if (i == 2) {
            return "canceling";
        }
        if (i == 3) {
            return "updating";
        }
        throw new NoWhenBranchMatchedException();
    }
}
