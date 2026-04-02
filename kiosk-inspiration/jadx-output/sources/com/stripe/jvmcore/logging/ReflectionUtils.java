package com.stripe.jvmcore.logging;

import com.squareup.wire.WireField;
import java.lang.reflect.Field;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;

/* JADX INFO: compiled from: HealthLogger.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bÂ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\f\u0010\u0003\u001a\u0004\u0018\u00010\u0004*\u00020\u0005J \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007\"\b\b\u0000\u0010\b*\u00020\u0001*\b\u0012\u0004\u0012\u0002H\b0\tJ\u000e\u0010\n\u001a\u0004\u0018\u00010\u000b*\u00020\u0005H\u0002J\u001e\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007*\b\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\r\u001a\u00020\u0004J\"\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007*\b\u0012\u0004\u0012\u00020\u00050\u00072\n\u0010\u000f\u001a\u0006\u0012\u0002\b\u00030\t¨\u0006\u0010"}, d2 = {"Lcom/stripe/jvmcore/logging/ReflectionUtils;", "", "()V", "declaredFieldName", "", "Ljava/lang/reflect/Field;", "properties", "Lkotlin/sequences/Sequence;", "T", "Ljava/lang/Class;", "wireFieldAnnotation", "Lcom/squareup/wire/WireField;", "withOneOf", "oneOfName", "withType", "clazz", "logging"}, k = 1, mv = {1, 9, 0}, xi = 48)
final class ReflectionUtils {
    public static final ReflectionUtils INSTANCE = new ReflectionUtils();

    private ReflectionUtils() {
    }

    public final <T> Sequence<Field> properties(Class<T> cls) {
        Intrinsics.checkNotNullParameter(cls, "<this>");
        Field[] declaredFields = cls.getDeclaredFields();
        Intrinsics.checkNotNullExpressionValue(declaredFields, "getDeclaredFields(...)");
        ArrayList arrayList = new ArrayList();
        for (Field field : declaredFields) {
            if (!field.isSynthetic()) {
                arrayList.add(field);
            }
        }
        return CollectionsKt.asSequence(arrayList);
    }

    public final Sequence<Field> withOneOf(Sequence<Field> sequence, final String oneOfName) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(oneOfName, "oneOfName");
        return SequencesKt.map(SequencesKt.filter(SequencesKt.map(sequence, new Function1<Field, Pair<? extends Field, ? extends WireField>>() { // from class: com.stripe.jvmcore.logging.ReflectionUtils.withOneOf.1
            @Override // kotlin.jvm.functions.Function1
            public final Pair<Field, WireField> invoke(Field property) {
                Intrinsics.checkNotNullParameter(property, "property");
                return TuplesKt.to(property, ReflectionUtils.INSTANCE.wireFieldAnnotation(property));
            }
        }), new Function1<Pair<? extends Field, ? extends WireField>, Boolean>() { // from class: com.stripe.jvmcore.logging.ReflectionUtils.withOneOf.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Boolean invoke2(Pair<Field, ? extends WireField> pair) {
                Intrinsics.checkNotNullParameter(pair, "<name for destructuring parameter 0>");
                WireField wireFieldComponent2 = pair.component2();
                return Boolean.valueOf(Intrinsics.areEqual(wireFieldComponent2 != null ? wireFieldComponent2.oneofName() : null, oneOfName));
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Pair<? extends Field, ? extends WireField> pair) {
                return invoke2((Pair<Field, ? extends WireField>) pair);
            }
        }), new Function1<Pair<? extends Field, ? extends WireField>, Field>() { // from class: com.stripe.jvmcore.logging.ReflectionUtils.withOneOf.3
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Field invoke(Pair<? extends Field, ? extends WireField> pair) {
                return invoke2((Pair<Field, ? extends WireField>) pair);
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final Field invoke2(Pair<Field, ? extends WireField> pair) {
                Intrinsics.checkNotNullParameter(pair, "<name for destructuring parameter 0>");
                return pair.component1();
            }
        });
    }

    public final Sequence<Field> withType(Sequence<Field> sequence, final Class<?> clazz) {
        Intrinsics.checkNotNullParameter(sequence, "<this>");
        Intrinsics.checkNotNullParameter(clazz, "clazz");
        return SequencesKt.filter(sequence, new Function1<Field, Boolean>() { // from class: com.stripe.jvmcore.logging.ReflectionUtils.withType.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(Field field) {
                Intrinsics.checkNotNullParameter(field, "field");
                return Boolean.valueOf(Intrinsics.areEqual(field.getType(), clazz));
            }
        });
    }

    public final String declaredFieldName(Field field) {
        String strDeclaredName;
        Intrinsics.checkNotNullParameter(field, "<this>");
        WireField wireFieldWireFieldAnnotation = wireFieldAnnotation(field);
        if (wireFieldWireFieldAnnotation == null || (strDeclaredName = wireFieldWireFieldAnnotation.declaredName()) == null || strDeclaredName.length() <= 0) {
            return null;
        }
        return strDeclaredName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final WireField wireFieldAnnotation(Field field) {
        return (WireField) field.getAnnotation(WireField.class);
    }
}
