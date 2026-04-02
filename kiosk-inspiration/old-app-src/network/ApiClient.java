package com.example.digitalkiosk.network;

import androidx.core.app.NotificationCompat;
import com.example.digitalkiosk.models.BannerSlide;
import com.example.digitalkiosk.models.Cart;
import com.example.digitalkiosk.models.Category;
import com.example.digitalkiosk.models.CreateIntentResponse;
import com.example.digitalkiosk.models.Item;
import com.example.digitalkiosk.models.ItemDetails;
import com.example.digitalkiosk.models.ItemToAdd;
import com.example.digitalkiosk.models.Kiosk;
import com.example.digitalkiosk.models.KioskMeta;
import com.example.digitalkiosk.models.KioskSetting;
import com.example.digitalkiosk.models.Language;
import com.example.digitalkiosk.models.LoginToken;
import com.example.digitalkiosk.models.Order;
import com.example.digitalkiosk.models.ServerPaymentIntent;
import com.example.digitalkiosk.models.StripeConnectionToken;
import com.example.digitalkiosk.models.Table;
import com.example.digitalkiosk.models.TestPrintQueueResponse;
import com.example.digitalkiosk.models.Translation;
import com.example.digitalkiosk.models.VoucherResponse;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.core.bbpos.BbposDeviceControllerImpl;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.stripeterminal.external.models.ConnectionTokenException;
import com.sun.jna.Callback;
import java.io.IOException;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.OkHttpClient;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: compiled from: ApiClient.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000Î\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J3\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0000¢\u0006\u0002\b\u0010JK\u0010\u0011\u001a\u00020\t2\u0016\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0013j\b\u0012\u0004\u0012\u00020\u0007`\u00142\u0016\u0010\u0015\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0013j\b\u0012\u0004\u0012\u00020\u0007`\u00142\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00160\u000eH\u0000¢\u0006\u0002\b\u0017J\u001b\u0010\u0018\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00190\u000eH\u0000¢\u0006\u0002\b\u001aJ7\u0010\u001b\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00070\u0013j\b\u0012\u0004\u0012\u00020\u0007`\u00140\u000eH\u0000¢\u0006\u0004\b\u001e\u0010\u001fJ7\u0010 \u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020!0\u0013j\b\u0012\u0004\u0012\u00020!`\u00140\u000eH\u0000¢\u0006\u0004\b\"\u0010\u001fJ7\u0010#\u001a\u00020\t2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020!0\u0013j\b\u0012\u0004\u0012\u00020!`\u00140\u000eH\u0000¢\u0006\u0004\b$\u0010\u001fJ\u001b\u0010%\u001a\u00020\t2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020&0\u000eH\u0000¢\u0006\u0002\b'J+\u0010(\u001a\u00020\t2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020)0\u0013j\b\u0012\u0004\u0012\u00020)`\u00140\u000eH\u0000¢\u0006\u0002\b*JK\u0010+\u001a\u00020\t2\u0016\u0010,\u001a\u0012\u0012\u0004\u0012\u00020\u00070\u0013j\b\u0012\u0004\u0012\u00020\u0007`\u00142\u0006\u0010\u001c\u001a\u00020\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020-0\u0013j\b\u0012\u0004\u0012\u00020-`\u00140\u000eH\u0000¢\u0006\u0002\b.J3\u0010/\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020-0\u0013j\b\u0012\u0004\u0012\u00020-`\u00140\u000eH\u0000¢\u0006\u0002\b0J3\u00101\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002020\u0013j\b\u0012\u0004\u0012\u000202`\u00140\u000eH\u0000¢\u0006\u0002\b3J;\u00104\u001a\u00020\t2\u0006\u00105\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002020\u0013j\b\u0012\u0004\u0012\u000202`\u00140\u000eH\u0000¢\u0006\u0002\b6J;\u00107\u001a\u00020\t2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00108\u001a\u00020\u00072\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002090\u0013j\b\u0012\u0004\u0012\u000209`\u00140\u000eH\u0000¢\u0006\u0002\b:JC\u0010;\u001a\u00020\t2\u0006\u00105\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u00108\u001a\u00020\u00072\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002090\u0013j\b\u0012\u0004\u0012\u000209`\u00140\u000eH\u0000¢\u0006\u0002\b<J7\u0010=\u001a\u00020\t2\u0006\u0010>\u001a\u00020\u001d2\u0006\u0010?\u001a\u00020\u00072\b\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020@0\u000eH\u0000¢\u0006\u0004\bA\u0010BJ3\u0010C\u001a\u00020\t2\u0006\u0010D\u001a\u00020E2\u0006\u0010F\u001a\u00020\u001d2\u0006\u0010G\u001a\u00020\u001d2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020H0\u000eH\u0000¢\u0006\u0002\bIJ3\u0010J\u001a\u00020\t2\u0006\u0010K\u001a\u00020\u001d2\u0006\u0010F\u001a\u00020\u001d2\u0006\u0010G\u001a\u00020\u001d2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020H0\u000eH\u0000¢\u0006\u0002\bLJ;\u0010M\u001a\u00020\t2\u0006\u0010N\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u0002090\u0013j\b\u0012\u0004\u0012\u000209`\u00140\u000eH\u0000¢\u0006\u0002\bOJ3\u0010P\u001a\u00020\t2\u0006\u0010Q\u001a\u00020\u001d2\u0006\u0010F\u001a\u00020\u001d2\u0006\u0010G\u001a\u00020\u001d2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020H0\u000eH\u0000¢\u0006\u0002\bRJ'\u0010S\u001a\u00020\t2\b\u0010T\u001a\u0004\u0018\u00010\u001d2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00160\u000eH\u0000¢\u0006\u0004\bU\u0010\u001fJk\u0010V\u001a\u00020\t2\u0006\u0010W\u001a\u00020\u00072\b\u0010X\u001a\u0004\u0018\u00010\u001d2\b\u0010Y\u001a\u0004\u0018\u00010\u00072\b\u0010Z\u001a\u0004\u0018\u00010\u00072\b\u0010[\u001a\u0004\u0018\u00010\u00072\b\u0010Q\u001a\u0004\u0018\u00010\u001d2\b\u0010F\u001a\u0004\u0018\u00010\u001d2\b\u0010\\\u001a\u0004\u0018\u00010\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020]0\u000eH\u0000¢\u0006\u0004\b^\u0010_J7\u0010`\u001a\u00020\t2\b\u0010a\u001a\u0004\u0018\u00010\u001d2\u001c\u0010\r\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020b0\u0013j\b\u0012\u0004\u0012\u00020b`\u00140\u000eH\u0000¢\u0006\u0004\bc\u0010\u001fJ7\u0010d\u001a\u00020\t2\u0006\u0010N\u001a\u00020\u001d2\u0006\u0010e\u001a\u00020\u00072\b\u0010T\u001a\u0004\u0018\u00010\u001d2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020b0\u000eH\u0000¢\u0006\u0004\bf\u0010BJ#\u0010g\u001a\u00020\t2\u0006\u0010h\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020i0\u000eH\u0000¢\u0006\u0002\bjJ\r\u0010k\u001a\u00020\u0007H\u0000¢\u0006\u0002\blJ;\u0010m\u001a\u00020\t2\b\u0010n\u001a\u0004\u0018\u00010\u001d2\b\u0010Q\u001a\u0004\u0018\u00010\u001d2\b\u0010F\u001a\u0004\u0018\u00010\u001d2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020o0\u000eH\u0000¢\u0006\u0004\bp\u0010qJi\u0010r\u001a\u00020\t2\u0006\u0010s\u001a\u00020\u00072\u0006\u0010W\u001a\u00020\u00072\b\u0010X\u001a\u0004\u0018\u00010\u001d2\b\u0010Y\u001a\u0004\u0018\u00010\u00072\b\u0010Z\u001a\u0004\u0018\u00010\u00072\b\u0010[\u001a\u0004\u0018\u00010\u00072\b\u0010Q\u001a\u0004\u0018\u00010\u001d2\b\u0010F\u001a\u0004\u0018\u00010\u001d2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020t0\u000eH\u0000¢\u0006\u0004\bu\u0010vJq\u0010w\u001a\u00020\t2\u0006\u0010x\u001a\u00020\u00072\u0006\u0010s\u001a\u00020\u00072\u0006\u0010W\u001a\u00020\u00072\b\u0010X\u001a\u0004\u0018\u00010\u001d2\b\u0010Y\u001a\u0004\u0018\u00010\u00072\b\u0010Z\u001a\u0004\u0018\u00010\u00072\b\u0010[\u001a\u0004\u0018\u00010\u00072\b\u0010Q\u001a\u0004\u0018\u00010\u001d2\b\u0010F\u001a\u0004\u0018\u00010\u001d2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020]0\u000eH\u0000¢\u0006\u0004\by\u0010zJ+\u0010{\u001a\u00020\t2\u0006\u0010x\u001a\u00020\u00072\u0006\u0010|\u001a\u00020\u001d2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020]0\u000eH\u0000¢\u0006\u0002\b}J#\u0010~\u001a\u00020\t2\u0006\u0010x\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020o0\u000eH\u0000¢\u0006\u0002\b\u007fJ\u001a\u0010\u0080\u0001\u001a\u00020\t2\t\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0007H\u0000¢\u0006\u0003\b\u0082\u0001J/\u0010\u0083\u0001\u001a\u00020\t2\u001e\u0010\r\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0005\u0012\u00030\u0084\u00010\u0013j\t\u0012\u0005\u0012\u00030\u0084\u0001`\u00140\u000eH\u0000¢\u0006\u0003\b\u0085\u0001J%\u0010\u0086\u0001\u001a\u00020\t2\u0006\u0010N\u001a\u00020\u001d2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020]0\u000eH\u0000¢\u0006\u0003\b\u0087\u0001J%\u0010\u0088\u0001\u001a\u00020\t2\u0006\u0010e\u001a\u00020\u00072\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00160\u000eH\u0000¢\u0006\u0003\b\u0089\u0001J\u001e\u0010\u008a\u0001\u001a\u00020\t2\r\u0010\r\u001a\t\u0012\u0005\u0012\u00030\u008b\u00010\u000eH\u0000¢\u0006\u0003\b\u008c\u0001R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u008d\u0001"}, d2 = {"Lcom/example/digitalkiosk/network/ApiClient;", "", "<init>", "()V", NotificationCompat.CATEGORY_SERVICE, "Lcom/example/digitalkiosk/network/BackendService;", "BASE_URL", "", FirebaseAnalytics.Event.LOGIN, "", "kiosk_id", "password", "app_version", Callback.METHOD_NAME, "Lretrofit2/Callback;", "Lcom/example/digitalkiosk/models/LoginToken;", "login$app_release", "send_printers_data", "usb_printers", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "bluetooth_printers", "Ljava/lang/Void;", "send_printers_data$app_release", "verify", "Lcom/example/digitalkiosk/models/Kiosk;", "verify$app_release", "main_banners", "language_id", "", "main_banners$app_release", "(Ljava/lang/Integer;Lretrofit2/Callback;)V", "inner_banners", "Lcom/example/digitalkiosk/models/BannerSlide;", "inner_banners$app_release", "handicap_banners", "handicap_banners$app_release", "kiosk_settings", "Lcom/example/digitalkiosk/models/KioskSetting;", "kiosk_settings$app_release", "get_languages", "Lcom/example/digitalkiosk/models/Language;", "get_languages$app_release", "get_translations", "terms", "Lcom/example/digitalkiosk/models/Translation;", "get_translations$app_release", "get_all_translations", "get_all_translations$app_release", "get_categories", "Lcom/example/digitalkiosk/models/Category;", "get_categories$app_release", "get_sub_categories", "category_id", "get_sub_categories$app_release", "get_most_selling_items", "timezone", "Lcom/example/digitalkiosk/models/Item;", "get_most_selling_items$app_release", "get_category_items", "get_category_items$app_release", "get_item_details", FirebaseAnalytics.Param.ITEM_ID, "item_type", "Lcom/example/digitalkiosk/models/ItemDetails;", "get_item_details$app_release", "(ILjava/lang/String;Ljava/lang/Integer;Lretrofit2/Callback;)V", FirebaseAnalytics.Event.ADD_TO_CART, "item_details", "Lcom/example/digitalkiosk/models/ItemToAdd;", "voucher", "language", "Lcom/example/digitalkiosk/models/Cart;", "add_to_cart$app_release", FirebaseAnalytics.Event.REMOVE_FROM_CART, "cart_item_id", "remove_from_cart$app_release", "get_sides", OfflineStorageConstantsKt.ID, "get_sides$app_release", "get_cart", "bag_added", "get_cart$app_release", "empty_cart", "reserved_table", "empty_cart$app_release", "create_order", "type", "dinein_table", "pickup_time", "pickup_number", "payment_method", "unpaid", "Lcom/example/digitalkiosk/models/Order;", "create_order$app_release", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lretrofit2/Callback;)V", "get_tables", "my_table", "Lcom/example/digitalkiosk/models/Table;", "get_tables$app_release", "update_table", NotificationCompat.CATEGORY_STATUS, "update_table$app_release", "verify_voucher", "code", "Lcom/example/digitalkiosk/models/VoucherResponse;", "verify_voucher$app_release", "stripe_connection_token", "stripe_connection_token$app_release", "create_payment_intent", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "Lcom/example/digitalkiosk/models/ServerPaymentIntent;", "create_payment_intent$app_release", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lretrofit2/Callback;)V", "create_order_payment_intent", OfflineStorageConstantsKt.READER_ID, "Lcom/example/digitalkiosk/models/CreateIntentResponse;", "create_order_payment_intent$app_release", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lretrofit2/Callback;)V", "capture_payment_intent", "intent_id", "capture_payment_intent$app_release", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lretrofit2/Callback;)V", "capture_order_payment_intent", "order_id", "capture_order_payment_intent$app_release", "cancel_payment_intent", "cancel_payment_intent$app_release", "payment_failed", "message", "payment_failed$app_release", "customer_receipts_queue", "Lcom/example/digitalkiosk/models/KioskMeta;", "customer_receipts_queue$app_release", "customer_receipts_queue_print", "customer_receipts_queue_print$app_release", "printer_status_update", "printer_status_update$app_release", "get_test_print_queue", "Lcom/example/digitalkiosk/models/TestPrintQueueResponse;", "get_test_print_queue$app_release", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ApiClient {
    public static final ApiClient INSTANCE = new ApiClient();
    private static final String BASE_URL = "https://admin.digitalkiosk.dk/api/";
    private static final BackendService service = (BackendService) new Retrofit.Builder().baseUrl(BASE_URL).client(new OkHttpClient.Builder().addInterceptor(new AuthInterceptor()).build()).addConverterFactory(GsonConverterFactory.create()).build().create(BackendService.class);

    private ApiClient() {
    }

    public final void login$app_release(String kiosk_id, String password, String app_version, retrofit2.Callback<LoginToken> callback) {
        Intrinsics.checkNotNullParameter(kiosk_id, "kiosk_id");
        Intrinsics.checkNotNullParameter(password, "password");
        Intrinsics.checkNotNullParameter(app_version, "app_version");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.login(kiosk_id, password, app_version).enqueue(callback);
    }

    public final void send_printers_data$app_release(ArrayList<String> usb_printers, ArrayList<String> bluetooth_printers, retrofit2.Callback<Void> callback) {
        Intrinsics.checkNotNullParameter(usb_printers, "usb_printers");
        Intrinsics.checkNotNullParameter(bluetooth_printers, "bluetooth_printers");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.printer_data(usb_printers, bluetooth_printers).enqueue(callback);
    }

    public final void verify$app_release(retrofit2.Callback<Kiosk> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.verfiy().enqueue(callback);
    }

    public final void main_banners$app_release(Integer language_id, retrofit2.Callback<ArrayList<String>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.main_banners(language_id).enqueue(callback);
    }

    public final void inner_banners$app_release(Integer language_id, retrofit2.Callback<ArrayList<BannerSlide>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.inner_banners(language_id).enqueue(callback);
    }

    public final void handicap_banners$app_release(Integer language_id, retrofit2.Callback<ArrayList<BannerSlide>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.handicap_banners(language_id).enqueue(callback);
    }

    public final void kiosk_settings$app_release(retrofit2.Callback<KioskSetting> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.kiosk_settings().enqueue(callback);
    }

    public final void get_languages$app_release(retrofit2.Callback<ArrayList<Language>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_languages().enqueue(callback);
    }

    public final void get_translations$app_release(ArrayList<String> terms, int language_id, retrofit2.Callback<ArrayList<Translation>> callback) {
        Intrinsics.checkNotNullParameter(terms, "terms");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_translations(terms, language_id).enqueue(callback);
    }

    public final void get_all_translations$app_release(int language_id, retrofit2.Callback<ArrayList<Translation>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_all_translations(language_id).enqueue(callback);
    }

    public final void get_categories$app_release(int language_id, retrofit2.Callback<ArrayList<Category>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_categories(Integer.valueOf(language_id)).enqueue(callback);
    }

    public final void get_sub_categories$app_release(int category_id, int language_id, retrofit2.Callback<ArrayList<Category>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_sub_categories(category_id, Integer.valueOf(language_id)).enqueue(callback);
    }

    public final void get_most_selling_items$app_release(int language_id, String timezone, retrofit2.Callback<ArrayList<Item>> callback) {
        Intrinsics.checkNotNullParameter(timezone, "timezone");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_most_selling_items(Integer.valueOf(language_id), timezone).enqueue(callback);
    }

    public final void get_category_items$app_release(int category_id, int language_id, String timezone, retrofit2.Callback<ArrayList<Item>> callback) {
        Intrinsics.checkNotNullParameter(timezone, "timezone");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_category_items(category_id, Integer.valueOf(language_id), timezone).enqueue(callback);
    }

    public final void get_item_details$app_release(int item_id, String item_type, Integer language_id, retrofit2.Callback<ItemDetails> callback) {
        Intrinsics.checkNotNullParameter(item_type, "item_type");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_item_details(item_id, item_type, language_id).enqueue(callback);
    }

    public final void add_to_cart$app_release(ItemToAdd item_details, int voucher, int language, retrofit2.Callback<Cart> callback) {
        Intrinsics.checkNotNullParameter(item_details, "item_details");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.add_to_cart(item_details, voucher, language).enqueue(callback);
    }

    public final void remove_from_cart$app_release(int cart_item_id, int voucher, int language, retrofit2.Callback<Cart> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.remove_from_cart(cart_item_id, voucher, language).enqueue(callback);
    }

    public final void get_sides$app_release(int id, int language_id, retrofit2.Callback<ArrayList<Item>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_sides(id, Integer.valueOf(language_id)).enqueue(callback);
    }

    public final void get_cart$app_release(int bag_added, int voucher, int language, retrofit2.Callback<Cart> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_cart(bag_added, voucher, language).enqueue(callback);
    }

    public final void empty_cart$app_release(Integer reserved_table, retrofit2.Callback<Void> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.empty_cart(reserved_table).enqueue(callback);
    }

    public final void create_order$app_release(String type, Integer dinein_table, String pickup_time, String pickup_number, String payment_method, Integer bag_added, Integer voucher, String unpaid, retrofit2.Callback<Order> callback) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.create_order(type, dinein_table, pickup_time, pickup_number, payment_method, bag_added, voucher, unpaid).enqueue(callback);
    }

    public final void get_tables$app_release(Integer my_table, retrofit2.Callback<ArrayList<Table>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_tables(my_table).enqueue(callback);
    }

    public final void update_table$app_release(int id, String status, Integer reserved_table, retrofit2.Callback<Table> callback) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.update_table(id, status, reserved_table).enqueue(callback);
    }

    public final void verify_voucher$app_release(String code, retrofit2.Callback<VoucherResponse> callback) {
        Intrinsics.checkNotNullParameter(code, "code");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.verify_voucher(code).enqueue(callback);
    }

    public final String stripe_connection_token$app_release() throws ConnectionTokenException {
        try {
            Response<StripeConnectionToken> responseExecute = service.stripe_connection_token().execute();
            if (responseExecute.isSuccessful() && responseExecute.body() != null) {
                StripeConnectionToken stripeConnectionTokenBody = responseExecute.body();
                Intrinsics.checkNotNull(stripeConnectionTokenBody);
                return stripeConnectionTokenBody.getSecret();
            }
            throw new ConnectionTokenException("Creating connection token failed", null, 2, null);
        } catch (IOException e) {
            throw new ConnectionTokenException("Creating connection token failed", e);
        }
    }

    public final void create_payment_intent$app_release(Integer amount, Integer bag_added, Integer voucher, retrofit2.Callback<ServerPaymentIntent> callback) throws Exception {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.create_payment_intent(amount, bag_added, voucher).enqueue(callback);
    }

    public final void create_order_payment_intent$app_release(String reader_id, String type, Integer dinein_table, String pickup_time, String pickup_number, String payment_method, Integer bag_added, Integer voucher, retrofit2.Callback<CreateIntentResponse> callback) throws Exception {
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.create_order_payment_intent(reader_id, type, dinein_table, pickup_time, pickup_number, payment_method, bag_added, voucher).enqueue(callback);
    }

    public final void capture_payment_intent$app_release(String intent_id, String reader_id, String type, Integer dinein_table, String pickup_time, String pickup_number, String payment_method, Integer bag_added, Integer voucher, retrofit2.Callback<Order> callback) {
        Intrinsics.checkNotNullParameter(intent_id, "intent_id");
        Intrinsics.checkNotNullParameter(reader_id, "reader_id");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.capture_payment_intent(intent_id, reader_id, type, dinein_table, pickup_time, pickup_number, payment_method, bag_added, voucher).enqueue(callback);
    }

    public final void capture_order_payment_intent$app_release(String intent_id, int order_id, retrofit2.Callback<Order> callback) {
        Intrinsics.checkNotNullParameter(intent_id, "intent_id");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.capture_order_payment_intent(intent_id, order_id).enqueue(callback);
    }

    public final void cancel_payment_intent$app_release(String intent_id, retrofit2.Callback<ServerPaymentIntent> callback) {
        Intrinsics.checkNotNullParameter(intent_id, "intent_id");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.cancel_payment_intent(intent_id).enqueue(callback);
    }

    public final void payment_failed$app_release(String message) throws IOException {
        service.payment_failed(message).execute();
    }

    public final void customer_receipts_queue$app_release(retrofit2.Callback<ArrayList<KioskMeta>> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.customer_receipts_queue().enqueue(callback);
    }

    public final void customer_receipts_queue_print$app_release(int id, retrofit2.Callback<Order> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.customer_receipts_queue_print(id).enqueue(callback);
    }

    public final void printer_status_update$app_release(String status, retrofit2.Callback<Void> callback) {
        Intrinsics.checkNotNullParameter(status, "status");
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.printer_status_update(status).enqueue(callback);
    }

    public final void get_test_print_queue$app_release(retrofit2.Callback<TestPrintQueueResponse> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        service.get_test_print_queue().enqueue(callback);
    }
}
