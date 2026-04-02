.class public Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;
.super Lcom/sun/jna/Structure;
.source "Winevt.java"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "field1",
        "Count",
        "Type"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/win32/Winevt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EVT_VARIANT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$ByValue;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$ByReference;,
        Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public Count:I

.field public Type:I

.field public field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

.field private holder:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 164
    const-class v0, Lcom/sun/jna/platform/win32/Winevt;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 220
    sget-object v0, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, v0}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    const/4 v0, 0x0

    .line 224
    sget-object v1, Lcom/sun/jna/win32/W32APITypeMapper;->DEFAULT:Lcom/sun/jna/TypeMapper;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/jna/Structure;-><init>(Lcom/sun/jna/Pointer;ILcom/sun/jna/TypeMapper;)V

    return-void
.end method

.method private getBaseType()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    and-int/lit8 v0, v0, 0x7f

    return v0
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 7

    .line 469
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->getVariantType()Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    move-result-object v0

    .line 470
    sget-object v1, Lcom/sun/jna/platform/win32/Winevt$1;->$SwitchMap$com$sun$jna$platform$win32$Winevt$EVT_VARIANT_TYPE:[I

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 573
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget v3, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "NOT IMPLEMENTED: getValue(%s) (Array: %b, Count: %d)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 551
    :pswitch_1
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getLongArray(JI)[J

    move-result-object v0

    .line 553
    array-length v1, v0

    new-array v3, v1, [Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

    :goto_0
    if-ge v2, v1, :cond_0

    .line 555
    new-instance v4, Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

    aget-wide v5, v0, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;-><init>(J)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3

    .line 559
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getLong(J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/BaseTSD$SIZE_T;-><init>(J)V

    return-object v0

    .line 541
    :pswitch_2
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    const-class v0, Lcom/sun/jna/platform/win32/WinNT$PSID;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinNT$PSID;

    .line 543
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->read()V

    .line 544
    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$PSID;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    return-object v0

    .line 546
    :cond_2
    const-class v0, Lcom/sun/jna/platform/win32/WinNT$PSID;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinNT$PSID;

    .line 547
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinNT$PSID;->read()V

    return-object v0

    .line 531
    :pswitch_3
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 532
    const-class v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    .line 533
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Guid$GUID;->read()V

    .line 534
    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/Guid$GUID;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    return-object v0

    .line 536
    :cond_3
    const-class v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/Guid$GUID;

    .line 537
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Guid$GUID;->read()V

    return-object v0

    .line 498
    :pswitch_4
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 499
    const-class v0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;

    .line 500
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->read()V

    .line 501
    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    return-object v0

    .line 503
    :cond_4
    const-class v0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;

    .line 504
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinBase$SYSTEMTIME;->read()V

    return-object v0

    .line 562
    :pswitch_5
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 563
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getPointerArray(JI)[Lcom/sun/jna/Pointer;

    move-result-object v0

    .line 564
    array-length v1, v0

    new-array v3, v1, [Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    :goto_1
    if-ge v2, v1, :cond_5

    .line 566
    new-instance v4, Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    aget-object v5, v0, v2

    invoke-direct {v4, v5}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;-><init>(Lcom/sun/jna/Pointer;)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-object v3

    .line 570
    :cond_6
    new-instance v0, Lcom/sun/jna/platform/win32/WinNT$HANDLE;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinNT$HANDLE;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v0

    .line 488
    :pswitch_6
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 489
    const-class v0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    move-result-object v0

    check-cast v0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    .line 490
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->read()V

    .line 491
    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v1}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->toArray(I)[Lcom/sun/jna/Structure;

    move-result-object v0

    return-object v0

    .line 493
    :cond_7
    new-instance v0, Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;-><init>(Lcom/sun/jna/Pointer;)V

    .line 494
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinBase$FILETIME;->read()V

    return-object v0

    .line 527
    :pswitch_7
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v0

    return-object v0

    .line 524
    :pswitch_8
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getDoubleArray(JI)[D

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 522
    :pswitch_9
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getFloatArray(JI)[F

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getFloat(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 520
    :pswitch_a
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getLongArray(JI)[J

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getLong(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 516
    :pswitch_b
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getIntArray(JI)[I

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 512
    :pswitch_c
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getShortArray(JI)[S

    move-result-object v0

    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getShort(J)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 509
    :pswitch_d
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object v0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getByte(J)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 486
    :pswitch_e
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getWideStringArray(JI)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getWideString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 474
    :pswitch_f
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 475
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getIntArray(JI)[I

    move-result-object v0

    .line 476
    array-length v1, v0

    new-array v3, v1, [Lcom/sun/jna/platform/win32/WinDef$BOOL;

    :goto_2
    if-ge v2, v1, :cond_f

    .line 478
    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$BOOL;

    aget v5, v0, v2

    int-to-long v5, v5

    invoke-direct {v4, v5, v6}, Lcom/sun/jna/platform/win32/WinDef$BOOL;-><init>(J)V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_f
    return-object v3

    .line 482
    :cond_10
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$BOOL;

    iget-object v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/sun/jna/Pointer;->getInt(J)I

    move-result v1

    int-to-long v1, v1

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/platform/win32/WinDef$BOOL;-><init>(J)V

    return-object v0

    .line 472
    :pswitch_10
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/sun/jna/Pointer;->getStringArray(JI)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getPointer(J)Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/sun/jna/Pointer;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public getVariantType()Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;
    .locals 2

    .line 261
    invoke-static {}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->values()[Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    move-result-object v0

    invoke-direct {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->getBaseType()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isArray()Z
    .locals 2

    .line 257
    iget v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setValue(Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;Ljava/lang/Object;)V
    .locals 8

    .line 272
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->allocateMemory()V

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 277
    const-string v0, "pointerValue"

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    sget-object v2, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeNull:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    if-ne p1, v2, :cond_0

    goto/16 :goto_1

    .line 282
    :cond_0
    sget-object v2, Lcom/sun/jna/platform/win32/Winevt$1;->$SwitchMap$com$sun$jna$platform$win32$Winevt$EVT_VARIANT_TYPE:[I

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "intValue"

    const-wide/16 v4, 0x0

    const-string v6, " must be set from String/String[]"

    const/4 v7, 0x1

    packed-switch v2, :pswitch_data_0

    .line 459
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->isArray()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "NOT IMPLEMENTED: getValue(%s) (Array: %b, Count: %d)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 441
    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    .line 442
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 443
    new-instance v2, Lcom/sun/jna/Memory;

    check-cast p2, [B

    move-object v5, p2

    check-cast v5, [B

    array-length p1, v5

    int-to-long p1, p1

    invoke-direct {v2, p1, p2}, Lcom/sun/jna/Memory;-><init>(J)V

    const/4 v6, 0x0

    .line 444
    array-length v7, v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Memory;->write(J[BII)V

    .line 445
    iput-object v2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 446
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 447
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p1, v0, v2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 449
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be set from byte[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 425
    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_2

    .line 426
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 427
    new-instance v2, Lcom/sun/jna/Memory;

    check-cast p2, [D

    move-object v5, p2

    check-cast v5, [D

    array-length p1, v5

    mul-int/lit8 p1, p1, 0x4

    int-to-long p1, p1

    invoke-direct {v2, p1, p2}, Lcom/sun/jna/Memory;-><init>(J)V

    const/4 v6, 0x0

    .line 428
    array-length v7, v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Memory;->write(J[DII)V

    .line 429
    iput-object v2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 430
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 431
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p1, v0, v2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 432
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_3

    .line 433
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 434
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 435
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    const-string v0, "doubleVal"

    invoke-virtual {p1, v0, p2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 437
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be set from double/double[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 409
    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_4

    .line 410
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 411
    new-instance v2, Lcom/sun/jna/Memory;

    check-cast p2, [F

    move-object v5, p2

    check-cast v5, [F

    array-length p1, v5

    mul-int/lit8 p1, p1, 0x4

    int-to-long p1, p1

    invoke-direct {v2, p1, p2}, Lcom/sun/jna/Memory;-><init>(J)V

    const/4 v6, 0x0

    .line 412
    array-length v7, v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Memory;->write(J[FII)V

    .line 413
    iput-object v2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 414
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 415
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p1, v0, v2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 416
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_5

    .line 417
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 418
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 419
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    const-string v0, "floatValue"

    invoke-virtual {p1, v0, p2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 421
    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be set from float/float[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 393
    :pswitch_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_6

    .line 394
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 395
    new-instance v2, Lcom/sun/jna/Memory;

    check-cast p2, [J

    move-object v5, p2

    check-cast v5, [J

    array-length p1, v5

    mul-int/lit8 p1, p1, 0x4

    int-to-long p1, p1

    invoke-direct {v2, p1, p2}, Lcom/sun/jna/Memory;-><init>(J)V

    const/4 v6, 0x0

    .line 396
    array-length v7, v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Memory;->write(J[JII)V

    .line 397
    iput-object v2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 398
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 399
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p1, v0, v2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 400
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_7

    .line 401
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 402
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 403
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    const-string v0, "longValue"

    invoke-virtual {p1, v0, p2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 405
    :cond_7
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be set from long/long[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 375
    :pswitch_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v4, :cond_8

    .line 376
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 377
    new-instance v2, Lcom/sun/jna/Memory;

    check-cast p2, [I

    move-object v5, p2

    check-cast v5, [I

    array-length p1, v5

    mul-int/lit8 p1, p1, 0x4

    int-to-long p1, p1

    invoke-direct {v2, p1, p2}, Lcom/sun/jna/Memory;-><init>(J)V

    const/4 v6, 0x0

    .line 378
    array-length v7, v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Memory;->write(J[III)V

    .line 379
    iput-object v2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 380
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 381
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p1, v0, v2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 382
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_9

    .line 383
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 384
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 385
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p1, v3, p2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 387
    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be set from int/int[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 357
    :pswitch_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_a

    .line 358
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 359
    new-instance v2, Lcom/sun/jna/Memory;

    check-cast p2, [S

    move-object v5, p2

    check-cast v5, [S

    array-length p1, v5

    mul-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    invoke-direct {v2, p1, p2}, Lcom/sun/jna/Memory;-><init>(J)V

    const/4 v6, 0x0

    .line 360
    array-length v7, v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Memory;->write(J[SII)V

    .line 361
    iput-object v2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 362
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 363
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p1, v0, v2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 364
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_b

    .line 365
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 366
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 367
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    const-string v0, "shortValue"

    invoke-virtual {p1, v0, p2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 369
    :cond_b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be set from short/short[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 340
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_c

    .line 341
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 342
    new-instance v2, Lcom/sun/jna/Memory;

    check-cast p2, [B

    move-object v5, p2

    check-cast v5, [B

    array-length p1, v5

    int-to-long p1, p1

    invoke-direct {v2, p1, p2}, Lcom/sun/jna/Memory;-><init>(J)V

    const/4 v6, 0x0

    .line 343
    array-length v7, v5

    const-wide/16 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/sun/jna/Memory;->write(J[BII)V

    .line 344
    iput-object v2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 345
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 346
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p1, v0, v2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 347
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_d

    .line 348
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 349
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 350
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    const-string v0, "byteValue"

    invoke-virtual {p1, v0, p2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 352
    :cond_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be set from byte/byte[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 321
    :pswitch_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_e

    .line 322
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 323
    new-instance p1, Lcom/sun/jna/StringArray;

    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2, v7}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/String;Z)V

    .line 324
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 325
    array-length p2, p2

    iput p2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 326
    iget-object p2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p2, v0, p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 327
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_f

    .line 328
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 329
    new-instance p1, Lcom/sun/jna/Memory;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v7

    mul-int/lit8 v2, v2, 0x2

    int-to-long v2, v2

    invoke-direct {p1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 330
    invoke-virtual {p1, v4, v5, p2}, Lcom/sun/jna/Memory;->setWideString(JLjava/lang/String;)V

    .line 331
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 332
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 333
    iget-object p2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p2, v0, p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 335
    :cond_f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 302
    :pswitch_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lcom/sun/jna/platform/win32/WinDef$BOOL;

    if-ne v2, v4, :cond_11

    .line 303
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 304
    new-instance p1, Lcom/sun/jna/Memory;

    check-cast p2, [Lcom/sun/jna/platform/win32/WinDef$BOOL;

    check-cast p2, [Lcom/sun/jna/platform/win32/WinDef$BOOL;

    array-length v2, p2

    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    invoke-direct {p1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    move v2, v1

    .line 305
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_10

    mul-int/lit8 v3, v2, 0x4

    int-to-long v3, v3

    .line 306
    aget-object v5, p2, v2

    invoke-virtual {v5}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->intValue()I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/sun/jna/Memory;->setInt(JI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_10
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 309
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 310
    iget-object p2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p2, v0, p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 311
    :cond_11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lcom/sun/jna/platform/win32/WinDef$BOOL;

    if-ne v0, v2, :cond_12

    .line 312
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 313
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 314
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    check-cast p2, Lcom/sun/jna/platform/win32/WinDef$BOOL;

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinDef$BOOL;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 316
    :cond_12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " must be set from BOOL/BOOL[]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 284
    :pswitch_9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_13

    .line 285
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 286
    new-instance p1, Lcom/sun/jna/StringArray;

    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p2, v1}, Lcom/sun/jna/StringArray;-><init>([Ljava/lang/String;Z)V

    .line 287
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 288
    array-length p2, p2

    iput p2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 289
    iget-object p2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p2, v0, p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 290
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_14

    .line 291
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 292
    new-instance p1, Lcom/sun/jna/Memory;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v7

    int-to-long v2, v2

    invoke-direct {p1, v2, v3}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 293
    invoke-virtual {p1, v4, v5, p2}, Lcom/sun/jna/Memory;->setString(JLjava/lang/String;)V

    .line 294
    iput-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->holder:Ljava/lang/Object;

    .line 295
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 296
    iget-object p2, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    invoke-virtual {p2, v0, p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 298
    :cond_14
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 278
    :cond_15
    :goto_1
    sget-object p1, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->EvtVarTypeNull:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT_TYPE;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Type:I

    .line 279
    iput v1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->Count:I

    .line 280
    iget-object p1, p0, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->field1:Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;

    sget-object p2, Lcom/sun/jna/Pointer;->NULL:Lcom/sun/jna/Pointer;

    invoke-virtual {p1, v0, p2}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT$field1_union;->writeField(Ljava/lang/String;Ljava/lang/Object;)V

    .line 462
    :goto_2
    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->write()V

    return-void

    .line 274
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "setValue must not be called with type set to NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public use(Lcom/sun/jna/Pointer;)V
    .locals 1

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, p1, v0}, Lcom/sun/jna/platform/win32/Winevt$EVT_VARIANT;->useMemory(Lcom/sun/jna/Pointer;I)V

    return-void
.end method
