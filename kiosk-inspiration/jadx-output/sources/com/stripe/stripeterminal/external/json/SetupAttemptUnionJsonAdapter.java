package com.stripe.stripeterminal.external.json;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.moshi.FromJson;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import com.squareup.moshi.ToJson;
import com.stripe.stripeterminal.external.models.SetupAttempt;
import com.stripe.stripeterminal.external.models.SetupAttemptUnion;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SetupAttemptUnionJsonAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J%\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0001¢\u0006\u0002\b\nJ-\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0001¢\u0006\u0002\b\u0010¨\u0006\u0011"}, d2 = {"Lcom/stripe/stripeterminal/external/json/SetupAttemptUnionJsonAdapter;", "", "()V", "fromJson", "Lcom/stripe/stripeterminal/external/models/SetupAttemptUnion;", "jsonReader", "Lcom/squareup/moshi/JsonReader;", "delegate", "Lcom/squareup/moshi/JsonAdapter;", "Lcom/stripe/stripeterminal/external/models/SetupAttempt;", "fromJson$public_release", "toJson", "", "jsonWriter", "Lcom/squareup/moshi/JsonWriter;", FirebaseAnalytics.Param.LOCATION, "toJson$public_release", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class SetupAttemptUnionJsonAdapter {

    /* JADX INFO: compiled from: SetupAttemptUnionJsonAdapter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            try {
                iArr[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[JsonReader.Token.NULL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @FromJson
    public final SetupAttemptUnion fromJson$public_release(JsonReader jsonReader, JsonAdapter<SetupAttempt> delegate) throws IOException {
        Intrinsics.checkNotNullParameter(jsonReader, "jsonReader");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        JsonReader.Token tokenPeek = jsonReader.peek();
        int i = tokenPeek == null ? -1 : WhenMappings.$EnumSwitchMapping$0[tokenPeek.ordinal()];
        if (i == 1) {
            SetupAttempt setupAttemptFromJson = delegate.fromJson(jsonReader);
            Intrinsics.checkNotNull(setupAttemptFromJson);
            return new SetupAttemptUnion.Expanded(setupAttemptFromJson);
        }
        if (i == 2) {
            return (SetupAttemptUnion) jsonReader.nextNull();
        }
        String strNextString = jsonReader.nextString();
        Intrinsics.checkNotNullExpressionValue(strNextString, "nextString(...)");
        return new SetupAttemptUnion.Reference(strNextString);
    }

    @ToJson
    public final void toJson$public_release(JsonWriter jsonWriter, SetupAttemptUnion location, JsonAdapter<SetupAttempt> delegate) throws IOException {
        Intrinsics.checkNotNullParameter(jsonWriter, "jsonWriter");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        if (location instanceof SetupAttemptUnion.Expanded) {
            delegate.toJson(jsonWriter, ((SetupAttemptUnion.Expanded) location).getSetupAttempt());
        } else if (location instanceof SetupAttemptUnion.Reference) {
            jsonWriter.value(((SetupAttemptUnion.Reference) location).getId());
        } else if (location == null) {
            jsonWriter.nullValue();
        }
    }
}
