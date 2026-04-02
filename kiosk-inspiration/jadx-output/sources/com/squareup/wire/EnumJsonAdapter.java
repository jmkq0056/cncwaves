package com.squareup.wire;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonDataException;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import com.squareup.wire.WireEnum;
import com.squareup.wire.internal.EnumJsonFormatter;
import java.io.IOException;
import java.lang.Enum;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: EnumJsonAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0012\b\u0000\u0010\u0001*\b\u0012\u0004\u0012\u0002H\u00010\u0002*\u00020\u00032\b\u0012\u0004\u0012\u0002H\u00010\u0004B\u0013\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006¢\u0006\u0002\u0010\u0007J\u0015\u0010\b\u001a\u00028\u00002\u0006\u0010\t\u001a\u00020\nH\u0016¢\u0006\u0002\u0010\u000bJ\u001f\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u0011R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/squareup/wire/EnumJsonAdapter;", "E", "", "Lcom/squareup/wire/WireEnum;", "Lcom/squareup/moshi/JsonAdapter;", "enumJsonFormatter", "Lcom/squareup/wire/internal/EnumJsonFormatter;", "(Lcom/squareup/wire/internal/EnumJsonFormatter;)V", "fromJson", "input", "Lcom/squareup/moshi/JsonReader;", "(Lcom/squareup/moshi/JsonReader;)Ljava/lang/Enum;", "toJson", "", "out", "Lcom/squareup/moshi/JsonWriter;", "value", "(Lcom/squareup/moshi/JsonWriter;Ljava/lang/Enum;)V", "wire-moshi-adapter"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class EnumJsonAdapter<E extends Enum<E> & WireEnum> extends JsonAdapter<E> {
    private final EnumJsonFormatter<E> enumJsonFormatter;

    public EnumJsonAdapter(EnumJsonFormatter<E> enumJsonFormatter) {
        Intrinsics.checkNotNullParameter(enumJsonFormatter, "enumJsonFormatter");
        this.enumJsonFormatter = enumJsonFormatter;
    }

    /* JADX WARN: Incorrect types in method signature: (Lcom/squareup/moshi/JsonWriter;TE;)V */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(JsonWriter out, Enum value) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        if (value == 0) {
            out.nullValue();
        } else {
            out.value(this.enumJsonFormatter.toStringOrNumber((WireEnum) value));
        }
    }

    /* JADX WARN: Incorrect return type in method signature: (Lcom/squareup/moshi/JsonReader;)TE; */
    @Override // com.squareup.moshi.JsonAdapter
    public Enum fromJson(JsonReader input) throws IOException {
        Intrinsics.checkNotNullParameter(input, "input");
        String strNextString = input.nextString();
        EnumJsonFormatter<E> enumJsonFormatter = this.enumJsonFormatter;
        Intrinsics.checkNotNull(strNextString);
        Enum r1 = (Enum) enumJsonFormatter.fromString(strNextString);
        if (r1 != null) {
            return r1;
        }
        throw new JsonDataException("Unexpected " + strNextString + " at path " + input.getPath());
    }
}
