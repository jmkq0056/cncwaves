package com.stripe.kmpcore.jackrabbitclient.extensions;

import com.stripe.kmpcore.jackrabbitclient.models.EmailInput;
import com.stripe.kmpcore.jackrabbitclient.models.Input;
import com.stripe.kmpcore.jackrabbitclient.models.NumericInput;
import com.stripe.kmpcore.jackrabbitclient.models.PhoneInput;
import com.stripe.kmpcore.jackrabbitclient.models.SelectionInput;
import com.stripe.kmpcore.jackrabbitclient.models.SignatureInput;
import com.stripe.kmpcore.jackrabbitclient.models.TextInput;
import com.stripe.kmpcore.jackrabbitclient.models.Toggle;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CollectInputsExtensions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0003\u001a\n\u0010\u0004\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0005\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0002\u001a\n\u0010\u0006\u001a\u00020\u0001*\u00020\u0003\u001a\u0010\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00030\b*\u00020\u0002¨\u0006\t"}, d2 = {"getDescription", "", "Lcom/stripe/kmpcore/jackrabbitclient/models/Input;", "Lcom/stripe/kmpcore/jackrabbitclient/models/Toggle;", "getSkipButton", "getSubmitButton", "getTitle", "getToggles", "", "jackrabbitclient_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class CollectInputsExtensionsKt {
    public static final String getTitle(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        if (!(input instanceof EmailInput) && !(input instanceof NumericInput) && !(input instanceof PhoneInput) && !(input instanceof SelectionInput) && !(input instanceof SignatureInput) && !(input instanceof TextInput)) {
            throw new NoWhenBranchMatchedException();
        }
        return input.getTitle();
    }

    public static final String getDescription(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        if (input instanceof EmailInput) {
            String description = input.getDescription();
            return description == null ? "" : description;
        }
        if (input instanceof NumericInput) {
            String description2 = input.getDescription();
            return description2 == null ? "" : description2;
        }
        if (input instanceof PhoneInput) {
            String description3 = input.getDescription();
            return description3 == null ? "" : description3;
        }
        if (input instanceof SelectionInput) {
            String description4 = input.getDescription();
            return description4 == null ? "" : description4;
        }
        if (input instanceof SignatureInput) {
            String description5 = input.getDescription();
            return description5 == null ? "" : description5;
        }
        if (!(input instanceof TextInput)) {
            throw new NoWhenBranchMatchedException();
        }
        String description6 = input.getDescription();
        return description6 == null ? "" : description6;
    }

    public static final String getSubmitButton(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        if (input instanceof EmailInput) {
            String submitButtonText = input.getSubmitButtonText();
            return submitButtonText == null ? "" : submitButtonText;
        }
        if (input instanceof NumericInput) {
            String submitButtonText2 = input.getSubmitButtonText();
            return submitButtonText2 == null ? "" : submitButtonText2;
        }
        if (input instanceof PhoneInput) {
            String submitButtonText3 = input.getSubmitButtonText();
            return submitButtonText3 == null ? "" : submitButtonText3;
        }
        if (input instanceof SelectionInput) {
            return "";
        }
        if (input instanceof SignatureInput) {
            String submitButtonText4 = input.getSubmitButtonText();
            return submitButtonText4 == null ? "" : submitButtonText4;
        }
        if (!(input instanceof TextInput)) {
            throw new NoWhenBranchMatchedException();
        }
        String submitButtonText5 = input.getSubmitButtonText();
        return submitButtonText5 == null ? "" : submitButtonText5;
    }

    public static final String getSkipButton(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        if (input instanceof EmailInput) {
            String skipButtonText = input.getSkipButtonText();
            return skipButtonText == null ? "" : skipButtonText;
        }
        if (input instanceof NumericInput) {
            String skipButtonText2 = input.getSkipButtonText();
            return skipButtonText2 == null ? "" : skipButtonText2;
        }
        if (input instanceof PhoneInput) {
            String skipButtonText3 = input.getSkipButtonText();
            return skipButtonText3 == null ? "" : skipButtonText3;
        }
        if (input instanceof SelectionInput) {
            String skipButtonText4 = input.getSkipButtonText();
            return skipButtonText4 == null ? "" : skipButtonText4;
        }
        if (input instanceof SignatureInput) {
            String skipButtonText5 = input.getSkipButtonText();
            return skipButtonText5 == null ? "" : skipButtonText5;
        }
        if (!(input instanceof TextInput)) {
            throw new NoWhenBranchMatchedException();
        }
        String skipButtonText6 = input.getSkipButtonText();
        return skipButtonText6 == null ? "" : skipButtonText6;
    }

    public static final List<Toggle> getToggles(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        if (!(input instanceof EmailInput) && !(input instanceof NumericInput) && !(input instanceof PhoneInput) && !(input instanceof SelectionInput) && !(input instanceof SignatureInput) && !(input instanceof TextInput)) {
            throw new NoWhenBranchMatchedException();
        }
        return input.getToggles();
    }

    public static final String getTitle(Toggle toggle) {
        Intrinsics.checkNotNullParameter(toggle, "<this>");
        String title = toggle.getTitle();
        return title == null ? "" : title;
    }

    public static final String getDescription(Toggle toggle) {
        Intrinsics.checkNotNullParameter(toggle, "<this>");
        String description = toggle.getDescription();
        return description == null ? "" : description;
    }
}
