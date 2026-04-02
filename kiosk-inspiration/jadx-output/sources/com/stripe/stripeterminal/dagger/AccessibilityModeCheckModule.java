package com.stripe.stripeterminal.dagger;

import com.stripe.core.bbpos.hardware.PinPadAccessibilityChecker;
import dagger.Module;
import dagger.Provides;
import dagger.Reusable;
import kotlin.Metadata;

/* JADX INFO: compiled from: AccessibilityModeCheckModule.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0001\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, d2 = {"Lcom/stripe/stripeterminal/dagger/AccessibilityModeCheckModule;", "", "()V", "providePinPadAccessibilityChecker", "Lcom/stripe/core/bbpos/hardware/PinPadAccessibilityChecker;", "sdkmanager_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class AccessibilityModeCheckModule {
    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean providePinPadAccessibilityChecker$lambda$0() {
        return false;
    }

    @Provides
    @Reusable
    public final PinPadAccessibilityChecker providePinPadAccessibilityChecker() {
        return new PinPadAccessibilityChecker() { // from class: com.stripe.stripeterminal.dagger.AccessibilityModeCheckModule$$ExternalSyntheticLambda0
            @Override // com.stripe.core.bbpos.hardware.PinPadAccessibilityChecker
            public final boolean isPinPadAccessible() {
                return AccessibilityModeCheckModule.providePinPadAccessibilityChecker$lambda$0();
            }
        };
    }
}
