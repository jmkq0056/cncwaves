package com.stripe.jvmcore.httptiming;

import androidx.core.app.NotificationCompat;
import com.google.firebase.perf.FirebasePerformance;
import com.stripe.jvmcore.httptiming.HttpTimingLoggerEventListener;
import com.stripe.time.Clock;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.time.Duration;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;

/* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000Ô\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001:\u0006cdefghB-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\u000e\u0010&\u001a\b\u0012\u0004\u0012\u00020'0\u0007H\u0002J\u000e\u0010(\u001a\b\u0012\u0004\u0012\u00020)0\u0007H\u0002J\u000e\u0010*\u001a\b\u0012\u0004\u0012\u00020+0\u0007H\u0002J\u0010\u0010,\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010.\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010/\u001a\u000200H\u0016J\u0010\u00101\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u00102\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J*\u00103\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u000109H\u0016J2\u0010:\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u0002072\b\u00108\u001a\u0004\u0018\u0001092\u0006\u0010/\u001a\u000200H\u0016J \u0010;\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00104\u001a\u0002052\u0006\u00106\u001a\u000207H\u0016J\u0018\u0010<\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010=\u001a\u00020>H\u0016J\u0018\u0010?\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010=\u001a\u00020>H\u0016J \u0010@\u001a\u00020+2\u0006\u0010A\u001a\u00020\u001f2\u0006\u0010B\u001a\u00020\u00052\u0006\u0010C\u001a\u00020\u0005H\u0002J&\u0010D\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010E\u001a\u00020F2\f\u0010G\u001a\b\u0012\u0004\u0012\u00020H0\u0007H\u0016J\u0018\u0010I\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010E\u001a\u00020FH\u0016J\b\u0010J\u001a\u00020-H\u0002J\u0018\u0010K\u001a\u00020-2\u0006\u0010L\u001a\u00020M2\u0006\u0010N\u001a\u00020OH\u0002J\u0018\u0010P\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010Q\u001a\u00020\"H\u0016J\u0010\u0010R\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010S\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010/\u001a\u000200H\u0016J\u0018\u0010T\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010U\u001a\u00020VH\u0016J\u0010\u0010W\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010X\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010Q\u001a\u00020\"H\u0016J\u0010\u0010Y\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u0018\u0010Z\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010/\u001a\u000200H\u0016J\u0018\u0010[\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\\\u001a\u00020]H\u0016J\u0010\u0010^\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016J\u001a\u0010_\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010`\u001a\u0004\u0018\u00010aH\u0016J\u0010\u0010b\u001a\u00020-2\u0006\u0010\u0002\u001a\u00020\u0003H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00180\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R2\u0010\u001c\u001a&\u0012\u0004\u0012\u00020\u0014\u0012\u001c\u0012\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u001f\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00140 0\u001e0\u00070\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\"X\u0082\u000e¢\u0006\u0002\n\u0000R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b$\u0010%¨\u0006i"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener;", "Lokhttp3/EventListener;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Call;", "callStartTime", "Ljava/time/Instant;", "timingCollectors", "", "Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;", "clock", "Lcom/stripe/time/Clock;", "(Lokhttp3/Call;Ljava/time/Instant;Ljava/util/List;Lcom/stripe/time/Clock;)V", "getCall", "()Lokhttp3/Call;", "getCallStartTime", "()Ljava/time/Instant;", "getClock", "()Lcom/stripe/time/Clock;", "eventCounts", "", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;", "", "events", "", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;", "isCancelled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isDone", "namedTimingInterval", "", "Lkotlin/Pair;", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;", "", "requestBytes", "", "responseBytes", "getTimingCollectors", "()Ljava/util/List;", "calculateMetrics", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;", "calculateTags", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;", "calculateTimings", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;", "callEnd", "", "callFailed", "ioe", "Ljava/io/IOException;", "callStart", "canceled", "connectEnd", "inetSocketAddress", "Ljava/net/InetSocketAddress;", "proxy", "Ljava/net/Proxy;", "protocol", "Lokhttp3/Protocol;", "connectFailed", "connectStart", "connectionAcquired", "connection", "Lokhttp3/Connection;", "connectionReleased", "createTiming", "name", "timeStart", "timeEnd", "dnsEnd", "domainName", "", "inetAddressList", "Ljava/net/InetAddress;", "dnsStart", "emitMetrics", "logTiming", "eventName", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;", "actionType", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;", "requestBodyEnd", "byteCount", "requestBodyStart", "requestFailed", "requestHeadersEnd", "request", "Lokhttp3/Request;", "requestHeadersStart", "responseBodyEnd", "responseBodyStart", "responseFailed", "responseHeadersEnd", "response", "Lokhttp3/Response;", "responseHeadersStart", "secureConnectEnd", "handshake", "Lokhttp3/Handshake;", "secureConnectStart", "Event", "HttpTimingLoggerEventListenerFactory", "Metric", "RequestMetrics", "Tag", "Timing", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class HttpTimingLoggerEventListener extends EventListener {
    private final Call call;
    private final Instant callStartTime;
    private final Clock clock;
    private final Map<Event.Key, Integer> eventCounts;
    private final List<Event> events;
    private AtomicBoolean isCancelled;
    private AtomicBoolean isDone;
    private final Map<Event.Key, List<Pair<Timing.Name, Set<Event.Key>>>> namedTimingInterval;
    private long requestBytes;
    private long responseBytes;
    private final List<HttpTimingCollector> timingCollectors;

    public final Call getCall() {
        return this.call;
    }

    public final Instant getCallStartTime() {
        return this.callStartTime;
    }

    public /* synthetic */ HttpTimingLoggerEventListener(Call call, Instant instant, List list, Clock clock, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(call, instant, (i & 4) != 0 ? CollectionsKt.emptyList() : list, clock);
    }

    public final List<HttpTimingCollector> getTimingCollectors() {
        return this.timingCollectors;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public HttpTimingLoggerEventListener(Call call, Instant callStartTime, List<? extends HttpTimingCollector> timingCollectors, Clock clock) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(callStartTime, "callStartTime");
        Intrinsics.checkNotNullParameter(timingCollectors, "timingCollectors");
        Intrinsics.checkNotNullParameter(clock, "clock");
        this.call = call;
        this.callStartTime = callStartTime;
        this.timingCollectors = timingCollectors;
        this.clock = clock;
        this.events = new ArrayList();
        this.isDone = new AtomicBoolean(false);
        this.isCancelled = new AtomicBoolean(false);
        this.eventCounts = new LinkedHashMap();
        this.requestBytes = -1L;
        this.responseBytes = -1L;
        this.namedTimingInterval = MapsKt.mapOf(TuplesKt.to(new Event.Key(Event.Name.DNS, Event.ActionType.END), CollectionsKt.listOf(new Pair(Timing.Name.DNS, SetsKt.setOf(new Event.Key(Event.Name.DNS, Event.ActionType.START))))), TuplesKt.to(new Event.Key(Event.Name.CONNECT, Event.ActionType.END), CollectionsKt.listOf(new Pair(Timing.Name.CONNECT, SetsKt.setOf(new Event.Key(Event.Name.CONNECT, Event.ActionType.START))))), TuplesKt.to(new Event.Key(Event.Name.SECURE_CONNECT, Event.ActionType.END), CollectionsKt.listOf(new Pair(Timing.Name.TLS, SetsKt.setOf(new Event.Key(Event.Name.SECURE_CONNECT, Event.ActionType.START))))), TuplesKt.to(new Event.Key(Event.Name.CONNECTION_ACQUIRED, Event.ActionType.EVENT), CollectionsKt.listOf(new Pair(Timing.Name.CONNECTION_ACQUIRE, SetsKt.setOf((Object[]) new Event.Key[]{new Event.Key(Event.Name.CALL, Event.ActionType.START), new Event.Key(Event.Name.CONNECTION_RELEASED, Event.ActionType.EVENT)})))), TuplesKt.to(new Event.Key(Event.Name.RESPONSE_BODY, Event.ActionType.END), CollectionsKt.listOf((Object[]) new Pair[]{new Pair(Timing.Name.REQUEST_E2E, SetsKt.setOf(new Event.Key(Event.Name.REQUEST_HEADERS, Event.ActionType.START))), new Pair(Timing.Name.RESPONSE_RECEIVE, SetsKt.setOf(new Event.Key(Event.Name.RESPONSE_HEADERS, Event.ActionType.START)))})), TuplesKt.to(new Event.Key(Event.Name.REQUEST_BODY, Event.ActionType.END), CollectionsKt.listOf(new Pair(Timing.Name.REQUEST_SEND, SetsKt.setOf(new Event.Key(Event.Name.REQUEST_HEADERS, Event.ActionType.START))))), TuplesKt.to(new Event.Key(Event.Name.CALL, Event.ActionType.END), CollectionsKt.listOf(new Pair(Timing.Name.CALL_E2E, SetsKt.setOf(new Event.Key(Event.Name.CALL, Event.ActionType.START))))), TuplesKt.to(new Event.Key(Event.Name.CALL_FAILED, Event.ActionType.EVENT), CollectionsKt.listOf(new Pair(Timing.Name.CALL_E2E, SetsKt.setOf(new Event.Key(Event.Name.CALL, Event.ActionType.START))))));
    }

    public final Clock getClock() {
        return this.clock;
    }

    /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$HttpTimingLoggerEventListenerFactory;", "Lokhttp3/EventListener$Factory;", "timingCollectors", "", "Lcom/stripe/jvmcore/httptiming/HttpTimingCollector;", "clock", "Lcom/stripe/time/Clock;", "(Ljava/util/List;Lcom/stripe/time/Clock;)V", "create", "Lokhttp3/EventListener;", NotificationCompat.CATEGORY_CALL, "Lokhttp3/Call;", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class HttpTimingLoggerEventListenerFactory implements EventListener.Factory {
        private final Clock clock;
        private final List<HttpTimingCollector> timingCollectors;

        /* JADX WARN: Multi-variable type inference failed */
        public HttpTimingLoggerEventListenerFactory(List<? extends HttpTimingCollector> timingCollectors, Clock clock) {
            Intrinsics.checkNotNullParameter(timingCollectors, "timingCollectors");
            Intrinsics.checkNotNullParameter(clock, "clock");
            this.timingCollectors = timingCollectors;
            this.clock = clock;
        }

        public /* synthetic */ HttpTimingLoggerEventListenerFactory(List list, Clock clock, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? CollectionsKt.emptyList() : list, clock);
        }

        @Override // okhttp3.EventListener.Factory
        public EventListener create(Call call) {
            Intrinsics.checkNotNullParameter(call, "call");
            Instant instantOfEpochMilli = Instant.ofEpochMilli(this.clock.currentTimeMillis());
            Intrinsics.checkNotNullExpressionValue(instantOfEpochMilli, "ofEpochMilli(...)");
            return new HttpTimingLoggerEventListener(call, instantOfEpochMilli, this.timingCollectors, this.clock);
        }
    }

    /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\b\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0003 !\"B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0011\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0000H\u0096\u0002J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0007HÆ\u0003J'\u0010\u0019\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007HÆ\u0001J\u0013\u0010\u001a\u001a\u00020\u001b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u001cHÖ\u0003J\t\u0010\u001d\u001a\u00020\u0014HÖ\u0001J\t\u0010\u001e\u001a\u00020\u001fHÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\r\u001a\u00020\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012¨\u0006#"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event;", "", "name", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;", "actionType", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;", "callTime", "Ljava/time/Instant;", "(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;Ljava/time/Instant;)V", "getActionType", "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;", "getCallTime", "()Ljava/time/Instant;", "key", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;", "getKey", "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;", "getName", "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;", "compareTo", "", "other", "component1", "component2", "component3", "copy", "equals", "", "", "hashCode", "toString", "", "ActionType", "Key", "Name", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final /* data */ class Event implements Comparable<Event> {
        private final ActionType actionType;
        private final Instant callTime;
        private final Key key;
        private final Name name;

        public static /* synthetic */ Event copy$default(Event event, Name name, ActionType actionType, Instant instant, int i, Object obj) {
            if ((i & 1) != 0) {
                name = event.name;
            }
            if ((i & 2) != 0) {
                actionType = event.actionType;
            }
            if ((i & 4) != 0) {
                instant = event.callTime;
            }
            return event.copy(name, actionType, instant);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Name getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final ActionType getActionType() {
            return this.actionType;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Instant getCallTime() {
            return this.callTime;
        }

        public final Event copy(Name name, ActionType actionType, Instant callTime) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(actionType, "actionType");
            Intrinsics.checkNotNullParameter(callTime, "callTime");
            return new Event(name, actionType, callTime);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Event)) {
                return false;
            }
            Event event = (Event) other;
            return this.name == event.name && this.actionType == event.actionType && Intrinsics.areEqual(this.callTime, event.callTime);
        }

        public int hashCode() {
            return (((this.name.hashCode() * 31) + this.actionType.hashCode()) * 31) + this.callTime.hashCode();
        }

        public String toString() {
            return "Event(name=" + this.name + ", actionType=" + this.actionType + ", callTime=" + this.callTime + ')';
        }

        public Event(Name name, ActionType actionType, Instant callTime) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(actionType, "actionType");
            Intrinsics.checkNotNullParameter(callTime, "callTime");
            this.name = name;
            this.actionType = actionType;
            this.callTime = callTime;
            this.key = new Key(name, actionType);
        }

        public final Name getName() {
            return this.name;
        }

        public final ActionType getActionType() {
            return this.actionType;
        }

        public final Instant getCallTime() {
            return this.callTime;
        }

        public final Key getKey() {
            return this.key;
        }

        @Override // java.lang.Comparable
        public int compareTo(Event other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return this.callTime.compareTo(other.callTime);
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0013\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010j\u0002\b\u0011j\u0002\b\u0012j\u0002\b\u0013¨\u0006\u0014"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;", "", "(Ljava/lang/String;I)V", "CALL", "DNS", FirebasePerformance.HttpMethod.CONNECT, "SECURE_CONNECT", "CONNECT_FAILED", "CONNECTION_ACQUIRED", "REQUEST_HEADERS", "REQUEST_BODY", "REQUEST_FAILED", "RESPONSE_HEADERS", "RESPONSE_BODY", "RESPONSE_FAILED", "CALL_FAILED", "CANCELED", "CONNECTION_RELEASED", "CACHE_HIT", "CACHE_MISS", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Name {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Name[] $VALUES;
            public static final Name CALL = new Name("CALL", 0);
            public static final Name DNS = new Name("DNS", 1);
            public static final Name CONNECT = new Name(FirebasePerformance.HttpMethod.CONNECT, 2);
            public static final Name SECURE_CONNECT = new Name("SECURE_CONNECT", 3);
            public static final Name CONNECT_FAILED = new Name("CONNECT_FAILED", 4);
            public static final Name CONNECTION_ACQUIRED = new Name("CONNECTION_ACQUIRED", 5);
            public static final Name REQUEST_HEADERS = new Name("REQUEST_HEADERS", 6);
            public static final Name REQUEST_BODY = new Name("REQUEST_BODY", 7);
            public static final Name REQUEST_FAILED = new Name("REQUEST_FAILED", 8);
            public static final Name RESPONSE_HEADERS = new Name("RESPONSE_HEADERS", 9);
            public static final Name RESPONSE_BODY = new Name("RESPONSE_BODY", 10);
            public static final Name RESPONSE_FAILED = new Name("RESPONSE_FAILED", 11);
            public static final Name CALL_FAILED = new Name("CALL_FAILED", 12);
            public static final Name CANCELED = new Name("CANCELED", 13);
            public static final Name CONNECTION_RELEASED = new Name("CONNECTION_RELEASED", 14);
            public static final Name CACHE_HIT = new Name("CACHE_HIT", 15);
            public static final Name CACHE_MISS = new Name("CACHE_MISS", 16);

            private static final /* synthetic */ Name[] $values() {
                return new Name[]{CALL, DNS, CONNECT, SECURE_CONNECT, CONNECT_FAILED, CONNECTION_ACQUIRED, REQUEST_HEADERS, REQUEST_BODY, REQUEST_FAILED, RESPONSE_HEADERS, RESPONSE_BODY, RESPONSE_FAILED, CALL_FAILED, CANCELED, CONNECTION_RELEASED, CACHE_HIT, CACHE_MISS};
            }

            public static EnumEntries<Name> getEntries() {
                return $ENTRIES;
            }

            public static Name valueOf(String str) {
                return (Name) Enum.valueOf(Name.class, str);
            }

            public static Name[] values() {
                return (Name[]) $VALUES.clone();
            }

            private Name(String str, int i) {
            }

            static {
                Name[] nameArr$values = $values();
                $VALUES = nameArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(nameArr$values);
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;", "", "(Ljava/lang/String;I)V", "START", "END", "EVENT", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class ActionType {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ ActionType[] $VALUES;
            public static final ActionType START = new ActionType("START", 0);
            public static final ActionType END = new ActionType("END", 1);
            public static final ActionType EVENT = new ActionType("EVENT", 2);

            private static final /* synthetic */ ActionType[] $values() {
                return new ActionType[]{START, END, EVENT};
            }

            public static EnumEntries<ActionType> getEntries() {
                return $ENTRIES;
            }

            public static ActionType valueOf(String str) {
                return (ActionType) Enum.valueOf(ActionType.class, str);
            }

            public static ActionType[] values() {
                return (ActionType[]) $VALUES.clone();
            }

            private ActionType(String str, int i) {
            }

            static {
                ActionType[] actionTypeArr$values = $values();
                $VALUES = actionTypeArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(actionTypeArr$values);
            }
        }

        /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
        @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Key;", "", "eventName", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;", "actionType", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;", "(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;)V", "getActionType", "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$ActionType;", "getEventName", "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Event$Name;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final /* data */ class Key {
            private final ActionType actionType;
            private final Name eventName;

            public static /* synthetic */ Key copy$default(Key key, Name name, ActionType actionType, int i, Object obj) {
                if ((i & 1) != 0) {
                    name = key.eventName;
                }
                if ((i & 2) != 0) {
                    actionType = key.actionType;
                }
                return key.copy(name, actionType);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Name getEventName() {
                return this.eventName;
            }

            /* JADX INFO: renamed from: component2, reason: from getter */
            public final ActionType getActionType() {
                return this.actionType;
            }

            public final Key copy(Name eventName, ActionType actionType) {
                Intrinsics.checkNotNullParameter(eventName, "eventName");
                Intrinsics.checkNotNullParameter(actionType, "actionType");
                return new Key(eventName, actionType);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                if (!(other instanceof Key)) {
                    return false;
                }
                Key key = (Key) other;
                return this.eventName == key.eventName && this.actionType == key.actionType;
            }

            public int hashCode() {
                return (this.eventName.hashCode() * 31) + this.actionType.hashCode();
            }

            public String toString() {
                return "Key(eventName=" + this.eventName + ", actionType=" + this.actionType + ')';
            }

            public Key(Name eventName, ActionType actionType) {
                Intrinsics.checkNotNullParameter(eventName, "eventName");
                Intrinsics.checkNotNullParameter(actionType, "actionType");
                this.eventName = eventName;
                this.actionType = actionType;
            }

            public final ActionType getActionType() {
                return this.actionType;
            }

            public final Name getEventName() {
                return this.eventName;
            }
        }
    }

    /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\b\u0018\u0000 \u001a2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0002\u001a\u001bB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0002\u0010\u0007J\u0011\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0000H\u0096\u0002J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0005HÆ\u0003J'\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u000f\u001a\u0004\u0018\u00010\u0016HÖ\u0003J\t\u0010\u0017\u001a\u00020\u000eHÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000b¨\u0006\u001c"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;", "", "name", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;", "timeSinceCallStart", "Ljava/time/Duration;", "timingDuration", "(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;Ljava/time/Duration;Ljava/time/Duration;)V", "getName", "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;", "getTimeSinceCallStart", "()Ljava/time/Duration;", "getTimingDuration", "compareTo", "", "other", "component1", "component2", "component3", "copy", "equals", "", "", "hashCode", "toString", "", "Companion", "Name", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Timing implements Comparable<Timing> {
        private static final Comparator<Timing> COMPARATOR;
        private final Name name;
        private final Duration timeSinceCallStart;
        private final Duration timingDuration;

        public static /* synthetic */ Timing copy$default(Timing timing, Name name, Duration duration, Duration duration2, int i, Object obj) {
            if ((i & 1) != 0) {
                name = timing.name;
            }
            if ((i & 2) != 0) {
                duration = timing.timeSinceCallStart;
            }
            if ((i & 4) != 0) {
                duration2 = timing.timingDuration;
            }
            return timing.copy(name, duration, duration2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Name getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final Duration getTimeSinceCallStart() {
            return this.timeSinceCallStart;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Duration getTimingDuration() {
            return this.timingDuration;
        }

        public final Timing copy(Name name, Duration timeSinceCallStart, Duration timingDuration) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(timeSinceCallStart, "timeSinceCallStart");
            Intrinsics.checkNotNullParameter(timingDuration, "timingDuration");
            return new Timing(name, timeSinceCallStart, timingDuration);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Timing)) {
                return false;
            }
            Timing timing = (Timing) other;
            return this.name == timing.name && Intrinsics.areEqual(this.timeSinceCallStart, timing.timeSinceCallStart) && Intrinsics.areEqual(this.timingDuration, timing.timingDuration);
        }

        public int hashCode() {
            return (((this.name.hashCode() * 31) + this.timeSinceCallStart.hashCode()) * 31) + this.timingDuration.hashCode();
        }

        public String toString() {
            return "Timing(name=" + this.name + ", timeSinceCallStart=" + this.timeSinceCallStart + ", timingDuration=" + this.timingDuration + ')';
        }

        public Timing(Name name, Duration timeSinceCallStart, Duration timingDuration) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(timeSinceCallStart, "timeSinceCallStart");
            Intrinsics.checkNotNullParameter(timingDuration, "timingDuration");
            this.name = name;
            this.timeSinceCallStart = timeSinceCallStart;
            this.timingDuration = timingDuration;
        }

        public final Name getName() {
            return this.name;
        }

        public final Duration getTimeSinceCallStart() {
            return this.timeSinceCallStart;
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing$Name;", "", "(Ljava/lang/String;I)V", "DNS", FirebasePerformance.HttpMethod.CONNECT, "TLS", "CONNECTION_ACQUIRE", "REQUEST_E2E", "REQUEST_SEND", "RESPONSE_RECEIVE", "CALL_E2E", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Name {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Name[] $VALUES;
            public static final Name DNS = new Name("DNS", 0);
            public static final Name CONNECT = new Name(FirebasePerformance.HttpMethod.CONNECT, 1);
            public static final Name TLS = new Name("TLS", 2);
            public static final Name CONNECTION_ACQUIRE = new Name("CONNECTION_ACQUIRE", 3);
            public static final Name REQUEST_E2E = new Name("REQUEST_E2E", 4);
            public static final Name REQUEST_SEND = new Name("REQUEST_SEND", 5);
            public static final Name RESPONSE_RECEIVE = new Name("RESPONSE_RECEIVE", 6);
            public static final Name CALL_E2E = new Name("CALL_E2E", 7);

            private static final /* synthetic */ Name[] $values() {
                return new Name[]{DNS, CONNECT, TLS, CONNECTION_ACQUIRE, REQUEST_E2E, REQUEST_SEND, RESPONSE_RECEIVE, CALL_E2E};
            }

            public static EnumEntries<Name> getEntries() {
                return $ENTRIES;
            }

            public static Name valueOf(String str) {
                return (Name) Enum.valueOf(Name.class, str);
            }

            public static Name[] values() {
                return (Name[]) $VALUES.clone();
            }

            private Name(String str, int i) {
            }

            static {
                Name[] nameArr$values = $values();
                $VALUES = nameArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(nameArr$values);
            }
        }

        public final Duration getTimingDuration() {
            return this.timingDuration;
        }

        @Override // java.lang.Comparable
        public int compareTo(Timing other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return COMPARATOR.compare(this, other);
        }

        static {
            final HttpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1 httpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1 = new Function1<Timing, Duration>() { // from class: com.stripe.jvmcore.httptiming.HttpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1
                @Override // kotlin.jvm.functions.Function1
                public final Duration invoke(HttpTimingLoggerEventListener.Timing timing) {
                    return timing.getTimeSinceCallStart().plus(timing.getTimingDuration());
                }
            };
            final Comparator comparatorComparing = Comparator.comparing(new Function() { // from class: com.stripe.jvmcore.httptiming.HttpTimingLoggerEventListener$Timing$$ExternalSyntheticLambda0
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return HttpTimingLoggerEventListener.Timing.COMPARATOR$lambda$0(httpTimingLoggerEventListener$Timing$Companion$COMPARATOR$1, obj);
                }
            });
            Intrinsics.checkNotNullExpressionValue(comparatorComparing, "comparing(...)");
            COMPARATOR = new Comparator() { // from class: com.stripe.jvmcore.httptiming.HttpTimingLoggerEventListener$Timing$special$$inlined$thenBy$1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(T t, T t2) {
                    int iCompare = comparatorComparing.compare(t, t2);
                    return iCompare != 0 ? iCompare : ComparisonsKt.compareValues(((HttpTimingLoggerEventListener.Timing) t).getTimingDuration(), ((HttpTimingLoggerEventListener.Timing) t2).getTimingDuration());
                }
            };
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Duration COMPARATOR$lambda$0(Function1 tmp0, Object obj) {
            Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
            return (Duration) tmp0.invoke(obj);
        }
    }

    /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0014B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;", "", "name", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag$Name;", "value", "", "(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag$Name;Ljava/lang/String;)V", "getName", "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag$Name;", "getValue", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "Name", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Tag {
        private final Name name;
        private final String value;

        public static /* synthetic */ Tag copy$default(Tag tag, Name name, String str, int i, Object obj) {
            if ((i & 1) != 0) {
                name = tag.name;
            }
            if ((i & 2) != 0) {
                str = tag.value;
            }
            return tag.copy(name, str);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Name getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getValue() {
            return this.value;
        }

        public final Tag copy(Name name, String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            return new Tag(name, value);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Tag)) {
                return false;
            }
            Tag tag = (Tag) other;
            return this.name == tag.name && Intrinsics.areEqual(this.value, tag.value);
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + this.value.hashCode();
        }

        public String toString() {
            return "Tag(name=" + this.name + ", value=" + this.value + ')';
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0003\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003¨\u0006\u0004"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag$Name;", "", "(Ljava/lang/String;I)V", "CONNECTION_REUSED", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Name {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Name[] $VALUES;
            public static final Name CONNECTION_REUSED = new Name("CONNECTION_REUSED", 0);

            private static final /* synthetic */ Name[] $values() {
                return new Name[]{CONNECTION_REUSED};
            }

            public static EnumEntries<Name> getEntries() {
                return $ENTRIES;
            }

            public static Name valueOf(String str) {
                return (Name) Enum.valueOf(Name.class, str);
            }

            public static Name[] values() {
                return (Name[]) $VALUES.clone();
            }

            private Name(String str, int i) {
            }

            static {
                Name[] nameArr$values = $values();
                $VALUES = nameArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(nameArr$values);
            }
        }

        public Tag(Name name, String value) {
            Intrinsics.checkNotNullParameter(name, "name");
            Intrinsics.checkNotNullParameter(value, "value");
            this.name = name;
            this.value = value;
        }

        public final Name getName() {
            return this.name;
        }

        public final String getValue() {
            return this.value;
        }
    }

    /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001:\u0001\u0015B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0016"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;", "", "name", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;", "measurement", "", "(Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;J)V", "getMeasurement", "()J", "getName", "()Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Name", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class Metric {
        private final long measurement;
        private final Name name;

        public static /* synthetic */ Metric copy$default(Metric metric, Name name, long j, int i, Object obj) {
            if ((i & 1) != 0) {
                name = metric.name;
            }
            if ((i & 2) != 0) {
                j = metric.measurement;
            }
            return metric.copy(name, j);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Name getName() {
            return this.name;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final long getMeasurement() {
            return this.measurement;
        }

        public final Metric copy(Name name, long measurement) {
            Intrinsics.checkNotNullParameter(name, "name");
            return new Metric(name, measurement);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Metric)) {
                return false;
            }
            Metric metric = (Metric) other;
            return this.name == metric.name && this.measurement == metric.measurement;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + Long.hashCode(this.measurement);
        }

        public String toString() {
            return "Metric(name=" + this.name + ", measurement=" + this.measurement + ')';
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
        /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
        /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric$Name;", "", "(Ljava/lang/String;I)V", "NUM_CONNECT_ATTEMPTS", "NUM_REQUEST_RETRIES", "REQUEST_BYTES", "RESPONSE_BYTES", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Name {
            private static final /* synthetic */ EnumEntries $ENTRIES;
            private static final /* synthetic */ Name[] $VALUES;
            public static final Name NUM_CONNECT_ATTEMPTS = new Name("NUM_CONNECT_ATTEMPTS", 0);
            public static final Name NUM_REQUEST_RETRIES = new Name("NUM_REQUEST_RETRIES", 1);
            public static final Name REQUEST_BYTES = new Name("REQUEST_BYTES", 2);
            public static final Name RESPONSE_BYTES = new Name("RESPONSE_BYTES", 3);

            private static final /* synthetic */ Name[] $values() {
                return new Name[]{NUM_CONNECT_ATTEMPTS, NUM_REQUEST_RETRIES, REQUEST_BYTES, RESPONSE_BYTES};
            }

            public static EnumEntries<Name> getEntries() {
                return $ENTRIES;
            }

            public static Name valueOf(String str) {
                return (Name) Enum.valueOf(Name.class, str);
            }

            public static Name[] values() {
                return (Name[]) $VALUES.clone();
            }

            private Name(String str, int i) {
            }

            static {
                Name[] nameArr$values = $values();
                $VALUES = nameArr$values;
                $ENTRIES = EnumEntriesKt.enumEntries(nameArr$values);
            }
        }

        public Metric(Name name, long j) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            this.measurement = j;
        }

        public final long getMeasurement() {
            return this.measurement;
        }

        public final Name getName() {
            return this.name;
        }
    }

    /* JADX INFO: compiled from: HttpTimingLoggerEventListener.kt */
    @Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005¢\u0006\u0002\u0010\u000bJ\t\u0010\u0012\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u000f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\b0\u0005HÆ\u0003J\u000f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\n0\u0005HÆ\u0003JC\u0010\u0016\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u000e\b\u0002\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u00052\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005HÆ\u0001J\u0013\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0017\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\rR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\r¨\u0006\u001e"}, d2 = {"Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$RequestMetrics;", "", "request", "Lokhttp3/Request;", "timings", "", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Timing;", "metrics", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Metric;", "tags", "Lcom/stripe/jvmcore/httptiming/HttpTimingLoggerEventListener$Tag;", "(Lokhttp3/Request;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V", "getMetrics", "()Ljava/util/List;", "getRequest", "()Lokhttp3/Request;", "getTags", "getTimings", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "", "toString", "", "httptiming"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final /* data */ class RequestMetrics {
        private final List<Metric> metrics;
        private final Request request;
        private final List<Tag> tags;
        private final List<Timing> timings;

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ RequestMetrics copy$default(RequestMetrics requestMetrics, Request request, List list, List list2, List list3, int i, Object obj) {
            if ((i & 1) != 0) {
                request = requestMetrics.request;
            }
            if ((i & 2) != 0) {
                list = requestMetrics.timings;
            }
            if ((i & 4) != 0) {
                list2 = requestMetrics.metrics;
            }
            if ((i & 8) != 0) {
                list3 = requestMetrics.tags;
            }
            return requestMetrics.copy(request, list, list2, list3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Request getRequest() {
            return this.request;
        }

        public final List<Timing> component2() {
            return this.timings;
        }

        public final List<Metric> component3() {
            return this.metrics;
        }

        public final List<Tag> component4() {
            return this.tags;
        }

        public final RequestMetrics copy(Request request, List<Timing> timings, List<Metric> metrics, List<Tag> tags) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(timings, "timings");
            Intrinsics.checkNotNullParameter(metrics, "metrics");
            Intrinsics.checkNotNullParameter(tags, "tags");
            return new RequestMetrics(request, timings, metrics, tags);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof RequestMetrics)) {
                return false;
            }
            RequestMetrics requestMetrics = (RequestMetrics) other;
            return Intrinsics.areEqual(this.request, requestMetrics.request) && Intrinsics.areEqual(this.timings, requestMetrics.timings) && Intrinsics.areEqual(this.metrics, requestMetrics.metrics) && Intrinsics.areEqual(this.tags, requestMetrics.tags);
        }

        public int hashCode() {
            return (((((this.request.hashCode() * 31) + this.timings.hashCode()) * 31) + this.metrics.hashCode()) * 31) + this.tags.hashCode();
        }

        public String toString() {
            return "RequestMetrics(request=" + this.request + ", timings=" + this.timings + ", metrics=" + this.metrics + ", tags=" + this.tags + ')';
        }

        public RequestMetrics(Request request, List<Timing> timings, List<Metric> metrics, List<Tag> tags) {
            Intrinsics.checkNotNullParameter(request, "request");
            Intrinsics.checkNotNullParameter(timings, "timings");
            Intrinsics.checkNotNullParameter(metrics, "metrics");
            Intrinsics.checkNotNullParameter(tags, "tags");
            this.request = request;
            this.timings = timings;
            this.metrics = metrics;
            this.tags = tags;
        }

        public final Request getRequest() {
            return this.request;
        }

        public final List<Timing> getTimings() {
            return this.timings;
        }

        public final List<Metric> getMetrics() {
            return this.metrics;
        }

        public final List<Tag> getTags() {
            return this.tags;
        }
    }

    private final Timing createTiming(Timing.Name name, Instant timeStart, Instant timeEnd) {
        Instant instant = timeStart;
        Duration durationAbs = Duration.between(this.callStartTime, instant).abs();
        Intrinsics.checkNotNullExpressionValue(durationAbs, "abs(...)");
        Duration durationAbs2 = Duration.between(instant, timeEnd).abs();
        Intrinsics.checkNotNullExpressionValue(durationAbs2, "abs(...)");
        return new Timing(name, durationAbs, durationAbs2);
    }

    private final synchronized void logTiming(Event.Name eventName, Event.ActionType actionType) {
        Instant instantOfEpochMilli = Instant.ofEpochMilli(this.clock.currentTimeMillis());
        Event.Key key = new Event.Key(eventName, actionType);
        List<Event> list = this.events;
        Intrinsics.checkNotNull(instantOfEpochMilli);
        list.add(new Event(eventName, actionType, instantOfEpochMilli));
        Map<Event.Key, Integer> map = this.eventCounts;
        final AnonymousClass1 anonymousClass1 = new Function2<Event.Key, Integer, Integer>() { // from class: com.stripe.jvmcore.httptiming.HttpTimingLoggerEventListener.logTiming.1
            @Override // kotlin.jvm.functions.Function2
            public final Integer invoke(Event.Key key2, Integer num) {
                Intrinsics.checkNotNullParameter(key2, "<anonymous parameter 0>");
                if (num == null) {
                    num = 0;
                }
                return Integer.valueOf(num.intValue() + 1);
            }
        };
        map.compute(key, new BiFunction() { // from class: com.stripe.jvmcore.httptiming.HttpTimingLoggerEventListener$$ExternalSyntheticLambda0
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return HttpTimingLoggerEventListener.logTiming$lambda$0(anonymousClass1, obj, obj2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer logTiming$lambda$0(Function2 tmp0, Object obj, Object obj2) {
        Intrinsics.checkNotNullParameter(tmp0, "$tmp0");
        return (Integer) tmp0.invoke(obj, obj2);
    }

    private final synchronized List<Timing> calculateTimings() {
        ArrayList arrayList;
        arrayList = new ArrayList();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Event event : this.events) {
            List<Pair<Timing.Name, Set<Event.Key>>> listEmptyList = this.namedTimingInterval.get(event.getKey());
            if (listEmptyList == null) {
                listEmptyList = CollectionsKt.emptyList();
            }
            Iterator<T> it = listEmptyList.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                Timing.Name name = (Timing.Name) pair.getFirst();
                Set set = (Set) pair.getSecond();
                ArrayList arrayList2 = new ArrayList();
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    Event event2 = (Event) linkedHashMap.get((Event.Key) it2.next());
                    if (event2 != null) {
                        arrayList2.add(event2);
                    }
                }
                List listSorted = CollectionsKt.sorted(arrayList2);
                if (listSorted.isEmpty()) {
                    listSorted = null;
                }
                if (listSorted != null) {
                    arrayList.add(createTiming(name, ((Event) CollectionsKt.last(listSorted)).getCallTime(), event.getCallTime()));
                }
            }
            linkedHashMap.put(event.getKey(), event);
        }
        return CollectionsKt.sorted(arrayList);
    }

    private final List<Metric> calculateMetrics() {
        Metric[] metricArr = new Metric[2];
        metricArr[0] = new Metric(Metric.Name.NUM_CONNECT_ATTEMPTS, this.eventCounts.get(new Event.Key(Event.Name.CONNECT, Event.ActionType.START)) != null ? r3.intValue() : 0L);
        metricArr[1] = new Metric(Metric.Name.NUM_REQUEST_RETRIES, (this.eventCounts.get(new Event.Key(Event.Name.REQUEST_HEADERS, Event.ActionType.START)) != null ? r3.intValue() : 1L) - 1);
        List listMutableListOf = CollectionsKt.mutableListOf(metricArr);
        if (this.requestBytes >= 0) {
            listMutableListOf.add(new Metric(Metric.Name.REQUEST_BYTES, this.requestBytes));
        }
        if (this.responseBytes >= 0) {
            listMutableListOf.add(new Metric(Metric.Name.RESPONSE_BYTES, this.responseBytes));
        }
        return CollectionsKt.toList(listMutableListOf);
    }

    private final List<Tag> calculateTags() {
        return CollectionsKt.listOf(new Tag(Tag.Name.CONNECTION_REUSED, String.valueOf(!this.eventCounts.containsKey(new Event.Key(Event.Name.CONNECT, Event.ActionType.START)))));
    }

    private final void emitMetrics() {
        if (this.isDone.getAndSet(true)) {
            return;
        }
        RequestMetrics requestMetrics = new RequestMetrics(this.call.request(), calculateTimings(), calculateMetrics(), calculateTags());
        Iterator<T> it = this.timingCollectors.iterator();
        while (it.hasNext()) {
            ((HttpTimingCollector) it.next()).collect(requestMetrics);
        }
    }

    @Override // okhttp3.EventListener
    public void callStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        logTiming(Event.Name.CALL, Event.ActionType.START);
    }

    @Override // okhttp3.EventListener
    public void callEnd(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        logTiming(Event.Name.CALL, Event.ActionType.END);
        emitMetrics();
    }

    @Override // okhttp3.EventListener
    public void dnsStart(Call call, String domainName) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
        logTiming(Event.Name.DNS, Event.ActionType.START);
    }

    @Override // okhttp3.EventListener
    public void dnsEnd(Call call, String domainName, List<? extends InetAddress> inetAddressList) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(domainName, "domainName");
        Intrinsics.checkNotNullParameter(inetAddressList, "inetAddressList");
        logTiming(Event.Name.DNS, Event.ActionType.END);
    }

    @Override // okhttp3.EventListener
    public void connectStart(Call call, InetSocketAddress inetSocketAddress, Proxy proxy) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        logTiming(Event.Name.CONNECT, Event.ActionType.START);
    }

    @Override // okhttp3.EventListener
    public void secureConnectStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        logTiming(Event.Name.SECURE_CONNECT, Event.ActionType.START);
    }

    @Override // okhttp3.EventListener
    public void secureConnectEnd(Call call, Handshake handshake) {
        Intrinsics.checkNotNullParameter(call, "call");
        logTiming(Event.Name.SECURE_CONNECT, Event.ActionType.END);
    }

    @Override // okhttp3.EventListener
    public void connectFailed(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        logTiming(Event.Name.CONNECT_FAILED, Event.ActionType.EVENT);
    }

    @Override // okhttp3.EventListener
    public void connectEnd(Call call, InetSocketAddress inetSocketAddress, Proxy proxy, Protocol protocol) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(inetSocketAddress, "inetSocketAddress");
        Intrinsics.checkNotNullParameter(proxy, "proxy");
        logTiming(Event.Name.CONNECT, Event.ActionType.END);
    }

    @Override // okhttp3.EventListener
    public void connectionAcquired(Call call, Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
        logTiming(Event.Name.CONNECTION_ACQUIRED, Event.ActionType.EVENT);
    }

    @Override // okhttp3.EventListener
    public void requestHeadersStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        logTiming(Event.Name.REQUEST_HEADERS, Event.ActionType.START);
    }

    @Override // okhttp3.EventListener
    public void requestHeadersEnd(Call call, Request request) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(request, "request");
        logTiming(Event.Name.REQUEST_HEADERS, Event.ActionType.END);
    }

    @Override // okhttp3.EventListener
    public void requestBodyStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        logTiming(Event.Name.REQUEST_BODY, Event.ActionType.START);
    }

    @Override // okhttp3.EventListener
    public void requestBodyEnd(Call call, long byteCount) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.requestBytes = byteCount;
        logTiming(Event.Name.REQUEST_BODY, Event.ActionType.END);
    }

    @Override // okhttp3.EventListener
    public void requestFailed(Call call, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        logTiming(Event.Name.REQUEST_FAILED, Event.ActionType.EVENT);
    }

    @Override // okhttp3.EventListener
    public void responseHeadersStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        logTiming(Event.Name.RESPONSE_HEADERS, Event.ActionType.START);
    }

    @Override // okhttp3.EventListener
    public void responseHeadersEnd(Call call, Response response) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(response, "response");
        logTiming(Event.Name.RESPONSE_HEADERS, Event.ActionType.END);
    }

    @Override // okhttp3.EventListener
    public void responseBodyStart(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        logTiming(Event.Name.RESPONSE_BODY, Event.ActionType.START);
    }

    @Override // okhttp3.EventListener
    public void responseBodyEnd(Call call, long byteCount) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.responseBytes = byteCount;
        logTiming(Event.Name.RESPONSE_BODY, Event.ActionType.END);
    }

    @Override // okhttp3.EventListener
    public void responseFailed(Call call, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        logTiming(Event.Name.RESPONSE_FAILED, Event.ActionType.EVENT);
    }

    @Override // okhttp3.EventListener
    public void callFailed(Call call, IOException ioe) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(ioe, "ioe");
        logTiming(Event.Name.CALL_FAILED, Event.ActionType.EVENT);
        emitMetrics();
    }

    @Override // okhttp3.EventListener
    public void canceled(Call call) {
        Intrinsics.checkNotNullParameter(call, "call");
        this.isCancelled.set(true);
        logTiming(Event.Name.CANCELED, Event.ActionType.EVENT);
    }

    @Override // okhttp3.EventListener
    public void connectionReleased(Call call, Connection connection) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(connection, "connection");
        logTiming(Event.Name.CONNECTION_RELEASED, Event.ActionType.EVENT);
    }
}
