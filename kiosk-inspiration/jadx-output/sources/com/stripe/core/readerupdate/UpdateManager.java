package com.stripe.core.readerupdate;

import com.stripe.core.readerupdate.UpdateSummary;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.stripe.proto.model.common.ClientVersionSpecPb;
import com.stripe.proto.model.config.MobileClientConfig;
import com.stripe.proto.terminal.terminal.pub.message.common.ImageRef;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;

/* JADX INFO: compiled from: UpdateManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\tJB\u0010\u000b\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015R\u001e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0004@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0017"}, d2 = {"Lcom/stripe/core/readerupdate/UpdateManager;", "", "()V", "<set-?>", "Lcom/stripe/core/readerupdate/UpdateSummary;", "summary", "getSummary", "()Lcom/stripe/core/readerupdate/UpdateSummary;", "endOperation", "", "startCheckForUpdates", "startInstallUpdate", "fullConfig", "Lcom/stripe/proto/model/config/MobileClientConfig;", "configSpec", "Lcom/stripe/proto/model/common/ClientVersionSpecPb;", "firmwareSpec", "keyProfileName", "", "settingsVersion", "imageRef", "Lcom/stripe/proto/terminal/terminal/pub/message/common/ImageRef;", "Companion", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateManager {
    public static final String TAG = "UpdateManager";
    private UpdateSummary summary = new UpdateSummary.Builder(UpdateState.NONE).build();

    @Inject
    public UpdateManager() {
    }

    public final UpdateSummary getSummary() {
        return this.summary;
    }

    public final void startCheckForUpdates() {
        AndroidLog.INSTANCE.i(TAG, "startCheckForUpdates");
        this.summary = new UpdateSummary.Builder(UpdateState.CHECKING_FOR_UPDATE).build();
    }

    public final void startInstallUpdate(MobileClientConfig fullConfig, ClientVersionSpecPb configSpec, ClientVersionSpecPb firmwareSpec, String keyProfileName, String settingsVersion, ImageRef imageRef) {
        AndroidLog.INSTANCE.i(TAG, "startInstallUpdate");
        this.summary = new UpdateSummary.Builder(UpdateState.INSTALLING_UPDATE).setFullConfig(fullConfig).setConfigSpec(configSpec).setFirmwareSpec(firmwareSpec).setKeyProfileName(keyProfileName).setSettingsVersion(settingsVersion).setImageRef(imageRef).build();
    }

    public final void endOperation() {
        AndroidLog.INSTANCE.i(TAG, "endOperation");
        this.summary = new UpdateSummary.Builder(UpdateState.NONE).build();
    }
}
