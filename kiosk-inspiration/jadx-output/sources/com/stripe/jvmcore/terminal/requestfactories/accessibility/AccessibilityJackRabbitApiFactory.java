package com.stripe.jvmcore.terminal.requestfactories.accessibility;

import com.stripe.proto.api.sdk.GetReaderSettingsRequest;
import com.stripe.proto.api.sdk.SetReaderSettingsRequest;
import com.stripe.stripeterminal.external.models.ReaderSettingsParameters;
import kotlin.Metadata;

/* JADX INFO: compiled from: AccessibilityJackRabbitApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\u0010\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/accessibility/AccessibilityJackRabbitApiFactory;", "", "getReaderSettings", "Lcom/stripe/proto/api/sdk/GetReaderSettingsRequest;", "setReaderSettings", "Lcom/stripe/proto/api/sdk/SetReaderSettingsRequest;", "params", "Lcom/stripe/stripeterminal/external/models/ReaderSettingsParameters;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface AccessibilityJackRabbitApiFactory {
    GetReaderSettingsRequest getReaderSettings();

    SetReaderSettingsRequest setReaderSettings(ReaderSettingsParameters params);
}
