package org.fourthline.cling.model.action;

import org.fourthline.cling.model.types.ErrorCode;

/* JADX INFO: loaded from: classes2.dex */
public class ActionException extends Exception {
    private int errorCode;

    public ActionException(int i4, String str) {
        super(str);
        this.errorCode = i4;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public ActionException(int i4, String str, Throwable th) {
        super(str, th);
        this.errorCode = i4;
    }

    public ActionException(ErrorCode errorCode) {
        this(errorCode.getCode(), errorCode.getDescription());
    }

    public ActionException(ErrorCode errorCode, String str) {
        this(errorCode, str, true);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ActionException(ErrorCode errorCode, String str, boolean z3) {
        int code = errorCode.getCode();
        if (z3) {
            str = errorCode.getDescription() + ". " + str + ".";
        }
        this(code, str);
    }

    public ActionException(ErrorCode errorCode, String str, Throwable th) {
        this(errorCode.getCode(), errorCode.getDescription() + ". " + str + ".", th);
    }
}
