package com.stripe.stripeterminal.external.models;

import java.io.Serializable;
import kotlin.Metadata;

/* JADX INFO: compiled from: Input.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\bw\u0018\u00002\u00060\u0001j\u0002`\u0002R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006\u0082\u0001\u0006\u0007\b\t\n\u000b\fø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/external/models/Input;", "Ljava/io/Serializable;", "Lcom/stripe/serialization/KmpSerializable;", "required", "", "getRequired", "()Z", "Lcom/stripe/stripeterminal/external/models/EmailInput;", "Lcom/stripe/stripeterminal/external/models/NumericInput;", "Lcom/stripe/stripeterminal/external/models/PhoneInput;", "Lcom/stripe/stripeterminal/external/models/SelectionInput;", "Lcom/stripe/stripeterminal/external/models/SignatureInput;", "Lcom/stripe/stripeterminal/external/models/TextInput;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface Input extends Serializable {
    boolean getRequired();
}
