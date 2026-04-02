package org.fourthline.cling.support.model.container;

import org.fourthline.cling.support.model.DIDLObject;

/* JADX INFO: loaded from: classes2.dex */
public class StorageFolder extends Container {
    public static final DIDLObject.Class CLASS = new DIDLObject.Class("object.container.storageFolder");

    public StorageFolder() {
        setClazz(CLASS);
    }

    public Long getStorageUsed() {
        return (Long) getFirstPropertyValue(DIDLObject.Property.UPNP.STORAGE_USED.class);
    }

    public StorageFolder setStorageUsed(Long l4) {
        replaceFirstProperty(new DIDLObject.Property.UPNP.STORAGE_USED(l4));
        return this;
    }

    public StorageFolder(Container container) {
        super(container);
    }

    public StorageFolder(String str, Container container, String str2, String str3, Integer num, Long l4) {
        this(str, container.getId(), str2, str3, num, l4);
    }

    public StorageFolder(String str, String str2, String str3, String str4, Integer num, Long l4) {
        super(str, str2, str3, str4, CLASS, num);
        if (l4 != null) {
            setStorageUsed(l4);
        }
    }
}
