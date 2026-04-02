package com.stripe.loggingmodels;

import androidx.core.app.NotificationCompat;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.proto.terminal.clientlogger.pub.SearchIndices;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.EventData;
import com.stripe.proto.terminal.clientlogger.pub.message.observability_schema.Metadata;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: StructuredEventLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J8\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\u0014\b\u0002\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\f0\u000bH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/stripe/loggingmodels/StructuredEventLogger;", "", "log", "", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/EventData;", "loggerName", "", FirebaseAnalytics.Param.LEVEL, "Lcom/stripe/proto/terminal/clientlogger/pub/message/observability_schema/Metadata$Level;", "searchIndicesReducer", "Lkotlin/Function1;", "Lcom/stripe/proto/terminal/clientlogger/pub/SearchIndices;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface StructuredEventLogger {
    void log(EventData event, String loggerName, Metadata.Level level, Function1<? super SearchIndices, SearchIndices> searchIndicesReducer);

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void log$default(StructuredEventLogger structuredEventLogger, EventData eventData, String str, Metadata.Level level, Function1 function1, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: log");
        }
        if ((i & 4) != 0) {
            level = Metadata.Level.INFO;
        }
        if ((i & 8) != 0) {
            function1 = new Function1<SearchIndices, SearchIndices>() { // from class: com.stripe.loggingmodels.StructuredEventLogger.log.1
                @Override // kotlin.jvm.functions.Function1
                public final SearchIndices invoke(SearchIndices it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it;
                }
            };
        }
        structuredEventLogger.log(eventData, str, level, function1);
    }
}
