package com.stripe.jvmcore.environment;

import com.stripe.proto.model.rest.TerminalUserAgent;
import com.stripe.proto.model.rest.UserAgent;
import com.stripe.wirecrpc.moshiutils.MoshiExt;
import java.util.Map;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Environment.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0018\n\u0002\u0010$\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u001a\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u001a2\u0006\u0010\u001b\u001a\u00020\u0001\u001a\u001a\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u001a2\u0006\u0010\u001d\u001a\u00020\u0001\u001a\u0016\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u001a*\u00020\u001f\u001a\u001e\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00010\u001a*\u00020 2\u0006\u0010!\u001a\u00020\"\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0003\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\n\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0014\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0017\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"CERTHORSE_ARMADA_API_URL", "", "CERTHORSE_CLIENT_LOGGER_API_URL", "CERTHORSE_FILES_API_URL", "CERTHORSE_GATOR_API_URL", "CERTHORSE_STRIPE_API_URL", "CERTHORSE_WARDEN_API_URL", "PREPROD_ARMADA_API_URL", "PREPROD_CLIENT_LOGGER_API_URL", "PREPROD_FILES_API_URL", "PREPROD_GATOR_API_URL", "PREPROD_STRIPE_API_URL", "PREPROD_WARDEN_API_URL", "PROD_ARMADA_API_URL", "PROD_CLIENT_LOGGER_API_URL", "PROD_FILES_API_URL", "PROD_GATOR_API_URL", "PROD_STRIPE_API_URL", "PROD_WARDEN_API_URL", "QA_ARMADA_API_URL", "QA_CLIENT_LOGGER_API_URL", "QA_FILES_API_URL", "QA_GATOR_API_URL", "QA_STRIPE_API_URL", "QA_WARDEN_API_URL", "certhorseInstanceHeaders", "", "instance", "stripeTraceHeader", "clientTraceId", "toRequestHeaders", "Lcom/stripe/proto/model/rest/TerminalUserAgent;", "Lcom/stripe/proto/model/rest/UserAgent;", "includeStripeVersion", "", "environment"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class EnvironmentKt {
    private static final String CERTHORSE_ARMADA_API_URL = "https://qa-certfe.cert.stripe.me";
    private static final String CERTHORSE_CLIENT_LOGGER_API_URL = "https://qa-certfe.cert.stripe.me";
    private static final String CERTHORSE_FILES_API_URL = "https://qa-certfe.cert.stripe.me";
    private static final String CERTHORSE_GATOR_API_URL = "https://qa-certfe.cert.stripe.me";
    private static final String CERTHORSE_STRIPE_API_URL = "https://qa-certfe.cert.stripe.me";
    private static final String CERTHORSE_WARDEN_API_URL = "https://qa-certfe.cert.stripe.me";
    private static final String PREPROD_ARMADA_API_URL = "https://preprod-armada.stripe.com";
    private static final String PREPROD_CLIENT_LOGGER_API_URL = "https://preprod-gator.stripe.com";
    private static final String PREPROD_FILES_API_URL = "https://preprod-files.stripe.com";
    private static final String PREPROD_GATOR_API_URL = "https://preprod-gator.stripe.com";
    private static final String PREPROD_STRIPE_API_URL = "https://preprod-api.stripe.com";
    private static final String PREPROD_WARDEN_API_URL = "https://preprod-armada.stripe.com";
    private static final String PROD_ARMADA_API_URL = "https://armada.stripe.com";
    private static final String PROD_CLIENT_LOGGER_API_URL = "https://gator.stripe.com";
    private static final String PROD_FILES_API_URL = "https://files.stripe.com";
    private static final String PROD_GATOR_API_URL = "https://gator.stripe.com";
    private static final String PROD_STRIPE_API_URL = "https://api.stripe.com";
    private static final String PROD_WARDEN_API_URL = "https://armada.stripe.com";
    private static final String QA_ARMADA_API_URL = "https://qa-armada.stripe.com";
    private static final String QA_CLIENT_LOGGER_API_URL = "https://qa-gator.stripe.com";
    private static final String QA_FILES_API_URL = "https://qa-files.stripe.com";
    private static final String QA_GATOR_API_URL = "https://qa-gator.stripe.com";
    private static final String QA_STRIPE_API_URL = "https://qa-api.stripe.com";
    private static final String QA_WARDEN_API_URL = "https://qa-armada.stripe.com";

    public static final Map<String, String> certhorseInstanceHeaders(String instance) {
        Intrinsics.checkNotNullParameter(instance, "instance");
        return MapsKt.mapOf(TuplesKt.to("certification-env", instance));
    }

    public static final Map<String, String> stripeTraceHeader(String clientTraceId) {
        Intrinsics.checkNotNullParameter(clientTraceId, "clientTraceId");
        return MapsKt.mapOf(TuplesKt.to("X-Stripe-Client-Trace-Id", clientTraceId));
    }

    public static final Map<String, String> toRequestHeaders(UserAgent userAgent, boolean z) {
        Intrinsics.checkNotNullParameter(userAgent, "<this>");
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        mapCreateMapBuilder.put("User-Agent", MoshiExt.INSTANCE.toJsonWithSnakeCaseFieldNames(userAgent));
        if (z) {
            mapCreateMapBuilder.put("Stripe-Version", "2019-02-19");
        }
        return MapsKt.build(mapCreateMapBuilder);
    }

    public static final Map<String, String> toRequestHeaders(TerminalUserAgent terminalUserAgent) {
        Intrinsics.checkNotNullParameter(terminalUserAgent, "<this>");
        return MapsKt.mapOf(TuplesKt.to("X-Stripe-Terminal-User-Agent", MoshiExt.INSTANCE.toJsonWithSnakeCaseFieldNames(terminalUserAgent)));
    }
}
