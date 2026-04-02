package org.fourthline.cling.model;

import android.support.v4.media.g;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.logging.Logger;
import org.fourthline.cling.model.meta.Device;
import org.fourthline.cling.model.meta.Icon;
import org.fourthline.cling.model.meta.Service;
import org.fourthline.cling.model.resource.Resource;
import org.seamless.util.URIUtil;

/* JADX INFO: loaded from: classes2.dex */
public class Namespace {
    public static final String CALLBACK_FILE = "/cb";
    public static final String CONTROL = "/action";
    public static final String DESCRIPTOR_FILE = "/desc";
    public static final String DEVICE = "/dev";
    public static final String EVENTS = "/event";
    public static final String SERVICE = "/svc";
    private static final Logger log = Logger.getLogger(Namespace.class.getName());
    public final URI basePath;
    public final String decodedPath;

    public Namespace() {
        this("");
    }

    public URI appendPathToBaseURI(String str) {
        try {
            return new URI(this.basePath.getScheme(), null, this.basePath.getHost(), this.basePath.getPort(), this.decodedPath + str, null, null);
        } catch (URISyntaxException unused) {
            return URI.create(this.basePath + str);
        }
    }

    public URI getBasePath() {
        return this.basePath;
    }

    public URI getControlPath(Service service) {
        return appendPathToBaseURI(getServicePath(service) + CONTROL);
    }

    public URI getDescriptorPath(Device device) {
        return appendPathToBaseURI(getDevicePath(device.getRoot()) + DESCRIPTOR_FILE);
    }

    public String getDescriptorPathString(Device device) {
        return this.decodedPath + getDevicePath(device.getRoot()) + DESCRIPTOR_FILE;
    }

    public String getDevicePath(Device device) {
        if (device.getIdentity().getUdn() == null) {
            throw new IllegalStateException("Can't generate local URI prefix without UDN");
        }
        StringBuilder sbA = g.a(DEVICE, "/");
        sbA.append(URIUtil.encodePathSegment(device.getIdentity().getUdn().getIdentifierString()));
        return sbA.toString();
    }

    public URI getEventCallbackPath(Service service) {
        return appendPathToBaseURI(getServicePath(service) + EVENTS + CALLBACK_FILE);
    }

    public String getEventCallbackPathString(Service service) {
        return this.decodedPath + getServicePath(service) + EVENTS + CALLBACK_FILE;
    }

    public URI getEventSubscriptionPath(Service service) {
        return appendPathToBaseURI(getServicePath(service) + EVENTS);
    }

    public URI getIconPath(Icon icon) {
        return appendPathToBaseURI(getDevicePath(icon.getDevice()) + "/" + icon.getUri().toString());
    }

    public URI getPath(Device device) {
        return appendPathToBaseURI(getDevicePath(device));
    }

    public Resource[] getResources(Device device) throws ValidationException {
        if (!device.isRoot()) {
            return null;
        }
        HashSet hashSet = new HashSet();
        ArrayList arrayList = new ArrayList();
        log.fine("Discovering local resources of device graph");
        for (Resource resource : device.discoverResources(this)) {
            Logger logger = log;
            logger.finer("Discovered: " + resource);
            if (!hashSet.add(resource)) {
                logger.finer("Local resource already exists, queueing validation error");
                arrayList.add(new ValidationError(getClass(), "resources", "Local URI namespace conflict between resources of device: " + resource));
            }
        }
        if (arrayList.size() <= 0) {
            return (Resource[]) hashSet.toArray(new Resource[hashSet.size()]);
        }
        throw new ValidationException("Validation of device graph failed, call getErrors() on exception", arrayList);
    }

    public String getServicePath(Service service) {
        if (service.getServiceId() == null) {
            throw new IllegalStateException("Can't generate local URI prefix without service ID");
        }
        StringBuilder sbA = g.a(SERVICE, "/");
        sbA.append(service.getServiceId().getNamespace());
        sbA.append("/");
        sbA.append(service.getServiceId().getId());
        return getDevicePath(service.getDevice()) + sbA.toString();
    }

    public boolean isControlPath(URI uri) {
        return uri.toString().endsWith(CONTROL);
    }

    public boolean isEventCallbackPath(URI uri) {
        return uri.toString().endsWith(CALLBACK_FILE);
    }

    public boolean isEventSubscriptionPath(URI uri) {
        return uri.toString().endsWith(EVENTS);
    }

    public URI prefixIfRelative(Device device, URI uri) {
        if (uri.isAbsolute() || uri.getPath().startsWith("/")) {
            return uri;
        }
        return appendPathToBaseURI(getDevicePath(device) + "/" + uri);
    }

    public Namespace(String str) {
        this(URI.create(str));
    }

    public URI getDescriptorPath(Service service) {
        return appendPathToBaseURI(getServicePath(service) + DESCRIPTOR_FILE);
    }

    public URI getPath(Service service) {
        return appendPathToBaseURI(getServicePath(service));
    }

    public Namespace(URI uri) {
        this.basePath = uri;
        this.decodedPath = uri.getPath();
    }
}
