package com.stripe.core.readerupdate.healthreporter;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;

/* JADX INFO: compiled from: InstallHealthReporter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0004\bæ\u0080\u0001\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J\u0015\u0010\u0003\u001a\u00028\u00002\u0006\u0010\u0004\u001a\u00028\u0000H&¢\u0006\u0002\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, d2 = {"Lcom/stripe/core/readerupdate/healthreporter/InstallHealthReporter;", "T", "", "reportInstallProgress", NotificationCompat.CATEGORY_STATUS, "(Ljava/lang/Object;)Ljava/lang/Object;", "readerupdate_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface InstallHealthReporter<T> {
    T reportInstallProgress(T status);
}
