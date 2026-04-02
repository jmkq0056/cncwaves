.class public final Lcom/example/digitalkiosk/network/ApiClient;
.super Ljava/lang/Object;
.source "ApiClient.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ce\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J3\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0000\u00a2\u0006\u0002\u0008\u0010JK\u0010\u0011\u001a\u00020\t2\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0013j\u0008\u0012\u0004\u0012\u00020\u0007`\u00142\u0016\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0013j\u0008\u0012\u0004\u0012\u00020\u0007`\u00142\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000eH\u0000\u00a2\u0006\u0002\u0008\u0017J\u001b\u0010\u0018\u001a\u00020\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u000eH\u0000\u00a2\u0006\u0002\u0008\u001aJ7\u0010\u001b\u001a\u00020\t2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00070\u0013j\u0008\u0012\u0004\u0012\u00020\u0007`\u00140\u000eH\u0000\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ7\u0010 \u001a\u00020\t2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020!0\u0013j\u0008\u0012\u0004\u0012\u00020!`\u00140\u000eH\u0000\u00a2\u0006\u0004\u0008\"\u0010\u001fJ7\u0010#\u001a\u00020\t2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020!0\u0013j\u0008\u0012\u0004\u0012\u00020!`\u00140\u000eH\u0000\u00a2\u0006\u0004\u0008$\u0010\u001fJ\u001b\u0010%\u001a\u00020\t2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020&0\u000eH\u0000\u00a2\u0006\u0002\u0008\'J+\u0010(\u001a\u00020\t2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020)0\u0013j\u0008\u0012\u0004\u0012\u00020)`\u00140\u000eH\u0000\u00a2\u0006\u0002\u0008*JK\u0010+\u001a\u00020\t2\u0016\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0013j\u0008\u0012\u0004\u0012\u00020\u0007`\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020-0\u0013j\u0008\u0012\u0004\u0012\u00020-`\u00140\u000eH\u0000\u00a2\u0006\u0002\u0008.J3\u0010/\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020-0\u0013j\u0008\u0012\u0004\u0012\u00020-`\u00140\u000eH\u0000\u00a2\u0006\u0002\u00080J3\u00101\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002020\u0013j\u0008\u0012\u0004\u0012\u000202`\u00140\u000eH\u0000\u00a2\u0006\u0002\u00083J;\u00104\u001a\u00020\t2\u0006\u00105\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002020\u0013j\u0008\u0012\u0004\u0012\u000202`\u00140\u000eH\u0000\u00a2\u0006\u0002\u00086J;\u00107\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00108\u001a\u00020\u00072\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002090\u0013j\u0008\u0012\u0004\u0012\u000209`\u00140\u000eH\u0000\u00a2\u0006\u0002\u0008:JC\u0010;\u001a\u00020\t2\u0006\u00105\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00108\u001a\u00020\u00072\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002090\u0013j\u0008\u0012\u0004\u0012\u000209`\u00140\u000eH\u0000\u00a2\u0006\u0002\u0008<J7\u0010=\u001a\u00020\t2\u0006\u0010>\u001a\u00020\u001d2\u0006\u0010?\u001a\u00020\u00072\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020@0\u000eH\u0000\u00a2\u0006\u0004\u0008A\u0010BJ3\u0010C\u001a\u00020\t2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\u001d2\u0006\u0010G\u001a\u00020\u001d2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020H0\u000eH\u0000\u00a2\u0006\u0002\u0008IJ3\u0010J\u001a\u00020\t2\u0006\u0010K\u001a\u00020\u001d2\u0006\u0010F\u001a\u00020\u001d2\u0006\u0010G\u001a\u00020\u001d2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020H0\u000eH\u0000\u00a2\u0006\u0002\u0008LJ;\u0010M\u001a\u00020\t2\u0006\u0010N\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002090\u0013j\u0008\u0012\u0004\u0012\u000209`\u00140\u000eH\u0000\u00a2\u0006\u0002\u0008OJ3\u0010P\u001a\u00020\t2\u0006\u0010Q\u001a\u00020\u001d2\u0006\u0010F\u001a\u00020\u001d2\u0006\u0010G\u001a\u00020\u001d2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020H0\u000eH\u0000\u00a2\u0006\u0002\u0008RJ\'\u0010S\u001a\u00020\t2\u0008\u0010T\u001a\u0004\u0018\u00010\u001d2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000eH\u0000\u00a2\u0006\u0004\u0008U\u0010\u001fJk\u0010V\u001a\u00020\t2\u0006\u0010W\u001a\u00020\u00072\u0008\u0010X\u001a\u0004\u0018\u00010\u001d2\u0008\u0010Y\u001a\u0004\u0018\u00010\u00072\u0008\u0010Z\u001a\u0004\u0018\u00010\u00072\u0008\u0010[\u001a\u0004\u0018\u00010\u00072\u0008\u0010Q\u001a\u0004\u0018\u00010\u001d2\u0008\u0010F\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\\\u001a\u0004\u0018\u00010\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020]0\u000eH\u0000\u00a2\u0006\u0004\u0008^\u0010_J7\u0010`\u001a\u00020\t2\u0008\u0010a\u001a\u0004\u0018\u00010\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020b0\u0013j\u0008\u0012\u0004\u0012\u00020b`\u00140\u000eH\u0000\u00a2\u0006\u0004\u0008c\u0010\u001fJ7\u0010d\u001a\u00020\t2\u0006\u0010N\u001a\u00020\u001d2\u0006\u0010e\u001a\u00020\u00072\u0008\u0010T\u001a\u0004\u0018\u00010\u001d2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020b0\u000eH\u0000\u00a2\u0006\u0004\u0008f\u0010BJ#\u0010g\u001a\u00020\t2\u0006\u0010h\u001a\u00020\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020i0\u000eH\u0000\u00a2\u0006\u0002\u0008jJ\r\u0010k\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008lJ;\u0010m\u001a\u00020\t2\u0008\u0010n\u001a\u0004\u0018\u00010\u001d2\u0008\u0010Q\u001a\u0004\u0018\u00010\u001d2\u0008\u0010F\u001a\u0004\u0018\u00010\u001d2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020o0\u000eH\u0000\u00a2\u0006\u0004\u0008p\u0010qJi\u0010r\u001a\u00020\t2\u0006\u0010s\u001a\u00020\u00072\u0006\u0010W\u001a\u00020\u00072\u0008\u0010X\u001a\u0004\u0018\u00010\u001d2\u0008\u0010Y\u001a\u0004\u0018\u00010\u00072\u0008\u0010Z\u001a\u0004\u0018\u00010\u00072\u0008\u0010[\u001a\u0004\u0018\u00010\u00072\u0008\u0010Q\u001a\u0004\u0018\u00010\u001d2\u0008\u0010F\u001a\u0004\u0018\u00010\u001d2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020t0\u000eH\u0000\u00a2\u0006\u0004\u0008u\u0010vJq\u0010w\u001a\u00020\t2\u0006\u0010x\u001a\u00020\u00072\u0006\u0010s\u001a\u00020\u00072\u0006\u0010W\u001a\u00020\u00072\u0008\u0010X\u001a\u0004\u0018\u00010\u001d2\u0008\u0010Y\u001a\u0004\u0018\u00010\u00072\u0008\u0010Z\u001a\u0004\u0018\u00010\u00072\u0008\u0010[\u001a\u0004\u0018\u00010\u00072\u0008\u0010Q\u001a\u0004\u0018\u00010\u001d2\u0008\u0010F\u001a\u0004\u0018\u00010\u001d2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020]0\u000eH\u0000\u00a2\u0006\u0004\u0008y\u0010zJ+\u0010{\u001a\u00020\t2\u0006\u0010x\u001a\u00020\u00072\u0006\u0010|\u001a\u00020\u001d2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020]0\u000eH\u0000\u00a2\u0006\u0002\u0008}J#\u0010~\u001a\u00020\t2\u0006\u0010x\u001a\u00020\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020o0\u000eH\u0000\u00a2\u0006\u0002\u0008\u007fJ\u001a\u0010\u0080\u0001\u001a\u00020\t2\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0007H\u0000\u00a2\u0006\u0003\u0008\u0082\u0001J/\u0010\u0083\u0001\u001a\u00020\t2\u001e\u0010\r\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0005\u0012\u00030\u0084\u00010\u0013j\t\u0012\u0005\u0012\u00030\u0084\u0001`\u00140\u000eH\u0000\u00a2\u0006\u0003\u0008\u0085\u0001J%\u0010\u0086\u0001\u001a\u00020\t2\u0006\u0010N\u001a\u00020\u001d2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020]0\u000eH\u0000\u00a2\u0006\u0003\u0008\u0087\u0001J%\u0010\u0088\u0001\u001a\u00020\t2\u0006\u0010e\u001a\u00020\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u000eH\u0000\u00a2\u0006\u0003\u0008\u0089\u0001J\u001e\u0010\u008a\u0001\u001a\u00020\t2\r\u0010\r\u001a\t\u0012\u0005\u0012\u00030\u008b\u00010\u000eH\u0000\u00a2\u0006\u0003\u0008\u008c\u0001R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u008d\u0001"
    }
    d2 = {
        "Lcom/example/digitalkiosk/network/ApiClient;",
        "",
        "<init>",
        "()V",
        "service",
        "Lcom/example/digitalkiosk/network/BackendService;",
        "BASE_URL",
        "",
        "login",
        "",
        "kiosk_id",
        "password",
        "app_version",
        "callback",
        "Lretrofit2/Callback;",
        "Lcom/example/digitalkiosk/models/LoginToken;",
        "login$app_release",
        "send_printers_data",
        "usb_printers",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "bluetooth_printers",
        "Ljava/lang/Void;",
        "send_printers_data$app_release",
        "verify",
        "Lcom/example/digitalkiosk/models/Kiosk;",
        "verify$app_release",
        "main_banners",
        "language_id",
        "",
        "main_banners$app_release",
        "(Ljava/lang/Integer;Lretrofit2/Callback;)V",
        "inner_banners",
        "Lcom/example/digitalkiosk/models/BannerSlide;",
        "inner_banners$app_release",
        "handicap_banners",
        "handicap_banners$app_release",
        "kiosk_settings",
        "Lcom/example/digitalkiosk/models/KioskSetting;",
        "kiosk_settings$app_release",
        "get_languages",
        "Lcom/example/digitalkiosk/models/Language;",
        "get_languages$app_release",
        "get_translations",
        "terms",
        "Lcom/example/digitalkiosk/models/Translation;",
        "get_translations$app_release",
        "get_all_translations",
        "get_all_translations$app_release",
        "get_categories",
        "Lcom/example/digitalkiosk/models/Category;",
        "get_categories$app_release",
        "get_sub_categories",
        "category_id",
        "get_sub_categories$app_release",
        "get_most_selling_items",
        "timezone",
        "Lcom/example/digitalkiosk/models/Item;",
        "get_most_selling_items$app_release",
        "get_category_items",
        "get_category_items$app_release",
        "get_item_details",
        "item_id",
        "item_type",
        "Lcom/example/digitalkiosk/models/ItemDetails;",
        "get_item_details$app_release",
        "(ILjava/lang/String;Ljava/lang/Integer;Lretrofit2/Callback;)V",
        "add_to_cart",
        "item_details",
        "Lcom/example/digitalkiosk/models/ItemToAdd;",
        "voucher",
        "language",
        "Lcom/example/digitalkiosk/models/Cart;",
        "add_to_cart$app_release",
        "remove_from_cart",
        "cart_item_id",
        "remove_from_cart$app_release",
        "get_sides",
        "id",
        "get_sides$app_release",
        "get_cart",
        "bag_added",
        "get_cart$app_release",
        "empty_cart",
        "reserved_table",
        "empty_cart$app_release",
        "create_order",
        "type",
        "dinein_table",
        "pickup_time",
        "pickup_number",
        "payment_method",
        "unpaid",
        "Lcom/example/digitalkiosk/models/Order;",
        "create_order$app_release",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lretrofit2/Callback;)V",
        "get_tables",
        "my_table",
        "Lcom/example/digitalkiosk/models/Table;",
        "get_tables$app_release",
        "update_table",
        "status",
        "update_table$app_release",
        "verify_voucher",
        "code",
        "Lcom/example/digitalkiosk/models/VoucherResponse;",
        "verify_voucher$app_release",
        "stripe_connection_token",
        "stripe_connection_token$app_release",
        "create_payment_intent",
        "amount",
        "Lcom/example/digitalkiosk/models/ServerPaymentIntent;",
        "create_payment_intent$app_release",
        "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lretrofit2/Callback;)V",
        "create_order_payment_intent",
        "reader_id",
        "Lcom/example/digitalkiosk/models/CreateIntentResponse;",
        "create_order_payment_intent$app_release",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lretrofit2/Callback;)V",
        "capture_payment_intent",
        "intent_id",
        "capture_payment_intent$app_release",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lretrofit2/Callback;)V",
        "capture_order_payment_intent",
        "order_id",
        "capture_order_payment_intent$app_release",
        "cancel_payment_intent",
        "cancel_payment_intent$app_release",
        "payment_failed",
        "message",
        "payment_failed$app_release",
        "customer_receipts_queue",
        "Lcom/example/digitalkiosk/models/KioskMeta;",
        "customer_receipts_queue$app_release",
        "customer_receipts_queue_print",
        "customer_receipts_queue_print$app_release",
        "printer_status_update",
        "printer_status_update$app_release",
        "get_test_print_queue",
        "Lcom/example/digitalkiosk/models/TestPrintQueueResponse;",
        "get_test_print_queue$app_release",
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


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "https://admin.digitalkiosk.dk/api/"

