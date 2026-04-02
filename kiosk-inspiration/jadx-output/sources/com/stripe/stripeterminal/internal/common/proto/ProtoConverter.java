package com.stripe.stripeterminal.internal.common.proto;

import com.stripe.hardware.status.ReaderInfo;
import com.stripe.proto.api.sdk.CollectDataRequest;
import com.stripe.proto.api.sdk.OfflinePaymentDetails;
import com.stripe.proto.api.sdk.OfflineSetupIntentDetails;
import com.stripe.proto.model.merchant.ApiLocationPb;
import com.stripe.proto.model.rest.AllowRedisplay;
import com.stripe.proto.model.rest.ErrorResponse;
import com.stripe.proto.model.rest.ExpandedLocationReader;
import com.stripe.proto.model.rest.PaymentIntent;
import com.stripe.proto.model.rest.PaymentIntentExpandedMethod;
import com.stripe.proto.model.rest.PaymentMethodOptions;
import com.stripe.proto.model.rest.Reader;
import com.stripe.proto.model.rest.ReaderCollectedData;
import com.stripe.proto.model.sdk.Cart;
import com.stripe.stripeterminal.external.api.ApiError;
import com.stripe.stripeterminal.external.models.CollectedData;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.NextAction;
import com.stripe.stripeterminal.external.models.OfflineDetails;
import com.stripe.stripeterminal.external.models.PaymentMethod;
import com.stripe.stripeterminal.external.models.PaymentMethodUnion;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.Refund;
import com.stripe.stripeterminal.external.models.RoutingPriority;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.SetupIntentOfflineDetails;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.api.DiscoverLocationsResponse;
import com.stripe.stripeterminal.internal.common.api.ListAllReadersResponse;
import com.stripe.stripeterminal.internal.common.api.ListLocationsResponse;
import com.stripe.transaction.PaymentMethodCollectionType;
import com.sun.jna.platform.win32.WinError;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* JADX INFO: compiled from: ProtoConverter.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000ü\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J(\u0010\f\u001a\u0002H\r\"\n\b\u0000\u0010\u000e\u0018\u0001*\u00020\u0001\"\u0006\b\u0001\u0010\r\u0018\u0001*\u0002H\u000eH\u0080\b¢\u0006\u0004\b\u000f\u0010\u0010J\u001e\u0010\u0011\u001a\u0002H\r\"\n\b\u0000\u0010\r\u0018\u0001*\u00020\u0001*\u00020\u0004H\u0086\b¢\u0006\u0002\u0010\u0012J \u0010\u0013\u001a\u00020\u0004\"\n\b\u0000\u0010\u000e\u0018\u0001*\u00020\u0001*\u0002H\u000eH\u0080\b¢\u0006\u0004\b\u0014\u0010\u0015J\n\u0010\u0016\u001a\u00020\u0017*\u00020\u0018J\n\u0010\u0019\u001a\u00020\u001a*\u00020\u001bJ\n\u0010\u001c\u001a\u00020\u001d*\u00020\u001eJ\n\u0010\u001f\u001a\u00020 *\u00020!J\n\u0010\"\u001a\u00020#*\u00020$J\n\u0010%\u001a\u00020&*\u00020'J\n\u0010(\u001a\u00020)*\u00020*J\n\u0010+\u001a\u00020,*\u00020-J\n\u0010.\u001a\u00020/*\u000200J\n\u00101\u001a\u000202*\u000203J\n\u00101\u001a\u000204*\u000205J\n\u00106\u001a\u000207*\u000208J\n\u00109\u001a\u00020:*\u000208J\n\u0010;\u001a\u00020<*\u00020=J\u0016\u0010>\u001a\b\u0012\u0004\u0012\u00020@0?*\b\u0012\u0004\u0012\u00020A0?J\n\u0010B\u001a\u00020@*\u00020AJ\n\u0010C\u001a\u00020D*\u00020EJ\n\u0010F\u001a\u00020G*\u00020HJ\n\u0010I\u001a\u00020J*\u00020KJ\n\u0010L\u001a\u00020\u0018*\u00020\u0017J\n\u0010M\u001a\u00020'*\u00020&J\n\u0010N\u001a\u00020\u001b*\u00020\u001aJ\n\u0010O\u001a\u00020!*\u00020 J\n\u0010P\u001a\u00020$*\u00020#J\n\u0010Q\u001a\u00020**\u00020)J\n\u0010R\u001a\u00020S*\u00020TJ\n\u0010U\u001a\u00020-*\u00020,J\n\u0010V\u001a\u000200*\u00020/J\n\u0010W\u001a\u000203*\u000202J\n\u0010X\u001a\u000208*\u000207J\n\u0010X\u001a\u000208*\u00020:J\n\u0010Y\u001a\u00020=*\u00020<J\u0016\u0010Z\u001a\b\u0012\u0004\u0012\u00020A0?*\b\u0012\u0004\u0012\u00020@0?J\n\u0010[\u001a\u00020A*\u00020@J\n\u0010\\\u001a\u00020E*\u00020]J\n\u0010\\\u001a\u00020E*\u00020DJ\n\u0010^\u001a\u00020_*\u00020`J\n\u0010a\u001a\u00020H*\u00020GJ\n\u0010b\u001a\u00020K*\u00020JJ\n\u0010c\u001a\u000205*\u000204J\u0018\u0010d\u001a\u00020e*\u0004\u0018\u00010&2\n\b\u0002\u0010f\u001a\u0004\u0018\u00010gR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\t8F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006h"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;", "", "()V", "API_SESSION_EXPIRED", "", "PLATFORM_API_SESSION_EXPIRED", "UNSUPPORTED_READER_VERSION", "UNSUPPORTED_SDK_VERSION", "serializer", "Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;", "getSerializer", "()Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;", "convert", "Output", "Input", "convert$public_release", "(Ljava/lang/Object;)Ljava/lang/Object;", "fromJson", "(Ljava/lang/String;)Ljava/lang/Object;", "prettyPrint", "prettyPrint$public_release", "(Ljava/lang/Object;)Ljava/lang/String;", "toProtoAllowRedisplay", "Lcom/stripe/proto/model/rest/AllowRedisplay;", "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;", "toProtoCart", "Lcom/stripe/proto/model/sdk/Cart;", "Lcom/stripe/stripeterminal/external/models/Cart;", "toProtoCollectDataType", "Lcom/stripe/proto/api/sdk/CollectDataRequest$CollectDataType;", "Lcom/stripe/transaction/PaymentMethodCollectionType$Passthrough$PassthroughType;", "toProtoCollectedData", "Lcom/stripe/proto/model/rest/ReaderCollectedData;", "Lcom/stripe/stripeterminal/external/models/CollectedData;", "toProtoDiscoverLocationsResponse", "Lcom/stripe/proto/api/rest/DiscoverLocationsResponse;", "Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse;", "toProtoErrorResponse", "Lcom/stripe/proto/model/rest/ErrorResponse;", "Lcom/stripe/stripeterminal/external/api/ApiError;", "toProtoListAllReadersResponse", "Lcom/stripe/proto/api/rest/ListAllReadersResponse;", "Lcom/stripe/stripeterminal/internal/common/api/ListAllReadersResponse;", "toProtoLocation", "Lcom/stripe/proto/model/merchant/ApiLocationPb;", "Lcom/stripe/stripeterminal/external/models/Location;", "toProtoNextAction", "Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;", "Lcom/stripe/stripeterminal/external/models/NextAction;", "toProtoOfflineDetails", "Lcom/stripe/proto/api/sdk/OfflinePaymentDetails;", "Lcom/stripe/stripeterminal/external/models/OfflineDetails;", "Lcom/stripe/proto/api/sdk/OfflineSetupIntentDetails;", "Lcom/stripe/stripeterminal/external/models/SetupIntentOfflineDetails;", "toProtoPaymentIntent", "Lcom/stripe/proto/model/rest/PaymentIntent;", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "toProtoPaymentIntentExpandedMethod", "Lcom/stripe/proto/model/rest/PaymentIntentExpandedMethod;", "toProtoPaymentMethod", "Lcom/stripe/proto/model/rest/PaymentMethod;", "Lcom/stripe/stripeterminal/external/models/PaymentMethod;", "toProtoPriorities", "", "Lcom/stripe/proto/model/rest/PaymentMethodOptions$RoutingPriority;", "Lcom/stripe/stripeterminal/external/models/RoutingPriority;", "toProtoPriority", "toProtoReader", "Lcom/stripe/proto/model/rest/Reader;", "Lcom/stripe/stripeterminal/external/models/Reader;", "toProtoRefund", "Lcom/stripe/proto/model/rest/Refund;", "Lcom/stripe/stripeterminal/external/models/Refund;", "toProtoSetupIntent", "Lcom/stripe/proto/model/rest/SetupIntent;", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "toSdkAllowRedisplay", "toSdkApiError", "toSdkCart", "toSdkCollectedData", "toSdkDiscoverLocationsResponse", "toSdkListAllReadersResponse", "toSdkListLocationsResponse", "Lcom/stripe/stripeterminal/internal/common/api/ListLocationsResponse;", "Lcom/stripe/proto/api/rest/ListLocationsResponse;", "toSdkLocation", "toSdkNextAction", "toSdkOfflineDetails", "toSdkPaymentIntent", "toSdkPaymentMethod", "toSdkPriorities", "toSdkPriority", "toSdkReader", "Lcom/stripe/proto/model/rest/ExpandedLocationReader;", "toSdkReaderInfo", "Lcom/stripe/hardware/status/ReaderInfo;", "Lcom/stripe/proto/api/sdk/ReaderInfo;", "toSdkRefund", "toSdkSetupIntent", "toSdkSetupIntentOfflineDetails", "toTerminalException", "Lcom/stripe/stripeterminal/external/models/TerminalException;", "fallbackTerminalErrorCode", "Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ProtoConverter {
    public static final String API_SESSION_EXPIRED = "api_key_expired";
    public static final ProtoConverter INSTANCE = new ProtoConverter();
    public static final String PLATFORM_API_SESSION_EXPIRED = "platform_api_key_expired";
    private static final String UNSUPPORTED_READER_VERSION = "terminal_unsupported_reader_version";
    private static final String UNSUPPORTED_SDK_VERSION = "terminal_unsupported_sdk_version";

    private ProtoConverter() {
    }

    public final JsonSerializer getSerializer() {
        return ProtoConverter_commonJvmKt.jsonSerializer();
    }

    public final /* synthetic */ <Output> Output fromJson(String str) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        JsonSerializer jsonSerializer = ProtoConverter_commonJvmKt.jsonSerializer();
        Intrinsics.reifiedOperationMarker(4, "Output");
        return (Output) jsonSerializer.fromJson(str, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final /* synthetic */ <Input> String prettyPrint$public_release(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        JsonSerializer jsonSerializer = ProtoConverter_commonJvmKt.jsonSerializer();
        Intrinsics.reifiedOperationMarker(4, "Input");
        return jsonSerializer.prettyPrint(input, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final /* synthetic */ <Input, Output> Output convert$public_release(Input input) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        JsonSerializer jsonSerializer = ProtoConverter_commonJvmKt.jsonSerializer();
        Intrinsics.reifiedOperationMarker(4, "Input");
        String json = jsonSerializer.toJson(input, Reflection.getOrCreateKotlinClass(Object.class));
        JsonSerializer jsonSerializer2 = ProtoConverter_commonJvmKt.jsonSerializer();
        Intrinsics.reifiedOperationMarker(4, "Output");
        return (Output) jsonSerializer2.fromJson(json, Reflection.getOrCreateKotlinClass(Object.class));
    }

    public final PaymentIntent toProtoPaymentIntent(com.stripe.stripeterminal.external.models.PaymentIntent paymentIntent) {
        Intrinsics.checkNotNullParameter(paymentIntent, "<this>");
        String paymentMethodId = paymentIntent.getPaymentMethodId();
        return (PaymentIntent) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(com.stripe.stripeterminal.external.models.PaymentIntent.copy$default(paymentIntent, null, 0L, 0L, 0L, null, 0L, 0L, null, null, null, null, null, 0L, null, null, null, null, null, false, null, null, paymentMethodId != null ? new PaymentMethodUnion.Reference(paymentMethodId) : null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -2097153, 15, null), Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.PaymentIntent.class)), Reflection.getOrCreateKotlinClass(PaymentIntent.class));
    }

    public final List<PaymentMethodOptions.RoutingPriority> toProtoPriorities(List<? extends RoutingPriority> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends RoutingPriority> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(INSTANCE.toProtoPriority((RoutingPriority) it.next()));
        }
        return arrayList;
    }

    public final List<RoutingPriority> toSdkPriorities(List<? extends PaymentMethodOptions.RoutingPriority> list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        List<? extends PaymentMethodOptions.RoutingPriority> list2 = list;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list2, 10));
        Iterator<T> it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(INSTANCE.toSdkPriority((PaymentMethodOptions.RoutingPriority) it.next()));
        }
        return arrayList;
    }

    public final Reader toProtoReader(com.stripe.stripeterminal.external.models.Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        String id = reader.getId();
        String baseUrl = reader.getBaseUrl();
        String ipAddress = reader.getIpAddress();
        String deviceName = reader.getDeviceType().getDeviceName();
        String serialNumber = reader.getSerialNumber();
        String softwareVersion = reader.getSoftwareVersion();
        String label = reader.getLabel();
        Boolean livemode = reader.getLivemode();
        Location location = reader.getLocation();
        String id2 = location != null ? location.getId() : null;
        Reader.NetworkStatus networkStatus = reader.getNetworkStatus();
        return new com.stripe.proto.model.rest.Reader(id, "terminal.reader", softwareVersion, deviceName, ipAddress, label, id2, serialNumber, networkStatus != null ? networkStatus.getStatus() : null, livemode, baseUrl, null, 2048, null);
    }

    public final ReaderInfo toSdkReaderInfo(com.stripe.proto.api.sdk.ReaderInfo readerInfo) {
        Intrinsics.checkNotNullParameter(readerInfo, "<this>");
        String str = readerInfo.configVersion;
        String str2 = readerInfo.deviceSettingVersion;
        String str3 = readerInfo.bootloaderVersion;
        String str4 = readerInfo.emvKeyProfileId;
        String str5 = readerInfo.firmwareVersion;
        String str6 = readerInfo.macKeyProfileId;
        return new ReaderInfo(null, null, str, str2, str3, str5, null, readerInfo.pinKeyProfileId, str6, readerInfo.trackKeyProfileId, str4, readerInfo.pinKeysetId, null, null, null, readerInfo.serial, null, null, null, null, false, null, null, null, 16740419, null);
    }

    public static /* synthetic */ TerminalException toTerminalException$default(ProtoConverter protoConverter, ErrorResponse errorResponse, TerminalErrorCode terminalErrorCode, int i, Object obj) {
        if ((i & 1) != 0) {
            terminalErrorCode = null;
        }
        return protoConverter.toTerminalException(errorResponse, terminalErrorCode);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.stripe.stripeterminal.external.models.TerminalException toTerminalException(com.stripe.proto.model.rest.ErrorResponse r9, com.stripe.stripeterminal.external.models.TerminalErrorCode r10) {
        /*
            r8 = this;
            r0 = 0
            if (r9 == 0) goto L6
            java.lang.String r1 = r9.code
            goto L7
        L6:
            r1 = r0
        L7:
            if (r1 == 0) goto L3e
            int r2 = r1.hashCode()
            switch(r2) {
                case -1563008506: goto L32;
                case -996010284: goto L26;
                case 1796578377: goto L1a;
                case 2068094624: goto L11;
                default: goto L10;
            }
        L10:
            goto L3e
        L11:
            java.lang.String r2 = "api_key_expired"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L2f
            goto L3e
        L1a:
            java.lang.String r2 = "terminal_unsupported_reader_version"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L23
            goto L3e
        L23:
            com.stripe.stripeterminal.external.models.TerminalErrorCode r10 = com.stripe.stripeterminal.external.models.TerminalErrorCode.UNSUPPORTED_READER_VERSION
            goto L42
        L26:
            java.lang.String r2 = "platform_api_key_expired"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L2f
            goto L3e
        L2f:
            com.stripe.stripeterminal.external.models.TerminalErrorCode r10 = com.stripe.stripeterminal.external.models.TerminalErrorCode.SESSION_EXPIRED
            goto L42
        L32:
            java.lang.String r2 = "terminal_unsupported_sdk_version"
            boolean r1 = r1.equals(r2)
            if (r1 != 0) goto L3b
            goto L3e
        L3b:
            com.stripe.stripeterminal.external.models.TerminalErrorCode r10 = com.stripe.stripeterminal.external.models.TerminalErrorCode.UNSUPPORTED_SDK
            goto L42
        L3e:
            if (r10 != 0) goto L42
            com.stripe.stripeterminal.external.models.TerminalErrorCode r10 = com.stripe.stripeterminal.external.models.TerminalErrorCode.DECLINED_BY_STRIPE_API
        L42:
            r2 = r10
            com.stripe.stripeterminal.external.models.TerminalException r1 = new com.stripe.stripeterminal.external.models.TerminalException
            if (r9 == 0) goto L4a
            java.lang.String r10 = r9.message
            goto L4b
        L4a:
            r10 = r0
        L4b:
            if (r10 != 0) goto L4f
            java.lang.String r10 = ""
        L4f:
            r3 = r10
            if (r9 == 0) goto L56
            com.stripe.stripeterminal.external.api.ApiError r0 = r8.toSdkApiError(r9)
        L56:
            r5 = r0
            r6 = 4
            r7 = 0
            r4 = 0
            r1.<init>(r2, r3, r4, r5, r6, r7)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.stripeterminal.internal.common.proto.ProtoConverter.toTerminalException(com.stripe.proto.model.rest.ErrorResponse, com.stripe.stripeterminal.external.models.TerminalErrorCode):com.stripe.stripeterminal.external.models.TerminalException");
    }

    public final com.stripe.stripeterminal.external.models.PaymentIntent toSdkPaymentIntent(PaymentIntent paymentIntent) {
        Intrinsics.checkNotNullParameter(paymentIntent, "<this>");
        return (com.stripe.stripeterminal.external.models.PaymentIntent) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(paymentIntent, Reflection.getOrCreateKotlinClass(PaymentIntent.class)), Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.PaymentIntent.class));
    }

    public final OfflineDetails toSdkOfflineDetails(OfflinePaymentDetails offlinePaymentDetails) {
        Intrinsics.checkNotNullParameter(offlinePaymentDetails, "<this>");
        return (OfflineDetails) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(offlinePaymentDetails, Reflection.getOrCreateKotlinClass(OfflinePaymentDetails.class)), Reflection.getOrCreateKotlinClass(OfflineDetails.class));
    }

    public final SetupIntentOfflineDetails toSdkSetupIntentOfflineDetails(OfflineSetupIntentDetails offlineSetupIntentDetails) {
        Intrinsics.checkNotNullParameter(offlineSetupIntentDetails, "<this>");
        return (SetupIntentOfflineDetails) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(offlineSetupIntentDetails, Reflection.getOrCreateKotlinClass(OfflineSetupIntentDetails.class)), Reflection.getOrCreateKotlinClass(SetupIntentOfflineDetails.class));
    }

    public final OfflinePaymentDetails toProtoOfflineDetails(OfflineDetails offlineDetails) {
        Intrinsics.checkNotNullParameter(offlineDetails, "<this>");
        return (OfflinePaymentDetails) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(offlineDetails, Reflection.getOrCreateKotlinClass(OfflineDetails.class)), Reflection.getOrCreateKotlinClass(OfflinePaymentDetails.class));
    }

    public final OfflineSetupIntentDetails toProtoOfflineDetails(SetupIntentOfflineDetails setupIntentOfflineDetails) {
        Intrinsics.checkNotNullParameter(setupIntentOfflineDetails, "<this>");
        return (OfflineSetupIntentDetails) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(setupIntentOfflineDetails, Reflection.getOrCreateKotlinClass(SetupIntentOfflineDetails.class)), Reflection.getOrCreateKotlinClass(OfflineSetupIntentDetails.class));
    }

    public final com.stripe.stripeterminal.external.models.PaymentIntent toSdkPaymentIntent(PaymentIntentExpandedMethod paymentIntentExpandedMethod) {
        Intrinsics.checkNotNullParameter(paymentIntentExpandedMethod, "<this>");
        return (com.stripe.stripeterminal.external.models.PaymentIntent) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(paymentIntentExpandedMethod, Reflection.getOrCreateKotlinClass(PaymentIntentExpandedMethod.class)), Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.PaymentIntent.class));
    }

    public final PaymentIntentExpandedMethod toProtoPaymentIntentExpandedMethod(com.stripe.stripeterminal.external.models.PaymentIntent paymentIntent) {
        Intrinsics.checkNotNullParameter(paymentIntent, "<this>");
        return (PaymentIntentExpandedMethod) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(paymentIntent, Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.PaymentIntent.class)), Reflection.getOrCreateKotlinClass(PaymentIntentExpandedMethod.class));
    }

    public final PaymentMethod toSdkPaymentMethod(com.stripe.proto.model.rest.PaymentMethod paymentMethod) {
        Intrinsics.checkNotNullParameter(paymentMethod, "<this>");
        return (PaymentMethod) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(paymentMethod, Reflection.getOrCreateKotlinClass(com.stripe.proto.model.rest.PaymentMethod.class)), Reflection.getOrCreateKotlinClass(PaymentMethod.class));
    }

    public final com.stripe.proto.model.rest.PaymentMethod toProtoPaymentMethod(PaymentMethod paymentMethod) {
        Intrinsics.checkNotNullParameter(paymentMethod, "<this>");
        return (com.stripe.proto.model.rest.PaymentMethod) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(paymentMethod, Reflection.getOrCreateKotlinClass(PaymentMethod.class)), Reflection.getOrCreateKotlinClass(com.stripe.proto.model.rest.PaymentMethod.class));
    }

    public final SetupIntent toSdkSetupIntent(com.stripe.proto.model.rest.SetupIntent setupIntent) {
        Intrinsics.checkNotNullParameter(setupIntent, "<this>");
        return (SetupIntent) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(setupIntent, Reflection.getOrCreateKotlinClass(com.stripe.proto.model.rest.SetupIntent.class)), Reflection.getOrCreateKotlinClass(SetupIntent.class));
    }

    public final com.stripe.proto.model.rest.SetupIntent toProtoSetupIntent(SetupIntent setupIntent) {
        Intrinsics.checkNotNullParameter(setupIntent, "<this>");
        return (com.stripe.proto.model.rest.SetupIntent) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(setupIntent, Reflection.getOrCreateKotlinClass(SetupIntent.class)), Reflection.getOrCreateKotlinClass(com.stripe.proto.model.rest.SetupIntent.class));
    }

    public final Refund toSdkRefund(com.stripe.proto.model.rest.Refund refund) {
        Intrinsics.checkNotNullParameter(refund, "<this>");
        return (Refund) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(refund, Reflection.getOrCreateKotlinClass(com.stripe.proto.model.rest.Refund.class)), Reflection.getOrCreateKotlinClass(Refund.class));
    }

    public final PaymentMethodOptions.RoutingPriority toProtoPriority(RoutingPriority routingPriority) {
        Intrinsics.checkNotNullParameter(routingPriority, "<this>");
        return (PaymentMethodOptions.RoutingPriority) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(routingPriority, Reflection.getOrCreateKotlinClass(RoutingPriority.class)), Reflection.getOrCreateKotlinClass(PaymentMethodOptions.RoutingPriority.class));
    }

    public final RoutingPriority toSdkPriority(PaymentMethodOptions.RoutingPriority routingPriority) {
        Intrinsics.checkNotNullParameter(routingPriority, "<this>");
        return (RoutingPriority) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(routingPriority, Reflection.getOrCreateKotlinClass(PaymentMethodOptions.RoutingPriority.class)), Reflection.getOrCreateKotlinClass(RoutingPriority.class));
    }

    public final com.stripe.proto.model.rest.Refund toProtoRefund(Refund refund) {
        Intrinsics.checkNotNullParameter(refund, "<this>");
        return (com.stripe.proto.model.rest.Refund) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(refund, Reflection.getOrCreateKotlinClass(Refund.class)), Reflection.getOrCreateKotlinClass(com.stripe.proto.model.rest.Refund.class));
    }

    public final com.stripe.stripeterminal.external.models.Reader toSdkReader(com.stripe.proto.model.rest.Reader reader) {
        Intrinsics.checkNotNullParameter(reader, "<this>");
        return (com.stripe.stripeterminal.external.models.Reader) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(reader, Reflection.getOrCreateKotlinClass(com.stripe.proto.model.rest.Reader.class)), Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.Reader.class));
    }

    public final com.stripe.stripeterminal.external.models.Reader toSdkReader(ExpandedLocationReader expandedLocationReader) {
        Intrinsics.checkNotNullParameter(expandedLocationReader, "<this>");
        return (com.stripe.stripeterminal.external.models.Reader) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(expandedLocationReader, Reflection.getOrCreateKotlinClass(ExpandedLocationReader.class)), Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.Reader.class));
    }

    public final DiscoverLocationsResponse toSdkDiscoverLocationsResponse(com.stripe.proto.api.rest.DiscoverLocationsResponse discoverLocationsResponse) {
        Intrinsics.checkNotNullParameter(discoverLocationsResponse, "<this>");
        return (DiscoverLocationsResponse) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(discoverLocationsResponse, Reflection.getOrCreateKotlinClass(com.stripe.proto.api.rest.DiscoverLocationsResponse.class)), Reflection.getOrCreateKotlinClass(DiscoverLocationsResponse.class));
    }

    public final com.stripe.proto.api.rest.DiscoverLocationsResponse toProtoDiscoverLocationsResponse(DiscoverLocationsResponse discoverLocationsResponse) {
        Intrinsics.checkNotNullParameter(discoverLocationsResponse, "<this>");
        return (com.stripe.proto.api.rest.DiscoverLocationsResponse) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(discoverLocationsResponse, Reflection.getOrCreateKotlinClass(DiscoverLocationsResponse.class)), Reflection.getOrCreateKotlinClass(com.stripe.proto.api.rest.DiscoverLocationsResponse.class));
    }

    public final ListAllReadersResponse toSdkListAllReadersResponse(com.stripe.proto.api.rest.ListAllReadersResponse listAllReadersResponse) {
        Intrinsics.checkNotNullParameter(listAllReadersResponse, "<this>");
        return (ListAllReadersResponse) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(listAllReadersResponse, Reflection.getOrCreateKotlinClass(com.stripe.proto.api.rest.ListAllReadersResponse.class)), Reflection.getOrCreateKotlinClass(ListAllReadersResponse.class));
    }

    public final com.stripe.proto.api.rest.ListAllReadersResponse toProtoListAllReadersResponse(ListAllReadersResponse listAllReadersResponse) {
        Intrinsics.checkNotNullParameter(listAllReadersResponse, "<this>");
        return (com.stripe.proto.api.rest.ListAllReadersResponse) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(listAllReadersResponse, Reflection.getOrCreateKotlinClass(ListAllReadersResponse.class)), Reflection.getOrCreateKotlinClass(com.stripe.proto.api.rest.ListAllReadersResponse.class));
    }

    public final ApiError toSdkApiError(ErrorResponse errorResponse) {
        Intrinsics.checkNotNullParameter(errorResponse, "<this>");
        return (ApiError) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(errorResponse, Reflection.getOrCreateKotlinClass(ErrorResponse.class)), Reflection.getOrCreateKotlinClass(ApiError.class));
    }

    public final ErrorResponse toProtoErrorResponse(ApiError apiError) {
        Intrinsics.checkNotNullParameter(apiError, "<this>");
        ErrorResponse errorResponse = (ErrorResponse) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(apiError, Reflection.getOrCreateKotlinClass(ApiError.class)), Reflection.getOrCreateKotlinClass(ErrorResponse.class));
        com.stripe.stripeterminal.external.models.PaymentIntent paymentIntent = apiError.getPaymentIntent();
        if (paymentIntent == null || paymentIntent.getApplicationFeeAmount() != 0) {
            return errorResponse;
        }
        PaymentIntent paymentIntent2 = errorResponse.payment_intent;
        return ErrorResponse.copy$default(errorResponse, null, null, null, null, null, null, null, null, paymentIntent2 != null ? PaymentIntent.copy$default(paymentIntent2, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, -65537, 3, null) : null, null, null, WinError.RPC_S_CALL_IN_PROGRESS, null);
    }

    public final Location toSdkLocation(ApiLocationPb apiLocationPb) {
        Intrinsics.checkNotNullParameter(apiLocationPb, "<this>");
        return (Location) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(apiLocationPb, Reflection.getOrCreateKotlinClass(ApiLocationPb.class)), Reflection.getOrCreateKotlinClass(Location.class));
    }

    public final ApiLocationPb toProtoLocation(Location location) {
        Intrinsics.checkNotNullParameter(location, "<this>");
        return (ApiLocationPb) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(location, Reflection.getOrCreateKotlinClass(Location.class)), Reflection.getOrCreateKotlinClass(ApiLocationPb.class));
    }

    public final ListLocationsResponse toSdkListLocationsResponse(com.stripe.proto.api.rest.ListLocationsResponse listLocationsResponse) {
        Intrinsics.checkNotNullParameter(listLocationsResponse, "<this>");
        return (ListLocationsResponse) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(listLocationsResponse, Reflection.getOrCreateKotlinClass(com.stripe.proto.api.rest.ListLocationsResponse.class)), Reflection.getOrCreateKotlinClass(ListLocationsResponse.class));
    }

    public final Cart toProtoCart(com.stripe.stripeterminal.external.models.Cart cart) {
        Intrinsics.checkNotNullParameter(cart, "<this>");
        return (Cart) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(cart, Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.Cart.class)), Reflection.getOrCreateKotlinClass(Cart.class));
    }

    public final com.stripe.stripeterminal.external.models.Cart toSdkCart(Cart cart) {
        Intrinsics.checkNotNullParameter(cart, "<this>");
        return (com.stripe.stripeterminal.external.models.Cart) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(cart, Reflection.getOrCreateKotlinClass(Cart.class)), Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.Cart.class));
    }

    public final NextAction toSdkNextAction(PaymentIntent.NextAction nextAction) {
        Intrinsics.checkNotNullParameter(nextAction, "<this>");
        return (NextAction) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(nextAction, Reflection.getOrCreateKotlinClass(PaymentIntent.NextAction.class)), Reflection.getOrCreateKotlinClass(NextAction.class));
    }

    public final PaymentIntent.NextAction toProtoNextAction(NextAction nextAction) {
        Intrinsics.checkNotNullParameter(nextAction, "<this>");
        return (PaymentIntent.NextAction) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(nextAction, Reflection.getOrCreateKotlinClass(NextAction.class)), Reflection.getOrCreateKotlinClass(PaymentIntent.NextAction.class));
    }

    public final CollectedData toSdkCollectedData(ReaderCollectedData readerCollectedData) {
        Intrinsics.checkNotNullParameter(readerCollectedData, "<this>");
        return (CollectedData) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(readerCollectedData, Reflection.getOrCreateKotlinClass(ReaderCollectedData.class)), Reflection.getOrCreateKotlinClass(CollectedData.class));
    }

    public final ReaderCollectedData toProtoCollectedData(CollectedData collectedData) {
        Intrinsics.checkNotNullParameter(collectedData, "<this>");
        return (ReaderCollectedData) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(collectedData, Reflection.getOrCreateKotlinClass(CollectedData.class)), Reflection.getOrCreateKotlinClass(ReaderCollectedData.class));
    }

    public final AllowRedisplay toProtoAllowRedisplay(com.stripe.stripeterminal.external.models.AllowRedisplay allowRedisplay) {
        Intrinsics.checkNotNullParameter(allowRedisplay, "<this>");
        return (AllowRedisplay) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(allowRedisplay, Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.AllowRedisplay.class)), Reflection.getOrCreateKotlinClass(AllowRedisplay.class));
    }

    public final com.stripe.stripeterminal.external.models.AllowRedisplay toSdkAllowRedisplay(AllowRedisplay allowRedisplay) {
        Intrinsics.checkNotNullParameter(allowRedisplay, "<this>");
        return (com.stripe.stripeterminal.external.models.AllowRedisplay) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(allowRedisplay, Reflection.getOrCreateKotlinClass(AllowRedisplay.class)), Reflection.getOrCreateKotlinClass(com.stripe.stripeterminal.external.models.AllowRedisplay.class));
    }

    public final CollectDataRequest.CollectDataType toProtoCollectDataType(PaymentMethodCollectionType.Passthrough.PassthroughType passthroughType) {
        Intrinsics.checkNotNullParameter(passthroughType, "<this>");
        return (CollectDataRequest.CollectDataType) ProtoConverter_commonJvmKt.jsonSerializer().fromJson(ProtoConverter_commonJvmKt.jsonSerializer().toJson(passthroughType, Reflection.getOrCreateKotlinClass(PaymentMethodCollectionType.Passthrough.PassthroughType.class)), Reflection.getOrCreateKotlinClass(CollectDataRequest.CollectDataType.class));
    }
}
