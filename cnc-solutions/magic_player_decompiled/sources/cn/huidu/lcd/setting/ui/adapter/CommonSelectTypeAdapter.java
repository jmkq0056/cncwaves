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

/* JADX INFO: loaded from: classes.dex */
public class CommonSelectTypeAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f731b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f733d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ArrayList<o.b> f732c = new ArrayList<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f734e = 0;

    public interface a {
        void e(o.b bVar);
    }

    public class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f735a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f736b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f737c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ImageView f738d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public o.b f739e;

        public b(View view) {
            super(view);
            this.f735a = view;
            this.f736b = (LinearLayout) view.findViewById(R$id.item_main_view);
            this.f737c = (TextView) view.findViewById(R$id.item_title_text);
            this.f738d = (ImageView) view.findViewById(R$id.item_image);
            view.setOnClickListener(new w.a(this));
            view.setOnFocusChangeListener(new i0.b(this));
        }
    }

    public CommonSelectTypeAdapter(Context context) {
        this.f730a = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f732c.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i4) {
        return i4;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        return this.f734e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i4) {
        if (viewHolder instanceof b) {
            b bVar = (b) viewHolder;
            o.b bVar2 = this.f732c.get(i4);
            bVar.f739e = bVar2;
            int i5 = CommonSelectTypeAdapter.this.f734e;
            if (i5 == 0) {
                bVar.f737c.setText(bVar.f739e.f2811d + "," + bVar.f739e.f2808a);
            } else if (i5 == 1) {
                bVar.f737c.setText(bVar2.f2808a);
            }
            int iIndexOf = CommonSelectTypeAdapter.this.f732c.indexOf(bVar.f739e);
            if (iIndexOf == CommonSelectTypeAdapter.this.f733d) {
                i0.c.a(bVar.f736b, 1.0f, 300L);
                bVar.f736b.setBackgroundResource(R$drawable.bg_radius_3399ff);
                bVar.f738d.setImageResource(bVar.f739e.f2812e ? R$drawable.item_selected_white : R$drawable.item_unselected_focus_icon);
                bVar.f737c.setTextColor(-1);
                bVar.f735a.requestFocus();
                return;
            }
            bVar.f736b.setScaleX(0.98f);
            bVar.f736b.setBackgroundColor(CommonSelectTypeAdapter.this.f730a.getResources().getColor(R$color.no_focus_bg_color));
            bVar.f738d.setImageResource(bVar.f739e.f2812e ? R$drawable.item_selected_dark : R$drawable.item_unselected_icon);
            bVar.f737c.setTextColor(CommonSelectTypeAdapter.this.f730a.getResources().getColor(R$color.no_focus_left_text_color));
            if (iIndexOf == 0) {
                bVar.f736b.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
            } else if (iIndexOf == CommonSelectTypeAdapter.this.f732c.size() - 1) {
                bVar.f736b.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i4) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f730a);
        if (i4 == 0 || i4 == 1) {
            return new b(layoutInflaterFrom.inflate(R$layout.item_selected_cell_layout, viewGroup, false));
        }
        return null;
    }
}
