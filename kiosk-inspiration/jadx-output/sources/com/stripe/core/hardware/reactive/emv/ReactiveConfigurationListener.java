package com.stripe.core.hardware.reactive.emv;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.hardware.emv.ConfigurationListener;
import com.stripe.hardware.emv.ReaderSettings;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReactiveConfigurationListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0016J\u001c\u0010\u001d\u001a\u00020\u001b2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005H\u0016J\u0010\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u0011H\u0016J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0016J\u0010\u0010\"\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\rH\u0016R#\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR \u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00050\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\f\u001a\b\u0012\u0004\u0012\u00020\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\tR\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\tR\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00110\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\tR\u0014\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\r0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\tR\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\r0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;", "Lcom/stripe/hardware/emv/ConfigurationListener;", "()V", "readerAidObservable", "Lio/reactivex/rxjava3/core/Observable;", "", "", "", "getReaderAidObservable", "()Lio/reactivex/rxjava3/core/Observable;", "readerAidPublishable", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "readerDisplayObservable", "", "getReaderDisplayObservable", "readerDisplayPublishable", "readerSettingsObservable", "Lcom/stripe/hardware/emv/ReaderSettings;", "getReaderSettingsObservable", "readerSettingsPublishable", "readerUpdateAidObservable", "getReaderUpdateAidObservable", "readerUpdateAidPublishable", "readerUpdateSettingsObservable", "getReaderUpdateSettingsObservable", "readerUpdateSettingsPublishable", "handleDisplaySettings", "", FirebaseAnalytics.Param.SUCCESS, "handleReaderAid", "aidData", "handleReaderSettings", "readerSettings", "handleUpdateReaderAidData", "handleUpdateReaderSettings", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReactiveConfigurationListener implements ConfigurationListener {
    private final Observable<Map<String, Object>> readerAidObservable;
    private final PublishSubject<Map<String, Object>> readerAidPublishable;
    private final Observable<Boolean> readerDisplayObservable;
    private final PublishSubject<Boolean> readerDisplayPublishable;
    private final Observable<ReaderSettings> readerSettingsObservable;
    private final PublishSubject<ReaderSettings> readerSettingsPublishable;
    private final Observable<Boolean> readerUpdateAidObservable;
    private final PublishSubject<Boolean> readerUpdateAidPublishable;
    private final Observable<Boolean> readerUpdateSettingsObservable;
    private final PublishSubject<Boolean> readerUpdateSettingsPublishable;

    @Inject
    public ReactiveConfigurationListener() {
        PublishSubject<Map<String, Object>> publishSubjectCreate = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate, "create(...)");
        this.readerAidPublishable = publishSubjectCreate;
        PublishSubject<Boolean> publishSubjectCreate2 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate2, "create(...)");
        this.readerDisplayPublishable = publishSubjectCreate2;
        PublishSubject<ReaderSettings> publishSubjectCreate3 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate3, "create(...)");
        this.readerSettingsPublishable = publishSubjectCreate3;
        PublishSubject<Boolean> publishSubjectCreate4 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate4, "create(...)");
        this.readerUpdateAidPublishable = publishSubjectCreate4;
        PublishSubject<Boolean> publishSubjectCreate5 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate5, "create(...)");
        this.readerUpdateSettingsPublishable = publishSubjectCreate5;
        this.readerAidObservable = publishSubjectCreate;
        this.readerDisplayObservable = publishSubjectCreate2;
        this.readerSettingsObservable = publishSubjectCreate3;
        this.readerUpdateAidObservable = publishSubjectCreate4;
        this.readerUpdateSettingsObservable = publishSubjectCreate5;
    }

    public final Observable<Map<String, Object>> getReaderAidObservable() {
        return this.readerAidObservable;
    }

    public final Observable<Boolean> getReaderDisplayObservable() {
        return this.readerDisplayObservable;
    }

    public final Observable<ReaderSettings> getReaderSettingsObservable() {
        return this.readerSettingsObservable;
    }

    public final Observable<Boolean> getReaderUpdateAidObservable() {
        return this.readerUpdateAidObservable;
    }

    public final Observable<Boolean> getReaderUpdateSettingsObservable() {
        return this.readerUpdateSettingsObservable;
    }

    @Override // com.stripe.hardware.emv.ConfigurationListener
    public void handleDisplaySettings(boolean success) {
        this.readerDisplayPublishable.onNext(Boolean.valueOf(success));
    }

    @Override // com.stripe.hardware.emv.ConfigurationListener
    public void handleReaderAid(Map<String, ? extends Object> aidData) {
        Intrinsics.checkNotNullParameter(aidData, "aidData");
        this.readerAidPublishable.onNext(aidData);
    }

    @Override // com.stripe.hardware.emv.ConfigurationListener
    public void handleReaderSettings(ReaderSettings readerSettings) {
        Intrinsics.checkNotNullParameter(readerSettings, "readerSettings");
        this.readerSettingsPublishable.onNext(readerSettings);
    }

    @Override // com.stripe.hardware.emv.ConfigurationListener
    public void handleUpdateReaderAidData(boolean success) {
        this.readerUpdateAidPublishable.onNext(Boolean.valueOf(success));
    }

    @Override // com.stripe.hardware.emv.ConfigurationListener
    public void handleUpdateReaderSettings(boolean success) {
        this.readerUpdateSettingsPublishable.onNext(Boolean.valueOf(success));
    }
}
