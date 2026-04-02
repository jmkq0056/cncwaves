package com.stripe.loggingmodels;

import com.stripe.proto.model.rest.ErrorResponse;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Tag.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\b\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015B\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\f\u001a\u00020\rH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006R\u0012\u0010\u0007\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\u0006\u0082\u0001\t\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e¨\u0006\u001f"}, d2 = {"Lcom/stripe/loggingmodels/Tag;", "", "key", "", "(Ljava/lang/String;)V", "getKey", "()Ljava/lang/String;", "value", "getValue", "equals", "", "other", "hashCode", "", "BuildVariant", "CotsTag", "HealthTag", "HttpTimingTag", "IotStateMachineTag", "StripeDeclineCode", "StripeErrorCode", "StripeErrorType", "Lcom/stripe/loggingmodels/Tag$BuildVariant;", "Lcom/stripe/loggingmodels/Tag$CotsTag;", "Lcom/stripe/loggingmodels/Tag$CotsTag$CachedAttestation;", "Lcom/stripe/loggingmodels/Tag$HealthTag;", "Lcom/stripe/loggingmodels/Tag$HttpTimingTag;", "Lcom/stripe/loggingmodels/Tag$IotStateMachineTag;", "Lcom/stripe/loggingmodels/Tag$StripeDeclineCode;", "Lcom/stripe/loggingmodels/Tag$StripeErrorCode;", "Lcom/stripe/loggingmodels/Tag$StripeErrorType;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class Tag {
    private final String key;

    public /* synthetic */ Tag(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    public abstract String getValue();

    private Tag(String str) {
        this.key = str;
    }

    public final String getKey() {
        return this.key;
    }

    /* JADX INFO: compiled from: Tag.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0002\u0007\bB\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0002\t\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Tag$BuildVariant;", "Lcom/stripe/loggingmodels/Tag;", "value", "", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "Debug", "Release", "Lcom/stripe/loggingmodels/Tag$BuildVariant$Debug;", "Lcom/stripe/loggingmodels/Tag$BuildVariant$Release;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class BuildVariant extends Tag {
        private final String value;

        public /* synthetic */ BuildVariant(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        /* JADX INFO: compiled from: Tag.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Tag$BuildVariant$Release;", "Lcom/stripe/loggingmodels/Tag$BuildVariant;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Release extends BuildVariant {
            public static final Release INSTANCE = new Release();

            @Override // com.stripe.loggingmodels.Tag
            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Release)) {
                    return false;
                }
                return true;
            }

            @Override // com.stripe.loggingmodels.Tag
            public int hashCode() {
                return -1699346403;
            }

            public String toString() {
                return "Release";
            }

            private Release() {
                super("release", null);
            }
        }

        private BuildVariant(String str) {
            super("build_variant", null);
            this.value = str;
        }

        @Override // com.stripe.loggingmodels.Tag
        public String getValue() {
            return this.value;
        }

        /* JADX INFO: compiled from: Tag.kt */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\bÆ\n\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006HÖ\u0003J\t\u0010\u0007\u001a\u00020\bHÖ\u0001J\t\u0010\t\u001a\u00020\nHÖ\u0001¨\u0006\u000b"}, d2 = {"Lcom/stripe/loggingmodels/Tag$BuildVariant$Debug;", "Lcom/stripe/loggingmodels/Tag$BuildVariant;", "()V", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Debug extends BuildVariant {
            public static final Debug INSTANCE = new Debug();

            @Override // com.stripe.loggingmodels.Tag
            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Debug)) {
                    return false;
                }
                return true;
            }

            @Override // com.stripe.loggingmodels.Tag
            public int hashCode() {
                return -1775598615;
            }

            public String toString() {
                return "Debug";
            }

            private Debug() {
                super("debug", null);
            }
        }
    }

    /* JADX INFO: compiled from: Tag.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/stripe/loggingmodels/Tag$StripeDeclineCode;", "Lcom/stripe/loggingmodels/Tag;", "value", "", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class StripeDeclineCode extends Tag {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String value;

        public /* synthetic */ StripeDeclineCode(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        @Override // com.stripe.loggingmodels.Tag
        public String getValue() {
            return this.value;
        }

        /* JADX INFO: compiled from: Tag.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/loggingmodels/Tag$StripeDeclineCode$Companion;", "", "()V", "toStripeDeclineCode", "Lcom/stripe/loggingmodels/Tag$StripeDeclineCode;", "Lcom/stripe/proto/model/rest/ErrorResponse;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final StripeDeclineCode toStripeDeclineCode(ErrorResponse errorResponse) {
                Intrinsics.checkNotNullParameter(errorResponse, "<this>");
                String str = errorResponse.decline_code;
                String str2 = str;
                DefaultConstructorMarker defaultConstructorMarker = null;
                if (str2 == null || str2.length() == 0) {
                    str = null;
                }
                if (str != null) {
                    return new StripeDeclineCode(str, defaultConstructorMarker);
                }
                return null;
            }
        }

        private StripeDeclineCode(String str) {
            super("stripe_decline_code", null);
            this.value = str;
        }
    }

    /* JADX INFO: compiled from: Tag.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/stripe/loggingmodels/Tag$StripeErrorCode;", "Lcom/stripe/loggingmodels/Tag;", "value", "", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class StripeErrorCode extends Tag {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String value;

        public /* synthetic */ StripeErrorCode(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        @Override // com.stripe.loggingmodels.Tag
        public String getValue() {
            return this.value;
        }

        /* JADX INFO: compiled from: Tag.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/loggingmodels/Tag$StripeErrorCode$Companion;", "", "()V", "toStripeErrorCode", "Lcom/stripe/loggingmodels/Tag$StripeErrorCode;", "Lcom/stripe/proto/model/rest/ErrorResponse;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final StripeErrorCode toStripeErrorCode(ErrorResponse errorResponse) {
                Intrinsics.checkNotNullParameter(errorResponse, "<this>");
                String str = errorResponse.code;
                String str2 = str;
                DefaultConstructorMarker defaultConstructorMarker = null;
                if (str2 == null || str2.length() == 0) {
                    str = null;
                }
                if (str != null) {
                    return new StripeErrorCode(str, defaultConstructorMarker);
                }
                return null;
            }
        }

        private StripeErrorCode(String str) {
            super("stripe_error_code", null);
            this.value = str;
        }
    }

    /* JADX INFO: compiled from: Tag.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 \u00072\u00020\u0001:\u0001\u0007B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"Lcom/stripe/loggingmodels/Tag$StripeErrorType;", "Lcom/stripe/loggingmodels/Tag;", "value", "", "(Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class StripeErrorType extends Tag {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String value;

        public /* synthetic */ StripeErrorType(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        @Override // com.stripe.loggingmodels.Tag
        public String getValue() {
            return this.value;
        }

        /* JADX INFO: compiled from: Tag.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/loggingmodels/Tag$StripeErrorType$Companion;", "", "()V", "toStripeErrorType", "Lcom/stripe/loggingmodels/Tag$StripeErrorType;", "Lcom/stripe/proto/model/rest/ErrorResponse;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final StripeErrorType toStripeErrorType(ErrorResponse errorResponse) {
                Intrinsics.checkNotNullParameter(errorResponse, "<this>");
                String str = errorResponse.type;
                String str2 = str;
                DefaultConstructorMarker defaultConstructorMarker = null;
                if (str2 == null || str2.length() == 0) {
                    str = null;
                }
                if (str != null) {
                    return new StripeErrorType(str, defaultConstructorMarker);
                }
                return null;
            }
        }

        private StripeErrorType(String str) {
            super("stripe_error_type", null);
            this.value = str;
        }
    }

    /* JADX INFO: compiled from: Tag.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \b2\u00020\u0001:\u0001\bB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/loggingmodels/Tag$HealthTag;", "Lcom/stripe/loggingmodels/Tag;", "key", "", "value", "(Ljava/lang/String;Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "Companion", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class HealthTag extends Tag {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String value;

        /* JADX INFO: compiled from: Tag.kt */
        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001c\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004*\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006¨\u0006\b"}, d2 = {"Lcom/stripe/loggingmodels/Tag$HealthTag$Companion;", "", "()V", "toHealthTags", "", "Lcom/stripe/loggingmodels/Tag;", "", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final List<Tag> toHealthTags(Map<String, String> map) {
                Intrinsics.checkNotNullParameter(map, "<this>");
                ArrayList arrayList = new ArrayList(map.size());
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    arrayList.add(new HealthTag(entry.getKey(), entry.getValue()));
                }
                return arrayList;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HealthTag(String key, String value) {
            super(key, null);
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this.value = value;
        }

        @Override // com.stripe.loggingmodels.Tag
        public String getValue() {
            return this.value;
        }
    }

    /* JADX INFO: compiled from: Tag.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/loggingmodels/Tag$HttpTimingTag;", "Lcom/stripe/loggingmodels/Tag;", "key", "", "value", "(Ljava/lang/String;Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class HttpTimingTag extends Tag {
        private final String value;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HttpTimingTag(String key, String value) {
            super(key, null);
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this.value = value;
        }

        @Override // com.stripe.loggingmodels.Tag
        public String getValue() {
            return this.value;
        }
    }

    /* JADX INFO: compiled from: Tag.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/loggingmodels/Tag$IotStateMachineTag;", "Lcom/stripe/loggingmodels/Tag;", "key", "", "value", "(Ljava/lang/String;Ljava/lang/String;)V", "getValue", "()Ljava/lang/String;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class IotStateMachineTag extends Tag {
        private final String value;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IotStateMachineTag(String key, String value) {
            super(key, null);
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            this.value = value;
        }

        @Override // com.stripe.loggingmodels.Tag
        public String getValue() {
            return this.value;
        }
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Tag)) {
            return false;
        }
        Tag tag = (Tag) other;
        return Intrinsics.areEqual(this.key, tag.key) && Intrinsics.areEqual(getValue(), tag.getValue());
    }

    public int hashCode() {
        return (this.key.hashCode() * 31) + getValue().hashCode();
    }

    /* JADX INFO: compiled from: Tag.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b6\u0018\u00002\u00020\u0001:\u0001\u0005B\u000f\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0006"}, d2 = {"Lcom/stripe/loggingmodels/Tag$CotsTag;", "Lcom/stripe/loggingmodels/Tag;", "key", "", "(Ljava/lang/String;)V", "CachedAttestation", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static abstract class CotsTag extends Tag {
        public /* synthetic */ CotsTag(String str, DefaultConstructorMarker defaultConstructorMarker) {
            this(str);
        }

        /* JADX INFO: compiled from: Tag.kt */
        @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/stripe/loggingmodels/Tag$CotsTag$CachedAttestation;", "Lcom/stripe/loggingmodels/Tag;", "usedCache", "", "(Z)V", "value", "", "getValue", "()Ljava/lang/String;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class CachedAttestation extends Tag {
            private final String value;

            public CachedAttestation(boolean z) {
                super("cached_attestation", null);
                this.value = String.valueOf(z);
            }

            @Override // com.stripe.loggingmodels.Tag
            public String getValue() {
                return this.value;
            }
        }

        private CotsTag(String str) {
            super(str, null);
        }
    }
}
