package com.stripe.jvmcore.logging.dagger;

import com.stripe.jvmcore.batchdispatcher.Collector;
import com.stripe.jvmcore.batchdispatcher.collectors.QueueFileCollector;
import com.stripe.jvmcore.batchdispatcher.collectors.QueueFileProtoSerializer;
import com.stripe.jvmcore.dagger.ForApplication;
import com.stripe.jvmcore.dagger.LazyExtKt;
import com.stripe.loggingmodels.LoggerExceptionListener;
import com.stripe.logwriter.LogWriter;
import com.stripe.proto.api.gator.ProxySpanPb;
import dagger.Lazy;
import dagger.Module;
import dagger.Provides;
import java.io.File;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TraceLoggerModule.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B?\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\tJ.\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u000e\b\u0001\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00120\u00112\u0006\u0010\u0013\u001a\u00020\u0014H\u0007R\u0012\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u0012\u0010\b\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/jvmcore/logging/dagger/TraceLoggerCollectorModule;", "", "tracesFile", "", "overrideMaxBatchBytes", "", "overrideMaxEntryBytes", "overrideMaxFileBytes", "overridePruneFileBytes", "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V", "Ljava/lang/Long;", "provideCollector", "Lcom/stripe/jvmcore/batchdispatcher/Collector;", "Lcom/stripe/proto/api/gator/ProxySpanPb;", "logWriter", "Lcom/stripe/logwriter/LogWriter;", "filesDir", "Ldagger/Lazy;", "Ljava/io/File;", "loggerExceptionListener", "Lcom/stripe/loggingmodels/LoggerExceptionListener;", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Module
public final class TraceLoggerCollectorModule {
    private final Long overrideMaxBatchBytes;
    private final Long overrideMaxEntryBytes;
    private final Long overrideMaxFileBytes;
    private final Long overridePruneFileBytes;
    private final String tracesFile;

    public TraceLoggerCollectorModule() {
        this(null, null, null, null, null, 31, null);
    }

    public TraceLoggerCollectorModule(String tracesFile, Long l, Long l2, Long l3, Long l4) {
        Intrinsics.checkNotNullParameter(tracesFile, "tracesFile");
        this.tracesFile = tracesFile;
        this.overrideMaxBatchBytes = l;
        this.overrideMaxEntryBytes = l2;
        this.overrideMaxFileBytes = l3;
        this.overridePruneFileBytes = l4;
    }

    /*  JADX ERROR: NullPointerException in pass: InitCodeVariables
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.getPhiList()" because "resultVar" is null
        	at jadx.core.dex.visitors.InitCodeVariables.collectConnectedVars(InitCodeVariables.java:119)
        	at jadx.core.dex.visitors.InitCodeVariables.setCodeVar(InitCodeVariables.java:82)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVar(InitCodeVariables.java:74)
        	at jadx.core.dex.visitors.InitCodeVariables.initCodeVars(InitCodeVariables.java:48)
        	at jadx.core.dex.visitors.InitCodeVariables.visit(InitCodeVariables.java:29)
        */
    public /* synthetic */ TraceLoggerCollectorModule(java.lang.String r2, java.lang.Long r3, java.lang.Long r4, java.lang.Long r5, java.lang.Long r6, int r7, kotlin.jvm.internal.DefaultConstructorMarker r8) {
        /*
            r1 = this;
            r8 = r7 & 1
            if (r8 == 0) goto L6
            java.lang.String r2 = "traces_wire"
        L6:
            r8 = r7 & 2
            r0 = 0
            if (r8 == 0) goto Lc
            r3 = r0
        Lc:
            r8 = r7 & 4
            if (r8 == 0) goto L11
            r4 = r0
        L11:
            r8 = r7 & 8
            if (r8 == 0) goto L16
            r5 = r0
        L16:
            r7 = r7 & 16
            if (r7 == 0) goto L21
            r8 = r0
            r6 = r4
            r7 = r5
            r4 = r2
            r5 = r3
            r3 = r1
            goto L27
        L21:
            r8 = r6
            r7 = r5
            r5 = r3
            r6 = r4
            r3 = r1
            r4 = r2
        L27:
            r3.<init>(r4, r5, r6, r7, r8)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.jvmcore.logging.dagger.TraceLoggerCollectorModule.<init>(java.lang.String, java.lang.Long, java.lang.Long, java.lang.Long, java.lang.Long, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
    }

    @Provides
    @Singleton
    public final Collector<ProxySpanPb> provideCollector(LogWriter logWriter, @ForApplication Lazy<File> filesDir, LoggerExceptionListener loggerExceptionListener) {
        Intrinsics.checkNotNullParameter(logWriter, "logWriter");
        Intrinsics.checkNotNullParameter(filesDir, "filesDir");
        Intrinsics.checkNotNullParameter(loggerExceptionListener, "loggerExceptionListener");
        return new QueueFileCollector(new QueueFileProtoSerializer(ProxySpanPb.ADAPTER, new ProxySpanPb(null, null, null, null, null, null, 63, null), new WireLogger(logWriter, this.tracesFile)), new QueueFileCollector.Configuration(this.overrideMaxBatchBytes, this.overrideMaxEntryBytes, this.overrideMaxFileBytes, this.overridePruneFileBytes), LazyExtKt.lazilyMap(filesDir, new Function1<File, File>() { // from class: com.stripe.jvmcore.logging.dagger.TraceLoggerCollectorModule.provideCollector.1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final File invoke(File it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return new File(it, TraceLoggerCollectorModule.this.tracesFile);
            }
        }), loggerExceptionListener, logWriter);
    }
}
