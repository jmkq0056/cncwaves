package com.stripe.stripeterminal.external.json;

import com.squareup.moshi.FromJson;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import com.squareup.moshi.ToJson;
import com.stripe.stripeterminal.external.api.ApiError;
import com.stripe.stripeterminal.external.serialization.InnerError;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ApiErrorJsonAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0007J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0007¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/external/json/ApiErrorJsonAdapter;", "", "()V", "fromJson", "Lcom/stripe/stripeterminal/external/api/ApiError;", "jsonReader", "Lcom/squareup/moshi/JsonReader;", "delegate", "Lcom/squareup/moshi/JsonAdapter;", "Lcom/stripe/stripeterminal/external/serialization/InnerError;", "toJson", "", "jsonWriter", "Lcom/squareup/moshi/JsonWriter;", "apiError", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApiErrorJsonAdapter {
    @FromJson
    public final ApiError fromJson(JsonReader jsonReader, JsonAdapter<InnerError> delegate) throws IOException {
        Intrinsics.checkNotNullParameter(jsonReader, "jsonReader");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        if (jsonReader.peek() == JsonReader.Token.BEGIN_OBJECT) {
            InnerError innerErrorFromJson = delegate.fromJson(jsonReader);
            Intrinsics.checkNotNull(innerErrorFromJson);
            return new ApiError(innerErrorFromJson);
        }
        return (ApiError) jsonReader.nextNull();
    }

    @ToJson
    public final void toJson(JsonWriter jsonWriter, ApiError apiError, JsonAdapter<InnerError> delegate) throws IOException {
        Intrinsics.checkNotNullParameter(jsonWriter, "jsonWriter");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        if (apiError == null) {
            jsonWriter.nullValue();
        } else {
            delegate.toJson(jsonWriter, apiError.getError$public_release());
        }
    }
}
