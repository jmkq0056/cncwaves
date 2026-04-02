package com.stripe.stripeterminal.internal.common.json;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.moshi.FromJson;
import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import com.squareup.moshi.ToJson;
import com.stripe.stripeterminal.external.models.ExpandableLocation;
import com.stripe.stripeterminal.external.models.Location;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ExpandableLocationJsonAdapter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0007J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bH\u0007¨\u0006\u000f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/json/ExpandableLocationJsonAdapter;", "", "()V", "fromJson", "Lcom/stripe/stripeterminal/external/models/ExpandableLocation;", "jsonReader", "Lcom/squareup/moshi/JsonReader;", "delegate", "Lcom/squareup/moshi/JsonAdapter;", "Lcom/stripe/stripeterminal/external/models/Location;", "toJson", "", "jsonWriter", "Lcom/squareup/moshi/JsonWriter;", FirebaseAnalytics.Param.LOCATION, "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ExpandableLocationJsonAdapter {

    /* JADX INFO: compiled from: ExpandableLocationJsonAdapter.kt */
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
    public final ExpandableLocation fromJson(JsonReader jsonReader, JsonAdapter<Location> delegate) throws IOException {
        Intrinsics.checkNotNullParameter(jsonReader, "jsonReader");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        JsonReader.Token tokenPeek = jsonReader.peek();
        int i = tokenPeek == null ? -1 : WhenMappings.$EnumSwitchMapping$0[tokenPeek.ordinal()];
        if (i == 1) {
            Location locationFromJson = delegate.fromJson(jsonReader);
            Intrinsics.checkNotNull(locationFromJson);
            return new ExpandableLocation.Expanded(locationFromJson);
        }
        if (i == 2) {
            return (ExpandableLocation) jsonReader.nextNull();
        }
        String strNextString = jsonReader.nextString();
        Intrinsics.checkNotNullExpressionValue(strNextString, "nextString(...)");
        return new ExpandableLocation.Reference(strNextString);
    }

    @ToJson
    public final void toJson(JsonWriter jsonWriter, ExpandableLocation location, JsonAdapter<Location> delegate) throws IOException {
        Intrinsics.checkNotNullParameter(jsonWriter, "jsonWriter");
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        if (location instanceof ExpandableLocation.Expanded) {
            delegate.toJson(jsonWriter, ((ExpandableLocation.Expanded) location).getLocation());
        } else if (location instanceof ExpandableLocation.Reference) {
            jsonWriter.value(((ExpandableLocation.Reference) location).getId());
        } else if (location == null) {
            jsonWriter.nullValue();
        }
    }
}
