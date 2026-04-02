.class public final Lcom/stripe/proto/model/common/HardwareModelExt;
.super Ljava/lang/Object;
.source "HardwareModelExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u0004*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\t*\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u001a\u0010\u0003\u001a\u00020\n*\u00020\n2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/stripe/proto/model/common/HardwareModelExt;",
        "",
        "()V",
        "addHardwareModel",
        "Lokhttp3/FormBody$Builder;",
        "message",
        "Lcom/stripe/proto/model/common/HardwareModel;",
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
.field public static final INSTANCE:Lcom/stripe/proto/model/common/HardwareModelExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/stripe/proto/model/common/HardwareModelExt;

    invoke-direct {v0}, Lcom/stripe/proto/model/common/HardwareModelExt;-><init>()V

    sput-object v0, Lcom/stripe/proto/model/common/HardwareModelExt;->INSTANCE:Lcom/stripe/proto/model/common/HardwareModelExt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addHardwareModel(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/HardwareModel;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    if-eqz v0, :cond_0

    .line 44
    sget-object v1, Lcom/stripe/proto/model/common/UnknownHardwareExt;->INSTANCE:Lcom/stripe/proto/model/common/UnknownHardwareExt;

    const-string v2, "unknown_hardware"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/UnknownHardwareExt;->addUnknownHardware(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/UnknownHardware;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 46
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    if-eqz v0, :cond_1

    .line 47
    const-string v1, "verifone_hardware"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/common/VerifoneHardware;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 49
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    if-eqz v0, :cond_2

    .line 50
    sget-object v1, Lcom/stripe/proto/model/common/POSInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/POSInfoExt;

    const-string v2, "pos_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/POSInfoExt;->addPOSInfo(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/POSInfo;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 52
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    if-eqz v0, :cond_3

    .line 53
    const-string v1, "bbpos_hardware"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/common/BBPosHardware;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 55
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    if-eqz v0, :cond_4

    .line 56
    sget-object v1, Lcom/stripe/proto/model/common/SimulatedHardwareExt;->INSTANCE:Lcom/stripe/proto/model/common/SimulatedHardwareExt;

    const-string v2, "simulated_hardware"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/SimulatedHardwareExt;->addSimulatedHardware(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/SimulatedHardware;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 58
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    if-eqz v0, :cond_5

    .line 59
    sget-object v1, Lcom/stripe/proto/model/common/COTSHardwareExt;->INSTANCE:Lcom/stripe/proto/model/common/COTSHardwareExt;

    const-string v2, "cots_hardware"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/COTSHardwareExt;->addCOTSHardware(Lokhttp3/FormBody$Builder;Lcom/stripe/proto/model/common/COTSHardware;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 61
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    if-eqz v0, :cond_6

    .line 62
    const-string v1, "sunmi_hardware"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/common/SunmiHardware;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 64
    :cond_6
    iget-object p2, p2, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    if-eqz p2, :cond_7

    .line 65
    const-string v0, "morph_hardware"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/model/common/MorphHardware;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :cond_7
    return-object p1
.end method

.method public final addHardwareModel(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/HardwareModel;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    if-eqz v0, :cond_0

    .line 16
    sget-object v1, Lcom/stripe/proto/model/common/UnknownHardwareExt;->INSTANCE:Lcom/stripe/proto/model/common/UnknownHardwareExt;

    const-string v2, "unknown_hardware"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/UnknownHardwareExt;->addUnknownHardware(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/UnknownHardware;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 18
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    if-eqz v0, :cond_1

    .line 19
    const-string v1, "verifone_hardware"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/common/VerifoneHardware;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 21
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    if-eqz v0, :cond_2

    .line 22
    sget-object v1, Lcom/stripe/proto/model/common/POSInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/POSInfoExt;

    const-string v2, "pos_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/POSInfoExt;->addPOSInfo(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/POSInfo;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 24
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    if-eqz v0, :cond_3

    .line 25
    const-string v1, "bbpos_hardware"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/common/BBPosHardware;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 27
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    if-eqz v0, :cond_4

    .line 28
    sget-object v1, Lcom/stripe/proto/model/common/SimulatedHardwareExt;->INSTANCE:Lcom/stripe/proto/model/common/SimulatedHardwareExt;

    const-string v2, "simulated_hardware"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/SimulatedHardwareExt;->addSimulatedHardware(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/SimulatedHardware;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 30
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    if-eqz v0, :cond_5

    .line 31
    sget-object v1, Lcom/stripe/proto/model/common/COTSHardwareExt;->INSTANCE:Lcom/stripe/proto/model/common/COTSHardwareExt;

    const-string v2, "cots_hardware"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/COTSHardwareExt;->addCOTSHardware(Lokhttp3/HttpUrl$Builder;Lcom/stripe/proto/model/common/COTSHardware;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 33
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    if-eqz v0, :cond_6

    .line 34
    const-string v1, "sunmi_hardware"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/common/SunmiHardware;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 36
    :cond_6
    iget-object p2, p2, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    if-eqz p2, :cond_7

    .line 37
    const-string v0, "morph_hardware"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/model/common/MorphHardware;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :cond_7
    return-object p1
.end method

.method public final addHardwareModel(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/HardwareModel;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->unknown_hardware:Lcom/stripe/proto/model/common/UnknownHardware;

    if-eqz v0, :cond_0

    .line 72
    sget-object v1, Lcom/stripe/proto/model/common/UnknownHardwareExt;->INSTANCE:Lcom/stripe/proto/model/common/UnknownHardwareExt;

    const-string v2, "unknown_hardware"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/UnknownHardwareExt;->addUnknownHardware(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/UnknownHardware;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 74
    :cond_0
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->verifone_hardware:Lcom/stripe/proto/model/common/VerifoneHardware;

    if-eqz v0, :cond_1

    .line 75
    const-string v1, "verifone_hardware"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/common/VerifoneHardware;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 77
    :cond_1
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->pos_info:Lcom/stripe/proto/model/common/POSInfo;

    if-eqz v0, :cond_2

    .line 78
    sget-object v1, Lcom/stripe/proto/model/common/POSInfoExt;->INSTANCE:Lcom/stripe/proto/model/common/POSInfoExt;

    const-string v2, "pos_info"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/POSInfoExt;->addPOSInfo(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/POSInfo;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 80
    :cond_2
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->bbpos_hardware:Lcom/stripe/proto/model/common/BBPosHardware;

    if-eqz v0, :cond_3

    .line 81
    const-string v1, "bbpos_hardware"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/common/BBPosHardware;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 83
    :cond_3
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->simulated_hardware:Lcom/stripe/proto/model/common/SimulatedHardware;

    if-eqz v0, :cond_4

    .line 84
    sget-object v1, Lcom/stripe/proto/model/common/SimulatedHardwareExt;->INSTANCE:Lcom/stripe/proto/model/common/SimulatedHardwareExt;

    const-string v2, "simulated_hardware"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/SimulatedHardwareExt;->addSimulatedHardware(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/SimulatedHardware;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 86
    :cond_4
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->cots_hardware:Lcom/stripe/proto/model/common/COTSHardware;

    if-eqz v0, :cond_5

    .line 87
    sget-object v1, Lcom/stripe/proto/model/common/COTSHardwareExt;->INSTANCE:Lcom/stripe/proto/model/common/COTSHardwareExt;

    const-string v2, "cots_hardware"

    invoke-static {v2, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/stripe/proto/model/common/COTSHardwareExt;->addCOTSHardware(Lokhttp3/MultipartBody$Builder;Lcom/stripe/proto/model/common/COTSHardware;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 89
    :cond_5
    iget-object v0, p2, Lcom/stripe/proto/model/common/HardwareModel;->sunmi_hardware:Lcom/stripe/proto/model/common/SunmiHardware;

    if-eqz v0, :cond_6

    .line 90
    const-string v1, "sunmi_hardware"

    invoke-static {v1, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/stripe/proto/model/common/SunmiHardware;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 92
    :cond_6
    iget-object p2, p2, Lcom/stripe/proto/model/common/HardwareModel;->morph_hardware:Lcom/stripe/proto/model/common/MorphHardware;

    if-eqz p2, :cond_7

    .line 93
    const-string v0, "morph_hardware"

    invoke-static {v0, p3}, Lcom/stripe/wirecrpc/WirecrpcTypeGenExtKt;->wrapWith(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/stripe/proto/model/common/MorphHardware;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    :cond_7
    return-object p1
.end method
