package cn.huidu.lcd.setting.ui.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.setting.R$id;
import cn.huidu.lcd.setting.R$layout;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SwitchMachineWeekAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f767a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<String> f768b = new ArrayList();

    public static class ViewHolder extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public TextView f769a;

        public ViewHolder(@NonNull View view) {
            super(view);
            this.f769a = (TextView) view.findViewById(R$id.tv_week);
        }
    }

    public SwitchMachineWeekAdapter(Context context) {
        this.f767a = context;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f768b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i4) {
        ((ViewHolder) viewHolder).f769a.setText(this.f768b.get(i4));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    @NonNull
    public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i4) {
        return new ViewHolder(LayoutInflater.from(this.f767a).inflate(R$layout.item_machine_week_layout, viewGroup, false));
    }
}
