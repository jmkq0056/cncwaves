package com.stripe.stripeterminal.internal.common.discovery;

import com.stripe.core.hardware.ConnectionType;
import com.stripe.core.hardware.Reader;
import com.stripe.jvmcore.logging.terminal.log.SimpleLogger;
import com.stripe.loggingmodels.ApplicationTrace;
import com.stripe.loggingmodels.ApplicationTraceResult;
import com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: BbposProxyDiscoveryController.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\f¢\u0006\u0002\u0010\rJ&\u0010\u000f\u001a\u00020\u00102\u0014\u0010\u0011\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00140\u00130\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0016J\b\u0010\u0017\u001a\u00020\u0010H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u0001X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\tj\u0002`\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/discovery/BbposProxyDiscoveryController;", "Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;", "defaultBluetoothDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;", "bbposBluetoothDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;", "usbDiscoveryController", "Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;", "logger", "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;", "Lcom/stripe/loggingmodels/ApplicationTrace;", "Lcom/stripe/loggingmodels/ApplicationTraceResult;", "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;", "(Lcom/stripe/stripeterminal/internal/common/discovery/DefaultBluetoothDiscoveryController;Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryController;Lcom/stripe/stripeterminal/internal/common/discovery/BbposUsbDiscoveryController;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V", "currentController", "discover", "", "readerClasses", "", "Lkotlin/reflect/KClass;", "Lcom/stripe/core/hardware/Reader;", "connectionType", "Lcom/stripe/core/hardware/ConnectionType;", "stopDiscover", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposProxyDiscoveryController implements DiscoveryController {
    private final BbposBluetoothDiscoveryController bbposBluetoothDiscoveryController;
    private DiscoveryController currentController;
    private final DefaultBluetoothDiscoveryController defaultBluetoothDiscoveryController;
    private final SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger;
    private final BbposUsbDiscoveryController usbDiscoveryController;

    /* JADX INFO: compiled from: BbposProxyDiscoveryController.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ConnectionType.values().length];
            try {
                iArr[ConnectionType.BLUETOOTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ConnectionType.USB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public BbposProxyDiscoveryController(DefaultBluetoothDiscoveryController defaultBluetoothDiscoveryController, BbposBluetoothDiscoveryController bbposBluetoothDiscoveryController, BbposUsbDiscoveryController usbDiscoveryController, SimpleLogger<ApplicationTrace, ApplicationTraceResult> logger) {
        Intrinsics.checkNotNullParameter(defaultBluetoothDiscoveryController, "defaultBluetoothDiscoveryController");
        Intrinsics.checkNotNullParameter(bbposBluetoothDiscoveryController, "bbposBluetoothDiscoveryController");
        Intrinsics.checkNotNullParameter(usbDiscoveryController, "usbDiscoveryController");
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.defaultBluetoothDiscoveryController = defaultBluetoothDiscoveryController;
        this.bbposBluetoothDiscoveryController = bbposBluetoothDiscoveryController;
        this.usbDiscoveryController = usbDiscoveryController;
        this.logger = logger;
    }

    @Override // com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController
    public void discover(List<? extends KClass<? extends Reader>> readerClasses, ConnectionType connectionType) {
        DefaultBluetoothDiscoveryController defaultBluetoothDiscoveryController;
        Intrinsics.checkNotNullParameter(readerClasses, "readerClasses");
        Intrinsics.checkNotNullParameter(connectionType, "connectionType");
        this.logger.d("discover", new Pair[0]);
        int i = WhenMappings.$EnumSwitchMapping$0[connectionType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            defaultBluetoothDiscoveryController = this.usbDiscoveryController;
        } else if (readerClasses.contains(Reflection.getOrCreateKotlinClass(Reader.BluetoothReader.Chipper1xReader.class))) {
            defaultBluetoothDiscoveryController = this.bbposBluetoothDiscoveryController;
        } else {
            defaultBluetoothDiscoveryController = this.defaultBluetoothDiscoveryController;
        }
        this.currentController = defaultBluetoothDiscoveryController;
        if (defaultBluetoothDiscoveryController != null) {
            defaultBluetoothDiscoveryController.discover(readerClasses, connectionType);
        }
    }

    @Override // com.stripe.stripeterminal.internal.common.connectandupdate.DiscoveryController
    public void stopDiscover() {
        this.logger.d("stopDiscover", new Pair[0]);
        DiscoveryController discoveryController = this.currentController;
        if (discoveryController != null) {
            discoveryController.stopDiscover();
        }
    }
}
