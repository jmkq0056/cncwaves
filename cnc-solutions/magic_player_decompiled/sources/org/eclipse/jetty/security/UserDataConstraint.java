package org.eclipse.jetty.security;

import android.support.v4.media.d;

/* JADX INFO: loaded from: classes2.dex */
public enum UserDataConstraint {
    None,
    Integral,
    Confidential;

    public static UserDataConstraint get(int i4) {
        if (i4 < -1 || i4 > 2) {
            throw new IllegalArgumentException(d.a("Expected -1, 0, 1, or 2, not: ", i4));
        }
        return i4 == -1 ? None : values()[i4];
    }

    public UserDataConstraint combine(UserDataConstraint userDataConstraint) {
        return compareTo(userDataConstraint) < 0 ? this : userDataConstraint;
    }
}
