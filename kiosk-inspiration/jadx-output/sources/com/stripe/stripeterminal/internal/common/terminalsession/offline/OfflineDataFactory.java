package com.stripe.stripeterminal.internal.common.terminalsession.offline;

import com.stripe.offlinemode.models.OfflineRequestsToSync;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.offline_mode.OfflineApiRequest;
import com.stripe.proto.model.offline_mode.OfflineConnection;
import com.stripe.proto.model.offline_mode.OfflineLocation;
import com.stripe.proto.model.offline_mode.OfflineReader;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.stripeterminal.internal.common.adapter.OfflineAdapterKt;
import com.stripe.stripeterminal.internal.common.terminalsession.offline.OfflineData;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: OfflineData.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory;", "", "()V", "Companion", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class OfflineDataFactory {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: OfflineData.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J6\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00070\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u00042\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0004J\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u00042\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\f\u0010\u0014\u001a\u00020\u0015*\u00020\u0016H\u0002¨\u0006\u0017"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineDataFactory$Companion;", "", "()V", "dataFromConnectionsAndReaders", "", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataReader;", "connectionList", "Lcom/stripe/proto/model/offline_mode/OfflineConnection;", "readerList", "Lcom/stripe/proto/model/offline_mode/OfflineReader;", "locationList", "Lcom/stripe/proto/model/offline_mode/OfflineLocation;", "dataFromPaymentIntentRequest", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/OfflineData$OfflineDataPaymentIntent;", "data", "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;", "protoTypeToSdkType", "Lcom/stripe/stripeterminal/internal/common/terminalsession/offline/PaymentIntentRequestType;", "type", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;", "isForwarded", "", "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: OfflineData.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[OfflineApiRequest.ApiRequestType.values().length];
                try {
                    iArr[OfflineApiRequest.ApiRequestType.CREATE_PAYMENT_INTENT.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[OfflineApiRequest.ApiRequestType.PROCESS_PAYMENT_INTENT.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final List<OfflineData.OfflineDataReader> dataFromConnectionsAndReaders(List<OfflineConnection> connectionList, List<OfflineReader> readerList, List<OfflineLocation> locationList) throws Throwable {
            List listEmptyList;
            ApiLocationPb apiLocationPb;
            ApiLocationPb apiLocationPb2;
            ApiLocationPb apiLocationPb3;
            Intrinsics.checkNotNullParameter(connectionList, "connectionList");
            Intrinsics.checkNotNullParameter(readerList, "readerList");
            Intrinsics.checkNotNullParameter(locationList, "locationList");
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : connectionList) {
                Long lValueOf = Long.valueOf(((OfflineConnection) obj).reader_id);
                Object obj2 = linkedHashMap.get(lValueOf);
                if (obj2 == null) {
                    obj2 = (List) new ArrayList();
                    linkedHashMap.put(lValueOf, obj2);
                }
                ((List) obj2).add(obj);
            }
            List<OfflineLocation> list = locationList;
            int i = 10;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(list, 10)), 16));
            for (Object obj3 : list) {
                linkedHashMap2.put(Long.valueOf(((OfflineLocation) obj3).id), obj3);
            }
            List<OfflineReader> list2 = readerList;
            ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
            for (OfflineReader offlineReader : list2) {
                if (linkedHashMap.isEmpty()) {
                    listEmptyList = CollectionsKt.emptyList();
                } else {
                    listEmptyList = (List) linkedHashMap.get(Long.valueOf(offlineReader.id));
                    if (listEmptyList == null) {
                        throw new Throwable("failed to combine offline readers and connections, no matching reader id for connection");
                    }
                }
                List listSortedWith = CollectionsKt.sortedWith(listEmptyList, new Comparator() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.offline.OfflineDataFactory$Companion$dataFromConnectionsAndReaders$lambda$5$$inlined$sortedByDescending$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues(Long.valueOf(((OfflineConnection) t2).created_at), Long.valueOf(((OfflineConnection) t).created_at));
                    }
                });
                List list3 = listSortedWith;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list3, i));
                Iterator it = list3.iterator();
                while (it.hasNext()) {
                    OfflineConnection offlineConnection = (OfflineConnection) it.next();
                    OfflineLocation offlineLocation = (OfflineLocation) linkedHashMap2.get(Long.valueOf(offlineConnection.location_id));
                    String str = offlineReader.stripe_id;
                    String str2 = offlineConnection.firmware_version;
                    String str3 = offlineConnection.account_id;
                    String str4 = offlineConnection.config_version;
                    List list4 = listSortedWith;
                    Iterator it2 = it;
                    Date date = new Date(offlineConnection.created_at);
                    String str5 = null;
                    Boolean bool = (offlineLocation == null || (apiLocationPb3 = offlineLocation.full_location) == null) ? null : apiLocationPb3.livemode;
                    String str6 = (offlineLocation == null || (apiLocationPb2 = offlineLocation.full_location) == null) ? null : apiLocationPb2.display_name;
                    if (offlineLocation != null && (apiLocationPb = offlineLocation.full_location) != null) {
                        str5 = apiLocationPb.id;
                    }
                    arrayList2.add(new SimpleOfflineConnection(str, str2, str3, str4, date, bool, str6, str5, offlineConnection.ip_address, offlineConnection.base_url));
                    listSortedWith = list4;
                    it = it2;
                }
                ArrayList arrayList3 = arrayList2;
                String str7 = offlineReader.serial_number;
                String str8 = offlineReader.label;
                String str9 = offlineReader.account_id;
                Date date2 = new Date(offlineReader.last_activated_at);
                Date date3 = new Date(offlineReader.created_at);
                OfflineLocation offlineLocation2 = (OfflineLocation) linkedHashMap2.get(Long.valueOf(((OfflineConnection) CollectionsKt.last(listSortedWith)).location_id));
                arrayList.add(new OfflineData.OfflineDataReader(arrayList3, new SimpleOfflineReader(str7, str8, str9, date2, date3, offlineLocation2 != null ? offlineLocation2.offline_enabled : false)));
                i = 10;
            }
            return arrayList;
        }

        public final List<OfflineData.OfflineDataPaymentIntent> dataFromPaymentIntentRequest(OfflineRequestsToSync data) {
            Object next;
            String str;
            Long l;
            Intrinsics.checkNotNullParameter(data, "data");
            List<OfflineApiRequest> listComponent1 = data.component1();
            Set<String> setComponent2 = data.component2();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : listComponent1) {
                String strEntityId = OfflineAdapterKt.entityId((OfflineApiRequest) obj);
                Object obj2 = linkedHashMap.get(strEntityId);
                if (obj2 == null) {
                    obj2 = (List) new ArrayList();
                    linkedHashMap.put(strEntityId, obj2);
                }
                ((List) obj2).add(obj);
            }
            ArrayList arrayList = new ArrayList(linkedHashMap.size());
            Iterator it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                String str2 = (String) entry.getKey();
                List list = (List) entry.getValue();
                List<OfflineApiRequest> list2 = list;
                List listSortedWith = CollectionsKt.sortedWith(list2, new Comparator() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.offline.OfflineDataFactory$Companion$dataFromPaymentIntentRequest$lambda$10$$inlined$sortedBy$1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.util.Comparator
                    public final int compare(T t, T t2) {
                        return ComparisonsKt.compareValues(Long.valueOf(((OfflineApiRequest) t).created_at), Long.valueOf(((OfflineApiRequest) t2).created_at));
                    }
                });
                Iterator it2 = list2.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it2.next();
                    if (PaymentIntentRequestType.valueOf(((OfflineApiRequest) next).type.toString()) == PaymentIntentRequestType.PROCESS_PAYMENT_INTENT) {
                        break;
                    }
                }
                OfflineApiRequest offlineApiRequest = (OfflineApiRequest) next;
                if (offlineApiRequest == null) {
                    offlineApiRequest = (OfflineApiRequest) CollectionsKt.first(list);
                }
                String strEntityId2 = OfflineAdapterKt.entityId((OfflineApiRequest) CollectionsKt.first(listSortedWith));
                PaymentIntent paymentIntent = offlineApiRequest.payment_intent;
                long jLongValue = (paymentIntent == null || (l = paymentIntent.amount) == null) ? 0L : l.longValue();
                boolean zContains = setComponent2.contains(str2);
                PaymentIntent paymentIntent2 = ((OfflineApiRequest) CollectionsKt.first(list)).payment_intent;
                if (paymentIntent2 == null || (str = paymentIntent2.currency) == null) {
                    str = "";
                }
                String str3 = str;
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
                for (OfflineApiRequest offlineApiRequest2 : list2) {
                    arrayList2.add(new SimpleOfflinePayment(offlineApiRequest2.offline_id, offlineApiRequest2.stripe_entity_id, OfflineDataFactory.INSTANCE.protoTypeToSdkType(offlineApiRequest2.type), new Date(offlineApiRequest2.created_at), OfflineDataFactory.INSTANCE.isForwarded(offlineApiRequest2)));
                    setComponent2 = setComponent2;
                    it = it;
                }
                arrayList.add(new OfflineData.OfflineDataPaymentIntent(strEntityId2, jLongValue, str3, zContains, arrayList2));
            }
            return arrayList;
        }

        private final PaymentIntentRequestType protoTypeToSdkType(OfflineApiRequest.ApiRequestType type) {
            int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
            if (i == 1) {
                return PaymentIntentRequestType.CREATE_PAYMENT_INTENT;
            }
            if (i == 2) {
                return PaymentIntentRequestType.PROCESS_PAYMENT_INTENT;
            }
            throw new UnsupportedOperationException("Unknown type: " + type);
        }

        private final boolean isForwarded(OfflineApiRequest offlineApiRequest) {
            String str;
            String str2;
            return (WhenMappings.$EnumSwitchMapping$0[offlineApiRequest.type.ordinal()] != 1 || (str = offlineApiRequest.offline_id) == null || str.length() == 0 || (str2 = offlineApiRequest.stripe_entity_id) == null || str2.length() == 0) ? false : true;
        }
    }
}
