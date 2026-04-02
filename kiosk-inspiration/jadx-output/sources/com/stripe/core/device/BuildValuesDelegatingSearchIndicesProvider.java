package com.stripe.core.device;

import com.stripe.jvmcore.logging.BaseSearchIndicesProvider;
import com.stripe.proto.terminal.clientlogger.pub.SearchIndices;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BuildValuesDelegatingSearchIndicesProvider.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001b\u0010\u0005\u001a\u00020\u00068VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/stripe/core/device/BuildValuesDelegatingSearchIndicesProvider;", "Lcom/stripe/jvmcore/logging/BaseSearchIndicesProvider;", "serialSupplier", "Lcom/stripe/core/device/SerialSupplier;", "(Lcom/stripe/core/device/SerialSupplier;)V", "baseSearchIndices", "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;", "getBaseSearchIndices", "()Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;", "baseSearchIndices$delegate", "Lkotlin/Lazy;", "device_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BuildValuesDelegatingSearchIndicesProvider implements BaseSearchIndicesProvider {

    /* JADX INFO: renamed from: baseSearchIndices$delegate, reason: from kotlin metadata */
    private final Lazy baseSearchIndices;
    private final SerialSupplier serialSupplier;

    public BuildValuesDelegatingSearchIndicesProvider(SerialSupplier serialSupplier) {
        Intrinsics.checkNotNullParameter(serialSupplier, "serialSupplier");
        this.serialSupplier = serialSupplier;
        this.baseSearchIndices = LazyKt.lazy(new Function0<SearchIndices>() { // from class: com.stripe.core.device.BuildValuesDelegatingSearchIndicesProvider$baseSearchIndices$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final SearchIndices invoke() {
                return new SearchIndices(null, this.this$0.serialSupplier.mo461getq_5ZKBc(), null, 0L, 0L, 0L, null, null, null, null, 1021, null);
            }
        });
    }

    @Override // com.stripe.jvmcore.logging.BaseSearchIndicesProvider
    public SearchIndices getBaseSearchIndices() {
        return (SearchIndices) this.baseSearchIndices.getValue();
    }
}
