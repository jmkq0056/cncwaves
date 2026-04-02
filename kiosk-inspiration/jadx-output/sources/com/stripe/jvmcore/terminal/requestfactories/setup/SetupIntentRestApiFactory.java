package com.stripe.jvmcore.terminal.requestfactories.setup;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.CancelSetupIntentRequest;
import com.stripe.proto.api.rest.CreateSetupIntentRequest;
import com.stripe.stripeterminal.external.models.SetupIntentCancellationParameters;
import com.stripe.stripeterminal.external.models.SetupIntentParameters;
import kotlin.Metadata;

/* JADX INFO: compiled from: SetupIntentRestApiFactory.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\nH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/terminal/requestfactories/setup/SetupIntentRestApiFactory;", "", "cancelSetupIntent", "Lcom/stripe/proto/api/rest/CancelSetupIntentRequest;", OfflineStorageConstantsKt.ID, "", "params", "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;", "createSetupIntent", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;", "terminal-requestfactories"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface SetupIntentRestApiFactory {
    CancelSetupIntentRequest cancelSetupIntent(String id, SetupIntentCancellationParameters params);

    CreateSetupIntentRequest createSetupIntent(SetupIntentParameters params);
}
