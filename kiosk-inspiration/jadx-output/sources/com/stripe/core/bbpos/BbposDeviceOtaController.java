package com.stripe.core.bbpos;

import com.stripe.bbpos.bbdevice.ota.BBDeviceControllerNotSetException;
import com.stripe.bbpos.bbdevice.ota.BBDeviceNotConnectedException;
import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.bbpos.bbdevice.ota.NoInternetConnectionException;
import com.stripe.bbpos.bbdevice.ota.OTAServerURLNotSetException;
import java.util.Hashtable;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BbposDeviceOtaController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u001a\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\bJ\u001a\u0010\n\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\bJ\u001a\u0010\f\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\bJ\u001a\u0010\r\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\bJ\u001a\u0010\u000e\u001a\u00020\u00062\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010\bJ\u0006\u0010\u000f\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/stripe/core/bbpos/BbposDeviceOtaController;", "", "controller", "Lcom/bbpos/bbdevice/ota/BBDeviceOTAController;", "(Lcom/bbpos/bbdevice/ota/BBDeviceOTAController;)V", "getTargetVersionWithData", "", "data", "Ljava/util/Hashtable;", "", "setTargetVersionWithData", "input", "startRemoteConfigUpdate", "startRemoteFirmwareUpdate", "startRemoteKeyInjection", "stop", "sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposDeviceOtaController {
    private final BBDeviceOTAController controller;

    @Inject
    public BbposDeviceOtaController(BBDeviceOTAController controller) {
        Intrinsics.checkNotNullParameter(controller, "controller");
        this.controller = controller;
    }

    public final void getTargetVersionWithData(Hashtable<String, String> data) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        Intrinsics.checkNotNullParameter(data, "data");
        this.controller.getTargetVersionWithData(data);
    }

    public final void startRemoteConfigUpdate(Hashtable<String, Object> input) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        Intrinsics.checkNotNullParameter(input, "input");
        this.controller.startRemoteConfigUpdate(input);
    }

    public final void startRemoteFirmwareUpdate(Hashtable<String, Object> input) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        Intrinsics.checkNotNullParameter(input, "input");
        this.controller.startRemoteFirmwareUpdate(input);
    }

    public final void startRemoteKeyInjection(Hashtable<String, Object> input) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        Intrinsics.checkNotNullParameter(input, "input");
        this.controller.startRemoteKeyInjection(input);
    }

    public final void setTargetVersionWithData(Hashtable<String, Object> input) throws IllegalStateException, NoInternetConnectionException, BBDeviceControllerNotSetException, BBDeviceNotConnectedException, IllegalArgumentException, OTAServerURLNotSetException {
        Intrinsics.checkNotNullParameter(input, "input");
        this.controller.setTargetVersionWithData(input);
    }

    public final void stop() throws IllegalStateException {
        this.controller.stop();
    }
}
