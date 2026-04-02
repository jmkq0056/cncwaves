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
import java.util.ArrayList;
import kotlin.Metadata;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.DELETE;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.PATCH;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: compiled from: BackendService.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000¼\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J,\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\b\b\u0001\u0010\u0005\u001a\u00020\u00062\b\b\u0001\u0010\u0007\u001a\u00020\u00062\b\b\u0001\u0010\b\u001a\u00020\u0006H'JB\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\u0018\b\u0001\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\u00060\fj\b\u0012\u0004\u0012\u00020\u0006`\r2\u0018\b\u0001\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020\u00060\fj\b\u0012\u0004\u0012\u00020\u0006`\rH'J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0003H'J/\u0010\u0011\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00060\fj\b\u0012\u0004\u0012\u00020\u0006`\r0\u00032\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u0010\u0014J/\u0010\u0015\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00160\fj\b\u0012\u0004\u0012\u00020\u0016`\r0\u00032\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u0010\u0014J/\u0010\u0017\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00160\fj\b\u0012\u0004\u0012\u00020\u0016`\r0\u00032\n\b\u0001\u0010\u0012\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u0010\u0014J\u000e\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00190\u0003H'J\u001e\u0010\u001a\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001b0\fj\b\u0012\u0004\u0012\u00020\u001b`\r0\u0003H'JB\u0010\u001c\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001d0\fj\b\u0012\u0004\u0012\u00020\u001d`\r0\u00032\u0018\b\u0001\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020\u00060\fj\b\u0012\u0004\u0012\u00020\u0006`\r2\b\b\u0001\u0010\u001f\u001a\u00020\u0013H'J(\u0010 \u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u001d0\fj\b\u0012\u0004\u0012\u00020\u001d`\r0\u00032\b\b\u0001\u0010\u001f\u001a\u00020\u0013H'J/\u0010!\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\"0\fj\b\u0012\u0004\u0012\u00020\"`\r0\u00032\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u0010\u0014J9\u0010#\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\"0\fj\b\u0012\u0004\u0012\u00020\"`\r0\u00032\b\b\u0001\u0010$\u001a\u00020\u00132\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u0010%J;\u0010&\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020'0\fj\b\u0012\u0004\u0012\u00020'`\r0\u00032\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u00132\n\b\u0001\u0010(\u001a\u0004\u0018\u00010\u0006H'¢\u0006\u0002\u0010)JE\u0010*\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020'0\fj\b\u0012\u0004\u0012\u00020'`\r0\u00032\b\b\u0001\u0010$\u001a\u00020\u00132\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u00132\n\b\u0001\u0010(\u001a\u0004\u0018\u00010\u0006H'¢\u0006\u0002\u0010+J3\u0010,\u001a\b\u0012\u0004\u0012\u00020-0\u00032\b\b\u0001\u0010.\u001a\u00020\u00132\b\b\u0001\u0010/\u001a\u00020\u00062\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u00100J,\u00101\u001a\b\u0012\u0004\u0012\u0002020\u00032\b\b\u0001\u00103\u001a\u0002042\b\b\u0001\u00105\u001a\u00020\u00132\b\b\u0001\u0010\u0012\u001a\u00020\u0013H'J,\u00106\u001a\b\u0012\u0004\u0012\u0002020\u00032\b\b\u0001\u00107\u001a\u00020\u00132\b\b\u0001\u00105\u001a\u00020\u00132\b\b\u0001\u0010\u0012\u001a\u00020\u0013H'J9\u00108\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020'0\fj\b\u0012\u0004\u0012\u00020'`\r0\u00032\b\b\u0001\u00109\u001a\u00020\u00132\n\b\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u0010%J,\u0010:\u001a\b\u0012\u0004\u0012\u0002020\u00032\b\b\u0001\u0010;\u001a\u00020\u00132\b\b\u0001\u00105\u001a\u00020\u00132\b\b\u0001\u0010\u0012\u001a\u00020\u0013H'J\u001f\u0010<\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\n\b\u0001\u0010=\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u0010\u0014Jq\u0010>\u001a\b\u0012\u0004\u0012\u00020?0\u00032\b\b\u0001\u0010@\u001a\u00020\u00062\n\b\u0001\u0010A\u001a\u0004\u0018\u00010\u00132\n\b\u0001\u0010B\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010C\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010D\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010;\u001a\u0004\u0018\u00010\u00132\n\b\u0001\u00105\u001a\u0004\u0018\u00010\u00132\n\b\u0001\u0010E\u001a\u0004\u0018\u00010\u0006H'¢\u0006\u0002\u0010FJ/\u0010G\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020H0\fj\b\u0012\u0004\u0012\u00020H`\r0\u00032\n\b\u0001\u0010I\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u0010\u0014J3\u0010J\u001a\b\u0012\u0004\u0012\u00020H0\u00032\b\b\u0001\u00109\u001a\u00020\u00132\b\b\u0001\u0010K\u001a\u00020\u00062\n\b\u0001\u0010=\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u00100J\u0018\u0010L\u001a\b\u0012\u0004\u0012\u00020M0\u00032\b\b\u0001\u0010N\u001a\u00020\u0006H'J\u000e\u0010O\u001a\b\u0012\u0004\u0012\u00020P0\u0003H'J7\u0010Q\u001a\b\u0012\u0004\u0012\u00020R0\u00032\n\b\u0001\u0010S\u001a\u0004\u0018\u00010\u00132\n\b\u0001\u0010;\u001a\u0004\u0018\u00010\u00132\n\b\u0001\u00105\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u0010TJo\u0010U\u001a\b\u0012\u0004\u0012\u00020V0\u00032\b\b\u0001\u0010W\u001a\u00020\u00062\b\b\u0001\u0010@\u001a\u00020\u00062\n\b\u0001\u0010A\u001a\u0004\u0018\u00010\u00132\n\b\u0001\u0010B\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010C\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010D\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010;\u001a\u0004\u0018\u00010\u00132\n\b\u0001\u00105\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u0010XJy\u0010Y\u001a\b\u0012\u0004\u0012\u00020?0\u00032\b\b\u0001\u0010Z\u001a\u00020\u00062\b\b\u0001\u0010W\u001a\u00020\u00062\b\b\u0001\u0010@\u001a\u00020\u00062\n\b\u0001\u0010A\u001a\u0004\u0018\u00010\u00132\n\b\u0001\u0010B\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010C\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010D\u001a\u0004\u0018\u00010\u00062\n\b\u0001\u0010;\u001a\u0004\u0018\u00010\u00132\n\b\u0001\u00105\u001a\u0004\u0018\u00010\u0013H'¢\u0006\u0002\u0010[J\"\u0010\\\u001a\b\u0012\u0004\u0012\u00020?0\u00032\b\b\u0001\u0010Z\u001a\u00020\u00062\b\b\u0001\u0010]\u001a\u00020\u0013H'J\u001a\u0010^\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\n\b\u0001\u0010_\u001a\u0004\u0018\u00010\u0006H'J\u0018\u0010`\u001a\b\u0012\u0004\u0012\u00020R0\u00032\b\b\u0001\u0010Z\u001a\u00020\u0006H'J\u001e\u0010a\u001a\u0018\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020b0\fj\b\u0012\u0004\u0012\u00020b`\r0\u0003H'J\u0018\u0010c\u001a\b\u0012\u0004\u0012\u00020?0\u00032\b\b\u0001\u00109\u001a\u00020\u0013H'J\u0018\u0010d\u001a\b\u0012\u0004\u0012\u00020\n0\u00032\b\b\u0001\u0010K\u001a\u00020\u0006H'J\u000e\u0010e\u001a\b\u0012\u0004\u0012\u00020f0\u0003H'¨\u0006g"}, d2 = {"Lcom/example/digitalkiosk/network/BackendService;", "", FirebaseAnalytics.Event.LOGIN, "Lretrofit2/Call;", "Lcom/example/digitalkiosk/models/LoginToken;", "kiosk_id", "", "password", "app_version", "printer_data", "Ljava/lang/Void;", "usb_printers", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "bluetooth_printers", "verfiy", "Lcom/example/digitalkiosk/models/Kiosk;", "main_banners", "language", "", "(Ljava/lang/Integer;)Lretrofit2/Call;", "inner_banners", "Lcom/example/digitalkiosk/models/BannerSlide;", "handicap_banners", "kiosk_settings", "Lcom/example/digitalkiosk/models/KioskSetting;", "get_languages", "Lcom/example/digitalkiosk/models/Language;", "get_translations", "Lcom/example/digitalkiosk/models/Translation;", "terms", "language_id", "get_all_translations", "get_categories", "Lcom/example/digitalkiosk/models/Category;", "get_sub_categories", "category_id", "(ILjava/lang/Integer;)Lretrofit2/Call;", "get_most_selling_items", "Lcom/example/digitalkiosk/models/Item;", "timezone", "(Ljava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;", "get_category_items", "(ILjava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;", "get_item_details", "Lcom/example/digitalkiosk/models/ItemDetails;", FirebaseAnalytics.Param.ITEM_ID, "item_type", "(ILjava/lang/String;Ljava/lang/Integer;)Lretrofit2/Call;", FirebaseAnalytics.Event.ADD_TO_CART, "Lcom/example/digitalkiosk/models/Cart;", "item_details", "Lcom/example/digitalkiosk/models/ItemToAdd;", "voucher", FirebaseAnalytics.Event.REMOVE_FROM_CART, "cart_item_id", "get_sides", OfflineStorageConstantsKt.ID, "get_cart", "bag_added", "empty_cart", "reserved_table", "create_order", "Lcom/example/digitalkiosk/models/Order;", "type", "dinein_table", "pickup_time", "pickup_number", "payment_method", "unpaid", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lretrofit2/Call;", "get_tables", "Lcom/example/digitalkiosk/models/Table;", "my_table", "update_table", NotificationCompat.CATEGORY_STATUS, "verify_voucher", "Lcom/example/digitalkiosk/models/VoucherResponse;", "code", "stripe_connection_token", "Lcom/example/digitalkiosk/models/StripeConnectionToken;", "create_payment_intent", "Lcom/example/digitalkiosk/models/ServerPaymentIntent;", BbposDeviceControllerImpl.AMOUNT_PARAM_NAME, "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;", "create_order_payment_intent", "Lcom/example/digitalkiosk/models/CreateIntentResponse;", OfflineStorageConstantsKt.READER_ID, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;", "capture_payment_intent", "intent_id", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lretrofit2/Call;", "capture_order_payment_intent", "order_id", "payment_failed", "message", "cancel_payment_intent", "customer_receipts_queue", "Lcom/example/digitalkiosk/models/KioskMeta;", "customer_receipts_queue_print", "printer_status_update", "get_test_print_queue", "Lcom/example/digitalkiosk/models/TestPrintQueueResponse;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface BackendService {
    @POST(FirebaseAnalytics.Event.ADD_TO_CART)
    Call<Cart> add_to_cart(@Body ItemToAdd item_details, @Query("voucher") int voucher, @Query("language") int language);

    @FormUrlEncoded
    @POST("stripe/cancel_payment_intent")
    Call<ServerPaymentIntent> cancel_payment_intent(@Field(OfflineStorageConstantsKt.PAYMENT_INTENT_ID) String intent_id);

    @FormUrlEncoded
    @Headers({"Accept: application/json"})
    @POST("stripe/capture_order_payment_intent")
    Call<Order> capture_order_payment_intent(@Field(OfflineStorageConstantsKt.PAYMENT_INTENT_ID) String intent_id, @Field("order_id") int order_id);

    @FormUrlEncoded
    @Headers({"Accept: application/json"})
    @POST("stripe/capture_payment_intent")
    Call<Order> capture_payment_intent(@Field(OfflineStorageConstantsKt.PAYMENT_INTENT_ID) String intent_id, @Field(OfflineStorageConstantsKt.READER_ID) String reader_id, @Field("order_type") String type, @Field("dinein_table") Integer dinein_table, @Field("pickup_time") String pickup_time, @Field("pickup_number") String pickup_number, @Field("payment_method") String payment_method, @Query("bag_added") Integer bag_added, @Query("voucher") Integer voucher);

    @FormUrlEncoded
    @POST("create-order")
    Call<Order> create_order(@Field("order_type") String type, @Field("dinein_table") Integer dinein_table, @Field("pickup_time") String pickup_time, @Field("pickup_number") String pickup_number, @Field("payment_method") String payment_method, @Query("bag_added") Integer bag_added, @Query("voucher") Integer voucher, @Query("unpaid") String unpaid);

    @FormUrlEncoded
    @POST("stripe/create_order_payment_intent")
    Call<CreateIntentResponse> create_order_payment_intent(@Field(OfflineStorageConstantsKt.READER_ID) String reader_id, @Field("order_type") String type, @Field("dinein_table") Integer dinein_table, @Field("pickup_time") String pickup_time, @Field("pickup_number") String pickup_number, @Field("payment_method") String payment_method, @Query("bag_added") Integer bag_added, @Query("voucher") Integer voucher);

    @FormUrlEncoded
    @POST("stripe/create_payment_intent")
    Call<ServerPaymentIntent> create_payment_intent(@Field(BbposDeviceControllerImpl.AMOUNT_PARAM_NAME) Integer amount, @Field("bag_added") Integer bag_added, @Field("voucher") Integer voucher);

    @GET("customer_receipts_queue")
    Call<ArrayList<KioskMeta>> customer_receipts_queue();

    @POST("customer_receipts_queue/{id}/print")
    Call<Order> customer_receipts_queue_print(@Path(OfflineStorageConstantsKt.ID) int id);

    @FormUrlEncoded
    @POST("empty_cart")
    Call<Void> empty_cart(@Field("reserved_table") Integer reserved_table);

    @GET("language/{id}/translations")
    Call<ArrayList<Translation>> get_all_translations(@Path(OfflineStorageConstantsKt.ID) int language_id);

    @GET("cart")
    Call<Cart> get_cart(@Query("bag_added") int bag_added, @Query("voucher") int voucher, @Query("language") int language);

    @GET("categories")
    Call<ArrayList<Category>> get_categories(@Query("language_id") Integer language_id);

    @GET("category/{id}/items")
    Call<ArrayList<Item>> get_category_items(@Path(OfflineStorageConstantsKt.ID) int category_id, @Query("language_id") Integer language_id, @Query("timezone") String timezone);

    @GET("item/{id}")
    Call<ItemDetails> get_item_details(@Path(OfflineStorageConstantsKt.ID) int item_id, @Query("type") String item_type, @Query("language_id") Integer language_id);

    @GET("languages")
    Call<ArrayList<Language>> get_languages();

    @GET("most_selling_items")
    Call<ArrayList<Item>> get_most_selling_items(@Query("language_id") Integer language_id, @Query("timezone") String timezone);

    @GET("sides/{id}")
    Call<ArrayList<Item>> get_sides(@Path(OfflineStorageConstantsKt.ID) int id, @Query("language_id") Integer language_id);

    @GET("category/{id}/sub_categories")
    Call<ArrayList<Category>> get_sub_categories(@Path(OfflineStorageConstantsKt.ID) int category_id, @Query("language_id") Integer language_id);

    @GET("tables")
    Call<ArrayList<Table>> get_tables(@Query("my_table") Integer my_table);

    @GET("test_print_queue")
    Call<TestPrintQueueResponse> get_test_print_queue();

    @FormUrlEncoded
    @POST("translations")
    Call<ArrayList<Translation>> get_translations(@Field("terms[]") ArrayList<String> terms, @Field("language_id") int language_id);

    @GET("handicap-banner-slides")
    Call<ArrayList<BannerSlide>> handicap_banners(@Query("language_id") Integer language);

    @GET("inner-banner-slides")
    Call<ArrayList<BannerSlide>> inner_banners(@Query("language_id") Integer language);

    @GET("kiosk-settings")
    Call<KioskSetting> kiosk_settings();

    @FormUrlEncoded
    @POST("kiosk-app-login")
    Call<LoginToken> login(@Field("kiosk_id") String kiosk_id, @Field("password") String password, @Field("app_version") String app_version);

    @GET("main-banners")
    Call<ArrayList<String>> main_banners(@Query("language_id") Integer language);

    @FormUrlEncoded
    @POST("stripe/payment_failed")
    Call<Void> payment_failed(@Field("message") String message);

    @FormUrlEncoded
    @POST("printer-data")
    Call<Void> printer_data(@Field("usb_printers[]") ArrayList<String> usb_printers, @Field("bluetooth_printers[]") ArrayList<String> bluetooth_printers);

    @FormUrlEncoded
    @POST("printer_status_update")
    Call<Void> printer_status_update(@Field(NotificationCompat.CATEGORY_STATUS) String status);

    @DELETE("remove_from_cart/{cart_item_id}")
    Call<Cart> remove_from_cart(@Path("cart_item_id") int cart_item_id, @Query("voucher") int voucher, @Query("language") int language);

    @GET("stripe/connection_token")
    Call<StripeConnectionToken> stripe_connection_token();

    @FormUrlEncoded
    @PATCH("table/{id}")
    Call<Table> update_table(@Path(OfflineStorageConstantsKt.ID) int id, @Field(NotificationCompat.CATEGORY_STATUS) String status, @Field("reserved_table") Integer reserved_table);

    @Headers({"Accept: application/json"})
    @POST("verify-access")
    Call<Kiosk> verfiy();

    @FormUrlEncoded
    @POST("verify_voucher")
    Call<VoucherResponse> verify_voucher(@Field("code") String code);
}
