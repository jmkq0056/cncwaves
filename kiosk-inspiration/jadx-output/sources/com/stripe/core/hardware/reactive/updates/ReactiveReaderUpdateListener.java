package com.stripe.core.hardware.reactive.updates;

import com.stripe.core.hardware.Optional;
import com.stripe.core.hardware.updates.ReaderUpdateException;
import com.stripe.core.hardware.updates.ReaderUpdateListener;
import com.stripe.core.hardware.updates.ReaderVersion;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.subjects.PublishSubject;
import javax.inject.Inject;
import javax.inject.Singleton;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReactiveReaderUpdateListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Singleton
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\f\b\u0007\u0018\u00002\u00020\u0001B\u0007\b\u0007¢\u0006\u0002\u0010\u0002J\b\u0010\u001d\u001a\u00020\u0005H\u0016J\b\u0010\u001e\u001a\u00020\u0005H\u0016J\b\u0010\u001f\u001a\u00020\u0005H\u0016J\u0010\u0010 \u001a\u00020\u00052\u0006\u0010!\u001a\u00020\u0016H\u0016J\u0012\u0010\"\u001a\u00020\u00052\b\u0010#\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010$\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u001aH\u0016R\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\u0007R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u0007R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00050\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00110\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0007R\u001a\u0010\u0014\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120\u00110\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0007R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00160\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u0007R\u0014\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001a0\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006&"}, d2 = {"Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;", "Lcom/stripe/core/hardware/updates/ReaderUpdateListener;", "()V", "readerConfigUpdateObservable", "Lio/reactivex/rxjava3/core/Observable;", "", "getReaderConfigUpdateObservable", "()Lio/reactivex/rxjava3/core/Observable;", "readerConfigUpdatePublishable", "Lio/reactivex/rxjava3/subjects/PublishSubject;", "readerFirmwareUpdateObservable", "getReaderFirmwareUpdateObservable", "readerFirmwareUpdatePublishable", "readerKeyUpdateObservable", "getReaderKeyUpdateObservable", "readerKeyUpdatePublishable", "readerTargetVersionObservable", "Lcom/stripe/core/hardware/Optional;", "Lcom/stripe/core/hardware/updates/ReaderVersion;", "getReaderTargetVersionObservable", "readerTargetVersionPublishable", "readerUpdateExceptionObservable", "Lcom/stripe/core/hardware/updates/ReaderUpdateException;", "getReaderUpdateExceptionObservable", "readerUpdateExceptionPublishable", "readerUpdateProgressObservable", "", "getReaderUpdateProgressObservable", "readerUpdateProgressPublishable", "handleConfigUpdateComplete", "handleFirmwareUpdateComplete", "handleKeyUpdateComplete", "handleReaderUpdateException", "e", "handleTargetReaderVersion", "version", "handleUpdateProgress", "progress", "hardware-reactive_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ReactiveReaderUpdateListener implements ReaderUpdateListener {
    private final Observable<Unit> readerConfigUpdateObservable;
    private final PublishSubject<Unit> readerConfigUpdatePublishable;
    private final Observable<Unit> readerFirmwareUpdateObservable;
    private final PublishSubject<Unit> readerFirmwareUpdatePublishable;
    private final Observable<Unit> readerKeyUpdateObservable;
    private final PublishSubject<Unit> readerKeyUpdatePublishable;
    private final Observable<Optional<ReaderVersion>> readerTargetVersionObservable;
    private final PublishSubject<Optional<ReaderVersion>> readerTargetVersionPublishable;
    private final Observable<ReaderUpdateException> readerUpdateExceptionObservable;
    private final PublishSubject<ReaderUpdateException> readerUpdateExceptionPublishable;
    private final Observable<Float> readerUpdateProgressObservable;
    private final PublishSubject<Float> readerUpdateProgressPublishable;

    @Inject
    public ReactiveReaderUpdateListener() {
        PublishSubject<Unit> publishSubjectCreate = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate, "create(...)");
        this.readerConfigUpdatePublishable = publishSubjectCreate;
        PublishSubject<Unit> publishSubjectCreate2 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate2, "create(...)");
        this.readerFirmwareUpdatePublishable = publishSubjectCreate2;
        PublishSubject<Unit> publishSubjectCreate3 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate3, "create(...)");
        this.readerKeyUpdatePublishable = publishSubjectCreate3;
        PublishSubject<Optional<ReaderVersion>> publishSubjectCreate4 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate4, "create(...)");
        this.readerTargetVersionPublishable = publishSubjectCreate4;
        PublishSubject<ReaderUpdateException> publishSubjectCreate5 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate5, "create(...)");
        this.readerUpdateExceptionPublishable = publishSubjectCreate5;
        PublishSubject<Float> publishSubjectCreate6 = PublishSubject.create();
        Intrinsics.checkNotNullExpressionValue(publishSubjectCreate6, "create(...)");
        this.readerUpdateProgressPublishable = publishSubjectCreate6;
        this.readerTargetVersionObservable = publishSubjectCreate4;
        this.readerUpdateExceptionObservable = publishSubjectCreate5;
        this.readerConfigUpdateObservable = publishSubjectCreate;
        this.readerFirmwareUpdateObservable = publishSubjectCreate2;
        this.readerKeyUpdateObservable = publishSubjectCreate3;
        this.readerUpdateProgressObservable = publishSubjectCreate6;
    }

    public final Observable<Optional<ReaderVersion>> getReaderTargetVersionObservable() {
        return this.readerTargetVersionObservable;
    }

    public final Observable<ReaderUpdateException> getReaderUpdateExceptionObservable() {
        return this.readerUpdateExceptionObservable;
    }

    public final Observable<Unit> getReaderConfigUpdateObservable() {
        return this.readerConfigUpdateObservable;
    }

    public final Observable<Unit> getReaderFirmwareUpdateObservable() {
        return this.readerFirmwareUpdateObservable;
    }

    public final Observable<Unit> getReaderKeyUpdateObservable() {
        return this.readerKeyUpdateObservable;
    }

    public final Observable<Float> getReaderUpdateProgressObservable() {
        return this.readerUpdateProgressObservable;
    }

    @Override // com.stripe.core.hardware.updates.ReaderUpdateListener
    public void handleConfigUpdateComplete() {
        this.readerConfigUpdatePublishable.onNext(Unit.INSTANCE);
    }

    @Override // com.stripe.core.hardware.updates.ReaderUpdateListener
    public void handleFirmwareUpdateComplete() {
        this.readerFirmwareUpdatePublishable.onNext(Unit.INSTANCE);
    }

    @Override // com.stripe.core.hardware.updates.ReaderUpdateListener
    public void handleKeyUpdateComplete() {
        this.readerKeyUpdatePublishable.onNext(Unit.INSTANCE);
    }

    @Override // com.stripe.core.hardware.updates.ReaderUpdateListener
    public void handleReaderUpdateException(ReaderUpdateException e) {
        Intrinsics.checkNotNullParameter(e, "e");
        this.readerUpdateExceptionPublishable.onNext(e);
    }

    @Override // com.stripe.core.hardware.updates.ReaderUpdateListener
    public void handleTargetReaderVersion(ReaderVersion version) {
        this.readerTargetVersionPublishable.onNext(Optional.INSTANCE.fromNullable(version));
    }

    @Override // com.stripe.core.hardware.updates.ReaderUpdateListener
    public void handleUpdateProgress(float progress) {
        this.readerUpdateProgressPublishable.onNext(Float.valueOf(progress));
    }
}
