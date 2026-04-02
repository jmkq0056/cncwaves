.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ApiWifiConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\u0002H\u0016J\u0010\u0010\u0004\u001a\u00020\u00002\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0010\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tJ\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bR\u0014\u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;",
        "()V",
        "enterprise_peap_wifi_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;",
        "enterprise_tls_wifi_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;",
        "personal_wifi_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;",
        "type",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;",
        "build",
        "terminal_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public enterprise_peap_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;

.field public enterprise_tls_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;

.field public personal_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;

.field public type:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 150
    sget-object v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;->SECURITY_TYPE_INVALID:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->type:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 139
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;
    .locals 6

    .line 187
    new-instance v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;

    .line 188
    iget-object v1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->personal_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;

    .line 189
    iget-object v2, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->enterprise_peap_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;

    .line 190
    iget-object v3, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->enterprise_tls_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;

    .line 191
    iget-object v4, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->type:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;

    .line 192
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v5

    .line 187
    invoke-direct/range {v0 .. v5}, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig;-><init>(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;Lokio/ByteString;)V

    return-object v0
.end method

.method public final enterprise_peap_wifi_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->enterprise_peap_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;

    const/4 p1, 0x0

    .line 172
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->personal_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;

    .line 173
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->enterprise_tls_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;

    return-object p0
.end method

.method public final enterprise_tls_wifi_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->enterprise_tls_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;

    const/4 p1, 0x0

    .line 182
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->personal_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;

    .line 183
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->enterprise_peap_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;

    return-object p0
.end method

.method public final personal_wifi_config(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->personal_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$PersonalPSKWifiConfig;

    const/4 p1, 0x0

    .line 162
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->enterprise_peap_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterprisePEAPWifiConfig;

    .line 163
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->enterprise_tls_wifi_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$EnterpriseTLSWifiConfig;

    return-object p0
.end method

.method public final type(Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;)Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$Builder;->type:Lcom/stripe/proto/terminal/terminal/pub/message/config/ApiWifiConfig$SecurityType;

    return-object p0
.end method
