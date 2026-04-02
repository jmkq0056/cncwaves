package com.stripe.stripeterminal.dagger;

import android.content.Context;
import android.location.LocationManager;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.introspection.LocationServicesValidator;
import com.stripe.stripeterminal.internal.common.validators.PermissionsValidator;
import dagger.Module;
import dagger.Provides;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PermissionsModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007J\u0012\u0010\u0007\u001a\u00020\b2\b\b\u0001\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/dagger/PermissionsModule;", "", "()V", "provideLocationServicesValidator", "Lcom/stripe/stripeterminal/internal/common/introspection/LocationServicesValidator;", "context", "Landroid/content/Context;", "providePermissionsValidator", "Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class PermissionsModule {
    @Provides
    @Singleton
    public final LocationServicesValidator provideLocationServicesValidator(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new LocationServicesValidator(context) { // from class: com.stripe.stripeterminal.dagger.PermissionsModule.provideLocationServicesValidator.1
            private final LocationManager locationManager;

            {
                this.locationManager = (LocationManager) context.getSystemService(FirebaseAnalytics.Param.LOCATION);
            }

            @Override // com.stripe.stripeterminal.internal.common.introspection.LocationServicesValidator
            public void validateLocationServices() throws TerminalException {
                LocationManager locationManager = this.locationManager;
                if (locationManager == null || !(locationManager.isProviderEnabled("gps") || locationManager.isProviderEnabled("network"))) {
                    throw new TerminalException(TerminalErrorCode.LOCATION_SERVICES_DISABLED, "Location services must be enabled to use Terminal", null, null, 12, null);
                }
            }
        };
    }

    @Provides
    public final PermissionsValidator providePermissionsValidator(@ForApplication Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new PermissionsValidator(context);
    }
}
