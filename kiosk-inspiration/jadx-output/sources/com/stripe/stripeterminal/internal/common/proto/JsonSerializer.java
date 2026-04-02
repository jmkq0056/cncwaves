package com.stripe.stripeterminal.internal.common.proto;

import kotlin.Metadata;
import kotlin.reflect.KClass;

/* JADX INFO: compiled from: JsonSerializer.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bf\u0018\u00002\u00020\u0001J)\u0010\u0002\u001a\u0002H\u0003\"\b\b\u0000\u0010\u0003*\u00020\u0001*\u00020\u00042\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0006H&¢\u0006\u0002\u0010\u0007J)\u0010\b\u001a\u00020\u0004\"\b\b\u0000\u0010\t*\u00020\u0001*\u0002H\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006H&¢\u0006\u0002\u0010\nJ)\u0010\u000b\u001a\u00020\u0004\"\b\b\u0000\u0010\t*\u00020\u0001*\u0002H\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006H&¢\u0006\u0002\u0010\nJ)\u0010\f\u001a\u00020\u0004\"\b\b\u0000\u0010\t*\u00020\u0001*\u0002H\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u0002H\t0\u0006H&¢\u0006\u0002\u0010\nø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\rÀ\u0006\u0001"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/proto/JsonSerializer;", "", "fromJson", "Output", "", "clazz", "Lkotlin/reflect/KClass;", "(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;", "prettyPrint", "Input", "(Ljava/lang/Object;Lkotlin/reflect/KClass;)Ljava/lang/String;", "toJson", "toJsonContentString", "public_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public interface JsonSerializer {
    <Output> Output fromJson(String str, KClass<Output> kClass);

    <Input> String prettyPrint(Input input, KClass<Input> kClass);

    <Input> String toJson(Input input, KClass<Input> kClass);

    <Input> String toJsonContentString(Input input, KClass<Input> kClass);
}
