package cn.huidu.lcd.setting.ui.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;

/* JADX INFO: loaded from: classes.dex */
public class HomeAdapter extends RecyclerView.Adapter<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int[] f741a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String[] f742b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public a f743c;

    public interface a {
    }

    public static class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f744a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ViewGroup f745b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public ImageView f746c;

        public b(@NonNull View view) {
            super(view);
            this.f744a = (TextView) view.findViewById(R$id.network_textView);
            this.f745b = (ViewGroup) view.findViewById(R$id.network_mainView);
            this.f746c = (ImageView) view.findViewById(R$id.network_img);
        }
    }

    public HomeAdapter(int[] iArr, String[] strArr) {
        this.f741a = iArr;
        this.f742b = strArr;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        int[] iArr = this.f741a;
        if (iArr == null) {
            return 0;
        }
        return iArr.length;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i4) {
        b bVar = (b) viewHolder;
        int i5 = this.f741a[i4];
        String str = this.f742b[i4];
        a.a.a("onBindViewHolder: bitmap-->", i5, "HomeAdapter");
        bVar.f746c.setImageResource(i5);
        bVar.f744a.setText(str);
        bVar.f745b.setOnClickListener(new c(this, bVar));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i4) {
        return new b(LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.activity_home_lsit, viewGroup, false));
    }
}
