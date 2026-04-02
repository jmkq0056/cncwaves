.class public Lcom/sun/jna/platform/win32/Variant$VARIANT;
.super Lcom/sun/jna/Union;
.source "Variant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Variant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VARIANT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;,
        Lcom/sun/jna/platform/win32/Variant$VARIANT$ByValue;,
        Lcom/sun/jna/platform/win32/Variant$VARIANT$ByReference;
    }
.end annotation


# static fields
.field public static final VARIANT_MISSING:Lcom/sun/jna/platform/win32/Variant$VARIANT;


# instance fields
.field public _variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

.field public decVal:Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 164
    new-instance v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-direct {v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    sput-object v0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->VARIANT_MISSING:Lcom/sun/jna/platform/win32/Variant$VARIANT;

    .line 165
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$SCODE;

    const-wide/32 v2, -0x7ffdfffc

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$SCODE;-><init>(J)V

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 172
    invoke-direct {p0}, Lcom/sun/jna/Union;-><init>()V

    .line 173
    const-string v0, "_variant"

    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setType(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->read()V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 3

    .line 218
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$BYTE;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$BYTE;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Lcom/sun/jna/platform/win32/WinDef$BYTE;)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 3

    .line 227
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    .line 228
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$USHORT;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$USHORT;-><init>(J)V

    const/16 p1, 0x12

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/4 v0, 0x5

    .line 263
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 257
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/4 v0, 0x4

    .line 258
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 242
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    .line 243
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$LONG;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$LONG;-><init>(J)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 252
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    .line 253
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$LONGLONG;

    invoke-direct {v0, p1, p2}, Lcom/sun/jna/platform/win32/WinDef$LONGLONG;-><init>(J)V

    const/16 p1, 0x14

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/sun/jna/Union;-><init>(Lcom/sun/jna/Pointer;)V

    .line 179
    const-string p1, "_variant"

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setType(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->read()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/Dispatch;)V
    .locals 1

    .line 297
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/16 v0, 0x9

    .line 298
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/COM/IDispatch;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 292
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/16 v0, 0x9

    .line 293
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$DATE;)V
    .locals 1

    .line 213
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/4 v0, 0x7

    .line 214
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)V
    .locals 0

    .line 307
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    .line 308
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYByReference;)V
    .locals 0

    .line 312
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    .line 313
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYByReference;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;)V
    .locals 1

    .line 194
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/16 v0, 0xb

    .line 195
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WTypes$BSTR;)V
    .locals 1

    .line 184
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/16 v0, 0x8

    .line 185
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WTypes$BSTRByReference;)V
    .locals 1

    .line 189
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/16 v0, 0x4008

    .line 190
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$BOOL;)V
    .locals 0

    .line 199
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$BYTE;)V
    .locals 1

    .line 222
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/16 v0, 0x11

    .line 223
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$CHAR;)V
    .locals 1

    .line 232
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/16 v0, 0x10

    .line 233
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$LONG;)V
    .locals 1

    .line 203
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/4 v0, 0x3

    .line 204
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/platform/win32/WinDef$SHORT;)V
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/4 v0, 0x2

    .line 209
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/ptr/IntByReference;)V
    .locals 1

    .line 247
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    const/16 v0, 0x4016

    .line 248
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 277
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    .line 278
    sget-object v0, Lcom/sun/jna/platform/win32/OleAuto;->INSTANCE:Lcom/sun/jna/platform/win32/OleAuto;

    invoke-interface {v0, p1}, Lcom/sun/jna/platform/win32/OleAuto;->SysAllocString(Ljava/lang/String;)Lcom/sun/jna/platform/win32/WTypes$BSTR;

    move-result-object p1

    const/16 v0, 0x8

    .line 279
    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1

    .line 302
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    .line 303
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$DATE;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/OaIdl$DATE;-><init>(Ljava/util/Date;)V

    const/4 p1, 0x7

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 3

    .line 237
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    .line 238
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$SHORT;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$SHORT;-><init>(J)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 283
    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;-><init>()V

    .line 284
    new-instance v0, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;-><init>(Z)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public booleanValue()Z
    .locals 1

    .line 615
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/OaIdl$VARIANT_BOOL;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public byteValue()B
    .locals 1

    .line 581
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    return v0
.end method

