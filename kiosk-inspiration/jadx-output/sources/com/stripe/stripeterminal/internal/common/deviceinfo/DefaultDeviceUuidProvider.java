package com.stripe.stripeterminal.internal.common.deviceinfo;

import android.content.SharedPreferences;
import com.stripe.core.device.HardwareManufacturer;
import com.stripe.core.device.SerialSupplier;
import com.stripe.terminal.appinfo.DeviceUuid;
import com.stripe.terminal.appinfo.DeviceUuidProvider;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: DefaultDeviceUuidProvider.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\b\u0010\u0011\u001a\u00020\fH\u0002J\b\u0010\u0012\u001a\u00020\fH\u0016J\f\u0010\u0013\u001a\u00020\u0014*\u00020\u0015H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000e¨\u0006\u0017"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/deviceinfo/DefaultDeviceUuidProvider;", "Lcom/stripe/terminal/appinfo/DeviceUuidProvider;", "deviceUuidSharedPrefsProvider", "Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "manufacturer", "Lcom/stripe/core/device/HardwareManufacturer;", "serialSupplier", "Lcom/stripe/core/device/SerialSupplier;", "(Lcom/stripe/stripeterminal/internal/common/deviceinfo/DeviceUuidSharedPrefsProvider;Lkotlin/coroutines/CoroutineContext;Lcom/stripe/core/device/HardwareManufacturer;Lcom/stripe/core/device/SerialSupplier;)V", "value", "Lcom/stripe/terminal/appinfo/DeviceUuid;", "getValue", "()Lcom/stripe/terminal/appinfo/DeviceUuid;", "value$delegate", "Lkotlin/Lazy;", "create", "get", "createDeviceUuid", "", "Landroid/content/SharedPreferences;", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultDeviceUuidProvider implements DeviceUuidProvider {
    public static final String PREF_UNIQUE_ID = "pref_unique_id";
    private final CoroutineContext coroutineContext;
    private final DeviceUuidSharedPrefsProvider deviceUuidSharedPrefsProvider;
    private final HardwareManufacturer manufacturer;
    private final SerialSupplier serialSupplier;

    /* JADX INFO: renamed from: value$delegate, reason: from kotlin metadata */
    private final Lazy value;

    public DefaultDeviceUuidProvider(DeviceUuidSharedPrefsProvider deviceUuidSharedPrefsProvider, CoroutineContext coroutineContext, HardwareManufacturer manufacturer, SerialSupplier serialSupplier) {
        Intrinsics.checkNotNullParameter(deviceUuidSharedPrefsProvider, "deviceUuidSharedPrefsProvider");
        Intrinsics.checkNotNullParameter(coroutineContext, "coroutineContext");
        Intrinsics.checkNotNullParameter(manufacturer, "manufacturer");
        Intrinsics.checkNotNullParameter(serialSupplier, "serialSupplier");
        this.deviceUuidSharedPrefsProvider = deviceUuidSharedPrefsProvider;
        this.coroutineContext = coroutineContext;
        this.manufacturer = manufacturer;
        this.serialSupplier = serialSupplier;
        this.value = LazyKt.lazy(new Function0<DeviceUuid>() { // from class: com.stripe.stripeterminal.internal.common.deviceinfo.DefaultDeviceUuidProvider$value$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final DeviceUuid invoke() {
                return this.this$0.create();
            }
        });
    }

    private final DeviceUuid getValue() {
        return (DeviceUuid) this.value.getValue();
    }

    @Override // com.stripe.terminal.appinfo.DeviceUuidProvider
    public DeviceUuid get() {
        return getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final DeviceUuid create() {
        String strMo461getq_5ZKBc;
        HardwareManufacturer hardwareManufacturer = this.manufacturer;
        if (Intrinsics.areEqual(hardwareManufacturer, HardwareManufacturer.Bbpos.INSTANCE) ? true : Intrinsics.areEqual(hardwareManufacturer, HardwareManufacturer.Verifone.INSTANCE)) {
            strMo461getq_5ZKBc = this.serialSupplier.mo461getq_5ZKBc();
        } else if (hardwareManufacturer instanceof HardwareManufacturer.Other) {
            strMo461getq_5ZKBc = (String) BuildersKt.runBlocking(this.coroutineContext, new AnonymousClass1(null));
        } else {
            throw new NoWhenBranchMatchedException();
        }
        return new DeviceUuid(strMo461getq_5ZKBc);
    }

    /* JADX INFO: renamed from: com.stripe.stripeterminal.internal.common.deviceinfo.DefaultDeviceUuidProvider$create$1, reason: invalid class name */
    /* JADX INFO: compiled from: DefaultDeviceUuidProvider.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "com.stripe.stripeterminal.internal.common.deviceinfo.DefaultDeviceUuidProvider$create$1", f = "DefaultDeviceUuidProvider.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return DefaultDeviceUuidProvider.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                SharedPreferences sharedPreferences = DefaultDeviceUuidProvider.this.deviceUuidSharedPrefsProvider.get();
                DefaultDeviceUuidProvider defaultDeviceUuidProvider = DefaultDeviceUuidProvider.this;
                String string = sharedPreferences.getString(DefaultDeviceUuidProvider.PREF_UNIQUE_ID, null);
                if (string == null) {
                    string = defaultDeviceUuidProvider.createDeviceUuid(sharedPreferences);
                }
                Intrinsics.checkNotNull(string);
                return string;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String createDeviceUuid(SharedPreferences sharedPreferences) {
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(PREF_UNIQUE_ID, string);
        editorEdit.apply();
        return string;
    }
}
