package com.stripe.core.stripeterminal.storage;

import androidx.core.app.NotificationCompat;
import com.stripe.jvmcore.logging.terminal.log.Event;
import kotlin.Metadata;

/* JADX INFO: compiled from: EventConverters.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0007J\u0014\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\b\u001a\u0004\u0018\u00010\u0004H\u0007¨\u0006\t"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/EventConverters;", "", "()V", "eventToEntity", "Lcom/stripe/core/stripeterminal/storage/EventEntity;", NotificationCompat.CATEGORY_EVENT, "Lcom/stripe/jvmcore/logging/terminal/log/Event;", "fromEntity", "eventEntity", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EventConverters {
    public final Event fromEntity(EventEntity eventEntity) {
        if (eventEntity != null) {
            return Event.Companion.create$default(Event.INSTANCE, eventEntity.getEvent(), eventEntity.getScope(), eventEntity.getDomain(), eventEntity.getStartTimeMs(), null, 16, null);
        }
        return null;
    }

    public final EventEntity eventToEntity(Event event) {
        if (event != null) {
            return EventEntity.INSTANCE.fromModel(event);
        }
        return null;
    }
}