.method public dateValue()Ljava/util/Date;
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/OaIdl$DATE;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 623
    :cond_0
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/OaIdl$DATE;->getAsJavaDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .line 601
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    .line 481
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->read()V

    .line 482
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v0

    .line 483
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_4

    const/16 v2, 0x24

    if-eq v1, v2, :cond_3

    const/16 v2, 0x4000

    if-eq v1, v2, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    and-int/lit16 v1, v0, 0x2000

    if-lez v1, :cond_1

    and-int/2addr v0, v2

    if-lez v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pparray"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "parray"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    .line 565
    :pswitch_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "puintVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 563
    :pswitch_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pintVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 561
    :pswitch_2
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pullVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 517
    :pswitch_3
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pllVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 559
    :pswitch_4
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pulVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 557
    :pswitch_5
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "puiVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 511
    :pswitch_6
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pbVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 555
    :pswitch_7
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pcVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 553
    :pswitch_8
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pdecVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 533
    :pswitch_9
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "ppunkVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 537
    :pswitch_a
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pvarVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 523
    :pswitch_b
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pboolVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 525
    :pswitch_c
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pscode"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 535
    :pswitch_d
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "ppdispVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 531
    :pswitch_e
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pbstrVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 529
    :pswitch_f
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pdate"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 527
    :pswitch_10
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pcyVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 521
    :pswitch_11
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pdblVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 519
    :pswitch_12
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pfltVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 515
    :pswitch_13
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "plVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 513
    :pswitch_14
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "piVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 551
    :pswitch_15
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "uintVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 549
    :pswitch_16
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "intVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 547
    :pswitch_17
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "ullVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 491
    :pswitch_18
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "llVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 545
    :pswitch_19
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "ulVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 543
    :pswitch_1a
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "uiVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 485
    :pswitch_1b
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "bVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 541
    :pswitch_1c
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "cVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 497
    :pswitch_1d
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "boolVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 499
    :pswitch_1e
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "scode"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 509
    :pswitch_1f
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pdispVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 505
    :pswitch_20
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "bstrVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 503
    :pswitch_21
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "date"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 501
    :pswitch_22
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "cyVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 495
    :pswitch_23
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "dblVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 493
    :pswitch_24
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "fltVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 489
    :pswitch_25
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "lVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 487
    :pswitch_26
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "iVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 539
    :cond_2
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "byref"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 567
    :cond_3
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pvRecord"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 507
    :cond_4
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "punkVal"

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->readField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4002
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4010
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->read()V

    .line 318
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->vt:Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    return-object v0
.end method

.method public intValue()I
    .locals 1

    .line 589
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 593
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 1

    .line 326
    new-instance v0, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;-><init>(I)V

    invoke-virtual {p0, v0, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;Ljava/lang/Object;)V

    return-void
.end method

.method public setValue(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;)V
    .locals 1

    .line 330
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v0

    or-int/lit16 v0, v0, 0x2000

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public setValue(Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYByReference;)V
    .locals 1

    .line 334
    iget-object v0, p1, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAYByReference;->pSAFEARRAY:Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/OaIdl$SAFEARRAY$ByReference;->getVarType()Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {p0, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->setValue(ILjava/lang/Object;)V

    return-void
.end method

.method public setValue(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;Ljava/lang/Object;)V
    .locals 3

    .line 338
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    and-int/lit16 v2, v0, 0x2000

    if-lez v2, :cond_4

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pparray"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "parray"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 461
    :pswitch_0
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "puintVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 458
    :pswitch_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pintVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 455
    :pswitch_2
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pullVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 389
    :pswitch_3
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pllVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 452
    :pswitch_4
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pulVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 449
    :pswitch_5
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "puiVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 380
    :pswitch_6
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pbVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 446
    :pswitch_7
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pcVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 443
    :pswitch_8
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pdecVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 413
    :pswitch_9
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "ppunkVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 419
    :pswitch_a
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pvarVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 398
    :pswitch_b
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pboolVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 401
    :pswitch_c
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pscode"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 416
    :pswitch_d
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "ppdispVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 410
    :pswitch_e
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pbstrVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 407
    :pswitch_f
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pdate"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 404
    :pswitch_10
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pcyVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 395
    :pswitch_11
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pdblVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 392
    :pswitch_12
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pfltVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 386
    :pswitch_13
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "plVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 383
    :pswitch_14
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "piVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 440
    :pswitch_15
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "uintVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 437
    :pswitch_16
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "intVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 434
    :pswitch_17
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "ullVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 350
    :pswitch_18
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "llVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 431
    :pswitch_19
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "ulVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 428
    :pswitch_1a
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "uiVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 341
    :pswitch_1b
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "bVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 425
    :pswitch_1c
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "cVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 359
    :pswitch_1d
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "boolVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 362
    :pswitch_1e
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "scode"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 377
    :pswitch_1f
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pdispVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 371
    :pswitch_20
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "bstrVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 368
    :pswitch_21
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "date"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 365
    :pswitch_22
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "cyVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 356
    :pswitch_23
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "dblVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 353
    :pswitch_24
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "fltVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 347
    :pswitch_25
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "lVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 344
    :pswitch_26
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "iVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "byref"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "pvRecord"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    iget-object v0, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->__variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;

    const-string v1, "punkVal"

    invoke-virtual {v0, v1, p2}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT$__VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 476
    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    const-string v0, "vt"

    invoke-virtual {p2, v0, p1}, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->write()V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4002
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x4010
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setVarType(S)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Variant$VARIANT;->_variant:Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;

    new-instance v1, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    invoke-direct {v1, p1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;-><init>(I)V

    iput-object v1, v0, Lcom/sun/jna/platform/win32/Variant$VARIANT$_VARIANT;->vt:Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    return-void
.end method

.method public shortValue()S
    .locals 1

    .line 585
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v0

    return v0
.end method

.method public stringValue()Ljava/lang/String;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Variant$VARIANT;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WTypes$BSTR;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 609
    :cond_0
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$BSTR;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
