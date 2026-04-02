package org.fourthline.cling.support.lastchange;

import androidx.appcompat.view.b;
import java.net.URI;
import java.util.Map;
import java.util.logging.Logger;
import org.fourthline.cling.model.types.Datatype;
import org.fourthline.cling.model.types.InvalidValueException;
import org.seamless.util.Exceptions;

/* JADX INFO: loaded from: classes2.dex */
public class EventedValueURI extends EventedValue<URI> {
    private static final Logger log = Logger.getLogger(EventedValueURI.class.getName());

    public EventedValueURI(URI uri) {
        super(uri);
    }

    @Override // org.fourthline.cling.support.lastchange.EventedValue
    public Datatype getDatatype() {
        return Datatype.Builtin.URI.getDatatype();
    }

    public EventedValueURI(Map.Entry<String, String>[] entryArr) {
        super(entryArr);
    }

    @Override // org.fourthline.cling.support.lastchange.EventedValue
    public URI valueOf(String str) {
        try {
            return (URI) super.valueOf(str);
        } catch (InvalidValueException e4) {
            Logger logger = log;
            StringBuilder sbA = b.a("Ignoring invalid URI in evented value '", str, "': ");
            sbA.append(Exceptions.unwrap(e4));
            logger.info(sbA.toString());
            return null;
        }
    }
}
