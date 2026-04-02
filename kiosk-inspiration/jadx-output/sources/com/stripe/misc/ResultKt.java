package com.stripe.misc;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.stripe.misc.Result;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: Result.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a\"\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0004\u001aN\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0006\u0012\u0004\u0012\u0002H\u00030\u0004\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00060\bH\u0086\fø\u0001\u0000\u001a[\u0010\t\u001a\u0002H\u0006\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00060\b2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00060\bH\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\f\u001aN\u0010\r\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00060\u0004\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003\"\u0004\b\u0002\u0010\u0006*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u0002H\u00060\bH\u0086\fø\u0001\u0000\u001aH\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0004\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u0002H\u0003\u0012\u0004\u0012\u00020\u00100\bH\u0086\fø\u0001\u0000\u001aH\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u0004\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u0002H\u00030\u00042\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u0002H\u0002\u0012\u0004\u0012\u00020\u00100\bH\u0086\fø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0012"}, d2 = {"isSuccess", "", "S", "F", "Lcom/stripe/misc/Result;", "map", "U", "transform", "Lkotlin/Function1;", "mapBoth", FirebaseAnalytics.Param.SUCCESS, "failure", "(Lcom/stripe/misc/Result;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "mapFailure", "onFailure", "effect", "", "onSuccess", "public_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class ResultKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final <S, F, U> Result<U, F> map(Result<? extends S, ? extends F> result, Function1<? super S, ? extends U> transform) {
        Intrinsics.checkNotNullParameter(result, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        if (result instanceof Result.Success) {
            return new Result.Success(transform.invoke((Object) ((Result.Success) result).getValue()));
        }
        if (result instanceof Result.Failure) {
            return result;
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <S, F> Result<S, F> onSuccess(Result<? extends S, ? extends F> result, Function1<? super S, Unit> effect) {
        Intrinsics.checkNotNullParameter(result, "<this>");
        Intrinsics.checkNotNullParameter(effect, "effect");
        if (result instanceof Result.Success) {
            effect.invoke((Object) ((Result.Success) result).getValue());
            return result;
        }
        boolean z = result instanceof Result.Failure;
        return result;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <S, F, U> Result<S, U> mapFailure(Result<? extends S, ? extends F> result, Function1<? super F, ? extends U> transform) {
        Intrinsics.checkNotNullParameter(result, "<this>");
        Intrinsics.checkNotNullParameter(transform, "transform");
        if (result instanceof Result.Success) {
            return result;
        }
        if (result instanceof Result.Failure) {
            return new Result.Failure(transform.invoke((Object) ((Result.Failure) result).getValue()));
        }
        throw new NoWhenBranchMatchedException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <S, F> Result<S, F> onFailure(Result<? extends S, ? extends F> result, Function1<? super F, Unit> effect) {
        Intrinsics.checkNotNullParameter(result, "<this>");
        Intrinsics.checkNotNullParameter(effect, "effect");
        if (!(result instanceof Result.Success) && (result instanceof Result.Failure)) {
            effect.invoke((Object) ((Result.Failure) result).getValue());
        }
        return result;
    }

    public static final <S, F, U> U mapBoth(Result<? extends S, ? extends F> result, Function1<? super S, ? extends U> success, Function1<? super F, ? extends U> failure) {
        Intrinsics.checkNotNullParameter(result, "<this>");
        Intrinsics.checkNotNullParameter(success, "success");
        Intrinsics.checkNotNullParameter(failure, "failure");
        if (result instanceof Result.Success) {
            return success.invoke((Object) ((Result.Success) result).getValue());
        }
        if (result instanceof Result.Failure) {
            return failure.invoke((Object) ((Result.Failure) result).getValue());
        }
        throw new NoWhenBranchMatchedException();
    }

    public static final <S, F> boolean isSuccess(Result<? extends S, ? extends F> result) {
        Intrinsics.checkNotNullParameter(result, "<this>");
        return result instanceof Result.Success;
    }
}
