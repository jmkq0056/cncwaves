package com.stripe.stripeterminal.internal.common.connectandupdate;

import com.stripe.core.hardware.ConnectionType;
import com.stripe.core.hardware.Reader;
import java.util.List;
import kotlin.Metadata;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: DiscoveryController.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\u00020\u00032\u0014\u0010\u0004\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u00060\u00052\u0006\u0010\b\u001a\u00020\tH&J\b\u0010\n\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/connectandupdate/DiscoveryController;", "", "discover", "", "readerClasses", "", "Lkotlin/reflect/KClass;", "Lcom/stripe/core/hardware/Reader;", "connectionType", "Lcom/stripe/core/hardware/ConnectionType;", "stopDiscover", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface DiscoveryController {
    void discover(List<? extends KClass<? extends Reader>> readerClasses, ConnectionType connectionType);

    void stopDiscover();
}
