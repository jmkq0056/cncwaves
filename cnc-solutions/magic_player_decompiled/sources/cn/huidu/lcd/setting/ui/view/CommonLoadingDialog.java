package cn.huidu.lcd.setting.ui.view;

import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;

/* JADX INFO: loaded from: classes.dex */
public class CommonLoadingDialog extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f914a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f915b;

    public static CommonLoadingDialog a(String str) {
        CommonLoadingDialog commonLoadingDialog = new CommonLoadingDialog();
        Bundle bundle = new Bundle();
        bundle.putString("loadingText", str);
        commonLoadingDialog.setArguments(bundle);
        return commonLoadingDialog;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f914a = arguments.getString("loadingText");
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Window window = getDialog().getWindow();
        if (window != null) {
            window.setSoftInputMode(16);
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(-2, -2);
            window.setFlags(8, 8);
        }
        getDialog().requestWindowFeature(1);
        setCancelable(false);
        return layoutInflater.inflate(R$layout.loading_wifi_connect_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        TextView textView = (TextView) view.findViewById(R$id.loading_text);
        this.f915b = textView;
        textView.setText(this.f914a);
    }
}
