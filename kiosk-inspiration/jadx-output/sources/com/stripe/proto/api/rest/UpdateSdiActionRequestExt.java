package com.stripe.proto.api.rest;

import androidx.core.app.NotificationCompat;
import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.UpdateSdiActionRequest;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import io.ktor.http.LinkHeader;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: UpdateSdiActionRequestExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0013\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0013\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0013\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0015\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0015\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0015\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0017\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0017\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0017\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0019\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0019\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0019\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u001a2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u001b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u001b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u001b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u001c2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u001d\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u001d\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u001d\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u001e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u001f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u001f\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u001f\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020 2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010!\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\"2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010!\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\"2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010!\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\"2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010#\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010#\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010#\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020$2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010%\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010%\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010%\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020&2\u0006\u0010\u0007\u001a\u00020\b¨\u0006'"}, d2 = {"Lcom/stripe/proto/api/rest/UpdateSdiActionRequestExt;", "", "()V", "addChoice", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addCustomText", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$CustomText;", "addEmail", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Email;", "addInput", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input;", "addInputType", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$InputType;", "addNumeric", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Numeric;", "addPhone", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Phone;", "addSelection", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection;", "addSignature", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Signature;", "addStyle", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Selection$Choice$Style;", "addSurcharge", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Surcharge;", "addText", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Text;", "addToggle", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle;", "addUpdateSdiActionRequest", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest;", "addValue", "Lcom/stripe/proto/api/rest/UpdateSdiActionRequest$Input$Toggle$Value;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class UpdateSdiActionRequestExt {
    public static final UpdateSdiActionRequestExt INSTANCE = new UpdateSdiActionRequestExt();

    public final FormBody.Builder addInputType(FormBody.Builder builder, UpdateSdiActionRequest.Input.InputType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final HttpUrl.Builder addInputType(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.InputType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final MultipartBody.Builder addInputType(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.InputType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final FormBody.Builder addStyle(FormBody.Builder builder, UpdateSdiActionRequest.Input.Selection.Choice.Style message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final HttpUrl.Builder addStyle(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.Selection.Choice.Style message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final MultipartBody.Builder addStyle(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.Selection.Choice.Style message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final FormBody.Builder addValue(FormBody.Builder builder, UpdateSdiActionRequest.Input.Toggle.Value message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final HttpUrl.Builder addValue(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.Toggle.Value message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final MultipartBody.Builder addValue(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.Toggle.Value message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    private UpdateSdiActionRequestExt() {
    }

    public final HttpUrl.Builder addUpdateSdiActionRequest(HttpUrl.Builder builder, UpdateSdiActionRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.id;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        String str2 = message.status;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(NotificationCompat.CATEGORY_STATUS, context), str2.toString());
        }
        String str3 = message.failure_code;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("failure_code", context), str3.toString());
        }
        String str4 = message.failure_message;
        if (str4 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("failure_message", context), str4.toString());
        }
        String str5 = message.generated_card;
        if (str5 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("generated_card", context), str5.toString());
        }
        String str6 = message.refund_id;
        if (str6 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("refund_id", context), str6.toString());
        }
        String str7 = message.payment_method_id;
        if (str7 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("payment_method_id", context), str7.toString());
        }
        int i = 0;
        for (Object obj : message.inputs) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            INSTANCE.addInput(builder, (UpdateSdiActionRequest.Input) obj, WirecrpcTypeGenExtKt.wrapWith("inputs", context) + AbstractJsonLexerKt.BEGIN_LIST + i + AbstractJsonLexerKt.END_LIST);
            i = i2;
        }
        String str8 = message.routing_info;
        if (str8 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("routing_info", context), str8.toString());
        }
        UpdateSdiActionRequest.Surcharge surcharge = message.surcharge;
        if (surcharge != null) {
            INSTANCE.addSurcharge(builder, surcharge, WirecrpcTypeGenExtKt.wrapWith("surcharge", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addInput(HttpUrl.Builder builder, UpdateSdiActionRequest.Input message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UpdateSdiActionRequest.Input.InputType inputType = message.type;
        if (inputType != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("type", context), inputType.name());
        }
        UpdateSdiActionRequest.Input.CustomText customText = message.custom_text;
        if (customText != null) {
            INSTANCE.addCustomText(builder, customText, WirecrpcTypeGenExtKt.wrapWith("custom_text", context));
        }
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("required", context), String.valueOf(message.required));
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("skipped", context), String.valueOf(message.skipped));
        int i = 0;
        for (Object obj : message.toggles) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            INSTANCE.addToggle(builder, (UpdateSdiActionRequest.Input.Toggle) obj, WirecrpcTypeGenExtKt.wrapWith("toggles", context) + AbstractJsonLexerKt.BEGIN_LIST + i + AbstractJsonLexerKt.END_LIST);
            i = i2;
        }
        UpdateSdiActionRequest.Input.Selection selection = message.selection;
        if (selection != null) {
            INSTANCE.addSelection(builder, selection, WirecrpcTypeGenExtKt.wrapWith("selection", context));
        }
        UpdateSdiActionRequest.Input.Signature signature = message.signature;
        if (signature != null) {
            INSTANCE.addSignature(builder, signature, WirecrpcTypeGenExtKt.wrapWith("signature", context));
        }
        UpdateSdiActionRequest.Input.Email email = message.email;
        if (email != null) {
            INSTANCE.addEmail(builder, email, WirecrpcTypeGenExtKt.wrapWith("email", context));
        }
        UpdateSdiActionRequest.Input.Text text = message.text;
        if (text != null) {
            INSTANCE.addText(builder, text, WirecrpcTypeGenExtKt.wrapWith(PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, context));
        }
        UpdateSdiActionRequest.Input.Numeric numeric = message.numeric;
        if (numeric != null) {
            INSTANCE.addNumeric(builder, numeric, WirecrpcTypeGenExtKt.wrapWith("numeric", context));
        }
        UpdateSdiActionRequest.Input.Phone phone = message.phone;
        if (phone != null) {
            INSTANCE.addPhone(builder, phone, WirecrpcTypeGenExtKt.wrapWith("phone", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addSignature(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.Signature message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addSelection(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.Selection message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        int i = 0;
        for (Object obj : message.choices) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            INSTANCE.addChoice(builder, (UpdateSdiActionRequest.Input.Selection.Choice) obj, WirecrpcTypeGenExtKt.wrapWith("choices", context) + AbstractJsonLexerKt.BEGIN_LIST + i + AbstractJsonLexerKt.END_LIST);
            i = i2;
        }
        return builder;
    }

    public final HttpUrl.Builder addChoice(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.Selection.Choice message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UpdateSdiActionRequest.Input.Selection.Choice.Style style = message.style;
        if (style != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("style", context), style.name());
        }
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("value", context), message.value_.toString());
        return builder;
    }

    public final HttpUrl.Builder addEmail(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.Email message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addText(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.Text message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addNumeric(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.Numeric message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addPhone(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.Phone message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addCustomText(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.CustomText message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(LinkHeader.Parameters.Title, context), message.title.toString());
        String str = message.description;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("description", context), str.toString());
        }
        String str2 = message.submit_button;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("submit_button", context), str2.toString());
        }
        String str3 = message.skip_button;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("skip_button", context), str3.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addToggle(HttpUrl.Builder builder, UpdateSdiActionRequest.Input.Toggle message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.title;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(LinkHeader.Parameters.Title, context), str.toString());
        }
        String str2 = message.description;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("description", context), str2.toString());
        }
        UpdateSdiActionRequest.Input.Toggle.Value value = message.default_value;
        if (value != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("default_value", context), value.name());
        }
        UpdateSdiActionRequest.Input.Toggle.Value value2 = message.value_;
        if (value2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("value", context), value2.name());
        }
        return builder;
    }

    public final HttpUrl.Builder addSurcharge(HttpUrl.Builder builder, UpdateSdiActionRequest.Surcharge message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.maximum_amount;
        if (l != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("maximum_amount", context), String.valueOf(l.longValue()));
        }
        String str = message.status;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(NotificationCompat.CATEGORY_STATUS, context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addUpdateSdiActionRequest(FormBody.Builder builder, UpdateSdiActionRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.id;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        String str2 = message.status;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(NotificationCompat.CATEGORY_STATUS, context), str2.toString());
        }
        String str3 = message.failure_code;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("failure_code", context), str3.toString());
        }
        String str4 = message.failure_message;
        if (str4 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("failure_message", context), str4.toString());
        }
        String str5 = message.generated_card;
        if (str5 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("generated_card", context), str5.toString());
        }
        String str6 = message.refund_id;
        if (str6 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("refund_id", context), str6.toString());
        }
        String str7 = message.payment_method_id;
        if (str7 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("payment_method_id", context), str7.toString());
        }
        int i = 0;
        for (Object obj : message.inputs) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            INSTANCE.addInput(builder, (UpdateSdiActionRequest.Input) obj, WirecrpcTypeGenExtKt.wrapWith("inputs", context) + AbstractJsonLexerKt.BEGIN_LIST + i + AbstractJsonLexerKt.END_LIST);
            i = i2;
        }
        String str8 = message.routing_info;
        if (str8 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("routing_info", context), str8.toString());
        }
        UpdateSdiActionRequest.Surcharge surcharge = message.surcharge;
        if (surcharge != null) {
            INSTANCE.addSurcharge(builder, surcharge, WirecrpcTypeGenExtKt.wrapWith("surcharge", context));
        }
        return builder;
    }

    public final FormBody.Builder addInput(FormBody.Builder builder, UpdateSdiActionRequest.Input message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UpdateSdiActionRequest.Input.InputType inputType = message.type;
        if (inputType != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("type", context), inputType.name());
        }
        UpdateSdiActionRequest.Input.CustomText customText = message.custom_text;
        if (customText != null) {
            INSTANCE.addCustomText(builder, customText, WirecrpcTypeGenExtKt.wrapWith("custom_text", context));
        }
        builder.add(WirecrpcTypeGenExtKt.wrapWith("required", context), String.valueOf(message.required));
        builder.add(WirecrpcTypeGenExtKt.wrapWith("skipped", context), String.valueOf(message.skipped));
        int i = 0;
        for (Object obj : message.toggles) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            INSTANCE.addToggle(builder, (UpdateSdiActionRequest.Input.Toggle) obj, WirecrpcTypeGenExtKt.wrapWith("toggles", context) + AbstractJsonLexerKt.BEGIN_LIST + i + AbstractJsonLexerKt.END_LIST);
            i = i2;
        }
        UpdateSdiActionRequest.Input.Selection selection = message.selection;
        if (selection != null) {
            INSTANCE.addSelection(builder, selection, WirecrpcTypeGenExtKt.wrapWith("selection", context));
        }
        UpdateSdiActionRequest.Input.Signature signature = message.signature;
        if (signature != null) {
            INSTANCE.addSignature(builder, signature, WirecrpcTypeGenExtKt.wrapWith("signature", context));
        }
        UpdateSdiActionRequest.Input.Email email = message.email;
        if (email != null) {
            INSTANCE.addEmail(builder, email, WirecrpcTypeGenExtKt.wrapWith("email", context));
        }
        UpdateSdiActionRequest.Input.Text text = message.text;
        if (text != null) {
            INSTANCE.addText(builder, text, WirecrpcTypeGenExtKt.wrapWith(PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, context));
        }
        UpdateSdiActionRequest.Input.Numeric numeric = message.numeric;
        if (numeric != null) {
            INSTANCE.addNumeric(builder, numeric, WirecrpcTypeGenExtKt.wrapWith("numeric", context));
        }
        UpdateSdiActionRequest.Input.Phone phone = message.phone;
        if (phone != null) {
            INSTANCE.addPhone(builder, phone, WirecrpcTypeGenExtKt.wrapWith("phone", context));
        }
        return builder;
    }

    public final FormBody.Builder addSignature(FormBody.Builder builder, UpdateSdiActionRequest.Input.Signature message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addSelection(FormBody.Builder builder, UpdateSdiActionRequest.Input.Selection message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        int i = 0;
        for (Object obj : message.choices) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            INSTANCE.addChoice(builder, (UpdateSdiActionRequest.Input.Selection.Choice) obj, WirecrpcTypeGenExtKt.wrapWith("choices", context) + AbstractJsonLexerKt.BEGIN_LIST + i + AbstractJsonLexerKt.END_LIST);
            i = i2;
        }
        return builder;
    }

    public final FormBody.Builder addChoice(FormBody.Builder builder, UpdateSdiActionRequest.Input.Selection.Choice message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UpdateSdiActionRequest.Input.Selection.Choice.Style style = message.style;
        if (style != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("style", context), style.name());
        }
        builder.add(WirecrpcTypeGenExtKt.wrapWith("value", context), message.value_.toString());
        return builder;
    }

    public final FormBody.Builder addEmail(FormBody.Builder builder, UpdateSdiActionRequest.Input.Email message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addText(FormBody.Builder builder, UpdateSdiActionRequest.Input.Text message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addNumeric(FormBody.Builder builder, UpdateSdiActionRequest.Input.Numeric message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addPhone(FormBody.Builder builder, UpdateSdiActionRequest.Input.Phone message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addCustomText(FormBody.Builder builder, UpdateSdiActionRequest.Input.CustomText message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.add(WirecrpcTypeGenExtKt.wrapWith(LinkHeader.Parameters.Title, context), message.title.toString());
        String str = message.description;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("description", context), str.toString());
        }
        String str2 = message.submit_button;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("submit_button", context), str2.toString());
        }
        String str3 = message.skip_button;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("skip_button", context), str3.toString());
        }
        return builder;
    }

    public final FormBody.Builder addToggle(FormBody.Builder builder, UpdateSdiActionRequest.Input.Toggle message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.title;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(LinkHeader.Parameters.Title, context), str.toString());
        }
        String str2 = message.description;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("description", context), str2.toString());
        }
        UpdateSdiActionRequest.Input.Toggle.Value value = message.default_value;
        if (value != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("default_value", context), value.name());
        }
        UpdateSdiActionRequest.Input.Toggle.Value value2 = message.value_;
        if (value2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("value", context), value2.name());
        }
        return builder;
    }

    public final FormBody.Builder addSurcharge(FormBody.Builder builder, UpdateSdiActionRequest.Surcharge message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.maximum_amount;
        if (l != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("maximum_amount", context), String.valueOf(l.longValue()));
        }
        String str = message.status;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(NotificationCompat.CATEGORY_STATUS, context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addUpdateSdiActionRequest(MultipartBody.Builder builder, UpdateSdiActionRequest message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.id;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.ID, context), str.toString());
        }
        String str2 = message.status;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(NotificationCompat.CATEGORY_STATUS, context), str2.toString());
        }
        String str3 = message.failure_code;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("failure_code", context), str3.toString());
        }
        String str4 = message.failure_message;
        if (str4 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("failure_message", context), str4.toString());
        }
        String str5 = message.generated_card;
        if (str5 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("generated_card", context), str5.toString());
        }
        String str6 = message.refund_id;
        if (str6 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("refund_id", context), str6.toString());
        }
        String str7 = message.payment_method_id;
        if (str7 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("payment_method_id", context), str7.toString());
        }
        int i = 0;
        for (Object obj : message.inputs) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            INSTANCE.addInput(builder, (UpdateSdiActionRequest.Input) obj, WirecrpcTypeGenExtKt.wrapWith("inputs", context) + AbstractJsonLexerKt.BEGIN_LIST + i + AbstractJsonLexerKt.END_LIST);
            i = i2;
        }
        String str8 = message.routing_info;
        if (str8 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("routing_info", context), str8.toString());
        }
        UpdateSdiActionRequest.Surcharge surcharge = message.surcharge;
        if (surcharge != null) {
            INSTANCE.addSurcharge(builder, surcharge, WirecrpcTypeGenExtKt.wrapWith("surcharge", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addInput(MultipartBody.Builder builder, UpdateSdiActionRequest.Input message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UpdateSdiActionRequest.Input.InputType inputType = message.type;
        if (inputType != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("type", context), inputType.name());
        }
        UpdateSdiActionRequest.Input.CustomText customText = message.custom_text;
        if (customText != null) {
            INSTANCE.addCustomText(builder, customText, WirecrpcTypeGenExtKt.wrapWith("custom_text", context));
        }
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("required", context), String.valueOf(message.required));
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("skipped", context), String.valueOf(message.skipped));
        int i = 0;
        for (Object obj : message.toggles) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            INSTANCE.addToggle(builder, (UpdateSdiActionRequest.Input.Toggle) obj, WirecrpcTypeGenExtKt.wrapWith("toggles", context) + AbstractJsonLexerKt.BEGIN_LIST + i + AbstractJsonLexerKt.END_LIST);
            i = i2;
        }
        UpdateSdiActionRequest.Input.Selection selection = message.selection;
        if (selection != null) {
            INSTANCE.addSelection(builder, selection, WirecrpcTypeGenExtKt.wrapWith("selection", context));
        }
        UpdateSdiActionRequest.Input.Signature signature = message.signature;
        if (signature != null) {
            INSTANCE.addSignature(builder, signature, WirecrpcTypeGenExtKt.wrapWith("signature", context));
        }
        UpdateSdiActionRequest.Input.Email email = message.email;
        if (email != null) {
            INSTANCE.addEmail(builder, email, WirecrpcTypeGenExtKt.wrapWith("email", context));
        }
        UpdateSdiActionRequest.Input.Text text = message.text;
        if (text != null) {
            INSTANCE.addText(builder, text, WirecrpcTypeGenExtKt.wrapWith(PrinterTextParser.ATTR_BARCODE_TEXT_POSITION, context));
        }
        UpdateSdiActionRequest.Input.Numeric numeric = message.numeric;
        if (numeric != null) {
            INSTANCE.addNumeric(builder, numeric, WirecrpcTypeGenExtKt.wrapWith("numeric", context));
        }
        UpdateSdiActionRequest.Input.Phone phone = message.phone;
        if (phone != null) {
            INSTANCE.addPhone(builder, phone, WirecrpcTypeGenExtKt.wrapWith("phone", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addSignature(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.Signature message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addSelection(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.Selection message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        int i = 0;
        for (Object obj : message.choices) {
            int i2 = i + 1;
            if (i < 0) {
                CollectionsKt.throwIndexOverflow();
            }
            INSTANCE.addChoice(builder, (UpdateSdiActionRequest.Input.Selection.Choice) obj, WirecrpcTypeGenExtKt.wrapWith("choices", context) + AbstractJsonLexerKt.BEGIN_LIST + i + AbstractJsonLexerKt.END_LIST);
            i = i2;
        }
        return builder;
    }

    public final MultipartBody.Builder addChoice(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.Selection.Choice message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        UpdateSdiActionRequest.Input.Selection.Choice.Style style = message.style;
        if (style != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("style", context), style.name());
        }
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("value", context), message.value_.toString());
        return builder;
    }

    public final MultipartBody.Builder addEmail(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.Email message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addText(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.Text message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addNumeric(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.Numeric message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addPhone(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.Phone message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.value_;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("value", context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addCustomText(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.CustomText message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(LinkHeader.Parameters.Title, context), message.title.toString());
        String str = message.description;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("description", context), str.toString());
        }
        String str2 = message.submit_button;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("submit_button", context), str2.toString());
        }
        String str3 = message.skip_button;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("skip_button", context), str3.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addToggle(MultipartBody.Builder builder, UpdateSdiActionRequest.Input.Toggle message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.title;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(LinkHeader.Parameters.Title, context), str.toString());
        }
        String str2 = message.description;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("description", context), str2.toString());
        }
        UpdateSdiActionRequest.Input.Toggle.Value value = message.default_value;
        if (value != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("default_value", context), value.name());
        }
        UpdateSdiActionRequest.Input.Toggle.Value value2 = message.value_;
        if (value2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("value", context), value2.name());
        }
        return builder;
    }

    public final MultipartBody.Builder addSurcharge(MultipartBody.Builder builder, UpdateSdiActionRequest.Surcharge message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        Long l = message.maximum_amount;
        if (l != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("maximum_amount", context), String.valueOf(l.longValue()));
        }
        String str = message.status;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(NotificationCompat.CATEGORY_STATUS, context), str.toString());
        }
        return builder;
    }
}
