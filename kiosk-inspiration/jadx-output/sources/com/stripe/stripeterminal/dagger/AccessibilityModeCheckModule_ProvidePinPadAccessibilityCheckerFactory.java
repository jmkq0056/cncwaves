package com.stripe.stripeterminal.dagger;

import com.stripe.core.bbpos.hardware.PinPadAccessibilityChecker;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public final class AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory implements Factory<PinPadAccessibilityChecker> {
    private final AccessibilityModeCheckModule module;

    public AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory(AccessibilityModeCheckModule accessibilityModeCheckModule) {
        this.module = accessibilityModeCheckModule;
    }

    @Override // javax.inject.Provider
    public PinPadAccessibilityChecker get() {
        return providePinPadAccessibilityChecker(this.module);
    }

    public static AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory create(AccessibilityModeCheckModule accessibilityModeCheckModule) {
        return new AccessibilityModeCheckModule_ProvidePinPadAccessibilityCheckerFactory(accessibilityModeCheckModule);
    }

    public static PinPadAccessibilityChecker providePinPadAccessibilityChecker(AccessibilityModeCheckModule accessibilityModeCheckModule) {
        return (PinPadAccessibilityChecker) Preconditions.checkNotNullFromProvides(accessibilityModeCheckModule.providePinPadAccessibilityChecker());
    }
}
