package com.stripe.stripeterminal.internal.common.resourcerepository;

import com.stripe.proto.terminal.clientlogger.pub.message.health.domains.offline.DiscreteScope;
import com.stripe.proto.terminal.clientlogger.pub.message.health.metrictype.Counter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: compiled from: DirectResourceRepositoryRouter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "T", "", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;", "it", "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/metrictype/Counter;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
final class DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1 extends Lambda implements Function2<DiscreteScope.Builder, Counter, Unit> {
    public static final DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1 INSTANCE = new DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1();

    public DirectResourceRepositoryRouter$doOnlineWithOptionalOfflineRetry$3$1() {
        super(2);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Unit invoke(DiscreteScope.Builder builder, Counter counter) {
        invoke2(builder, counter);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(DiscreteScope.Builder incrementCounter, Counter it) {
        Intrinsics.checkNotNullParameter(incrementCounter, "$this$incrementCounter");
        Intrinsics.checkNotNullParameter(it, "it");
        incrementCounter.online_transient_network_error = it;
    }
}
