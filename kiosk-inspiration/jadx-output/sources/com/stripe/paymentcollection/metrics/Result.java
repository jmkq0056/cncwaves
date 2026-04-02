package com.stripe.paymentcollection.metrics;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: Result.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0004\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004¨\u0006\u0005"}, d2 = {"Lcom/stripe/paymentcollection/metrics/Result;", "", "(Ljava/lang/String;I)V", "SUCCESS", "FAILURE", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class Result {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ Result[] $VALUES;
    public static final Result SUCCESS = new Result("SUCCESS", 0);
    public static final Result FAILURE = new Result("FAILURE", 1);

    private static final /* synthetic */ Result[] $values() {
        return new Result[]{SUCCESS, FAILURE};
    }

    public static EnumEntries<Result> getEntries() {
        return $ENTRIES;
    }

    public static Result valueOf(String str) {
        return (Result) Enum.valueOf(Result.class, str);
    }

    public static Result[] values() {
        return (Result[]) $VALUES.clone();
    }

    private Result(String str, int i) {
    }

    static {
        Result[] resultArr$values = $values();
        $VALUES = resultArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(resultArr$values);
    }
}
