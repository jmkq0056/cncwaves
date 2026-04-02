.class public final Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "OfflineConfigPb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u001a\u0010\u0004\u001a\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005J\u0008\u0010\'\u001a\u00020\u0002H\u0016J\u0016\u0010\u0007\u001a\u00020\u00002\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008H\u0007J\u001a\u0010\t\u001a\u00020\u00002\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u0005J\u001a\u0010\u000b\u001a\u00020\u00002\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u0005J\u0014\u0010\u000c\u001a\u00020\u00002\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008J\u0014\u0010\r\u001a\u00020\u00002\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0008J\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u0010J\u0014\u0010\u0011\u001a\u00020\u00002\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008J\u0014\u0010\u0012\u001a\u00020\u00002\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008J\u0014\u0010\u0013\u001a\u00020\u00002\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008J\u0014\u0010\u0014\u001a\u00020\u00002\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0008J\u000e\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0016J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0016J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0016J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0016J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0010J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0016J\u001a\u0010\u001c\u001a\u00020\u00002\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001d0\u0005J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0010J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0010J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0016J\u001a\u0010!\u001a\u00020\u00002\u0012\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0\u0005J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0010J\u0010\u0010$\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0010H\u0007J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0010J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0006R\u001e\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n0\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u001d0\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010 \u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010!\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\"0\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010%\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010&\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "()V",
        "aid_to_offline_pin_response_auth_code",
        "",
        "",
        "cardholder_name_decline_values",
        "",
        "client_sdk_to_spos_setup_intent_support",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions;",
        "client_sdk_to_spos_support",
        "denylisted_cardholder_names",
        "denylisted_masked_pans",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;",
        "disable_forced_sca_flow",
        "",
        "expected_confirm_error_codes",
        "expected_create_error_codes",
        "expected_setup_intent_confirm_error_codes",
        "expected_setup_intent_create_error_codes",
        "forwarding_jitter_ms",
        "",
        "http_health_check_timeout_ms",
        "http_high_timeout_ms",
        "http_low_timeout_ms",
        "is_deferred_authorization_country",
        "max_reader_offline_threshold_days",
        "max_transaction_amount_by_currency",
        "",
        "mobile_wallet_on_setup_intents_enabled",
        "offline_pair_unseen_reader_circuit_breaker",
        "offline_stickiness_ms",
        "region_to_region_offline_config",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;",
        "setup_intents_enabled",
        "supports_quick_chip",
        "supports_sca",
        "tvr_mask",
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
.field public aid_to_offline_pin_response_auth_code:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cardholder_name_decline_values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public client_sdk_to_spos_setup_intent_support:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions;",
            ">;"
        }
    .end annotation
.end field

.field public client_sdk_to_spos_support:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions;",
            ">;"
        }
    .end annotation
.end field

.field public denylisted_cardholder_names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public denylisted_masked_pans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;",
            ">;"
        }
    .end annotation
.end field

.field public disable_forced_sca_flow:Z

.field public expected_confirm_error_codes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public expected_create_error_codes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public expected_setup_intent_confirm_error_codes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public expected_setup_intent_create_error_codes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public forwarding_jitter_ms:I

.field public http_health_check_timeout_ms:I

.field public http_high_timeout_ms:I

.field public http_low_timeout_ms:I

.field public is_deferred_authorization_country:Z

.field public max_reader_offline_threshold_days:I

.field public max_transaction_amount_by_currency:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mobile_wallet_on_setup_intents_enabled:Z

.field public offline_pair_unseen_reader_circuit_breaker:Z

.field public offline_stickiness_ms:I

.field public region_to_region_offline_config:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;",
            ">;"
        }
    .end annotation
.end field

.field public setup_intents_enabled:Z

.field public supports_quick_chip:Z

.field public supports_sca:Z

