package com.stripe.stripeterminal.internal.common.terminalsession;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.callable.InternetReaderListener;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.internal.common.remotereadercontrollers.ReaderActivator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: DefaultIpReaderActivator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0096@¢\u0006\u0002\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/terminalsession/DefaultIpReaderActivator;", "Lcom/stripe/stripeterminal/internal/common/remotereadercontrollers/ReaderActivator;", "backgroundReaderActivator", "Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;", "(Lcom/stripe/stripeterminal/internal/common/terminalsession/BackgroundReaderActivator;)V", "activateReader", "", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "(Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "terminalsession_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultIpReaderActivator implements ReaderActivator {
    private final BackgroundReaderActivator backgroundReaderActivator;

    public DefaultIpReaderActivator(BackgroundReaderActivator backgroundReaderActivator) {
        Intrinsics.checkNotNullParameter(backgroundReaderActivator, "backgroundReaderActivator");
        this.backgroundReaderActivator = backgroundReaderActivator;
    }

    @Override // com.stripe.stripeterminal.internal.common.remotereadercontrollers.ReaderActivator
    public Object activateReader(Reader reader, Continuation<? super Unit> continuation) {
        this.backgroundReaderActivator.activateInBackground(reader, new ConnectionConfiguration.InternetConnectionConfiguration(true, new InternetReaderListener() { // from class: com.stripe.stripeterminal.internal.common.terminalsession.DefaultIpReaderActivator.activateReader.2
        }));
        return Unit.INSTANCE;
    }
}
