package org.eclipse.jetty.servlet;

import j2.b;
import j2.c;
import j2.e;
import java.lang.management.ManagementFactory;
import java.lang.management.MemoryMXBean;
import java.net.InetAddress;
import java.net.UnknownHostException;
import org.eclipse.jetty.http.HttpStatus;
import org.eclipse.jetty.http.MimeTypes;
import org.eclipse.jetty.server.Connector;
import org.eclipse.jetty.server.Handler;
import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.server.handler.ContextHandler;
import org.eclipse.jetty.server.handler.StatisticsHandler;
import org.eclipse.jetty.util.log.Log;
import org.eclipse.jetty.util.log.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class StatisticsServlet extends b {
    private static final Logger LOG = Log.getLogger((Class<?>) StatisticsServlet.class);
    private Connector[] _connectors;
    private MemoryMXBean _memoryBean;
    public boolean _restrictToLocalhost = true;
    private StatisticsHandler _statsHandler;

    private boolean isLoopbackAddress(String str) {
        try {
            return InetAddress.getByName(str).isLoopbackAddress();
        } catch (UnknownHostException e4) {
            LOG.warn("Warning: attempt to access statistics servlet from " + str, e4);
            return false;
        }
    }

    private void sendTextResponse(e eVar) {
        StringBuilder sb = new StringBuilder();
        sb.append(this._statsHandler.toStatsHTML());
        sb.append("<h2>Connections:</h2>\n");
        for (Connector connector : this._connectors) {
            sb.append("<h3>");
            sb.append(connector.getName());
            sb.append("</h3>");
            if (connector.getStatsOn()) {
                sb.append("Statistics gathering started ");
                sb.append(connector.getStatsOnMs());
                sb.append("ms ago");
                sb.append("<br />\n");
                sb.append("Total connections: ");
                sb.append(connector.getConnections());
                sb.append("<br />\n");
                sb.append("Current connections open: ");
                sb.append(connector.getConnectionsOpen());
                sb.append("<br />\n");
                sb.append("Max concurrent connections open: ");
                sb.append(connector.getConnectionsOpenMax());
                sb.append("<br />\n");
                sb.append("Total connections duration: ");
                sb.append(connector.getConnectionsDurationTotal());
                sb.append("<br />\n");
                sb.append("Mean connection duration: ");
                sb.append(connector.getConnectionsDurationMean());
                sb.append("<br />\n");
                sb.append("Max connection duration: ");
                sb.append(connector.getConnectionsDurationMax());
                sb.append("<br />\n");
                sb.append("Connection duration standard deviation: ");
                sb.append(connector.getConnectionsDurationStdDev());
                sb.append("<br />\n");
                sb.append("Total requests: ");
                sb.append(connector.getRequests());
                sb.append("<br />\n");
                sb.append("Mean requests per connection: ");
                sb.append(connector.getConnectionsRequestsMean());
                sb.append("<br />\n");
                sb.append("Max requests per connection: ");
                sb.append(connector.getConnectionsRequestsMax());
                sb.append("<br />\n");
                sb.append("Requests per connection standard deviation: ");
                sb.append(connector.getConnectionsRequestsStdDev());
                sb.append("<br />\n");
            } else {
                sb.append("Statistics gathering off.\n");
            }
        }
        sb.append("<h2>Memory:</h2>\n");
        sb.append("Heap memory usage: ");
        sb.append(this._memoryBean.getHeapMemoryUsage().getUsed());
        sb.append(" bytes");
        sb.append("<br />\n");
        sb.append("Non-heap memory usage: ");
        sb.append(this._memoryBean.getNonHeapMemoryUsage().getUsed());
        sb.append(" bytes");
        sb.append("<br />\n");
        eVar.setContentType(MimeTypes.TEXT_HTML);
        eVar.getWriter().write(sb.toString());
    }

    private void sendXmlResponse(e eVar) {
        StringBuilder sbA = androidx.appcompat.view.b.a("<statistics>\n", "  <requests>\n", "    <statsOnMs>");
        sbA.append(this._statsHandler.getStatsOnMs());
        sbA.append("</statsOnMs>\n");
        sbA.append("    <requests>");
        sbA.append(this._statsHandler.getRequests());
        sbA.append("</requests>\n");
        sbA.append("    <requestsActive>");
        sbA.append(this._statsHandler.getRequestsActive());
        sbA.append("</requestsActive>\n");
        sbA.append("    <requestsActiveMax>");
        sbA.append(this._statsHandler.getRequestsActiveMax());
        sbA.append("</requestsActiveMax>\n");
        sbA.append("    <requestsTimeTotal>");
        sbA.append(this._statsHandler.getRequestTimeTotal());
        sbA.append("</requestsTimeTotal>\n");
        sbA.append("    <requestsTimeMean>");
        sbA.append(this._statsHandler.getRequestTimeMean());
        sbA.append("</requestsTimeMean>\n");
        sbA.append("    <requestsTimeMax>");
        sbA.append(this._statsHandler.getRequestTimeMax());
        sbA.append("</requestsTimeMax>\n");
        sbA.append("    <requestsTimeStdDev>");
        sbA.append(this._statsHandler.getRequestTimeStdDev());
        sbA.append("</requestsTimeStdDev>\n");
        sbA.append("    <dispatched>");
        sbA.append(this._statsHandler.getDispatched());
        sbA.append("</dispatched>\n");
        sbA.append("    <dispatchedActive>");
        sbA.append(this._statsHandler.getDispatchedActive());
        sbA.append("</dispatchedActive>\n");
        sbA.append("    <dispatchedActiveMax>");
        sbA.append(this._statsHandler.getDispatchedActiveMax());
        sbA.append("</dispatchedActiveMax>\n");
        sbA.append("    <dispatchedTimeTotal>");
        sbA.append(this._statsHandler.getDispatchedTimeTotal());
        sbA.append("</dispatchedTimeTotal>\n");
        sbA.append("    <dispatchedTimeMean>");
        sbA.append(this._statsHandler.getDispatchedTimeMean());
        sbA.append("</dispatchedTimeMean>\n");
        sbA.append("    <dispatchedTimeMax>");
        sbA.append(this._statsHandler.getDispatchedTimeMax());
        sbA.append("</dispatchedTimeMax>\n");
        sbA.append("    <dispatchedTimeStdDev>");
        sbA.append(this._statsHandler.getDispatchedTimeStdDev());
        sbA.append("</dispatchedTimeStdDev>\n");
        sbA.append("    <requestsSuspended>");
        sbA.append(this._statsHandler.getSuspends());
        sbA.append("</requestsSuspended>\n");
        sbA.append("    <requestsExpired>");
        sbA.append(this._statsHandler.getExpires());
        sbA.append("</requestsExpired>\n");
        sbA.append("    <requestsResumed>");
        sbA.append(this._statsHandler.getResumes());
        sbA.append("</requestsResumed>\n");
        sbA.append("  </requests>\n");
        sbA.append("  <responses>\n");
        sbA.append("    <responses1xx>");
        sbA.append(this._statsHandler.getResponses1xx());
        sbA.append("</responses1xx>\n");
        sbA.append("    <responses2xx>");
        sbA.append(this._statsHandler.getResponses2xx());
        sbA.append("</responses2xx>\n");
        sbA.append("    <responses3xx>");
        sbA.append(this._statsHandler.getResponses3xx());
        sbA.append("</responses3xx>\n");
        sbA.append("    <responses4xx>");
        sbA.append(this._statsHandler.getResponses4xx());
        sbA.append("</responses4xx>\n");
        sbA.append("    <responses5xx>");
        sbA.append(this._statsHandler.getResponses5xx());
        sbA.append("</responses5xx>\n");
        sbA.append("    <responsesBytesTotal>");
        sbA.append(this._statsHandler.getResponsesBytesTotal());
        sbA.append("</responsesBytesTotal>\n");
        sbA.append("  </responses>\n");
        sbA.append("  <connections>\n");
        for (Connector connector : this._connectors) {
            sbA.append("    <connector>\n");
            sbA.append("      <name>");
            sbA.append(connector.getName());
            sbA.append("</name>\n");
            sbA.append("      <statsOn>");
            sbA.append(connector.getStatsOn());
            sbA.append("</statsOn>\n");
            if (connector.getStatsOn()) {
                sbA.append("    <statsOnMs>");
                sbA.append(connector.getStatsOnMs());
                sbA.append("</statsOnMs>\n");
                sbA.append("    <connections>");
                sbA.append(connector.getConnections());
                sbA.append("</connections>\n");
                sbA.append("    <connectionsOpen>");
                sbA.append(connector.getConnectionsOpen());
                sbA.append("</connectionsOpen>\n");
                sbA.append("    <connectionsOpenMax>");
                sbA.append(connector.getConnectionsOpenMax());
                sbA.append("</connectionsOpenMax>\n");
                sbA.append("    <connectionsDurationTotal>");
                sbA.append(connector.getConnectionsDurationTotal());
                sbA.append("</connectionsDurationTotal>\n");
                sbA.append("    <connectionsDurationMean>");
                sbA.append(connector.getConnectionsDurationMean());
                sbA.append("</connectionsDurationMean>\n");
                sbA.append("    <connectionsDurationMax>");
                sbA.append(connector.getConnectionsDurationMax());
                sbA.append("</connectionsDurationMax>\n");
                sbA.append("    <connectionsDurationStdDev>");
                sbA.append(connector.getConnectionsDurationStdDev());
                sbA.append("</connectionsDurationStdDev>\n");
                sbA.append("    <requests>");
                sbA.append(connector.getRequests());
                sbA.append("</requests>\n");
                sbA.append("    <connectionsRequestsMean>");
                sbA.append(connector.getConnectionsRequestsMean());
                sbA.append("</connectionsRequestsMean>\n");
                sbA.append("    <connectionsRequestsMax>");
                sbA.append(connector.getConnectionsRequestsMax());
                sbA.append("</connectionsRequestsMax>\n");
                sbA.append("    <connectionsRequestsStdDev>");
                sbA.append(connector.getConnectionsRequestsStdDev());
                sbA.append("</connectionsRequestsStdDev>\n");
            }
            sbA.append("    </connector>\n");
        }
        sbA.append("  </connections>\n");
        sbA.append("  <memory>\n");
        sbA.append("    <heapMemoryUsage>");
        sbA.append(this._memoryBean.getHeapMemoryUsage().getUsed());
        sbA.append("</heapMemoryUsage>\n");
        sbA.append("    <nonHeapMemoryUsage>");
        sbA.append(this._memoryBean.getNonHeapMemoryUsage().getUsed());
        sbA.append("</nonHeapMemoryUsage>\n");
        sbA.append("  </memory>\n");
        sbA.append("</statistics>\n");
        eVar.setContentType(MimeTypes.TEXT_XML);
        eVar.getWriter().write(sbA.toString());
    }

    @Override // j2.b
    public void doGet(c cVar, e eVar) {
        if (this._statsHandler == null) {
            LOG.warn("Statistics Handler not installed!", new Object[0]);
            eVar.sendError(HttpStatus.SERVICE_UNAVAILABLE_503);
            return;
        }
        if (this._restrictToLocalhost && !isLoopbackAddress(cVar.getRemoteAddr())) {
            eVar.sendError(HttpStatus.SERVICE_UNAVAILABLE_503);
            return;
        }
        String parameter = cVar.getParameter("xml");
        if (parameter == null) {
            parameter = cVar.getParameter("XML");
        }
        if (parameter == null || !"true".equalsIgnoreCase(parameter)) {
            sendTextResponse(eVar);
        } else {
            sendXmlResponse(eVar);
        }
    }

    @Override // j2.b
    public void doPost(c cVar, e eVar) {
        doGet(cVar, eVar);
    }

    @Override // g2.i
    public void init() {
        Server server = ((ContextHandler.Context) getServletContext()).getContextHandler().getServer();
        Handler childHandlerByClass = server.getChildHandlerByClass(StatisticsHandler.class);
        if (childHandlerByClass == null) {
            LOG.warn("Statistics Handler not installed!", new Object[0]);
            return;
        }
        this._statsHandler = (StatisticsHandler) childHandlerByClass;
        this._memoryBean = ManagementFactory.getMemoryMXBean();
        this._connectors = server.getConnectors();
        if (getInitParameter("restrictToLocalhost") != null) {
            this._restrictToLocalhost = "true".equals(getInitParameter("restrictToLocalhost"));
        }
    }
}
