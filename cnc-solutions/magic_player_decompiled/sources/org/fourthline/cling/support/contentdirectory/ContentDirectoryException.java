package org.fourthline.cling.support.contentdirectory;

import org.fourthline.cling.model.action.ActionException;
import org.fourthline.cling.model.types.ErrorCode;

/* JADX INFO: loaded from: classes2.dex */
public class ContentDirectoryException extends ActionException {
    public ContentDirectoryException(int i4, String str) {
        super(i4, str);
    }

    public ContentDirectoryException(int i4, String str, Throwable th) {
        super(i4, str, th);
    }

    public ContentDirectoryException(ErrorCode errorCode, String str) {
        super(errorCode, str);
    }

    public ContentDirectoryException(ErrorCode errorCode) {
        super(errorCode);
    }

    public ContentDirectoryException(ContentDirectoryErrorCode contentDirectoryErrorCode, String str) {
        super(contentDirectoryErrorCode.getCode(), contentDirectoryErrorCode.getDescription() + ". " + str + ".");
    }

    public ContentDirectoryException(ContentDirectoryErrorCode contentDirectoryErrorCode) {
        super(contentDirectoryErrorCode.getCode(), contentDirectoryErrorCode.getDescription());
    }
}