.field public tvr_mask:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2285
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 2290
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->max_transaction_amount_by_currency:Ljava/util/Map;

    .line 2305
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_confirm_error_codes:Ljava/util/List;

    .line 2314
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->aid_to_offline_pin_response_auth_code:Ljava/util/Map;

    .line 2317
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->tvr_mask:Ljava/lang/String;

    .line 2323
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_create_error_codes:Ljava/util/List;

    .line 2326
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->cardholder_name_decline_values:Ljava/util/List;

    .line 2329
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->region_to_region_offline_config:Ljava/util/Map;

    .line 2332
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->client_sdk_to_spos_support:Ljava/util/Map;

    .line 2335
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->denylisted_masked_pans:Ljava/util/List;

    .line 2338
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->denylisted_cardholder_names:Ljava/util/List;

    .line 2347
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_setup_intent_create_error_codes:Ljava/util/List;

    .line 2350
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_setup_intent_confirm_error_codes:Ljava/util/List;

    .line 2360
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->client_sdk_to_spos_setup_intent_support:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final aid_to_offline_pin_response_auth_code(Ljava/util/Map;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "aid_to_offline_pin_response_auth_code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2413
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->aid_to_offline_pin_response_auth_code:Ljava/util/Map;

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 2285
    invoke-virtual {p0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->build()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;
    .locals 30

    move-object/from16 v0, p0

    .line 2510
    new-instance v1, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    .line 2511
    iget v2, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->forwarding_jitter_ms:I

    .line 2512
    iget-object v3, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->max_transaction_amount_by_currency:Ljava/util/Map;

    .line 2513
    iget v4, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->offline_stickiness_ms:I

    .line 2514
    iget v5, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->http_low_timeout_ms:I

    .line 2515
    iget v6, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->http_high_timeout_ms:I

    .line 2516
    iget v7, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->http_health_check_timeout_ms:I

    .line 2517
    iget-object v8, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_confirm_error_codes:Ljava/util/List;

    .line 2518
    iget-boolean v9, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->supports_sca:Z

    .line 2519
    iget-boolean v10, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->supports_quick_chip:Z

    .line 2520
    iget-object v11, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->aid_to_offline_pin_response_auth_code:Ljava/util/Map;

    .line 2521
    iget-object v12, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->tvr_mask:Ljava/lang/String;

    .line 2522
    iget-boolean v13, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->is_deferred_authorization_country:Z

    .line 2523
    iget-object v14, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_create_error_codes:Ljava/util/List;

    .line 2524
    iget-object v15, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->cardholder_name_decline_values:Ljava/util/List;

    move-object/from16 v16, v1

    .line 2525
    iget-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->region_to_region_offline_config:Ljava/util/Map;

    move-object/from16 v17, v1

    .line 2526
    iget-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->client_sdk_to_spos_support:Ljava/util/Map;

    move-object/from16 v18, v1

    .line 2527
    iget-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->denylisted_masked_pans:Ljava/util/List;

    move-object/from16 v19, v1

    .line 2528
    iget-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->denylisted_cardholder_names:Ljava/util/List;

    move-object/from16 v20, v1

    .line 2529
    iget v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->max_reader_offline_threshold_days:I

    move/from16 v21, v1

    .line 2530
    iget-boolean v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->offline_pair_unseen_reader_circuit_breaker:Z

    move/from16 v22, v1

    .line 2531
    iget-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_setup_intent_create_error_codes:Ljava/util/List;

    move-object/from16 v23, v1

    .line 2532
    iget-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_setup_intent_confirm_error_codes:Ljava/util/List;

    move-object/from16 v24, v1

    .line 2533
    iget-boolean v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->setup_intents_enabled:Z

    move/from16 v25, v1

    .line 2534
    iget-boolean v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->mobile_wallet_on_setup_intents_enabled:Z

    move/from16 v26, v1

    .line 2535
    iget-object v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->client_sdk_to_spos_setup_intent_support:Ljava/util/Map;

    move-object/from16 v27, v1

    .line 2536
    iget-boolean v1, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->disable_forced_sca_flow:Z

    .line 2537
    invoke-virtual {v0}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v28

    move-object/from16 v29, v27

    move/from16 v27, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move-object/from16 v26, v29

    .line 2510
    invoke-direct/range {v1 .. v28}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;-><init>(ILjava/util/Map;IIIILjava/util/List;ZZLjava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IZLjava/util/List;Ljava/util/List;ZZLjava/util/Map;ZLokio/ByteString;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public final cardholder_name_decline_values(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "cardholder_name_decline_values is deprecated"
    .end annotation

    const-string v0, "cardholder_name_decline_values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2435
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2436
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->cardholder_name_decline_values:Ljava/util/List;

    return-object p0
.end method

.method public final client_sdk_to_spos_setup_intent_support(Ljava/util/Map;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "client_sdk_to_spos_setup_intent_support"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2498
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->client_sdk_to_spos_setup_intent_support:Ljava/util/Map;

    return-object p0
.end method

.method public final client_sdk_to_spos_support(Ljava/util/Map;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$SPosSdkSupportVersions;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "client_sdk_to_spos_support"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2446
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->client_sdk_to_spos_support:Ljava/util/Map;

    return-object p0
.end method

.method public final denylisted_cardholder_names(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "denylisted_cardholder_names"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2457
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2458
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->denylisted_cardholder_names:Ljava/util/List;

    return-object p0
.end method

.method public final denylisted_masked_pans(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$OfflinePanDenylistEntry;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "denylisted_masked_pans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2451
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2452
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->denylisted_masked_pans:Ljava/util/List;

    return-object p0
.end method

.method public final disable_forced_sca_flow(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2506
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->disable_forced_sca_flow:Z

    return-object p0
.end method

.method public final expected_confirm_error_codes(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "expected_confirm_error_codes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2396
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2397
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_confirm_error_codes:Ljava/util/List;

    return-object p0
.end method

.method public final expected_create_error_codes(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "expected_create_error_codes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2428
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2429
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_create_error_codes:Ljava/util/List;

    return-object p0
.end method

.method public final expected_setup_intent_confirm_error_codes(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "expected_setup_intent_confirm_error_codes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2482
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2483
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_setup_intent_confirm_error_codes:Ljava/util/List;

    return-object p0
.end method

.method public final expected_setup_intent_create_error_codes(Ljava/util/List;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "expected_setup_intent_create_error_codes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2476
    invoke-static {p1}, Lcom/squareup/wire/internal/Internal;->checkElementsNotNull(Ljava/util/List;)V

    .line 2477
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->expected_setup_intent_create_error_codes:Ljava/util/List;

    return-object p0
.end method

.method public final forwarding_jitter_ms(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2366
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->forwarding_jitter_ms:I

    return-object p0
.end method

.method public final http_health_check_timeout_ms(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2391
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->http_health_check_timeout_ms:I

    return-object p0
.end method

.method public final http_high_timeout_ms(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2386
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->http_high_timeout_ms:I

    return-object p0
.end method

.method public final http_low_timeout_ms(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2381
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->http_low_timeout_ms:I

    return-object p0
.end method

.method public final is_deferred_authorization_country(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2423
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->is_deferred_authorization_country:Z

    return-object p0
.end method

.method public final max_reader_offline_threshold_days(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2463
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->max_reader_offline_threshold_days:I

    return-object p0
.end method

.method public final max_transaction_amount_by_currency(Ljava/util/Map;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "max_transaction_amount_by_currency"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2371
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->max_transaction_amount_by_currency:Ljava/util/Map;

    return-object p0
.end method

.method public final mobile_wallet_on_setup_intents_enabled(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2493
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->mobile_wallet_on_setup_intents_enabled:Z

    return-object p0
.end method

.method public final offline_pair_unseen_reader_circuit_breaker(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2471
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->offline_pair_unseen_reader_circuit_breaker:Z

    return-object p0
.end method

.method public final offline_stickiness_ms(I)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2376
    iput p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->offline_stickiness_ms:I

    return-object p0
.end method

.method public final region_to_region_offline_config(Ljava/util/Map;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$RegionOfflineConfigPb;",
            ">;)",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;"
        }
    .end annotation

    const-string v0, "region_to_region_offline_config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2441
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->region_to_region_offline_config:Ljava/util/Map;

    return-object p0
.end method

.method public final setup_intents_enabled(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2488
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->setup_intents_enabled:Z

    return-object p0
.end method

.method public final supports_quick_chip(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "supports_quick_chip is deprecated"
    .end annotation

    .line 2408
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->supports_quick_chip:Z

    return-object p0
.end method

.method public final supports_sca(Z)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 0

    .line 2402
    iput-boolean p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->supports_sca:Z

    return-object p0
.end method

.method public final tvr_mask(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;
    .locals 1

    const-string v0, "tvr_mask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2418
    iput-object p1, p0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb$Builder;->tvr_mask:Ljava/lang/String;

    return-object p0
.end method
