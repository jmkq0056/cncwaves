package com.stripe.stripeterminal;

import com.stripe.stripeterminal.internal.common.appinfo.SdkApplicationInformationFactory;
import com.stripe.terminal.appinfo.ApplicationInformation;
import com.stripe.terminal.appinfo.ApplicationInformationProvider;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultApplicationInformationProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\b\u0010\f\u001a\u00020\u0007H\u0016R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/DefaultApplicationInformationProvider;", "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;", "lazySdkApplicationInformationFactory", "Ldagger/Lazy;", "Lcom/stripe/stripeterminal/internal/common/appinfo/SdkApplicationInformationFactory;", "(Ldagger/Lazy;)V", "sdkApplicationInformation", "Lcom/stripe/terminal/appinfo/ApplicationInformation;", "getSdkApplicationInformation", "()Lcom/stripe/terminal/appinfo/ApplicationInformation;", "sdkApplicationInformation$delegate", "Lkotlin/Lazy;", "get", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultApplicationInformationProvider implements ApplicationInformationProvider {

    /* JADX INFO: renamed from: sdkApplicationInformation$delegate, reason: from kotlin metadata */
    private final Lazy sdkApplicationInformation;

    public DefaultApplicationInformationProvider(final dagger.Lazy<SdkApplicationInformationFactory> lazySdkApplicationInformationFactory) {
        Intrinsics.checkNotNullParameter(lazySdkApplicationInformationFactory, "lazySdkApplicationInformationFactory");
        this.sdkApplicationInformation = LazyKt.lazy(new Function0<ApplicationInformation>() { // from class: com.stripe.stripeterminal.DefaultApplicationInformationProvider$sdkApplicationInformation$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ApplicationInformation invoke() {
                return lazySdkApplicationInformationFactory.get().create();
            }
        });
    }

    private final ApplicationInformation getSdkApplicationInformation() {
        return (ApplicationInformation) this.sdkApplicationInformation.getValue();
    }

    @Override // com.stripe.terminal.appinfo.ApplicationInformationProvider
    public ApplicationInformation get() {
        return getSdkApplicationInformation();
    }
}
