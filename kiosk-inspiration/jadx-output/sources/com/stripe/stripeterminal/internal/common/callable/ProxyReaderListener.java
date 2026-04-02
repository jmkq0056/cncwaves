package com.stripe.stripeterminal.internal.common.callable;

import androidx.core.app.NotificationCompat;
import com.stripe.jvmcore.logging.terminal.log.LoggerFactory;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.callable.Cancelable;
import com.stripe.stripeterminal.external.callable.HandoffReaderListener;
import com.stripe.stripeterminal.external.callable.InternetReaderListener;
import com.stripe.stripeterminal.external.callable.MobileReaderListener;
import com.stripe.stripeterminal.external.callable.TapToPayReaderListener;
import com.stripe.stripeterminal.external.models.BatteryStatus;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.DisconnectReason;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.ReaderDisplayMessage;
import com.stripe.stripeterminal.external.models.ReaderEvent;
import com.stripe.stripeterminal.external.models.ReaderInputOptions;
import com.stripe.stripeterminal.external.models.ReaderSoftwareUpdate;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: ProxyReaderListener.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B=\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0001\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u000bJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J \u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016J\u0010\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u001c\u0010\u001f\u001a\u00020\u00122\b\u0010 \u001a\u0004\u0018\u00010!2\b\u0010\"\u001a\u0004\u0018\u00010#H\u0016J\u0010\u0010$\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&H\u0016J \u0010'\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&2\u0006\u0010(\u001a\u00020)2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0010\u0010*\u001a\u00020\u00122\u0006\u0010%\u001a\u00020&H\u0016J\u0010\u0010+\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!H\u0016J\b\u0010,\u001a\u00020\u0012H\u0016J\u0010\u0010-\u001a\u00020\u00122\u0006\u0010.\u001a\u00020/H\u0016J\u0010\u00100\u001a\u00020\u00122\u0006\u00101\u001a\u00020\u0017H\u0016J\u0010\u00102\u001a\u00020\u00122\u0006\u00103\u001a\u000204H\u0016J\u0010\u00105\u001a\u00020\u00122\u0006\u00106\u001a\u000207H\u0016J\u001a\u00108\u001a\u00020\u00122\u0006\u0010 \u001a\u00020!2\b\u00109\u001a\u0004\u0018\u00010)H\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\f\u001a\u0012\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\rj\u0002`\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\u0002X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006:"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/callable/ProxyReaderListener;", "Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;", "Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;", "Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;", "Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;", "loggerFactory", "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;", "handoffReaderListener", "tapToPayReaderListener", "internetReaderListener", "mobileReaderListener", "(Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;)V", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "assertRequiredListener", "", "config", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "onBatteryLevelUpdate", "batteryLevel", "", "batteryStatus", "Lcom/stripe/stripeterminal/external/models/BatteryStatus;", "isCharging", "", "onDisconnect", "reason", "Lcom/stripe/stripeterminal/external/models/DisconnectReason;", "onFinishInstallingUpdate", "update", "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;", "e", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "onReaderReconnectFailed", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "onReaderReconnectStarted", "cancelReconnect", "Lcom/stripe/stripeterminal/external/callable/Cancelable;", "onReaderReconnectSucceeded", "onReportAvailableUpdate", "onReportLowBatteryWarning", "onReportReaderEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/stripeterminal/external/models/ReaderEvent;", "onReportReaderSoftwareUpdateProgress", "progress", "onRequestReaderDisplayMessage", "message", "Lcom/stripe/stripeterminal/external/models/ReaderDisplayMessage;", "onRequestReaderInput", "options", "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions;", "onStartInstallingUpdate", "cancelable", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProxyReaderListener implements HandoffReaderListener, TapToPayReaderListener, InternetReaderListener, MobileReaderListener {
    private final HandoffReaderListener handoffReaderListener;
    private final InternetReaderListener internetReaderListener;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final MobileReaderListener mobileReaderListener;
    private final TapToPayReaderListener tapToPayReaderListener;

    public ProxyReaderListener(LoggerFactory loggerFactory, HandoffReaderListener handoffReaderListener, TapToPayReaderListener tapToPayReaderListener, InternetReaderListener internetReaderListener, MobileReaderListener mobileReaderListener) {
        Intrinsics.checkNotNullParameter(loggerFactory, "loggerFactory");
        this.handoffReaderListener = handoffReaderListener;
        this.tapToPayReaderListener = tapToPayReaderListener;
        this.internetReaderListener = internetReaderListener;
        this.mobileReaderListener = mobileReaderListener;
        this.logger = loggerFactory.create(Reflection.getOrCreateKotlinClass(ProxyReaderListener.class));
    }

    public /* synthetic */ ProxyReaderListener(LoggerFactory loggerFactory, HandoffReaderListener handoffReaderListener, TapToPayReaderListener tapToPayReaderListener, InternetReaderListener internetReaderListener, MobileReaderListener mobileReaderListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(loggerFactory, (i & 2) != 0 ? null : handoffReaderListener, (i & 4) != 0 ? null : tapToPayReaderListener, (i & 8) != 0 ? null : internetReaderListener, (i & 16) != 0 ? null : mobileReaderListener);
    }

    public final void assertRequiredListener(ConnectionConfiguration config) {
        Intrinsics.checkNotNullParameter(config, "config");
        ProxyReaderListener_androidKt.assertRequiredListener(config, this.mobileReaderListener != null, this.handoffReaderListener != null, this.tapToPayReaderListener != null, this.internetReaderListener != null);
    }

    @Override // com.stripe.stripeterminal.external.callable.MobileReaderListener
    public void onStartInstallingUpdate(ReaderSoftwareUpdate update, Cancelable cancelable) {
        Intrinsics.checkNotNullParameter(update, "update");
        SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger = this.logger;
        Pair<String, ? extends Object>[] pairArr = new Pair[3];
        pairArr[0] = TuplesKt.to("version", update.getVersion());
        pairArr[1] = TuplesKt.to("components", update.getComponents().toString());
        pairArr[2] = TuplesKt.to("cancelable?", String.valueOf(cancelable != null));
        simpleLogger.i("onStartInstallingUpdate", pairArr);
        try {
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onStartInstallingUpdate(update, cancelable);
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onStartInstallingUpdate", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.MobileReaderListener
    public void onReportReaderSoftwareUpdateProgress(float progress) {
        this.logger.i("onReportReaderSoftwareUpdateProgress(" + progress + ')', new Pair[0]);
        try {
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onReportReaderSoftwareUpdateProgress(progress);
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onReportReaderSoftwareUpdateProgress", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.MobileReaderListener
    public void onFinishInstallingUpdate(ReaderSoftwareUpdate update, TerminalException e) {
        SimpleLogger<ApplicationTrace, ApplicationTraceResult> simpleLogger = this.logger;
        Pair<String, ? extends Object>[] pairArr = new Pair[2];
        pairArr[0] = TuplesKt.to("version", update != null ? update.getVersion() : null);
        pairArr[1] = TuplesKt.to("exception?", String.valueOf(e != null));
        simpleLogger.i("onFinishInstallingUpdate", pairArr);
        try {
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onFinishInstallingUpdate(update, e);
            }
        } catch (Exception e2) {
            this.logger.e("Unexpected failure in ReaderListener.onFinishInstallingUpdate", e2, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.MobileReaderListener
    public void onReportAvailableUpdate(ReaderSoftwareUpdate update) {
        Intrinsics.checkNotNullParameter(update, "update");
        this.logger.i("onReportAvailableUpdate(" + update.getVersion() + ')', new Pair[0]);
        try {
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onReportAvailableUpdate(update);
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onReportAvailableUpdate", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.MobileReaderListener
    public void onRequestReaderInput(ReaderInputOptions options) {
        Intrinsics.checkNotNullParameter(options, "options");
        this.logger.i("onRequestReaderInput(" + options + ')', new Pair[0]);
        try {
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onRequestReaderInput(options);
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onRequestReaderInput", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.MobileReaderListener
    public void onRequestReaderDisplayMessage(ReaderDisplayMessage message) {
        Intrinsics.checkNotNullParameter(message, "message");
        this.logger.i("onRequestReaderDisplayMessage(" + message + ')', new Pair[0]);
        try {
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onRequestReaderDisplayMessage(message);
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onRequestReaderDisplayMessage", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.ReaderListenable
    public void onReportReaderEvent(ReaderEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        this.logger.i("onReportReaderEvent(" + event + ')', new Pair[0]);
        try {
            HandoffReaderListener handoffReaderListener = this.handoffReaderListener;
            if (handoffReaderListener != null) {
                handoffReaderListener.onReportReaderEvent(event);
            }
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onReportReaderEvent(event);
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onReportReaderEvent", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.MobileReaderListener
    public void onReportLowBatteryWarning() {
        this.logger.i("onReportLowBatteryWarning", new Pair[0]);
        try {
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onReportLowBatteryWarning();
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onReportLowBatteryWarning", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.MobileReaderListener
    public void onBatteryLevelUpdate(float batteryLevel, BatteryStatus batteryStatus, boolean isCharging) {
        Intrinsics.checkNotNullParameter(batteryStatus, "batteryStatus");
        this.logger.i("onBatteryLevelUpdate", new Pair[0]);
        try {
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onBatteryLevelUpdate(batteryLevel, batteryStatus, isCharging);
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onBatteryLevelUpdate", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.ReaderDisconnectListener
    public void onDisconnect(DisconnectReason reason) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.logger.i("onDisconnect(" + reason + ')', new Pair[0]);
        try {
            TapToPayReaderListener tapToPayReaderListener = this.tapToPayReaderListener;
            if (tapToPayReaderListener != null) {
                tapToPayReaderListener.onDisconnect(reason);
            }
            HandoffReaderListener handoffReaderListener = this.handoffReaderListener;
            if (handoffReaderListener != null) {
                handoffReaderListener.onDisconnect(reason);
            }
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onDisconnect(reason);
            }
            InternetReaderListener internetReaderListener = this.internetReaderListener;
            if (internetReaderListener != null) {
                internetReaderListener.onDisconnect(reason);
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onDisconnect", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.ReaderReconnectionListener
    public void onReaderReconnectStarted(Reader reader, Cancelable cancelReconnect, DisconnectReason reason) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        Intrinsics.checkNotNullParameter(cancelReconnect, "cancelReconnect");
        Intrinsics.checkNotNullParameter(reason, "reason");
        this.logger.i("onReaderReconnectStarted(" + reader + ", " + reason + ')', new Pair[0]);
        try {
            TapToPayReaderListener tapToPayReaderListener = this.tapToPayReaderListener;
            if (tapToPayReaderListener != null) {
                tapToPayReaderListener.onReaderReconnectStarted(reader, cancelReconnect, reason);
            }
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onReaderReconnectStarted(reader, cancelReconnect, reason);
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onReaderReconnectStarted", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.ReaderReconnectionListener
    public void onReaderReconnectSucceeded(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.logger.i("onReaderReconnectSucceeded(" + reader + ')', new Pair[0]);
        try {
            TapToPayReaderListener tapToPayReaderListener = this.tapToPayReaderListener;
            if (tapToPayReaderListener != null) {
                tapToPayReaderListener.onReaderReconnectSucceeded(reader);
            }
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onReaderReconnectSucceeded(reader);
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onReaderReconnectSucceeded", e, new Pair[0]);
        }
    }

    @Override // com.stripe.stripeterminal.external.callable.ReaderReconnectionListener
    public void onReaderReconnectFailed(Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "reader");
        this.logger.i("onReaderReconnectFailed(" + reader + ')', new Pair[0]);
        try {
            TapToPayReaderListener tapToPayReaderListener = this.tapToPayReaderListener;
            if (tapToPayReaderListener != null) {
                tapToPayReaderListener.onReaderReconnectFailed(reader);
            }
            MobileReaderListener mobileReaderListener = this.mobileReaderListener;
            if (mobileReaderListener != null) {
                mobileReaderListener.onReaderReconnectFailed(reader);
            }
        } catch (Exception e) {
            this.logger.e("Unexpected failure in ReaderListener.onReaderReconnectFailed", e, new Pair[0]);
        }
    }
}
