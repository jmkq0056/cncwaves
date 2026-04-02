package org.eclipse.jetty.server;

import org.eclipse.jetty.io.Buffers;
import org.eclipse.jetty.io.EndPoint;
import org.eclipse.jetty.util.component.LifeCycle;

/* JADX INFO: loaded from: classes2.dex */
public interface Connector extends LifeCycle {
    void close();

    void customize(EndPoint endPoint, Request request);

    int getConfidentialPort();

    String getConfidentialScheme();

    Object getConnection();

    int getConnections();

    long getConnectionsDurationMax();

    double getConnectionsDurationMean();

    double getConnectionsDurationStdDev();

    long getConnectionsDurationTotal();

    int getConnectionsOpen();

    int getConnectionsOpenMax();

    int getConnectionsRequestsMax();

    double getConnectionsRequestsMean();

    double getConnectionsRequestsStdDev();

    String getHost();

    int getIntegralPort();

    String getIntegralScheme();

    int getLocalPort();

    int getLowResourceMaxIdleTime();

    int getMaxIdleTime();

    String getName();

    int getPort();

    int getRequestBufferSize();

    Buffers getRequestBuffers();

    int getRequestHeaderSize();

    int getRequests();

    boolean getResolveNames();

    int getResponseBufferSize();

    Buffers getResponseBuffers();

    int getResponseHeaderSize();

    Server getServer();

    boolean getStatsOn();

    long getStatsOnMs();

    boolean isConfidential(Request request);

    boolean isIntegral(Request request);

    boolean isLowResources();

    void open();

    void persist(EndPoint endPoint);

    void setHost(String str);

    void setLowResourceMaxIdleTime(int i4);

    void setMaxIdleTime(int i4);

    void setPort(int i4);

    void setRequestBufferSize(int i4);

    void setRequestHeaderSize(int i4);

    void setResponseBufferSize(int i4);

    void setResponseHeaderSize(int i4);

    void setServer(Server server);

    void setStatsOn(boolean z3);

    void statsReset();
}
