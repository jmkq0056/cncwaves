package com.stripe.offlinemode.forwarding;

import com.squareup.wire.Message;
import com.stripe.jvmcore.restclient.RestResponse;
import com.stripe.proto.model.rest.ErrorResponse;
import com.stripe.proto.model.rest.ErrorWrapper;
import com.stripe.proto.model.rest.StatusCode;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import com.stripe.stripeterminal.internal.common.proto.ProtoConverter;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: RestResponseHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001ab\u0010\u0000\u001a\u0002H\u0001\"\u001c\b\u0000\u0010\u0001*\u0016\u0012\u0004\u0012\u0002H\u0001\u0012\u0002\b\u00030\u0002j\b\u0012\u0004\u0012\u0002H\u0001`\u0003*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u00020\u00050\u00042$\u0010\u0006\u001a \b\u0001\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\n0\u0007H\u0080@¢\u0006\u0002\u0010\u000b\u001a6\u0010\f\u001a\u00020\r\"\u001c\b\u0000\u0010\u000e*\u0016\u0012\u0004\u0012\u0002H\u000e\u0012\u0002\b\u00030\u0002j\b\u0012\u0004\u0012\u0002H\u000e`\u0003*\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u00050\u000fH\u0002\u001a6\u0010\u0010\u001a\u00020\r\"\u001c\b\u0000\u0010\u000e*\u0016\u0012\u0004\u0012\u0002H\u000e\u0012\u0002\b\u00030\u0002j\b\u0012\u0004\u0012\u0002H\u000e`\u0003*\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u00050\u000fH\u0002\u001a6\u0010\u0011\u001a\u00020\r\"\u001c\b\u0000\u0010\u000e*\u0016\u0012\u0004\u0012\u0002H\u000e\u0012\u0002\b\u00030\u0002j\b\u0012\u0004\u0012\u0002H\u000e`\u0003*\u000e\u0012\u0004\u0012\u0002H\u000e\u0012\u0004\u0012\u00020\u00050\u000fH\u0002¨\u0006\u0012"}, d2 = {"decodeResponseAndHandleAuthFailure", "T", "Lcom/squareup/wire/Message;", "Lcom/stripe/jvmcore/restclient/Proto;", "Lcom/stripe/jvmcore/restclient/RestResponse;", "Lcom/stripe/proto/model/rest/ErrorWrapper;", "handleAuthFailure", "Lkotlin/Function2;", "Lcom/stripe/proto/model/rest/ErrorResponse;", "Lkotlin/coroutines/Continuation;", "", "(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isAuthError", "", "Rsp", "Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;", "isConnectionError", "isMalformedRequestError", "offlinemode_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class RestResponseHandlerKt {
    public static final <T extends Message<T, ?>> Object decodeResponseAndHandleAuthFailure(RestResponse<T, ErrorWrapper> restResponse, Function2<? super ErrorResponse, ? super Continuation<? super T>, ? extends Object> function2, Continuation<? super T> continuation) {
        if (restResponse instanceof RestResponse.Success) {
            return ((RestResponse.Success) restResponse).getResponse();
        }
        if (restResponse instanceof RestResponse.ServerError) {
            RestResponse.ServerError serverError = (RestResponse.ServerError) restResponse;
            if (isAuthError(serverError)) {
                return function2.invoke(((ErrorWrapper) serverError.getResponse()).error, continuation);
            }
            if (isConnectionError(serverError)) {
                throw new ForwardingApiException(new TerminalException(TerminalErrorCode.STRIPE_API_CONNECTION_ERROR, "Could not connect to Stripe. Please retry.", null, null, 12, null), true, false, false);
            }
            if (isMalformedRequestError(serverError)) {
                throw new ForwardingApiException(ProtoConverter.toTerminalException$default(ProtoConverter.INSTANCE, ((ErrorWrapper) serverError.getResponse()).error, null, 1, null), false, false, true);
            }
            throw new ForwardingApiException(ProtoConverter.toTerminalException$default(ProtoConverter.INSTANCE, ((ErrorWrapper) serverError.getResponse()).error, null, 1, null), restResponse.shouldRetry(), false, false);
        }
        if (!(restResponse instanceof RestResponse.ParseError)) {
            throw new NoWhenBranchMatchedException();
        }
        throw new ForwardingApiException(new TerminalException(TerminalErrorCode.STRIPE_API_RESPONSE_DECODING_ERROR, restResponse.toLogString(), null, null, 12, null), restResponse.shouldRetry(), false, false);
    }

    private static final <Rsp extends Message<Rsp, ?>> boolean isAuthError(RestResponse.ServerError<Rsp, ErrorWrapper> serverError) {
        Set of = SetsKt.setOf((Object[]) new String[]{ProtoConverter.API_SESSION_EXPIRED, ProtoConverter.PLATFORM_API_SESSION_EXPIRED});
        ErrorResponse errorResponse = ((ErrorWrapper) serverError.getResponse()).error;
        return CollectionsKt.contains(of, errorResponse != null ? errorResponse.code : null);
    }

    private static final <Rsp extends Message<Rsp, ?>> boolean isConnectionError(RestResponse.ServerError<Rsp, ErrorWrapper> serverError) {
        return SetsKt.setOf((Object[]) new StatusCode[]{StatusCode.HTTP_ERROR, StatusCode.HTTP_ERROR_UNKNOWN_STATE}).contains(serverError.getStatusCode());
    }

    private static final <Rsp extends Message<Rsp, ?>> boolean isMalformedRequestError(RestResponse.ServerError<Rsp, ErrorWrapper> serverError) {
        ErrorResponse errorResponse;
        String str;
        if (SetsKt.setOf(StatusCode.BAD_REQUEST).contains(serverError.getStatusCode())) {
            Set of = SetsKt.setOf((Object[]) new String[]{"parameter_missing", "parameter_unknown", ""});
            ErrorResponse errorResponse2 = ((ErrorWrapper) serverError.getResponse()).error;
            if (CollectionsKt.contains(of, errorResponse2 != null ? errorResponse2.code : null) || ((errorResponse = ((ErrorWrapper) serverError.getResponse()).error) != null && (str = errorResponse.code) != null && StringsKt.startsWith$default(str, "parameter_invalid", false, 2, (Object) null))) {
                return true;
            }
        }
        return false;
    }
}