.field public static final INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

.field private static final service:Lcom/example/digitalkiosk/network/BackendService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/example/digitalkiosk/network/ApiClient;

    invoke-direct {v0}, Lcom/example/digitalkiosk/network/ApiClient;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/network/ApiClient;->INSTANCE:Lcom/example/digitalkiosk/network/ApiClient;

    .line 34
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/example/digitalkiosk/network/AuthInterceptor;

    invoke-direct {v1}, Lcom/example/digitalkiosk/network/AuthInterceptor;-><init>()V

    check-cast v1, Lokhttp3/Interceptor;

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 35
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 36
    const-string v2, "https://admin.digitalkiosk.dk/api/"

    invoke-virtual {v1, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 38
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    check-cast v1, Lretrofit2/Converter$Factory;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    .line 40
    const-class v1, Lcom/example/digitalkiosk/network/BackendService;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/example/digitalkiosk/network/BackendService;

    sput-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final add_to_cart$app_release(Lcom/example/digitalkiosk/models/ItemToAdd;IILretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/example/digitalkiosk/models/ItemToAdd;",
            "II",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/Cart;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item_details"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1, p2, p3}, Lcom/example/digitalkiosk/network/BackendService;->add_to_cart(Lcom/example/digitalkiosk/models/ItemToAdd;II)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final cancel_payment_intent$app_release(Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/ServerPaymentIntent;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->cancel_payment_intent(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final capture_order_payment_intent$app_release(Ljava/lang/String;ILretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intent_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1, p2}, Lcom/example/digitalkiosk/network/BackendService;->capture_order_payment_intent(Ljava/lang/String;I)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final capture_payment_intent$app_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lretrofit2/Callback;)V
    .locals 12
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
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p10

    const-string v1, "intent_id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reader_id"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    sget-object v2, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-interface/range {v2 .. v11}, Lcom/example/digitalkiosk/network/BackendService;->capture_payment_intent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final create_order$app_release(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 11
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
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p9

    const-string v1, "type"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v2, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/example/digitalkiosk/network/BackendService;->create_order(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final create_order_payment_intent$app_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lretrofit2/Callback;)V
    .locals 11
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
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/CreateIntentResponse;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p9

    const-string v1, "reader_id"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    sget-object v2, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Lcom/example/digitalkiosk/network/BackendService;->create_order_payment_intent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, v0}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final create_payment_intent$app_release(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/ServerPaymentIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1, p2, p3}, Lcom/example/digitalkiosk/network/BackendService;->create_payment_intent(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final customer_receipts_queue$app_release(Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/KioskMeta;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0}, Lcom/example/digitalkiosk/network/BackendService;->customer_receipts_queue()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final customer_receipts_queue_print$app_release(ILretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/Order;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->customer_receipts_queue_print(I)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final empty_cart$app_release(Ljava/lang/Integer;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lretrofit2/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->empty_cart(Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_all_translations$app_release(ILretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Translation;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->get_all_translations(I)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_cart$app_release(IIILretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/Cart;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1, p2, p3}, Lcom/example/digitalkiosk/network/BackendService;->get_cart(III)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_categories$app_release(ILretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Category;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->get_categories(Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_category_items$app_release(IILjava/lang/String;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "timezone"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3}, Lcom/example/digitalkiosk/network/BackendService;->get_category_items(ILjava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_item_details$app_release(ILjava/lang/String;Ljava/lang/Integer;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/ItemDetails;",
            ">;)V"
        }
    .end annotation

    const-string v0, "item_type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1, p2, p3}, Lcom/example/digitalkiosk/network/BackendService;->get_item_details(ILjava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_languages$app_release(Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Language;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0}, Lcom/example/digitalkiosk/network/BackendService;->get_languages()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_most_selling_items$app_release(ILjava/lang/String;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "timezone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/example/digitalkiosk/network/BackendService;->get_most_selling_items(Ljava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_sides$app_release(IILretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Item;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/example/digitalkiosk/network/BackendService;->get_sides(ILjava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_sub_categories$app_release(IILretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Category;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/example/digitalkiosk/network/BackendService;->get_sub_categories(ILjava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_tables$app_release(Ljava/lang/Integer;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Table;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->get_tables(Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_test_print_queue$app_release(Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/TestPrintQueueResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0}, Lcom/example/digitalkiosk/network/BackendService;->get_test_print_queue()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final get_translations$app_release(Ljava/util/ArrayList;ILretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Translation;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "terms"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1, p2}, Lcom/example/digitalkiosk/network/BackendService;->get_translations(Ljava/util/ArrayList;I)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final handicap_banners$app_release(Ljava/lang/Integer;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/BannerSlide;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->handicap_banners(Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final inner_banners$app_release(Ljava/lang/Integer;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/BannerSlide;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->inner_banners(Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final kiosk_settings$app_release(Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/KioskSetting;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0}, Lcom/example/digitalkiosk/network/BackendService;->kiosk_settings()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final login$app_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/LoginToken;",
            ">;)V"
        }
    .end annotation

    const-string v0, "kiosk_id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "password"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "app_version"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1, p2, p3}, Lcom/example/digitalkiosk/network/BackendService;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final main_banners$app_release(Ljava/lang/Integer;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lretrofit2/Callback<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->main_banners(Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final payment_failed$app_release(Ljava/lang/String;)V
    .locals 1

    .line 186
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->payment_failed(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    return-void
.end method

.method public final printer_status_update$app_release(Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->printer_status_update(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final remove_from_cart$app_release(IIILretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/Cart;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1, p2, p3}, Lcom/example/digitalkiosk/network/BackendService;->remove_from_cart(III)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final send_printers_data$app_release(Ljava/util/ArrayList;Ljava/util/ArrayList;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lretrofit2/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "usb_printers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bluetooth_printers"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1, p2}, Lcom/example/digitalkiosk/network/BackendService;->printer_data(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final stripe_connection_token$app_release()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;
        }
    .end annotation

    .line 141
    const-string v0, "Creating connection token failed"

    .line 142
    :try_start_0
    sget-object v1, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v1}, Lcom/example/digitalkiosk/network/BackendService;->stripe_connection_token()Lretrofit2/Call;

    move-result-object v1

    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 144
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Lcom/example/digitalkiosk/models/StripeConnectionToken;

    invoke-virtual {v1}, Lcom/example/digitalkiosk/models/StripeConnectionToken;->getSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2, v3}, Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .line 149
    new-instance v2, Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v2, v0, v1}, Lcom/stripe/stripeterminal/external/models/ConnectionTokenException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final update_table$app_release(ILjava/lang/String;Ljava/lang/Integer;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/Table;",
            ">;)V"
        }
    .end annotation

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1, p2, p3}, Lcom/example/digitalkiosk/network/BackendService;->update_table(ILjava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p4}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final verify$app_release(Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/Kiosk;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0}, Lcom/example/digitalkiosk/network/BackendService;->verfiy()Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public final verify_voucher$app_release(Ljava/lang/String;Lretrofit2/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lretrofit2/Callback<",
            "Lcom/example/digitalkiosk/models/VoucherResponse;",
            ">;)V"
        }
    .end annotation

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/example/digitalkiosk/network/ApiClient;->service:Lcom/example/digitalkiosk/network/BackendService;

    invoke-interface {v0, p1}, Lcom/example/digitalkiosk/network/BackendService;->verify_voucher(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method
