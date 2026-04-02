package com.stripe.proto.api.rest;

import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.RequestedPaymentMethod;
import com.stripe.wirecrpc.WirecrpcTypeGenExtKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.FormBody;
import okhttp3.HttpUrl;
import okhttp3.MultipartBody;

/* JADX INFO: compiled from: RequestedPaymentMethodExt.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000b\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\r\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u000e2\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u000f\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0011\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00122\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0013\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0013\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0013\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00142\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0015\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0015\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0015\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00162\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0017\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0017\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\bJ\u001a\u0010\u0017\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00182\u0006\u0010\u0007\u001a\u00020\b¨\u0006\u0019"}, d2 = {"Lcom/stripe/proto/api/rest/RequestedPaymentMethodExt;", "", "()V", "addAddress", "Lokhttp3/FormBody$Builder;", "message", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails$Address;", "context", "", "Lokhttp3/HttpUrl$Builder;", "Lokhttp3/MultipartBody$Builder;", "addBillingDetails", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;", "addRequestedCard", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;", "addRequestedCardPresent", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;", "addRequestedPaymentMethod", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;", "addSchemeType", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$SchemeType;", "addStandardEncryptionType", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType;", "addTtpaEcka", "Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent$StandardEncryptionType$TtpaEcka;", "codegen-terminalsdk_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RequestedPaymentMethodExt {
    public static final RequestedPaymentMethodExt INSTANCE = new RequestedPaymentMethodExt();

    public final FormBody.Builder addSchemeType(FormBody.Builder builder, RequestedPaymentMethod.RequestedCardPresent.SchemeType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final HttpUrl.Builder addSchemeType(HttpUrl.Builder builder, RequestedPaymentMethod.RequestedCardPresent.SchemeType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    public final MultipartBody.Builder addSchemeType(MultipartBody.Builder builder, RequestedPaymentMethod.RequestedCardPresent.SchemeType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        return builder;
    }

    private RequestedPaymentMethodExt() {
    }

    public final HttpUrl.Builder addRequestedPaymentMethod(HttpUrl.Builder builder, RequestedPaymentMethod message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.type;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("type", context), str.toString());
        }
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent = message.card_present;
        if (requestedCardPresent != null) {
            INSTANCE.addRequestedCardPresent(builder, requestedCardPresent, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent2 = message.interac_present;
        if (requestedCardPresent2 != null) {
            INSTANCE.addRequestedCardPresent(builder, requestedCardPresent2, WirecrpcTypeGenExtKt.wrapWith("interac_present", context));
        }
        RequestedPaymentMethod.RequestedCard requestedCard = message.card;
        if (requestedCard != null) {
            INSTANCE.addRequestedCard(builder, requestedCard, WirecrpcTypeGenExtKt.wrapWith("card", context));
        }
        RequestedPaymentMethod.BillingDetails billingDetails = message.billing_details;
        if (billingDetails != null) {
            INSTANCE.addBillingDetails(builder, billingDetails, WirecrpcTypeGenExtKt.wrapWith("billing_details", context));
        }
        String str2 = message.allow_redisplay;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("allow_redisplay", context), str2.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addRequestedCardPresent(HttpUrl.Builder builder, RequestedPaymentMethod.RequestedCardPresent message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.type;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("type", context), str.toString());
        }
        String str2 = message.read_method;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("read_method", context), str2.toString());
        }
        String str3 = message.swipe_reason;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("swipe_reason", context), str3.toString());
        }
        String str4 = message.track_2;
        if (str4 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("track_2", context), str4.toString());
        }
        String str5 = message.emv_processing_method;
        if (str5 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("emv_processing_method", context), str5.toString());
        }
        String str6 = message.emv_data;
        if (str6 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("emv_data", context), str6.toString());
        }
        String str7 = message.pin_block;
        if (str7 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("pin_block", context), str7.toString());
        }
        String str8 = message.pin_block_ksn;
        if (str8 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("pin_block_ksn", context), str8.toString());
        }
        String str9 = message.reader_;
        if (str9 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER, context), str9.toString());
        }
        String str10 = message.track_2_key_type;
        if (str10 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("track_2_key_type", context), str10.toString());
        }
        String str11 = message.track_2_key_id;
        if (str11 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("track_2_key_id", context), str11.toString());
        }
        String str12 = message.track_2_ksn;
        if (str12 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("track_2_ksn", context), str12.toString());
        }
        String str13 = message.latitude;
        if (str13 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("latitude", context), str13.toString());
        }
        String str14 = message.longitude;
        if (str14 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("longitude", context), str14.toString());
        }
        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType standardEncryptionType = message.encrypted_pin_block;
        if (standardEncryptionType != null) {
            INSTANCE.addStandardEncryptionType(builder, standardEncryptionType, WirecrpcTypeGenExtKt.wrapWith("encrypted_pin_block", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addStandardEncryptionType(HttpUrl.Builder builder, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        RequestedPaymentMethod.RequestedCardPresent.SchemeType schemeType = message.scheme;
        if (schemeType != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("scheme", context), schemeType.name());
        }
        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka ttpaEcka = message.ecka_ttpa;
        if (ttpaEcka != null) {
            INSTANCE.addTtpaEcka(builder, ttpaEcka, WirecrpcTypeGenExtKt.wrapWith("ecka_ttpa", context));
        }
        String str = message.encrypted_value;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("encrypted_value", context), str.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addTtpaEcka(HttpUrl.Builder builder, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.client_public_key;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("client_public_key", context), str.toString());
        }
        String str2 = message.server_public_key_hash;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("server_public_key_hash", context), str2.toString());
        }
        String str3 = message.installation_id;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("installation_id", context), str3.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addRequestedCard(HttpUrl.Builder builder, RequestedPaymentMethod.RequestedCard message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.dukpt_encrypted_number;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_number", context), str.toString());
        }
        String str2 = message.dukpt_encrypted_number_ksn;
        if (str2 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_number_ksn", context), str2.toString());
        }
        String str3 = message.exp_month;
        if (str3 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("exp_month", context), str3.toString());
        }
        String str4 = message.exp_year;
        if (str4 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("exp_year", context), str4.toString());
        }
        String str5 = message.dukpt_encrypted_cvc;
        if (str5 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_cvc", context), str5.toString());
        }
        String str6 = message.dukpt_encrypted_cvc_ksn;
        if (str6 != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_cvc_ksn", context), str6.toString());
        }
        return builder;
    }

    public final HttpUrl.Builder addBillingDetails(HttpUrl.Builder builder, RequestedPaymentMethod.BillingDetails message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        RequestedPaymentMethod.BillingDetails.Address address = message.address;
        if (address != null) {
            INSTANCE.addAddress(builder, address, WirecrpcTypeGenExtKt.wrapWith("address", context));
        }
        return builder;
    }

    public final HttpUrl.Builder addAddress(HttpUrl.Builder builder, RequestedPaymentMethod.BillingDetails.Address message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.postal_code;
        if (str != null) {
            builder.addQueryParameter(WirecrpcTypeGenExtKt.wrapWith("postal_code", context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addRequestedPaymentMethod(FormBody.Builder builder, RequestedPaymentMethod message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.type;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("type", context), str.toString());
        }
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent = message.card_present;
        if (requestedCardPresent != null) {
            INSTANCE.addRequestedCardPresent(builder, requestedCardPresent, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent2 = message.interac_present;
        if (requestedCardPresent2 != null) {
            INSTANCE.addRequestedCardPresent(builder, requestedCardPresent2, WirecrpcTypeGenExtKt.wrapWith("interac_present", context));
        }
        RequestedPaymentMethod.RequestedCard requestedCard = message.card;
        if (requestedCard != null) {
            INSTANCE.addRequestedCard(builder, requestedCard, WirecrpcTypeGenExtKt.wrapWith("card", context));
        }
        RequestedPaymentMethod.BillingDetails billingDetails = message.billing_details;
        if (billingDetails != null) {
            INSTANCE.addBillingDetails(builder, billingDetails, WirecrpcTypeGenExtKt.wrapWith("billing_details", context));
        }
        String str2 = message.allow_redisplay;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("allow_redisplay", context), str2.toString());
        }
        return builder;
    }

    public final FormBody.Builder addRequestedCardPresent(FormBody.Builder builder, RequestedPaymentMethod.RequestedCardPresent message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.type;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("type", context), str.toString());
        }
        String str2 = message.read_method;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("read_method", context), str2.toString());
        }
        String str3 = message.swipe_reason;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("swipe_reason", context), str3.toString());
        }
        String str4 = message.track_2;
        if (str4 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("track_2", context), str4.toString());
        }
        String str5 = message.emv_processing_method;
        if (str5 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("emv_processing_method", context), str5.toString());
        }
        String str6 = message.emv_data;
        if (str6 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("emv_data", context), str6.toString());
        }
        String str7 = message.pin_block;
        if (str7 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("pin_block", context), str7.toString());
        }
        String str8 = message.pin_block_ksn;
        if (str8 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("pin_block_ksn", context), str8.toString());
        }
        String str9 = message.reader_;
        if (str9 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER, context), str9.toString());
        }
        String str10 = message.track_2_key_type;
        if (str10 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("track_2_key_type", context), str10.toString());
        }
        String str11 = message.track_2_key_id;
        if (str11 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("track_2_key_id", context), str11.toString());
        }
        String str12 = message.track_2_ksn;
        if (str12 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("track_2_ksn", context), str12.toString());
        }
        String str13 = message.latitude;
        if (str13 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("latitude", context), str13.toString());
        }
        String str14 = message.longitude;
        if (str14 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("longitude", context), str14.toString());
        }
        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType standardEncryptionType = message.encrypted_pin_block;
        if (standardEncryptionType != null) {
            INSTANCE.addStandardEncryptionType(builder, standardEncryptionType, WirecrpcTypeGenExtKt.wrapWith("encrypted_pin_block", context));
        }
        return builder;
    }

    public final FormBody.Builder addStandardEncryptionType(FormBody.Builder builder, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        RequestedPaymentMethod.RequestedCardPresent.SchemeType schemeType = message.scheme;
        if (schemeType != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("scheme", context), schemeType.name());
        }
        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka ttpaEcka = message.ecka_ttpa;
        if (ttpaEcka != null) {
            INSTANCE.addTtpaEcka(builder, ttpaEcka, WirecrpcTypeGenExtKt.wrapWith("ecka_ttpa", context));
        }
        String str = message.encrypted_value;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("encrypted_value", context), str.toString());
        }
        return builder;
    }

    public final FormBody.Builder addTtpaEcka(FormBody.Builder builder, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.client_public_key;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("client_public_key", context), str.toString());
        }
        String str2 = message.server_public_key_hash;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("server_public_key_hash", context), str2.toString());
        }
        String str3 = message.installation_id;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("installation_id", context), str3.toString());
        }
        return builder;
    }

    public final FormBody.Builder addRequestedCard(FormBody.Builder builder, RequestedPaymentMethod.RequestedCard message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.dukpt_encrypted_number;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_number", context), str.toString());
        }
        String str2 = message.dukpt_encrypted_number_ksn;
        if (str2 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_number_ksn", context), str2.toString());
        }
        String str3 = message.exp_month;
        if (str3 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("exp_month", context), str3.toString());
        }
        String str4 = message.exp_year;
        if (str4 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("exp_year", context), str4.toString());
        }
        String str5 = message.dukpt_encrypted_cvc;
        if (str5 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_cvc", context), str5.toString());
        }
        String str6 = message.dukpt_encrypted_cvc_ksn;
        if (str6 != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_cvc_ksn", context), str6.toString());
        }
        return builder;
    }

    public final FormBody.Builder addBillingDetails(FormBody.Builder builder, RequestedPaymentMethod.BillingDetails message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        RequestedPaymentMethod.BillingDetails.Address address = message.address;
        if (address != null) {
            INSTANCE.addAddress(builder, address, WirecrpcTypeGenExtKt.wrapWith("address", context));
        }
        return builder;
    }

    public final FormBody.Builder addAddress(FormBody.Builder builder, RequestedPaymentMethod.BillingDetails.Address message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.postal_code;
        if (str != null) {
            builder.add(WirecrpcTypeGenExtKt.wrapWith("postal_code", context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addRequestedPaymentMethod(MultipartBody.Builder builder, RequestedPaymentMethod message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.type;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("type", context), str.toString());
        }
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent = message.card_present;
        if (requestedCardPresent != null) {
            INSTANCE.addRequestedCardPresent(builder, requestedCardPresent, WirecrpcTypeGenExtKt.wrapWith("card_present", context));
        }
        RequestedPaymentMethod.RequestedCardPresent requestedCardPresent2 = message.interac_present;
        if (requestedCardPresent2 != null) {
            INSTANCE.addRequestedCardPresent(builder, requestedCardPresent2, WirecrpcTypeGenExtKt.wrapWith("interac_present", context));
        }
        RequestedPaymentMethod.RequestedCard requestedCard = message.card;
        if (requestedCard != null) {
            INSTANCE.addRequestedCard(builder, requestedCard, WirecrpcTypeGenExtKt.wrapWith("card", context));
        }
        RequestedPaymentMethod.BillingDetails billingDetails = message.billing_details;
        if (billingDetails != null) {
            INSTANCE.addBillingDetails(builder, billingDetails, WirecrpcTypeGenExtKt.wrapWith("billing_details", context));
        }
        String str2 = message.allow_redisplay;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("allow_redisplay", context), str2.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addRequestedCardPresent(MultipartBody.Builder builder, RequestedPaymentMethod.RequestedCardPresent message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.type;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("type", context), str.toString());
        }
        String str2 = message.read_method;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("read_method", context), str2.toString());
        }
        String str3 = message.swipe_reason;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("swipe_reason", context), str3.toString());
        }
        String str4 = message.track_2;
        if (str4 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("track_2", context), str4.toString());
        }
        String str5 = message.emv_processing_method;
        if (str5 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("emv_processing_method", context), str5.toString());
        }
        String str6 = message.emv_data;
        if (str6 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("emv_data", context), str6.toString());
        }
        String str7 = message.pin_block;
        if (str7 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("pin_block", context), str7.toString());
        }
        String str8 = message.pin_block_ksn;
        if (str8 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("pin_block_ksn", context), str8.toString());
        }
        String str9 = message.reader_;
        if (str9 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith(OfflineStorageConstantsKt.READER, context), str9.toString());
        }
        String str10 = message.track_2_key_type;
        if (str10 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("track_2_key_type", context), str10.toString());
        }
        String str11 = message.track_2_key_id;
        if (str11 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("track_2_key_id", context), str11.toString());
        }
        String str12 = message.track_2_ksn;
        if (str12 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("track_2_ksn", context), str12.toString());
        }
        String str13 = message.latitude;
        if (str13 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("latitude", context), str13.toString());
        }
        String str14 = message.longitude;
        if (str14 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("longitude", context), str14.toString());
        }
        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType standardEncryptionType = message.encrypted_pin_block;
        if (standardEncryptionType != null) {
            INSTANCE.addStandardEncryptionType(builder, standardEncryptionType, WirecrpcTypeGenExtKt.wrapWith("encrypted_pin_block", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addStandardEncryptionType(MultipartBody.Builder builder, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        RequestedPaymentMethod.RequestedCardPresent.SchemeType schemeType = message.scheme;
        if (schemeType != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("scheme", context), schemeType.name());
        }
        RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka ttpaEcka = message.ecka_ttpa;
        if (ttpaEcka != null) {
            INSTANCE.addTtpaEcka(builder, ttpaEcka, WirecrpcTypeGenExtKt.wrapWith("ecka_ttpa", context));
        }
        String str = message.encrypted_value;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("encrypted_value", context), str.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addTtpaEcka(MultipartBody.Builder builder, RequestedPaymentMethod.RequestedCardPresent.StandardEncryptionType.TtpaEcka message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.client_public_key;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("client_public_key", context), str.toString());
        }
        String str2 = message.server_public_key_hash;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("server_public_key_hash", context), str2.toString());
        }
        String str3 = message.installation_id;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("installation_id", context), str3.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addRequestedCard(MultipartBody.Builder builder, RequestedPaymentMethod.RequestedCard message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.dukpt_encrypted_number;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_number", context), str.toString());
        }
        String str2 = message.dukpt_encrypted_number_ksn;
        if (str2 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_number_ksn", context), str2.toString());
        }
        String str3 = message.exp_month;
        if (str3 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("exp_month", context), str3.toString());
        }
        String str4 = message.exp_year;
        if (str4 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("exp_year", context), str4.toString());
        }
        String str5 = message.dukpt_encrypted_cvc;
        if (str5 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_cvc", context), str5.toString());
        }
        String str6 = message.dukpt_encrypted_cvc_ksn;
        if (str6 != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("dukpt_encrypted_cvc_ksn", context), str6.toString());
        }
        return builder;
    }

    public final MultipartBody.Builder addBillingDetails(MultipartBody.Builder builder, RequestedPaymentMethod.BillingDetails message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        RequestedPaymentMethod.BillingDetails.Address address = message.address;
        if (address != null) {
            INSTANCE.addAddress(builder, address, WirecrpcTypeGenExtKt.wrapWith("address", context));
        }
        return builder;
    }

    public final MultipartBody.Builder addAddress(MultipartBody.Builder builder, RequestedPaymentMethod.BillingDetails.Address message, String context) {
        Intrinsics.checkNotNullParameter(builder, "<this>");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(context, "context");
        String str = message.postal_code;
        if (str != null) {
            builder.addFormDataPart(WirecrpcTypeGenExtKt.wrapWith("postal_code", context), str.toString());
        }
        return builder;
    }
}
