package org.fourthline.cling.protocol;

import android.support.v4.media.f;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.binding.xml.DescriptorBindingException;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.ValidationException;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpHeaders;
import org.fourthline.cling.model.message.UpnpRequest;
import org.fourthline.cling.model.meta.Icon;
import org.fourthline.cling.model.meta.RemoteDevice;
import org.fourthline.cling.model.meta.RemoteDeviceIdentity;
import org.fourthline.cling.model.meta.RemoteService;
import org.fourthline.cling.model.types.ServiceType;
import org.fourthline.cling.model.types.UDN;
import org.fourthline.cling.registry.RegistrationException;
import org.fourthline.cling.transport.RouterException;
import org.seamless.util.Exceptions;

/* JADX INFO: loaded from: classes2.dex */
public class RetrieveRemoteDescriptors implements Runnable {
    public List<UDN> errorsAlreadyLogged = new ArrayList();
    private RemoteDevice rd;
    private final UpnpService upnpService;
    private static final Logger log = Logger.getLogger(RetrieveRemoteDescriptors.class.getName());
    private static final Set<URL> activeRetrievals = new CopyOnWriteArraySet();

    public RetrieveRemoteDescriptors(UpnpService upnpService, RemoteDevice remoteDevice) {
        this.upnpService = upnpService;
        this.rd = remoteDevice;
    }

    public void describe() {
        if (getUpnpService().getRouter() == null) {
            log.warning("Router not yet initialized");
            return;
        }
        try {
            StreamRequestMessage streamRequestMessage = new StreamRequestMessage(UpnpRequest.Method.GET, this.rd.getIdentity().getDescriptorURL());
            UpnpHeaders descriptorRetrievalHeaders = getUpnpService().getConfiguration().getDescriptorRetrievalHeaders(this.rd.getIdentity());
            if (descriptorRetrievalHeaders != null) {
                streamRequestMessage.getHeaders().putAll(descriptorRetrievalHeaders);
            }
            Logger logger = log;
            logger.fine("Sending device descriptor retrieval message: " + streamRequestMessage);
            StreamResponseMessage streamResponseMessageSend = getUpnpService().getRouter().send(streamRequestMessage);
            if (streamResponseMessageSend == null) {
                StringBuilder sbA = f.a("Device descriptor retrieval failed, no response: ");
                sbA.append(this.rd.getIdentity().getDescriptorURL());
                logger.warning(sbA.toString());
                return;
            }
            if (streamResponseMessageSend.getOperation().isFailed()) {
                StringBuilder sbA2 = f.a("Device descriptor retrieval failed: ");
                sbA2.append(this.rd.getIdentity().getDescriptorURL());
                sbA2.append(", ");
                sbA2.append(streamResponseMessageSend.getOperation().getResponseDetails());
                logger.warning(sbA2.toString());
                return;
            }
            if (!streamResponseMessageSend.isContentTypeTextUDA()) {
                StringBuilder sbA3 = f.a("Received device descriptor without or with invalid Content-Type: ");
                sbA3.append(this.rd.getIdentity().getDescriptorURL());
                logger.fine(sbA3.toString());
            }
            String bodyString = streamResponseMessageSend.getBodyString();
            if (bodyString == null || bodyString.length() == 0) {
                StringBuilder sbA4 = f.a("Received empty device descriptor:");
                sbA4.append(this.rd.getIdentity().getDescriptorURL());
                logger.warning(sbA4.toString());
            } else {
                logger.fine("Received root device descriptor: " + streamResponseMessageSend);
                describe(bodyString);
            }
        } catch (IllegalArgumentException e4) {
            Logger logger2 = log;
            StringBuilder sbA5 = f.a("Device descriptor retrieval failed: ");
            sbA5.append(this.rd.getIdentity().getDescriptorURL());
            sbA5.append(", possibly invalid URL: ");
            sbA5.append(e4);
            logger2.warning(sbA5.toString());
        }
    }

