package com.stripe.jvmcore.restclient;

import com.stripe.device.DeviceInfoRepository;
import com.stripe.time.Clock;
import io.ktor.util.date.GMTDateParser;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.CharRange;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: MainlandIdempotencyGenerator.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u001f\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/jvmcore/restclient/MainlandIdempotencyGenerator;", "Lcom/stripe/jvmcore/restclient/IdempotencyGenerator;", "clock", "Lcom/stripe/time/Clock;", "deviceInfoRepository", "Lcom/stripe/device/DeviceInfoRepository;", "random", "Lkotlin/random/Random;", "(Lcom/stripe/time/Clock;Lcom/stripe/device/DeviceInfoRepository;Lkotlin/random/Random;)V", "generateKey", "", "Companion", "base"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MainlandIdempotencyGenerator implements IdempotencyGenerator {
    private static final int LENGTH = 8;
    private final Clock clock;
    private final DeviceInfoRepository deviceInfoRepository;
    private final Random random;
    private static final List<Character> VALID_CHARS = CollectionsKt.plus((Collection) CollectionsKt.plus((Iterable) new CharRange('0', '9'), (Iterable) new CharRange('A', 'Z')), (Iterable) new CharRange('a', GMTDateParser.ZONE));

    @Inject
    public MainlandIdempotencyGenerator(Clock clock, DeviceInfoRepository deviceInfoRepository, Random random) {
        Intrinsics.checkNotNullParameter(clock, "clock");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(random, "random");
        this.clock = clock;
        this.deviceInfoRepository = deviceInfoRepository;
        this.random = random;
    }

    @Override // com.stripe.jvmcore.restclient.IdempotencyGenerator
    public String generateKey() {
        IntRange intRangeUntil = RangesKt.until(0, 8);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(intRangeUntil, 10));
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            ((IntIterator) it).nextInt();
            arrayList.add(Character.valueOf(((Character) CollectionsKt.random(VALID_CHARS, this.random)).charValue()));
        }
        return this.clock.currentTimeMillis() + this.deviceInfoRepository.getPlatformDeviceInfo().getSerialNumber() + CollectionsKt.joinToString$default(arrayList, "", null, null, 0, null, null, 62, null);
    }
}
