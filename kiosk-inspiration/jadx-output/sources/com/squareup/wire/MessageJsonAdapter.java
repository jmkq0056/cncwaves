package com.squareup.wire;

import com.squareup.moshi.JsonAdapter;
import com.squareup.moshi.JsonReader;
import com.squareup.moshi.JsonWriter;
import com.squareup.wire.Message;
import com.squareup.wire.Message.Builder;
import com.squareup.wire.internal.RuntimeMessageAdapter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MessageJsonAdapter.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0014\b\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u0002*\u0014\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00030\u00042\b\u0012\u0004\u0012\u0002H\u00010\u0005BC\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0014\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00050\t\u0012\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\t0\u0005¢\u0006\u0002\u0010\rJ\u0015\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0013\u001a\u00020\u0014H\u0016¢\u0006\u0002\u0010\u0015J\u001f\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u001bR\u001c\u0010\b\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\u00050\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\f0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\t0\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcom/squareup/wire/MessageJsonAdapter;", "M", "Lcom/squareup/wire/Message;", "B", "Lcom/squareup/wire/Message$Builder;", "Lcom/squareup/moshi/JsonAdapter;", "messageAdapter", "Lcom/squareup/wire/internal/RuntimeMessageAdapter;", "jsonAdapters", "", "", "redactedFieldsAdapter", "", "(Lcom/squareup/wire/internal/RuntimeMessageAdapter;Ljava/util/List;Lcom/squareup/moshi/JsonAdapter;)V", "jsonAlternateNames", "jsonNames", "options", "Lcom/squareup/moshi/JsonReader$Options;", "fromJson", "input", "Lcom/squareup/moshi/JsonReader;", "(Lcom/squareup/moshi/JsonReader;)Lcom/squareup/wire/Message;", "toJson", "", "out", "Lcom/squareup/moshi/JsonWriter;", "message", "(Lcom/squareup/moshi/JsonWriter;Lcom/squareup/wire/Message;)V", "wire-moshi-adapter"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MessageJsonAdapter<M extends Message<M, B>, B extends Message.Builder<M, B>> extends JsonAdapter<M> {
    private final List<JsonAdapter<Object>> jsonAdapters;
    private final List<String> jsonAlternateNames;
    private final List<String> jsonNames;
    private final RuntimeMessageAdapter<M, B> messageAdapter;
    private final JsonReader.Options options;
    private final JsonAdapter<List<String>> redactedFieldsAdapter;

    /* JADX WARN: Multi-variable type inference failed */
    public MessageJsonAdapter(RuntimeMessageAdapter<M, B> messageAdapter, List<? extends JsonAdapter<Object>> jsonAdapters, JsonAdapter<List<String>> redactedFieldsAdapter) {
        Intrinsics.checkNotNullParameter(messageAdapter, "messageAdapter");
        Intrinsics.checkNotNullParameter(jsonAdapters, "jsonAdapters");
        Intrinsics.checkNotNullParameter(redactedFieldsAdapter, "redactedFieldsAdapter");
        this.messageAdapter = messageAdapter;
        this.jsonAdapters = jsonAdapters;
        this.redactedFieldsAdapter = redactedFieldsAdapter;
        this.jsonNames = messageAdapter.getJsonNames();
        this.jsonAlternateNames = messageAdapter.getJsonAlternateNames();
        ArrayList arrayList = new ArrayList();
        int size = this.jsonNames.size();
        for (int i = 0; i < size; i++) {
            String str = this.jsonNames.get(i);
            ArrayList arrayList2 = arrayList;
            arrayList2.add(str);
            String str2 = this.jsonAlternateNames.get(i);
            if (str2 == null) {
                str2 = str + (char) 0;
            }
            arrayList2.add(str2);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        JsonReader.Options optionsOf = JsonReader.Options.of((String[]) Arrays.copyOf(strArr, strArr.length));
        Intrinsics.checkNotNullExpressionValue(optionsOf, "run(...)");
        this.options = optionsOf;
    }

    @Override // com.squareup.moshi.JsonAdapter
    public void toJson(final JsonWriter out, M message) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        RedactedTag redactedTag = (RedactedTag) out.tag(RedactedTag.class);
        JsonAdapter<List<String>> jsonAdapter = Intrinsics.areEqual((Object) (redactedTag != null ? Boolean.valueOf(redactedTag.getEnabled()) : null), (Object) true) ? this.redactedFieldsAdapter : null;
        out.beginObject();
        this.messageAdapter.writeAllFields(message, this.jsonAdapters, jsonAdapter, new Function3<String, Object, JsonAdapter<Object>, Unit>() { // from class: com.squareup.wire.MessageJsonAdapter.toJson.1
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(String str, Object obj, JsonAdapter<Object> jsonAdapter2) throws IOException {
                invoke2(str, obj, jsonAdapter2);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(String name, Object obj, JsonAdapter<Object> jsonAdapter2) throws IOException {
                Intrinsics.checkNotNullParameter(name, "name");
                Intrinsics.checkNotNullParameter(jsonAdapter2, "jsonAdapter");
                out.name(name);
                jsonAdapter2.toJson(out, obj);
            }
        });
        out.endObject();
    }

    @Override // com.squareup.moshi.JsonAdapter
    public M fromJson(JsonReader input) throws IOException {
        Intrinsics.checkNotNullParameter(input, "input");
        B bNewBuilder = this.messageAdapter.newBuilder();
        input.beginObject();
        while (input.hasNext()) {
            int iSelectName = input.selectName(this.options);
            if (iSelectName == -1) {
                input.skipName();
                input.skipValue();
            } else {
                int i = iSelectName / 2;
                Object objFromJson = this.jsonAdapters.get(i).fromJson(input);
                if (objFromJson != null) {
                    this.messageAdapter.getFieldBindingsArray()[i].set(bNewBuilder, objFromJson);
                }
            }
        }
        input.endObject();
        return (M) bNewBuilder.build();
    }
}
