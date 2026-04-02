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
import cn.huidu.lcd.setting.ui.adapter.ItemsListAdapter;
import cn.huidu.lcd.setting.ui.view.ItemsListSelectActivity;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class ItemsListAdapter extends RecyclerView.Adapter<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f747a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<String> f748b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f749c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f750d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b f751e;

    public class a extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public View f752a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public LinearLayout f753b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public TextView f754c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public ImageView f755d;

        public a(ItemsListAdapter itemsListAdapter, View view) {
            super(view);
            this.f752a = view;
            this.f753b = (LinearLayout) view.findViewById(R$id.item_main_view);
            this.f754c = (TextView) view.findViewById(R$id.item_title_text);
            this.f755d = (ImageView) view.findViewById(R$id.item_image);
        }
    }

    public interface b {
    }

    public ItemsListAdapter(Context context, List list) {
        this.f747a = context;
        this.f748b = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f748b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, final int i4) {
        final a aVar = (a) viewHolder;
        aVar.f752a.setFocusable(true);
        aVar.f754c.setText(this.f748b.get(i4));
        aVar.itemView.setOnClickListener(new View.OnClickListener() { // from class: k0.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ItemsListAdapter itemsListAdapter = this.f2040a;
                ((ItemsListSelectActivity) itemsListAdapter.f751e).x(i4);
            }
        });
        aVar.f752a.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: k0.e
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z3) {
                ItemsListAdapter itemsListAdapter = this.f2042a;
                int i5 = i4;
                ItemsListAdapter.a aVar2 = aVar;
                Objects.requireNonNull(itemsListAdapter);
                if (z3) {
                    itemsListAdapter.f750d = i5;
                    i0.c.a(aVar2.f753b, 1.0f, 300L);
                    aVar2.f753b.setBackgroundResource(R$drawable.bg_radius_3399ff);
                    aVar2.f755d.setImageResource(i5 == itemsListAdapter.f749c ? R$drawable.item_selected_white : R$drawable.item_unselected_focus_icon);
                    aVar2.f754c.setTextColor(-1);
                    return;
                }
                i0.c.a(aVar2.f753b, 0.98f, 300L);
                aVar2.f753b.setBackgroundColor(itemsListAdapter.f747a.getResources().getColor(R$color.no_focus_bg_color));
                aVar2.f755d.setImageResource(i5 == itemsListAdapter.f749c ? R$drawable.item_selected_dark : R$drawable.item_unselected_icon);
                aVar2.f754c.setTextColor(itemsListAdapter.f747a.getResources().getColor(R$color.no_focus_left_text_color));
                if (i5 == 0) {
                    aVar2.f753b.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
                } else if (i5 == itemsListAdapter.f748b.size() - 1) {
                    aVar2.f753b.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
                }
            }
        });
        if (i4 == this.f749c) {
            aVar.f752a.requestFocus();
            aVar.f753b.setBackgroundResource(R$drawable.bg_radius_3399ff);
            aVar.f754c.setTextColor(-1);
            aVar.f755d.setImageResource(R$drawable.item_selected_white);
            return;
        }
        aVar.f753b.setScaleX(0.98f);
        aVar.f753b.setBackgroundColor(this.f747a.getResources().getColor(R$color.no_focus_bg_color));
        aVar.f755d.setImageResource(R$drawable.item_unselected_icon);
        aVar.f754c.setTextColor(this.f747a.getResources().getColor(R$color.no_focus_left_text_color));
        if (i4 == 0) {
            aVar.f753b.setBackgroundResource(R$drawable.bg_stroke_radius_top_434343);
        } else if (i4 == this.f748b.size() - 1) {
            aVar.f753b.setBackgroundResource(R$drawable.bg_stroke_radius_bottom_434343);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i4) {
        return new a(this, LayoutInflater.from(this.f747a).inflate(R$layout.item_selected_cell_layout, viewGroup, false));
    }
}