    public RemoteService describeService(RemoteService remoteService) {
        try {
            URL urlNormalizeURI = remoteService.getDevice().normalizeURI(remoteService.getDescriptorURI());
            StreamRequestMessage streamRequestMessage = new StreamRequestMessage(UpnpRequest.Method.GET, urlNormalizeURI);
            UpnpHeaders descriptorRetrievalHeaders = getUpnpService().getConfiguration().getDescriptorRetrievalHeaders(remoteService.getDevice().getIdentity());
            if (descriptorRetrievalHeaders != null) {
                streamRequestMessage.getHeaders().putAll(descriptorRetrievalHeaders);
            }
            Logger logger = log;
            logger.fine("Sending service descriptor retrieval message: " + streamRequestMessage);
            StreamResponseMessage streamResponseMessageSend = getUpnpService().getRouter().send(streamRequestMessage);
            if (streamResponseMessageSend == null) {
                logger.warning("Could not retrieve service descriptor, no response: " + remoteService);
                return null;
            }
            if (streamResponseMessageSend.getOperation().isFailed()) {
                logger.warning("Service descriptor retrieval failed: " + urlNormalizeURI + ", " + streamResponseMessageSend.getOperation().getResponseDetails());
                return null;
            }
            if (!streamResponseMessageSend.isContentTypeTextUDA()) {
                logger.fine("Received service descriptor without or with invalid Content-Type: " + urlNormalizeURI);
            }
            String bodyString = streamResponseMessageSend.getBodyString();
            if (bodyString == null || bodyString.length() == 0) {
                logger.warning("Received empty service descriptor:" + urlNormalizeURI);
                return null;
            }
            logger.fine("Received service descriptor, hydrating service model: " + streamResponseMessageSend);
            return (RemoteService) getUpnpService().getConfiguration().getServiceDescriptorBinderUDA10().describe(remoteService, bodyString);
        } catch (IllegalArgumentException unused) {
            Logger logger2 = log;
            StringBuilder sbA = f.a("Could not normalize service descriptor URL: ");
            sbA.append(remoteService.getDescriptorURI());
            logger2.warning(sbA.toString());
            return null;
        }
    }

