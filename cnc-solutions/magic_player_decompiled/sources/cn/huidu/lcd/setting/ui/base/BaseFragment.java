package cn.huidu.lcd.setting.ui.base;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseFragment extends Fragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Activity f831a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f832b;

    public <T extends View> T a(@IdRes int i4) {
        return (T) this.f832b.findViewById(i4);
    }

    public void b() {
    }

    public void c(@Nullable Bundle bundle, @NonNull View view) {
    }

    public abstract Object d();

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        this.f831a = getActivity();
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Object objD = d();
        if (objD == null) {
            throw new RuntimeException("setLayout() must be override.");
        }
        if (objD instanceof Integer) {
            this.f832b = layoutInflater.inflate(((Integer) objD).intValue(), viewGroup, false);
        } else {
            if (!(objD instanceof View)) {
                throw new ClassCastException("type of setLayout() must be int or View!");
            }
            this.f832b = (View) objD;
        }
        b();
        c(bundle, this.f832b);
        return this.f832b;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f831a = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z3) {
        super.onHiddenChanged(z3);
    }
}
