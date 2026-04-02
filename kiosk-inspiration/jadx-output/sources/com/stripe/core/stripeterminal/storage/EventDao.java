package com.stripe.core.stripeterminal.storage;

import androidx.core.app.NotificationCompat;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: compiled from: EventDao.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H'J\u000e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H'J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0006H'J\u0016\u0010\t\u001a\u00020\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H'ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\nÀ\u0006\u0001"}, d2 = {"Lcom/stripe/core/stripeterminal/storage/EventDao;", "", "deleteAll", "", "getAll", "", "Lcom/stripe/core/stripeterminal/storage/EventEntity;", "insert", NotificationCompat.CATEGORY_EVENT, "insertAll", "stripeterminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface EventDao {
    void deleteAll();

    List<EventEntity> getAll();

    void insert(EventEntity event);

    void insertAll(List<EventEntity> event);
}
