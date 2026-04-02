package com.example.digitalkiosk.adapters;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.OptionActivity;
import com.example.digitalkiosk.adapters.TableAdapter;
import com.example.digitalkiosk.databinding.TableButtonBinding;
import com.example.digitalkiosk.models.Table;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: TableAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u0017\u0018B)\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\t\u0010\nJ\u0018\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0011H\u0016J\u0018\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0011H\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u0019"}, d2 = {"Lcom/example/digitalkiosk/adapters/TableAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;", "tables", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Table;", "Lkotlin/collections/ArrayList;", "onClickListener", "Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;", "<init>", "(Ljava/util/ArrayList;Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;)V", "binding", "Lcom/example/digitalkiosk/databinding/TableButtonBinding;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "getItemCount", "onBindViewHolder", "", "holder", "position", "ViewHolder", "OnClickListener", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TableAdapter extends RecyclerView.Adapter<ViewHolder> {
    private TableButtonBinding binding;
    private final OnClickListener onClickListener;
    private final ArrayList<Table> tables;

    /* JADX INFO: compiled from: TableAdapter.kt */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, d2 = {"Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;", "", "onClick", "", "table", "Lcom/example/digitalkiosk/models/Table;", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface OnClickListener {
        void onClick(Table table);
    }

    public TableAdapter(ArrayList<Table> tables, OnClickListener onClickListener) {
        Intrinsics.checkNotNullParameter(tables, "tables");
        this.tables = tables;
        this.onClickListener = onClickListener;
    }

    /* JADX INFO: compiled from: TableAdapter.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0016\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/example/digitalkiosk/adapters/TableAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mybinding", "Lcom/example/digitalkiosk/databinding/TableButtonBinding;", "onClickListener", "Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;", "<init>", "(Lcom/example/digitalkiosk/databinding/TableButtonBinding;Lcom/example/digitalkiosk/adapters/TableAdapter$OnClickListener;)V", "bind", "", "table", "Lcom/example/digitalkiosk/models/Table;", "position", "", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final TableButtonBinding mybinding;
        private final OnClickListener onClickListener;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(TableButtonBinding mybinding, OnClickListener onClickListener) {
            super(mybinding.getRoot());
            Intrinsics.checkNotNullParameter(mybinding, "mybinding");
            this.mybinding = mybinding;
            this.onClickListener = onClickListener;
        }

        public final void bind(final Table table, int position) {
            Intrinsics.checkNotNullParameter(table, "table");
            this.mybinding.tableNumber.setText(String.valueOf(table.getTable_number()));
            TableButtonBinding tableButtonBinding = this.mybinding;
            Integer selected_table = OptionActivity.INSTANCE.getSelected_table();
            tableButtonBinding.setSelected(Boolean.valueOf(selected_table != null && selected_table.intValue() == table.getId()));
            this.mybinding.button.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.adapters.TableAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TableAdapter.ViewHolder.bind$lambda$0(this.f$0, table, view);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(ViewHolder viewHolder, Table table, View view) {
            OnClickListener onClickListener = viewHolder.onClickListener;
            if (onClickListener != null) {
                Intrinsics.checkNotNull(onClickListener);
                onClickListener.onClick(table);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.binding = TableButtonBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        TableButtonBinding tableButtonBinding = this.binding;
        if (tableButtonBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            tableButtonBinding = null;
        }
        return new ViewHolder(tableButtonBinding, this.onClickListener);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.tables.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Table table = this.tables.get(position);
        Intrinsics.checkNotNullExpressionValue(table, "get(...)");
        holder.bind(table, position);
    }
}
