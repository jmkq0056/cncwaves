package org.fourthline.cling.model.resource;

import android.support.v4.media.f;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import org.fourthline.cling.model.ExpirationDetails;

/* JADX INFO: loaded from: classes2.dex */
public class Resource<M> {
    private M model;
    private URI pathQuery;

    public Resource(URI uri, M m4) {
        try {
            this.pathQuery = new URI(null, null, uri.getPath(), uri.getQuery(), null);
            this.model = m4;
            if (m4 == null) {
                throw new IllegalArgumentException("Model instance must not be null");
            }
        } catch (URISyntaxException e4) {
            throw new RuntimeException(e4);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass() && getPathQuery().equals(((Resource) obj).getPathQuery());
    }

    public M getModel() {
        return this.model;
    }

    public URI getPathQuery() {
        return this.pathQuery;
    }

    public int hashCode() {
        return getPathQuery().hashCode();
    }

    public void maintain(List<Runnable> list, ExpirationDetails expirationDetails) {
    }

    public boolean matches(URI uri) {
        return uri.equals(getPathQuery());
    }

    public void shutdown() {
    }

    public String toString() {
        StringBuilder sbA = f.a("(");
        sbA.append(getClass().getSimpleName());
        sbA.append(") URI: ");
        sbA.append(getPathQuery());
        return sbA.toString();
    }
}
