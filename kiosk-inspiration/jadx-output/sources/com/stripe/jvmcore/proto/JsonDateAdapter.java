package com.stripe.jvmcore.proto;

import com.squareup.moshi.FromJson;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import com.squareup.moshi.ToJson;
import java.io.IOException;
import java.util.Date;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: JsonDateAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u001a\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\u0004H\u0007¨\u0006\f"}, d2 = {"Lcom/stripe/jvmcore/proto/JsonDateAdapter;", "", "()V", "fromJson", "Ljava/util/Date;", "jsonReader", "Lcom/squareup/moshi/JsonReader;", "toJson", "", "jsonWriter", "Lcom/squareup/moshi/JsonWriter;", "date", "proto"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class JsonDateAdapter {

    /* JADX INFO: compiled from: JsonDateAdapter.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[JsonReader.Token.STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @FromJson
    public final Date fromJson(JsonReader jsonReader) throws IOException {
        Intrinsics.checkNotNullParameter(jsonReader, "jsonReader");
        JsonReader.Token tokenPeek = jsonReader.peek();
        int i = tokenPeek == null ? -1 : WhenMappings.$EnumSwitchMapping$0[tokenPeek.ordinal()];
        if (i == 1) {
            return new Date(jsonReader.nextLong());
        }
        if (i != 2) {
            return null;
        }
        String strNextString = jsonReader.nextString();
        Intrinsics.checkNotNullExpressionValue(strNextString, "nextString(...)");
        Long longOrNull = StringsKt.toLongOrNull(strNextString);
        if (longOrNull != null) {
            return new Date(longOrNull.longValue());
        }
        return null;
    }

    @ToJson
    public final void toJson(JsonWriter jsonWriter, Date date) throws IOException {
        Intrinsics.checkNotNullParameter(jsonWriter, "jsonWriter");
        if (date == null) {
            jsonWriter.nullValue();
        } else {
            jsonWriter.value(date.getTime());
        }
    }
}
