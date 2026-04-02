package cn.huidu.lcd.player.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import cn.huidu.lcd.player.R;

/* JADX INFO: loaded from: classes.dex */
public class LoadingFragment extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f423a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f424b;

    public final void a(int i4) {
        if (i4 == 0) {
            this.f423a.setText("");
            return;
        }
        if (i4 == 1) {
            this.f423a.setText(R.string.loading);
            return;
        }
        if (i4 == 2) {
            this.f423a.setText(R.string.loading_program);
            return;
        }
        if (i4 == 3) {
            this.f423a.setText(R.string.scanning_u_disk);
        } else if (i4 == 4) {
            this.f423a.setText(R.string.scanning_sdcard);
        } else {
            if (i4 != 5) {
                return;
            }
            this.f423a.setText(R.string.copying_files);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_loading, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f423a = (TextView) view.findViewById(R.id.txt_loading);
        a(this.f424b);
    }
}
