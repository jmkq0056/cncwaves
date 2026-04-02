package com.stripe.cots.common;

import com.stripe.cots.aidlservice.CotsReader;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CotsError.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002¨\u0006\u0003"}, d2 = {"toProto", "Lcom/stripe/cots/aidlservice/CotsReader$CotsError;", "Lcom/stripe/cots/common/CotsError;", "common_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class CotsErrorKt {

    /* JADX INFO: compiled from: CotsError.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[CotsError.values().length];
            try {
                iArr[CotsError.NONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[CotsError.DISCOVERY_MISSING_KEY_CERTIFICATES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[CotsError.DISCOVERY_UNSUPPORTED_ANDROID_VERSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[CotsError.DISCOVERY_MISSING_NFC_READER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[CotsError.DISCOVERY_UNTRUSTED_HARDWARE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[CotsError.DISCOVERY_UNTRUSTED_SOFTWARE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[CotsError.ATTESTATION_DEVICE_TAMPERED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[CotsError.ATTESTATION_API_CONNECTION_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[CotsError.ATTESTATION_SERVER_ERROR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[CotsError.ATTESTATION_API_RESPONSE_DECODING.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr[CotsError.UNEXPECTED_ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr[CotsError.DISCOVERY_DEBUG_NOT_ALLOWED.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final CotsReader.CotsError toProto(CotsError cotsError) {
        Intrinsics.checkNotNullParameter(cotsError, "<this>");
        switch (WhenMappings.$EnumSwitchMapping$0[cotsError.ordinal()]) {
            case 1:
                return CotsReader.CotsError.NONE;
            case 2:
                return CotsReader.CotsError.DISCOVERY_MISSING_KEY_CERTIFICATES;
            case 3:
                return CotsReader.CotsError.DISCOVERY_UNSUPPORTED_ANDROID_VERSION;
            case 4:
                return CotsReader.CotsError.DISCOVERY_MISSING_NFC_READER;
            case 5:
                return CotsReader.CotsError.DISCOVERY_UNTRUSTED_HARDWARE;
            case 6:
                return CotsReader.CotsError.DISCOVERY_UNTRUSTED_SOFTWARE;
            case 7:
                return CotsReader.CotsError.ATTESTATION_DEVICE_TAMPERED;
            case 8:
                return CotsReader.CotsError.ATTESTATION_API_CONNECTION_ERROR;
            case 9:
                return CotsReader.CotsError.ATTESTATION_SERVER_ERROR;
            case 10:
                return CotsReader.CotsError.ATTESTATION_API_RESPONSE_DECODING;
            case 11:
                return CotsReader.CotsError.UNEXPECTED_ERROR;
            case 12:
                return CotsReader.CotsError.DISCOVERY_DEBUG_NOT_ALLOWED;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }
}
