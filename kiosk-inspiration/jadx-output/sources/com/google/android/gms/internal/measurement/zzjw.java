package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjy;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.2.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzjw<T extends zzjy<T>> {
    private static final zzjw<?> zzb = new zzjw<>(true);
    final zzmj<T, Object> zza;
    private boolean zzc;
    private boolean zzd;

    static int zza(zzng zzngVar, int i, Object obj) {
        int iZzf = zzjn.zzf(i);
        if (zzngVar == zzng.zzj) {
            zzkj.zza((zzlm) obj);
            iZzf <<= 1;
        }
        return iZzf + zza(zzngVar, obj);
    }

    private static int zza(zzng zzngVar, Object obj) {
        switch (zzjz.zzb[zzngVar.ordinal()]) {
            case 1:
                return zzjn.zza(((Double) obj).doubleValue());
            case 2:
                return zzjn.zza(((Float) obj).floatValue());
            case 3:
                return zzjn.zzb(((Long) obj).longValue());
            case 4:
                return zzjn.zze(((Long) obj).longValue());
            case 5:
                return zzjn.zzc(((Integer) obj).intValue());
            case 6:
                return zzjn.zza(((Long) obj).longValue());
            case 7:
                return zzjn.zzb(((Integer) obj).intValue());
            case 8:
                return zzjn.zza(((Boolean) obj).booleanValue());
            case 9:
                return zzjn.zza((zzlm) obj);
            case 10:
                if (obj instanceof zzkq) {
                    return zzjn.zza((zzkq) obj);
                }
                return zzjn.zzb((zzlm) obj);
            case 11:
                if (obj instanceof zziy) {
                    return zzjn.zza((zziy) obj);
                }
                return zzjn.zza((String) obj);
            case 12:
                if (obj instanceof zziy) {
                    return zzjn.zza((zziy) obj);
                }
                return zzjn.zza((byte[]) obj);
            case 13:
                return zzjn.zzg(((Integer) obj).intValue());
            case 14:
                return zzjn.zzd(((Integer) obj).intValue());
            case 15:
                return zzjn.zzc(((Long) obj).longValue());
            case 16:
                return zzjn.zze(((Integer) obj).intValue());
            case 17:
                return zzjn.zzd(((Long) obj).longValue());
            case 18:
                if (obj instanceof zzki) {
                    return zzjn.zza(((zzki) obj).zza());
                }
                return zzjn.zza(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int zza(zzjy<?> zzjyVar, Object obj) {
        zzng zzngVarZzb = zzjyVar.zzb();
        int iZza = zzjyVar.zza();
        if (zzjyVar.zze()) {
            List list = (List) obj;
            int size = list.size();
            int i = 0;
            if (!zzjyVar.zzd()) {
                int iZza2 = 0;
                while (i < size) {
                    iZza2 += zza(zzngVarZzb, iZza, list.get(i));
                    i++;
                }
                return iZza2;
            }
            if (list.isEmpty()) {
                return 0;
            }
            int iZza3 = 0;
            while (i < size) {
                iZza3 += zza(zzngVarZzb, list.get(i));
                i++;
            }
            return zzjn.zzf(iZza) + iZza3 + zzjn.zzg(iZza3);
        }
        return zza(zzngVarZzb, iZza, obj);
    }

    public final int zza() {
        int iZzb = this.zza.zzb();
        int iZza = 0;
        for (int i = 0; i < iZzb; i++) {
            iZza += zza((Map.Entry) this.zza.zza(i));
        }
        Iterator it = this.zza.zzc().iterator();
        while (it.hasNext()) {
            iZza += zza((Map.Entry) it.next());
        }
        return iZza;
    }

    private static int zza(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (key.zzc() == zznj.MESSAGE && !key.zze() && !key.zzd()) {
            if (value instanceof zzkq) {
                return zzjn.zza(entry.getKey().zza(), (zzkq) value);
            }
            return zzjn.zza(entry.getKey().zza(), (zzlm) value);
        }
        return zza((zzjy<?>) key, value);
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public static <T extends zzjy<T>> zzjw<T> zzb() {
        return (zzjw<T>) zzb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        zzjw zzjwVar = new zzjw();
        int iZzb = this.zza.zzb();
        for (int i = 0; i < iZzb; i++) {
            Map.Entry<K, Object> entryZza = this.zza.zza(i);
            zzjwVar.zzb((zzjy) entryZza.getKey(), entryZza.getValue());
        }
        Iterator it = this.zza.zzc().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            zzjwVar.zzb((zzjy) entry.getKey(), entry.getValue());
        }
        zzjwVar.zzd = this.zzd;
        return zzjwVar;
    }

    private static Object zza(Object obj) {
        if (obj instanceof zzlv) {
            return ((zzlv) obj).clone();
        }
        if (!(obj instanceof byte[])) {
            return obj;
        }
        byte[] bArr = (byte[]) obj;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    private final Object zza(T t) {
        Object obj = this.zza.get(t);
        if (!(obj instanceof zzkq)) {
            return obj;
        }
        throw new NoSuchMethodError();
    }

    final Iterator<Map.Entry<T, Object>> zzc() {
        if (this.zza.isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.zzd) {
            return new zzks(this.zza.zzd().iterator());
        }
        return this.zza.zzd().iterator();
    }

    public final Iterator<Map.Entry<T, Object>> zzd() {
        if (this.zza.isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.zzd) {
            return new zzks(this.zza.entrySet().iterator());
        }
        return this.zza.entrySet().iterator();
    }

    private zzjw() {
        this.zza = new zzmi();
    }

    private zzjw(zzmj<T, Object> zzmjVar) {
        this.zza = zzmjVar;
        zze();
    }

    private zzjw(boolean z) {
        this(new zzmi());
        zze();
    }

    public final void zze() {
        if (this.zzc) {
            return;
        }
        int iZzb = this.zza.zzb();
        for (int i = 0; i < iZzb; i++) {
            Object value = this.zza.zza(i).getValue();
            if (value instanceof zzkg) {
                ((zzkg) value).zzco();
            }
        }
        Iterator it = this.zza.zzc().iterator();
        while (it.hasNext()) {
            Object value2 = ((Map.Entry) it.next()).getValue();
            if (value2 instanceof zzkg) {
                ((zzkg) value2).zzco();
            }
        }
        this.zza.zza();
        this.zzc = true;
    }

    public final void zza(zzjw<T> zzjwVar) {
        int iZzb = zzjwVar.zza.zzb();
        for (int i = 0; i < iZzb; i++) {
            zzb((Map.Entry) zzjwVar.zza.zza(i));
        }
        Iterator it = zzjwVar.zza.zzc().iterator();
        while (it.hasNext()) {
            zzb((Map.Entry) it.next());
        }
    }

    private final void zzb(Map.Entry<T, Object> entry) {
        zzlm zzlmVarZzaj;
        T key = entry.getKey();
        Object value = entry.getValue();
        boolean z = value instanceof zzkq;
        if (key.zze()) {
            if (z) {
                throw new IllegalStateException("Lazy fields can not be repeated");
            }
            Object objZza = zza((zzjy) key);
            List list = (List) value;
            int size = list.size();
            if (objZza == null) {
                objZza = new ArrayList(size);
            }
            List list2 = (List) objZza;
            for (int i = 0; i < size; i++) {
                list2.add(zza(list.get(i)));
            }
            this.zza.put(key, objZza);
            return;
        }
        if (key.zzc() != zznj.MESSAGE) {
            if (z) {
                throw new IllegalStateException("Lazy fields must be message-valued");
            }
            this.zza.put(key, zza(value));
            return;
        }
        Object objZza2 = zza((zzjy) key);
        if (objZza2 == null) {
            this.zza.put(key, zza(value));
            if (z) {
                this.zzd = true;
                return;
            }
            return;
        }
        if (z) {
            throw new NoSuchMethodError();
        }
        if (objZza2 instanceof zzlv) {
            zzlmVarZzaj = key.zza((zzlv) objZza2, (zzlv) value);
        } else {
            zzlmVarZzaj = key.zza(((zzlm) objZza2).zzcn(), (zzlm) value).zzaj();
        }
        this.zza.put(key, zzlmVarZzaj);
    }

    private final void zzb(T t, Object obj) {
        if (t.zze()) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            List list = (List) obj;
            int size = list.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                Object obj2 = list.get(i);
                zzc(t, obj2);
                arrayList.add(obj2);
            }
            obj = arrayList;
        } else {
            zzc(t, obj);
        }
        if (obj instanceof zzkq) {
            this.zzd = true;
        }
        this.zza.put(t, obj);
    }

    private static void zzc(T t, Object obj) {
        zzng zzngVarZzb = t.zzb();
        zzkj.zza(obj);
        boolean z = true;
        switch (zzjz.zza[zzngVarZzb.zzb().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                break;
            case 2:
                z = obj instanceof Long;
                break;
            case 3:
                z = obj instanceof Float;
                break;
            case 4:
                z = obj instanceof Double;
                break;
            case 5:
                z = obj instanceof Boolean;
                break;
            case 6:
                z = obj instanceof String;
                break;
            case 7:
                if (!(obj instanceof zziy) && !(obj instanceof byte[])) {
                    z = false;
                }
                break;
            case 8:
                if (!(obj instanceof Integer) && !(obj instanceof zzki)) {
                    z = false;
                }
                break;
            case 9:
                if (!(obj instanceof zzlm) && !(obj instanceof zzkq)) {
                    z = false;
                }
                break;
            default:
                z = false;
                break;
        }
        if (!z) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(t.zza()), t.zzb().zzb(), obj.getClass().getName()));
        }
    }

    static void zza(zzjn zzjnVar, zzng zzngVar, int i, Object obj) throws IOException {
        if (zzngVar == zzng.zzj) {
            zzlm zzlmVar = (zzlm) obj;
            zzkj.zza(zzlmVar);
            zzjnVar.zzj(i, 3);
            zzlmVar.zza(zzjnVar);
            zzjnVar.zzj(i, 4);
        }
        zzjnVar.zzj(i, zzngVar.zza());
        switch (zzjz.zzb[zzngVar.ordinal()]) {
            case 1:
                zzjnVar.zzb(((Double) obj).doubleValue());
                break;
            case 2:
                zzjnVar.zzb(((Float) obj).floatValue());
                break;
            case 3:
                zzjnVar.zzh(((Long) obj).longValue());
                break;
            case 4:
                zzjnVar.zzh(((Long) obj).longValue());
                break;
            case 5:
                zzjnVar.zzi(((Integer) obj).intValue());
                break;
            case 6:
                zzjnVar.zzf(((Long) obj).longValue());
                break;
            case 7:
                zzjnVar.zzh(((Integer) obj).intValue());
                break;
            case 8:
                zzjnVar.zzb(((Boolean) obj).booleanValue());
                break;
            case 9:
                ((zzlm) obj).zza(zzjnVar);
                break;
            case 10:
                zzjnVar.zzc((zzlm) obj);
                break;
            case 11:
                if (obj instanceof zziy) {
                    zzjnVar.zzb((zziy) obj);
                } else {
                    zzjnVar.zzb((String) obj);
                }
                break;
            case 12:
                if (obj instanceof zziy) {
                    zzjnVar.zzb((zziy) obj);
                } else {
                    byte[] bArr = (byte[]) obj;
                    zzjnVar.zzb(bArr, 0, bArr.length);
                }
                break;
            case 13:
                zzjnVar.zzk(((Integer) obj).intValue());
                break;
            case 14:
                zzjnVar.zzh(((Integer) obj).intValue());
                break;
            case 15:
                zzjnVar.zzf(((Long) obj).longValue());
                break;
            case 16:
                zzjnVar.zzj(((Integer) obj).intValue());
                break;
            case 17:
                zzjnVar.zzg(((Long) obj).longValue());
                break;
            case 18:
                if (obj instanceof zzki) {
                    zzjnVar.zzi(((zzki) obj).zza());
                } else {
                    zzjnVar.zzi(((Integer) obj).intValue());
                }
                break;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzjw) {
            return this.zza.equals(((zzjw) obj).zza);
        }
        return false;
    }

    public final boolean zzf() {
        return this.zzc;
    }

    public final boolean zzg() {
        int iZzb = this.zza.zzb();
        for (int i = 0; i < iZzb; i++) {
            if (!zzc(this.zza.zza(i))) {
                return false;
            }
        }
        Iterator it = this.zza.zzc().iterator();
        while (it.hasNext()) {
            if (!zzc((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    private static <T extends zzjy<T>> boolean zzc(Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.zzc() != zznj.MESSAGE) {
            return true;
        }
        if (key.zze()) {
            List list = (List) entry.getValue();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (!zzb(list.get(i))) {
                    return false;
                }
            }
            return true;
        }
        return zzb(entry.getValue());
    }

    private static boolean zzb(Object obj) {
        if (obj instanceof zzlo) {
            return ((zzlo) obj).j_();
        }
        if (obj instanceof zzkq) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }
}
