package cn.huidu.lcd.player.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import cn.huidu.lcd.player.R;

/* JADX INFO: loaded from: classes.dex */
public class ErrorFragment extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ImageView f413a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public TextView f414b;

    public final void a(int i4) {
        switch (i4) {
            case 1:
                this.f413a.setImageResource(R.drawable.no_program);
                this.f414b.setText(R.string.no_program);
                break;
            case 2:
                this.f413a.setImageResource(R.drawable.no_program);
                this.f414b.setText(R.string.program_resource_lost);
                break;
            case 3:
                this.f413a.setImageResource(R.drawable.no_program);
                this.f414b.setText(R.string.media_not_found);
                break;
            case 4:
                this.f413a.setImageResource(R.drawable.no_usb);
                this.f414b.setText(R.string.storage_not_found);
                break;
            case 5:
                this.f413a.setImageResource(R.drawable.no_sdcard);
                this.f414b.setText(R.string.storage_not_found);
                break;
            case 6:
                this.f413a.setImageResource(R.drawable.no_program);
                this.f414b.setText(R.string.permission_denied);
                break;
            case 7:
                this.f413a.setImageResource(R.drawable.device_locked);
                this.f414b.setText(R.string.device_is_locked);
                break;
            case 8:
            default:
                this.f413a.setImageResource(R.drawable.no_program);
                this.f414b.setText(R.string.unknown_error);
                break;
            case 9:
                this.f413a.setImageResource(R.drawable.no_program);
                this.f414b.setText(R.string.copy_program_failed);
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_error, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.f413a = (ImageView) view.findViewById(R.id.error_image);
        this.f414b = (TextView) view.findViewById(R.id.error_text);
        Bundle arguments = getArguments();
        if (arguments != null) {
            a(arguments.getInt("ErrorCode"));
        } else {
            a(0);
        }
    }
}
