.class public final Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequestExt;
.super Ljava/lang/Object;
.source "RedeemForOfflineConnectionTokenRequestExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequestExt;",
        "",
        "()V",
        "addRedeemForOfflineConnectionTokenRequest",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;",
        "context",
        "",
        "Lokhttp3/HttpUrl$Builder;",
        "Lokhttp3/MultipartBody$Builder;",
        "codegen-terminalsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequestExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequestExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequestExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequestExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addRedeemForOfflineConnectionTokenRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 45
    const-string v1, "device_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 47
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 48
    const-string v1, "device_serial_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 50
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 51
    const-string v1, "location"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 53
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 54
    const-string v2, "reader_last_activated_online"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 56
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 57
    const-string v1, "reader_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 59
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_5

    .line 60
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "pos_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 62
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_6

    .line 63
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "pos_device_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 65
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_7

    .line 66
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "reader"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 68
    :cond_7
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz p2, :cond_8

    .line 69
    const-string v0, "connection_type"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/ConnectionType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_8
    return-object p1
.end method

.method public final addRedeemForOfflineConnectionTokenRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 14
    const-string v1, "device_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 16
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 17
    const-string v1, "device_serial_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 19
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 20
    const-string v1, "location"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 22
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 23
    const-string v2, "reader_last_activated_online"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 25
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 26
    const-string v1, "reader_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 28
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_5

    .line 29
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "pos_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 31
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_6

    .line 32
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "pos_device_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 34
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_7

    .line 35
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "reader"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 37
    :cond_7
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz p2, :cond_8

    .line 38
    const-string v0, "connection_type"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/ConnectionType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_8
    return-object p1
.end method

.method public final addRedeemForOfflineConnectionTokenRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    const-string v1, "device_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 78
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 79
    const-string v1, "device_serial_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 81
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->location:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 82
    const-string v1, "location"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 84
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_last_activated_online:Ljava/lang/Long;

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 85
    const-string v2, "reader_last_activated_online"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 87
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 88
    const-string v1, "reader_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 90
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_5

    .line 91
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "pos_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 93
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_6

    .line 94
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "pos_device_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 96
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_7

    .line 97
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "reader"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 99
    :cond_7
    iget-object p2, p2, Lcom/stripe/proto/api/rest/RedeemForOfflineConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz p2, :cond_8

    .line 100
    const-string v0, "connection_type"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/ConnectionType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_8
    return-object p1
.end method
