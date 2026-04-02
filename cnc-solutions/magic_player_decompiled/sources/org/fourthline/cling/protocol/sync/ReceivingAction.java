package org.fourthline.cling.protocol.sync;

import android.support.v4.media.f;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.fourthline.cling.UpnpService;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.action.ActionCancelledException;
import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.action.RemoteActionInvocation;
import org.fourthline.cling.model.message.StreamRequestMessage;
import org.fourthline.cling.model.message.StreamResponseMessage;
import org.fourthline.cling.model.message.UpnpResponse;
import org.fourthline.cling.model.message.control.IncomingActionRequestMessage;
import org.fourthline.cling.model.message.control.OutgoingActionResponseMessage;
import org.fourthline.cling.model.message.header.ContentTypeHeader;
import org.fourthline.cling.model.message.header.UpnpHeader;
import org.fourthline.cling.model.resource.ServiceControlResource;
import org.fourthline.cling.model.types.ErrorCode;
import org.fourthline.cling.protocol.ReceivingSync;
import org.seamless.util.Exceptions;

/* JADX INFO: loaded from: classes2.dex */
public class ReceivingAction extends ReceivingSync<StreamRequestMessage, StreamResponseMessage> {
    private static final Logger log = Logger.getLogger(ReceivingAction.class.getName());

    public ReceivingAction(UpnpService upnpService, StreamRequestMessage streamRequestMessage) {
        super(upnpService, streamRequestMessage);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.fourthline.cling.protocol.ReceivingSync
    public StreamResponseMessage executeSync() {
        RemoteActionInvocation remoteActionInvocation;
        OutgoingActionResponseMessage outgoingActionResponseMessage;
        ContentTypeHeader contentTypeHeader = (ContentTypeHeader) ((StreamRequestMessage) getInputMessage()).getHeaders().getFirstHeader(UpnpHeader.Type.CONTENT_TYPE, ContentTypeHeader.class);
        if (contentTypeHeader != null && !contentTypeHeader.isUDACompliantXML()) {
            log.warning("Received invalid Content-Type '" + contentTypeHeader + "': " + getInputMessage());
            return new StreamResponseMessage(new UpnpResponse(UpnpResponse.Status.UNSUPPORTED_MEDIA_TYPE));
        }
        if (contentTypeHeader == null) {
            Logger logger = log;
            StringBuilder sbA = f.a("Received without Content-Type: ");
            sbA.append(getInputMessage());
            logger.warning(sbA.toString());
        }
        ServiceControlResource serviceControlResource = (ServiceControlResource) getUpnpService().getRegistry().getResource(ServiceControlResource.class, ((StreamRequestMessage) getInputMessage()).getUri());
        if (serviceControlResource == null) {
            Logger logger2 = log;
            StringBuilder sbA2 = f.a("No local resource found: ");
            sbA2.append(getInputMessage());
            logger2.fine(sbA2.toString());
            return null;
        }
        Logger logger3 = log;
        StringBuilder sbA3 = f.a("Found local action resource matching relative request URI: ");
        sbA3.append(((StreamRequestMessage) getInputMessage()).getUri());
        logger3.fine(sbA3.toString());
        try {
            IncomingActionRequestMessage incomingActionRequestMessage = new IncomingActionRequestMessage((StreamRequestMessage) getInputMessage(), serviceControlResource.getModel());
            logger3.finer("Created incoming action request message: " + incomingActionRequestMessage);
            remoteActionInvocation = new RemoteActionInvocation(incomingActionRequestMessage.getAction(), getRemoteClientInfo());
            logger3.fine("Reading body of request message");
            getUpnpService().getConfiguration().getSoapActionProcessor().readBody(incomingActionRequestMessage, remoteActionInvocation);
            logger3.fine("Executing on local service: " + remoteActionInvocation);
            serviceControlResource.getModel().getExecutor(remoteActionInvocation.getAction()).execute(remoteActionInvocation);
            if (remoteActionInvocation.getFailure() == null) {
                outgoingActionResponseMessage = new OutgoingActionResponseMessage(remoteActionInvocation.getAction());
            } else {
                if (remoteActionInvocation.getFailure() instanceof ActionCancelledException) {
                    logger3.fine("Action execution was cancelled, returning 404 to client");
                    return null;
                }
                outgoingActionResponseMessage = new OutgoingActionResponseMessage(UpnpResponse.Status.INTERNAL_SERVER_ERROR, remoteActionInvocation.getAction());
            }
        } catch (UnsupportedDataException e4) {
            Logger logger4 = log;
            Level level = Level.WARNING;
            StringBuilder sbA4 = f.a("Error reading action request XML body: ");
            sbA4.append(e4.toString());
            logger4.log(level, sbA4.toString(), Exceptions.unwrap(e4));
            remoteActionInvocation = new RemoteActionInvocation(Exceptions.unwrap(e4) instanceof ActionException ? (ActionException) Exceptions.unwrap(e4) : new ActionException(ErrorCode.ACTION_FAILED, e4.getMessage()), getRemoteClientInfo());
            outgoingActionResponseMessage = new OutgoingActionResponseMessage(UpnpResponse.Status.INTERNAL_SERVER_ERROR);
        } catch (ActionException e5) {
            log.finer("Error executing local action: " + e5);
            remoteActionInvocation = new RemoteActionInvocation(e5, getRemoteClientInfo());
            outgoingActionResponseMessage = new OutgoingActionResponseMessage(UpnpResponse.Status.INTERNAL_SERVER_ERROR);
        }
        try {
            Logger logger5 = log;
            logger5.fine("Writing body of response message");
            getUpnpService().getConfiguration().getSoapActionProcessor().writeBody(outgoingActionResponseMessage, remoteActionInvocation);
            logger5.fine("Returning finished response message: " + outgoingActionResponseMessage);
            return outgoingActionResponseMessage;
        } catch (UnsupportedDataException e6) {
            Logger logger6 = log;
            logger6.warning("Failure writing body of response message, sending '500 Internal Server Error' without body");
            logger6.log(Level.WARNING, "Exception root cause: ", Exceptions.unwrap(e6));
            return new StreamResponseMessage(UpnpResponse.Status.INTERNAL_SERVER_ERROR);
        }
    }
}
