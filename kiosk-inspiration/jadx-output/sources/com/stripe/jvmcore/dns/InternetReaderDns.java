package com.stripe.jvmcore.dns;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.Typography;
import okhttp3.Dns;

/* JADX INFO: compiled from: InternetReaderDns.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0001\u0012\u0012\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006\"\u00020\u0007¢\u0006\u0002\u0010\bJ\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\u0006\u0010\r\u001a\u00020\u0007H\u0016J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\t¨\u0006\u0011"}, d2 = {"Lcom/stripe/jvmcore/dns/InternetReaderDns;", "Lokhttp3/Dns;", "inetAddressValidator", "Lcom/stripe/jvmcore/dns/InetAddressValidator;", "fallbackDns", "lookupDomains", "", "", "(Lcom/stripe/jvmcore/dns/InetAddressValidator;Lokhttp3/Dns;[Ljava/lang/String;)V", "[Ljava/lang/String;", "lookup", "", "Ljava/net/InetAddress;", "hostname", "lookupForDomain", "lookupDomain", "Companion", "dns"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class InternetReaderDns implements Dns {
    private static final String HASH_VALUE_PATTERN = "[a-z0-9]+";
    private static final String IP16B_BLOCK_PATTERN = "192\\-168\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])";
    private static final String IP20B_BLOCK_PATTERN = "172\\-(1[6-9]|2[0-9]|3[0-1])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])";
    private static final String IP22B_BLOCK_PATTERN = "100\\-(6[4-9]|7[0-9]|8[0-9]|9[0-9]|10[0-9]|11[0-9]|12[0-7])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])";
    private static final String IP24B_BLOCK_PATTERN = "10\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])";
    private static final String IP32B_BLOCK_PATTERN = "127\\-0\\-0\\-1";
    private static final String IP_BYTE_0B01XXXXXX = "(6[4-9]|7[0-9]|8[0-9]|9[0-9]|10[0-9]|11[0-9]|12[0-7])";
    private static final String IP_OCTET_PATTERN = "(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])";
    private final Dns fallbackDns;
    private final InetAddressValidator inetAddressValidator;
    private final String[] lookupDomains;
    private static final Companion Companion = new Companion(null);
    private static final String IP_PARTS_PATTERN = "(10\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|172\\-(1[6-9]|2[0-9]|3[0-1])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|192\\-168\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|127\\-0\\-0\\-1|100\\-(6[4-9]|7[0-9]|8[0-9]|9[0-9]|10[0-9]|11[0-9]|12[0-7])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9]))";
    private static final Regex ipPartsMatcher = new Regex(IP_PARTS_PATTERN);

    public InternetReaderDns(InetAddressValidator inetAddressValidator, Dns fallbackDns, String... lookupDomains) {
        Intrinsics.checkNotNullParameter(inetAddressValidator, "inetAddressValidator");
        Intrinsics.checkNotNullParameter(fallbackDns, "fallbackDns");
        Intrinsics.checkNotNullParameter(lookupDomains, "lookupDomains");
        this.inetAddressValidator = inetAddressValidator;
        this.fallbackDns = fallbackDns;
        this.lookupDomains = lookupDomains;
    }

    /* JADX INFO: compiled from: InternetReaderDns.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\b\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/stripe/jvmcore/dns/InternetReaderDns$Companion;", "", "()V", "HASH_VALUE_PATTERN", "", "IP16B_BLOCK_PATTERN", "IP20B_BLOCK_PATTERN", "IP22B_BLOCK_PATTERN", "IP24B_BLOCK_PATTERN", "IP32B_BLOCK_PATTERN", "IP_BYTE_0B01XXXXXX", "IP_OCTET_PATTERN", "IP_PARTS_PATTERN", "ipPartsMatcher", "Lkotlin/text/Regex;", "dns"}, k = 1, mv = {1, 9, 0}, xi = 48)
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // okhttp3.Dns
    public List<InetAddress> lookup(String hostname) throws UnknownHostException {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        String[] strArr = this.lookupDomains;
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            InetAddress inetAddressLookupForDomain = lookupForDomain(str, hostname);
            if (inetAddressLookupForDomain != null) {
                arrayList.add(inetAddressLookupForDomain);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            if (this.inetAddressValidator.isValid((InetAddress) obj)) {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayListLookup = arrayList2;
        if (arrayListLookup.isEmpty()) {
            arrayListLookup = this.fallbackDns.lookup(hostname);
        }
        return arrayListLookup;
    }

    private final InetAddress lookupForDomain(String lookupDomain, String hostname) {
        List<String> groupValues;
        String str;
        String strReplace$default;
        if (!new Regex("^(?i)(10\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|172\\-(1[6-9]|2[0-9]|3[0-1])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|192\\-168\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])|127\\-0\\-0\\-1|100\\-(6[4-9]|7[0-9]|8[0-9]|9[0-9]|10[0-9]|11[0-9]|12[0-7])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\\-(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9]))\\.([a-z0-9]+\\.)?" + lookupDomain + Typography.dollar).matches(hostname)) {
            return null;
        }
        try {
            MatchResult matchResultFind$default = Regex.find$default(ipPartsMatcher, hostname, 0, 2, null);
            if (matchResultFind$default == null || (groupValues = matchResultFind$default.getGroupValues()) == null || (str = groupValues.get(1)) == null || (strReplace$default = StringsKt.replace$default(str, "-", ".", false, 4, (Object) null)) == null) {
                return null;
            }
            return InetAddress.getByName(strReplace$default);
        } catch (SecurityException | UnknownHostException unused) {
            return null;
        }
    }
}
