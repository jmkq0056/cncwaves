package com.stripe.hardware.emv;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* JADX INFO: compiled from: DefaultDomesticDebitAidsParser.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\b\u001a\u00020\u0007H\u0016J\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006*\u00020\u0007H\u0000¢\u0006\u0002\b\tJ\u0014\u0010\n\u001a\u00020\u000b*\u00020\u00072\u0006\u0010\f\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/stripe/hardware/emv/DefaultDomesticDebitAidsParser;", "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;", "logger", "Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;", "(Lcom/stripe/hardware/emv/DomesticDebitAidsParserLogger;)V", "parse", "", "", "domesticDebitAids", "parse$impl_release", "readByte", "", "cursor", "impl_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class DefaultDomesticDebitAidsParser implements DomesticDebitAidsParser {
    private final DomesticDebitAidsParserLogger logger;

    public DefaultDomesticDebitAidsParser(DomesticDebitAidsParserLogger logger) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        this.logger = logger;
    }

    @Override // com.stripe.hardware.emv.DomesticDebitAidsParser
    public List<String> parse(String domesticDebitAids) {
        Intrinsics.checkNotNullParameter(domesticDebitAids, "domesticDebitAids");
        return parse$impl_release(domesticDebitAids);
    }

    public final List<String> parse$impl_release(String str) {
        int i;
        Intrinsics.checkNotNullParameter(str, "<this>");
        ArrayList arrayList = new ArrayList();
        if (str.length() > 0 && str.length() >= 2) {
            try {
                int i2 = readByte(str, 0);
                if (i2 <= 10) {
                    int i3 = 2;
                    while (i3 <= str.length() - 2) {
                        try {
                            int i4 = readByte(str, i3) * 2;
                            int i5 = i3 + 2;
                            if (i4 <= 20 && (i = i5 + i4) <= str.length()) {
                                String strSubstring = str.substring(i5, i);
                                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                                arrayList.add(strSubstring);
                                i3 = i;
                            } else {
                                DomesticDebitAidsParserLogger.e$default(this.logger, "Domestic debit AID length greater than 10 bytes: " + i4, null, 2, null);
                                return CollectionsKt.emptyList();
                            }
                        } catch (NumberFormatException e) {
                            this.logger.e("AID length is not hex representable: " + str, e);
                            return CollectionsKt.emptyList();
                        }
                    }
                    ArrayList arrayList2 = arrayList;
                    if (arrayList2.size() != i2) {
                        DomesticDebitAidsParserLogger.e$default(this.logger, "Domestic debit AID list mismatch: Expected " + i2 + " but got " + arrayList2.size(), null, 2, null);
                        return CollectionsKt.emptyList();
                    }
                } else {
                    DomesticDebitAidsParserLogger.e$default(this.logger, "Domestic debit AID list size greater than 10: " + i2, null, 2, null);
                    return arrayList;
                }
            } catch (NumberFormatException e2) {
                this.logger.e("Number of AIDs is not hex representable: " + str, e2);
                return CollectionsKt.emptyList();
            }
        }
        return arrayList;
    }

    private final int readByte(String str, int i) throws NumberFormatException {
        String strSubstring = str.substring(i, i + 2);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return Integer.parseInt(strSubstring, CharsKt.checkRadix(16));
    }
}
