package cn.huidu.lcd.setting.ui.adapter;

import android.content.Context;
import android.content.res.Resources;
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
import java.util.List;
import java.util.Objects;
import o.g;

/* JADX INFO: loaded from: classes.dex */
public class WifiListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f790a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public c f792c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f794e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f793d = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<g> f791b = new ArrayList();

    public class a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f795a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f796b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f797c;

        public a(@NonNull View view) {
            super(view);
            this.f795a = view;
            this.f796b = (LinearLayout) view.findViewById(R$id.wifi_add_view);
            this.f797c = (TextView) view.findViewById(R$id.add_wifi_text);
            view.setOnClickListener(new w.a(this));
            view.setOnFocusChangeListener(new i0.b(this));
        }
    }

    public class b extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public g f799a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public View f800b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public LinearLayout f801c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public TextView f802d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f803e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ImageView f804f;

        public b(@NonNull View view) {
            super(view);
            this.f800b = view;
            this.f801c = (LinearLayout) view.findViewById(R$id.wifi_connect_view);
            this.f802d = (TextView) view.findViewById(R$id.wifi_name_text);
            this.f803e = (TextView) view.findViewById(R$id.wifi_state_text);
            this.f804f = (ImageView) view.findViewById(R$id.wifi_level_img);
            view.setOnClickListener(new w.a(this));
            view.setOnFocusChangeListener(new i0.b(this));
        }
    }

    public interface c {
    }

    public class d extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f806a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public g f807b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f808c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public LinearLayout f809d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public TextView f810e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ImageView f811f;

        public d(@NonNull View view) {
            super(view);
            this.f808c = view;
            this.f809d = (LinearLayout) view.findViewById(R$id.wifi_unconnect_view);
            this.f810e = (TextView) view.findViewById(R$id.wifi_name_text);
            this.f811f = (ImageView) view.findViewById(R$id.wifi_level_img);
            view.setOnClickListener(new w.a(this));
            view.setOnFocusChangeListener(new i0.b(this));
        }
    }

    public WifiListAdapter(Context context) {
        this.f790a = context;
    }

    public static int a(WifiListAdapter wifiListAdapter, int i4, boolean z3) {
        Objects.requireNonNull(wifiListAdapter);
        return (i4 > 0 || i4 < -30) ? (i4 >= -30 || i4 < -50) ? (i4 >= -50 || i4 < -70) ? (i4 >= -70 || i4 < -90) ? (i4 >= -90 || i4 < -100) ? z3 ? R$drawable.wifi_white_level1 : R$drawable.wifi_gary_level1 : z3 ? R$drawable.wifi_white_level1 : R$drawable.wifi_gary_level1 : z3 ? R$drawable.wifi_white_level2 : R$drawable.wifi_gary_level2 : z3 ? R$drawable.wifi_white_level3 : R$drawable.wifi_gary_level3 : z3 ? R$drawable.wifi_white_level4 : R$drawable.wifi_gary_level4 : z3 ? R$drawable.wifi_white_level4 : R$drawable.wifi_gary_level4;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f791b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i4) {
        return i4;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i4) {
        if (i4 != 0) {
            return i4 == this.f791b.size() - 1 ? 3 : 2;
        }
        if (this.f791b.size() > 1) {
            return this.f793d ? 1 : 2;
        }
        return 3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i4) {
        if (viewHolder instanceof b) {
            b bVar = (b) viewHolder;
            g gVar = this.f791b.get(i4);
            bVar.f799a = gVar;
            bVar.f802d.setText(gVar.f2840a);
            bVar.f804f.setImageResource(a(WifiListAdapter.this, bVar.f799a.f2841b, false));
            if (WifiListAdapter.this.f791b.indexOf(bVar.f799a) == WifiListAdapter.this.f794e) {
                bVar.f800b.requestFocus();
                return;
            }
            bVar.f801c.setScaleX(0.98f);
            bVar.f801c.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
            TextView textView = bVar.f802d;
            Resources resources = WifiListAdapter.this.f790a.getResources();
            int i5 = R$color.no_focus_left_text_color;
            textView.setTextColor(resources.getColor(i5));
            bVar.f803e.setTextColor(WifiListAdapter.this.f790a.getResources().getColor(i5));
            return;
        }
        if (!(viewHolder instanceof d)) {
            if (viewHolder instanceof a) {
                a aVar = (a) viewHolder;
                Objects.requireNonNull(aVar);
                if (i4 == WifiListAdapter.this.f794e) {
                    aVar.f795a.requestFocus();
                    return;
                }
                aVar.f796b.setScaleX(0.98f);
                if (WifiListAdapter.this.getItemCount() == 1) {
                    aVar.f796b.setBackgroundResource(R$drawable.bg_radius_434343);
                } else {
                    aVar.f796b.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
                }
                aVar.f797c.setTextColor(WifiListAdapter.this.f790a.getResources().getColor(R$color.no_focus_left_text_color));
                return;
            }
            return;
        }
        d dVar = (d) viewHolder;
        dVar.f806a = i4;
        g gVar2 = WifiListAdapter.this.f791b.get(i4);
        dVar.f807b = gVar2;
        dVar.f810e.setText(gVar2.f2840a);
        dVar.f811f.setImageResource(a(WifiListAdapter.this, dVar.f807b.f2841b, false));
        if (dVar.f806a == WifiListAdapter.this.f794e) {
            dVar.f808c.requestFocus();
            return;
        }
        dVar.f809d.setScaleX(0.98f);
        dVar.f809d.setBackgroundColor(WifiListAdapter.this.f790a.getResources().getColor(R$color.no_focus_bg_color));
        dVar.f810e.setTextColor(WifiListAdapter.this.f790a.getResources().getColor(R$color.no_focus_left_text_color));
        if (dVar.f806a == 0) {
            dVar.f809d.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i4) {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f790a);
        if (i4 == 1) {
            return new b(layoutInflaterFrom.inflate(R$layout.wifi_connect_cell_layout, viewGroup, false));
        }
        if (i4 == 2) {
            return new d(layoutInflaterFrom.inflate(R$layout.wifi_unconnect_cell_layout, viewGroup, false));
        }
        if (i4 == 3) {
            return new a(layoutInflaterFrom.inflate(R$layout.wifi_add_cell_layout, viewGroup, false));
        }
        return null;
    }
}
