package org.fourthline.cling.registry;

import android.support.v4.media.f;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.gena.GENASubscription;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.resource.Resource;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;

/* JADX INFO: loaded from: classes2.dex */
abstract class RegistryItems<D extends Device, S extends GENASubscription> {
    public final RegistryImpl registry;
    public final Set<RegistryItem<UDN, D>> deviceItems = new HashSet();
    public final Set<RegistryItem<String, S>> subscriptionItems = new HashSet();

    public RegistryItems(RegistryImpl registryImpl) {
        this.registry = registryImpl;
    }

    public abstract void add(D d4);

    public void addSubscription(S s3) {
        this.subscriptionItems.add(new RegistryItem<>(s3.getSubscriptionId(), s3, s3.getActualDurationSeconds()));
    }

    public boolean contains(D d4) {
        return contains(d4.getIdentity().getUdn());
    }

    public D get(UDN udn, boolean z3) {
        D d4;
        for (RegistryItem<UDN, D> registryItem : this.deviceItems) {
            D item = registryItem.getItem();
            if (item.getIdentity().getUdn().equals(udn)) {
                return item;
            }
            if (!z3 && (d4 = (D) registryItem.getItem().findDevice(udn)) != null) {
                return d4;
            }
        }
        return null;
    }

    public Set<RegistryItem<UDN, D>> getDeviceItems() {
        return this.deviceItems;
    }

    public Resource[] getResources(Device device) {
        try {
            return this.registry.getConfiguration().getNamespace().getResources(device);
        } catch (ValidationException e4) {
            StringBuilder sbA = f.a("Resource discover error: ");
            sbA.append(e4.toString());
            throw new RegistrationException(sbA.toString(), e4);
        }
    }

    public S getSubscription(String str) {
        for (RegistryItem<String, S> registryItem : this.subscriptionItems) {
            if (registryItem.getKey().equals(str)) {
                return registryItem.getItem();
            }
        }
        return null;
    }

    public Set<RegistryItem<String, S>> getSubscriptionItems() {
        return this.subscriptionItems;
    }

    public abstract void maintain();

    public abstract boolean remove(D d4);

    public abstract void removeAll();

    public boolean removeSubscription(S s3) {
        return this.subscriptionItems.remove(new RegistryItem(s3.getSubscriptionId()));
    }

    public abstract void shutdown();

    public boolean updateSubscription(S s3) {
        if (!removeSubscription(s3)) {
            return false;
        }
        addSubscription(s3);
        return true;
    }

    public boolean contains(UDN udn) {
        return this.deviceItems.contains(new RegistryItem(udn));
    }

    public Collection<D> get(DeviceType deviceType) {
        HashSet hashSet = new HashSet();
        Iterator<RegistryItem<UDN, D>> it = this.deviceItems.iterator();
        while (it.hasNext()) {
            Device[] deviceArrFindDevices = it.next().getItem().findDevices(deviceType);
            if (deviceArrFindDevices != null) {
                hashSet.addAll(Arrays.asList(deviceArrFindDevices));
            }
        }
        return hashSet;
    }

    public Collection<D> get(ServiceType serviceType) {
        HashSet hashSet = new HashSet();
        Iterator<RegistryItem<UDN, D>> it = this.deviceItems.iterator();
        while (it.hasNext()) {
            Device[] deviceArrFindDevices = it.next().getItem().findDevices(serviceType);
            if (deviceArrFindDevices != null) {
                hashSet.addAll(Arrays.asList(deviceArrFindDevices));
            }
        }
        return hashSet;
    }

    public Collection<D> get() {
        HashSet hashSet = new HashSet();
        Iterator<RegistryItem<UDN, D>> it = this.deviceItems.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getItem());
        }
        return hashSet;
    }
}
