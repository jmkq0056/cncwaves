package com.stripe.proto.extension;

import com.google.android.gms.common.internal.ImagesContract;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
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

/* JADX INFO: compiled from: RestOptions.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00172\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0016\u0017B7\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ8\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000bJ\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0002H\u0016J\b\u0010\u0015\u001a\u00020\u0006H\u0016R\u0010\u0010\u0007\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u00020\t8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/extension/RestOptions;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/extension/RestOptions$Builder;", FirebaseAnalytics.Param.METHOD, "Lcom/stripe/proto/extension/Method;", ImagesContract.URL, "", "error_type", "post_content_type", "Lcom/stripe/proto/extension/PostContentType;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/extension/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/extension/PostContentType;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class RestOptions extends Message<RestOptions, Builder> {
    public static final ProtoAdapter<RestOptions> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", jsonName = "errorType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 2, tag = 3)
    public final String error_type;

    @WireField(adapter = "com.stripe.proto.extension.Method#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
    public final Method method;

    @WireField(adapter = "com.stripe.proto.extension.PostContentType#ADAPTER", jsonName = "postContentType", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 3, tag = 4)
    public final PostContentType post_content_type;

    @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
    public final String url;

    public RestOptions() {
        this(null, null, null, null, null, 31, null);
    }

    public /* synthetic */ RestOptions(Method method, String str, String str2, PostContentType postContentType, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? Method.UNKNOWN : method, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? "" : str2, (i & 8) != 0 ? PostContentType.NONE : postContentType, (i & 16) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RestOptions(Method method, String url, String error_type, PostContentType post_content_type, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(error_type, "error_type");
        Intrinsics.checkNotNullParameter(post_content_type, "post_content_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.method = method;
        this.url = url;
        this.error_type = error_type;
        this.post_content_type = post_content_type;
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.method = this.method;
        builder.url = this.url;
        builder.error_type = this.error_type;
        builder.post_content_type = this.post_content_type;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof RestOptions)) {
            return false;
        }
        RestOptions restOptions = (RestOptions) other;
        return Intrinsics.areEqual(unknownFields(), restOptions.unknownFields()) && this.method == restOptions.method && Intrinsics.areEqual(this.url, restOptions.url) && Intrinsics.areEqual(this.error_type, restOptions.error_type) && this.post_content_type == restOptions.post_content_type;
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (((((((unknownFields().hashCode() * 37) + this.method.hashCode()) * 37) + this.url.hashCode()) * 37) + this.error_type.hashCode()) * 37) + this.post_content_type.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        arrayList2.add("method=" + this.method);
        arrayList2.add("url=" + Internal.sanitize(this.url));
        arrayList2.add("error_type=" + Internal.sanitize(this.error_type));
        arrayList2.add("post_content_type=" + this.post_content_type);
        return CollectionsKt.joinToString$default(arrayList, ", ", "RestOptions{", "}", 0, null, null, 56, null);
    }

    public static /* synthetic */ RestOptions copy$default(RestOptions restOptions, Method method, String str, String str2, PostContentType postContentType, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            method = restOptions.method;
        }
        if ((i & 2) != 0) {
            str = restOptions.url;
        }
        if ((i & 4) != 0) {
            str2 = restOptions.error_type;
        }
        if ((i & 8) != 0) {
            postContentType = restOptions.post_content_type;
        }
        if ((i & 16) != 0) {
            byteString = restOptions.unknownFields();
        }
        ByteString byteString2 = byteString;
        String str3 = str2;
        return restOptions.copy(method, str, str3, postContentType, byteString2);
    }

    public final RestOptions copy(Method method, String url, String error_type, PostContentType post_content_type, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(method, "method");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(error_type, "error_type");
        Intrinsics.checkNotNullParameter(post_content_type, "post_content_type");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new RestOptions(method, url, error_type, post_content_type, unknownFields);
    }

    /* JADX INFO: compiled from: RestOptions.kt */
    @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u000b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00002\u0006\u0010\b\u001a\u00020\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\b\u001a\u00020\t8\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/proto/extension/RestOptions$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/extension/RestOptions;", "()V", "error_type", "", FirebaseAnalytics.Param.METHOD, "Lcom/stripe/proto/extension/Method;", "post_content_type", "Lcom/stripe/proto/extension/PostContentType;", ImagesContract.URL, "build", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<RestOptions, Builder> {
        public Method method = Method.UNKNOWN;
        public String url = "";
        public String error_type = "";
        public PostContentType post_content_type = PostContentType.NONE;

        public final Builder method(Method method) {
            Intrinsics.checkNotNullParameter(method, "method");
            this.method = method;
            return this;
        }

        public final Builder url(String url) {
            Intrinsics.checkNotNullParameter(url, "url");
            this.url = url;
            return this;
        }

        public final Builder error_type(String error_type) {
            Intrinsics.checkNotNullParameter(error_type, "error_type");
            this.error_type = error_type;
            return this;
        }

        public final Builder post_content_type(PostContentType post_content_type) {
            Intrinsics.checkNotNullParameter(post_content_type, "post_content_type");
            this.post_content_type = post_content_type;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public RestOptions build() {
            return new RestOptions(this.method, this.url, this.error_type, this.post_content_type, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: RestOptions.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/extension/RestOptions$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/extension/RestOptions;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/extension/RestOptions$Builder;", "", "Lkotlin/ExtensionFunctionType;", "internal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ RestOptions build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(RestOptions.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<RestOptions>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.extension.RestOptions$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(RestOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                int size = value.unknownFields().size();
                if (value.method != Method.UNKNOWN) {
                    size += Method.ADAPTER.encodedSizeWithTag(1, value.method);
                }
                if (!Intrinsics.areEqual(value.url, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(2, value.url);
                }
                if (!Intrinsics.areEqual(value.error_type, "")) {
                    size += ProtoAdapter.STRING.encodedSizeWithTag(3, value.error_type);
                }
                return value.post_content_type != PostContentType.NONE ? size + PostContentType.ADAPTER.encodedSizeWithTag(4, value.post_content_type) : size;
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, RestOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                if (value.method != Method.UNKNOWN) {
                    Method.ADAPTER.encodeWithTag(writer, 1, value.method);
                }
                if (!Intrinsics.areEqual(value.url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.url);
                }
                if (!Intrinsics.areEqual(value.error_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.error_type);
                }
                if (value.post_content_type != PostContentType.NONE) {
                    PostContentType.ADAPTER.encodeWithTag(writer, 4, value.post_content_type);
                }
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, RestOptions value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                if (value.post_content_type != PostContentType.NONE) {
                    PostContentType.ADAPTER.encodeWithTag(writer, 4, value.post_content_type);
                }
                if (!Intrinsics.areEqual(value.error_type, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 3, value.error_type);
                }
                if (!Intrinsics.areEqual(value.url, "")) {
                    ProtoAdapter.STRING.encodeWithTag(writer, 2, value.url);
                }
                if (value.method != Method.UNKNOWN) {
                    Method.ADAPTER.encodeWithTag(writer, 1, value.method);
                }
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public RestOptions decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                Method methodDecode = Method.UNKNOWN;
                PostContentType postContentType = PostContentType.NONE;
                long jBeginMessage = reader.beginMessage();
                String strDecode = "";
                String strDecode2 = strDecode;
                PostContentType postContentTypeDecode = postContentType;
                while (true) {
                    Method method = methodDecode;
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new RestOptions(method, strDecode, strDecode2, postContentTypeDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                methodDecode = Method.ADAPTER.decode(reader);
                                break;
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 2) {
                            strDecode = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 3) {
                            strDecode2 = ProtoAdapter.STRING.decode(reader);
                        } else if (iNextTag == 4) {
                            try {
                                postContentTypeDecode = PostContentType.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e2) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e2.value));
                            }
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public RestOptions redact(RestOptions value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return RestOptions.copy$default(value, null, null, null, null, ByteString.EMPTY, 15, null);
            }
        };
    }
}
