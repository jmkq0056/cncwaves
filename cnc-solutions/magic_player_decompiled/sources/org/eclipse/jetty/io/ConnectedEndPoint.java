package org.eclipse.jetty.io;

/* JADX INFO: loaded from: classes2.dex */
public interface ConnectedEndPoint extends EndPoint {
    Connection getConnection();

    void setConnection(Connection connection);
}
