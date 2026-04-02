package com.stripe.kmpcore.jackrabbitclient.transformers;

import com.stripe.kmpcore.jackrabbitclient.extensions.CollectInputsExtensionsKt;
import com.stripe.kmpcore.jackrabbitclient.models.EmailInput;
import com.stripe.kmpcore.jackrabbitclient.models.Input;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters;
import com.stripe.kmpcore.jackrabbitclient.models.NumericInput;
import com.stripe.kmpcore.jackrabbitclient.models.PhoneInput;
import com.stripe.kmpcore.jackrabbitclient.models.SelectionButton;
import com.stripe.kmpcore.jackrabbitclient.models.SelectionButtonStyle;
import com.stripe.kmpcore.jackrabbitclient.models.SelectionInput;
import com.stripe.kmpcore.jackrabbitclient.models.SignatureInput;
import com.stripe.kmpcore.jackrabbitclient.models.TextInput;
import com.stripe.kmpcore.jackrabbitclient.models.Toggle;
import com.stripe.kmpcore.jackrabbitclient.models.ToggleValue;
import com.stripe.proto.api.sdk.CollectInputsRequest;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: KmpCollectInputsRequestTransformer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, d2 = {"Lcom/stripe/kmpcore/jackrabbitclient/transformers/KmpCollectInputsRequestTransformer;", "", "()V", "transform", "Lcom/stripe/proto/api/sdk/CollectInputsRequest;", "params", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;", "jackrabbitclient_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class KmpCollectInputsRequestTransformer {

    /* JADX INFO: compiled from: KmpCollectInputsRequestTransformer.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[SelectionButtonStyle.values().length];
            try {
                iArr[SelectionButtonStyle.PRIMARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[SelectionButtonStyle.SECONDARY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[ToggleValue.values().length];
            try {
                iArr2[ToggleValue.ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[ToggleValue.DISABLED.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final CollectInputsRequest transform(KmpCollectInputsParameters params) {
        CollectInputsRequest.Input.InputType inputType;
        CollectInputsRequest.Toggle.Value value;
        CollectInputsRequest.Choice.Style style;
        Intrinsics.checkNotNullParameter(params, "params");
        List<Input> inputs = params.getInputs();
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(inputs, 10));
        Iterator<T> it = inputs.iterator();
        while (true) {
            int i = 2;
            CollectInputsRequest.Selection selection = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            Object[] objArr4 = 0;
            if (!it.hasNext()) {
                return new CollectInputsRequest(arrayList, objArr2 == true ? 1 : 0, i, objArr == true ? 1 : 0);
            }
            Input input = (Input) it.next();
            CollectInputsRequest.CustomText customText = new CollectInputsRequest.CustomText(CollectInputsExtensionsKt.getTitle(input), CollectInputsExtensionsKt.getDescription(input), CollectInputsExtensionsKt.getSubmitButton(input), CollectInputsExtensionsKt.getSkipButton(input), null, 16, null);
            boolean required = input.getRequired();
            boolean z = input instanceof SelectionInput;
            if (z) {
                List<SelectionButton> selectionButtons = input.getSelectionButtons();
                ArrayList arrayList2 = new ArrayList(CollectionsKt.collectionSizeOrDefault(selectionButtons, 10));
                for (SelectionButton selectionButton : selectionButtons) {
                    int i2 = WhenMappings.$EnumSwitchMapping$0[selectionButton.getStyle().ordinal()];
                    if (i2 == 1) {
                        style = CollectInputsRequest.Choice.Style.PRIMARY;
                    } else {
                        if (i2 != 2) {
                            throw new NoWhenBranchMatchedException();
                        }
                        style = CollectInputsRequest.Choice.Style.SECONDARY;
                    }
                    arrayList2.add(new CollectInputsRequest.Choice(style, selectionButton.getText(), null, 4, null));
                }
                selection = new CollectInputsRequest.Selection(arrayList2, objArr4 == true ? 1 : 0, i, objArr3 == true ? 1 : 0);
            } else if (!(input instanceof SignatureInput ? true : input instanceof EmailInput ? true : input instanceof TextInput ? true : input instanceof NumericInput ? true : input instanceof PhoneInput)) {
                throw new NoWhenBranchMatchedException();
            }
            if (z) {
                inputType = CollectInputsRequest.Input.InputType.SELECTION;
            } else if (input instanceof SignatureInput) {
                inputType = CollectInputsRequest.Input.InputType.SIGNATURE;
            } else if (input instanceof EmailInput) {
                inputType = CollectInputsRequest.Input.InputType.EMAIL;
            } else if (input instanceof TextInput) {
                inputType = CollectInputsRequest.Input.InputType.TEXT;
            } else if (input instanceof NumericInput) {
                inputType = CollectInputsRequest.Input.InputType.NUMERIC;
            } else {
                if (!(input instanceof PhoneInput)) {
                    throw new NoWhenBranchMatchedException();
                }
                inputType = CollectInputsRequest.Input.InputType.PHONE;
            }
            CollectInputsRequest.Input.InputType inputType2 = inputType;
            List<Toggle> toggles = CollectInputsExtensionsKt.getToggles(input);
            ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(toggles, 10));
            for (Toggle toggle : toggles) {
                String title = CollectInputsExtensionsKt.getTitle(toggle);
                String description = CollectInputsExtensionsKt.getDescription(toggle);
                int i3 = WhenMappings.$EnumSwitchMapping$1[toggle.getDefaultValue().ordinal()];
                if (i3 == 1) {
                    value = CollectInputsRequest.Toggle.Value.ENABLED;
                } else {
                    if (i3 != 2) {
                        throw new NoWhenBranchMatchedException();
                    }
                    value = CollectInputsRequest.Toggle.Value.DISABLED;
                }
                arrayList3.add(new CollectInputsRequest.Toggle(title, description, value, null, 8, null));
            }
            arrayList.add(new CollectInputsRequest.Input(customText, required, selection, inputType2, arrayList3, null, 32, null));
        }
    }
}
