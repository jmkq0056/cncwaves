package com.stripe.kmpcore.jackrabbitclient;

import com.stripe.proto.api.sdk.CollectDataRequest;
import com.stripe.proto.model.common.DeviceInfo;
import com.stripe.proto.model.common.VersionInfoPb;
import io.ktor.client.HttpClient;
import io.ktor.http.URLProtocol;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: JackrabbitClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Lcom/stripe/kmpcore/jackrabbitclient/CollectDataResultInternal;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectDataPollForResult$collectDataDeferred$1", f = "JackrabbitClient.kt", i = {0, 1, 2}, l = {320, 334, 348}, m = "invokeSuspend", n = {"$this$async", "$this$async", "$this$async"}, s = {"L$0", "L$0", "L$0"})
final class JackrabbitClient$collectDataPollForResult$collectDataDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super CollectDataResultInternal>, Object> {
    final /* synthetic */ String $baseUrl;
    final /* synthetic */ CollectDataRequest $collectDataRequest;
    final /* synthetic */ DeviceInfo $deviceInfo;
    final /* synthetic */ HttpClient $httpClient;
    final /* synthetic */ String $localIpAddress;
    final /* synthetic */ Function0<Unit> $onUnexpectedDisconnect;
    final /* synthetic */ String $sessionToken;
    final /* synthetic */ int $urlPort;
    final /* synthetic */ URLProtocol $urlProtocol;
    final /* synthetic */ VersionInfoPb $versionInfo;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ JackrabbitClient this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    JackrabbitClient$collectDataPollForResult$collectDataDeferred$1(JackrabbitClient jackrabbitClient, CollectDataRequest collectDataRequest, HttpClient httpClient, String str, String str2, String str3, int i, VersionInfoPb versionInfoPb, DeviceInfo deviceInfo, URLProtocol uRLProtocol, Function0<Unit> function0, Continuation<? super JackrabbitClient$collectDataPollForResult$collectDataDeferred$1> continuation) {
        super(2, continuation);
        this.this$0 = jackrabbitClient;
        this.$collectDataRequest = collectDataRequest;
        this.$httpClient = httpClient;
        this.$sessionToken = str;
        this.$localIpAddress = str2;
        this.$baseUrl = str3;
        this.$urlPort = i;
        this.$versionInfo = versionInfoPb;
        this.$deviceInfo = deviceInfo;
        this.$urlProtocol = uRLProtocol;
        this.$onUnexpectedDisconnect = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        JackrabbitClient$collectDataPollForResult$collectDataDeferred$1 jackrabbitClient$collectDataPollForResult$collectDataDeferred$1 = new JackrabbitClient$collectDataPollForResult$collectDataDeferred$1(this.this$0, this.$collectDataRequest, this.$httpClient, this.$sessionToken, this.$localIpAddress, this.$baseUrl, this.$urlPort, this.$versionInfo, this.$deviceInfo, this.$urlProtocol, this.$onUnexpectedDisconnect, continuation);
        jackrabbitClient$collectDataPollForResult$collectDataDeferred$1.L$0 = obj;
        return jackrabbitClient$collectDataPollForResult$collectDataDeferred$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super CollectDataResultInternal> continuation) {
        return ((JackrabbitClient$collectDataPollForResult$collectDataDeferred$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x005e, code lost:
    
        if (r6 == r1) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00cd -> B:16:0x006a). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r19) throws com.stripe.kmpcore.jackrabbitclient.models.KmpTerminalException {
        /*
            Method dump skipped, instruction units count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.stripe.kmpcore.jackrabbitclient.JackrabbitClient$collectDataPollForResult$collectDataDeferred$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
