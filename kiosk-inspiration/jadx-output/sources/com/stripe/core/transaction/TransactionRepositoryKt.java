package com.stripe.core.transaction;

import com.dantsu.escposprinter.textparser.PrinterTextParser;
import com.stripe.jvmcore.posversion.POSVersion;
import com.stripe.proto.model.common.VersionInfoPb;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TransactionRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"allowExtendedTransactions", "", "Lcom/stripe/proto/model/common/VersionInfoPb;", "transaction_release"}, k = 2, mv = {1, 9, 0}, xi = 48)
public final class TransactionRepositoryKt {
    public static final boolean allowExtendedTransactions(VersionInfoPb versionInfoPb) {
        Intrinsics.checkNotNullParameter(versionInfoPb, "<this>");
        POSVersion pOSVersion = (POSVersion) MapsKt.mapOf(TuplesKt.to(VersionInfoPb.ClientType.JS_SDK, new POSVersion(1, 1, 0, null)), TuplesKt.to(VersionInfoPb.ClientType.IOS_SDK, new POSVersion(2, 1, 0, null)), TuplesKt.to(VersionInfoPb.ClientType.ANDROID_SDK, new POSVersion(2, 4, 0, null)), TuplesKt.to(VersionInfoPb.ClientType.JAVA_SDK, new POSVersion(1, 0, 0, new POSVersion.SubPatch(PrinterTextParser.TAGS_FORMAT_TEXT_BOLD, 1))), TuplesKt.to(VersionInfoPb.ClientType.DOTNET_SDK, new POSVersion(0, 0, 1, null))).get(versionInfoPb.client_type);
        String str = versionInfoPb.client_version;
        POSVersion pOSVersion2 = str != null ? POSVersion.INSTANCE.toPOSVersion(str) : null;
        return (pOSVersion == null || pOSVersion2 == null || pOSVersion2.compareTo(pOSVersion) < 0) ? false : true;
    }
}
