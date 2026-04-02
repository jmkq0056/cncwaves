package org.fourthline.cling.registry;

import android.support.v4.media.f;
import org.fourthline.cling.model.ExpirationDetails;

/* JADX INFO: loaded from: classes2.dex */
class RegistryItem<K, I> {
    private ExpirationDetails expirationDetails;
    private I item;
    private K key;

    public RegistryItem(K k4) {
        this.expirationDetails = new ExpirationDetails();
        this.key = k4;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.key.equals(((RegistryItem) obj).key);
    }

    public ExpirationDetails getExpirationDetails() {
        return this.expirationDetails;
    }

    public I getItem() {
        return this.item;
    }

    public K getKey() {
        return this.key;
    }

    public int hashCode() {
        return this.key.hashCode();
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(") ");
        sbA.append(getExpirationDetails());
        sbA.append(" KEY: ");
        sbA.append(getKey());
        sbA.append(" ITEM: ");
        sbA.append(getItem());
        return sbA.toString();
    }

    public RegistryItem(K k4, I i4, int i5) {
        this.expirationDetails = new ExpirationDetails();
        this.key = k4;
        this.item = i4;
        this.expirationDetails = new ExpirationDetails(i5);
    }
}
