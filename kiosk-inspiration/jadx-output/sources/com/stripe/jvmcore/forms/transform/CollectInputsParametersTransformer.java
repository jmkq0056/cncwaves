package com.stripe.jvmcore.forms.transform;

import com.stripe.kmpcore.jackrabbitclient.models.Input;
import com.stripe.kmpcore.jackrabbitclient.models.KmpCollectInputsParameters;
import com.stripe.kmpcore.jackrabbitclient.models.SelectionButton;
import com.stripe.kmpcore.jackrabbitclient.models.Toggle;
import com.stripe.stripeterminal.external.models.CollectInputsParameters;
import com.stripe.stripeterminal.external.models.EmailInput;
import com.stripe.stripeterminal.external.models.NumericInput;
import com.stripe.stripeterminal.external.models.PhoneInput;
import com.stripe.stripeterminal.external.models.SelectionButtonStyle;
import com.stripe.stripeterminal.external.models.SelectionInput;
import com.stripe.stripeterminal.external.models.SignatureInput;
import com.stripe.stripeterminal.external.models.TextInput;
import com.stripe.stripeterminal.external.models.ToggleValue;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CollectInputsParametersTransformer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J \u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\b2\u0010\u0010\n\u001a\f\u0012\b\u0012\u00060\u000bj\u0002`\f0\bH\u0002J \u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000e0\b2\u0010\u0010\u000f\u001a\f\u0012\b\u0012\u00060\u0010j\u0002`\u00110\bH\u0002J\u0014\u0010\u0012\u001a\u00020\u00132\n\u0010\u0014\u001a\u00060\u0015j\u0002`\u0016H\u0002J\u0014\u0010\u0017\u001a\u00020\u00182\n\u0010\u0019\u001a\u00060\u001aj\u0002`\u001bH\u0002J \u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001d0\b2\u0010\u0010\u001e\u001a\f\u0012\b\u0012\u00060\u001fj\u0002` 0\bH\u0002¨\u0006!"}, d2 = {"Lcom/stripe/jvmcore/forms/transform/CollectInputsParametersTransformer;", "", "()V", "transform", "Lcom/stripe/kmpcore/jackrabbitclient/models/KmpCollectInputsParameters;", "collectInputsParameters", "Lcom/stripe/stripeterminal/external/models/CollectInputsParameters;", "transformInputs", "", "Lcom/stripe/kmpcore/jackrabbitclient/models/Input;", "inputs", "Lcom/stripe/stripeterminal/external/models/Input;", "Lcom/stripe/jvmcore/forms/transform/ExternalInput;", "transformSelectionButton", "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButton;", "selectionButtons", "Lcom/stripe/stripeterminal/external/models/SelectionButton;", "Lcom/stripe/jvmcore/forms/transform/ExternalSelectionButton;", "transformSelectionButtonStyle", "Lcom/stripe/kmpcore/jackrabbitclient/models/SelectionButtonStyle;", "style", "Lcom/stripe/stripeterminal/external/models/SelectionButtonStyle;", "Lcom/stripe/jvmcore/forms/transform/ExternalSelectionButtonStyle;", "transformToggleValue", "Lcom/stripe/kmpcore/jackrabbitclient/models/ToggleValue;", "toggleValue", "Lcom/stripe/stripeterminal/external/models/ToggleValue;", "Lcom/stripe/jvmcore/forms/transform/ExternalToggleValue;", "transformToggles", "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;", "toggles", "Lcom/stripe/stripeterminal/external/models/Toggle;", "Lcom/stripe/jvmcore/forms/transform/ExternalToggle;", "forms"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CollectInputsParametersTransformer {

    /* JADX INFO: compiled from: CollectInputsParametersTransformer.kt */
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

    public final KmpCollectInputsParameters transform(CollectInputsParameters collectInputsParameters) {
        Intrinsics.checkNotNullParameter(collectInputsParameters, "collectInputsParameters");
        return new KmpCollectInputsParameters(transformInputs(collectInputsParameters.getInputs()));
    }

    private final List<Input> transformInputs(List<? extends com.stripe.stripeterminal.external.models.Input> inputs) {
        Input textInput;
        List<? extends com.stripe.stripeterminal.external.models.Input> list = inputs;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (com.stripe.stripeterminal.external.models.Input input : list) {
            if (input instanceof EmailInput) {
                boolean required = input.getRequired();
                EmailInput emailInput = (EmailInput) input;
                textInput = new com.stripe.kmpcore.jackrabbitclient.models.EmailInput(required, emailInput.getTitle(), emailInput.getDescription(), emailInput.getSkipButtonText(), emailInput.getSubmitButtonText(), transformToggles(emailInput.getToggles()));
            } else if (input instanceof NumericInput) {
                boolean required2 = input.getRequired();
                NumericInput numericInput = (NumericInput) input;
                textInput = new com.stripe.kmpcore.jackrabbitclient.models.NumericInput(required2, numericInput.getTitle(), numericInput.getDescription(), numericInput.getSkipButtonText(), numericInput.getSubmitButtonText(), transformToggles(numericInput.getToggles()));
            } else if (input instanceof PhoneInput) {
                boolean required3 = input.getRequired();
                PhoneInput phoneInput = (PhoneInput) input;
                textInput = new com.stripe.kmpcore.jackrabbitclient.models.PhoneInput(required3, phoneInput.getTitle(), phoneInput.getDescription(), phoneInput.getSkipButtonText(), phoneInput.getSubmitButtonText(), transformToggles(phoneInput.getToggles()));
            } else if (input instanceof SelectionInput) {
                boolean required4 = input.getRequired();
                SelectionInput selectionInput = (SelectionInput) input;
                textInput = new com.stripe.kmpcore.jackrabbitclient.models.SelectionInput(required4, transformSelectionButton(selectionInput.getSelectionButtons()), selectionInput.getTitle(), selectionInput.getDescription(), selectionInput.getSkipButtonText(), transformToggles(selectionInput.getToggles()));
            } else if (input instanceof SignatureInput) {
                boolean required5 = input.getRequired();
                SignatureInput signatureInput = (SignatureInput) input;
                textInput = new com.stripe.kmpcore.jackrabbitclient.models.SignatureInput(required5, signatureInput.getTitle(), signatureInput.getDescription(), signatureInput.getSkipButtonText(), signatureInput.getSubmitButtonText(), transformToggles(signatureInput.getToggles()));
            } else {
                if (!(input instanceof TextInput)) {
                    throw new NoWhenBranchMatchedException();
                }
                boolean required6 = input.getRequired();
                TextInput textInput2 = (TextInput) input;
                textInput = new com.stripe.kmpcore.jackrabbitclient.models.TextInput(required6, textInput2.getTitle(), textInput2.getDescription(), textInput2.getSkipButtonText(), textInput2.getSubmitButtonText(), transformToggles(textInput2.getToggles()));
            }
            arrayList.add(textInput);
        }
        return arrayList;
    }

    private final List<SelectionButton> transformSelectionButton(List<com.stripe.stripeterminal.external.models.SelectionButton> selectionButtons) {
        List<com.stripe.stripeterminal.external.models.SelectionButton> list = selectionButtons;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (com.stripe.stripeterminal.external.models.SelectionButton selectionButton : list) {
            arrayList.add(new SelectionButton(transformSelectionButtonStyle(selectionButton.getStyle()), selectionButton.getText()));
        }
        return arrayList;
    }

    private final com.stripe.kmpcore.jackrabbitclient.models.SelectionButtonStyle transformSelectionButtonStyle(SelectionButtonStyle style) {
        int i = WhenMappings.$EnumSwitchMapping$0[style.ordinal()];
        if (i == 1) {
            return com.stripe.kmpcore.jackrabbitclient.models.SelectionButtonStyle.PRIMARY;
        }
        if (i == 2) {
            return com.stripe.kmpcore.jackrabbitclient.models.SelectionButtonStyle.SECONDARY;
        }
        throw new NoWhenBranchMatchedException();
    }

    private final List<Toggle> transformToggles(List<com.stripe.stripeterminal.external.models.Toggle> toggles) {
        List<com.stripe.stripeterminal.external.models.Toggle> list = toggles;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (com.stripe.stripeterminal.external.models.Toggle toggle : list) {
            arrayList.add(new Toggle(toggle.getTitle(), toggle.getDescription(), transformToggleValue(toggle.getDefaultValue())));
        }
        return arrayList;
    }

    private final com.stripe.kmpcore.jackrabbitclient.models.ToggleValue transformToggleValue(ToggleValue toggleValue) {
        int i = WhenMappings.$EnumSwitchMapping$1[toggleValue.ordinal()];
        if (i == 1) {
            return com.stripe.kmpcore.jackrabbitclient.models.ToggleValue.ENABLED;
        }
        if (i == 2) {
            return com.stripe.kmpcore.jackrabbitclient.models.ToggleValue.DISABLED;
        }
        throw new NoWhenBranchMatchedException();
    }
}
