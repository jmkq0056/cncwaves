package com.stripe.stripeterminal.external.models;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReadReusableCardParameters.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\b\b\u0018\u0000 \f2\u00020\u0001:\u0002\u000b\fB'\b\u0002\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u001f\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "", "customer", "", "metadata", "", "(Ljava/lang/String;Ljava/util/Map;)V", "getCustomer", "()Ljava/lang/String;", "getMetadata", "()Ljava/util/Map;", "Builder", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReadReusableCardParameters {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ReadReusableCardParameters NULL = new ReadReusableCardParameters(null, null);
    private final /* synthetic */ String customer;
    private final /* synthetic */ Map<String, String> metadata;

    public /* synthetic */ ReadReusableCardParameters(String str, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, map);
    }

    public static final ReadReusableCardParameters getNULL() {
        return INSTANCE.getNULL();
    }

    private ReadReusableCardParameters(String str, Map<String, String> map) {
        this.customer = str;
        this.metadata = map;
    }

    public final String getCustomer() {
        return this.customer;
    }

    public final Map<String, String> getMetadata() {
        return this.metadata;
    }

    /* JADX INFO: compiled from: ReadReusableCardParameters.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u000bJ\u0016\u0010\f\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u0004R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Builder;", "", "()V", "customer", "", "metadata", "", "build", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "putAllMetadata", "data", "", "putMetadata", "key", "value", "setCustomer", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder {
        private String customer;
        private final Map<String, String> metadata = new LinkedHashMap();

        public final Builder putMetadata(String key, String value) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this.metadata.put(key, value);
            return this;
        }

        public final Builder putAllMetadata(Map<String, String> data) {
            Intrinsics.checkNotNullParameter(data, "data");
            this.metadata.putAll(data);
            return this;
        }

        public final Builder setCustomer(String customer) {
            Intrinsics.checkNotNullParameter(customer, "customer");
            this.customer = customer;
            return this;
        }

        public final ReadReusableCardParameters build() {
            return new ReadReusableCardParameters(this.customer, this.metadata, null);
        }
    }

    /* JADX INFO: compiled from: ReadReusableCardParameters.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters$Companion;", "", "()V", "NULL", "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "getNULL$annotations", "getNULL", "()Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public static /* synthetic */ void getNULL$annotations() {
        }

        private Companion() {
        }

        public final ReadReusableCardParameters getNULL() {
            return ReadReusableCardParameters.NULL;
        }
    }
}
