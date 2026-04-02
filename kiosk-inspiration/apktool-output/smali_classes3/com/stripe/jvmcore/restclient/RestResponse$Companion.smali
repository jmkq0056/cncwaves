.class public final Lcom/stripe/jvmcore/restclient/RestResponse$Companion;
.super Ljava/lang/Object;
.source "RestResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/jvmcore/restclient/RestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRestResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RestResponse.kt\ncom/stripe/jvmcore/restclient/RestResponse$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n1#2:246\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002Js\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u0002H\t0\u0007\"\u0012\u0008\u0002\u0010\u0008*\u000c\u0012\u0004\u0012\u0002H\u0008\u0012\u0002\u0008\u00030\n\"\u0012\u0008\u0003\u0010\t*\u000c\u0012\u0004\u0012\u0002H\t\u0012\u0002\u0008\u00030\n*\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\u000f2\u0006\u0010\u0010\u001a\u0002H\t2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u0014\u00a2\u0006\u0002\u0010\u0015R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/stripe/jvmcore/restclient/RestResponse$Companion;",
        "",
        "()V",
        "KEY_STRIPE_SHOULD_RETRY",
        "",
        "TAG",
        "toRestResponse",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "M",
        "E",
        "Lcom/squareup/wire/Message;",
        "Lokhttp3/Response;",
        "moshi",
        "Lcom/squareup/moshi/Moshi;",
        "messageType",
        "Ljava/lang/Class;",
        "error",
        "customMessageRedactor",
        "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "(Lokhttp3/Response;Lcom/squareup/moshi/Moshi;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/restclient/RestResponse;",
        "base"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/stripe/jvmcore/restclient/RestResponse$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toRestResponse(Lokhttp3/Response;Lcom/squareup/moshi/Moshi;Ljava/lang/Class;Lcom/squareup/wire/Message;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/squareup/wire/Message<",
            "TM;*>;E:",
            "Lcom/squareup/wire/Message<",
            "TE;*>;>(",
            "Lokhttp3/Response;",
            "Lcom/squareup/moshi/Moshi;",
            "Ljava/lang/Class<",
            "TM;>;TE;",
            "Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;",
            "Lcom/stripe/logwriter/LogWriter;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TM;TE;>;"
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v8, p6

    const-string v1, "<this>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "moshi"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "messageType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "error"

    move-object/from16 v3, p4

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "logWriter"

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    if-nez v1, :cond_0

    .line 119
    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR_UNKNOWN_STATE:Lcom/stripe/proto/model/rest/StatusCode;

    goto :goto_0

    :cond_0
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_1

    .line 120
    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->OK:Lcom/stripe/proto/model/rest/StatusCode;

    goto :goto_0

    :cond_1
    const/16 v4, 0x190

    if-ne v1, v4, :cond_2

    .line 121
    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->BAD_REQUEST:Lcom/stripe/proto/model/rest/StatusCode;

    goto :goto_0

    :cond_2
    const/16 v4, 0x191

    if-ne v1, v4, :cond_3

    .line 122
    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->UNAUTHORIZED:Lcom/stripe/proto/model/rest/StatusCode;

    goto :goto_0

    :cond_3
    const/16 v4, 0x192

    if-ne v1, v4, :cond_4

    .line 123
    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->REQUEST_FAILED:Lcom/stripe/proto/model/rest/StatusCode;

    goto :goto_0

    :cond_4
    const/16 v4, 0x193

    if-ne v1, v4, :cond_5

    .line 124
    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->FORBIDDEN:Lcom/stripe/proto/model/rest/StatusCode;

    goto :goto_0

    :cond_5
    const/16 v4, 0x194

    if-ne v1, v4, :cond_6

    .line 125
    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->NOT_FOUND:Lcom/stripe/proto/model/rest/StatusCode;

    goto :goto_0

    :cond_6
    const/16 v4, 0x199

    if-ne v1, v4, :cond_7

    .line 126
    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->CONFLICT:Lcom/stripe/proto/model/rest/StatusCode;

    goto :goto_0

    :cond_7
    const/16 v4, 0x1f4

    if-ne v1, v4, :cond_8

    .line 127
    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->SERVER_ERROR:Lcom/stripe/proto/model/rest/StatusCode;

    goto :goto_0

    :cond_8
    const/16 v4, 0x1f6

    if-gt v4, v1, :cond_9

    const/16 v4, 0x1f9

    if-ge v1, v4, :cond_9

    .line 128
    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->SERVER_ERROR:Lcom/stripe/proto/model/rest/StatusCode;

    goto :goto_0

    .line 129
    :cond_9
    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->UNKNOWN_STATUS:Lcom/stripe/proto/model/rest/StatusCode;

    .line 133
    :goto_0
    new-instance v4, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v4}, Lokhttp3/HttpUrl$Builder;-><init>()V

    .line 134
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    .line 135
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    .line 137
    new-instance v6, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lokhttp3/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/stripe/jvmcore/redaction/ResourceIdRedactor;->redact()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v6, v7}, Lkotlin/text/StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 136
    invoke-virtual {v4, v6}, Lokhttp3/HttpUrl$Builder;->addPathSegments(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v4

    .line 139
    invoke-virtual {v4}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {p1}, Lokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Lokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v9

    sub-long v9, v6, v9

    .line 144
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "REST response with code "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " received"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "RestResponse"

    invoke-interface {v8, v11, v6}, Lcom/stripe/logwriter/LogWriter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v6

    const-string v7, "request-id"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v12, "request-id: "

    invoke-direct {v7, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v11, v6}, Lcom/stripe/logwriter/LogWriter;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_a
    invoke-virtual {p1}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v6

    invoke-static {v6}, Lcom/stripe/jvmcore/restclient/RestResponseKt;->access$toCaseInsensitive(Lokhttp3/Headers;)Ljava/util/TreeMap;

    move-result-object v7

    .line 150
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    if-eqz v2, :cond_d

    move-object v12, v2

    check-cast v12, Ljava/io/Closeable;

    :try_start_0
    move-object v2, v12

    check-cast v2, Lokhttp3/ResponseBody;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :try_start_1
    sget-object v6, Lcom/stripe/proto/model/rest/StatusCode;->OK:Lcom/stripe/proto/model/rest/StatusCode;

    if-ne v1, v6, :cond_c

    .line 153
    const-class v3, Lcom/squareup/wire/AnyMessage;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 156
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/wire/ProtoAdapter;->encodeByteString(Ljava/lang/Object;)Lokio/ByteString;

    move-result-object v0

    .line 157
    new-instance v2, Lcom/squareup/wire/AnyMessage;

    sget-object v3, Lcom/squareup/wire/ProtoAdapter;->STRING_VALUE:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {v3}, Lcom/squareup/wire/ProtoAdapter;->getTypeUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v2, v3, v0}, Lcom/squareup/wire/AnyMessage;-><init>(Ljava/lang/String;Lokio/ByteString;)V

    check-cast v2, Lcom/squareup/wire/Message;

    goto :goto_1

    .line 159
    :cond_b
    invoke-virtual/range {p2 .. p3}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 158
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v0

    check-cast v2, Lcom/squareup/wire/Message;

    .line 161
    :goto_1
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    .line 166
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, p2

    move-object v3, v1

    move-object v1, v2

    move-object v2, v7

    move-object/from16 v7, p5

    .line 161
    :try_start_2
    invoke-direct/range {v0 .. v7}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;-><init>(Lcom/squareup/wire/Message;Ljava/util/TreeMap;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v2

    move-object v1, v3

    :try_start_3
    check-cast v0, Lcom/stripe/jvmcore/restclient/RestResponse;

    goto :goto_3

    :catch_0
    move-object v7, v2

    move-object v2, v3

    goto :goto_2

    .line 171
    :cond_c
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/squareup/moshi/Moshi;->adapter(Ljava/lang/Class;)Lcom/squareup/moshi/JsonAdapter;

    move-result-object v0

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/moshi/JsonAdapter;->fromJson(Lokio/BufferedSource;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/squareup/wire/Message;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v1

    move-object v1, v0

    .line 172
    :try_start_4
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v4

    .line 176
    :try_start_5
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v5, p2

    move-object/from16 v6, p5

    .line 172
    invoke-direct/range {v0 .. v7}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;-><init>(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestResponse;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_1
    move-object v2, v1

    :catch_2
    :goto_2
    move-object v3, v4

    .line 183
    :catch_3
    :try_start_6
    const-string v0, "Failed to parse REST response"

    invoke-interface {v8, v11, v0}, Lcom/stripe/logwriter/LogWriter;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 184
    new-instance v2, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v6, p5

    move-object v4, v3

    move-object v3, v1

    invoke-direct/range {v2 .. v7}, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;-><init>(Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V

    move-object v0, v2

    check-cast v0, Lcom/stripe/jvmcore/restclient/RestResponse;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    const/4 v1, 0x0

    .line 150
    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v12, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_d
    move-object v2, v1

    .line 187
    new-instance v0, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object v5, v4

    move-object v4, v1

    move-object v1, v3

    move-object v3, v5

    move-object v5, p2

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;-><init>(Lcom/squareup/wire/Message;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;Ljava/util/TreeMap;)V

    .line 186
    check-cast v0, Lcom/stripe/jvmcore/restclient/RestResponse;

    return-object v0
.end method
