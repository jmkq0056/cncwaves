package org.fourthline.cling.support.avtransport;

import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.types.ErrorCode;

/* JADX INFO: loaded from: classes2.dex */
public class AVTransportException extends ActionException {
    public AVTransportException(int i4, String str) {
        super(i4, str);
    }

    public AVTransportException(int i4, String str, Throwable th) {
        super(i4, str, th);
    }

    public AVTransportException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public AVTransportException(ErrorCode errorCode) {
        super(errorCode);
    }

    public AVTransportException(AVTransportErrorCode aVTransportErrorCode, String str) {
        super(aVTransportErrorCode.getCode(), aVTransportErrorCode.getDescription() + ". " + str + ".");
    }

    public AVTransportException(AVTransportErrorCode aVTransportErrorCode) {
        super(aVTransportErrorCode.getCode(), aVTransportErrorCode.getDescription());
    }
}