    public RemoteDevice describeServices(RemoteDevice remoteDevice) {
        RemoteDevice remoteDeviceDescribeServices;
        ArrayList arrayList = new ArrayList();
        if (remoteDevice.hasServices()) {
            for (RemoteService remoteService : filterExclusiveServices(remoteDevice.getServices())) {
                RemoteService remoteServiceDescribeService = describeService(remoteService);
                if (remoteServiceDescribeService != null) {
                    arrayList.add(remoteServiceDescribeService);
                } else {
                    log.warning("Skipping invalid service '" + remoteService + "' of: " + remoteDevice);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList();
        if (remoteDevice.hasEmbeddedDevices()) {
            for (RemoteDevice remoteDevice2 : remoteDevice.getEmbeddedDevices()) {
                if (remoteDevice2 != null && (remoteDeviceDescribeServices = describeServices(remoteDevice2)) != null) {
                    arrayList2.add(remoteDeviceDescribeServices);
                }
            }
        }
        Icon[] iconArr = new Icon[remoteDevice.getIcons().length];
        for (int i4 = 0; i4 < remoteDevice.getIcons().length; i4++) {
            iconArr[i4] = remoteDevice.getIcons()[i4].deepCopy();
        }
        return remoteDevice.newInstance(((RemoteDeviceIdentity) remoteDevice.getIdentity()).getUdn(), remoteDevice.getVersion(), remoteDevice.getType(), remoteDevice.getDetails(), iconArr, remoteDevice.toServiceArray((Collection<RemoteService>) arrayList), (List<RemoteDevice>) arrayList2);
    }

    public List<RemoteService> filterExclusiveServices(RemoteService[] remoteServiceArr) {
        ServiceType[] exclusiveServiceTypes = getUpnpService().getConfiguration().getExclusiveServiceTypes();
        if (exclusiveServiceTypes == null || exclusiveServiceTypes.length == 0) {
            return Arrays.asList(remoteServiceArr);
        }
        ArrayList arrayList = new ArrayList();
        for (RemoteService remoteService : remoteServiceArr) {
            for (ServiceType serviceType : exclusiveServiceTypes) {
                if (remoteService.getServiceType().implementsVersion(serviceType)) {
                    log.fine("Including exclusive service: " + remoteService);
                    arrayList.add(remoteService);
                } else {
                    log.fine("Excluding unwanted service: " + serviceType);
                }
            }
        }
        return arrayList;
    }

    public UpnpService getUpnpService() {
        return this.upnpService;
    }

    @Override // java.lang.Runnable
    public void run() {
        URL descriptorURL = this.rd.getIdentity().getDescriptorURL();
        Set<URL> set = activeRetrievals;
        if (set.contains(descriptorURL)) {
            log.finer("Exiting early, active retrieval for URL already in progress: " + descriptorURL);
            return;
        }
        if (getUpnpService().getRegistry().getRemoteDevice(this.rd.getIdentity().getUdn(), true) != null) {
            log.finer("Exiting early, already discovered: " + descriptorURL);
            return;
        }
        try {
            try {
                set.add(descriptorURL);
                describe();
            } catch (RouterException e4) {
                log.log(Level.WARNING, "Descriptor retrieval failed: " + descriptorURL, (Throwable) e4);
                set = activeRetrievals;
            }
            set.remove(descriptorURL);
        } catch (Throwable th) {
            activeRetrievals.remove(descriptorURL);
            throw th;
        }
    }

    public void describe(String str) {
        RegistrationException e4;
        RemoteDevice remoteDevice;
        ValidationException e5;
        DescriptorBindingException e6;
        RemoteDevice remoteDevice2 = null;
        try {
            remoteDevice = (RemoteDevice) getUpnpService().getConfiguration().getDeviceDescriptorBinderUDA10().describe(this.rd, str);
            try {
                Logger logger = log;
                logger.fine("Remote device described (without services) notifying listeners: " + remoteDevice);
                boolean zNotifyDiscoveryStart = getUpnpService().getRegistry().notifyDiscoveryStart(remoteDevice);
                logger.fine("Hydrating described device's services: " + remoteDevice);
                RemoteDevice remoteDeviceDescribeServices = describeServices(remoteDevice);
                if (remoteDeviceDescribeServices == null) {
                    if (!this.errorsAlreadyLogged.contains(this.rd.getIdentity().getUdn())) {
                        this.errorsAlreadyLogged.add(this.rd.getIdentity().getUdn());
                        logger.warning("Device service description failed: " + this.rd);
                    }
                    if (zNotifyDiscoveryStart) {
                        getUpnpService().getRegistry().notifyDiscoveryFailure(remoteDevice, new DescriptorBindingException("Device service description failed: " + this.rd));
                        return;
                    }
                    return;
                }
                logger.fine("Adding fully hydrated remote device to registry: " + remoteDeviceDescribeServices);
                getUpnpService().getRegistry().addDevice(remoteDeviceDescribeServices);
            } catch (DescriptorBindingException e7) {
                e6 = e7;
                Logger logger2 = log;
                StringBuilder sbA = f.a("Could not hydrate device or its services from descriptor: ");
                sbA.append(this.rd);
                logger2.warning(sbA.toString());
                logger2.warning("Cause was: " + Exceptions.unwrap(e6));
                if (remoteDevice == null || 0 == 0) {
                    return;
                }
                getUpnpService().getRegistry().notifyDiscoveryFailure(remoteDevice, e6);
            } catch (ValidationException e8) {
                e5 = e8;
                remoteDevice2 = remoteDevice;
                if (this.errorsAlreadyLogged.contains(this.rd.getIdentity().getUdn())) {
                    return;
                }
                this.errorsAlreadyLogged.add(this.rd.getIdentity().getUdn());
                Logger logger3 = log;
                StringBuilder sbA2 = f.a("Could not validate device model: ");
                sbA2.append(this.rd);
                logger3.warning(sbA2.toString());
                Iterator<ValidationError> it = e5.getErrors().iterator();
                while (it.hasNext()) {
                    log.warning(it.next().toString());
                }
                if (remoteDevice2 == null || 0 == 0) {
                    return;
                }
                getUpnpService().getRegistry().notifyDiscoveryFailure(remoteDevice2, e5);
            } catch (RegistrationException e9) {
                e4 = e9;
                Logger logger4 = log;
                StringBuilder sbA3 = f.a("Adding hydrated device to registry failed: ");
                sbA3.append(this.rd);
                logger4.warning(sbA3.toString());
                logger4.warning("Cause was: " + e4.toString());
                if (remoteDevice == null || 0 == 0) {
                    return;
                }
                getUpnpService().getRegistry().notifyDiscoveryFailure(remoteDevice, e4);
            }
        } catch (DescriptorBindingException e10) {
            e6 = e10;
            remoteDevice = null;
        } catch (ValidationException e11) {
            e5 = e11;
        } catch (RegistrationException e12) {
            e4 = e12;
            remoteDevice = null;
        }
    }
}
