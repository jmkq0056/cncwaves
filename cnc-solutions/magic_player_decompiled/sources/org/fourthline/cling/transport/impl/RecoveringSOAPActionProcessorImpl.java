package org.fourthline.cling.transport.impl;

import androidx.appcompat.view.a;
import java.util.logging.Logger;
import javax.enterprise.inject.Alternative;
import org.fourthline.cling.model.UnsupportedDataException;
import org.fourthline.cling.model.action.ActionInvocation;
import org.fourthline.cling.model.message.control.ActionRequestMessage;
import org.fourthline.cling.model.message.control.ActionResponseMessage;
import org.fourthline.cling.transport.spi.SOAPActionProcessor;
import org.seamless.xml.XmlPullParserUtils;

/* JADX INFO: loaded from: classes.dex */
@Alternative
public class RecoveringSOAPActionProcessorImpl extends PullSOAPActionProcessorImpl {
    private static Logger log = Logger.getLogger(SOAPActionProcessor.class.getName());

    public void handleInvalidMessage(ActionInvocation actionInvocation, UnsupportedDataException unsupportedDataException, UnsupportedDataException unsupportedDataException2) {
        throw unsupportedDataException;
    }

    @Override // org.fourthline.cling.transport.impl.PullSOAPActionProcessorImpl, org.fourthline.cling.transport.impl.SOAPActionProcessorImpl, org.fourthline.cling.transport.spi.SOAPActionProcessor
    public void readBody(ActionRequestMessage actionRequestMessage, ActionInvocation actionInvocation) {
        try {
            super.readBody(actionRequestMessage, actionInvocation);
        } catch (UnsupportedDataException e4) {
            if (!actionRequestMessage.isBodyNonEmptyString()) {
                throw e4;
            }
            log.warning("Trying to recover from invalid SOAP XML request: " + e4);
            try {
                actionRequestMessage.setBody(XmlPullParserUtils.fixXMLEntities(getMessageBody(actionRequestMessage)));
                super.readBody(actionRequestMessage, actionInvocation);
            } catch (UnsupportedDataException e5) {
                handleInvalidMessage(actionInvocation, e4, e5);
            }
        }
    }

    @Override // org.fourthline.cling.transport.impl.PullSOAPActionProcessorImpl, org.fourthline.cling.transport.impl.SOAPActionProcessorImpl, org.fourthline.cling.transport.spi.SOAPActionProcessor
    public void readBody(ActionResponseMessage actionResponseMessage, ActionInvocation actionInvocation) {
        try {
            super.readBody(actionResponseMessage, actionInvocation);
        } catch (UnsupportedDataException e4) {
            if (actionResponseMessage.isBodyNonEmptyString()) {
                log.warning("Trying to recover from invalid SOAP XML response: " + e4);
                String strFixXMLEntities = XmlPullParserUtils.fixXMLEntities(getMessageBody(actionResponseMessage));
                if (strFixXMLEntities.endsWith("</s:Envelop")) {
                    strFixXMLEntities = a.a(strFixXMLEntities, "e>");
                }
                try {
                    actionResponseMessage.setBody(strFixXMLEntities);
                    super.readBody(actionResponseMessage, actionInvocation);
                    return;
                } catch (UnsupportedDataException e5) {
                    handleInvalidMessage(actionInvocation, e4, e5);
                    return;
                }
            }
            throw e4;
        }
    }
}
