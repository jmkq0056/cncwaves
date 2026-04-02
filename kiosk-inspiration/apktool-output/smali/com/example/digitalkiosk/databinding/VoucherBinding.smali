.class public abstract Lcom/example/digitalkiosk/databinding/VoucherBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "VoucherBinding.java"


# instance fields
.field public final applyButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final backspaceButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final cancelButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final capslockButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final continueButton:Landroidx/appcompat/widget/AppCompatButton;

.field public final couponAppliedText:Landroid/widget/TextView;

.field protected mCapslock:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mCode:Ljava/lang/String;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field protected mVoucherApplied:Ljava/lang/Boolean;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field

.field public final removeCoupon:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherCodeText:Landroid/widget/TextView;

.field public final voucherDisplay:Landroid/widget/TextView;

.field public final voucherKey0:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKey1:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKey2:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKey3:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKey4:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKey5:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKey6:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKey7:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKey8:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKey9:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyA:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyB:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyC:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyD:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyE:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyF:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyG:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyH:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyI:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyJ:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyK:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyL:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyM:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyN:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyO:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyP:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyQ:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyR:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyS:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyT:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyU:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyV:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyW:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyX:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyY:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyZ:Landroidx/appcompat/widget/AppCompatButton;

.field public final voucherKeyboard:Landroid/widget/LinearLayout;

.field public final voucherWarning:Landroid/widget/RelativeLayout;

.field public final warningSelect:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/TextView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroidx/appcompat/widget/AppCompatButton;Landroid/widget/LinearLayout;Landroid/widget/RelativeLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 191
    invoke-direct/range {p0 .. p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 192
    iput-object p4, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->applyButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 193
    iput-object p5, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->backspaceButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 194
    iput-object p6, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->cancelButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 195
    iput-object p7, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->capslockButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 196
    iput-object p8, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->continueButton:Landroidx/appcompat/widget/AppCompatButton;

    .line 197
    iput-object p9, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->couponAppliedText:Landroid/widget/TextView;

    .line 198
    iput-object p10, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->removeCoupon:Landroidx/appcompat/widget/AppCompatButton;

    .line 199
    iput-object p11, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherCodeText:Landroid/widget/TextView;

    .line 200
    iput-object p12, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherDisplay:Landroid/widget/TextView;

    .line 201
    iput-object p13, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey0:Landroidx/appcompat/widget/AppCompatButton;

    .line 202
    iput-object p14, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey1:Landroidx/appcompat/widget/AppCompatButton;

    .line 203
    iput-object p15, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey2:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p16

    .line 204
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey3:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p17

    .line 205
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey4:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p18

    .line 206
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey5:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p19

    .line 207
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey6:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p20

    .line 208
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey7:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p21

    .line 209
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey8:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p22

    .line 210
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKey9:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p23

    .line 211
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyA:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p24

    .line 212
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyB:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p25

    .line 213
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyC:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p26

    .line 214
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyD:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p27

    .line 215
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyE:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p28

    .line 216
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyF:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p29

    .line 217
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyG:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p30

    .line 218
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyH:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p31

    .line 219
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyI:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p32

    .line 220
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyJ:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p33

    .line 221
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyK:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p34

    .line 222
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyL:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p35

    .line 223
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyM:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p36

    .line 224
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyN:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p37

    .line 225
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyO:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p38

    .line 226
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyP:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p39

    .line 227
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyQ:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p40

    .line 228
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyR:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p41

    .line 229
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyS:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p42

    .line 230
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyT:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p43

    .line 231
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyU:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p44

    .line 232
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyV:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p45

    .line 233
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyW:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p46

    .line 234
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyX:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p47

    .line 235
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyY:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p48

    .line 236
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyZ:Landroidx/appcompat/widget/AppCompatButton;

    move-object/from16 p1, p49

    .line 237
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherKeyboard:Landroid/widget/LinearLayout;

    move-object/from16 p1, p50

    .line 238
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->voucherWarning:Landroid/widget/RelativeLayout;

    move-object/from16 p1, p51

    .line 239
    iput-object p1, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->warningSelect:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/example/digitalkiosk/databinding/VoucherBinding;
    .locals 1

    .line 303
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/VoucherBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/VoucherBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    sget v0, Lcom/example/digitalkiosk/R$layout;->voucher:I

    invoke-static {p1, p0, v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/example/digitalkiosk/databinding/VoucherBinding;
    .locals 1

    .line 285
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/VoucherBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/example/digitalkiosk/databinding/VoucherBinding;
    .locals 1

    .line 266
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/example/digitalkiosk/databinding/VoucherBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/VoucherBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/example/digitalkiosk/databinding/VoucherBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 280
    sget v0, Lcom/example/digitalkiosk/R$layout;->voucher:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/example/digitalkiosk/databinding/VoucherBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    sget v0, Lcom/example/digitalkiosk/R$layout;->voucher:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;

    return-object p0
.end method


# virtual methods
.method public getCapslock()Ljava/lang/Boolean;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->mCapslock:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVoucherApplied()Ljava/lang/Boolean;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/example/digitalkiosk/databinding/VoucherBinding;->mVoucherApplied:Ljava/lang/Boolean;

    return-object v0
.end method

.method public abstract setCapslock(Ljava/lang/Boolean;)V
.end method

.method public abstract setCode(Ljava/lang/String;)V
.end method

.method public abstract setVoucherApplied(Ljava/lang/Boolean;)V
.end method
