package com.stripe.stripeterminal.internal.common;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import androidx.core.content.ContextCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: LocationHandler.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\b\u0017\u0018\u0000 &2\u00020\u0001:\u0001&B\u0019\b\u0007\u0012\b\b\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020 H\u0003J\u0006\u0010$\u001a\u00020\"J\u0006\u0010%\u001a\u00020\"R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0012\u001a\u0004\u0018\u00010\t8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u0012\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u001c0\u001aj\u0002`\u001dX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/LocationHandler;", "", "context", "Landroid/content/Context;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Landroid/content/Context;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "appContext", "cachedLocation", "Landroid/location/Location;", "listeningToLocations", "", "getListeningToLocations$annotations", "()V", "getListeningToLocations", "()Z", "setListeningToLocations", "(Z)V", FirebaseAnalytics.Param.LOCATION, "getLocation", "()Landroid/location/Location;", "locationListener", "Landroid/location/LocationListener;", "locationManager", "Landroid/location/LocationManager;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "isPermissionGranted", "permission", "", "requestUpdates", "", "provider", "startListening", "stopListening", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class LocationHandler {
    private static final long MIN_TIME_DIFF_MS = 600000;
    private final Context appContext;
    private Location cachedLocation;
    private boolean listeningToLocations;
    private final LocationListener locationListener;
    private final LocationManager locationManager;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;

    public static /* synthetic */ void getListeningToLocations$annotations() {
    }

    @Inject
    public LocationHandler(@ForApplication Context context, LoggerFactory loggerFactory) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(LocationHandler.class));
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        this.appContext = applicationContext;
        Object systemService = context.getSystemService(FirebaseAnalytics.Param.LOCATION);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.location.LocationManager");
        this.locationManager = (LocationManager) systemService;
        this.locationListener = new LocationListener() { // from class: com.stripe.stripeterminal.internal.common.LocationHandler.1
            @Override // android.location.LocationListener
            public void onProviderDisabled(String s) {
                Intrinsics.checkNotNullParameter(s, "s");
            }

            @Override // android.location.LocationListener
            public void onProviderEnabled(String s) {
                Intrinsics.checkNotNullParameter(s, "s");
            }

            @Override // android.location.LocationListener
            public void onStatusChanged(String s, int i, Bundle bundle) {
                Intrinsics.checkNotNullParameter(s, "s");
                Intrinsics.checkNotNullParameter(bundle, "bundle");
            }

            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                Intrinsics.checkNotNullParameter(location, "location");
                LocationHandler.this.cachedLocation = location;
            }
        };
        startListening();
    }

    public final boolean getListeningToLocations() {
        return this.listeningToLocations;
    }

    public final void setListeningToLocations(boolean z) {
        this.listeningToLocations = z;
    }

    /* JADX INFO: renamed from: getLocation, reason: from getter */
    public Location getCachedLocation() {
        return this.cachedLocation;
    }

    public final void startListening() {
        if (this.listeningToLocations) {
            return;
        }
        this.logger.d("startListening", new Pair[0]);
        if (isPermissionGranted("android.permission.ACCESS_COARSE_LOCATION") && this.locationManager.isProviderEnabled("network")) {
            requestUpdates("network");
        }
        if (isPermissionGranted("android.permission.ACCESS_FINE_LOCATION")) {
            if (this.locationManager.isProviderEnabled("gps")) {
                requestUpdates("gps");
            }
            if (this.locationManager.isProviderEnabled("passive")) {
                requestUpdates("passive");
            }
        }
    }

    public final void stopListening() {
        this.logger.d("stopListening", new Pair[0]);
        this.locationManager.removeUpdates(this.locationListener);
        this.listeningToLocations = false;
    }

    private final void requestUpdates(String provider) {
        Location lastKnownLocation = this.locationManager.getLastKnownLocation(provider);
        if (lastKnownLocation != null) {
            this.cachedLocation = lastKnownLocation;
        }
        this.locationManager.requestLocationUpdates(provider, MIN_TIME_DIFF_MS, 0.0f, this.locationListener, Looper.getMainLooper());
        this.listeningToLocations = true;
    }

    private final boolean isPermissionGranted(String permission) {
        return ContextCompat.checkSelfPermission(this.appContext, permission) == 0;
    }
}
