package com.stripe.offlinemode;

import com.stripe.jvmcore.terminal.api.ActivateReaderResponse;
import com.stripe.offlinemode.helpers.OfflineSessionManager;
import com.stripe.offlinemode.storage.OfflineStorageConstantsKt;
import com.stripe.proto.api.rest.ConfirmPaymentIntentRequest;
import com.stripe.proto.api.rest.ConfirmSetupIntentRequest;
import com.stripe.proto.api.rest.CreatePaymentIntentRequest;
import com.stripe.proto.api.rest.CreateSetupIntentRequest;
import com.stripe.proto.terminal.terminal.pub.message.config.BluetoothAutoReconnectConfigPb;
import com.stripe.proto.terminal.terminal.pub.message.config.UsbAutoReconnectConfigPb;
import com.stripe.stripeterminal.external.models.ConnectionConfiguration;
import com.stripe.stripeterminal.external.models.Location;
import com.stripe.stripeterminal.external.models.PaymentIntent;
import com.stripe.stripeterminal.external.models.Reader;
import com.stripe.stripeterminal.external.models.SetupIntent;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.adapter.BbposAdapter;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* JADX INFO: compiled from: OfflineEventHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0088\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u00012\u00020\u0002JX\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2>\u0010\t\u001a:\u0012\u0015\u0012\u0013\u0018\u00010\u000b¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0015\u0012\u0013\u0018\u00010\u000f¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u0010\u0012\u0004\u0012\u00020\u00110\nj\u0002`\u0012H&JV\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001b2\u0018\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u0017H&JV\u0010 \u001a\u00020!2\u0006\u0010\u0015\u001a\u00020!2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\"\u001a\u00020#2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001b2\u0018\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u0017H&JF\u0010$\u001a\u00020\u00142\u0006\u0010%\u001a\u00020&2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001b2\u0018\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u0017H&JF\u0010'\u001a\u00020!2\u0006\u0010%\u001a\u00020(2\u0012\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001b2\u0018\u0010\u001c\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u0017H&J\"\u0010)\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020*0\u001b2\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00170\u001dH&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006,À\u0006\u0001"}, d2 = {"Lcom/stripe/offlinemode/OfflineEventHandler;", "Lcom/stripe/offlinemode/OfflineReaderSetup;", "Lcom/stripe/offlinemode/helpers/OfflineSessionManager;", "onActivateReaderRequest", "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;", OfflineStorageConstantsKt.READER, "Lcom/stripe/stripeterminal/external/models/Reader;", "connectionConfiguration", "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;", "setReconnectParams", "Lkotlin/Function2;", "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;", "Lkotlin/ParameterName;", "name", "bluetoothConfig", "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;", "usbConfig", "", "Lcom/stripe/offlinemode/helpers/SetReconnectParams;", "onConfirmPaymentIntentRequest", "Lcom/stripe/stripeterminal/external/models/PaymentIntent;", "intent", "emvData", "", "confirmPaymentIntentRequest", "Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;", "requestHeaders", "", "requestParams", "", "Lkotlin/Pair;", BbposAdapter.ENDPOINT_TAG_KEY, "onConfirmSetupIntentRequest", "Lcom/stripe/stripeterminal/external/models/SetupIntent;", "confirmSetupIntentRequest", "Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;", "onCreatePaymentIntentRequest", "request", "Lcom/stripe/proto/api/rest/CreatePaymentIntentRequest;", "onCreateSetupIntentRequest", "Lcom/stripe/proto/api/rest/CreateSetupIntentRequest;", "onLocationsRequests", "Lcom/stripe/stripeterminal/external/models/Location;", "deviceSerials", "offlinemode_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface OfflineEventHandler extends OfflineReaderSetup, OfflineSessionManager {
    ActivateReaderResponse onActivateReaderRequest(Reader reader, ConnectionConfiguration connectionConfiguration, Function2<? super BluetoothAutoReconnectConfigPb, ? super UsbAutoReconnectConfigPb, Unit> setReconnectParams) throws TerminalException;

    PaymentIntent onConfirmPaymentIntentRequest(PaymentIntent intent, String emvData, ConfirmPaymentIntentRequest confirmPaymentIntentRequest, Map<String, String> requestHeaders, List<Pair<String, String>> requestParams, String endpoint) throws TerminalException;

    SetupIntent onConfirmSetupIntentRequest(SetupIntent intent, String emvData, ConfirmSetupIntentRequest confirmSetupIntentRequest, Map<String, String> requestHeaders, List<Pair<String, String>> requestParams, String endpoint) throws TerminalException;

    PaymentIntent onCreatePaymentIntentRequest(CreatePaymentIntentRequest request, Map<String, String> requestHeaders, List<Pair<String, String>> requestParams, String endpoint) throws TerminalException;

    SetupIntent onCreateSetupIntentRequest(CreateSetupIntentRequest request, Map<String, String> requestHeaders, List<Pair<String, String>> requestParams, String endpoint) throws TerminalException;

    Map<String, Location> onLocationsRequests(List<String> deviceSerials) throws TerminalException;
}
