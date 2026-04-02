package com.stripe.stripeterminal.internal.common.adapter;

import com.stripe.stripeterminal.internal.common.adapter.BbposBluetoothAdapter;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: compiled from: BbposBluetoothAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnectWithManualBonding$1 extends FunctionReferenceImpl implements Function0<Unit> {
    BbposBluetoothAdapter$ConnectBluetoothReaderOperation$startConnectWithManualBonding$1(Object obj) {
        super(0, obj, BbposBluetoothAdapter.ConnectBluetoothReaderOperation.class, "startConnect", "startConnect()V", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ Unit invoke() {
        invoke2();
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        ((BbposBluetoothAdapter.ConnectBluetoothReaderOperation) this.receiver).startConnect();
    }
}
