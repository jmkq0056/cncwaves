package cn.huidu.lcd.setting.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.setting.R$color;
import cn.huidu.lcd.setting.R$drawable;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class LanguageListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f756a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList<HashMap> f757b = new ArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f758c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f759d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public a f760e;

    public interface a {
    }

    public class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f761a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f762b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f763c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ImageView f764d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f765e;

        public b(@NonNull View view) {
            super(view);
            this.f761a = view;
            this.f762b = (LinearLayout) view.findViewById(R$id.item_main_view);
            this.f763c = (TextView) view.findViewById(R$id.item_title_text);
            this.f764d = (ImageView) view.findViewById(R$id.item_image);
            view.setOnClickListener(new w.a(this));
            view.setOnFocusChangeListener(new i0.b(this));
        }

        public final void a(int i4) {
            if (i4 == 0) {
                this.f762b.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
            } else if (i4 == LanguageListAdapter.this.f757b.size() - 1) {
                this.f762b.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
            } else {
                this.f762b.setBackgroundResource(R$color.no_focus_bg_color);
            }
        }
    }

    public LanguageListAdapter(Context context) {
        this.f756a = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f757b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i4) {
        return i4;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i4) {
        if (viewHolder instanceof b) {
            b bVar = (b) viewHolder;
            bVar.f765e = i4;
            bVar.f763c.setText((String) LanguageListAdapter.this.f757b.get(i4).get("ItemText"));
            if (bVar.f765e == LanguageListAdapter.this.f759d) {
                bVar.f761a.requestFocus();
                bVar.f763c.setTextColor(-1);
                bVar.f762b.setBackgroundResource(R$drawable.bg_radius_3399ff);
            } else {
                bVar.f762b.setScaleX(0.98f);
                bVar.a(i4);
                bVar.f764d.setImageResource(bVar.f765e == LanguageListAdapter.this.f758c ? R$drawable.item_selected_dark : R$drawable.item_unselected_icon);
                bVar.f763c.setTextColor(LanguageListAdapter.this.f756a.getResources().getColor(R$color.no_focus_left_text_color));
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i4) {
        return new b(LayoutInflater.from(this.f756a).inflate(R$layout.item_selected_cell_layout, viewGroup, false));
    }
}
