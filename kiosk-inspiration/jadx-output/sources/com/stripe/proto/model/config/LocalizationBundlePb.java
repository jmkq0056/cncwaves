package com.stripe.proto.model.config;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireField;
import com.squareup.wire.internal.Internal;
import com.stripe.proto.model.config.LocalizationBundlePb;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import okio.ByteString;

/* JADX INFO: compiled from: LocalizationBundlePb.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0013\u0014\u0015B\u001f\u0012\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ \u0010\t\u001a\u00020\u00002\u000e\b\u0002\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\b\u0002\u0010\u0006\u001a\u00020\u0007J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0096\u0002J\b\u0010\u000e\u001a\u00020\u000fH\u0016J\b\u0010\u0010\u001a\u00020\u0002H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/stripe/proto/model/config/LocalizationBundlePb;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/LocalizationBundlePb$Builder;", "localeBundles", "", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;", "unknownFields", "Lokio/ByteString;", "(Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "LocaleBundle", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class LocalizationBundlePb extends Message<LocalizationBundlePb, Builder> {
    public static final ProtoAdapter<LocalizationBundlePb> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final long serialVersionUID = 0;

    @WireField(adapter = "com.stripe.proto.model.config.LocalizationBundlePb$LocaleBundle#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 0, tag = 1)
    public final List<LocaleBundle> localeBundles;

    /* JADX WARN: Multi-variable type inference failed */
    public LocalizationBundlePb() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public /* synthetic */ LocalizationBundlePb(List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? CollectionsKt.emptyList() : list, (i & 2) != 0 ? ByteString.EMPTY : byteString);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LocalizationBundlePb(List<LocaleBundle> localeBundles, ByteString unknownFields) {
        super(ADAPTER, unknownFields);
        Intrinsics.checkNotNullParameter(localeBundles, "localeBundles");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        this.localeBundles = Internal.immutableCopyOf("localeBundles", localeBundles);
    }

    @Override // com.squareup.wire.Message
    public Builder newBuilder() {
        Builder builder = new Builder();
        builder.localeBundles = this.localeBundles;
        builder.addUnknownFields(unknownFields());
        return builder;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (!(other instanceof LocalizationBundlePb)) {
            return false;
        }
        LocalizationBundlePb localizationBundlePb = (LocalizationBundlePb) other;
        return Intrinsics.areEqual(unknownFields(), localizationBundlePb.unknownFields()) && Intrinsics.areEqual(this.localeBundles, localizationBundlePb.localeBundles);
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i != 0) {
            return i;
        }
        int iHashCode = (unknownFields().hashCode() * 37) + this.localeBundles.hashCode();
        this.hashCode = iHashCode;
        return iHashCode;
    }

    @Override // com.squareup.wire.Message
    public String toString() {
        ArrayList arrayList = new ArrayList();
        if (!this.localeBundles.isEmpty()) {
            arrayList.add("localeBundles=" + this.localeBundles);
        }
        return CollectionsKt.joinToString$default(arrayList, ", ", "LocalizationBundlePb{", "}", 0, null, null, 56, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ LocalizationBundlePb copy$default(LocalizationBundlePb localizationBundlePb, List list, ByteString byteString, int i, Object obj) {
        if ((i & 1) != 0) {
            list = localizationBundlePb.localeBundles;
        }
        if ((i & 2) != 0) {
            byteString = localizationBundlePb.unknownFields();
        }
        return localizationBundlePb.copy(list, byteString);
    }

    public final LocalizationBundlePb copy(List<LocaleBundle> localeBundles, ByteString unknownFields) {
        Intrinsics.checkNotNullParameter(localeBundles, "localeBundles");
        Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
        return new LocalizationBundlePb(localeBundles, unknownFields);
    }

    /* JADX INFO: compiled from: LocalizationBundlePb.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u0007\u001a\u00020\u0002H\u0016J\u0014\u0010\u0004\u001a\u00020\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005R\u0018\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\b"}, d2 = {"Lcom/stripe/proto/model/config/LocalizationBundlePb$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/LocalizationBundlePb;", "()V", "localeBundles", "", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Builder extends Message.Builder<LocalizationBundlePb, Builder> {
        public List<LocaleBundle> localeBundles = CollectionsKt.emptyList();

        public final Builder localeBundles(List<LocaleBundle> localeBundles) {
            Intrinsics.checkNotNullParameter(localeBundles, "localeBundles");
            Internal.checkElementsNotNull(localeBundles);
            this.localeBundles = localeBundles;
            return this;
        }

        @Override // com.squareup.wire.Message.Builder
        public LocalizationBundlePb build() {
            return new LocalizationBundlePb(this.localeBundles, buildUnknownFields());
        }
    }

    /* JADX INFO: compiled from: LocalizationBundlePb.kt */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/LocalizationBundlePb$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/LocalizationBundlePb;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/LocalizationBundlePb$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final /* synthetic */ LocalizationBundlePb build(Function1<? super Builder, Unit> body) {
            Intrinsics.checkNotNullParameter(body, "body");
            Builder builder = new Builder();
            body.invoke(builder);
            return builder.build();
        }
    }

    static {
        final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LocalizationBundlePb.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new ProtoAdapter<LocalizationBundlePb>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.LocalizationBundlePb$Companion$ADAPTER$1
            @Override // com.squareup.wire.ProtoAdapter
            public int encodedSize(LocalizationBundlePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.unknownFields().size() + LocalizationBundlePb.LocaleBundle.ADAPTER.asRepeated().encodedSizeWithTag(1, value.localeBundles);
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ProtoWriter writer, LocalizationBundlePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                LocalizationBundlePb.LocaleBundle.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.localeBundles);
                writer.writeBytes(value.unknownFields());
            }

            @Override // com.squareup.wire.ProtoAdapter
            public void encode(ReverseProtoWriter writer, LocalizationBundlePb value) throws IOException {
                Intrinsics.checkNotNullParameter(writer, "writer");
                Intrinsics.checkNotNullParameter(value, "value");
                writer.writeBytes(value.unknownFields());
                LocalizationBundlePb.LocaleBundle.ADAPTER.asRepeated().encodeWithTag(writer, 1, value.localeBundles);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.squareup.wire.ProtoAdapter
            public LocalizationBundlePb decode(ProtoReader reader) throws IOException {
                Intrinsics.checkNotNullParameter(reader, "reader");
                ArrayList arrayList = new ArrayList();
                long jBeginMessage = reader.beginMessage();
                while (true) {
                    int iNextTag = reader.nextTag();
                    if (iNextTag == -1) {
                        return new LocalizationBundlePb(arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                    }
                    if (iNextTag == 1) {
                        arrayList.add(LocalizationBundlePb.LocaleBundle.ADAPTER.decode(reader));
                    } else {
                        reader.readUnknownField(iNextTag);
                    }
                }
            }

            @Override // com.squareup.wire.ProtoAdapter
            public LocalizationBundlePb redact(LocalizationBundlePb value) {
                Intrinsics.checkNotNullParameter(value, "value");
                return value.copy(Internal.m361redactElements(value.localeBundles, LocalizationBundlePb.LocaleBundle.ADAPTER), ByteString.EMPTY);
            }
        };
    }

    /* JADX INFO: compiled from: LocalizationBundlePb.kt */
    @Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u0000 \u00162\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0015\u0016\u0017B)\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\b\b\u0002\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ*\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\b\b\u0002\u0010\b\u001a\u00020\tJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0002H\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;", "locale", "Lcom/stripe/proto/model/config/Locale;", "strings", "", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString;", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/config/Locale;Ljava/util/List;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "", "Builder", "Companion", "LocaleString", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class LocaleBundle extends Message<LocaleBundle, Builder> {
        public static final ProtoAdapter<LocaleBundle> ADAPTER;

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);
        private static final long serialVersionUID = 0;

        @WireField(adapter = "com.stripe.proto.model.config.Locale#ADAPTER", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
        public final Locale locale;

        @WireField(adapter = "com.stripe.proto.model.config.LocalizationBundlePb$LocaleBundle$LocaleString#ADAPTER", label = WireField.Label.REPEATED, schemaIndex = 1, tag = 2)
        public final List<LocaleString> strings;

        public LocaleBundle() {
            this(null, null, null, 7, null);
        }

        public /* synthetic */ LocaleBundle(Locale locale, List list, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? Locale.INVALID_LOCALE : locale, (i & 2) != 0 ? CollectionsKt.emptyList() : list, (i & 4) != 0 ? ByteString.EMPTY : byteString);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LocaleBundle(Locale locale, List<LocaleString> strings, ByteString unknownFields) {
            super(ADAPTER, unknownFields);
            Intrinsics.checkNotNullParameter(locale, "locale");
            Intrinsics.checkNotNullParameter(strings, "strings");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            this.locale = locale;
            this.strings = Internal.immutableCopyOf("strings", strings);
        }

        @Override // com.squareup.wire.Message
        public Builder newBuilder() {
            Builder builder = new Builder();
            builder.locale = this.locale;
            builder.strings = this.strings;
            builder.addUnknownFields(unknownFields());
            return builder;
        }

        public boolean equals(Object other) {
            if (other == this) {
                return true;
            }
            if (!(other instanceof LocaleBundle)) {
                return false;
            }
            LocaleBundle localeBundle = (LocaleBundle) other;
            return Intrinsics.areEqual(unknownFields(), localeBundle.unknownFields()) && this.locale == localeBundle.locale && Intrinsics.areEqual(this.strings, localeBundle.strings);
        }

        public int hashCode() {
            int i = this.hashCode;
            if (i != 0) {
                return i;
            }
            int iHashCode = (((unknownFields().hashCode() * 37) + this.locale.hashCode()) * 37) + this.strings.hashCode();
            this.hashCode = iHashCode;
            return iHashCode;
        }

        @Override // com.squareup.wire.Message
        public String toString() {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = arrayList;
            arrayList2.add("locale=" + this.locale);
            if (!this.strings.isEmpty()) {
                arrayList2.add("strings=" + this.strings);
            }
            return CollectionsKt.joinToString$default(arrayList, ", ", "LocaleBundle{", "}", 0, null, null, 56, null);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ LocaleBundle copy$default(LocaleBundle localeBundle, Locale locale, List list, ByteString byteString, int i, Object obj) {
            if ((i & 1) != 0) {
                locale = localeBundle.locale;
            }
            if ((i & 2) != 0) {
                list = localeBundle.strings;
            }
            if ((i & 4) != 0) {
                byteString = localeBundle.unknownFields();
            }
            return localeBundle.copy(locale, list, byteString);
        }

        public final LocaleBundle copy(Locale locale, List<LocaleString> strings, ByteString unknownFields) {
            Intrinsics.checkNotNullParameter(locale, "locale");
            Intrinsics.checkNotNullParameter(strings, "strings");
            Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
            return new LocaleBundle(locale, strings, unknownFields);
        }

        /* JADX INFO: compiled from: LocalizationBundlePb.kt */
        @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\t\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0014\u0010\u0006\u001a\u00020\u00002\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;", "()V", "locale", "Lcom/stripe/proto/model/config/Locale;", "strings", "", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString;", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Builder extends Message.Builder<LocaleBundle, Builder> {
            public Locale locale = Locale.INVALID_LOCALE;
            public List<LocaleString> strings = CollectionsKt.emptyList();

            public final Builder locale(Locale locale) {
                Intrinsics.checkNotNullParameter(locale, "locale");
                this.locale = locale;
                return this;
            }

            public final Builder strings(List<LocaleString> strings) {
                Intrinsics.checkNotNullParameter(strings, "strings");
                Internal.checkElementsNotNull(strings);
                this.strings = strings;
                return this;
            }

            @Override // com.squareup.wire.Message.Builder
            public LocaleBundle build() {
                return new LocaleBundle(this.locale, this.strings, buildUnknownFields());
            }
        }

        /* JADX INFO: compiled from: LocalizationBundlePb.kt */
        @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }

            public final /* synthetic */ LocaleBundle build(Function1<? super Builder, Unit> body) {
                Intrinsics.checkNotNullParameter(body, "body");
                Builder builder = new Builder();
                body.invoke(builder);
                return builder.build();
            }
        }

        static {
            final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
            final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LocaleBundle.class);
            final Syntax syntax = Syntax.PROTO_3;
            ADAPTER = new ProtoAdapter<LocaleBundle>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.LocalizationBundlePb$LocaleBundle$Companion$ADAPTER$1
                @Override // com.squareup.wire.ProtoAdapter
                public int encodedSize(LocalizationBundlePb.LocaleBundle value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    int size = value.unknownFields().size();
                    if (value.locale != Locale.INVALID_LOCALE) {
                        size += Locale.ADAPTER.encodedSizeWithTag(1, value.locale);
                    }
                    return size + LocalizationBundlePb.LocaleBundle.LocaleString.ADAPTER.asRepeated().encodedSizeWithTag(2, value.strings);
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ProtoWriter writer, LocalizationBundlePb.LocaleBundle value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    if (value.locale != Locale.INVALID_LOCALE) {
                        Locale.ADAPTER.encodeWithTag(writer, 1, value.locale);
                    }
                    LocalizationBundlePb.LocaleBundle.LocaleString.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.strings);
                    writer.writeBytes(value.unknownFields());
                }

                @Override // com.squareup.wire.ProtoAdapter
                public void encode(ReverseProtoWriter writer, LocalizationBundlePb.LocaleBundle value) throws IOException {
                    Intrinsics.checkNotNullParameter(writer, "writer");
                    Intrinsics.checkNotNullParameter(value, "value");
                    writer.writeBytes(value.unknownFields());
                    LocalizationBundlePb.LocaleBundle.LocaleString.ADAPTER.asRepeated().encodeWithTag(writer, 2, value.strings);
                    if (value.locale != Locale.INVALID_LOCALE) {
                        Locale.ADAPTER.encodeWithTag(writer, 1, value.locale);
                    }
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // com.squareup.wire.ProtoAdapter
                public LocalizationBundlePb.LocaleBundle decode(ProtoReader reader) throws IOException {
                    Intrinsics.checkNotNullParameter(reader, "reader");
                    Locale localeDecode = Locale.INVALID_LOCALE;
                    ArrayList arrayList = new ArrayList();
                    long jBeginMessage = reader.beginMessage();
                    while (true) {
                        int iNextTag = reader.nextTag();
                        if (iNextTag == -1) {
                            return new LocalizationBundlePb.LocaleBundle(localeDecode, arrayList, reader.endMessageAndGetUnknownFields(jBeginMessage));
                        }
                        if (iNextTag == 1) {
                            try {
                                localeDecode = Locale.ADAPTER.decode(reader);
                            } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                            }
                        } else if (iNextTag == 2) {
                            arrayList.add(LocalizationBundlePb.LocaleBundle.LocaleString.ADAPTER.decode(reader));
                        } else {
                            reader.readUnknownField(iNextTag);
                        }
                    }
                }

                @Override // com.squareup.wire.ProtoAdapter
                public LocalizationBundlePb.LocaleBundle redact(LocalizationBundlePb.LocaleBundle value) {
                    Intrinsics.checkNotNullParameter(value, "value");
                    return LocalizationBundlePb.LocaleBundle.copy$default(value, null, Internal.m361redactElements(value.strings, LocalizationBundlePb.LocaleBundle.LocaleString.ADAPTER), ByteString.EMPTY, 1, null);
                }
            };
        }

        /* JADX INFO: compiled from: LocalizationBundlePb.kt */
        @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u0000 \u00142\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0013\u0014B#\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ$\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u00042\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\bJ\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u0006H\u0016R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u00020\u00068\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString;", "Lcom/squareup/wire/Message;", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString$Builder;", "string_key", "Lcom/stripe/proto/model/config/UxString;", "value_", "", "unknownFields", "Lokio/ByteString;", "(Lcom/stripe/proto/model/config/UxString;Ljava/lang/String;Lokio/ByteString;)V", "copy", "equals", "", "other", "", "hashCode", "", "newBuilder", "toString", "Builder", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
        public static final class LocaleString extends Message<LocaleString, Builder> {
            public static final ProtoAdapter<LocaleString> ADAPTER;

            /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
            public static final Companion INSTANCE = new Companion(null);
            private static final long serialVersionUID = 0;

            @WireField(adapter = "com.stripe.proto.model.config.UxString#ADAPTER", jsonName = "stringKey", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 0, tag = 1)
            public final UxString string_key;

            @WireField(adapter = "com.squareup.wire.ProtoAdapter#STRING", declaredName = "value", label = WireField.Label.OMIT_IDENTITY, schemaIndex = 1, tag = 2)
            public final String value_;

            public LocaleString() {
                this(null, null, null, 7, null);
            }

            public /* synthetic */ LocaleString(UxString uxString, String str, ByteString byteString, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? UxString.INVALID_UXSTRING : uxString, (i & 2) != 0 ? "" : str, (i & 4) != 0 ? ByteString.EMPTY : byteString);
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public LocaleString(UxString string_key, String value_, ByteString unknownFields) {
                super(ADAPTER, unknownFields);
                Intrinsics.checkNotNullParameter(string_key, "string_key");
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                this.string_key = string_key;
                this.value_ = value_;
            }

            @Override // com.squareup.wire.Message
            public Builder newBuilder() {
                Builder builder = new Builder();
                builder.string_key = this.string_key;
                builder.value_ = this.value_;
                builder.addUnknownFields(unknownFields());
                return builder;
            }

            public boolean equals(Object other) {
                if (other == this) {
                    return true;
                }
                if (!(other instanceof LocaleString)) {
                    return false;
                }
                LocaleString localeString = (LocaleString) other;
                return Intrinsics.areEqual(unknownFields(), localeString.unknownFields()) && this.string_key == localeString.string_key && Intrinsics.areEqual(this.value_, localeString.value_);
            }

            public int hashCode() {
                int i = this.hashCode;
                if (i != 0) {
                    return i;
                }
                int iHashCode = (((unknownFields().hashCode() * 37) + this.string_key.hashCode()) * 37) + this.value_.hashCode();
                this.hashCode = iHashCode;
                return iHashCode;
            }

            @Override // com.squareup.wire.Message
            public String toString() {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = arrayList;
                arrayList2.add("string_key=" + this.string_key);
                arrayList2.add("value_=" + Internal.sanitize(this.value_));
                return CollectionsKt.joinToString$default(arrayList, ", ", "LocaleString{", "}", 0, null, null, 56, null);
            }

            public static /* synthetic */ LocaleString copy$default(LocaleString localeString, UxString uxString, String str, ByteString byteString, int i, Object obj) {
                if ((i & 1) != 0) {
                    uxString = localeString.string_key;
                }
                if ((i & 2) != 0) {
                    str = localeString.value_;
                }
                if ((i & 4) != 0) {
                    byteString = localeString.unknownFields();
                }
                return localeString.copy(uxString, str, byteString);
            }

            public final LocaleString copy(UxString string_key, String value_, ByteString unknownFields) {
                Intrinsics.checkNotNullParameter(string_key, "string_key");
                Intrinsics.checkNotNullParameter(value_, "value_");
                Intrinsics.checkNotNullParameter(unknownFields, "unknownFields");
                return new LocaleString(string_key, value_, unknownFields);
            }

            /* JADX INFO: compiled from: LocalizationBundlePb.kt */
            @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\b\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString$Builder;", "Lcom/squareup/wire/Message$Builder;", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString;", "()V", "string_key", "Lcom/stripe/proto/model/config/UxString;", "value_", "", "build", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Builder extends Message.Builder<LocaleString, Builder> {
                public UxString string_key = UxString.INVALID_UXSTRING;
                public String value_ = "";

                public final Builder string_key(UxString string_key) {
                    Intrinsics.checkNotNullParameter(string_key, "string_key");
                    this.string_key = string_key;
                    return this;
                }

                public final Builder value_(String value_) {
                    Intrinsics.checkNotNullParameter(value_, "value_");
                    this.value_ = value_;
                    return this;
                }

                @Override // com.squareup.wire.Message.Builder
                public LocaleString build() {
                    return new LocaleString(this.string_key, this.value_, buildUnknownFields());
                }
            }

            /* JADX INFO: compiled from: LocalizationBundlePb.kt */
            @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\b\u001a\u00020\u00052\u0017\u0010\t\u001a\u0013\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\f0\n¢\u0006\u0002\b\rH\u0086\bø\u0001\u0000R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u000e"}, d2 = {"Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString;", "serialVersionUID", "", "build", "body", "Lkotlin/Function1;", "Lcom/stripe/proto/model/config/LocalizationBundlePb$LocaleBundle$LocaleString$Builder;", "", "Lkotlin/ExtensionFunctionType;", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
            public static final class Companion {
                public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                private Companion() {
                }

                public final /* synthetic */ LocaleString build(Function1<? super Builder, Unit> body) {
                    Intrinsics.checkNotNullParameter(body, "body");
                    Builder builder = new Builder();
                    body.invoke(builder);
                    return builder.build();
                }
            }

            static {
                final FieldEncoding fieldEncoding = FieldEncoding.LENGTH_DELIMITED;
                final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(LocaleString.class);
                final Syntax syntax = Syntax.PROTO_3;
                ADAPTER = new ProtoAdapter<LocaleString>(fieldEncoding, orCreateKotlinClass, syntax) { // from class: com.stripe.proto.model.config.LocalizationBundlePb$LocaleBundle$LocaleString$Companion$ADAPTER$1
                    @Override // com.squareup.wire.ProtoAdapter
                    public int encodedSize(LocalizationBundlePb.LocaleBundle.LocaleString value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int size = value.unknownFields().size();
                        if (value.string_key != UxString.INVALID_UXSTRING) {
                            size += UxString.ADAPTER.encodedSizeWithTag(1, value.string_key);
                        }
                        return !Intrinsics.areEqual(value.value_, "") ? size + ProtoAdapter.STRING.encodedSizeWithTag(2, value.value_) : size;
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ProtoWriter writer, LocalizationBundlePb.LocaleBundle.LocaleString value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        if (value.string_key != UxString.INVALID_UXSTRING) {
                            UxString.ADAPTER.encodeWithTag(writer, 1, value.string_key);
                        }
                        if (!Intrinsics.areEqual(value.value_, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.value_);
                        }
                        writer.writeBytes(value.unknownFields());
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public void encode(ReverseProtoWriter writer, LocalizationBundlePb.LocaleBundle.LocaleString value) throws IOException {
                        Intrinsics.checkNotNullParameter(writer, "writer");
                        Intrinsics.checkNotNullParameter(value, "value");
                        writer.writeBytes(value.unknownFields());
                        if (!Intrinsics.areEqual(value.value_, "")) {
                            ProtoAdapter.STRING.encodeWithTag(writer, 2, value.value_);
                        }
                        if (value.string_key != UxString.INVALID_UXSTRING) {
                            UxString.ADAPTER.encodeWithTag(writer, 1, value.string_key);
                        }
                    }

                    /* JADX WARN: Can't rename method to resolve collision */
                    @Override // com.squareup.wire.ProtoAdapter
                    public LocalizationBundlePb.LocaleBundle.LocaleString decode(ProtoReader reader) throws IOException {
                        Intrinsics.checkNotNullParameter(reader, "reader");
                        UxString uxStringDecode = UxString.INVALID_UXSTRING;
                        long jBeginMessage = reader.beginMessage();
                        String strDecode = "";
                        while (true) {
                            int iNextTag = reader.nextTag();
                            if (iNextTag == -1) {
                                return new LocalizationBundlePb.LocaleBundle.LocaleString(uxStringDecode, strDecode, reader.endMessageAndGetUnknownFields(jBeginMessage));
                            }
                            if (iNextTag == 1) {
                                try {
                                    uxStringDecode = UxString.ADAPTER.decode(reader);
                                } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                    reader.addUnknownField(iNextTag, FieldEncoding.VARINT, Long.valueOf(e.value));
                                }
                            } else if (iNextTag == 2) {
                                strDecode = ProtoAdapter.STRING.decode(reader);
                            } else {
                                reader.readUnknownField(iNextTag);
                            }
                        }
                    }

                    @Override // com.squareup.wire.ProtoAdapter
                    public LocalizationBundlePb.LocaleBundle.LocaleString redact(LocalizationBundlePb.LocaleBundle.LocaleString value) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        return LocalizationBundlePb.LocaleBundle.LocaleString.copy$default(value, null, null, ByteString.EMPTY, 3, null);
                    }
                };
            }
        }
    }
}
