package org.fourthline.cling.model.message;

import android.support.v4.media.f;
import java.io.ByteArrayInputStream;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.seamless.http.Headers;

/* JADX INFO: loaded from: classes2.dex */
public class UpnpHeaders extends Headers {
    private static final Logger log = Logger.getLogger(UpnpHeaders.class.getName());
    public Map<UpnpHeader.Type, List<UpnpHeader>> parsedHeaders;

    public UpnpHeaders() {
    }

    @Override // org.seamless.http.Headers
    public void add(String str, String str2) {
        this.parsedHeaders = null;
        super.add(str, str2);
    }

    public void addParsedValue(UpnpHeader.Type type, UpnpHeader upnpHeader) {
        Logger logger = log;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine("Adding parsed header: " + upnpHeader);
        }
        List<UpnpHeader> linkedList = this.parsedHeaders.get(type);
        if (linkedList == null) {
            linkedList = new LinkedList<>();
            this.parsedHeaders.put(type, linkedList);
        }
        linkedList.add(upnpHeader);
    }

    @Override // org.seamless.http.Headers, java.util.Map
    public void clear() {
        this.parsedHeaders = null;
        super.clear();
    }

    public boolean containsKey(UpnpHeader.Type type) {
        if (this.parsedHeaders == null) {
            parseHeaders();
        }
        return this.parsedHeaders.containsKey(type);
    }

    public List<UpnpHeader> get(UpnpHeader.Type type) {
        if (this.parsedHeaders == null) {
            parseHeaders();
        }
        return this.parsedHeaders.get(type);
    }

    public UpnpHeader[] getAsArray(UpnpHeader.Type type) {
        if (this.parsedHeaders == null) {
            parseHeaders();
        }
        return this.parsedHeaders.get(type) != null ? (UpnpHeader[]) this.parsedHeaders.get(type).toArray(new UpnpHeader[this.parsedHeaders.get(type).size()]) : new UpnpHeader[0];
    }

    public UpnpHeader getFirstHeader(UpnpHeader.Type type) {
        if (getAsArray(type).length > 0) {
            return getAsArray(type)[0];
        }
        return null;
    }

    public String getFirstHeaderString(UpnpHeader.Type type) {
        UpnpHeader firstHeader = getFirstHeader(type);
        if (firstHeader != null) {
            return firstHeader.getString();
        }
        return null;
    }

    public void log() {
        Logger logger = log;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine("############################ RAW HEADERS ###########################");
            for (Map.Entry<String, List<String>> entry : entrySet()) {
                Logger logger2 = log;
                StringBuilder sbA = f.a("=== NAME : ");
                sbA.append(entry.getKey());
                logger2.fine(sbA.toString());
                for (String str : entry.getValue()) {
                    log.fine("VALUE: " + str);
                }
            }
            Map<UpnpHeader.Type, List<UpnpHeader>> map = this.parsedHeaders;
            if (map != null && map.size() > 0) {
                log.fine("########################## PARSED HEADERS ##########################");
                for (Map.Entry<UpnpHeader.Type, List<UpnpHeader>> entry2 : this.parsedHeaders.entrySet()) {
                    Logger logger3 = log;
                    StringBuilder sbA2 = f.a("=== TYPE: ");
                    sbA2.append(entry2.getKey());
                    logger3.fine(sbA2.toString());
                    for (UpnpHeader upnpHeader : entry2.getValue()) {
                        log.fine("HEADER: " + upnpHeader);
                    }
                }
            }
            log.fine("####################################################################");
        }
    }

    public void parseHeaders() {
        this.parsedHeaders = new LinkedHashMap();
        Logger logger = log;
        if (logger.isLoggable(Level.FINE)) {
            StringBuilder sbA = f.a("Parsing all HTTP headers for known UPnP headers: ");
            sbA.append(size());
            logger.fine(sbA.toString());
        }
        for (Map.Entry<String, List<String>> entry : entrySet()) {
            if (entry.getKey() != null) {
                UpnpHeader.Type byHttpName = UpnpHeader.Type.getByHttpName(entry.getKey());
                if (byHttpName == null) {
                    Logger logger2 = log;
                    if (logger2.isLoggable(Level.FINE)) {
                        StringBuilder sbA2 = f.a("Ignoring non-UPNP HTTP header: ");
                        sbA2.append(entry.getKey());
                        logger2.fine(sbA2.toString());
                    }
                } else {
                    for (String str : entry.getValue()) {
                        UpnpHeader upnpHeaderNewInstance = UpnpHeader.newInstance(byHttpName, str);
                        if (upnpHeaderNewInstance == null || upnpHeaderNewInstance.getValue() == null) {
                            Logger logger3 = log;
                            if (logger3.isLoggable(Level.FINE)) {
                                StringBuilder sbA3 = f.a("Ignoring known but irrelevant header (value violates the UDA specification?) '");
                                sbA3.append(byHttpName.getHttpName());
                                sbA3.append("': ");
                                sbA3.append(str);
                                logger3.fine(sbA3.toString());
                            }
                        } else {
                            addParsedValue(byHttpName, upnpHeaderNewInstance);
                        }
                    }
                }
            }
        }
    }

    public UpnpHeaders(Map<String, List<String>> map) {
        super(map);
    }

    @Override // org.seamless.http.Headers, java.util.Map
    public List<String> put(String str, List<String> list) {
        this.parsedHeaders = null;
        return super.put(str, list);
    }

    @Override // org.seamless.http.Headers, java.util.Map
    public List<String> remove(Object obj) {
        this.parsedHeaders = null;
        return super.remove(obj);
    }

    public UpnpHeaders(ByteArrayInputStream byteArrayInputStream) {
        super(byteArrayInputStream);
    }

    public void add(UpnpHeader.Type type, UpnpHeader upnpHeader) {
        super.add(type.getHttpName(), upnpHeader.getString());
        if (this.parsedHeaders != null) {
            addParsedValue(type, upnpHeader);
        }
    }

    public <H extends UpnpHeader> H getFirstHeader(UpnpHeader.Type type, Class<H> cls) {
        UpnpHeader[] asArray = getAsArray(type);
        if (asArray.length == 0) {
            return null;
        }
        for (UpnpHeader upnpHeader : asArray) {
            H h4 = (H) upnpHeader;
            if (cls.isAssignableFrom(h4.getClass())) {
                return h4;
            }
        }
        return null;
    }

    public UpnpHeaders(boolean z3) {
        super(z3);
    }

    public void remove(UpnpHeader.Type type) {
        super.remove((Object) type.getHttpName());
        Map<UpnpHeader.Type, List<UpnpHeader>> map = this.parsedHeaders;
        if (map != null) {
            map.remove(type);
        }
    }
}
