.class public interface abstract Lcom/example/digitalkiosk/network/BackendService;
.super Ljava/lang/Object;
.source "BackendService.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00bc\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008f\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0006H\'JB\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00032\u0018\u0008\u0001\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u000cj\u0008\u0012\u0004\u0012\u00020\u0006`\r2\u0018\u0008\u0001\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u000cj\u0008\u0012\u0004\u0012\u00020\u0006`\rH\'J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0003H\'J/\u0010\u0011\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00060\u000cj\u0008\u0012\u0004\u0012\u00020\u0006`\r0\u00032\n\u0008\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010\u0014J/\u0010\u0015\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00160\u000cj\u0008\u0012\u0004\u0012\u00020\u0016`\r0\u00032\n\u0008\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010\u0014J/\u0010\u0017\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00160\u000cj\u0008\u0012\u0004\u0012\u00020\u0016`\r0\u00032\n\u0008\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010\u0014J\u000e\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0003H\'J\u001e\u0010\u001a\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001b0\u000cj\u0008\u0012\u0004\u0012\u00020\u001b`\r0\u0003H\'JB\u0010\u001c\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001d0\u000cj\u0008\u0012\u0004\u0012\u00020\u001d`\r0\u00032\u0018\u0008\u0001\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u000cj\u0008\u0012\u0004\u0012\u00020\u0006`\r2\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u0013H\'J(\u0010 \u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001d0\u000cj\u0008\u0012\u0004\u0012\u00020\u001d`\r0\u00032\u0008\u0008\u0001\u0010\u001f\u001a\u00020\u0013H\'J/\u0010!\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\"0\u000cj\u0008\u0012\u0004\u0012\u00020\"`\r0\u00032\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010\u0014J9\u0010#\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\"0\u000cj\u0008\u0012\u0004\u0012\u00020\"`\r0\u00032\u0008\u0008\u0001\u0010$\u001a\u00020\u00132\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010%J;\u0010&\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\'0\u000cj\u0008\u0012\u0004\u0012\u00020\'`\r0\u00032\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u00132\n\u0008\u0001\u0010(\u001a\u0004\u0018\u00010\u0006H\'\u00a2\u0006\u0002\u0010)JE\u0010*\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\'0\u000cj\u0008\u0012\u0004\u0012\u00020\'`\r0\u00032\u0008\u0008\u0001\u0010$\u001a\u00020\u00132\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u00132\n\u0008\u0001\u0010(\u001a\u0004\u0018\u00010\u0006H\'\u00a2\u0006\u0002\u0010+J3\u0010,\u001a\u0008\u0012\u0004\u0012\u00020-0\u00032\u0008\u0008\u0001\u0010.\u001a\u00020\u00132\u0008\u0008\u0001\u0010/\u001a\u00020\u00062\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u00100J,\u00101\u001a\u0008\u0012\u0004\u0012\u0002020\u00032\u0008\u0008\u0001\u00103\u001a\u0002042\u0008\u0008\u0001\u00105\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0013H\'J,\u00106\u001a\u0008\u0012\u0004\u0012\u0002020\u00032\u0008\u0008\u0001\u00107\u001a\u00020\u00132\u0008\u0008\u0001\u00105\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0013H\'J9\u00108\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\'0\u000cj\u0008\u0012\u0004\u0012\u00020\'`\r0\u00032\u0008\u0008\u0001\u00109\u001a\u00020\u00132\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010%J,\u0010:\u001a\u0008\u0012\u0004\u0012\u0002020\u00032\u0008\u0008\u0001\u0010;\u001a\u00020\u00132\u0008\u0008\u0001\u00105\u001a\u00020\u00132\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0013H\'J\u001f\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00032\n\u0008\u0001\u0010=\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010\u0014Jq\u0010>\u001a\u0008\u0012\u0004\u0012\u00020?0\u00032\u0008\u0008\u0001\u0010@\u001a\u00020\u00062\n\u0008\u0001\u0010A\u001a\u0004\u0018\u00010\u00132\n\u0008\u0001\u0010B\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010C\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010D\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010;\u001a\u0004\u0018\u00010\u00132\n\u0008\u0001\u00105\u001a\u0004\u0018\u00010\u00132\n\u0008\u0001\u0010E\u001a\u0004\u0018\u00010\u0006H\'\u00a2\u0006\u0002\u0010FJ/\u0010G\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020H0\u000cj\u0008\u0012\u0004\u0012\u00020H`\r0\u00032\n\u0008\u0001\u0010I\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010\u0014J3\u0010J\u001a\u0008\u0012\u0004\u0012\u00020H0\u00032\u0008\u0008\u0001\u00109\u001a\u00020\u00132\u0008\u0008\u0001\u0010K\u001a\u00020\u00062\n\u0008\u0001\u0010=\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u00100J\u0018\u0010L\u001a\u0008\u0012\u0004\u0012\u00020M0\u00032\u0008\u0008\u0001\u0010N\u001a\u00020\u0006H\'J\u000e\u0010O\u001a\u0008\u0012\u0004\u0012\u00020P0\u0003H\'J7\u0010Q\u001a\u0008\u0012\u0004\u0012\u00020R0\u00032\n\u0008\u0001\u0010S\u001a\u0004\u0018\u00010\u00132\n\u0008\u0001\u0010;\u001a\u0004\u0018\u00010\u00132\n\u0008\u0001\u00105\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010TJo\u0010U\u001a\u0008\u0012\u0004\u0012\u00020V0\u00032\u0008\u0008\u0001\u0010W\u001a\u00020\u00062\u0008\u0008\u0001\u0010@\u001a\u00020\u00062\n\u0008\u0001\u0010A\u001a\u0004\u0018\u00010\u00132\n\u0008\u0001\u0010B\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010C\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010D\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010;\u001a\u0004\u0018\u00010\u00132\n\u0008\u0001\u00105\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010XJy\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020?0\u00032\u0008\u0008\u0001\u0010Z\u001a\u00020\u00062\u0008\u0008\u0001\u0010W\u001a\u00020\u00062\u0008\u0008\u0001\u0010@\u001a\u00020\u00062\n\u0008\u0001\u0010A\u001a\u0004\u0018\u00010\u00132\n\u0008\u0001\u0010B\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010C\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010D\u001a\u0004\u0018\u00010\u00062\n\u0008\u0001\u0010;\u001a\u0004\u0018\u00010\u00132\n\u0008\u0001\u00105\u001a\u0004\u0018\u00010\u0013H\'\u00a2\u0006\u0002\u0010[J\"\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020?0\u00032\u0008\u0008\u0001\u0010Z\u001a\u00020\u00062\u0008\u0008\u0001\u0010]\u001a\u00020\u0013H\'J\u001a\u0010^\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00032\n\u0008\u0001\u0010_\u001a\u0004\u0018\u00010\u0006H\'J\u0018\u0010`\u001a\u0008\u0012\u0004\u0012\u00020R0\u00032\u0008\u0008\u0001\u0010Z\u001a\u00020\u0006H\'J\u001e\u0010a\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020b0\u000cj\u0008\u0012\u0004\u0012\u00020b`\r0\u0003H\'J\u0018\u0010c\u001a\u0008\u0012\u0004\u0012\u00020?0\u00032\u0008\u0008\u0001\u00109\u001a\u00020\u0013H\'J\u0018\u0010d\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00032\u0008\u0008\u0001\u0010K\u001a\u00020\u0006H\'J\u000e\u0010e\u001a\u0008\u0012\u0004\u0012\u00020f0\u0003H\'\u00a8\u0006g"
    }
    d2 = {
        "Lcom/example/digitalkiosk/network/BackendService;",
        "",
        "login",
        "Lretrofit2/Call;",
        "Lcom/example/digitalkiosk/models/LoginToken;",
        "kiosk_id",
        "",
        "password",
        "app_version",
        "printer_data",
        "Ljava/lang/Void;",
        "usb_printers",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "bluetooth_printers",
        "verfiy",
        "Lcom/example/digitalkiosk/models/Kiosk;",
        "main_banners",
        "language",
        "",
        "(Ljava/lang/Integer;)Lretrofit2/Call;",
        "inner_banners",
        "Lcom/example/digitalkiosk/models/BannerSlide;",
        "handicap_banners",
        "kiosk_settings",
        "Lcom/example/digitalkiosk/models/KioskSetting;",
        "get_languages",
        "Lcom/example/digitalkiosk/models/Language;",
        "get_translations",
        "Lcom/example/digitalkiosk/models/Translation;",
        "terms",
        "language_id",
        "get_all_translations",
        "get_categories",
        "Lcom/example/digitalkiosk/models/Category;",
        "get_sub_categories",
        "category_id",
        "(ILjava/lang/Integer;)Lretrofit2/Call;",
        "get_most_selling_items",
        "Lcom/example/digitalkiosk/models/Item;",
        "timezone",
        "(Ljava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;",
        "get_category_items",
        "(ILjava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;",
        "get_item_details",
        "Lcom/example/digitalkiosk/models/ItemDetails;",
        "item_id",
        "item_type",
        "(ILjava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;",
        "add_to_cart",
        "Lcom/example/digitalkiosk/models/Cart;",
        "item_details",
        "Lcom/example/digitalkiosk/models/ItemToAdd;",
        "voucher",
        "remove_from_cart",
        "cart_item_id",
        "get_sides",
        "id",
        "get_cart",
        "bag_added",
        "empty_cart",
        "reserved_table",
        "create_order",
        "Lcom/example/digitalkiosk/models/Order;",
        "type",
        "dinein_table",
        "pickup_time",
        "pickup_number",
        "payment_method",
        "unpaid",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;",
        "get_tables",
        "Lcom/example/digitalkiosk/models/Table;",
        "my_table",
        "update_table",
        "status",
        "verify_voucher",
        "Lcom/example/digitalkiosk/models/VoucherResponse;",
        "code",
        "stripe_connection_token",
        "Lcom/example/digitalkiosk/models/StripeConnectionToken;",
        "create_payment_intent",
        "Lcom/example/digitalkiosk/models/ServerPaymentIntent;",
        "amount",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;",
        "create_order_payment_intent",
        "Lcom/example/digitalkiosk/models/CreateIntentResponse;",
        "reader_id",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;",
        "capture_payment_intent",
        "intent_id",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;",
        "capture_order_payment_intent",
        "order_id",
        "payment_failed",
        "message",
        "cancel_payment_intent",
        "customer_receipts_queue",
        "Lcom/example/digitalkiosk/models/KioskMeta;",
        "customer_receipts_queue_print",
        "printer_status_update",
        "get_test_print_queue",
        "Lcom/example/digitalkiosk/models/TestPrintQueueResponse;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract add_to_cart(Lcom/example/digitalkiosk/models/ItemToAdd;II)Lretrofit2/Call;
    .param p1    # Lcom/example/digitalkiosk/models/ItemToAdd;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "voucher"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "language"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/digitalkiosk/models/ItemToAdd;",
            "II)",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Cart;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "add_to_cart"
    .end annotation
.end method

.method public abstract cancel_payment_intent(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "payment_intent_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/ServerPaymentIntent;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "stripe/cancel_payment_intent"
    .end annotation
.end method

.method public abstract capture_order_payment_intent(Ljava/lang/String;I)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "payment_intent_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "order_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "stripe/capture_order_payment_intent"
    .end annotation
.end method

.method public abstract capture_payment_intent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "payment_intent_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "reader_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "order_type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "dinein_table"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "pickup_time"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "pickup_number"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "payment_method"
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "bag_added"
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "voucher"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "stripe/capture_payment_intent"
    .end annotation
.end method

.method public abstract create_order(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "order_type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "dinein_table"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "pickup_time"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "pickup_number"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "payment_method"
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "bag_added"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "voucher"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "unpaid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "create-order"
    .end annotation
.end method

.method public abstract create_order_payment_intent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "reader_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "order_type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "dinein_table"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "pickup_time"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "pickup_number"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "payment_method"
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "bag_added"
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "voucher"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/CreateIntentResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "stripe/create_order_payment_intent"
    .end annotation
.end method

.method public abstract create_payment_intent(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "amount"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "bag_added"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "voucher"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/ServerPaymentIntent;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "stripe/create_payment_intent"
    .end annotation
.end method

.method public abstract customer_receipts_queue()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/KioskMeta;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "customer_receipts_queue"
    .end annotation
.end method

.method public abstract customer_receipts_queue_print(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "customer_receipts_queue/{id}/print"
    .end annotation
.end method

.method public abstract empty_cart(Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "reserved_table"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "empty_cart"
    .end annotation
.end method

.method public abstract get_all_translations(I)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Translation;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "language/{id}/translations"
    .end annotation
.end method

.method public abstract get_cart(III)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "bag_added"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "voucher"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "language"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Cart;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "cart"
    .end annotation
.end method

.method public abstract get_categories(Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "language_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Category;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "categories"
    .end annotation
.end method

.method public abstract get_category_items(ILjava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "language_id"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "timezone"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "category/{id}/items"
    .end annotation
.end method

.method public abstract get_item_details(ILjava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "language_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/ItemDetails;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "item/{id}"
    .end annotation
.end method

.method public abstract get_languages()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Language;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "languages"
    .end annotation
.end method

.method public abstract get_most_selling_items(Ljava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "language_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "timezone"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "most_selling_items"
    .end annotation
.end method

.method public abstract get_sides(ILjava/lang/Integer;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "language_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "sides/{id}"
    .end annotation
.end method

.method public abstract get_sub_categories(ILjava/lang/Integer;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "language_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Category;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "category/{id}/sub_categories"
    .end annotation
.end method

.method public abstract get_tables(Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "my_table"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Table;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "tables"
    .end annotation
.end method

.method public abstract get_test_print_queue()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/TestPrintQueueResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "test_print_queue"
    .end annotation
.end method

.method public abstract get_translations(Ljava/util/ArrayList;I)Lretrofit2/Call;
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Lretrofit2/http/Field;
            value = "terms[]"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Field;
            value = "language_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Translation;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "translations"
    .end annotation
.end method

.method public abstract handicap_banners(Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "language_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/BannerSlide;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "handicap-banner-slides"
    .end annotation
.end method

.method public abstract inner_banners(Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "language_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/BannerSlide;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "inner-banner-slides"
    .end annotation
.end method

.method public abstract kiosk_settings()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/KioskSetting;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "kiosk-settings"
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "kiosk_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "password"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "app_version"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/LoginToken;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "kiosk-app-login"
    .end annotation
.end method

.method public abstract main_banners(Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Query;
            value = "language_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "main-banners"
    .end annotation
.end method

.method public abstract payment_failed(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "message"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "stripe/payment_failed"
    .end annotation
.end method

.method public abstract printer_data(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lretrofit2/Call;
    .param p1    # Ljava/util/ArrayList;
        .annotation runtime Lretrofit2/http/Field;
            value = "usb_printers[]"
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation runtime Lretrofit2/http/Field;
            value = "bluetooth_printers[]"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "printer-data"
    .end annotation
.end method

.method public abstract printer_status_update(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "status"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "printer_status_update"
    .end annotation
.end method

.method public abstract remove_from_cart(III)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "cart_item_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "voucher"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            value = "language"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Cart;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/DELETE;
        value = "remove_from_cart/{cart_item_id}"
    .end annotation
.end method

.method public abstract stripe_connection_token()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/StripeConnectionToken;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "stripe/connection_token"
    .end annotation
.end method

.method public abstract update_table(ILjava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "status"
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation runtime Lretrofit2/http/Field;
            value = "reserved_table"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Table;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "table/{id}"
    .end annotation
.end method

.method public abstract verfiy()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/Kiosk;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "verify-access"
    .end annotation
.end method

.method public abstract verify_voucher(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "code"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/example/digitalkiosk/models/VoucherResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "verify_voucher"
    .end annotation
.end method
