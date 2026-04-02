package com.stripe.proto.event_channel.pub.message;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import io.ktor.http.LinkHeader;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: CustomText.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00152\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0014\u0015B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0004\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ8\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u00042\b\b\u0002\u0010\u0007\u001a\u00020\u00042\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/CustomText;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/event_channel/pub/message/CustomText$Builder;", LinkHeader.Parameters.Title, "", "description", "submit_button", "skip_button", "unknownFields", "Lokio/ByteString;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class CustomText extends Message<CustomText, Builder> {
    public static final ProtoAdapter<CustomText> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String description;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "skipButton", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final String skip_button;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "submitButton", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String submit_button;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final String title;

    public CustomText() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ CustomText(String str, String str2, String str3, String str4, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3, (i & 8) != 0 ? "" : str4, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomText(String title, String description, String submit_button, String skip_button, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(submit_button, "submit_button");
        Intrinsics.checkNotNullParameter(skip_button, "skip_button");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.title = title;
        this.description = description;
        this.submit_button = submit_button;
        this.skip_button = skip_button;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.title = this.title;
        builder.description = this.description;
        builder.submit_button = this.submit_button;
        builder.skip_button = this.skip_button;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof CustomText)) {
            return false;
        }
        CustomText customText = (CustomText) other;
        return Intrinsics.areEqual(unknownFields(), customText.unknownFields()) && Intrinsics.areEqual(this.title, customText.title) && Intrinsics.areEqual(this.description, customText.description) && Intrinsics.areEqual(this.submit_button, customText.submit_button) && Intrinsics.areEqual(this.skip_button, customText.skip_button);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.title.hashCode()) * 37) + this.description.hashCode()) * 37) + this.submit_button.hashCode()) * 37) + this.skip_button.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("title=" + Internal.sanitize(this.title));
        arrayList2.add("description=" + Internal.sanitize(this.description));
        arrayList2.add("submit_button=" + Internal.sanitize(this.submit_button));
        arrayList2.add("skip_button=" + Internal.sanitize(this.skip_button));
        return CollectionsKt.joinToString$default(arrayList, ", ", "CustomText{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ CustomText copy$default(CustomText customText, String str, String str2, String str3, String str4, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            str = customText.title;
        }
        if ((i & 2) != 0) {
            str2 = customText.description;
        }
        if ((i & 4) != 0) {
            str3 = customText.submit_button;
        }
        if ((i & 8) != 0) {
            str4 = customText.skip_button;
        }
        if ((i & 16) != 0) {
            byteString = customText.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str5 = str3;
        return customText.copy(str, str2, str5, str4, byteString2);
    }

    public final CustomText copy(String title, String description, String submit_button, String skip_button, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(title, "title");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(submit_button, "submit_button");
        Intrinsics.checkNotNullParameter(skip_button, "skip_button");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new CustomText(title, description, submit_button, skip_button, unknownFields);
    }

    /* JADX INFO: compiled from: CustomText.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\u0007\u001a\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0005J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0007\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/CustomText$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/event_channel/pub/message/CustomText;", "()V", "description", "", "skip_button", "submit_button", LinkHeader.Parameters.Title, "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<CustomText, Builder> {
        public String title = "";
        public String description = "";
        public String submit_button = "";
        public String skip_button = "";

        public final Builder title(String title) {
            Intrinsics.checkNotNullParameter(title, "title");
            this.title = title;
            return this;
        }

        public final Builder description(String description) {
            Intrinsics.checkNotNullParameter(description, "description");
            this.description = description;
            return this;
        }

        public final Builder submit_button(String submit_button) {
            Intrinsics.checkNotNullParameter(submit_button, "submit_button");
            this.submit_button = submit_button;
            return this;
        }

        public final Builder skip_button(String skip_button) {
            Intrinsics.checkNotNullParameter(skip_button, "skip_button");
            this.skip_button = skip_button;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public CustomText build() {
            return new CustomText(this.title, this.description, this.submit_button, this.skip_button, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: CustomText.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/event_channel/pub/message/CustomText$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/event_channel/pub/message/CustomText;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/event_channel/pub/message/CustomText$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ CustomText build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(CustomText.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<CustomText>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.event_channel.pub.message.CustomText$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(CustomText value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (!Intrinsics.areEqual(value.title, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(1, value.title);
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.description);
                }
                if (!Intrinsics.areEqual(value.submit_button, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.submit_button);
                }
                return !Intrinsics.areEqual(value.skip_button, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(4, value.skip_button) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, CustomText value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (!Intrinsics.areEqual(value.title, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                }
                if (!Intrinsics.areEqual(value.submit_button, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.submit_button);
                }
                if (!Intrinsics.areEqual(value.skip_button, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.skip_button);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, CustomText value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (!Intrinsics.areEqual(value.skip_button, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 4, value.skip_button);
                }
                if (!Intrinsics.areEqual(value.submit_button, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.submit_button);
                }
                if (!Intrinsics.areEqual(value.description, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.description);
                }
                if (Intrinsics.areEqual(value.title, "")) {
                    return;
                }
                ProtoAdapter.STRING.encodeWithTag(writer, 1, value.title);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public CustomText redact(CustomText value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return CustomText.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public CustomText decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = "";
                String strDecode3 = strDecode2;
                String strDecode4 = strDecode3;
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new CustomText(strDecode, strDecode2, strDecode3, strDecode4, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        strDecode = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 2) {
                        strDecode2 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 3) {
                        strDecode3 = ProtoAdapter.STRING.decode(reader);
                    } else if (iNextTag == 4) {
                        strDecode4 = ProtoAdapter.STRING.decode(reader);
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }
        };
    }
}
