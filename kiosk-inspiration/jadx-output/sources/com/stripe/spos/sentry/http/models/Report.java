package com.stripe.spos.sentry.http.models;

import com.stripe.spos.sentry.http.models.BuildConfigData;
import io.ktor.http.ContentDisposition;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerialName;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.PluginExceptionsKt;
import kotlinx.serialization.internal.SerializationConstructorMarker;
import kotlinx.serialization.internal.StringSerializer;

/* JADX INFO: compiled from: Report.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0081\b\u0018\u0000 ,2\u00020\u0001:\u0007+,-./01BM\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0014\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u000e¢\u0006\u0002\u0010\u000fB1\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\u0010J\t\u0010\u0019\u001a\u00020\u0005HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0007HÆ\u0003J\u0015\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\tHÆ\u0003J\t\u0010\u001c\u001a\u00020\fHÆ\u0003J=\u0010\u001d\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\u0014\b\u0002\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t2\b\b\u0002\u0010\u000b\u001a\u00020\fHÆ\u0001J\u0013\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010!\u001a\u00020\u0003HÖ\u0001J\t\u0010\"\u001a\u00020\nHÖ\u0001J&\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u00002\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020)HÁ\u0001¢\u0006\u0002\b*R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018¨\u00062"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report;", "", "seen1", "", "release", "Lcom/stripe/spos/sentry/http/models/BuildConfigData;", "exception", "Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;", "tags", "", "", "contexts", "Lcom/stripe/spos/sentry/http/models/Contexts;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILcom/stripe/spos/sentry/http/models/BuildConfigData;Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;Ljava/util/Map;Lcom/stripe/spos/sentry/http/models/Contexts;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Lcom/stripe/spos/sentry/http/models/BuildConfigData;Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;Ljava/util/Map;Lcom/stripe/spos/sentry/http/models/Contexts;)V", "getContexts", "()Lcom/stripe/spos/sentry/http/models/Contexts;", "getException", "()Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;", "getRelease", "()Lcom/stripe/spos/sentry/http/models/BuildConfigData;", "getTags", "()Ljava/util/Map;", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$sentry_http", "$serializer", "Companion", "ExceptionSchema", "ExceptionValuesSchema", "MechanismSchema", "StackTraceFrame", "StackTraceSchema", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
@Serializable
public final /* data */ class Report {
    private final Contexts contexts;
    private final ExceptionValuesSchema exception;
    private final BuildConfigData release;
    private final Map<String, String> tags;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final KSerializer<Object>[] $childSerializers = {null, null, new LinkedHashMapSerializer(StringSerializer.INSTANCE, StringSerializer.INSTANCE), null};

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Report copy$default(Report report, BuildConfigData buildConfigData, ExceptionValuesSchema exceptionValuesSchema, Map map, Contexts contexts, int i, Object obj) {
        if ((i & 1) != 0) {
            buildConfigData = report.release;
        }
        if ((i & 2) != 0) {
            exceptionValuesSchema = report.exception;
        }
        if ((i & 4) != 0) {
            map = report.tags;
        }
        if ((i & 8) != 0) {
            contexts = report.contexts;
        }
        return report.copy(buildConfigData, exceptionValuesSchema, map, contexts);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final BuildConfigData getRelease() {
        return this.release;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final ExceptionValuesSchema getException() {
        return this.exception;
    }

    public final Map<String, String> component3() {
        return this.tags;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final Contexts getContexts() {
        return this.contexts;
    }

    public final Report copy(BuildConfigData release, ExceptionValuesSchema exception, Map<String, String> tags, Contexts contexts) {
        Intrinsics.checkNotNullParameter(release, "release");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(contexts, "contexts");
        return new Report(release, exception, tags, contexts);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Report)) {
            return false;
        }
        Report report = (Report) other;
        return Intrinsics.areEqual(this.release, report.release) && Intrinsics.areEqual(this.exception, report.exception) && Intrinsics.areEqual(this.tags, report.tags) && Intrinsics.areEqual(this.contexts, report.contexts);
    }

    public int hashCode() {
        return (((((this.release.hashCode() * 31) + this.exception.hashCode()) * 31) + this.tags.hashCode()) * 31) + this.contexts.hashCode();
    }

    public String toString() {
        return "Report(release=" + this.release + ", exception=" + this.exception + ", tags=" + this.tags + ", contexts=" + this.contexts + ')';
    }

    /* JADX INFO: compiled from: Report.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/Report;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final KSerializer<Report> serializer() {
            return Report$$serializer.INSTANCE;
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
    public /* synthetic */ Report(int i, BuildConfigData buildConfigData, ExceptionValuesSchema exceptionValuesSchema, Map map, Contexts contexts, SerializationConstructorMarker serializationConstructorMarker) {
        if (15 != (i & 15)) {
            PluginExceptionsKt.throwMissingFieldException(i, 15, Report$$serializer.INSTANCE.getDescriptor());
        }
        this.release = buildConfigData;
        this.exception = exceptionValuesSchema;
        this.tags = map;
        this.contexts = contexts;
    }

    public Report(BuildConfigData release, ExceptionValuesSchema exception, Map<String, String> tags, Contexts contexts) {
        Intrinsics.checkNotNullParameter(release, "release");
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(tags, "tags");
        Intrinsics.checkNotNullParameter(contexts, "contexts");
        this.release = release;
        this.exception = exception;
        this.tags = tags;
        this.contexts = contexts;
    }

    @JvmStatic
    public static final /* synthetic */ void write$Self$sentry_http(Report self, CompositeEncoder output, SerialDescriptor serialDesc) {
        KSerializer<Object>[] kSerializerArr = $childSerializers;
        output.encodeSerializableElement(serialDesc, 0, BuildConfigData.Serializer.INSTANCE, self.release);
        output.encodeSerializableElement(serialDesc, 1, Report$ExceptionValuesSchema$$serializer.INSTANCE, self.exception);
        output.encodeSerializableElement(serialDesc, 2, kSerializerArr[2], self.tags);
        output.encodeSerializableElement(serialDesc, 3, Contexts$$serializer.INSTANCE, self.contexts);
    }

    public final BuildConfigData getRelease() {
        return this.release;
    }

    public final ExceptionValuesSchema getException() {
        return this.exception;
    }

    public final Map<String, String> getTags() {
        return this.tags;
    }

    /* JADX INFO: compiled from: Report.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001d\u001eB)\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tB\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\nJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u0019\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J&\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bHÁ\u0001¢\u0006\u0002\b\u001cR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;", "", "seen1", "", "values", "", "Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/util/List;)V", "getValues", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$sentry_http", "$serializer", "Companion", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ExceptionValuesSchema {
        private final List<ExceptionSchema> values;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new ArrayListSerializer(Report$ExceptionSchema$$serializer.INSTANCE)};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ ExceptionValuesSchema copy$default(ExceptionValuesSchema exceptionValuesSchema, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = exceptionValuesSchema.values;
            }
            return exceptionValuesSchema.copy(list);
        }

        public final List<ExceptionSchema> component1() {
            return this.values;
        }

        public final ExceptionValuesSchema copy(List<ExceptionSchema> values) {
            Intrinsics.checkNotNullParameter(values, "values");
            return new ExceptionValuesSchema(values);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof ExceptionValuesSchema) && Intrinsics.areEqual(this.values, ((ExceptionValuesSchema) other).values);
        }

        public int hashCode() {
            return this.values.hashCode();
        }

        public String toString() {
            return "ExceptionValuesSchema(values=" + this.values + ')';
        }

        /* JADX INFO: compiled from: Report.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/Report$ExceptionValuesSchema;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final KSerializer<ExceptionValuesSchema> serializer() {
                return Report$ExceptionValuesSchema$$serializer.INSTANCE;
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ ExceptionValuesSchema(int i, List list, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, Report$ExceptionValuesSchema$$serializer.INSTANCE.getDescriptor());
            }
            this.values = list;
        }

        public ExceptionValuesSchema(List<ExceptionSchema> values) {
            Intrinsics.checkNotNullParameter(values, "values");
            this.values = values;
        }

        public final List<ExceptionSchema> getValues() {
            return this.values;
        }
    }

    public final Contexts getContexts() {
        return this.contexts;
    }

    /* JADX INFO: compiled from: Report.kt */
    @Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 )2\u00020\u0001:\u0002()BA\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b\u0012\b\u0010\t\u001a\u0004\u0018\u00010\n\u0012\b\u0010\u000b\u001a\u0004\u0018\u00010\f¢\u0006\u0002\u0010\rB%\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000eJ\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0018\u001a\u00020\bHÆ\u0003J\t\u0010\u0019\u001a\u00020\nHÆ\u0003J1\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001f\u001a\u00020\u0005HÖ\u0001J&\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u00002\u0006\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&HÁ\u0001¢\u0006\u0002\b'R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0014¨\u0006*"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;", "", "seen1", "", "type", "", "value", "stacktrace", "Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;", "mechanism", "Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/lang/String;Ljava/lang/String;Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;)V", "getMechanism", "()Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;", "getStacktrace", "()Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;", "getType", "()Ljava/lang/String;", "getValue", "component1", "component2", "component3", "component4", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$sentry_http", "$serializer", "Companion", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable
    public static final /* data */ class ExceptionSchema {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final MechanismSchema mechanism;
        private final StackTraceSchema stacktrace;
        private final String type;
        private final String value;

        public static /* synthetic */ ExceptionSchema copy$default(ExceptionSchema exceptionSchema, String str, String str2, StackTraceSchema stackTraceSchema, MechanismSchema mechanismSchema, int i, Object obj) {
            if ((i & 1) != 0) {
                str = exceptionSchema.type;
            }
            if ((i & 2) != 0) {
                str2 = exceptionSchema.value;
            }
            if ((i & 4) != 0) {
                stackTraceSchema = exceptionSchema.stacktrace;
            }
            if ((i & 8) != 0) {
                mechanismSchema = exceptionSchema.mechanism;
            }
            return exceptionSchema.copy(str, str2, stackTraceSchema, mechanismSchema);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getType() {
            return this.type;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getValue() {
            return this.value;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final StackTraceSchema getStacktrace() {
            return this.stacktrace;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final MechanismSchema getMechanism() {
            return this.mechanism;
        }

        public final ExceptionSchema copy(String type, String value, StackTraceSchema stacktrace, MechanismSchema mechanism) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(stacktrace, "stacktrace");
            Intrinsics.checkNotNullParameter(mechanism, "mechanism");
            return new ExceptionSchema(type, value, stacktrace, mechanism);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ExceptionSchema)) {
                return false;
            }
            ExceptionSchema exceptionSchema = (ExceptionSchema) other;
            return Intrinsics.areEqual(this.type, exceptionSchema.type) && Intrinsics.areEqual(this.value, exceptionSchema.value) && Intrinsics.areEqual(this.stacktrace, exceptionSchema.stacktrace) && Intrinsics.areEqual(this.mechanism, exceptionSchema.mechanism);
        }

        public int hashCode() {
            return (((((this.type.hashCode() * 31) + this.value.hashCode()) * 31) + this.stacktrace.hashCode()) * 31) + this.mechanism.hashCode();
        }

        public String toString() {
            return "ExceptionSchema(type=" + this.type + ", value=" + this.value + ", stacktrace=" + this.stacktrace + ", mechanism=" + this.mechanism + ')';
        }

        /* JADX INFO: compiled from: Report.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/Report$ExceptionSchema;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final KSerializer<ExceptionSchema> serializer() {
                return Report$ExceptionSchema$$serializer.INSTANCE;
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ ExceptionSchema(int i, String str, String str2, StackTraceSchema stackTraceSchema, MechanismSchema mechanismSchema, SerializationConstructorMarker serializationConstructorMarker) {
            if (15 != (i & 15)) {
                PluginExceptionsKt.throwMissingFieldException(i, 15, Report$ExceptionSchema$$serializer.INSTANCE.getDescriptor());
            }
            this.type = str;
            this.value = str2;
            this.stacktrace = stackTraceSchema;
            this.mechanism = mechanismSchema;
        }

        public ExceptionSchema(String type, String value, StackTraceSchema stacktrace, MechanismSchema mechanism) {
            Intrinsics.checkNotNullParameter(type, "type");
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(stacktrace, "stacktrace");
            Intrinsics.checkNotNullParameter(mechanism, "mechanism");
            this.type = type;
            this.value = value;
            this.stacktrace = stacktrace;
            this.mechanism = mechanism;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$sentry_http(ExceptionSchema self, CompositeEncoder output, SerialDescriptor serialDesc) {
            output.encodeStringElement(serialDesc, 0, self.type);
            output.encodeStringElement(serialDesc, 1, self.value);
            output.encodeSerializableElement(serialDesc, 2, Report$StackTraceSchema$$serializer.INSTANCE, self.stacktrace);
            output.encodeSerializableElement(serialDesc, 3, Report$MechanismSchema$$serializer.INSTANCE, self.mechanism);
        }

        public final String getType() {
            return this.type;
        }

        public final String getValue() {
            return this.value;
        }

        public final StackTraceSchema getStacktrace() {
            return this.stacktrace;
        }

        public final MechanismSchema getMechanism() {
            return this.mechanism;
        }
    }

    /* JADX INFO: compiled from: Report.kt */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB!\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0002\u0010\bB\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\tJ\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u0013\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J&\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019HÁ\u0001¢\u0006\u0002\b\u001aR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000b¨\u0006\u001d"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;", "", "seen1", "", "handled", "", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IZLkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Z)V", "getHandled", "()Z", "component1", "copy", "equals", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$sentry_http", "$serializer", "Companion", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable
    public static final /* data */ class MechanismSchema {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final boolean handled;

        public static /* synthetic */ MechanismSchema copy$default(MechanismSchema mechanismSchema, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = mechanismSchema.handled;
            }
            return mechanismSchema.copy(z);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final boolean getHandled() {
            return this.handled;
        }

        public final MechanismSchema copy(boolean handled) {
            return new MechanismSchema(handled);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof MechanismSchema) && this.handled == ((MechanismSchema) other).handled;
        }

        public int hashCode() {
            return Boolean.hashCode(this.handled);
        }

        public String toString() {
            return "MechanismSchema(handled=" + this.handled + ')';
        }

        /* JADX INFO: compiled from: Report.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/Report$MechanismSchema;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final KSerializer<MechanismSchema> serializer() {
                return Report$MechanismSchema$$serializer.INSTANCE;
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ MechanismSchema(int i, boolean z, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, Report$MechanismSchema$$serializer.INSTANCE.getDescriptor());
            }
            this.handled = z;
        }

        public MechanismSchema(boolean z) {
            this.handled = z;
        }

        public final boolean getHandled() {
            return this.handled;
        }
    }

    /* JADX INFO: compiled from: Report.kt */
    @Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 \u001e2\u00020\u0001:\u0002\u001d\u001eB)\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0002\u0010\tB\u0013\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\u0010\nJ\u000f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003J\u0019\u0010\u000e\u001a\u00020\u00002\u000e\b\u0002\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001J&\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bHÁ\u0001¢\u0006\u0002\b\u001cR\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u001f"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;", "", "seen1", "", "frames", "", "Lcom/stripe/spos/sentry/http/models/Report$StackTraceFrame;", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(ILjava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(Ljava/util/List;)V", "getFrames", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "toString", "", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$sentry_http", "$serializer", "Companion", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable
    public static final /* data */ class StackTraceSchema {
        private final List<StackTraceFrame> frames;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final KSerializer<Object>[] $childSerializers = {new ArrayListSerializer(Report$StackTraceFrame$$serializer.INSTANCE)};

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ StackTraceSchema copy$default(StackTraceSchema stackTraceSchema, List list, int i, Object obj) {
            if ((i & 1) != 0) {
                list = stackTraceSchema.frames;
            }
            return stackTraceSchema.copy(list);
        }

        public final List<StackTraceFrame> component1() {
            return this.frames;
        }

        public final StackTraceSchema copy(List<StackTraceFrame> frames) {
            Intrinsics.checkNotNullParameter(frames, "frames");
            return new StackTraceSchema(frames);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof StackTraceSchema) && Intrinsics.areEqual(this.frames, ((StackTraceSchema) other).frames);
        }

        public int hashCode() {
            return this.frames.hashCode();
        }

        public String toString() {
            return "StackTraceSchema(frames=" + this.frames + ')';
        }

        /* JADX INFO: compiled from: Report.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/Report$StackTraceSchema;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final KSerializer<StackTraceSchema> serializer() {
                return Report$StackTraceSchema$$serializer.INSTANCE;
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ StackTraceSchema(int i, List list, SerializationConstructorMarker serializationConstructorMarker) {
            if (1 != (i & 1)) {
                PluginExceptionsKt.throwMissingFieldException(i, 1, Report$StackTraceSchema$$serializer.INSTANCE.getDescriptor());
            }
            this.frames = list;
        }

        public StackTraceSchema(List<StackTraceFrame> frames) {
            Intrinsics.checkNotNullParameter(frames, "frames");
            this.frames = frames;
        }

        public final List<StackTraceFrame> getFrames() {
            return this.frames;
        }
    }

    /* JADX INFO: compiled from: Report.kt */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0087\b\u0018\u0000 &2\u00020\u0001:\u0002%&B9\b\u0011\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nB\u001d\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0015\u001a\u00020\u0006HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0006HÆ\u0003J'\u0010\u0017\u001a\u00020\u00002\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\u0006HÆ\u0001J\u0013\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001c\u001a\u00020\u0006HÖ\u0001J&\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00002\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#HÁ\u0001¢\u0006\u0002\b$R\u001c\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0011\u0010\r\u001a\u0004\b\u0012\u0010\u0013¨\u0006'"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report$StackTraceFrame;", "", "seen1", "", "lineNumber", "fileName", "", "function", "serializationConstructorMarker", "Lkotlinx/serialization/internal/SerializationConstructorMarker;", "(IILjava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V", "(ILjava/lang/String;Ljava/lang/String;)V", "getFileName$annotations", "()V", "getFileName", "()Ljava/lang/String;", "getFunction", "getLineNumber$annotations", "getLineNumber", "()I", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "toString", "write$Self", "", "self", "output", "Lkotlinx/serialization/encoding/CompositeEncoder;", "serialDesc", "Lkotlinx/serialization/descriptors/SerialDescriptor;", "write$Self$sentry_http", "$serializer", "Companion", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
    @Serializable
    public static final /* data */ class StackTraceFrame {

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private final String fileName;
        private final String function;
        private final int lineNumber;

        public static /* synthetic */ StackTraceFrame copy$default(StackTraceFrame stackTraceFrame, int i, String str, String str2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                i = stackTraceFrame.lineNumber;
            }
            if ((i2 & 2) != 0) {
                str = stackTraceFrame.fileName;
            }
            if ((i2 & 4) != 0) {
                str2 = stackTraceFrame.function;
            }
            return stackTraceFrame.copy(i, str, str2);
        }

        @SerialName(ContentDisposition.Parameters.FileName)
        public static /* synthetic */ void getFileName$annotations() {
        }

        @SerialName("lineno")
        public static /* synthetic */ void getLineNumber$annotations() {
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getLineNumber() {
            return this.lineNumber;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getFileName() {
            return this.fileName;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final String getFunction() {
            return this.function;
        }

        public final StackTraceFrame copy(int lineNumber, String fileName, String function) {
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            Intrinsics.checkNotNullParameter(function, "function");
            return new StackTraceFrame(lineNumber, fileName, function);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof StackTraceFrame)) {
                return false;
            }
            StackTraceFrame stackTraceFrame = (StackTraceFrame) other;
            return this.lineNumber == stackTraceFrame.lineNumber && Intrinsics.areEqual(this.fileName, stackTraceFrame.fileName) && Intrinsics.areEqual(this.function, stackTraceFrame.function);
        }

        public int hashCode() {
            return (((Integer.hashCode(this.lineNumber) * 31) + this.fileName.hashCode()) * 31) + this.function.hashCode();
        }

        public String toString() {
            return "StackTraceFrame(lineNumber=" + this.lineNumber + ", fileName=" + this.fileName + ", function=" + this.function + ')';
        }

        /* JADX INFO: compiled from: Report.kt */
        @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¨\u0006\u0006"}, d2 = {"Lcom/stripe/spos/sentry/http/models/Report$StackTraceFrame$Companion;", "", "()V", "serializer", "Lkotlinx/serialization/KSerializer;", "Lcom/stripe/spos/sentry/http/models/Report$StackTraceFrame;", "sentry-http"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final KSerializer<StackTraceFrame> serializer() {
                return Report$StackTraceFrame$$serializer.INSTANCE;
            }
        }

        @Deprecated(level = DeprecationLevel.HIDDEN, message = "This synthesized declaration should not be used directly", replaceWith = @ReplaceWith(expression = "", imports = {}))
        public /* synthetic */ StackTraceFrame(int i, @SerialName("lineno") int i2, @SerialName(ContentDisposition.Parameters.FileName) String str, String str2, SerializationConstructorMarker serializationConstructorMarker) {
            if (7 != (i & 7)) {
                PluginExceptionsKt.throwMissingFieldException(i, 7, Report$StackTraceFrame$$serializer.INSTANCE.getDescriptor());
            }
            this.lineNumber = i2;
            this.fileName = str;
            this.function = str2;
        }

        public StackTraceFrame(int i, String fileName, String function) {
            Intrinsics.checkNotNullParameter(fileName, "fileName");
            Intrinsics.checkNotNullParameter(function, "function");
            this.lineNumber = i;
            this.fileName = fileName;
            this.function = function;
        }

        @JvmStatic
        public static final /* synthetic */ void write$Self$sentry_http(StackTraceFrame self, CompositeEncoder output, SerialDescriptor serialDesc) {
            output.encodeIntElement(serialDesc, 0, self.lineNumber);
            output.encodeStringElement(serialDesc, 1, self.fileName);
            output.encodeStringElement(serialDesc, 2, self.function);
        }

        public final int getLineNumber() {
            return this.lineNumber;
        }

        public final String getFileName() {
            return this.fileName;
        }

        public final String getFunction() {
            return this.function;
        }
    }
}
