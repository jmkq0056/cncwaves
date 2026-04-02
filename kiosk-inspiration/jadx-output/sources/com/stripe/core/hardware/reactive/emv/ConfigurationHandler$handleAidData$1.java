package com.stripe.core.hardware.reactive.emv;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: ConfigurationHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.core.hardware.reactive.emv.ConfigurationHandler", f = "ConfigurationHandler.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1}, l = {191, 202}, m = "handleAidData$hardware_reactive_release", n = {"this", "updateMap", "aidMap", "updater", "entry", FirebaseAnalytics.Param.INDEX, "index$iv", "currentStep", "this", "updateMap", "aidMap", "updater", "index$iv", "currentStep"}, s = {"L$0", "L$1", "L$2", "L$3", "L$5", "L$6", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "I$0", "I$1"})
final class ConfigurationHandler$handleAidData$1 extends ContinuationImpl {
    int I$0;
    int I$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    Object L$5;
    Object L$6;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ ConfigurationHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ConfigurationHandler$handleAidData$1(ConfigurationHandler configurationHandler, Continuation<? super ConfigurationHandler$handleAidData$1> continuation) {
        super(continuation);
        this.this$0 = configurationHandler;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.handleAidData$hardware_reactive_release(null, null, null, this);
    }
}
