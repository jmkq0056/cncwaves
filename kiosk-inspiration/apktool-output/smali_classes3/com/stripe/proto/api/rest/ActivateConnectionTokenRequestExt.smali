.class public final Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;
.super Ljava/lang/Object;
.source "ActivateConnectionTokenRequestExt.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActivateConnectionTokenRequestExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivateConnectionTokenRequestExt.kt\ncom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,142:1\n1855#2,2:143\n1855#2,2:145\n1855#2,2:147\n*S KotlinDebug\n*F\n+ 1 ActivateConnectionTokenRequestExt.kt\ncom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt\n*L\n44#1:143,2\n87#1:145,2\n130#1:147,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;",
        "",
        "()V",
        "addActivateConnectionTokenRequest",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;",
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
.field public static final INSTANCE:Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;

    invoke-direct {v0}, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;->INSTANCE:Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequestExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addActivateConnectionTokenRequest(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 58
    const-string v1, "pos_device_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 60
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 61
    const-string v1, "device_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 63
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 64
    const-string v1, "device_serial_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 66
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_3

    .line 67
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "reader"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 69
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_4

    .line 70
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "reader_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 72
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_5

    .line 73
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "pos_device_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 75
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_6

    .line 76
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "pos_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 78
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    if-eqz v0, :cond_7

    .line 79
    sget-object v1, Lcom/stripe/proto/api/rest/ReportedReaderConfigExt;->INSTANCE:Lcom/stripe/proto/api/rest/ReportedReaderConfigExt;

    const-string v2, "reported_reader_config"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/ReportedReaderConfigExt;->addReportedReaderConfig(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 81
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 82
    const-string v1, "register_to_location"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 84
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_9

    .line 85
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "pos_secondary_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 87
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 145
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand"

    invoke-static {v3, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 90
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 91
    const-string v1, "generate_offline_stripe_session_token"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 93
    :cond_b
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz p2, :cond_c

    .line 94
    const-string v0, "connection_type"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/ConnectionType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_c
    return-object p1
.end method

.method public final addActivateConnectionTokenRequest(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 15
    const-string v1, "pos_device_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 17
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 18
    const-string v1, "device_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 20
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 21
    const-string v1, "device_serial_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 23
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_3

    .line 24
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "reader"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 26
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_4

    .line 27
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "reader_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 29
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_5

    .line 30
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "pos_device_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 32
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_6

    .line 33
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "pos_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 35
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    if-eqz v0, :cond_7

    .line 36
    sget-object v1, Lcom/stripe/proto/api/rest/ReportedReaderConfigExt;->INSTANCE:Lcom/stripe/proto/api/rest/ReportedReaderConfigExt;

    const-string v2, "reported_reader_config"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/ReportedReaderConfigExt;->addReportedReaderConfig(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 38
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 39
    const-string v1, "register_to_location"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 41
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_9

    .line 42
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "pos_secondary_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 44
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 143
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand"

    invoke-static {v3, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_0

    .line 47
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 48
    const-string v1, "generate_offline_stripe_session_token"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 50
    :cond_b
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz p2, :cond_c

    .line 51
    const-string v0, "connection_type"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/ConnectionType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_c
    return-object p1
.end method

.method public final addActivateConnectionTokenRequest(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    const-string v1, "pos_device_id"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 103
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_type:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 104
    const-string v1, "device_type"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 106
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->device_serial_number:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 107
    const-string v1, "device_serial_number"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 109
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_3

    .line 110
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "reader"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 112
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reader_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_4

    .line 113
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "reader_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 115
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_device_info:Lcom/stripe/proto/model/common/DeviceInfo;

    if-eqz v0, :cond_5

    .line 116
    sget-object v1, Lcom/stripe/proto/model/common/DeviceInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/DeviceInfoExt;

    const-string v2, "pos_device_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/DeviceInfoExt;->addDeviceInfo(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/DeviceInfo;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 118
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_6

    .line 119
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "pos_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 121
    :cond_6
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->reported_reader_config:Lcom/stripe/proto/api/rest/ReportedReaderConfig;

    if-eqz v0, :cond_7

    .line 122
    sget-object v1, Lcom/stripe/proto/api/rest/ReportedReaderConfigExt;->INSTANCE:Lcom/stripe/proto/api/rest/ReportedReaderConfigExt;

    const-string v2, "reported_reader_config"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/api/rest/ReportedReaderConfigExt;->addReportedReaderConfig(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/api/rest/ReportedReaderConfig;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 124
    :cond_7
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->register_to_location:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 125
    const-string v1, "register_to_location"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 127
    :cond_8
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->pos_secondary_version_info:Lcom/stripe/proto/model/common/VersionInfoPb;

    if-eqz v0, :cond_9

    .line 128
    sget-object v1, Lcom/stripe/proto/model/common/VersionInfoPbExt;->INSTANCE:Lcom/stripe/proto/model/common/VersionInfoPbExt;

    const-string v2, "pos_secondary_version_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/VersionInfoPbExt;->addVersionInfoPb(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/VersionInfoPb;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 130
    :cond_9
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->expand:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 147
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expand"

    invoke-static {v3, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 133
    :cond_a
    iget-object v0, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->generate_offline_stripe_session_token:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 134
    const-string v1, "generate_offline_stripe_session_token"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 136
    :cond_b
    iget-object p2, p2, Lcom/stripe/proto/api/rest/ActivateConnectionTokenRequest;->connection_type:Lcom/stripe/proto/api/rest/ConnectionType;

    if-eqz p2, :cond_c

    .line 137
    const-string v0, "connection_type"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/api/rest/ConnectionType;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_c
    return-object p1
.end method
