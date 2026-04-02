package com.stripe.kmpcore.jackrabbitclient.transformers;

import com.stripe.kmpcore.jackrabbitclient.CollectInputsResultInternal;
import com.stripe.kmpcore.jackrabbitclient.models.CollectInputsSingleResult;
import com.stripe.kmpcore.jackrabbitclient.models.EmailResult;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResult;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResultFailure;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsResultSuccess;
import com.stripe.kmpcore.jackrabbitclient.models.KmpTerminalException;
import com.stripe.kmpcore.jackrabbitclient.models.NumericResult;
import com.stripe.kmpcore.jackrabbitclient.models.PhoneResult;
import com.stripe.kmpcore.jackrabbitclient.models.SelectionResult;
import com.stripe.kmpcore.jackrabbitclient.models.SignatureResult;
import com.stripe.kmpcore.jackrabbitclient.models.TextResult;
import com.stripe.kmpcore.jackrabbitclient.models.ToggleResult;
import com.stripe.proto.api.sdk.QueryCollectInputsResponse;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KmpCollectInputsResultTransformer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0002J\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\u000bH\u0002¨\u0006\u000f"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsResultTransformer;", "", "()V", "transform", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsResult;", "collectInputsResultInternal", "Lcom/stripe/kmpcore/jackrabbitclient/CollectInputsResultInternal;", "transformSuccess", "successfullyCompleted", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted;", "transformToggles", "", "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleResult;", "toggles", "Lcom/stripe/proto/api/sdk/QueryCollectInputsResponse$SuccessfullyCompleted$Input$Toggle;", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KmpCollectInputsResultTransformer {

    /* JADX INFO: compiled from: KmpCollectInputsResultTransformer.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.values().length];
            try {
                iArr[QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value.VALUE_INVALID.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.values().length];
            try {
                iArr2[QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.INPUT_TYPE_INVALID.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.SIGNATURE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.SELECTION.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.EMAIL.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.TEXT.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.NUMERIC.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[QueryCollectInputsResponse.SuccessfullyCompleted.Input.InputType.PHONE.ordinal()] = 7;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public final KmpCollectInputsResult transform(CollectInputsResultInternal collectInputsResultInternal) {
        Intrinsics.checkNotNullParameter(collectInputsResultInternal, "collectInputsResultInternal");
        if (collectInputsResultInternal instanceof CollectInputsResultInternal.Failure.ApplicationError) {
            return new KmpCollectInputsResultFailure(new KmpTerminalException(TerminalErrorCode.COLLECT_INPUTS_APPLICATION_ERROR, ((CollectInputsResultInternal.Failure.ApplicationError) collectInputsResultInternal).getErrorMessage(), null, 4, null));
        }
        if (collectInputsResultInternal instanceof CollectInputsResultInternal.Failure.CommunicationError) {
            return new KmpCollectInputsResultFailure(new KmpTerminalException(TerminalErrorCode.READER_COMMUNICATION_ERROR, ((CollectInputsResultInternal.Failure.CommunicationError) collectInputsResultInternal).getErrorMessage(), null, 4, null));
        }
        if (collectInputsResultInternal instanceof CollectInputsResultInternal.Failure.InvalidParameter) {
            return new KmpCollectInputsResultFailure(new KmpTerminalException(TerminalErrorCode.COLLECT_INPUTS_INVALID_PARAMETER, ((CollectInputsResultInternal.Failure.InvalidParameter) collectInputsResultInternal).getErrorMessage(), null, 4, null));
        }
        if (collectInputsResultInternal instanceof CollectInputsResultInternal.Failure.MerchantCancelled) {
            return new KmpCollectInputsResultFailure(new KmpTerminalException(TerminalErrorCode.CANCELED, ((CollectInputsResultInternal.Failure.MerchantCancelled) collectInputsResultInternal).getErrorMessage(), null, 4, null));
        }
        if (collectInputsResultInternal instanceof CollectInputsResultInternal.Failure.Timeout) {
            return new KmpCollectInputsResultFailure(new KmpTerminalException(TerminalErrorCode.COLLECT_INPUTS_TIMED_OUT, ((CollectInputsResultInternal.Failure.Timeout) collectInputsResultInternal).getErrorMessage(), null, 4, null));
        }
        if (collectInputsResultInternal instanceof CollectInputsResultInternal.Failure.Unsupported) {
            return new KmpCollectInputsResultFailure(new KmpTerminalException(TerminalErrorCode.COLLECT_INPUTS_UNSUPPORTED, ((CollectInputsResultInternal.Failure.Unsupported) collectInputsResultInternal).getErrorMessage(), null, 4, null));
        }
        if (collectInputsResultInternal instanceof CollectInputsResultInternal.Success) {
            return transformSuccess(((CollectInputsResultInternal.Success) collectInputsResultInternal).getCollectInputsSuccessfullyCompleted());
        }
        throw new NoWhenBranchMatchedException();
    }

    private final List<ToggleResult> transformToggles(List<QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle> toggles) {
        ToggleResult toggleResult;
        List<QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle> list = toggles;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle.Value value = ((QueryCollectInputsResponse.SuccessfullyCompleted.Input.Toggle) it.next()).value_;
            int i = value == null ? -1 : WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
            if (i == -1) {
                toggleResult = ToggleResult.SKIPPED;
            } else if (i == 1) {
                toggleResult = ToggleResult.ENABLED;
            } else if (i == 2) {
                toggleResult = ToggleResult.DISABLED;
            } else {
                if (i != 3) {
                    throw new NoWhenBranchMatchedException();
                }
                toggleResult = ToggleResult.SKIPPED;
            }
            arrayList.add(toggleResult);
        }
        return arrayList;
    }

    private final KmpCollectInputsResult transformSuccess(QueryCollectInputsResponse.SuccessfullyCompleted successfullyCompleted) throws KmpTerminalException {
        CollectInputsSingleResult signatureResult;
        List<QueryCollectInputsResponse.SuccessfullyCompleted.Input> list = successfullyCompleted.inputs;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (QueryCollectInputsResponse.SuccessfullyCompleted.Input input : list) {
            if (!input.skipped) {
                String[] strArr = new String[6];
                QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature signature = input.signature;
                strArr[0] = signature != null ? signature.value_ : null;
                QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection selection = input.selection;
                strArr[1] = selection != null ? selection.value_ : null;
                QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email email = input.email;
                strArr[2] = email != null ? email.value_ : null;
                QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone phone = input.phone;
                strArr[3] = phone != null ? phone.value_ : null;
                QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text text = input.text;
                strArr[4] = text != null ? text.value_ : null;
                QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric numeric = input.numeric;
                strArr[5] = numeric != null ? numeric.value_ : null;
                if (CollectionsKt.listOfNotNull((Object[]) strArr).isEmpty()) {
                    return new KmpCollectInputsResultFailure(new KmpTerminalException(TerminalErrorCode.COLLECT_INPUTS_APPLICATION_ERROR, "received null form result for unskipped form: " + input.type, null, 4, null));
                }
            }
            switch (WhenMappings.$EnumSwitchMapping$1[input.type.ordinal()]) {
                case 1:
                    throw new KmpTerminalException(TerminalErrorCode.COLLECT_INPUTS_APPLICATION_ERROR, "collect input type is invalid", null, 4, null);
                case 2:
                    boolean z = input.skipped;
                    QueryCollectInputsResponse.SuccessfullyCompleted.Input.Signature signature2 = input.signature;
                    signatureResult = new SignatureResult(z, signature2 != null ? signature2.value_ : null, transformToggles(input.toggles));
                    break;
                case 3:
                    boolean z2 = input.skipped;
                    QueryCollectInputsResponse.SuccessfullyCompleted.Input.Selection selection2 = input.selection;
                    signatureResult = new SelectionResult(z2, selection2 != null ? selection2.value_ : null, transformToggles(input.toggles));
                    break;
                case 4:
                    boolean z3 = input.skipped;
                    QueryCollectInputsResponse.SuccessfullyCompleted.Input.Email email2 = input.email;
                    signatureResult = new EmailResult(z3, email2 != null ? email2.value_ : null, transformToggles(input.toggles));
                    break;
                case 5:
                    boolean z4 = input.skipped;
                    QueryCollectInputsResponse.SuccessfullyCompleted.Input.Text text2 = input.text;
                    signatureResult = new TextResult(z4, text2 != null ? text2.value_ : null, transformToggles(input.toggles));
                    break;
                case 6:
                    boolean z5 = input.skipped;
                    QueryCollectInputsResponse.SuccessfullyCompleted.Input.Numeric numeric2 = input.numeric;
                    signatureResult = new NumericResult(z5, numeric2 != null ? numeric2.value_ : null, transformToggles(input.toggles));
                    break;
                case 7:
                    boolean z6 = input.skipped;
                    QueryCollectInputsResponse.SuccessfullyCompleted.Input.Phone phone2 = input.phone;
                    signatureResult = new PhoneResult(z6, phone2 != null ? phone2.value_ : null, transformToggles(input.toggles));
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            arrayList.add(signatureResult);
        }
        return new KmpCollectInputsResultSuccess(arrayList);
    }
}
