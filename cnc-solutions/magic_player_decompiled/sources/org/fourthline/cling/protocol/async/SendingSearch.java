package org.fourthline.cling.protocol.async;

import android.support.v4.media.f;
import java.util.logging.Logger;
import org.eclipse.jetty.http.HttpStatus;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.message.discovery.OutgoingSearchRequest;
import org.fourthline.cling.model.message.header.MXHeader;
import org.fourthline.cling.model.message.header.STAllHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.protocol.SendingAsync;

/* JADX INFO: loaded from: classes2.dex */
public class SendingSearch extends SendingAsync {
    private static final Logger log = Logger.getLogger(SendingSearch.class.getName());
    private final int mxSeconds;
    private final UpnpHeader searchTarget;

    public SendingSearch(UpnpService upnpService) {
        this(upnpService, new STAllHeader());
    }

    @Override // org.fourthline.cling.protocol.SendingAsync
    public void execute() {
        Logger logger = log;
        StringBuilder sbA = f.a("Executing search for target: ");
        sbA.append(this.searchTarget.getString());
        sbA.append(" with MX seconds: ");
        sbA.append(getMxSeconds());
        logger.fine(sbA.toString());
        OutgoingSearchRequest outgoingSearchRequest = new OutgoingSearchRequest(this.searchTarget, getMxSeconds());
        prepareOutgoingSearchRequest(outgoingSearchRequest);
        for (int i4 = 0; i4 < getBulkRepeat(); i4++) {
            try {
                getUpnpService().getRouter().send(outgoingSearchRequest);
                log.finer("Sleeping " + getBulkIntervalMilliseconds() + " milliseconds");
                Thread.sleep((long) getBulkIntervalMilliseconds());
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    public int getBulkIntervalMilliseconds() {
        return HttpStatus.INTERNAL_SERVER_ERROR_500;
    }

    public int getBulkRepeat() {
        return 5;
    }

    public int getMxSeconds() {
        return this.mxSeconds;
    }

    public UpnpHeader getSearchTarget() {
        return this.searchTarget;
    }

    public void prepareOutgoingSearchRequest(OutgoingSearchRequest outgoingSearchRequest) {
    }

    public SendingSearch(UpnpService upnpService, UpnpHeader upnpHeader) {
        this(upnpService, upnpHeader, MXHeader.DEFAULT_VALUE.intValue());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SendingSearch(UpnpService upnpService, UpnpHeader upnpHeader, int i4) {
        super(upnpService);
        if (UpnpHeader.Type.ST.isValidHeaderType(upnpHeader.getClass())) {
            this.searchTarget = upnpHeader;
            this.mxSeconds = i4;
        } else {
            StringBuilder sbA = f.a("Given search target instance is not a valid header class for type ST: ");
            sbA.append(upnpHeader.getClass());
            throw new IllegalArgumentException(sbA.toString());
        }
    }
}
