package com.google.android.gms.measurement.internal;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.firebase.analytics.FirebaseAnalytics;
import kotlinx.coroutines.DebugKt;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@22.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzu {
    private final zzic zza;

    public zzu(zzic zzicVar) {
        this.zza = zzicVar;
    }

    final void zza(String str, Bundle bundle) {
        String string;
        this.zza.zzl().zzv();
        if (this.zza.zzae()) {
            return;
        }
        if (bundle == null || bundle.isEmpty()) {
            string = null;
        } else {
            if (str == null || str.isEmpty()) {
                str = DebugKt.DEBUG_PROPERTY_VALUE_AUTO;
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            string = builder.build().toString();
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        this.zza.zzn().zzr.zza(string);
        this.zza.zzn().zzs.zza(this.zza.zzb().currentTimeMillis());
    }

    final void zza() {
        String str;
        this.zza.zzl().zzv();
        if (zzc()) {
            if (zzd()) {
                this.zza.zzn().zzr.zza(null);
                Bundle bundle = new Bundle();
                bundle.putString(FirebaseAnalytics.Param.SOURCE, "(not set)");
                bundle.putString(FirebaseAnalytics.Param.MEDIUM, "(not set)");
                bundle.putString("_cis", "intent");
                bundle.putLong("_cc", 1L);
                this.zza.zzp().zzc(DebugKt.DEBUG_PROPERTY_VALUE_AUTO, "_cmpx", bundle);
            } else {
                String strZza = this.zza.zzn().zzr.zza();
                if (TextUtils.isEmpty(strZza)) {
                    this.zza.zzj().zzo().zza("Cache still valid but referrer not found");
                } else {
                    long jZza = ((this.zza.zzn().zzs.zza() / 3600000) - 1) * 3600000;
                    Uri uri = Uri.parse(strZza);
                    Bundle bundle2 = new Bundle();
                    Pair pair = new Pair(uri.getPath(), bundle2);
                    for (String str2 : uri.getQueryParameterNames()) {
                        bundle2.putString(str2, uri.getQueryParameter(str2));
                    }
                    ((Bundle) pair.second).putLong("_cc", jZza);
                    if (pair.first == null) {
                        str = "app";
                    } else {
                        str = (String) pair.first;
                    }
                    this.zza.zzp().zzc(str, "_cmp", (Bundle) pair.second);
                }
                this.zza.zzn().zzr.zza(null);
            }
            this.zza.zzn().zzs.zza(0L);
        }
    }

    final void zzb() {
        if (zzc() && zzd()) {
            this.zza.zzn().zzr.zza(null);
        }
    }

    private final boolean zzc() {
        return this.zza.zzn().zzs.zza() > 0;
    }

    private final boolean zzd() {
        return zzc() && this.zza.zzb().currentTimeMillis() - this.zza.zzn().zzs.zza() > this.zza.zzf().zzc((String) null, zzbn.zzbd);
    }
}
