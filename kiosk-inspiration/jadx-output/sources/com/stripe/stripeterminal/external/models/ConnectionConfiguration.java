package com.stripe.stripeterminal.external.models;

import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.stripe.stripeterminal.external.callable.HandoffReaderListener;
import com.stripe.stripeterminal.external.callable.InternetReaderListener;
import com.stripe.stripeterminal.external.callable.MobileReaderListener;
import com.stripe.stripeterminal.external.callable.TapToPayReaderListener;
import com.stripe.stripeterminal.internal.models.LocationRegistration;
import com.stripe.stripeterminal.internal.models.PosConnectionType;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;

/* JADX INFO: compiled from: ConnectionConfiguration.android.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0006\u0015\u0016\u0017\u0018\u0019\u001aB\u0019\b\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J)\u0010\u000f\u001a\u00020\n2\u001f\b\u0002\u0010\u0010\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u0012\u0012\u0004\u0012\u00020\u00130\u0011¢\u0006\u0002\b\u0014H\u0004R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e\u0082\u0001\u0006\u001b\u001c\u001d\u001e\u001f ¨\u0006!"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "", "locationRegistration", "Lcom/stripe/stripeterminal/internal/models/LocationRegistration;", "failIfInUse", "", "(Lcom/stripe/stripeterminal/internal/models/LocationRegistration;Z)V", "getFailIfInUse", "()Z", "locationId", "", "getLocationId", "()Ljava/lang/String;", "getLocationRegistration", "()Lcom/stripe/stripeterminal/internal/models/LocationRegistration;", "buildToString", "builder", "Lkotlin/Function1;", "", "", "Lkotlin/ExtensionFunctionType;", "BluetoothConnectionConfiguration", "EmbeddedConnectionConfiguration", "HandoffConnectionConfiguration", "InternetConnectionConfiguration", "TapToPayConnectionConfiguration", "UsbConnectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public abstract class ConnectionConfiguration {
    private final boolean failIfInUse;
    private final String locationId;
    private final LocationRegistration locationRegistration;

    public /* synthetic */ ConnectionConfiguration(LocationRegistration locationRegistration, boolean z, DefaultConstructorMarker defaultConstructorMarker) {
        this(locationRegistration, z);
    }

    private ConnectionConfiguration(LocationRegistration locationRegistration, boolean z) {
        String locationId;
        this.locationRegistration = locationRegistration;
        this.failIfInUse = z;
        if (locationRegistration instanceof LocationRegistration.UseId) {
            locationId = ((LocationRegistration.UseId) locationRegistration).getLocationId();
        } else {
            if (!Intrinsics.areEqual(locationRegistration, LocationRegistration.UsePreSet.INSTANCE)) {
                throw new NoWhenBranchMatchedException();
            }
            locationId = null;
        }
        this.locationId = locationId;
    }

    public /* synthetic */ ConnectionConfiguration(LocationRegistration locationRegistration, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(locationRegistration, (i & 2) != 0 ? false : z, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ String buildToString$default(ConnectionConfiguration connectionConfiguration, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: buildToString");
        }
        if ((i & 1) != 0) {
            function1 = new Function1<List<String>, Unit>() { // from class: com.stripe.stripeterminal.external.models.ConnectionConfiguration.buildToString.1
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(List<String> list) {
                    Intrinsics.checkNotNullParameter(list, "$this$null");
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(List<String> list) {
                    invoke2(list);
                    return Unit.INSTANCE;
                }
            };
        }
        return connectionConfiguration.buildToString(function1);
    }

    public final LocationRegistration getLocationRegistration() {
        return this.locationRegistration;
    }

    public final boolean getFailIfInUse() {
        return this.failIfInUse;
    }

    public final String getLocationId() {
        return this.locationId;
    }

    /* JADX INFO: compiled from: ConnectionConfiguration.android.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$InternetConnectionConfiguration;", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "failIfInUse", "", "internetReaderListener", "Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;", "(ZLcom/stripe/stripeterminal/external/callable/InternetReaderListener;)V", "getInternetReaderListener", "()Lcom/stripe/stripeterminal/external/callable/InternetReaderListener;", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class InternetConnectionConfiguration extends ConnectionConfiguration {
        private final InternetReaderListener internetReaderListener;

        public /* synthetic */ InternetConnectionConfiguration(boolean z, InternetReaderListener internetReaderListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? false : z, internetReaderListener);
        }

        public final InternetReaderListener getInternetReaderListener() {
            return this.internetReaderListener;
        }

        public InternetConnectionConfiguration(boolean z, InternetReaderListener internetReaderListener) {
            super(LocationRegistration.UsePreSet.INSTANCE, z, null);
            this.internetReaderListener = internetReaderListener;
        }

        public String toString() {
            return ConnectionConfiguration.buildToString$default(this, null, 1, null);
        }
    }

    /* JADX INFO: compiled from: ConnectionConfiguration.android.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u0003H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$BluetoothConnectionConfiguration;", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "locationId", "", "autoReconnectOnUnexpectedDisconnect", "", "bluetoothReaderListener", "Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;", "(Ljava/lang/String;ZLcom/stripe/stripeterminal/external/callable/MobileReaderListener;)V", "getAutoReconnectOnUnexpectedDisconnect", "()Z", "getBluetoothReaderListener", "()Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class BluetoothConnectionConfiguration extends ConnectionConfiguration {
        private final boolean autoReconnectOnUnexpectedDisconnect;
        private final MobileReaderListener bluetoothReaderListener;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public BluetoothConnectionConfiguration(String locationId, MobileReaderListener bluetoothReaderListener) {
            this(locationId, false, bluetoothReaderListener, 2, null);
            Intrinsics.checkNotNullParameter(locationId, "locationId");
            Intrinsics.checkNotNullParameter(bluetoothReaderListener, "bluetoothReaderListener");
        }

        public /* synthetic */ BluetoothConnectionConfiguration(String str, boolean z, MobileReaderListener mobileReaderListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? true : z, mobileReaderListener);
        }

        public final boolean getAutoReconnectOnUnexpectedDisconnect() {
            return this.autoReconnectOnUnexpectedDisconnect;
        }

        public final MobileReaderListener getBluetoothReaderListener() {
            return this.bluetoothReaderListener;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BluetoothConnectionConfiguration(String locationId, boolean z, MobileReaderListener bluetoothReaderListener) {
            super(new LocationRegistration.UseId(locationId), false, 2, null);
            Intrinsics.checkNotNullParameter(locationId, "locationId");
            Intrinsics.checkNotNullParameter(bluetoothReaderListener, "bluetoothReaderListener");
            this.autoReconnectOnUnexpectedDisconnect = z;
            this.bluetoothReaderListener = bluetoothReaderListener;
        }

        public String toString() {
            return buildToString(new Function1<List<String>, Unit>() { // from class: com.stripe.stripeterminal.external.models.ConnectionConfiguration$BluetoothConnectionConfiguration$toString$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(List<String> list) {
                    invoke2(list);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(List<String> buildToString) {
                    Intrinsics.checkNotNullParameter(buildToString, "$this$buildToString");
                    buildToString.add("autoReconnectOnUnexpectedDisconnect=" + this.this$0.getAutoReconnectOnUnexpectedDisconnect());
                }
            });
        }
    }

    /* JADX INFO: compiled from: ConnectionConfiguration.android.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u0003H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$UsbConnectionConfiguration;", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "locationId", "", "autoReconnectOnUnexpectedDisconnect", "", "usbReaderListener", "Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;", "(Ljava/lang/String;ZLcom/stripe/stripeterminal/external/callable/MobileReaderListener;)V", "getAutoReconnectOnUnexpectedDisconnect", "()Z", "getUsbReaderListener", "()Lcom/stripe/stripeterminal/external/callable/MobileReaderListener;", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class UsbConnectionConfiguration extends ConnectionConfiguration {
        private final boolean autoReconnectOnUnexpectedDisconnect;
        private final MobileReaderListener usbReaderListener;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public UsbConnectionConfiguration(String locationId, MobileReaderListener usbReaderListener) {
            this(locationId, false, usbReaderListener, 2, null);
            Intrinsics.checkNotNullParameter(locationId, "locationId");
            Intrinsics.checkNotNullParameter(usbReaderListener, "usbReaderListener");
        }

        public /* synthetic */ UsbConnectionConfiguration(String str, boolean z, MobileReaderListener mobileReaderListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? true : z, mobileReaderListener);
        }

        public final boolean getAutoReconnectOnUnexpectedDisconnect() {
            return this.autoReconnectOnUnexpectedDisconnect;
        }

        public final MobileReaderListener getUsbReaderListener() {
            return this.usbReaderListener;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public UsbConnectionConfiguration(String locationId, boolean z, MobileReaderListener usbReaderListener) {
            super(new LocationRegistration.UseId(locationId), false, 2, null);
            Intrinsics.checkNotNullParameter(locationId, "locationId");
            Intrinsics.checkNotNullParameter(usbReaderListener, "usbReaderListener");
            this.autoReconnectOnUnexpectedDisconnect = z;
            this.usbReaderListener = usbReaderListener;
        }

        public String toString() {
            return buildToString(new Function1<List<String>, Unit>() { // from class: com.stripe.stripeterminal.external.models.ConnectionConfiguration$UsbConnectionConfiguration$toString$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(List<String> list) {
                    invoke2(list);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(List<String> buildToString) {
                    Intrinsics.checkNotNullParameter(buildToString, "$this$buildToString");
                    buildToString.add("autoReconnectOnUnexpectedDisconnect=" + this.this$0.getAutoReconnectOnUnexpectedDisconnect());
                }
            });
        }
    }

    /* JADX INFO: compiled from: ConnectionConfiguration.android.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bJ\b\u0010\r\u001a\u00020\u0003H\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u000e"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$TapToPayConnectionConfiguration;", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "locationId", "", "autoReconnectOnUnexpectedDisconnect", "", "tapToPayReaderListener", "Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;", "(Ljava/lang/String;ZLcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;)V", "getAutoReconnectOnUnexpectedDisconnect", "()Z", "getTapToPayReaderListener", "()Lcom/stripe/stripeterminal/external/callable/TapToPayReaderListener;", "toString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class TapToPayConnectionConfiguration extends ConnectionConfiguration {
        private final boolean autoReconnectOnUnexpectedDisconnect;
        private final TapToPayReaderListener tapToPayReaderListener;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public TapToPayConnectionConfiguration(String locationId, TapToPayReaderListener tapToPayReaderListener) {
            this(locationId, false, tapToPayReaderListener, 2, null);
            Intrinsics.checkNotNullParameter(locationId, "locationId");
        }

        public /* synthetic */ TapToPayConnectionConfiguration(String str, boolean z, TapToPayReaderListener tapToPayReaderListener, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, (i & 2) != 0 ? true : z, tapToPayReaderListener);
        }

        public final boolean getAutoReconnectOnUnexpectedDisconnect() {
            return this.autoReconnectOnUnexpectedDisconnect;
        }

        public final TapToPayReaderListener getTapToPayReaderListener() {
            return this.tapToPayReaderListener;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TapToPayConnectionConfiguration(String locationId, boolean z, TapToPayReaderListener tapToPayReaderListener) {
            super(new LocationRegistration.UseId(locationId), false, 2, null);
            Intrinsics.checkNotNullParameter(locationId, "locationId");
            this.autoReconnectOnUnexpectedDisconnect = z;
            this.tapToPayReaderListener = tapToPayReaderListener;
        }

        public String toString() {
            return buildToString(new Function1<List<String>, Unit>() { // from class: com.stripe.stripeterminal.external.models.ConnectionConfiguration$TapToPayConnectionConfiguration$toString$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(List<String> list) {
                    invoke2(list);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(List<String> buildToString) {
                    Intrinsics.checkNotNullParameter(buildToString, "$this$buildToString");
                    buildToString.add("autoReconnectOnUnexpectedDisconnect=" + this.this$0.getAutoReconnectOnUnexpectedDisconnect());
                }
            });
        }
    }

    /* JADX INFO: compiled from: ConnectionConfiguration.android.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$HandoffConnectionConfiguration;", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "handoffReaderListener", "Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;", "(Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;)V", "getHandoffReaderListener", "()Lcom/stripe/stripeterminal/external/callable/HandoffReaderListener;", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class HandoffConnectionConfiguration extends ConnectionConfiguration {
        private final HandoffReaderListener handoffReaderListener;

        public final HandoffReaderListener getHandoffReaderListener() {
            return this.handoffReaderListener;
        }

        public HandoffConnectionConfiguration(HandoffReaderListener handoffReaderListener) {
            super(LocationRegistration.UsePreSet.INSTANCE, false, 2, null);
            this.handoffReaderListener = handoffReaderListener;
        }

        public String toString() {
            return ConnectionConfiguration.buildToString$default(this, null, 1, null);
        }
    }

    /* JADX INFO: compiled from: ConnectionConfiguration.android.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B9\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\n\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\b¢\u0006\u0002\u0010\fJ\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\n\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u000b\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\t\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012¨\u0006\u0018"}, d2 = {"Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration$EmbeddedConnectionConfiguration;", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "(Ljava/lang/Object;)V", "posConnectionType", "Lcom/stripe/stripeterminal/internal/models/PosConnectionType;", "supportsOfflineMode", "", "supportsOfflineSetupIntents", "shouldActivateWithExpandedLocation", "shouldGenerateOfflineSessionToken", "(Lcom/stripe/stripeterminal/internal/models/PosConnectionType;Ljava/lang/Object;ZZZZ)V", "getListener", "()Ljava/lang/Object;", "getPosConnectionType", "()Lcom/stripe/stripeterminal/internal/models/PosConnectionType;", "getShouldActivateWithExpandedLocation", "()Z", "getShouldGenerateOfflineSessionToken", "getSupportsOfflineMode", "getSupportsOfflineSetupIntents", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class EmbeddedConnectionConfiguration extends ConnectionConfiguration {
        private final Object listener;
        private final PosConnectionType posConnectionType;
        private final boolean shouldActivateWithExpandedLocation;
        private final boolean shouldGenerateOfflineSessionToken;
        private final boolean supportsOfflineMode;
        private final boolean supportsOfflineSetupIntents;

        public /* synthetic */ EmbeddedConnectionConfiguration(PosConnectionType posConnectionType, Object obj, boolean z, boolean z2, boolean z3, boolean z4, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(posConnectionType, obj, z, z2, (i & 16) != 0 ? true : z3, (i & 32) != 0 ? false : z4);
        }

        public final PosConnectionType getPosConnectionType() {
            return this.posConnectionType;
        }

        public final Object getListener() {
            return this.listener;
        }

        public final boolean getSupportsOfflineMode() {
            return this.supportsOfflineMode;
        }

        public final boolean getSupportsOfflineSetupIntents() {
            return this.supportsOfflineSetupIntents;
        }

        public final boolean getShouldActivateWithExpandedLocation() {
            return this.shouldActivateWithExpandedLocation;
        }

        public final boolean getShouldGenerateOfflineSessionToken() {
            return this.shouldGenerateOfflineSessionToken;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public EmbeddedConnectionConfiguration(PosConnectionType posConnectionType, Object listener, boolean z, boolean z2, boolean z3, boolean z4) {
            super(LocationRegistration.UsePreSet.INSTANCE, false, 2, null);
            Intrinsics.checkNotNullParameter(posConnectionType, "posConnectionType");
            Intrinsics.checkNotNullParameter(listener, "listener");
            this.posConnectionType = posConnectionType;
            this.listener = listener;
            this.supportsOfflineMode = z;
            this.supportsOfflineSetupIntents = z2;
            this.shouldActivateWithExpandedLocation = z3;
            this.shouldGenerateOfflineSessionToken = z4;
        }

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public EmbeddedConnectionConfiguration(Object listener) {
            this(PosConnectionType.Default.INSTANCE, listener, false, false, false, false, 48, null);
            Intrinsics.checkNotNullParameter(listener, "listener");
        }

        public String toString() {
            return buildToString(new Function1<List<String>, Unit>() { // from class: com.stripe.stripeterminal.external.models.ConnectionConfiguration$EmbeddedConnectionConfiguration$toString$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(List<String> list) {
                    invoke2(list);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(List<String> buildToString) {
                    Intrinsics.checkNotNullParameter(buildToString, "$this$buildToString");
                    buildToString.add("posConnectionType=" + this.this$0.getPosConnectionType());
                    buildToString.add("listener=" + this.this$0.getListener());
                    buildToString.add("supportsOfflineMode=" + this.this$0.getSupportsOfflineMode());
                    buildToString.add("supportsOfflineSetupIntents=" + this.this$0.getSupportsOfflineSetupIntents());
                    buildToString.add("shouldActivateWithExpandedLocation=" + this.this$0.getShouldActivateWithExpandedLocation());
                    buildToString.add("shouldGenerateOfflineSessionToken=" + this.this$0.getShouldGenerateOfflineSessionToken());
                }
            });
        }
    }

    protected final String buildToString(Function1<? super List<String>, Unit> builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        List listCreateListBuilder = CollectionsKt.createListBuilder();
        listCreateListBuilder.add("failIfInUse=" + this.failIfInUse);
        listCreateListBuilder.add("locationRegistration=" + this.locationRegistration);
        builder.invoke(listCreateListBuilder);
        return CollectionsKt.joinToString$default(CollectionsKt.build(listCreateListBuilder), ", ", Reflection.getOrCreateKotlinClass(getClass()).getSimpleName() + AbstractJsonLexerKt.BEGIN_OBJ, "}", 0, null, null, 56, null);
    }
}
