package com.stripe.stripeterminal.external.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ListLocationsParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0086\b\u0018\u0000 \u00192\u00020\u0001:\u0002\u0018\u0019B+\b\u0000\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0003J2\u0010\u0011\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0002\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0017\u001a\u00020\u0005HÖ\u0001R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\t¨\u0006\u001a"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "", "limit", "", "endingBefore", "", "startingAfter", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V", "getEndingBefore", "()Ljava/lang/String;", "getLimit", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getStartingAfter", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "equals", "", "other", "hashCode", "toString", "Builder", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ListLocationsParameters {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ListLocationsParameters NULL = new Builder().build();
    private final String endingBefore;
    private final Integer limit;
    private final String startingAfter;

    public ListLocationsParameters() {
        this(null, null, null, 7, null);
    }

    public static /* synthetic */ ListLocationsParameters copy$default(ListLocationsParameters listLocationsParameters, Integer num, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            num = listLocationsParameters.limit;
        }
        if ((i & 2) != 0) {
            str = listLocationsParameters.endingBefore;
        }
        if ((i & 4) != 0) {
            str2 = listLocationsParameters.startingAfter;
        }
        return listLocationsParameters.copy(num, str, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Integer getLimit() {
        return this.limit;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getEndingBefore() {
        return this.endingBefore;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getStartingAfter() {
        return this.startingAfter;
    }

    public final ListLocationsParameters copy(Integer limit, String endingBefore, String startingAfter) {
        return new ListLocationsParameters(limit, endingBefore, startingAfter);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ListLocationsParameters)) {
            return false;
        }
        ListLocationsParameters listLocationsParameters = (ListLocationsParameters) other;
        return Intrinsics.areEqual(this.limit, listLocationsParameters.limit) && Intrinsics.areEqual(this.endingBefore, listLocationsParameters.endingBefore) && Intrinsics.areEqual(this.startingAfter, listLocationsParameters.startingAfter);
    }

    public int hashCode() {
        Integer num = this.limit;
        int iHashCode = (num == null ? 0 : num.hashCode()) * 31;
        String str = this.endingBefore;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.startingAfter;
        return iHashCode2 + (str2 != null ? str2.hashCode() : 0);
    }

    public String toString() {
        return "ListLocationsParameters(limit=" + this.limit + ", endingBefore=" + this.endingBefore + ", startingAfter=" + this.startingAfter + ')';
    }

    public ListLocationsParameters(Integer num, String str, String str2) {
        this.limit = num;
        this.endingBefore = str;
        this.startingAfter = str2;
    }

    public /* synthetic */ ListLocationsParameters(Integer num, String str, String str2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str, (i & 4) != 0 ? null : str2);
    }

    public final Integer getLimit() {
        return this.limit;
    }

    public final String getEndingBefore() {
        return this.endingBefore;
    }

    public final String getStartingAfter() {
        return this.startingAfter;
    }

    /* JADX INFO: compiled from: ListLocationsParameters.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0013\u001a\u00020\u0014R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001e\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0006\"\u0004\b\u0012\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Builder;", "", "()V", "endingBefore", "", "getEndingBefore", "()Ljava/lang/String;", "setEndingBefore", "(Ljava/lang/String;)V", "limit", "", "getLimit", "()Ljava/lang/Integer;", "setLimit", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "startingAfter", "getStartingAfter", "setStartingAfter", "build", "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private String endingBefore;
        private Integer limit;
        private String startingAfter;

        public final String getEndingBefore() {
            return this.endingBefore;
        }

        public final void setEndingBefore(String str) {
            this.endingBefore = str;
        }

        public final Integer getLimit() {
            return this.limit;
        }

        public final void setLimit(Integer num) {
            this.limit = num;
        }

        public final String getStartingAfter() {
            return this.startingAfter;
        }

        public final void setStartingAfter(String str) {
            this.startingAfter = str;
        }

        public final ListLocationsParameters build() {
            return new ListLocationsParameters(this.limit, this.endingBefore, this.startingAfter);
        }
    }

    /* JADX INFO: compiled from: ListLocationsParameters.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ListLocationsParameters$Companion;", "", "()V", "NULL", "Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "getNULL$annotations", "getNULL", "()Lcom/stripe/stripeterminal/external/models/ListLocationsParameters;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getNULL$annotations() {
        }

        private Companion() {
        }

        public final ListLocationsParameters getNULL() {
            return ListLocationsParameters.NULL;
        }
    }
}
