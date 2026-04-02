package com.stripe.stripeterminal.internal.common.validators;

import android.content.Context;
import android.os.Build;
import androidx.core.content.ContextCompat;
import com.stripe.stripeterminal.external.models.TerminalErrorCode;
import com.stripe.stripeterminal.external.models.TerminalException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PermissionsValidator.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/stripe/stripeterminal/internal/common/validators/PermissionsValidator;", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "isGranted", "", "permission", "", "validateBluetoothPermissions", "", "validateLocationPermissions", "common_publish"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class PermissionsValidator {
    private final Context context;

    public PermissionsValidator(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    public final void validateLocationPermissions() throws TerminalException {
        boolean zHasSystemFeature = this.context.getPackageManager().hasSystemFeature("android.hardware.location.gps");
        boolean zIsGranted = isGranted("android.permission.ACCESS_COARSE_LOCATION");
        boolean zIsGranted2 = isGranted("android.permission.ACCESS_FINE_LOCATION");
        if ((zHasSystemFeature && !zIsGranted2) || !zIsGranted) {
            throw new TerminalException(TerminalErrorCode.LOCATION_SERVICES_DISABLED, "You must request location permissions before discovering readers", null, null, 12, null);
        }
    }

    public final void validateBluetoothPermissions() throws TerminalException {
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        boolean zIsGranted = isGranted("android.permission.BLUETOOTH_CONNECT");
        boolean zIsGranted2 = isGranted("android.permission.BLUETOOTH_SCAN");
        if (!zIsGranted || !zIsGranted2) {
            throw new TerminalException(TerminalErrorCode.BLUETOOTH_PERMISSION_DENIED, "You must request bluetooth permissions before discovering Bluetooth readers", null, null, 12, null);
        }
    }

    private final boolean isGranted(String permission) {
        return ContextCompat.checkSelfPermission(this.context, permission) == 0;
    }
}
