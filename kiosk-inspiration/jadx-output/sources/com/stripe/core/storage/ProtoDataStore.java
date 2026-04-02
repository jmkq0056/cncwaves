package com.stripe.core.storage;

import android.app.Application;
import android.content.Context;
import androidx.datastore.DataStoreDelegateKt;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.Serializer;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: ProtoStore.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B+\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\n¢\u0006\u0002\u0010\u000bJA\u0010\u0017\u001a\u00020\u001821\u0010\u0019\u001a-\b\u0001\u0012\u0013\u0012\u00118\u0000¢\u0006\f\b\u001b\u0012\b\b\u001c\u0012\u0004\b\b(\u001d\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u001e\u0012\u0006\u0012\u0004\u0018\u00010\u001f0\u001aH\u0096@¢\u0006\u0002\u0010 R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\rX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R%\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00000\u0011*\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0013\u0010\u0014¨\u0006!"}, d2 = {"Lcom/stripe/core/storage/ProtoDataStore;", "T", "Lcom/stripe/core/storage/ProtoStore;", "application", "Landroid/app/Application;", "appScope", "Lkotlinx/coroutines/CoroutineScope;", "fileName", "", "protoSerializer", "Landroidx/datastore/core/Serializer;", "(Landroid/app/Application;Lkotlinx/coroutines/CoroutineScope;Ljava/lang/String;Landroidx/datastore/core/Serializer;)V", "data", "Lkotlinx/coroutines/flow/Flow;", "getData", "()Lkotlinx/coroutines/flow/Flow;", "dataStore", "Landroidx/datastore/core/DataStore;", "Landroid/content/Context;", "getDataStore", "(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", "dataStore$delegate", "Lkotlin/properties/ReadOnlyProperty;", "updateData", "", "transform", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "t", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "storage_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProtoDataStore<T> implements ProtoStore<T> {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property2(new PropertyReference2Impl(ProtoDataStore.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};
    private final Flow<T> data;
    private final DataStore<T> dataStore;

    /* JADX INFO: renamed from: dataStore$delegate, reason: from kotlin metadata */
    private final ReadOnlyProperty dataStore;

    public ProtoDataStore(Application application, CoroutineScope appScope, String fileName, Serializer<T> protoSerializer) {
        Intrinsics.checkNotNullParameter(application, "application");
        Intrinsics.checkNotNullParameter(appScope, "appScope");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(protoSerializer, "protoSerializer");
        this.dataStore = DataStoreDelegateKt.dataStore$default(fileName, protoSerializer, null, null, appScope, 12, null);
        DataStore<T> dataStore = getDataStore(application);
        this.dataStore = dataStore;
        this.data = dataStore.getData();
    }

    private final DataStore<T> getDataStore(Context context) {
        return (DataStore) this.dataStore.getValue(context, $$delegatedProperties[0]);
    }

    @Override // com.stripe.core.storage.ProtoStore
    public Flow<T> getData() {
        return this.data;
    }

    @Override // com.stripe.core.storage.ProtoStore
    public Object updateData(Function2<? super T, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        Object objUpdateData = this.dataStore.updateData(function2, continuation);
        return objUpdateData == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objUpdateData : Unit.INSTANCE;
    }
}
