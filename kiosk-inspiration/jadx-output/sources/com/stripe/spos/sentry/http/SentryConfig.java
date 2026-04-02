package com.stripe.spos.sentry.http;

import com.stripe.spos.sentry.http.models.Contexts;
import com.stripe.spos.sentry.http.models.Dsn;
import com.stripe.spos.sentry.http.models.EnvironmentConfig;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.datetime.Instant;

/* JADX INFO: compiled from: SentryConfig.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0002\u0010\fJ\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0019\u001a\u00020\u0007HÆ\u0003J\u0015\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\t\u0010\u001b\u001a\u00020\nHÆ\u0003JG\u0010\u001c\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u000b\u001a\u00020\nHÆ\u0001J\u0015\u0010\u001d\u001a\u00020\n2\u0006\u0010\u001e\u001a\u00020\u001fH\u0000¢\u0006\u0002\b J\u0013\u0010!\u001a\u00020\"2\b\u0010#\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010$\u001a\u00020%HÖ\u0001J\t\u0010&\u001a\u00020\nHÖ\u0001J\f\u0010'\u001a\u00020\n*\u00020\u001fH\u0002R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u000b\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016¨\u0006("}, d2 = {"Lcom/stripe/spos/sentry/http/SentryConfig;", "", "dsn", "Lcom/stripe/spos/sentry/http/models/Dsn;", "environment", "Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;", "contexts", "Lcom/stripe/spos/sentry/http/models/Contexts;", "customTags", "", "", "userAgent", "(Lcom/stripe/spos/sentry/http/models/Dsn;Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;Lcom/stripe/spos/sentry/http/models/Contexts;Ljava/util/Map;Ljava/lang/String;)V", "getContexts", "()Lcom/stripe/spos/sentry/http/models/Contexts;", "getCustomTags", "()Ljava/util/Map;", "getDsn", "()Lcom/stripe/spos/sentry/http/models/Dsn;", "getEnvironment", "()Lcom/stripe/spos/sentry/http/models/EnvironmentConfig;", "getUserAgent", "()Ljava/lang/String;", "component1", "component2", "component3", "component4", "component5", "copy", "createAuthHeader", "timestamp", "Lkotlinx/datetime/Instant;", "createAuthHeader$sentry_http", "equals", "", "other", "hashCode", "", "toString", "formatEpochDecimalSeconds", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class SentryConfig {
    private final Contexts contexts;
    private final Map<String, String> customTags;
    private final Dsn dsn;
    private final EnvironmentConfig environment;
    private final String userAgent;

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ SentryConfig copy$default(SentryConfig sentryConfig, Dsn dsn, EnvironmentConfig environmentConfig, Contexts contexts, Map map, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            dsn = sentryConfig.dsn;
        }
        if ((i & 2) != 0) {
            environmentConfig = sentryConfig.environment;
        }
        if ((i & 4) != 0) {
            contexts = sentryConfig.contexts;
        }
        if ((i & 8) != 0) {
            map = sentryConfig.customTags;
        }
        if ((i & 16) != 0) {
            str = sentryConfig.userAgent;
        }
        String str2 = str;
        Contexts contexts2 = contexts;
        return sentryConfig.copy(dsn, environmentConfig, contexts2, map, str2);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Dsn getDsn() {
        return this.dsn;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final EnvironmentConfig getEnvironment() {
        return this.environment;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Contexts getContexts() {
        return this.contexts;
    }

    public final Map<String, String> component4() {
        return this.customTags;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getUserAgent() {
        return this.userAgent;
    }

    public final SentryConfig copy(Dsn dsn, EnvironmentConfig environment, Contexts contexts, Map<String, String> customTags, String userAgent) {
        Intrinsics.checkNotNullParameter(dsn, "dsn");
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(contexts, "contexts");
        Intrinsics.checkNotNullParameter(customTags, "customTags");
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        return new SentryConfig(dsn, environment, contexts, customTags, userAgent);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SentryConfig)) {
            return false;
        }
        SentryConfig sentryConfig = (SentryConfig) other;
        return Intrinsics.areEqual(this.dsn, sentryConfig.dsn) && Intrinsics.areEqual(this.environment, sentryConfig.environment) && Intrinsics.areEqual(this.contexts, sentryConfig.contexts) && Intrinsics.areEqual(this.customTags, sentryConfig.customTags) && Intrinsics.areEqual(this.userAgent, sentryConfig.userAgent);
    }

    public int hashCode() {
        return (((((((this.dsn.hashCode() * 31) + this.environment.hashCode()) * 31) + this.contexts.hashCode()) * 31) + this.customTags.hashCode()) * 31) + this.userAgent.hashCode();
    }

    public String toString() {
        return "SentryConfig(dsn=" + this.dsn + ", environment=" + this.environment + ", contexts=" + this.contexts + ", customTags=" + this.customTags + ", userAgent=" + this.userAgent + ')';
    }

    public SentryConfig(Dsn dsn, EnvironmentConfig environment, Contexts contexts, Map<String, String> customTags, String userAgent) {
        Intrinsics.checkNotNullParameter(dsn, "dsn");
        Intrinsics.checkNotNullParameter(environment, "environment");
        Intrinsics.checkNotNullParameter(contexts, "contexts");
        Intrinsics.checkNotNullParameter(customTags, "customTags");
        Intrinsics.checkNotNullParameter(userAgent, "userAgent");
        this.dsn = dsn;
        this.environment = environment;
        this.contexts = contexts;
        this.customTags = customTags;
        this.userAgent = userAgent;
    }

    public final Dsn getDsn() {
        return this.dsn;
    }

    public final EnvironmentConfig getEnvironment() {
        return this.environment;
    }

    public final Contexts getContexts() {
        return this.contexts;
    }

    public /* synthetic */ SentryConfig(Dsn dsn, EnvironmentConfig environmentConfig, Contexts contexts, Map map, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(dsn, environmentConfig, contexts, (i & 8) != 0 ? MapsKt.emptyMap() : map, (i & 16) != 0 ? "Stripe-Sentry (jvm)" : str);
    }

    public final Map<String, String> getCustomTags() {
        return this.customTags;
    }

    public final String getUserAgent() {
        return this.userAgent;
    }

    public final String createAuthHeader$sentry_http(Instant timestamp) {
        Intrinsics.checkNotNullParameter(timestamp, "timestamp");
        return "Sentry " + CollectionsKt.joinToString$default(CollectionsKt.listOf((Object[]) new Pair[]{TuplesKt.to("sentry_key", this.dsn.getKey()), TuplesKt.to("sentry_version", "7"), TuplesKt.to("sentry_timestamp", formatEpochDecimalSeconds(timestamp)), TuplesKt.to("sentry_client", this.userAgent)}), null, null, null, 0, null, new Function1<Pair<? extends String, ? extends String>, CharSequence>() { // from class: com.stripe.spos.sentry.http.SentryConfig$createAuthHeader$1
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final CharSequence invoke2(Pair<String, String> pair) {
                Intrinsics.checkNotNullParameter(pair, "<name for destructuring parameter 0>");
                return pair.component1() + '=' + pair.component2();
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ CharSequence invoke(Pair<? extends String, ? extends String> pair) {
                return invoke2((Pair<String, String>) pair);
            }
        }, 31, null);
    }

    private final String formatEpochDecimalSeconds(Instant instant) {
        long epochMilliseconds = instant.toEpochMilliseconds();
        Duration.Companion companion = Duration.INSTANCE;
        return new StringBuilder().append(instant.getEpochSeconds()).append('.').append(epochMilliseconds - Duration.m2190getInWholeMillisecondsimpl(DurationKt.toDuration(instant.getEpochSeconds(), DurationUnit.SECONDS))).toString();
    }
}
