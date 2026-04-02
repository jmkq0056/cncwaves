package com.stripe.core.readerupdate;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.stripe.core.readerupdate.Update;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: compiled from: UpdatePackage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0005\n\u0002\u0010(\n\u0002\b\u0002\n\u0002\u0010*\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 &2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001&B7\b\u0016\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0002\u0010\u000bB\u0015\b\u0002\u0012\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\u0002\u0010\rJ\u0011\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0002H\u0096\u0003J\u0017\u0010\u0015\u001a\u00020\u00132\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00020\u0017H\u0096\u0001J\u0011\u0010\u0018\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u000fH\u0096\u0003J\u0011\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0002H\u0096\u0001J\t\u0010\u001b\u001a\u00020\u0013H\u0096\u0001J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00020\u001dH\u0096\u0003J\u0011\u0010\u001e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0002H\u0096\u0001J\u000f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00020 H\u0096\u0001J\u0017\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00020 2\u0006\u0010\u0019\u001a\u00020\u000fH\u0096\u0001J\u001f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\"\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\u000fH\u0096\u0001J\b\u0010$\u001a\u00020%H\u0016R\u0012\u0010\u000e\u001a\u00020\u000fX\u0096\u0005¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011¨\u0006'"}, d2 = {"Lcom/stripe/core/readerupdate/UpdatePackage;", "", "Lcom/stripe/core/readerupdate/Update;", UserMetadata.KEYDATA_FILENAME, "Lcom/stripe/core/readerupdate/Update$Keys;", "config", "Lcom/stripe/core/readerupdate/Update$Config;", "firmware", "Lcom/stripe/core/readerupdate/Update$Firmware;", "settings", "Lcom/stripe/core/readerupdate/Update$Settings;", "(Lcom/stripe/core/readerupdate/Update$Keys;Lcom/stripe/core/readerupdate/Update$Config;Lcom/stripe/core/readerupdate/Update$Firmware;Lcom/stripe/core/readerupdate/Update$Settings;)V", "updateList", "(Ljava/util/List;)V", "size", "", "getSize", "()I", "contains", "", "element", "containsAll", "elements", "", "get", FirebaseAnalytics.Param.INDEX, "indexOf", "isEmpty", "iterator", "", "lastIndexOf", "listIterator", "", "subList", "fromIndex", "toIndex", "toString", "", "Companion", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdatePackage implements List<Update>, KMappedMarker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final /* synthetic */ List<Update> $$delegate_0;

    public /* synthetic */ UpdatePackage(List list, DefaultConstructorMarker defaultConstructorMarker) {
        this(list);
    }

    /* JADX INFO: renamed from: add, reason: avoid collision after fix types in other method */
    public void add2(int i, Update update) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ void add(int i, Update update) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean add(Update update) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public /* bridge */ /* synthetic */ boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public boolean addAll(int i, Collection<? extends Update> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends Update> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public void addFirst(Update update) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public /* bridge */ /* synthetic */ void addFirst(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public void addLast(Update update) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public /* bridge */ /* synthetic */ void addLast(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean contains(Update element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.$$delegate_0.contains(element);
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(Collection<? extends Object> elements) {
        Intrinsics.checkNotNullParameter(elements, "elements");
        return this.$$delegate_0.containsAll(elements);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.List
    public Update get(int index) {
        return this.$$delegate_0.get(index);
    }

    public int getSize() {
        return this.$$delegate_0.size();
    }

    public int indexOf(Update element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.$$delegate_0.indexOf(element);
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        return this.$$delegate_0.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    public Iterator<Update> iterator() {
        return this.$$delegate_0.iterator();
    }

    public int lastIndexOf(Update element) {
        Intrinsics.checkNotNullParameter(element, "element");
        return this.$$delegate_0.lastIndexOf(element);
    }

    @Override // java.util.List
    public ListIterator<Update> listIterator() {
        return this.$$delegate_0.listIterator();
    }

    @Override // java.util.List
    public ListIterator<Update> listIterator(int index) {
        return this.$$delegate_0.listIterator(index);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.List
    public Update remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ Update remove(int i) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public Update removeFirst() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: renamed from: removeFirst, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m471removeFirst() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public Update removeLast() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: renamed from: removeLast, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ Object m472removeLast() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void replaceAll(UnaryOperator<Update> unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* JADX INFO: renamed from: set, reason: avoid collision after fix types in other method */
    public Update set2(int i, Update update) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public /* bridge */ /* synthetic */ Update set(int i, Update update) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public void sort(Comparator<? super Update> comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public List<Update> subList(int fromIndex, int toIndex) {
        return this.$$delegate_0.subList(fromIndex, toIndex);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.toArray(this);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        return (T[]) CollectionToArray.toArray(this, array);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private UpdatePackage(List<? extends Update> list) {
        this.$$delegate_0 = list;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Update) {
            return contains((Update) obj);
        }
        return false;
    }

    @Override // java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Update) {
            return indexOf((Update) obj);
        }
        return -1;
    }

    @Override // java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof Update) {
            return lastIndexOf((Update) obj);
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return getSize();
    }

    public /* synthetic */ UpdatePackage(Update.Keys keys, Update.Config config, Update.Firmware firmware, Update.Settings settings, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : keys, (i & 2) != 0 ? null : config, (i & 4) != 0 ? null : firmware, (i & 8) != 0 ? null : settings);
    }

    public UpdatePackage(Update.Keys keys, Update.Config config, Update.Firmware firmware, Update.Settings settings) {
        this(CollectionsKt.listOfNotNull((Object[]) new Update[]{firmware, config, keys, settings}));
    }

    public String toString() {
        return CollectionsKt.toList(this).toString();
    }

    /* JADX INFO: compiled from: UpdatePackage.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0007¨\u0006\b"}, d2 = {"Lcom/stripe/core/readerupdate/UpdatePackage$Companion;", "", "()V", "fromList", "Lcom/stripe/core/readerupdate/UpdatePackage;", "updateList", "", "Lcom/stripe/core/readerupdate/Update;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final UpdatePackage fromList(List<? extends Update> updateList) {
            Intrinsics.checkNotNullParameter(updateList, "updateList");
            return new UpdatePackage(updateList, null);
        }
    }
}
