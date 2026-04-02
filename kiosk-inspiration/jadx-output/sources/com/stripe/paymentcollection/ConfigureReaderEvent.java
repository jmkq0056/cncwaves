package com.stripe.paymentcollection;

import com.stripe.hardware.ReaderConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PaymentCollectionEvents.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\fHÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0011"}, d2 = {"Lcom/stripe/paymentcollection/ConfigureReaderEvent;", "Lcom/stripe/paymentcollection/HardwareEvent;", "configuration", "Lcom/stripe/hardware/ReaderConfiguration;", "(Lcom/stripe/hardware/ReaderConfiguration;)V", "getConfiguration", "()Lcom/stripe/hardware/ReaderConfiguration;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final /* data */ class ConfigureReaderEvent extends HardwareEvent {
    private final ReaderConfiguration configuration;

    public static /* synthetic */ ConfigureReaderEvent copy$default(ConfigureReaderEvent configureReaderEvent, ReaderConfiguration readerConfiguration, int i, Object obj) {
        if ((i & 1) != 0) {
            readerConfiguration = configureReaderEvent.configuration;
        }
        return configureReaderEvent.copy(readerConfiguration);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final ReaderConfiguration getConfiguration() {
        return this.configuration;
    }

    public final ConfigureReaderEvent copy(ReaderConfiguration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        return new ConfigureReaderEvent(configuration);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof ConfigureReaderEvent) && Intrinsics.areEqual(this.configuration, ((ConfigureReaderEvent) other).configuration);
    }

    public int hashCode() {
        return this.configuration.hashCode();
    }

    public String toString() {
        return "ConfigureReaderEvent(configuration=" + this.configuration + ')';
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConfigureReaderEvent(ReaderConfiguration configuration) {
        super(null);
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.configuration = configuration;
    }

    public final ReaderConfiguration getConfiguration() {
        return this.configuration;
    }
}
