package org.fourthline.cling.support.model.container;

import org.fourthline.cling.support.model.DIDLObject;
import org.fourthline.cling.support.model.StorageMedium;

/* JADX INFO: loaded from: classes2.dex */
public class StorageSystem extends Container {
    public static final DIDLObject.Class CLASS = new DIDLObject.Class("object.container.storageSystem");

    public StorageSystem() {
        setClazz(CLASS);
    }

    public Long getStorageFree() {
        return (Long) getFirstPropertyValue(DIDLObject.Property.UPNP.STORAGE_FREE.class);
    }

    public Long getStorageMaxPartition() {
        return (Long) getFirstPropertyValue(DIDLObject.Property.UPNP.STORAGE_MAX_PARTITION.class);
    }

    public StorageMedium getStorageMedium() {
        return (StorageMedium) getFirstPropertyValue(DIDLObject.Property.UPNP.STORAGE_MEDIUM.class);
    }

    public Long getStorageTotal() {
        return (Long) getFirstPropertyValue(DIDLObject.Property.UPNP.STORAGE_TOTAL.class);
    }

    public Long getStorageUsed() {
        return (Long) getFirstPropertyValue(DIDLObject.Property.UPNP.STORAGE_USED.class);
    }

    public StorageSystem setStorageFree(Long l4) {
        replaceFirstProperty(new DIDLObject.Property.UPNP.STORAGE_FREE(l4));
        return this;
    }

    public StorageSystem setStorageMaxPartition(Long l4) {
        replaceFirstProperty(new DIDLObject.Property.UPNP.STORAGE_MAX_PARTITION(l4));
        return this;
    }

    public StorageSystem setStorageMedium(StorageMedium storageMedium) {
        replaceFirstProperty(new DIDLObject.Property.UPNP.STORAGE_MEDIUM(storageMedium));
        return this;
    }

    public StorageSystem setStorageTotal(Long l4) {
        replaceFirstProperty(new DIDLObject.Property.UPNP.STORAGE_TOTAL(l4));
        return this;
    }

    public StorageSystem setStorageUsed(Long l4) {
        replaceFirstProperty(new DIDLObject.Property.UPNP.STORAGE_USED(l4));
        return this;
    }

    public StorageSystem(Container container) {
        super(container);
    }

    public StorageSystem(String str, Container container, String str2, String str3, Integer num, Long l4, Long l5, Long l6, Long l7, StorageMedium storageMedium) {
        this(str, container.getId(), str2, str3, num, l4, l5, l6, l7, storageMedium);
    }

    public StorageSystem(String str, String str2, String str3, String str4, Integer num, Long l4, Long l5, Long l6, Long l7, StorageMedium storageMedium) {
        super(str, str2, str3, str4, CLASS, num);
        if (l4 != null) {
            setStorageTotal(l4);
        }
        if (l5 != null) {
            setStorageUsed(l5);
        }
        if (l6 != null) {
            setStorageFree(l6);
        }
        if (l7 != null) {
            setStorageMaxPartition(l7);
        }
        if (storageMedium != null) {
            setStorageMedium(storageMedium);
        }
    }
}
