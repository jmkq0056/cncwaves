package org.fourthline.cling.support.renderingcontrol;

import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.types.ErrorCode;

/* JADX INFO: loaded from: classes2.dex */
public class RenderingControlException extends ActionException {
    public RenderingControlException(int i4, String str) {
        super(i4, str);
    }

    public RenderingControlException(int i4, String str, Throwable th) {
        super(i4, str, th);
    }

    public RenderingControlException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public RenderingControlException(ErrorCode errorCode) {
        super(errorCode);
    }

    public RenderingControlException(RenderingControlErrorCode renderingControlErrorCode, String str) {
        super(renderingControlErrorCode.getCode(), renderingControlErrorCode.getDescription() + ". " + str + ".");
    }

    public RenderingControlException(RenderingControlErrorCode renderingControlErrorCode) {
        super(renderingControlErrorCode.getCode(), renderingControlErrorCode.getDescription());
    }
}
