package com.stripe.jvmcore.reboot;

import java.util.Comparator;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SettingWithPriority.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\b\u0003\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001aU\u0010\u0000\u001a\u0002H\u0001\"\u0014\b\u0000\u0010\u0002\u0018\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u0003*\u00020\u0004\"\u0004\b\u0001\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00020\u00052\u0006\u0010\u0006\u001a\u0002H\u00012\u0014\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u0002H\u0002\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\bH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\t\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\n"}, d2 = {"readFieldOfHighestPriority", "T", "F", "", "Lcom/stripe/jvmcore/reboot/FieldsWithPriority;", "", "defaultValue", "readSharedPrefValue", "Lkotlin/Function1;", "([Ljava/lang/Enum;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "reboot"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class SettingWithPriorityKt {
    /* JADX WARN: Incorrect types in method signature: <F:Ljava/lang/Enum<TF;>;:Lcom/stripe/jvmcore/reboot/FieldsWithPriority;T:Ljava/lang/Object;>([TF;TT;Lkotlin/jvm/functions/Function1<-TF;+TT;>;)TT; */
    public static final /* synthetic */ Object readFieldOfHighestPriority(Enum[] enumArr, Object obj, Function1 readSharedPrefValue) {
        Object objInvoke;
        Intrinsics.checkNotNullParameter(enumArr, "<this>");
        Intrinsics.checkNotNullParameter(readSharedPrefValue, "readSharedPrefValue");
        Intrinsics.needClassReification();
        Iterator<T> it = ArraysKt.sortedWith(enumArr, new Comparator() { // from class: com.stripe.jvmcore.reboot.SettingWithPriorityKt$readFieldOfHighestPriority$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt.compareValues(Integer.valueOf(((FieldsWithPriority) ((Enum) t)).getOrder()), Integer.valueOf(((FieldsWithPriority) ((Enum) t2)).getOrder()));
            }
        }).iterator();
        while (true) {
            if (!it.hasNext()) {
                objInvoke = null;
                break;
            }
            objInvoke = readSharedPrefValue.invoke((Enum) it.next());
            if (objInvoke != null) {
                break;
            }
        }
        return objInvoke == null ? obj : objInvoke;
    }
}
