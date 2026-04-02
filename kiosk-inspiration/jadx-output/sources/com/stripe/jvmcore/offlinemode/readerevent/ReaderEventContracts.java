package com.stripe.jvmcore.offlinemode.readerevent;

import androidx.core.app.NotificationCompat;
import com.stripe.proto.api.sdk.ReaderEvent;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: compiled from: ReaderEventContracts.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\bv\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts;", "", "Api", "EventsCountListener", "Fetcher", "Listener", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface ReaderEventContracts {

    /* JADX INFO: compiled from: ReaderEventContracts.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0003H¦@¢\u0006\u0002\u0010\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;", "", "fetchReaderEvents", "", "Lcom/stripe/proto/api/sdk/ReaderEvent;", "afterId", "", "idsToAck", "(JLjava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Api {
        Object fetchReaderEvents(long j, List<Long> list, Continuation<? super List<ReaderEvent>> continuation) throws Throwable;
    }

    /* JADX INFO: compiled from: ReaderEventContracts.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H¦@¢\u0006\u0002\u0010\bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$EventsCountListener;", "", "notifyUnAckedEvents", "Lkotlinx/coroutines/Job;", "api", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;", "count", "", "(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface EventsCountListener {
        Object notifyUnAckedEvents(Api api, int i, Continuation<? super Job> continuation);
    }

    /* JADX INFO: compiled from: ReaderEventContracts.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0005\u001a\u00020\u0006H¦@¢\u0006\u0002\u0010\u0007ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Fetcher;", "", "getEventsFlow", "Lkotlinx/coroutines/flow/Flow;", "Lcom/stripe/proto/api/sdk/ReaderEvent;", "api", "Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;", "(Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Api;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Fetcher {
        Object getEventsFlow(Api api, Continuation<? super Flow<ReaderEvent>> continuation);
    }

    /* JADX INFO: compiled from: ReaderEventContracts.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H¦@¢\u0006\u0002\u0010\u0006ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0007À\u0006\u0001"}, d2 = {"Lcom/stripe/jvmcore/offlinemode/readerevent/ReaderEventContracts$Listener;", "", "onReaderEvent", "", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/proto/api/sdk/ReaderEvent;", "(Lcom/stripe/proto/api/sdk/ReaderEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "offlinemode"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public interface Listener {
        Object onReaderEvent(ReaderEvent readerEvent, Continuation<? super Unit> continuation);
    }
}
