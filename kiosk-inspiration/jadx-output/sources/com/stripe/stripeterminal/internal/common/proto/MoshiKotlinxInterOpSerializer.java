package com.stripe.stripeterminal.internal.common.proto;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.lang.annotation.Annotation;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KClass;
import kotlinx.serialization.Serializable;

/* JADX INFO: compiled from: MoshiKotlinxInterOpSerializer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JI\u0010\u0003\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u0005\"\b\b\u0001\u0010\u0006*\u00020\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\b2\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u0002H\u00040\n¢\u0006\u0002\b\u000bH\u0082\b¢\u0006\u0002\u0010\fJ \u0010\r\u001a\u00020\u0001\"\b\b\u0000\u0010\u000e*\u00020\u00052\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u000e0\bH\u0002J)\u0010\u000f\u001a\u0002H\u0004\"\b\b\u0000\u0010\u0004*\u00020\u0005*\u00020\u00102\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00040\bH\u0016¢\u0006\u0002\u0010\u0011J)\u0010\u0012\u001a\u00020\u0010\"\b\b\u0000\u0010\u0006*\u00020\u0005*\u0002H\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\bH\u0016¢\u0006\u0002\u0010\u0013J)\u0010\u0014\u001a\u00020\u0010\"\b\b\u0000\u0010\u0006*\u00020\u0005*\u0002H\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\bH\u0016¢\u0006\u0002\u0010\u0013J)\u0010\u0015\u001a\u00020\u0010\"\b\b\u0000\u0010\u0006*\u00020\u0005*\u0002H\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u0002H\u00060\bH\u0016¢\u0006\u0002\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/proto/MoshiKotlinxInterOpSerializer;", "Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;", "()V", "delegateToSerializer", "Output", "", "Input", "clazz", "Lkotlin/reflect/KClass;", FirebaseAnalytics.Param.METHOD, "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "getSerializer", "T", "fromJson", "", "(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;", "prettyPrint", "(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;", "toJson", "toJsonContentString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class MoshiKotlinxInterOpSerializer implements JsonSerializer {
    public static final MoshiKotlinxInterOpSerializer INSTANCE = new MoshiKotlinxInterOpSerializer();

    private MoshiKotlinxInterOpSerializer() {
    }

    private final <T> JsonSerializer getSerializer(KClass<T> clazz) {
        T next;
        Iterator<T> it = clazz.getAnnotations().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (((Annotation) next) instanceof Serializable) {
                break;
            }
        }
        if (((Serializable) next) != null) {
            return KotlinxJsonSerializer.INSTANCE;
        }
        return MoshiJsonSerializer.INSTANCE;
    }

    private final <Output, Input> Output delegateToSerializer(KClass<Input> clazz, Function1<? super JsonSerializer, ? extends Output> method) {
        return method.invoke(getSerializer(clazz));
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Output> Output fromJson(String str, KClass<Output> clazz) {
        Intrinsics.checkNotNullParameter(str, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return (Output) getSerializer(clazz).fromJson(str, clazz);
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Input> String prettyPrint(Input input, KClass<Input> clazz) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return getSerializer(clazz).prettyPrint(input, clazz);
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Input> String toJson(Input input, KClass<Input> clazz) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return getSerializer(clazz).toJson(input, clazz);
    }

    @Override // com.stripe.stripeterminal.internal.common.proto.JsonSerializer
    public <Input> String toJsonContentString(Input input, KClass<Input> clazz) {
        Intrinsics.checkNotNullParameter(input, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return getSerializer(clazz).toJsonContentString(input, clazz);
    }
}
