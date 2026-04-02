package org.fourthline.cling.model.meta;

import android.support.v4.media.f;
import androidx.core.app.NotificationCompat;
import java.io.File;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;
import org.fourthline.cling.model.Validatable;
import org.fourthline.cling.model.ValidationError;
import org.fourthline.cling.model.types.BinHexDatatype;
import org.seamless.util.MimeType;
import org.seamless.util.URIUtil;
import org.seamless.util.io.IO;

/* JADX INFO: loaded from: classes2.dex */
public class Icon implements Validatable {
    private static final Logger log = Logger.getLogger(StateVariable.class.getName());
    private final byte[] data;
    private final int depth;
    private Device device;
    private final int height;
    private final MimeType mimeType;
    private final URI uri;
    private final int width;

    public Icon(String str, int i4, int i5, int i6, URI uri) {
        this((str == null || str.length() <= 0) ? null : MimeType.valueOf(str), i4, i5, i6, uri, (byte[]) null);
    }

    public Icon deepCopy() {
        return new Icon(getMimeType(), getWidth(), getHeight(), getDepth(), getUri(), getData());
    }

    public byte[] getData() {
        return this.data;
    }

    public int getDepth() {
        return this.depth;
    }

    public Device getDevice() {
        return this.device;
    }

    public int getHeight() {
        return this.height;
    }

    public MimeType getMimeType() {
        return this.mimeType;
    }

    public URI getUri() {
        return this.uri;
    }

    public int getWidth() {
        return this.width;
    }

    public void setDevice(Device device) {
        if (this.device != null) {
            throw new IllegalStateException("Final value has been set already, model is immutable");
        }
        this.device = device;
    }

    public String toString() {
        StringBuilder sbA = f.a("Icon(");
        sbA.append(getWidth());
        sbA.append("x");
        sbA.append(getHeight());
        sbA.append(", MIME: ");
        sbA.append(getMimeType());
        sbA.append(") ");
        sbA.append(getUri());
        return sbA.toString();
    }

    @Override // org.fourthline.cling.model.Validatable
    public List<ValidationError> validate() {
        ArrayList arrayList = new ArrayList();
        if (getMimeType() == null) {
            Logger logger = log;
            StringBuilder sbA = f.a("UPnP specification violation of: ");
            sbA.append(getDevice());
            logger.warning(sbA.toString());
            logger.warning("Invalid icon, missing mime type: " + this);
        }
        if (getWidth() == 0) {
            Logger logger2 = log;
            StringBuilder sbA2 = f.a("UPnP specification violation of: ");
            sbA2.append(getDevice());
            logger2.warning(sbA2.toString());
            logger2.warning("Invalid icon, missing width: " + this);
        }
        if (getHeight() == 0) {
            Logger logger3 = log;
            StringBuilder sbA3 = f.a("UPnP specification violation of: ");
            sbA3.append(getDevice());
            logger3.warning(sbA3.toString());
            logger3.warning("Invalid icon, missing height: " + this);
        }
        if (getDepth() == 0) {
            Logger logger4 = log;
            StringBuilder sbA4 = f.a("UPnP specification violation of: ");
            sbA4.append(getDevice());
            logger4.warning(sbA4.toString());
            logger4.warning("Invalid icon, missing bitmap depth: " + this);
        }
        if (getUri() == null) {
            arrayList.add(new ValidationError(getClass(), NotificationCompat.MessagingStyle.Message.KEY_DATA_URI, "URL is required"));
        } else {
            try {
                if (getUri().toURL() == null) {
                    throw new MalformedURLException();
                }
            } catch (IllegalArgumentException unused) {
            } catch (MalformedURLException e4) {
                Class<?> cls = getClass();
                StringBuilder sbA5 = f.a("URL must be valid: ");
                sbA5.append(e4.getMessage());
                arrayList.add(new ValidationError(cls, NotificationCompat.MessagingStyle.Message.KEY_DATA_URI, sbA5.toString()));
            }
        }
        return arrayList;
    }

    public Icon(String str, int i4, int i5, int i6, URL url) {
        this(str, i4, i5, i6, new File(URIUtil.toURI(url)));
    }

    public Icon(String str, int i4, int i5, int i6, File file) {
        this(str, i4, i5, i6, file.getName(), IO.readBytes(file));
    }

    public Icon(String str, int i4, int i5, int i6, String str2, InputStream inputStream) {
        this(str, i4, i5, i6, str2, IO.readBytes(inputStream));
    }

    public Icon(String str, int i4, int i5, int i6, String str2, byte[] bArr) {
        this((str == null || str.length() <= 0) ? null : MimeType.valueOf(str), i4, i5, i6, URI.create(str2), bArr);
    }

    public Icon(String str, int i4, int i5, int i6, String str2, String str3) {
        this(str, i4, i5, i6, str2, (str3 == null || str3.equals("")) ? null : new BinHexDatatype().valueOf(str3));
    }

    public Icon(MimeType mimeType, int i4, int i5, int i6, URI uri, byte[] bArr) {
        this.mimeType = mimeType;
        this.width = i4;
        this.height = i5;
        this.depth = i6;
        this.uri = uri;
        this.data = bArr;
    }
}
