package com.stripe.stripeterminal.internal.common.makers;

import com.stripe.core.hardware.Reader;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.models.DeviceType;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: DeviceTypeMaker.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker;", "", "()V", "Companion", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DeviceTypeMaker {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: DeviceTypeMaker.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\t¨\u0006\n"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/makers/DeviceTypeMaker$Companion;", "", "()V", "fromSerial", "Lcom/stripe/stripeterminal/external/models/DeviceType;", "serialNumber", "", "fromUsbReader", OfflineStorageConstantsKt.READER, "Lcom/stripe/core/hardware/Reader$UsbReader;", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {

        /* JADX INFO: compiled from: DeviceTypeMaker.kt */
        @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
        public /* synthetic */ class EntriesMappings {
            public static final /* synthetic */ EnumEntries<DeviceType> entries$0 = EnumEntriesKt.enumEntries(DeviceType.values());
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DeviceType fromSerial(String serialNumber) throws TerminalException {
            Intrinsics.checkNotNullParameter(serialNumber, "serialNumber");
            for (DeviceType deviceType : EntriesMappings.entries$0) {
                Iterator<String> it = deviceType.getSerialPrefixes().iterator();
                while (it.hasNext()) {
                    if (StringsKt.startsWith$default(serialNumber, it.next(), false, 2, (Object) null)) {
                        return deviceType;
                    }
                }
            }
            throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Serial number doesn't match any known device type", null, null, 12, null);
        }

        public final DeviceType fromUsbReader(Reader.UsbReader reader) throws TerminalException {
            Intrinsics.checkNotNullParameter(reader, "reader");
            if (reader instanceof Reader.UsbReader.Chipper2xReader) {
                return DeviceType.CHIPPER_2X;
            }
            if (reader instanceof Reader.UsbReader.StripeM2Reader) {
                return DeviceType.STRIPE_M2;
            }
            if (reader instanceof Reader.UsbReader.WisecubeReader) {
                return DeviceType.WISECUBE;
            }
            if (reader instanceof Reader.UsbReader.Wisepad3Reader) {
                return DeviceType.WISEPAD_3;
            }
            if (reader instanceof Reader.UsbReader.Wisepad3SReader) {
                return DeviceType.WISEPAD_3S;
            }
            if (reader instanceof Reader.UsbReader.UnspecifiedUsbReader) {
                throw new TerminalException(TerminalErrorCode.UNEXPECTED_SDK_ERROR, "Reader doesn't match any known device type", null, null, 12, null);
            }
            throw new NoWhenBranchMatchedException();
        }
    }
}
