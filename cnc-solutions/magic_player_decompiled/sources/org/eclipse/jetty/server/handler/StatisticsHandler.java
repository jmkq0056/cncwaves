package org.eclipse.jetty.server.handler;

import android.support.v4.media.g;
import j2.c;
import j2.e;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.eclipse.jetty.continuation.Continuation;
import org.eclipse.jetty.continuation.ContinuationListener;
import org.eclipse.jetty.server.AsyncContinuation;
import org.eclipse.jetty.server.Request;
import org.eclipse.jetty.server.Response;
import org.eclipse.jetty.util.statistic.CounterStatistic;
import org.eclipse.jetty.util.statistic.SampleStatistic;

/* JADX INFO: loaded from: classes2.dex */
public class StatisticsHandler extends HandlerWrapper {
    private final AtomicLong _statsStartedAt = new AtomicLong();
    private final CounterStatistic _requestStats = new CounterStatistic();
    private final SampleStatistic _requestTimeStats = new SampleStatistic();
    private final CounterStatistic _dispatchedStats = new CounterStatistic();
    private final SampleStatistic _dispatchedTimeStats = new SampleStatistic();
    private final CounterStatistic _suspendStats = new CounterStatistic();
    private final AtomicInteger _resumes = new AtomicInteger();
    private final AtomicInteger _expires = new AtomicInteger();
    private final AtomicInteger _responses1xx = new AtomicInteger();
    private final AtomicInteger _responses2xx = new AtomicInteger();
    private final AtomicInteger _responses3xx = new AtomicInteger();
    private final AtomicInteger _responses4xx = new AtomicInteger();
    private final AtomicInteger _responses5xx = new AtomicInteger();
    private final AtomicLong _responsesTotalBytes = new AtomicLong();
    private final ContinuationListener _onCompletion = new ContinuationListener() { // from class: org.eclipse.jetty.server.handler.StatisticsHandler.1
        @Override // org.eclipse.jetty.continuation.ContinuationListener
        public void onComplete(Continuation continuation) {
            Request baseRequest = ((AsyncContinuation) continuation).getBaseRequest();
            long jCurrentTimeMillis = System.currentTimeMillis() - baseRequest.getTimeStamp();
            StatisticsHandler.this._requestStats.decrement();
            StatisticsHandler.this._requestTimeStats.set(jCurrentTimeMillis);
            StatisticsHandler.this.updateResponse(baseRequest);
            if (continuation.isResumed()) {
                return;
            }
            StatisticsHandler.this._suspendStats.decrement();
        }

        @Override // org.eclipse.jetty.continuation.ContinuationListener
        public void onTimeout(Continuation continuation) {
            StatisticsHandler.this._expires.incrementAndGet();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void updateResponse(Request request) {
        Response response = request.getResponse();
        int status = response.getStatus() / 100;
        if (status == 1) {
            this._responses1xx.incrementAndGet();
        } else if (status == 2) {
            this._responses2xx.incrementAndGet();
        } else if (status == 3) {
            this._responses3xx.incrementAndGet();
        } else if (status == 4) {
            this._responses4xx.incrementAndGet();
        } else if (status == 5) {
            this._responses5xx.incrementAndGet();
        }
        this._responsesTotalBytes.addAndGet(response.getContentCount());
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.handler.AbstractHandler, org.eclipse.jetty.util.component.AggregateLifeCycle, org.eclipse.jetty.util.component.AbstractLifeCycle
    public void doStart() {
        super.doStart();
        statsReset();
    }

    public int getDispatched() {
        return (int) this._dispatchedStats.getTotal();
    }

    public int getDispatchedActive() {
        return (int) this._dispatchedStats.getCurrent();
    }

    public int getDispatchedActiveMax() {
        return (int) this._dispatchedStats.getMax();
    }

    public long getDispatchedTimeMax() {
        return this._dispatchedTimeStats.getMax();
    }

    public double getDispatchedTimeMean() {
        return this._dispatchedTimeStats.getMean();
    }

    public double getDispatchedTimeStdDev() {
        return this._dispatchedTimeStats.getStdDev();
    }

    public long getDispatchedTimeTotal() {
        return this._dispatchedTimeStats.getTotal();
    }

    public int getExpires() {
        return this._expires.get();
    }

    public long getRequestTimeMax() {
        return this._requestTimeStats.getMax();
    }

    public double getRequestTimeMean() {
        return this._requestTimeStats.getMean();
    }

    public double getRequestTimeStdDev() {
        return this._requestTimeStats.getStdDev();
    }

    public long getRequestTimeTotal() {
        return this._requestTimeStats.getTotal();
    }

    public int getRequests() {
        return (int) this._requestStats.getTotal();
    }

    public int getRequestsActive() {
        return (int) this._requestStats.getCurrent();
    }

    public int getRequestsActiveMax() {
        return (int) this._requestStats.getMax();
    }

    public int getResponses1xx() {
        return this._responses1xx.get();
    }

    public int getResponses2xx() {
        return this._responses2xx.get();
    }

    public int getResponses3xx() {
        return this._responses3xx.get();
    }

    public int getResponses4xx() {
        return this._responses4xx.get();
    }

    public int getResponses5xx() {
        return this._responses5xx.get();
    }

    public long getResponsesBytesTotal() {
        return this._responsesTotalBytes.get();
    }

    public int getResumes() {
        return this._resumes.get();
    }

    public long getStatsOnMs() {
        return System.currentTimeMillis() - this._statsStartedAt.get();
    }

    public int getSuspends() {
        return (int) this._suspendStats.getTotal();
    }

    public int getSuspendsActive() {
        return (int) this._suspendStats.getCurrent();
    }

    public int getSuspendsActiveMax() {
        return (int) this._suspendStats.getMax();
    }

    @Override // org.eclipse.jetty.server.handler.HandlerWrapper, org.eclipse.jetty.server.Handler
    public void handle(String str, Request request, c cVar, e eVar) {
        long jCurrentTimeMillis;
        this._dispatchedStats.increment();
        AsyncContinuation asyncContinuation = request.getAsyncContinuation();
        if (asyncContinuation.isInitial()) {
            this._requestStats.increment();
            jCurrentTimeMillis = request.getTimeStamp();
        } else {
            jCurrentTimeMillis = System.currentTimeMillis();
            this._suspendStats.decrement();
            if (asyncContinuation.isResumed()) {
                this._resumes.incrementAndGet();
            }
        }
        try {
            super.handle(str, request, cVar, eVar);
            long jCurrentTimeMillis2 = System.currentTimeMillis() - jCurrentTimeMillis;
            this._dispatchedStats.decrement();
            this._dispatchedTimeStats.set(jCurrentTimeMillis2);
            if (asyncContinuation.isSuspended()) {
                if (asyncContinuation.isInitial()) {
                    asyncContinuation.addContinuationListener(this._onCompletion);
                }
                this._suspendStats.increment();
            } else if (asyncContinuation.isInitial()) {
                this._requestStats.decrement();
                this._requestTimeStats.set(jCurrentTimeMillis2);
                updateResponse(request);
            }
        } catch (Throwable th) {
            long jCurrentTimeMillis3 = System.currentTimeMillis() - jCurrentTimeMillis;
            this._dispatchedStats.decrement();
            this._dispatchedTimeStats.set(jCurrentTimeMillis3);
            if (asyncContinuation.isSuspended()) {
                if (asyncContinuation.isInitial()) {
                    asyncContinuation.addContinuationListener(this._onCompletion);
                }
                this._suspendStats.increment();
            } else if (asyncContinuation.isInitial()) {
                this._requestStats.decrement();
                this._requestTimeStats.set(jCurrentTimeMillis3);
                updateResponse(request);
            }
            throw th;
        }
    }

    public void statsReset() {
        this._statsStartedAt.set(System.currentTimeMillis());
        this._requestStats.reset();
        this._requestTimeStats.reset();
        this._dispatchedStats.reset();
        this._dispatchedTimeStats.reset();
        this._suspendStats.reset();
        this._resumes.set(0);
        this._expires.set(0);
        this._responses1xx.set(0);
        this._responses2xx.set(0);
        this._responses3xx.set(0);
        this._responses4xx.set(0);
        this._responses5xx.set(0);
        this._responsesTotalBytes.set(0L);
    }

    public String toStatsHTML() {
        StringBuilder sbA = g.a("<h1>Statistics:</h1>\n", "Statistics gathering started ");
        sbA.append(getStatsOnMs());
        sbA.append("ms ago");
        sbA.append("<br />\n");
        sbA.append("<h2>Requests:</h2>\n");
        sbA.append("Total requests: ");
        sbA.append(getRequests());
        sbA.append("<br />\n");
        sbA.append("Active requests: ");
        sbA.append(getRequestsActive());
        sbA.append("<br />\n");
        sbA.append("Max active requests: ");
        sbA.append(getRequestsActiveMax());
        sbA.append("<br />\n");
        sbA.append("Total requests time: ");
        sbA.append(getRequestTimeTotal());
        sbA.append("<br />\n");
        sbA.append("Mean request time: ");
        sbA.append(getRequestTimeMean());
        sbA.append("<br />\n");
        sbA.append("Max request time: ");
        sbA.append(getRequestTimeMax());
        sbA.append("<br />\n");
        sbA.append("Request time standard deviation: ");
        sbA.append(getRequestTimeStdDev());
        sbA.append("<br />\n");
        sbA.append("<h2>Dispatches:</h2>\n");
        sbA.append("Total dispatched: ");
        sbA.append(getDispatched());
        sbA.append("<br />\n");
        sbA.append("Active dispatched: ");
        sbA.append(getDispatchedActive());
        sbA.append("<br />\n");
        sbA.append("Max active dispatched: ");
        sbA.append(getDispatchedActiveMax());
        sbA.append("<br />\n");
        sbA.append("Total dispatched time: ");
        sbA.append(getDispatchedTimeTotal());
        sbA.append("<br />\n");
        sbA.append("Mean dispatched time: ");
        sbA.append(getDispatchedTimeMean());
        sbA.append("<br />\n");
        sbA.append("Max dispatched time: ");
        sbA.append(getDispatchedTimeMax());
        sbA.append("<br />\n");
        sbA.append("Dispatched time standard deviation: ");
        sbA.append(getDispatchedTimeStdDev());
        sbA.append("<br />\n");
        sbA.append("Total requests suspended: ");
        sbA.append(getSuspends());
        sbA.append("<br />\n");
        sbA.append("Total requests expired: ");
        sbA.append(getExpires());
        sbA.append("<br />\n");
        sbA.append("Total requests resumed: ");
        sbA.append(getResumes());
        sbA.append("<br />\n");
        sbA.append("<h2>Responses:</h2>\n");
        sbA.append("1xx responses: ");
        sbA.append(getResponses1xx());
        sbA.append("<br />\n");
        sbA.append("2xx responses: ");
        sbA.append(getResponses2xx());
        sbA.append("<br />\n");
        sbA.append("3xx responses: ");
        sbA.append(getResponses3xx());
        sbA.append("<br />\n");
        sbA.append("4xx responses: ");
        sbA.append(getResponses4xx());
        sbA.append("<br />\n");
        sbA.append("5xx responses: ");
        sbA.append(getResponses5xx());
        sbA.append("<br />\n");
        sbA.append("Bytes sent total: ");
        sbA.append(getResponsesBytesTotal());
        sbA.append("<br />\n");
        return sbA.toString();
    }
}
