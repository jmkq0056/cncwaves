package com.example.digitalkiosk.adapters;

import android.content.Context;
import android.os.CountDownTimer;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.example.digitalkiosk.ShopActivity;
import com.example.digitalkiosk.adapters.IngredientAdapter;
import com.example.digitalkiosk.databinding.ItemIngredientBinding;
import com.example.digitalkiosk.models.Extra;
import com.example.digitalkiosk.models.ItemToAdd;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: IngredientAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B3\u0012\u0016\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u000b\u0010\fJ\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\b\u0010\u0014\u001a\u00020\u0013H\u0016J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u0013H\u0016R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\b\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lcom/example/digitalkiosk/adapters/IngredientAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;", "extras", "Ljava/util/ArrayList;", "Lcom/example/digitalkiosk/models/Extra;", "Lkotlin/collections/ArrayList;", "context", "Landroid/content/Context;", "shoptimer", "Landroid/os/CountDownTimer;", "<init>", "(Ljava/util/ArrayList;Landroid/content/Context;Landroid/os/CountDownTimer;)V", "binding", "Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "getItemCount", "onBindViewHolder", "", "holder", "position", "ViewHolder", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class IngredientAdapter extends RecyclerView.Adapter<ViewHolder> {
    private ItemIngredientBinding binding;
    private final Context context;
    private final ArrayList<Extra> extras;
    private final CountDownTimer shoptimer;

    public /* synthetic */ IngredientAdapter(ArrayList arrayList, Context context, CountDownTimer countDownTimer, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(arrayList, context, (i & 4) != 0 ? null : countDownTimer);
    }

    public IngredientAdapter(ArrayList<Extra> extras, Context context, CountDownTimer countDownTimer) {
        Intrinsics.checkNotNullParameter(extras, "extras");
        Intrinsics.checkNotNullParameter(context, "context");
        this.extras = extras;
        this.context = context;
        this.shoptimer = countDownTimer;
    }

    /* JADX INFO: compiled from: IngredientAdapter.kt */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Lcom/example/digitalkiosk/adapters/IngredientAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "mybinding", "Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;", "context", "Landroid/content/Context;", "shoptimer", "Landroid/os/CountDownTimer;", "<init>", "(Lcom/example/digitalkiosk/databinding/ItemIngredientBinding;Landroid/content/Context;Landroid/os/CountDownTimer;)V", "bind", "", "extra", "Lcom/example/digitalkiosk/models/Extra;", "position", "", "ingredientCheck", "app_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        private final Context context;
        private final ItemIngredientBinding mybinding;
        private final CountDownTimer shoptimer;

        public /* synthetic */ ViewHolder(ItemIngredientBinding itemIngredientBinding, Context context, CountDownTimer countDownTimer, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(itemIngredientBinding, context, (i & 4) != 0 ? null : countDownTimer);
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(ItemIngredientBinding mybinding, Context context, CountDownTimer countDownTimer) {
            super(mybinding.getRoot());
            Intrinsics.checkNotNullParameter(mybinding, "mybinding");
            Intrinsics.checkNotNullParameter(context, "context");
            this.mybinding = mybinding;
            this.context = context;
            this.shoptimer = countDownTimer;
        }

        public final void bind(final Extra extra, int position) {
            Intrinsics.checkNotNullParameter(extra, "extra");
            Context context = this.context;
            Intrinsics.checkNotNull(context, "null cannot be cast to non-null type com.example.digitalkiosk.ShopActivity");
            this.mybinding.setExtra(extra);
            this.mybinding.setSelected(false);
            this.mybinding.ingredientButton.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.adapters.IngredientAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    IngredientAdapter.ViewHolder.bind$lambda$0(this.f$0, extra, view);
                }
            });
            this.mybinding.remove.setOnClickListener(new View.OnClickListener() { // from class: com.example.digitalkiosk.adapters.IngredientAdapter$ViewHolder$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.ingredientCheck(extra);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void bind$lambda$0(ViewHolder viewHolder, Extra extra, View view) {
            CountDownTimer countDownTimer = viewHolder.shoptimer;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            CountDownTimer countDownTimer2 = viewHolder.shoptimer;
            if (countDownTimer2 != null) {
                countDownTimer2.start();
            }
            viewHolder.ingredientCheck(extra);
            Log.d("API", String.valueOf(ShopActivity.INSTANCE.getItemToAdd()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void ingredientCheck(Extra extra) {
            Integer num;
            ArrayList<Integer> remove_ingredients;
            ArrayList<Integer> remove_ingredients2;
            ArrayList<Integer> remove_ingredients3;
            Object next;
            ArrayList<Integer> arrayList = null;
            this.mybinding.setSelected(this.mybinding.getSelected() != null ? Boolean.valueOf(!r0.booleanValue()) : null);
            ItemToAdd itemToAdd = ShopActivity.INSTANCE.getItemToAdd();
            if (itemToAdd == null || (remove_ingredients3 = itemToAdd.getRemove_ingredients()) == null) {
                num = null;
            } else {
                Iterator<T> it = remove_ingredients3.iterator();
                while (true) {
                    if (it.hasNext()) {
                        next = it.next();
                        if (((Number) next).intValue() == extra.getId()) {
                            break;
                        }
                    } else {
                        next = null;
                        break;
                    }
                }
                num = (Integer) next;
            }
            if (num != null) {
                ItemToAdd itemToAdd2 = ShopActivity.INSTANCE.getItemToAdd();
                if (itemToAdd2 != null) {
                    ItemToAdd itemToAdd3 = ShopActivity.INSTANCE.getItemToAdd();
                    if (itemToAdd3 != null && (remove_ingredients2 = itemToAdd3.getRemove_ingredients()) != null) {
                        ArrayList arrayList2 = new ArrayList();
                        for (Object obj : remove_ingredients2) {
                            if (((Number) obj).intValue() != extra.getId()) {
                                arrayList2.add(obj);
                            }
                        }
                        arrayList = new ArrayList<>(arrayList2);
                    }
                    itemToAdd2.setRemove_ingredients(arrayList);
                    return;
                }
                return;
            }
            ItemToAdd itemToAdd4 = ShopActivity.INSTANCE.getItemToAdd();
            if (itemToAdd4 == null || (remove_ingredients = itemToAdd4.getRemove_ingredients()) == null) {
                return;
            }
            remove_ingredients.add(Integer.valueOf(extra.getId()));
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        this.binding = ItemIngredientBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        ItemIngredientBinding itemIngredientBinding = this.binding;
        if (itemIngredientBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            itemIngredientBinding = null;
        }
        return new ViewHolder(itemIngredientBinding, this.context, this.shoptimer);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.extras.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        Extra extra = this.extras.get(position);
        Intrinsics.checkNotNullExpressionValue(extra, "get(...)");
        holder.bind(extra, position);
    }
}
