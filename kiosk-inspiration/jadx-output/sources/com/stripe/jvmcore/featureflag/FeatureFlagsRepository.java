package com.stripe.jvmcore.featureflag;

import com.stripe.jvmcore.factoryimage.FactoryImageHelper;
import com.stripe.jvmcore.logging.ObservabilityFeatureFlags;
import com.stripe.jvmcore.storage.KeyValueStore;
import com.stripe.jvmcore.storage.SharedPrefs;
import com.stripe.proto.model.config.ReaderFeatureFlags;
import java.security.MessageDigest;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: FeatureFlagsRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000 /2\u00020\u00012\u00020\u0002:\u0001/B\u0017\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)H\u0002J\b\u0010*\u001a\u00020\nH\u0016J\u0006\u0010+\u001a\u00020'J\u000e\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020\nR!\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u000f\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00108VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0016\u0010\u0012R\u0011\u0010\u0017\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0012R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R!\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\n0\u001a8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u000e\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u001e\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b\u001f\u0010\u0012R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010 \u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b!\u0010\u0012R\u0011\u0010\"\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b#\u0010\u0012R\u0011\u0010$\u001a\u00020\u00108F¢\u0006\u0006\u001a\u0004\b%\u0010\u0012¨\u00060"}, d2 = {"Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;", "Lcom/stripe/jvmcore/featureflag/ReaderFeatureFlagsProvider;", "Lcom/stripe/jvmcore/logging/ObservabilityFeatureFlags;", "sharedPrefs", "Lcom/stripe/jvmcore/storage/SharedPrefs;", "factoryImageHelper", "Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;", "(Lcom/stripe/jvmcore/storage/SharedPrefs;Lcom/stripe/jvmcore/factoryimage/FactoryImageHelper;)V", "_featureFlagsUpdated", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "get_featureFlagsUpdated", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "_featureFlagsUpdated$delegate", "Lkotlin/Lazy;", "enableClientLoggerDispatcher", "", "getEnableClientLoggerDispatcher", "()Z", "enableCollectInputsInterstitialScreen", "getEnableCollectInputsInterstitialScreen", "enableTracesToObservabilityDataEndpoint", "getEnableTracesToObservabilityDataEndpoint", "enableWPEAccessibilityVolumeControl", "getEnableWPEAccessibilityVolumeControl", "featureFlagsUpdated", "Lkotlinx/coroutines/flow/Flow;", "getFeatureFlagsUpdated", "()Lkotlinx/coroutines/flow/Flow;", "featureFlagsUpdated$delegate", "selectionFormTogglesBelowSubmitButtons", "getSelectionFormTogglesBelowSubmitButtons", "ttpAutoReconnectEnabled", "getTtpAutoReconnectEnabled", "ttpaEftposEnabled", "getTtpaEftposEnabled", "ttpaPinEntryEnabled", "getTtpaPinEntryEnabled", "encodeSha256", "", "value", "", "getFeatureFlags", "getReaderFeatureFlagsHash", "putFeatureFlags", "", "readerFeatureFlags", "Companion", "featureflag"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class FeatureFlagsRepository implements ReaderFeatureFlagsProvider, ObservabilityFeatureFlags {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ReaderFeatureFlags FACTORY_IMAGE_FEATURE_FLAGS = new ReaderFeatureFlags(false, false, false, false, 0, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 0, false, false, false, false, false, false, 0, 0, false, 0, false, false, false, false, false, false, false, 0, false, false, 0, false, 0, false, false, 0, 0, false, null, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, 0, false, false, false, false, false, 0, 0, false, null, -1, -1, -1, -1, 63, null);

    /* JADX INFO: renamed from: _featureFlagsUpdated$delegate, reason: from kotlin metadata */
    private final Lazy _featureFlagsUpdated;
    private final FactoryImageHelper factoryImageHelper;

    /* JADX INFO: renamed from: featureFlagsUpdated$delegate, reason: from kotlin metadata */
    private final Lazy featureFlagsUpdated;
    private final SharedPrefs sharedPrefs;

    @Inject
    public FeatureFlagsRepository(SharedPrefs sharedPrefs, FactoryImageHelper factoryImageHelper) {
        Intrinsics.checkNotNullParameter(sharedPrefs, "sharedPrefs");
        Intrinsics.checkNotNullParameter(factoryImageHelper, "factoryImageHelper");
        this.sharedPrefs = sharedPrefs;
        this.factoryImageHelper = factoryImageHelper;
        this._featureFlagsUpdated = LazyKt.lazy(new Function0<MutableStateFlow<ReaderFeatureFlags>>() { // from class: com.stripe.jvmcore.featureflag.FeatureFlagsRepository$_featureFlagsUpdated$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final MutableStateFlow<ReaderFeatureFlags> invoke() {
                return StateFlowKt.MutableStateFlow(this.this$0.getFeatureFlags());
            }
        });
        this.featureFlagsUpdated = LazyKt.lazy(new Function0<MutableStateFlow<ReaderFeatureFlags>>() { // from class: com.stripe.jvmcore.featureflag.FeatureFlagsRepository$featureFlagsUpdated$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final MutableStateFlow<ReaderFeatureFlags> invoke() {
                return this.this$0.get_featureFlagsUpdated();
            }
        });
    }

    public final boolean getEnableWPEAccessibilityVolumeControl() {
        return getFeatureFlags().enable_wpe_accessibility_volume_control;
    }

    public final boolean getTtpaPinEntryEnabled() {
        return getFeatureFlags().enable_ttpa_pin;
    }

    public final boolean getTtpaEftposEnabled() {
        return getFeatureFlags().enable_ttpa_eftpos_payments;
    }

    public final boolean getTtpAutoReconnectEnabled() {
        return getFeatureFlags().enable_ttp_auto_reconnect;
    }

    public final boolean getSelectionFormTogglesBelowSubmitButtons() {
        return getFeatureFlags().selection_form_toggles_below_submit_buttons;
    }

    public final boolean getEnableCollectInputsInterstitialScreen() {
        return getFeatureFlags().enable_collect_inputs_interstitial_screen;
    }

    @Override // com.stripe.jvmcore.logging.ObservabilityFeatureFlags
    public boolean getEnableClientLoggerDispatcher() {
        return getFeatureFlags().enable_client_logger_dispatcher;
    }

    @Override // com.stripe.jvmcore.logging.ObservabilityFeatureFlags
    public boolean getEnableTracesToObservabilityDataEndpoint() {
        return getFeatureFlags().enable_traces_to_observability_data_endpoint;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MutableStateFlow<ReaderFeatureFlags> get_featureFlagsUpdated() {
        return (MutableStateFlow) this._featureFlagsUpdated.getValue();
    }

    public final Flow<ReaderFeatureFlags> getFeatureFlagsUpdated() {
        return (Flow) this.featureFlagsUpdated.getValue();
    }

    @Override // com.stripe.jvmcore.featureflag.ReaderFeatureFlagsProvider
    public ReaderFeatureFlags getFeatureFlags() {
        if (this.factoryImageHelper.getIsFactoryImage()) {
            return FACTORY_IMAGE_FEATURE_FLAGS;
        }
        return this.sharedPrefs.getFeatureFlags();
    }

    public final String getReaderFeatureFlagsHash() {
        return encodeSha256(getFeatureFlags().encode());
    }

    public final void putFeatureFlags(ReaderFeatureFlags readerFeatureFlags) {
        Intrinsics.checkNotNullParameter(readerFeatureFlags, "readerFeatureFlags");
        this.sharedPrefs.putFeatureFlags(readerFeatureFlags);
        if (this.factoryImageHelper.getIsFactoryImage()) {
            get_featureFlagsUpdated().setValue(FACTORY_IMAGE_FEATURE_FLAGS);
        } else {
            get_featureFlagsUpdated().setValue(readerFeatureFlags);
        }
    }

    private final String encodeSha256(byte[] value) {
        byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(value);
        KeyValueStore keyValueStore = this.sharedPrefs.getKeyValueStore();
        Intrinsics.checkNotNull(bArrDigest);
        return keyValueStore.base64Encode(bArrDigest);
    }

    /* JADX INFO: compiled from: FeatureFlagsRepository.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository$Companion;", "", "()V", "FACTORY_IMAGE_FEATURE_FLAGS", "Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "getFACTORY_IMAGE_FEATURE_FLAGS$featureflag", "()Lcom/stripe/proto/model/config/ReaderFeatureFlags;", "featureflag"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ReaderFeatureFlags getFACTORY_IMAGE_FEATURE_FLAGS$featureflag() {
            return FeatureFlagsRepository.FACTORY_IMAGE_FEATURE_FLAGS;
        }
    }
}
