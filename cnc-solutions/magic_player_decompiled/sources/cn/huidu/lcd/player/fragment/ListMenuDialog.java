package cn.huidu.lcd.player.fragment;

import android.app.Dialog;
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
import androidx.recyclerview.widget.RecyclerView;
import cn.huidu.lcd.player.R;
import cn.huidu.lcd.setting.ui.base.BaseLinearLayoutManager;
import cn.huidu.lcd.setting.ui.base.LcdPlayerRecyclerView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListMenuDialog extends DialogFragment {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public TextView f415a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public LcdPlayerRecyclerView f416b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public List<String> f417c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public d f418d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public b f419e;

    public class b extends RecyclerView.Adapter<c> {
        public b(a aVar) {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<String> list = ListMenuDialog.this.f417c;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull RecyclerView.ViewHolder viewHolder, int i4) {
            ((c) viewHolder).f421a.setText(ListMenuDialog.this.f417c.get(i4));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public RecyclerView.ViewHolder onCreateViewHolder(@NonNull ViewGroup viewGroup, int i4) {
            return ListMenuDialog.this.new c(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.list_item_simple_menu, viewGroup, false));
        }
    }

    public class c extends RecyclerView.ViewHolder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f421a;

        public c(@NonNull View view) {
            super(view);
            this.f421a = (TextView) view.findViewById(R.id.tv_item_title);
            view.setOnClickListener(new w.a(this));
        }
    }

    public interface d {
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Dialog dialog = getDialog();
        Window window = dialog.getWindow();
        if (window != null) {
            window.setSoftInputMode(16);
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(-2, -2);
        }
        dialog.requestWindowFeature(1);
        return layoutInflater.inflate(R.layout.dialog_list_menu, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle bundle) {
        ArrayList<String> stringArrayList;
        super.onViewCreated(view, bundle);
        this.f415a = (TextView) view.findViewById(R.id.tv_title);
        LcdPlayerRecyclerView lcdPlayerRecyclerView = (LcdPlayerRecyclerView) view.findViewById(R.id.recycler_view);
        this.f416b = lcdPlayerRecyclerView;
        lcdPlayerRecyclerView.setLayoutManager(new BaseLinearLayoutManager(getContext()));
        String string = null;
        b bVar = new b(null);
        this.f419e = bVar;
        this.f416b.setAdapter(bVar);
        Bundle arguments = getArguments();
        if (arguments != null) {
            string = arguments.getString("title");
            stringArrayList = arguments.getStringArrayList("items");
        } else {
            stringArrayList = null;
        }
        if (string != null) {
            this.f415a.setText(string);
        } else {
            this.f415a.setText("");
        }
        if (stringArrayList != null) {
            this.f417c = stringArrayList;
        } else {
            this.f417c = new ArrayList();
        }
        this.f419e.notifyDataSetChanged();
    }
}
