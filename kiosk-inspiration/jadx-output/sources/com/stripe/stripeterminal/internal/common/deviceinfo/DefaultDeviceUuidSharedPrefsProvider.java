package com.stripe.stripeterminal.internal.common.deviceinfo;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DeviceUuidSharedPrefsProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 \f2\u00020\u0001:\u0001\fB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u000b\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\b¨\u0006\r"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider;", "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "sharedPrefs", "Landroid/content/SharedPreferences;", "getSharedPrefs", "()Landroid/content/SharedPreferences;", "sharedPrefs$delegate", "Lkotlin/Lazy;", "get", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultDeviceUuidSharedPrefsProvider implements DeviceUuidSharedPrefsProvider {
    private static final Companion Companion = new Companion(null);
    private static final String SHARED_PREFS = "stripe_terminal_shared_prefs";
    private final Context context;

    /* JADX INFO: renamed from: sharedPrefs$delegate, reason: from kotlin metadata */
    private final Lazy sharedPrefs;

    public DefaultDeviceUuidSharedPrefsProvider(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.sharedPrefs = LazyKt.lazy(new Function0<SharedPreferences>() { // from class: com.stripe.stripeterminal.internal.common.deviceinfo.DefaultDeviceUuidSharedPrefsProvider$sharedPrefs$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SharedPreferences invoke() {
                return this.this$0.context.getSharedPreferences("stripe_terminal_shared_prefs", 0);
            }
        });
    }

    private final SharedPreferences getSharedPrefs() {
        Object value = this.sharedPrefs.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (SharedPreferences) value;
    }

    @Override // com.stripe.stripeterminal.internal.common.deviceinfo.DeviceUuidSharedPrefsProvider
    public SharedPreferences get() {
        return getSharedPrefs();
    }

    /* JADX INFO: compiled from: DeviceUuidSharedPrefsProvider.kt */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0005"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidSharedPrefsProvider$Companion;", "", "()V", "SHARED_PREFS", "", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
