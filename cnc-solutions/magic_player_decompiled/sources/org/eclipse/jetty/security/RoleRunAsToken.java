package org.eclipse.jetty.security;

import android.support.v4.media.b;
import android.support.v4.media.f;

/* JADX INFO: loaded from: classes2.dex */
public class RoleRunAsToken implements RunAsToken {
    private final String _runAsRole;

    public RoleRunAsToken(String str) {
        this._runAsRole = str;
    }

    public String getRunAsRole() {
        return this._runAsRole;
    }

    public String toString() {
        return b.a(f.a("RoleRunAsToken("), this._runAsRole, ")");
    }
}
