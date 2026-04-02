package com.stripe.stripeterminal.internal.common.extensions;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import okhttp3.FormBody;

/* JADX INFO: compiled from: FormBodyExtensions.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0000\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0004*\u00020\u0004¨\u0006\u0006"}, d2 = {"keyValuePairs", "", "Lkotlin/Pair;", "", "Lokhttp3/FormBody;", "stripEmptyValues", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class FormBodyExtensionsKt {
    public static final List<Pair<String, String>> keyValuePairs(FormBody formBody) {
        Intrinsics.checkNotNullParameter(formBody, "<this>");
        IntRange intRangeUntil = RangesKt.until(0, formBody.size());
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            int iNextInt = ((IntIterator) it).nextInt();
            arrayList.add(TuplesKt.to(formBody.name(iNextInt), formBody.value(iNextInt)));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final FormBody stripEmptyValues(FormBody formBody) {
        Intrinsics.checkNotNullParameter(formBody, "<this>");
        FormBody.Builder builder = new FormBody.Builder(null, 1, 0 == true ? 1 : 0);
        List<Pair<String, String>> listKeyValuePairs = keyValuePairs(formBody);
        ArrayList<Pair> arrayList = new ArrayList();
        for (Object obj : listKeyValuePairs) {
            if (((String) ((Pair) obj).component2()).length() > 0) {
                arrayList.add(obj);
            }
        }
        for (Pair pair : arrayList) {
            builder.add((String) pair.component1(), (String) pair.component2());
        }
        return builder.build();
    }
}
