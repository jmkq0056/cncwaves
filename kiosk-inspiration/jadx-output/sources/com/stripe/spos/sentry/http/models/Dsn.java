package com.stripe.spos.sentry.http.models;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;

/* JADX INFO: compiled from: Dsn.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0003HÆ\u0003J\t\u0010\r\u001a\u00020\u0003HÆ\u0003J'\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\b¨\u0006\u0016"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Dsn;", "", "projectId", "", "key", "host", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getHost", "()Ljava/lang/String;", "getKey", "getProjectId", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "Companion", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class Dsn {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Regex DSN_PATTERN = new Regex("https://([a-zA-Z\\d]+)@([a-zA-Z\\d.-]+)/(\\d+)");
    private final String host;
    private final String key;
    private final String projectId;

    public static /* synthetic */ Dsn copy$default(Dsn dsn, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = dsn.projectId;
        }
        if ((i & 2) != 0) {
            str2 = dsn.key;
        }
        if ((i & 4) != 0) {
            str3 = dsn.host;
        }
        return dsn.copy(str, str2, str3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getProjectId() {
        return this.projectId;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getKey() {
        return this.key;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getHost() {
        return this.host;
    }

    public final Dsn copy(String projectId, String key, String host) {
        Intrinsics.checkNotNullParameter(projectId, "projectId");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(host, "host");
        return new Dsn(projectId, key, host);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Dsn)) {
            return false;
        }
        Dsn dsn = (Dsn) other;
        return Intrinsics.areEqual(this.projectId, dsn.projectId) && Intrinsics.areEqual(this.key, dsn.key) && Intrinsics.areEqual(this.host, dsn.host);
    }

    public int hashCode() {
        return (((this.projectId.hashCode() * 31) + this.key.hashCode()) * 31) + this.host.hashCode();
    }

    public String toString() {
        return "Dsn(projectId=" + this.projectId + ", key=" + this.key + ", host=" + this.host + ')';
    }

    public Dsn(String projectId, String key, String host) {
        Intrinsics.checkNotNullParameter(projectId, "projectId");
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(host, "host");
        this.projectId = projectId;
        this.key = key;
        this.host = host;
    }

    public final String getProjectId() {
        return this.projectId;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getHost() {
        return this.host;
    }

    /* JADX INFO: compiled from: Dsn.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Dsn$Companion;", "", "()V", "DSN_PATTERN", "Lkotlin/text/Regex;", "fromString", "Lcom/stripe/spos/sentry/http/models/Dsn;", "dsn", "", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Dsn fromString(String dsn) {
            String value;
            String value2;
            String value3;
            Intrinsics.checkNotNullParameter(dsn, "dsn");
            MatchResult matchResultMatchEntire = Dsn.DSN_PATTERN.matchEntire(dsn);
            if (matchResultMatchEntire == null) {
                throw new IllegalArgumentException("Invalid DSN format");
            }
            MatchGroup matchGroup = matchResultMatchEntire.getGroups().get(1);
            if (matchGroup == null || (value = matchGroup.getValue()) == null) {
                throw new IllegalArgumentException("DSN missing key");
            }
            MatchGroup matchGroup2 = matchResultMatchEntire.getGroups().get(2);
            if (matchGroup2 == null || (value2 = matchGroup2.getValue()) == null) {
                throw new IllegalArgumentException("DSN missing host");
            }
            MatchGroup matchGroup3 = matchResultMatchEntire.getGroups().get(3);
            if (matchGroup3 == null || (value3 = matchGroup3.getValue()) == null) {
                throw new IllegalArgumentException("DSN missing project ID");
            }
            return new Dsn(value3, value, value2);
        }
    }
}
