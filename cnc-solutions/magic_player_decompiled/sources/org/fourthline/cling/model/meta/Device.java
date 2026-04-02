package org.fourthline.cling.model.meta;

import android.support.v4.media.f;
import androidx.appcompat.view.a;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.Namespace;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.DeviceIdentity;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.profile.RemoteClientInfo;
import org.fourthline.cling.model.resource.Resource;
import org.fourthline.cling.model.types.DeviceType;
import org.fourthline.cling.model.types.ServiceId;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;

/* JADX INFO: loaded from: classes2.dex */
public abstract class Device<DI extends DeviceIdentity, D extends Device, S extends Service> implements Validatable {
    private static final Logger log = Logger.getLogger(Device.class.getName());
    private final DeviceDetails details;
    public final D[] embeddedDevices;
    private final Icon[] icons;
    private final DI identity;
    private D parentDevice;
    public final S[] services;
    private final DeviceType type;
    private final UDAVersion version;

    public Device(DI di) {
        this(di, null, null, null, null, null);
    }

    private boolean isMatch(Service service, ServiceType serviceType, ServiceId serviceId) {
        return (serviceType == null || service.getServiceType().implementsVersion(serviceType)) && (serviceId == null || service.getServiceId().equals(serviceId));
    }

    public abstract Resource[] discoverResources(Namespace namespace);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && this.identity.equals(((Device) obj).identity);
    }

    public D find(UDN udn, D d4) {
        if (d4.getIdentity() != null && d4.getIdentity().getUdn() != null && d4.getIdentity().getUdn().equals(udn)) {
            return d4;
        }
        if (!d4.hasEmbeddedDevices()) {
            return null;
        }
        for (Device device : d4.getEmbeddedDevices()) {
            D d5 = (D) find(udn, device);
            if (d5 != null) {
                return d5;
            }
        }
        return null;
    }

    public abstract D findDevice(UDN udn);

    public D[] findDevices(DeviceType deviceType) {
        return (D[]) toDeviceArray(find(deviceType, this));
    }

    public D[] findEmbeddedDevices() {
        return (D[]) toDeviceArray(findEmbeddedDevices(this));
    }

    public Icon[] findIcons() {
        ArrayList arrayList = new ArrayList();
        if (hasIcons()) {
            arrayList.addAll(Arrays.asList(getIcons()));
        }
        for (Device device : findEmbeddedDevices()) {
            if (device.hasIcons()) {
                arrayList.addAll(Arrays.asList(device.getIcons()));
            }
        }
        return (Icon[]) arrayList.toArray(new Icon[arrayList.size()]);
    }

    public S findService(ServiceId serviceId) {
        Collection<S> collectionFindServices = findServices(null, serviceId, this);
        if (collectionFindServices.size() == 1) {
            return collectionFindServices.iterator().next();
        }
        return null;
    }

    public ServiceType[] findServiceTypes() {
        Collection<S> collectionFindServices = findServices(null, null, this);
        HashSet hashSet = new HashSet();
        Iterator<S> it = collectionFindServices.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getServiceType());
        }
        return (ServiceType[]) hashSet.toArray(new ServiceType[hashSet.size()]);
    }

    public S[] findServices() {
        return (S[]) toServiceArray(findServices(null, null, this));
    }

    public DeviceDetails getDetails() {
        return this.details;
    }

    public String getDisplayString() {
        String modelNumber;
        String string = "";
        if (getDetails() == null || getDetails().getModelDetails() == null) {
            modelNumber = null;
        } else {
            ModelDetails modelDetails = getDetails().getModelDetails();
            strTrim = modelDetails.getModelName() != null ? (modelDetails.getModelNumber() == null || !modelDetails.getModelName().endsWith(modelDetails.getModelNumber())) ? modelDetails.getModelName() : modelDetails.getModelName().substring(0, modelDetails.getModelName().length() - modelDetails.getModelNumber().length()) : null;
            modelNumber = strTrim != null ? (modelDetails.getModelNumber() == null || strTrim.startsWith(modelDetails.getModelNumber())) ? "" : modelDetails.getModelNumber() : modelDetails.getModelNumber();
        }
        StringBuilder sb = new StringBuilder();
        if (getDetails() != null && getDetails().getManufacturerDetails() != null) {
            if (strTrim != null && getDetails().getManufacturerDetails().getManufacturer() != null) {
                strTrim = strTrim.startsWith(getDetails().getManufacturerDetails().getManufacturer()) ? strTrim.substring(getDetails().getManufacturerDetails().getManufacturer().length()).trim() : strTrim.trim();
            }
            if (getDetails().getManufacturerDetails().getManufacturer() != null) {
                sb.append(getDetails().getManufacturerDetails().getManufacturer());
            }
        }
        sb.append((strTrim == null || strTrim.length() <= 0) ? "" : a.a(" ", strTrim));
        if (modelNumber != null && modelNumber.length() > 0) {
            StringBuilder sbA = f.a(" ");
            sbA.append(modelNumber.trim());
            string = sbA.toString();
        }
        sb.append(string);
        return sb.toString();
    }

    public abstract D[] getEmbeddedDevices();

    public Icon[] getIcons() {
        return this.icons;
    }

    public DI getIdentity() {
        return this.identity;
    }

    public D getParentDevice() {
        return this.parentDevice;
    }

    public abstract D getRoot();

    public abstract S[] getServices();

    public DeviceType getType() {
        return this.type;
    }

    public UDAVersion getVersion() {
        return this.version;
    }

    public boolean hasEmbeddedDevices() {
        return getEmbeddedDevices() != null && getEmbeddedDevices().length > 0;
    }

    public boolean hasIcons() {
        return getIcons() != null && getIcons().length > 0;
    }

    public boolean hasServices() {
        return getServices() != null && getServices().length > 0;
    }

    public int hashCode() {
        return this.identity.hashCode();
    }

    public boolean isFullyHydrated() {
        for (Service service : findServices()) {
            if (service.hasStateVariables()) {
                return true;
            }
        }
        return false;
    }

    public boolean isRoot() {
        return getParentDevice() == null;
    }

    public abstract D newInstance(UDN udn, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, S[] sArr, List<D> list);

    public abstract S newInstance(ServiceType serviceType, ServiceId serviceId, URI uri, URI uri2, URI uri3, Action<S>[] actionArr, StateVariable<S>[] stateVariableArr);

    public abstract S[] newServiceArray(int i4);

    public void setParentDevice(D d4) {
        if (this.parentDevice != null) {
            throw new IllegalStateException("Final value has been set already, model is immutable");
        }
        this.parentDevice = d4;
    }

    public abstract D[] toDeviceArray(Collection<D> collection);

    public abstract S[] toServiceArray(Collection<S> collection);

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(") Identity: ");
        sbA.append(getIdentity().toString());
        sbA.append(", Root: ");
        sbA.append(isRoot());
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.Validatable
    public List<ValidationError> validate() {
        ArrayList arrayList = new ArrayList();
        if (getType() != null) {
            arrayList.addAll(getVersion().validate());
            if (getIdentity() != null) {
                arrayList.addAll(getIdentity().validate());
            }
            if (getDetails() != null) {
                arrayList.addAll(getDetails().validate());
            }
            if (hasServices()) {
                for (Service service : getServices()) {
                    if (service != null) {
                        arrayList.addAll(service.validate());
                    }
                }
            }
            if (hasEmbeddedDevices()) {
                for (Device device : getEmbeddedDevices()) {
                    if (device != null) {
                        arrayList.addAll(device.validate());
                    }
                }
            }
        }
        return arrayList;
    }

    public Device(DI di, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, S[] sArr) {
        this(di, null, deviceType, deviceDetails, iconArr, sArr, null);
    }

    public D[] findDevices(ServiceType serviceType) {
        return (D[]) toDeviceArray(find(serviceType, this));
    }

    public Collection<D> findEmbeddedDevices(D d4) {
        HashSet hashSet = new HashSet();
        if (!d4.isRoot() && d4.getIdentity().getUdn() != null) {
            hashSet.add(d4);
        }
        if (d4.hasEmbeddedDevices()) {
            for (Device device : d4.getEmbeddedDevices()) {
                hashSet.addAll(findEmbeddedDevices(device));
            }
        }
        return hashSet;
    }

    public S[] findServices(ServiceType serviceType) {
        return (S[]) toServiceArray(findServices(serviceType, null, this));
    }

    public DeviceDetails getDetails(RemoteClientInfo remoteClientInfo) {
        return getDetails();
    }

    public Device(DI di, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, S[] sArr, D[] dArr) {
        this(di, null, deviceType, deviceDetails, iconArr, sArr, dArr);
    }

    public S findService(ServiceType serviceType) {
        Collection<S> collectionFindServices = findServices(serviceType, null, this);
        if (collectionFindServices.size() > 0) {
            return collectionFindServices.iterator().next();
        }
        return null;
    }

    public Collection<S> findServices(ServiceType serviceType, ServiceId serviceId, D d4) {
        HashSet hashSet = new HashSet();
        if (d4.hasServices()) {
            for (Service service : d4.getServices()) {
                if (isMatch(service, serviceType, serviceId)) {
                    hashSet.add(service);
                }
            }
        }
        Collection<D> collectionFindEmbeddedDevices = findEmbeddedDevices(d4);
        if (collectionFindEmbeddedDevices != null) {
            for (D d5 : collectionFindEmbeddedDevices) {
                if (d5.hasServices()) {
                    for (Service service2 : d5.getServices()) {
                        if (isMatch(service2, serviceType, serviceId)) {
                            hashSet.add(service2);
                        }
                    }
                }
            }
        }
        return hashSet;
    }

    public Device(DI di, UDAVersion uDAVersion, DeviceType deviceType, DeviceDetails deviceDetails, Icon[] iconArr, S[] sArr, D[] dArr) throws ValidationException {
        boolean z3;
        this.identity = di;
        this.version = uDAVersion == null ? new UDAVersion() : uDAVersion;
        this.type = deviceType;
        this.details = deviceDetails;
        ArrayList arrayList = new ArrayList();
        if (iconArr != null) {
            for (Icon icon : iconArr) {
                if (icon != null) {
                    icon.setDevice(this);
                    List<ValidationError> listValidate = icon.validate();
                    if (listValidate.isEmpty()) {
                        arrayList.add(icon);
                    } else {
                        log.warning("Discarding invalid '" + icon + "': " + listValidate);
                    }
                }
            }
        }
        this.icons = (Icon[]) arrayList.toArray(new Icon[arrayList.size()]);
        boolean z4 = true;
        if (sArr != null) {
            z3 = true;
            for (S s3 : sArr) {
                if (s3 != null) {
                    s3.setDevice(this);
                    z3 = false;
                }
            }
        } else {
            z3 = true;
        }
        this.services = (sArr == null || z3) ? null : sArr;
        if (dArr != null) {
            for (D d4 : dArr) {
                if (d4 != null) {
                    d4.setParentDevice(this);
                    z4 = false;
                }
            }
        }
        this.embeddedDevices = (dArr == null || z4) ? null : dArr;
        List<ValidationError> listValidate2 = validate();
        if (listValidate2.size() > 0) {
            if (log.isLoggable(Level.FINEST)) {
                Iterator<ValidationError> it = listValidate2.iterator();
                while (it.hasNext()) {
                    log.finest(it.next().toString());
                }
            }
            throw new ValidationException("Validation of device graph failed, call getErrors() on exception", listValidate2);
        }
    }

    public Collection<D> find(DeviceType deviceType, D d4) {
        HashSet hashSet = new HashSet();
        if (d4.getType() != null && d4.getType().implementsVersion(deviceType)) {
            hashSet.add(d4);
        }
        if (d4.hasEmbeddedDevices()) {
            for (Device device : d4.getEmbeddedDevices()) {
                hashSet.addAll(find(deviceType, device));
            }
        }
        return hashSet;
    }

    public Collection<D> find(ServiceType serviceType, D d4) {
        Collection<S> collectionFindServices = findServices(serviceType, null, d4);
        HashSet hashSet = new HashSet();
        Iterator<S> it = collectionFindServices.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getDevice());
        }
        return hashSet;
    }
}
