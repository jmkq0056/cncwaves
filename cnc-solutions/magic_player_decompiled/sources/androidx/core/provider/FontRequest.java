package androidx.core.provider;

import android.support.v4.media.f;
import android.util.Base64;
import androidx.annotation.ArrayRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class FontRequest {
    private final List<List<byte[]>> mCertificates;
    private final int mCertificatesArray;
    private final String mIdentifier;
    private final String mProviderAuthority;
    private final String mProviderPackage;
    private final String mQuery;

    public FontRequest(@NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull List<List<byte[]>> list) {
        String str4 = (String) Preconditions.checkNotNull(str);
        this.mProviderAuthority = str4;
        String str5 = (String) Preconditions.checkNotNull(str2);
        this.mProviderPackage = str5;
        String str6 = (String) Preconditions.checkNotNull(str3);
        this.mQuery = str6;
        this.mCertificates = (List) Preconditions.checkNotNull(list);
        this.mCertificatesArray = 0;
        this.mIdentifier = str4 + "-" + str5 + "-" + str6;
    }

    @Nullable
    public List<List<byte[]>> getCertificates() {
        return this.mCertificates;
    }

    @ArrayRes
    public int getCertificatesArrayResId() {
        return this.mCertificatesArray;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public String getIdentifier() {
        return this.mIdentifier;
    }

    @NonNull
    public String getProviderAuthority() {
        return this.mProviderAuthority;
    }

    @NonNull
    public String getProviderPackage() {
        return this.mProviderPackage;
    }

    @NonNull
    public String getQuery() {
        return this.mQuery;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        StringBuilder sbA = f.a("FontRequest {mProviderAuthority: ");
        sbA.append(this.mProviderAuthority);
        sbA.append(", mProviderPackage: ");
        sbA.append(this.mProviderPackage);
        sbA.append(", mQuery: ");
        sbA.append(this.mQuery);
        sbA.append(", mCertificates:");
        sb.append(sbA.toString());
        for (int i4 = 0; i4 < this.mCertificates.size(); i4++) {
            sb.append(" [");
            List<byte[]> list = this.mCertificates.get(i4);
            for (int i5 = 0; i5 < list.size(); i5++) {
                sb.append(" \"");
                sb.append(Base64.encodeToString(list.get(i5), 0));
                sb.append("\"");
            }
            sb.append(" ]");
        }
        sb.append("}");
        sb.append("mCertificatesArray: " + this.mCertificatesArray);
        return sb.toString();
    }

    public FontRequest(@NonNull String str, @NonNull String str2, @NonNull String str3, @ArrayRes int i4) {
        String str4 = (String) Preconditions.checkNotNull(str);
        this.mProviderAuthority = str4;
        String str5 = (String) Preconditions.checkNotNull(str2);
        this.mProviderPackage = str5;
        String str6 = (String) Preconditions.checkNotNull(str3);
        this.mQuery = str6;
        this.mCertificates = null;
        Preconditions.checkArgument(i4 != 0);
        this.mCertificatesArray = i4;
        this.mIdentifier = str4 + "-" + str5 + "-" + str6;
    }
}
