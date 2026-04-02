package n0;

import android.content.DialogInterface;
import android.view.Window;
import androidx.appcompat.app.AlertDialog;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static void a(AlertDialog alertDialog) {
        final Window window = alertDialog.getWindow();
        if (window != null) {
            window.setFlags(8, 8);
        }
        alertDialog.setOnShowListener(new DialogInterface.OnShowListener() { // from class: n0.b
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                Window window2 = window;
                if (window2 != null) {
                    window2.clearFlags(8);
                    window2.getDecorView().setSystemUiVisibility(5894);
                }
            }
        });
        alertDialog.show();
    }
}
