package org.eclipse.jetty.util.security;

import android.support.v4.media.f;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class Constraint implements Cloneable, Serializable {
    public static final String ANY_ROLE = "*";
    public static final int DC_CONFIDENTIAL = 2;
    public static final int DC_FORBIDDEN = 3;
    public static final int DC_INTEGRAL = 1;
    public static final int DC_NONE = 0;
    public static final int DC_UNSET = -1;
    public static final String NONE = "NONE";
    public static final String __BASIC_AUTH = "BASIC";
    public static final String __CERT_AUTH = "CLIENT_CERT";
    public static final String __CERT_AUTH2 = "CLIENT-CERT";
    public static final String __DIGEST_AUTH = "DIGEST";
    public static final String __FORM_AUTH = "FORM";
    public static final String __NEGOTIATE_AUTH = "NEGOTIATE";
    public static final String __SPNEGO_AUTH = "SPNEGO";
    private String _name;
    private String[] _roles;
    private int _dataConstraint = -1;
    private boolean _anyRole = false;
    private boolean _authenticate = false;

    public Constraint() {
    }

    public static boolean validateMethod(String str) {
        if (str == null) {
            return false;
        }
        String strTrim = str.trim();
        return strTrim.equals(__FORM_AUTH) || strTrim.equals(__BASIC_AUTH) || strTrim.equals(__DIGEST_AUTH) || strTrim.equals(__CERT_AUTH) || strTrim.equals(__CERT_AUTH2) || strTrim.equals(__SPNEGO_AUTH) || strTrim.equals(__NEGOTIATE_AUTH);
    }

    public Object clone() {
        return super.clone();
    }

    public boolean getAuthenticate() {
        return this._authenticate;
    }

    public int getDataConstraint() {
        return this._dataConstraint;
    }

    public String[] getRoles() {
        return this._roles;
    }

    public boolean hasDataConstraint() {
        return this._dataConstraint >= 0;
    }

    public boolean hasRole(String str) {
        if (this._anyRole) {
            return true;
        }
        String[] strArr = this._roles;
        if (strArr == null) {
            return false;
        }
        int length = strArr.length;
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                return false;
            }
            if (str.equals(this._roles[i4])) {
                return true;
            }
            length = i4;
        }
    }

    public boolean isAnyRole() {
        return this._anyRole;
    }

    public boolean isForbidden() {
        String[] strArr;
        return this._authenticate && !this._anyRole && ((strArr = this._roles) == null || strArr.length == 0);
    }

    public void setAuthenticate(boolean z3) {
        this._authenticate = z3;
    }

    public void setDataConstraint(int i4) {
        if (i4 < 0 || i4 > 2) {
            throw new IllegalArgumentException("Constraint out of range");
        }
        this._dataConstraint = i4;
    }

    public void setName(String str) {
        this._name = str;
    }

    public void setRoles(String[] strArr) {
        this._roles = strArr;
        this._anyRole = false;
        if (strArr == null) {
            return;
        }
        int length = strArr.length;
        while (true) {
            boolean z3 = this._anyRole;
            if (z3) {
                return;
            }
            int i4 = length - 1;
            if (length <= 0) {
                return;
            }
            this._anyRole = "*".equals(strArr[i4]) | z3;
            length = i4;
        }
    }

    public String toString() {
        String string;
        StringBuilder sbA = f.a("SC{");
        sbA.append(this._name);
        sbA.append(",");
        if (this._anyRole) {
            string = "*";
        } else {
            String[] strArr = this._roles;
            string = strArr == null ? "-" : Arrays.asList(strArr).toString();
        }
        sbA.append(string);
        sbA.append(",");
        int i4 = this._dataConstraint;
        sbA.append(i4 == -1 ? "DC_UNSET}" : i4 == 0 ? "NONE}" : i4 == 1 ? "INTEGRAL}" : "CONFIDENTIAL}");
        return sbA.toString();
    }

    public Constraint(String str, String str2) {
        setName(str);
        setRoles(new String[]{str2});
    }
}
