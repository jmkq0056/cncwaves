.class public Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;
.super Lcom/example/digitalkiosk/databinding/VoucherBinding;
.source "VoucherBindingImpl.java"


# static fields
.field private static final sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final sViewsWithIds:Landroid/util/SparseIntArray;


# instance fields
.field private mDirtyFlags:J

.field private final mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final mboundView2:Landroid/widget/LinearLayout;

.field private final mboundView30:Landroid/widget/LinearLayout;

.field private final mboundView31:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    .line 17
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_code_text:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    sget v1, Lcom/example/digitalkiosk/R$id;->coupon_applied_text:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 19
    sget v1, Lcom/example/digitalkiosk/R$id;->remove_coupon:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 20
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_key_1:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 21
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_key_2:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_key_3:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 23
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_key_4:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_key_5:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_key_6:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 26
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_key_7:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 27
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_key_8:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 28
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_key_9:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_key_0:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget v1, Lcom/example/digitalkiosk/R$id;->capslock_button:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget v1, Lcom/example/digitalkiosk/R$id;->backspace_button:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget v1, Lcom/example/digitalkiosk/R$id;->voucher_warning:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget v1, Lcom/example/digitalkiosk/R$id;->warning_select:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget v1, Lcom/example/digitalkiosk/R$id;->cancel_button:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget v1, Lcom/example/digitalkiosk/R$id;->apply_button:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget v1, Lcom/example/digitalkiosk/R$id;->continue_button:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 53
    sget-object v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->sIncludes:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->sViewsWithIds:Landroid/util/SparseIntArray;

    const/16 v2, 0x34

    invoke-static {p1, p2, v2, v0, v1}, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 52

    const/16 v0, 0x32

    .line 56
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x2e

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x31

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x2d

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x33

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x21

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    const/16 v0, 0x22

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x20

    aget-object v0, p3, v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    const/16 v0, 0x2c

    aget-object v0, p3, v0

    move-object v13, v0

    check-cast v13, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x23

    aget-object v0, p3, v0

    move-object v14, v0

    check-cast v14, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x24

    aget-object v0, p3, v0

    move-object v15, v0

    check-cast v15, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x25

    aget-object v0, p3, v0

    move-object/from16 v16, v0

    check-cast v16, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x26

    aget-object v0, p3, v0

    move-object/from16 v17, v0

    check-cast v17, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x27

    aget-object v0, p3, v0

    move-object/from16 v18, v0

    check-cast v18, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x28

    aget-object v0, p3, v0

    move-object/from16 v19, v0

    check-cast v19, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x29

    aget-object v0, p3, v0

    move-object/from16 v20, v0

    check-cast v20, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x2a

    aget-object v0, p3, v0

    move-object/from16 v21, v0

    check-cast v21, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x2b

    aget-object v0, p3, v0

    move-object/from16 v22, v0

    check-cast v22, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xe

    aget-object v0, p3, v0

    move-object/from16 v23, v0

    check-cast v23, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x1b

    aget-object v0, p3, v0

    move-object/from16 v24, v0

    check-cast v24, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x19

    aget-object v0, p3, v0

    move-object/from16 v25, v0

    check-cast v25, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x10

    aget-object v0, p3, v0

    move-object/from16 v26, v0

    check-cast v26, Landroidx/appcompat/widget/AppCompatButton;

    const/4 v0, 0x6

    aget-object v0, p3, v0

    move-object/from16 v27, v0

    check-cast v27, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x11

    aget-object v0, p3, v0

    move-object/from16 v28, v0

    check-cast v28, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x12

    aget-object v0, p3, v0

    move-object/from16 v29, v0

    check-cast v29, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x13

    aget-object v0, p3, v0

    move-object/from16 v30, v0

    check-cast v30, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xb

    aget-object v0, p3, v0

    move-object/from16 v31, v0

    check-cast v31, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x14

    aget-object v0, p3, v0

    move-object/from16 v32, v0

    check-cast v32, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x15

    aget-object v0, p3, v0

    move-object/from16 v33, v0

    check-cast v33, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x16

    aget-object v0, p3, v0

    move-object/from16 v34, v0

    check-cast v34, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x1d

    aget-object v0, p3, v0

    move-object/from16 v35, v0

    check-cast v35, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x1c

    aget-object v0, p3, v0

    move-object/from16 v36, v0

    check-cast v36, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xc

    aget-object v0, p3, v0

    move-object/from16 v37, v0

    check-cast v37, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xd

    aget-object v0, p3, v0

    move-object/from16 v38, v0

    check-cast v38, Landroidx/appcompat/widget/AppCompatButton;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object/from16 v39, v0

    check-cast v39, Landroidx/appcompat/widget/AppCompatButton;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object/from16 v40, v0

    check-cast v40, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xf

    aget-object v0, p3, v0

    move-object/from16 v41, v0

    check-cast v41, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object/from16 v42, v0

    check-cast v42, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0xa

    aget-object v0, p3, v0

    move-object/from16 v43, v0

    check-cast v43, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x1a

    aget-object v0, p3, v0

    move-object/from16 v44, v0

    check-cast v44, Landroidx/appcompat/widget/AppCompatButton;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object/from16 v45, v0

    check-cast v45, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x18

    aget-object v0, p3, v0

    move-object/from16 v46, v0

    check-cast v46, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x9

    aget-object v0, p3, v0

    move-object/from16 v47, v0

    check-cast v47, Landroidx/appcompat/widget/AppCompatButton;

    const/16 v0, 0x17

    aget-object v0, p3, v0

    move-object/from16 v48, v0

    check-cast v48, Landroidx/appcompat/widget/AppCompatButton;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object/from16 v49, v0

    check-cast v49, Landroid/widget/LinearLayout;

    const/16 v0, 0x2f

    aget-object v0, p3, v0

    move-object/from16 v50, v0

    check-cast v50, Landroid/widget/RelativeLayout;

    const/16 v0, 0x30

    aget-object v0, p3, v0

    move-object/from16 v51, v0

    check-cast v51, Landroid/widget/TextView;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v51}, Lcom/example/digitalkiosk/databinding/VoucherBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V

    const-wide/16 v1, -0x1

    .line 448
    iput-wide v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mDirtyFlags:J

    const/4 v1, 0x0

    .line 106
    aget-object v1, p3, v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mboundView0:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x0

    .line 107
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setTag(Ljava/lang/Object;)V

    const/4 v1, 0x2

    .line 108
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x1e

    .line 110
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mboundView30:Landroid/widget/LinearLayout;

    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    const/16 v1, 0x1f

    .line 112
    aget-object v1, p3, v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mboundView31:Landroid/widget/LinearLayout;

    .line 113
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 114
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherDisplay:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 115
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyA:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 116
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyB:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 117
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyC:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 118
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyD:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 119
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyE:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 120
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyF:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 121
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyG:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 122
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyH:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 123
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyI:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 124
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyJ:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 125
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyK:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 126
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyL:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 127
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyM:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 128
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyN:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyO:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyP:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 131
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyQ:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyR:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyS:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 134
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyT:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 135
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyU:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 136
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyV:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 137
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyW:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 138
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyX:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 139
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyY:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 140
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyZ:Landroidx/appcompat/widget/AppCompatButton;

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/AppCompatButton;->setTag(Ljava/lang/Object;)V

    .line 141
    iget-object v1, v0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyboard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    move-object/from16 v2, p2

    .line 142
    invoke-virtual {v0, v2}, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->setRootTag(Landroid/view/View;)V

    .line 144
    invoke-virtual {v0}, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 46

    move-object/from16 v1, p0

    .line 218
    monitor-enter p0

    .line 219
    :try_start_0
    iget-wide v2, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mDirtyFlags:J

    const-wide/16 v4, 0x0

    .line 220
    iput-wide v4, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mDirtyFlags:J

    .line 221
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mCode:Ljava/lang/String;

    .line 234
    iget-object v6, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mVoucherApplied:Ljava/lang/Boolean;

    .line 244
    iget-object v7, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mCapslock:Ljava/lang/Boolean;

    const-wide/16 v8, 0xa

    and-long v10, v2, v8

    cmp-long v10, v10, v4

    const/4 v11, 0x0

    if-eqz v10, :cond_4

    .line 263
    invoke-static {v6}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v6

    if-eqz v10, :cond_1

    if-eqz v6, :cond_0

    const-wide v12, 0x800000000200L

    goto :goto_0

    :cond_0
    const-wide v12, 0x400000000100L

    :goto_0
    or-long/2addr v2, v12

    :cond_1
    const/16 v10, 0x8

    if-eqz v6, :cond_2

    move v12, v11

    goto :goto_1

    :cond_2
    move v12, v10

    :goto_1
    if-eqz v6, :cond_3

    move v11, v10

    :cond_3
    move v6, v11

    move v11, v12

    goto :goto_2

    :cond_4
    move v6, v11

    :goto_2
    const-wide/16 v12, 0xc

    and-long v14, v2, v12

    cmp-long v10, v14, v4

    if-eqz v10, :cond_21

    .line 286
    invoke-static {v7}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    move-result v7

    if-eqz v10, :cond_6

    if-eqz v7, :cond_5

    const-wide v14, 0xaaa2aaaaaaaa8a0L

    goto :goto_3

    :cond_5
    const-wide v14, 0x555155555555450L

    :goto_3
    or-long/2addr v2, v14

    :cond_6
    if-eqz v7, :cond_7

    .line 348
    const-string v10, "E"

    goto :goto_4

    :cond_7
    const-string v10, "e"

    :goto_4
    if-eqz v7, :cond_8

    .line 350
    const-string v14, "W"

    goto :goto_5

    :cond_8
    const-string v14, "w"

    :goto_5
    if-eqz v7, :cond_9

    .line 352
    const-string v15, "M"

    goto :goto_6

    :cond_9
    const-string v15, "m"

    :goto_6
    if-eqz v7, :cond_a

    .line 354
    const-string v16, "T"

    goto :goto_7

    :cond_a
    const-string v16, "t"

    :goto_7
    if-eqz v7, :cond_b

    .line 356
    const-string v17, "C"

    goto :goto_8

    :cond_b
    const-string v17, "c"

    :goto_8
    if-eqz v7, :cond_c

    .line 358
    const-string v18, "J"

    goto :goto_9

    :cond_c
    const-string v18, "j"

    :goto_9
    if-eqz v7, :cond_d

    .line 360
    const-string v19, "G"

    goto :goto_a

    :cond_d
    const-string v19, "g"

    :goto_a
    if-eqz v7, :cond_e

    .line 362
    const-string v20, "B"

    goto :goto_b

    :cond_e
    const-string v20, "b"

    :goto_b
    if-eqz v7, :cond_f

    .line 364
    const-string v21, "U"

    goto :goto_c

    :cond_f
    const-string v21, "u"

    :goto_c
    if-eqz v7, :cond_10

    .line 366
    const-string v22, "P"

    goto :goto_d

    :cond_10
    const-string v22, "p"

    :goto_d
    if-eqz v7, :cond_11

    .line 368
    const-string v23, "A"

    goto :goto_e

    :cond_11
    const-string v23, "a"

    :goto_e
    if-eqz v7, :cond_12

    .line 370
    const-string v24, "H"

    goto :goto_f

    :cond_12
    const-string v24, "h"

    :goto_f
    if-eqz v7, :cond_13

    .line 372
    const-string v25, "O"

    goto :goto_10

    :cond_13
    const-string v25, "o"

    :goto_10
    if-eqz v7, :cond_14

    .line 374
    const-string v26, "V"

    goto :goto_11

    :cond_14
    const-string v26, "v"

    :goto_11
    if-eqz v7, :cond_15

    .line 376
    const-string v27, "X"

    goto :goto_12

    :cond_15
    const-string v27, "x"

    :goto_12
    if-eqz v7, :cond_16

    .line 378
    const-string v28, "S"

    goto :goto_13

    :cond_16
    const-string v28, "s"

    :goto_13
    if-eqz v7, :cond_17

    .line 380
    const-string v29, "N"

    goto :goto_14

    :cond_17
    const-string v29, "n"

    :goto_14
    if-eqz v7, :cond_18

    .line 382
    const-string v30, "I"

    goto :goto_15

    :cond_18
    const-string v30, "i"

    :goto_15
    if-eqz v7, :cond_19

    .line 384
    const-string v31, "D"

    goto :goto_16

    :cond_19
    const-string v31, "d"

    :goto_16
    if-eqz v7, :cond_1a

    .line 386
    const-string v32, "F"

    goto :goto_17

    :cond_1a
    const-string v32, "f"

    :goto_17
    if-eqz v7, :cond_1b

    .line 388
    const-string v33, "Q"

    goto :goto_18

    :cond_1b
    const-string v33, "q"

    :goto_18
    if-eqz v7, :cond_1c

    .line 390
    const-string v34, "L"

    goto :goto_19

    :cond_1c
    const-string v34, "l"

    :goto_19
    if-eqz v7, :cond_1d

    .line 392
    const-string v35, "Z"

    goto :goto_1a

    :cond_1d
    const-string v35, "z"

    :goto_1a
    if-eqz v7, :cond_1e

    .line 394
    const-string v36, "K"

    goto :goto_1b

    :cond_1e
    const-string v36, "k"

    :goto_1b
    if-eqz v7, :cond_1f

    .line 396
    const-string v37, "R"

    goto :goto_1c

    :cond_1f
    const-string v37, "r"

    :goto_1c
    if-eqz v7, :cond_20

    .line 398
    const-string v7, "Y"

    goto :goto_1d

    :cond_20
    const-string v7, "y"

    :goto_1d
    move-object/from16 v38, v24

    move-object/from16 v24, v7

    move-object/from16 v7, v38

    move-object/from16 v38, v26

    move-object/from16 v39, v27

    move-object/from16 v40, v33

    move-object/from16 v41, v35

    move-object/from16 v42, v37

    move-object/from16 v27, v16

    move-object/from16 v26, v21

    move-object/from16 v43, v25

    move-object/from16 v25, v14

    move-object/from16 v14, v32

    move-object/from16 v32, v15

    move-object/from16 v15, v36

    move-wide/from16 v44, v4

    move-object/from16 v5, v17

    move-wide/from16 v16, v44

    move-object/from16 v4, v34

    move-wide/from16 v44, v8

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-wide/from16 v18, v44

    move-wide/from16 v44, v12

    move-object/from16 v12, v20

    move-wide/from16 v20, v44

    move-object/from16 v13, v30

    move-object/from16 v30, v43

    move-object/from16 v43, v29

    move-object/from16 v29, v22

    move-wide/from16 v44, v2

    move-object/from16 v3, v23

    move-wide/from16 v22, v44

    move-object/from16 v2, v31

    move-object/from16 v31, v43

    goto :goto_1e

    :cond_21
    const/4 v10, 0x0

    move-wide/from16 v22, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v8

    move-object v2, v10

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v9, v8

    move-object v14, v9

    move-object v15, v14

    move-object/from16 v24, v15

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v29, v28

    move-object/from16 v30, v29

    move-object/from16 v31, v30

    move-object/from16 v32, v31

    move-object/from16 v38, v32

    move-object/from16 v39, v38

    move-object/from16 v40, v39

    move-object/from16 v41, v40

    move-object/from16 v42, v41

    move-wide/from16 v20, v12

    move-object/from16 v12, v42

    move-object v13, v12

    :goto_1e
    and-long v18, v22, v18

    cmp-long v18, v18, v16

    if-eqz v18, :cond_22

    move-object/from16 v18, v4

    .line 404
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mboundView2:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mboundView30:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 406
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mboundView31:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 407
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyboard:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1f

    :cond_22
    move-object/from16 v18, v4

    :goto_1f
    const-wide/16 v33, 0x9

    and-long v33, v22, v33

    cmp-long v4, v33, v16

    if-eqz v4, :cond_23

    .line 412
    iget-object v4, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherDisplay:Landroid/widget/TextView;

    invoke-static {v4, v0}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_23
    and-long v19, v22, v20

    cmp-long v0, v19, v16

    if-eqz v0, :cond_24

    .line 417
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyA:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v3}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 418
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyB:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 419
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyC:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v5}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 420
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyD:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v2}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyE:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 422
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyF:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v14}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 423
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyG:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 424
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyH:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 425
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyI:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 426
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyJ:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 427
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyK:Landroidx/appcompat/widget/AppCompatButton;

    invoke-static {v0, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyL:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v18

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyM:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v15, v32

    invoke-static {v0, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyN:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v31

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 431
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyO:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v30

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 432
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyP:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v29

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyQ:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v40

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyR:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v42

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyS:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v28

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyT:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v27

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 437
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyU:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v26

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 438
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyV:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v38

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyW:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v25

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyX:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v39

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 441
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyY:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v7, v24

    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 442
    iget-object v0, v1, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->voucherKeyZ:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 v10, v41

    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    :cond_24
    return-void

    :catchall_0
    move-exception v0

    .line 221
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 159
    monitor-exit p0

    return v0

    .line 161
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 149
    monitor-enter p0

    const-wide/16 v0, 0x8

    .line 150
    :try_start_0
    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mDirtyFlags:J

    .line 151
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    invoke-virtual {p0}, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 151
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCapslock(Ljava/lang/Boolean;)V
    .locals 4

    .line 200
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mCapslock:Ljava/lang/Boolean;

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mDirtyFlags:J

    .line 203
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 204
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->notifyPropertyChanged(I)V

    .line 205
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 203
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 4

    .line 184
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mCode:Ljava/lang/String;

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mDirtyFlags:J

    .line 187
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x8

    .line 188
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->notifyPropertyChanged(I)V

    .line 189
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 187
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 169
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->setCode(Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0x39

    if-ne v0, p1, :cond_1

    .line 172
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->setVoucherApplied(Ljava/lang/Boolean;)V

    return v1

    :cond_1
    const/4 v0, 0x4

    if-ne v0, p1, :cond_2

    .line 175
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p2}, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->setCapslock(Ljava/lang/Boolean;)V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public setVoucherApplied(Ljava/lang/Boolean;)V
    .locals 4

    .line 192
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mVoucherApplied:Ljava/lang/Boolean;

    .line 193
    monitor-enter p0

    .line 194
    :try_start_0
    iget-wide v0, p0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mDirtyFlags:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->mDirtyFlags:J

    .line 195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x39

    .line 196
    invoke-virtual {p0, p1}, Lcom/example/digitalkiosk/databinding/VoucherBindingImpl;->notifyPropertyChanged(I)V

    .line 197
    invoke-super {p0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 195
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
