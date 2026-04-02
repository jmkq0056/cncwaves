package com.stripe.core.bbpos;

import com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController;
import com.stripe.core.bbpos.hardware.BBPOSLogHelper;
import com.stripe.core.featureflag.dagger.DebugLogsShouldBeSentToSplunk;
import com.stripe.core.hardware.updates.ReaderUpdateListener;
import com.stripe.core.stripeterminal.log.AndroidLog;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import java.util.Hashtable;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: BbposOtaListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0003\b\u0007\u0018\u0000 .2\u00020\u0001:\u0001.B'\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\b\u0001\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tB3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0016\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bj\u0002`\u000e\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\u000fJ6\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0016\b\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001b2\n\b\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0002J\u001c\u0010\u001e\u001a\u00020\u00172\b\u0010\u001f\u001a\u0004\u0018\u00010\u00192\b\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J\u001c\u0010!\u001a\u00020\u00172\b\u0010\u001f\u001a\u0004\u0018\u00010\u00192\b\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J\u001e\u0010\"\u001a\u00020\u00172\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020#\u0018\u00010\u001bH\u0016J\u0010\u0010$\u001a\u00020\u00172\u0006\u0010%\u001a\u00020&H\u0016J\u001c\u0010'\u001a\u00020\u00172\b\u0010\u001f\u001a\u0004\u0018\u00010\u00192\b\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J\u001c\u0010(\u001a\u00020\u00172\b\u0010\u001f\u001a\u0004\u0018\u00010\u00192\b\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J\u001c\u0010)\u001a\u00020\u00172\b\u0010\u001f\u001a\u0004\u0018\u00010\u00192\b\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J\u001c\u0010*\u001a\u00020\u00172\b\u0010\u001f\u001a\u0004\u0018\u00010\u00192\b\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J8\u0010+\u001a\u00020\u00172\b\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u001a\u0010\u001a\u001a\u0016\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c0\u001b\u0018\u00010,2\b\u0010 \u001a\u0004\u0018\u00010\u001cH\u0016J(\u0010-\u001a\u00020\u00172\b\u0010\u001f\u001a\u0004\u0018\u00010\u00192\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u001c\u0018\u00010\u001bH\u0016R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bj\u0002`\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0080.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006/"}, d2 = {"Lcom/stripe/core/bbpos/BbposOtaListener;", "Lcom/bbpos/bbdevice/ota/BBDeviceOTAController$BBDeviceOTAControllerListener;", "updateListener", "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;", "debugLogsShouldBeSentToSplunk", "Ljavax/inject/Provider;", "", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "(Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Ljavax/inject/Provider;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/core/hardware/updates/ReaderUpdateListener;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Ljavax/inject/Provider;)V", "updateController", "Lcom/stripe/core/bbpos/BbposReaderUpdateController;", "getUpdateController$sdk_release", "()Lcom/stripe/core/bbpos/BbposReaderUpdateController;", "setUpdateController$sdk_release", "(Lcom/stripe/core/bbpos/BbposReaderUpdateController;)V", "handleOTAResultError", "", "result", "Lcom/bbpos/bbdevice/ota/BBDeviceOTAController$OTAResult;", "data", "Ljava/util/Hashtable;", "", "message", "onReturnLocalConfigUpdateResult", "otaResult", "responseMessage", "onReturnLocalFirmwareUpdateResult", "onReturnOTADebugLog", "", "onReturnOTAProgress", "percentage", "", "onReturnRemoteConfigUpdateResult", "onReturnRemoteFirmwareUpdateResult", "onReturnRemoteKeyInjectionResult", "onReturnSetTargetVersionResult", "onReturnTargetVersionListResult", "", "onReturnTargetVersionResult", "Companion", "sdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposOtaListener implements BBDeviceOTAController.BBDeviceOTAControllerListener {
    private static final String TAG = "BbposOtaListener";
    private final Provider<Boolean> debugLogsShouldBeSentToSplunk;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    public BbposReaderUpdateController updateController;
    private final ReaderUpdateListener updateListener;

    /* JADX INFO: compiled from: BbposOtaListener.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[BBDeviceOTAController.OTAResult.values().length];
            try {
                iArr[BBDeviceOTAController.OTAResult.SUCCESS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[BBDeviceOTAController.OTAResult.NO_UPDATE_REQUIRED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[BBDeviceOTAController.OTAResult.BATTERY_LOW_ERROR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[BBDeviceOTAController.OTAResult.DEVICE_COMM_ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[BBDeviceOTAController.OTAResult.SERVER_COMM_ERROR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[BBDeviceOTAController.OTAResult.FAILED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[BBDeviceOTAController.OTAResult.STOPPED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[BBDeviceOTAController.OTAResult.SETUP_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[BBDeviceOTAController.OTAResult.INCOMPATIBLE_FIRMWARE_HEX.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[BBDeviceOTAController.OTAResult.INCOMPATIBLE_CONFIG_HEX.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController.BBDeviceOTAControllerListener
    public void onReturnLocalConfigUpdateResult(BBDeviceOTAController.OTAResult oTAResult, String str) {
    }

    @Override // com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController.BBDeviceOTAControllerListener
    public void onReturnLocalFirmwareUpdateResult(BBDeviceOTAController.OTAResult oTAResult, String str) {
    }

    @Override // com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController.BBDeviceOTAControllerListener
    public void onReturnTargetVersionListResult(BBDeviceOTAController.OTAResult oTAResult, List<Hashtable<String, String>> list, String str) {
    }

    public BbposOtaListener(ReaderUpdateListener updateListener, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger, Provider<Boolean> debugLogsShouldBeSentToSplunk) {
        Intrinsics.checkNotNullParameter(updateListener, "updateListener");
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(debugLogsShouldBeSentToSplunk, "debugLogsShouldBeSentToSplunk");
        this.updateListener = updateListener;
        this.logger = logger;
        this.debugLogsShouldBeSentToSplunk = debugLogsShouldBeSentToSplunk;
    }

    public final BbposReaderUpdateController getUpdateController$sdk_release() {
        BbposReaderUpdateController bbposReaderUpdateController = this.updateController;
        if (bbposReaderUpdateController != null) {
            return bbposReaderUpdateController;
        }
        Intrinsics.throwUninitializedPropertyAccessException("updateController");
        return null;
    }

    public final void setUpdateController$sdk_release(BbposReaderUpdateController bbposReaderUpdateController) {
        Intrinsics.checkNotNullParameter(bbposReaderUpdateController, "<set-?>");
        this.updateController = bbposReaderUpdateController;
    }

    @Override // com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController.BBDeviceOTAControllerListener
    public void onReturnOTADebugLog(Hashtable<String, Object> data) {
        String logString = BBPOSLogHelper.INSTANCE.toLogString(data);
        Boolean bool = this.debugLogsShouldBeSentToSplunk.get();
        Intrinsics.checkNotNullExpressionValue(bool, "get(...)");
        if (bool.booleanValue()) {
            this.logger.i("onReturnOTADebugLog: " + logString, new Pair[0]);
        } else {
            AndroidLog.INSTANCE.i(TAG, "onReturnOTADebugLog: " + logString);
        }
    }

    @Override // com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController.BBDeviceOTAControllerListener
    public void onReturnTargetVersionResult(BBDeviceOTAController.OTAResult oTAResult, Hashtable<String, String> hashtable) {
        AndroidLog.INSTANCE.i(TAG, "onReturnTargetVersionResult");
        int i = oTAResult == null ? -1 : WhenMappings.$EnumSwitchMapping$0[oTAResult.ordinal()];
        if (i == 1) {
            this.updateListener.handleTargetReaderVersion(ReaderVersionMaker.INSTANCE.fromBbposData$sdk_release(hashtable));
        } else if (i == 2) {
            this.updateListener.handleTargetReaderVersion(null);
        } else {
            handleOTAResultError$default(this, oTAResult, hashtable, null, 4, null);
        }
    }

    @Override // com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController.BBDeviceOTAControllerListener
    public void onReturnSetTargetVersionResult(BBDeviceOTAController.OTAResult oTAResult, String str) {
        AndroidLog.INSTANCE.i(TAG, "onReturnSetTargetVersionResult");
        int i = oTAResult == null ? -1 : WhenMappings.$EnumSwitchMapping$0[oTAResult.ordinal()];
        if (i == 1 || i == 2) {
            getUpdateController$sdk_release().onSetTargetVersion();
        } else {
            handleOTAResultError$default(this, oTAResult, null, str, 2, null);
        }
    }

    @Override // com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController.BBDeviceOTAControllerListener
    public void onReturnRemoteKeyInjectionResult(BBDeviceOTAController.OTAResult oTAResult, String str) {
        AndroidLog.INSTANCE.i(TAG, "onReturnRemoteKeyInjectionResult");
        int i = oTAResult == null ? -1 : WhenMappings.$EnumSwitchMapping$0[oTAResult.ordinal()];
        if (i == 1 || i == 2) {
            this.updateListener.handleKeyUpdateComplete();
        } else {
            handleOTAResultError$default(this, oTAResult, null, str, 2, null);
        }
    }

    @Override // com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController.BBDeviceOTAControllerListener
    public void onReturnRemoteFirmwareUpdateResult(BBDeviceOTAController.OTAResult oTAResult, String str) {
        AndroidLog.INSTANCE.i(TAG, "onReturnRemoteFirmwareUpdateResult");
        int i = oTAResult == null ? -1 : WhenMappings.$EnumSwitchMapping$0[oTAResult.ordinal()];
        if (i == 1 || i == 2) {
            this.updateListener.handleFirmwareUpdateComplete();
        } else {
            handleOTAResultError$default(this, oTAResult, null, str, 2, null);
        }
    }

    @Override // com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController.BBDeviceOTAControllerListener
    public void onReturnRemoteConfigUpdateResult(BBDeviceOTAController.OTAResult oTAResult, String str) {
        AndroidLog.INSTANCE.i(TAG, "onReturnRemoteConfigUpdateResult");
        int i = oTAResult == null ? -1 : WhenMappings.$EnumSwitchMapping$0[oTAResult.ordinal()];
        if (i == 1 || i == 2) {
            this.updateListener.handleConfigUpdateComplete();
        } else {
            handleOTAResultError$default(this, oTAResult, null, str, 2, null);
        }
    }

    @Override // com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController.BBDeviceOTAControllerListener
    public void onReturnOTAProgress(double percentage) {
        AndroidLog.INSTANCE.i(TAG, "onReturnOTAProgress(" + percentage + ')');
        this.updateListener.handleUpdateProgress(((float) percentage) / 100);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void handleOTAResultError$default(BbposOtaListener bbposOtaListener, BBDeviceOTAController.OTAResult oTAResult, Hashtable hashtable, String str, int i, Object obj) {
        if ((i & 2) != 0) {
            hashtable = null;
        }
        if ((i & 4) != 0) {
            str = null;
        }
        bbposOtaListener.handleOTAResultError(oTAResult, hashtable, str);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0071  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void handleOTAResultError(com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController.OTAResult r17, final java.util.Hashtable<java.lang.String, java.lang.String> r18, java.lang.String r19) {
        /*
            Method dump skipped, instruction units count: 232
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.core.bbpos.BbposOtaListener.handleOTAResultError(com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController$OTAResult, java.util.Hashtable, java.lang.String):void");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @Inject
    public BbposOtaListener(ReaderUpdateListener updateListener, @DebugLogsShouldBeSentToSplunk Provider<Boolean> debugLogsShouldBeSentToSplunk, LoggerFactory loggerFactory) {
        this(updateListener, loggerFactory.create(Reflection.getOrCreateKotlinClass(BbposOtaListener.class)), debugLogsShouldBeSentToSplunk);
        Intrinsics.checkNotNullParameter(updateListener, "updateListener");
        Intrinsics.checkNotNullParameter(debugLogsShouldBeSentToSplunk, "debugLogsShouldBeSentToSplunk");
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
    }
}
