package s1;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.concurrent.LazyInit;
import com.google.j2objc.annotations.RetainedWith;
import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
import org.eclipse.jetty.util.B64Code;
import org.slf4j.helpers.MessageFormatter;

/* JADX INFO: loaded from: classes.dex */
public abstract class g<K, V> implements Map<K, V>, Serializable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @LazyInit
    public transient h<Map.Entry<K, V>> f3456a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @RetainedWith
    @LazyInit
    public transient h<K> f3457b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @RetainedWith
    @LazyInit
    public transient e<V> f3458c;

    /* JADX INFO: loaded from: classes2.dex */
    public static class a implements Serializable {
        private static final long serialVersionUID = 0;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object[] f3459a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Object[] f3460b;

        public a(g<?, ?> gVar) {
            this.f3459a = new Object[gVar.size()];
            this.f3460b = new Object[gVar.size()];
            o<Map.Entry<?, ?>> it = gVar.entrySet().iterator();
            int i4 = 0;
            while (it.hasNext()) {
                Map.Entry<?, ?> next = it.next();
                this.f3459a[i4] = next.getKey();
                this.f3460b[i4] = next.getValue();
                i4++;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x009f, code lost:
        
            r4[r10] = r8;
            r1 = r1 + 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object readResolve() {
            /*
                Method dump skipped, instruction units count: 235
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: s1.g.a.readResolve():java.lang.Object");
        }
    }

    public abstract h<Map.Entry<K, V>> a();

    public abstract h<K> b();

    public abstract e<V> c();

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        e<V> eVarC = this.f3458c;
        if (eVarC == null) {
            eVarC = c();
            this.f3458c = eVarC;
        }
        return eVarC.contains(obj);
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public h<Map.Entry<K, V>> entrySet() {
        h<Map.Entry<K, V>> hVar = this.f3456a;
        if (hVar != null) {
            return hVar;
        }
        h<Map.Entry<K, V>> hVarA = a();
        this.f3456a = hVarA;
        return hVarA;
    }

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v3) {
        V v4 = get(obj);
        return v4 != null ? v4 : v3;
    }

    @Override // java.util.Map
    public int hashCode() {
        return d.a(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public Set keySet() {
        h<K> hVar = this.f3457b;
        if (hVar != null) {
            return hVar;
        }
        h<K> hVarB = b();
        this.f3457b = hVarB;
        return hVarB;
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    @Deprecated
    public final V put(K k4, V v3) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @CanIgnoreReturnValue
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        int size = size();
        if (size < 0) {
            throw new IllegalArgumentException("size cannot be negative but was: " + size);
        }
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) * 8, 1073741824L));
        sb.append(MessageFormatter.DELIM_START);
        boolean z3 = true;
        for (Map.Entry entry : entrySet()) {
            if (!z3) {
                sb.append(", ");
            }
            z3 = false;
            sb.append(entry.getKey());
            sb.append(B64Code.__pad);
            sb.append(entry.getValue());
        }
        sb.append(MessageFormatter.DELIM_STOP);
        return sb.toString();
    }

    @Override // java.util.Map
    public Collection values() {
        e<V> eVar = this.f3458c;
        if (eVar != null) {
            return eVar;
        }
        e<V> eVarC = c();
        this.f3458c = eVarC;
        return eVarC;
    }

    public Object writeReplace() {
        return new a(this);
    }
}
