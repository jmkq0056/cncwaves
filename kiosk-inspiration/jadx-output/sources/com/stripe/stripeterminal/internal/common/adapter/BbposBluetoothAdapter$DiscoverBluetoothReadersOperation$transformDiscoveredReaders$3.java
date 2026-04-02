package com.stripe.stripeterminal.internal.common.adapter;

import android.bluetooth.BluetoothDevice;
import com.stripe.core.hardware.Reader;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.LocationStatus;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.internal.common.makers.DeviceTypeMaker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: BbposBluetoothAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00040\u0001H\u008a@"}, d2 = {"<anonymous>", "", "Lcom/stripe/stripeterminal/external/models/Reader;", "bluetoothDevices", "Landroid/bluetooth/BluetoothDevice;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3", f = "BbposBluetoothAdapter.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
final class BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3 extends SuspendLambda implements Function2<List<? extends BluetoothDevice>, Continuation<? super List<? extends Reader>>, Object> {
    /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ BbposBluetoothAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3(BbposBluetoothAdapter bbposBluetoothAdapter, Continuation<? super BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3> continuation) {
        super(2, continuation);
        this.this$0 = bbposBluetoothAdapter;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3 bbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3 = new BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3(this.this$0, continuation);
        bbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3.L$0 = obj;
        return bbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(List<? extends BluetoothDevice> list, Continuation<? super List<? extends Reader>> continuation) {
        return invoke2((List<BluetoothDevice>) list, (Continuation<? super List<Reader>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(List<BluetoothDevice> list, Continuation<? super List<Reader>> continuation) {
        return ((BbposBluetoothAdapter$DiscoverBluetoothReadersOperation$transformDiscoveredReaders$3) create(list, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Reader reader;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        List list = (List) this.L$0;
        if (list.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        List<BluetoothDevice> list2 = list;
        ArrayList arrayList = new ArrayList();
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            String strNameFromDevice = Reader.BluetoothReader.INSTANCE.nameFromDevice((BluetoothDevice) it.next());
            if (strNameFromDevice != null) {
                arrayList.add(strNameFromDevice);
            }
        }
        ArrayList arrayList2 = arrayList;
        if (arrayList2.isEmpty()) {
            arrayList2 = null;
        }
        Map<String, Location> locationsForDiscovery = arrayList2 != null ? this.this$0.getLocationsForDiscovery(arrayList2) : null;
        if (locationsForDiscovery == null) {
            locationsForDiscovery = MapsKt.emptyMap();
        }
        ArrayList arrayList3 = new ArrayList();
        for (BluetoothDevice bluetoothDevice : list2) {
            String strNameFromDevice2 = Reader.BluetoothReader.INSTANCE.nameFromDevice(bluetoothDevice);
            if (strNameFromDevice2 != null) {
                Location location = locationsForDiscovery.get(strNameFromDevice2);
                reader = new com.stripe.stripeterminal.external.models.Reader(DeviceTypeMaker.INSTANCE.fromSerial(strNameFromDevice2), null, location == null ? LocationStatus.NOT_SET : LocationStatus.SET, null, false, null, null, null, null, null, null, null, bluetoothDevice, null, location, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, -20486, 15, null);
            } else {
                reader = null;
            }
            if (reader != null) {
                arrayList3.add(reader);
            }
        }
        return arrayList3;
    }
}
