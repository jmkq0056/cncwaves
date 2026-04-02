package com.stripe.paymentcollection.metrics;

import com.stripe.hardware.emv.ApplicationId;
import com.stripe.hardware.emv.EmvTransactionType;
import com.stripe.hardware.emv.InterfaceType;
import com.stripe.hardware.emv.TlvMap;
import com.stripe.hardware.magstripe.MagStripePaymentCollectionAuthority;
import com.stripe.hardware.paymentcollection.TransactionType;
import com.stripe.jvmcore.logging.HealthLogger;
import com.stripe.jvmcore.logging.HealthLoggerBuilder;
import com.stripe.paymentcollection.PaymentCollectionData;
import com.stripe.paymentcollection.manualentry.ManualEntryData;
import com.stripe.proto.terminal.clientlogger.pub.message.health.HealthMetric;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.EndToEndScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.PaymentCollectionDomain;
import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.paymentcollection.StageScope;
import com.stripe.restclient.IntegrationType;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: Utils.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a,\u0010\u0000\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001j\u0002`\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0000\u001a,\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0001j\u0002`\f2\u0006\u0010\u0007\u001a\u00020\bH\u0000\u001a,\u0010\r\u001a\u001e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0001j\u0002`\u00102\u0006\u0010\u0007\u001a\u00020\bH\u0000\u001a8\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012j\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0013`\u00142\u0006\u0010\u0015\u001a\u00020\u00162\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0000\u001a8\u0010\u0011\u001a\u001e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u00130\u0012j\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0013`\u00142\u0006\u0010\u0015\u001a\u00020\u00192\n\b\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0000\u001a\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0015\u001a\u00020\u0016H\u0000\u001a\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0015\u001a\u00020\u0016H\u0000*:\u0010\u001e\"\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001*:\u0010\u001f\"\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u00012\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\u0001*<\b\u0000\u0010 \"\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0!2\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0!*:\u0010\"\"\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u00012\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\u0001¨\u0006#"}, d2 = {"buildsDiscreteHealthLogger", "Lcom/stripe/jvmcore/logging/HealthLogger;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/PaymentCollectionDomain$Builder;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/DiscreteScope$Builder;", "Lcom/stripe/paymentcollection/metrics/DiscreteHealthLogger;", "healthLoggerBuilder", "Lcom/stripe/jvmcore/logging/HealthLoggerBuilder;", "buildsEndToEndHealthLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/EndToEndScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/EndToEndScope$Builder;", "Lcom/stripe/paymentcollection/metrics/EndToEndHealthLogger;", "buildsStageHealthLogger", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope;", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/paymentcollection/StageScope$Builder;", "Lcom/stripe/paymentcollection/metrics/StageLogger;", "generateCommonTags", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "data", "Lcom/stripe/paymentcollection/PaymentCollectionData;", "latencyCategory", "Lcom/stripe/paymentcollection/metrics/LatencyCategory;", "Lcom/stripe/paymentcollection/manualentry/ManualEntryData;", "getApplicationId", "Lcom/stripe/hardware/emv/ApplicationId;", "getPaymentMethodType", "Lcom/stripe/paymentcollection/metrics/PaymentMethodType;", "DiscreteHealthLogger", "EndToEndHealthLogger", "PaymentCollectionStageEventLogger", "Lcom/stripe/paymentcollection/metrics/StageEventLogHelper;", "StageLogger", "impl_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class UtilsKt {
    public static final PaymentMethodType getPaymentMethodType(PaymentCollectionData data) {
        TlvMap tlvMap;
        Intrinsics.checkNotNullParameter(data, "data");
        String onlineAuthorizationData = data.getOnlineAuthorizationData();
        InterfaceType interfaceType = (onlineAuthorizationData == null || (tlvMap = TlvMap.INSTANCE.toTlvMap(onlineAuthorizationData)) == null) ? null : tlvMap.getInterfaceType();
        EmvTransactionType emvTransactionType = data.getEmvTransactionType();
        if (data.getShouldStartManualEntry()) {
            return PaymentMethodType.MANUAL_ENTRY;
        }
        if (data.getMagStripeReadResult() != null) {
            return PaymentMethodType.MAGSTRIPE;
        }
        if (interfaceType == InterfaceType.CONTACTLESS) {
            return PaymentMethodType.EMV_TAP;
        }
        if (interfaceType == InterfaceType.CONTACT && emvTransactionType == EmvTransactionType.QUICK) {
            return PaymentMethodType.EMV_INSERT_QUICK;
        }
        if (interfaceType == InterfaceType.CONTACT && emvTransactionType == EmvTransactionType.TRADITIONAL) {
            return PaymentMethodType.EMV_INSERT_FULL;
        }
        return PaymentMethodType.UNKNOWN;
    }

    public static final ApplicationId getApplicationId(PaymentCollectionData data) {
        TlvMap tlvMap;
        Intrinsics.checkNotNullParameter(data, "data");
        String onlineAuthorizationData = data.getOnlineAuthorizationData();
        if (onlineAuthorizationData == null || (tlvMap = TlvMap.INSTANCE.toTlvMap(onlineAuthorizationData)) == null) {
            return null;
        }
        return tlvMap.getApplicationId();
    }

    public static /* synthetic */ HashMap generateCommonTags$default(PaymentCollectionData paymentCollectionData, LatencyCategory latencyCategory, int i, Object obj) {
        if ((i & 2) != 0) {
            latencyCategory = null;
        }
        return generateCommonTags(paymentCollectionData, latencyCategory);
    }

    public static final HashMap<String, String> generateCommonTags(PaymentCollectionData data, LatencyCategory latencyCategory) {
        String simpleName;
        String simpleName2;
        String simpleName3;
        String simpleName4;
        Intrinsics.checkNotNullParameter(data, "data");
        HashMap<String, String> map = new HashMap<>();
        HashMap<String, String> map2 = map;
        PaymentMethodType paymentMethodType = getPaymentMethodType(data);
        String simpleName5 = "MagStripeAllowReason";
        if (paymentMethodType != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(PaymentMethodType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName4 = "MagStripeAllowReason";
            } else {
                simpleName4 = Reflection.getOrCreateKotlinClass(PaymentMethodType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName4);
            }
            map2.put(simpleName4, paymentMethodType.name());
        }
        TransactionType transactionType = data.getTransactionType();
        if (transactionType != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(TransactionType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName3 = "MagStripeAllowReason";
            } else {
                simpleName3 = Reflection.getOrCreateKotlinClass(TransactionType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName3);
            }
            map2.put(simpleName3, transactionType.name());
        }
        EmvTransactionType emvTransactionType = data.getEmvTransactionType();
        if (emvTransactionType != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(EmvTransactionType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName2 = "MagStripeAllowReason";
            } else {
                simpleName2 = Reflection.getOrCreateKotlinClass(EmvTransactionType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName2);
            }
            map2.put(simpleName2, emvTransactionType.name());
        }
        IntegrationType integrationType = data.getIntegrationType();
        if (integrationType != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(IntegrationType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(IntegrationType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            map2.put(simpleName, integrationType.name());
        }
        LatencyCategory latencyCategory2 = latencyCategory;
        if (latencyCategory2 == null) {
            return map;
        }
        if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(LatencyCategory.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
            simpleName5 = Reflection.getOrCreateKotlinClass(LatencyCategory.class).getSimpleName();
            Intrinsics.checkNotNull(simpleName5);
        }
        map2.put(simpleName5, latencyCategory2.name());
        return map;
    }

    public static /* synthetic */ HashMap generateCommonTags$default(ManualEntryData manualEntryData, LatencyCategory latencyCategory, int i, Object obj) {
        if ((i & 2) != 0) {
            latencyCategory = null;
        }
        return generateCommonTags(manualEntryData, latencyCategory);
    }

    public static final HashMap<String, String> generateCommonTags(ManualEntryData data, LatencyCategory latencyCategory) {
        String simpleName;
        String simpleName2;
        String simpleName3;
        String simpleName4;
        Intrinsics.checkNotNullParameter(data, "data");
        HashMap<String, String> map = new HashMap<>();
        HashMap<String, String> map2 = map;
        PaymentMethodType paymentMethodType = PaymentMethodType.MANUAL_ENTRY;
        String simpleName5 = "MagStripeAllowReason";
        if (paymentMethodType != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(PaymentMethodType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName4 = "MagStripeAllowReason";
            } else {
                simpleName4 = Reflection.getOrCreateKotlinClass(PaymentMethodType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName4);
            }
            map2.put(simpleName4, paymentMethodType.name());
        }
        TransactionType transactionType = data.getTransactionType();
        if (transactionType != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(TransactionType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName3 = "MagStripeAllowReason";
            } else {
                simpleName3 = Reflection.getOrCreateKotlinClass(TransactionType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName3);
            }
            map2.put(simpleName3, transactionType.name());
        }
        EmvTransactionType emvTransactionType = data.getEmvTransactionType();
        if (emvTransactionType != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(EmvTransactionType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName2 = "MagStripeAllowReason";
            } else {
                simpleName2 = Reflection.getOrCreateKotlinClass(EmvTransactionType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName2);
            }
            map2.put(simpleName2, emvTransactionType.name());
        }
        IntegrationType integrationType = data.getIntegrationType();
        if (integrationType != null) {
            if (Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(IntegrationType.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
                simpleName = "MagStripeAllowReason";
            } else {
                simpleName = Reflection.getOrCreateKotlinClass(IntegrationType.class).getSimpleName();
                Intrinsics.checkNotNull(simpleName);
            }
            map2.put(simpleName, integrationType.name());
        }
        LatencyCategory latencyCategory2 = latencyCategory;
        if (latencyCategory2 == null) {
            return map;
        }
        if (!Intrinsics.areEqual(Reflection.getOrCreateKotlinClass(LatencyCategory.class), Reflection.getOrCreateKotlinClass(MagStripePaymentCollectionAuthority.class))) {
            simpleName5 = Reflection.getOrCreateKotlinClass(LatencyCategory.class).getSimpleName();
            Intrinsics.checkNotNull(simpleName5);
        }
        map2.put(simpleName5, latencyCategory2.name());
        return map;
    }

    public static final HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, StageScope, StageScope.Builder> buildsStageHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, PaymentCollectionDomain.class, PaymentCollectionDomain.Builder.class, new Function2<HealthMetric.Builder, PaymentCollectionDomain, Unit>() { // from class: com.stripe.paymentcollection.metrics.UtilsKt.buildsStageHealthLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, PaymentCollectionDomain paymentCollectionDomain) {
                invoke2(builder, paymentCollectionDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, PaymentCollectionDomain domain) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(domain, "domain");
                withDomain.payment_collection = domain;
            }
        }), StageScope.class, StageScope.Builder.class, new Function2<PaymentCollectionDomain.Builder, StageScope, Unit>() { // from class: com.stripe.paymentcollection.metrics.UtilsKt.buildsStageHealthLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentCollectionDomain.Builder builder, StageScope stageScope) {
                invoke2(builder, stageScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentCollectionDomain.Builder withScope, StageScope scope) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(scope, "scope");
                withScope.stage = scope;
            }
        }).build();
    }

    public static final HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, DiscreteScope, DiscreteScope.Builder> buildsDiscreteHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, PaymentCollectionDomain.class, PaymentCollectionDomain.Builder.class, new Function2<HealthMetric.Builder, PaymentCollectionDomain, Unit>() { // from class: com.stripe.paymentcollection.metrics.UtilsKt.buildsDiscreteHealthLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, PaymentCollectionDomain paymentCollectionDomain) {
                invoke2(builder, paymentCollectionDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, PaymentCollectionDomain domain) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(domain, "domain");
                withDomain.payment_collection = domain;
            }
        }), DiscreteScope.class, DiscreteScope.Builder.class, new Function2<PaymentCollectionDomain.Builder, DiscreteScope, Unit>() { // from class: com.stripe.paymentcollection.metrics.UtilsKt.buildsDiscreteHealthLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentCollectionDomain.Builder builder, DiscreteScope discreteScope) {
                invoke2(builder, discreteScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentCollectionDomain.Builder withScope, DiscreteScope scope) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(scope, "scope");
                withScope.discrete = scope;
            }
        }).build();
    }

    public static final HealthLogger<PaymentCollectionDomain, PaymentCollectionDomain.Builder, EndToEndScope, EndToEndScope.Builder> buildsEndToEndHealthLogger(HealthLoggerBuilder healthLoggerBuilder) {
        Intrinsics.checkNotNullParameter(healthLoggerBuilder, "healthLoggerBuilder");
        return new HealthLoggerBuilder.DomainedBuilder.ScopedBuilder(new HealthLoggerBuilder.DomainedBuilder(healthLoggerBuilder, PaymentCollectionDomain.class, PaymentCollectionDomain.Builder.class, new Function2<HealthMetric.Builder, PaymentCollectionDomain, Unit>() { // from class: com.stripe.paymentcollection.metrics.UtilsKt.buildsEndToEndHealthLogger.1
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HealthMetric.Builder builder, PaymentCollectionDomain paymentCollectionDomain) {
                invoke2(builder, paymentCollectionDomain);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(HealthMetric.Builder withDomain, PaymentCollectionDomain domain) {
                Intrinsics.checkNotNullParameter(withDomain, "$this$withDomain");
                Intrinsics.checkNotNullParameter(domain, "domain");
                withDomain.payment_collection = domain;
            }
        }), EndToEndScope.class, EndToEndScope.Builder.class, new Function2<PaymentCollectionDomain.Builder, EndToEndScope, Unit>() { // from class: com.stripe.paymentcollection.metrics.UtilsKt.buildsEndToEndHealthLogger.2
            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(PaymentCollectionDomain.Builder builder, EndToEndScope endToEndScope) {
                invoke2(builder, endToEndScope);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(PaymentCollectionDomain.Builder withScope, EndToEndScope scope) {
                Intrinsics.checkNotNullParameter(withScope, "$this$withScope");
                Intrinsics.checkNotNullParameter(scope, "scope");
                withScope.end_to_end = scope;
            }
        }).build();
    }
}
