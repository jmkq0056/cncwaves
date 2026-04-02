package com.stripe.jvmcore.terminal.requestfactories.accessibility;

import com.stripe.proto.api.sdk.GetReaderSettingsRequest;
import com.stripe.proto.api.sdk.SetReaderSettingsRequest;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultAccessibilityJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/DefaultAccessibilityJackRabbitApiFactory;", "Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;", "()V", "getReaderSettings", "Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;", "setReaderSettings", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;", "params", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultAccessibilityJackRabbitApiFactory implements AccessibilityJackRabbitApiFactory {
    @Override // com.stripe.jvmcore.terminal.requestfactories.accessibility.AccessibilityJackRabbitApiFactory
    public SetReaderSettingsRequest setReaderSettings(ReaderSettingsParameters params) {
        Intrinsics.checkNotNullParameter(params, "params");
        if (params instanceof ReaderSettingsParameters.AccessibilityParameters) {
            return new SetReaderSettingsRequest(new SetReaderSettingsRequest.AccessibilityParameters(((ReaderSettingsParameters.AccessibilityParameters) params).getTextToSpeechViaSpeakers(), null, 2, null), null, 2, null);
        }
        throw new NoWhenBranchMatchedException();
    }

    @Override // com.stripe.jvmcore.terminal.requestfactories.accessibility.AccessibilityJackRabbitApiFactory
    public GetReaderSettingsRequest getReaderSettings() {
        return new GetReaderSettingsRequest(null, 1, null);
    }
}
