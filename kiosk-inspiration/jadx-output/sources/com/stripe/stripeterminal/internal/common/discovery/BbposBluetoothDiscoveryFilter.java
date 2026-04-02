package com.stripe.stripeterminal.internal.common.discovery;

import com.stripe.core.hardware.Reader;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: BbposBluetoothDiscoveryFilter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Singleton
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\r\u0010\u0007\u001a\u00020\bH\u0000¢\u0006\u0002\b\tJ\u001a\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u00042\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004J#\u0010\r\u001a\u00020\b2\u0014\u0010\u0003\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u00050\u0004H\u0000¢\u0006\u0002\b\u000eR\u001c\u0010\u0003\u001a\u0010\u0012\f\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/discovery/BbposBluetoothDiscoveryFilter;", "", "()V", "readerClasses", "", "Lkotlin/reflect/KClass;", "Lcom/stripe/core/hardware/Reader;", "clearReaderClassesFilter", "", "clearReaderClassesFilter$common_publish", "filterDevices", "Lcom/stripe/core/hardware/Reader$BluetoothReader;", "readers", "setReaderClasses", "setReaderClasses$common_publish", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class BbposBluetoothDiscoveryFilter {
    private List<? extends KClass<? extends Reader>> readerClasses = CollectionsKt.emptyList();

    @Inject
    public BbposBluetoothDiscoveryFilter() {
    }

    public final void setReaderClasses$common_publish(List<? extends KClass<? extends Reader>> readerClasses) {
        Intrinsics.checkNotNullParameter(readerClasses, "readerClasses");
        this.readerClasses = readerClasses;
    }

    public final void clearReaderClassesFilter$common_publish() {
        this.readerClasses = CollectionsKt.emptyList();
    }

    public final List<Reader.BluetoothReader> filterDevices(List<? extends Reader.BluetoothReader> readers) {
        Intrinsics.checkNotNullParameter(readers, "readers");
        ArrayList arrayList = new ArrayList();
        for (Object obj : readers) {
            if (this.readerClasses.contains(Reflection.getOrCreateKotlinClass(((Reader.BluetoothReader) obj).getClass()))) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
