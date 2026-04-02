package com.stripe.proto.model.config;

import com.squareup.wire.EnumAdapter;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import com.squareup.wire.WireEnum;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: ApplicationSelectionIndicator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u0000 \n2\b\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002:\u0001\nB\u000f\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u0004X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\t¨\u0006\u000b"}, d2 = {"Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;", "", "Lcom/squareup/wire/WireEnum;", "value", "", "(Ljava/lang/String;II)V", "getValue", "()I", "PARTIAL_MATCH", "EXACT_MATCH", "Companion", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class ApplicationSelectionIndicator implements WireEnum {
    private static final /* synthetic */ EnumEntries $ENTRIES;
    private static final /* synthetic */ ApplicationSelectionIndicator[] $VALUES;
    public static final ProtoAdapter<ApplicationSelectionIndicator> ADAPTER;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE;
    public static final ApplicationSelectionIndicator EXACT_MATCH;
    public static final ApplicationSelectionIndicator PARTIAL_MATCH;
    private final int value;

    private static final /* synthetic */ ApplicationSelectionIndicator[] $values() {
        return new ApplicationSelectionIndicator[]{PARTIAL_MATCH, EXACT_MATCH};
    }

    @JvmStatic
    public static final ApplicationSelectionIndicator fromValue(int i) {
        return INSTANCE.fromValue(i);
    }

    public static EnumEntries<ApplicationSelectionIndicator> getEntries() {
        return $ENTRIES;
    }

    public static ApplicationSelectionIndicator valueOf(String str) {
        return (ApplicationSelectionIndicator) Enum.valueOf(ApplicationSelectionIndicator.class, str);
    }

    public static ApplicationSelectionIndicator[] values() {
        return (ApplicationSelectionIndicator[]) $VALUES.clone();
    }

    private ApplicationSelectionIndicator(String str, int i, int i2) {
        this.value = i2;
    }

    @Override // com.squareup.wire.WireEnum
    public int getValue() {
        return this.value;
    }

    static {
        final ApplicationSelectionIndicator applicationSelectionIndicator = new ApplicationSelectionIndicator("PARTIAL_MATCH", 0, 0);
        PARTIAL_MATCH = applicationSelectionIndicator;
        EXACT_MATCH = new ApplicationSelectionIndicator("EXACT_MATCH", 1, 1);
        ApplicationSelectionIndicator[] applicationSelectionIndicatorArr$values = $values();
        $VALUES = applicationSelectionIndicatorArr$values;
        $ENTRIES = EnumEntriesKt.enumEntries(applicationSelectionIndicatorArr$values);
        INSTANCE = new Companion(null);
        final KClass orCreateKotlinClass = Reflection.getOrCreateKotlinClass(ApplicationSelectionIndicator.class);
        final Syntax syntax = Syntax.PROTO_3;
        ADAPTER = new EnumAdapter<ApplicationSelectionIndicator>(orCreateKotlinClass, syntax, applicationSelectionIndicator) { // from class: com.stripe.proto.model.config.ApplicationSelectionIndicator$Companion$ADAPTER$1
            {
                ApplicationSelectionIndicator applicationSelectionIndicator2 = applicationSelectionIndicator;
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.squareup.wire.EnumAdapter
            public ApplicationSelectionIndicator fromValue(int value) {
                return ApplicationSelectionIndicator.INSTANCE.fromValue(value);
            }
        };
    }

    /* JADX INFO: compiled from: ApplicationSelectionIndicator.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0007R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/stripe/proto/model/config/ApplicationSelectionIndicator$Companion;", "", "()V", "ADAPTER", "Lcom/squareup/wire/ProtoAdapter;", "Lcom/stripe/proto/model/config/ApplicationSelectionIndicator;", "fromValue", "value", "", "terminal_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final ApplicationSelectionIndicator fromValue(int value) {
            if (value == 0) {
                return ApplicationSelectionIndicator.PARTIAL_MATCH;
            }
            if (value != 1) {
                return null;
            }
            return ApplicationSelectionIndicator.EXACT_MATCH;
        }
    }
}
