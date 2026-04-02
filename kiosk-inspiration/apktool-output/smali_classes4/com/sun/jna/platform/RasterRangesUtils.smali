.class public Lcom/sun/jna/platform/RasterRangesUtils;
.super Ljava/lang/Object;
.source "RasterRangesUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/RasterRangesUtils$RangesOutput;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final subColMasks:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    .line 53
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/jna/platform/RasterRangesUtils;->subColMasks:[I

    .line 58
    new-instance v0, Lcom/sun/jna/platform/RasterRangesUtils$1;

    invoke-direct {v0}, Lcom/sun/jna/platform/RasterRangesUtils$1;-><init>()V

    sput-object v0, Lcom/sun/jna/platform/RasterRangesUtils;->COMPARATOR:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 4
        0x80
        0x40
        0x20
        0x10
        0x8
        0x4
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static mergeRects(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/awt/Rectangle;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/awt/Rectangle;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/awt/Rectangle;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 245
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    .line 246
    new-array v2, v1, [Ljava/awt/Rectangle;

    invoke-interface {p0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/awt/Rectangle;

    .line 247
    new-array v2, v1, [Ljava/awt/Rectangle;

    invoke-interface {p1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/awt/Rectangle;

    move v2, v1

    .line 250
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_3

    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 251
    :cond_0
    aget-object v3, p1, v2

    iget v3, v3, Ljava/awt/Rectangle;->x:I

    aget-object v4, p0, v1

    iget v4, v4, Ljava/awt/Rectangle;->x:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 252
    array-length v3, p1

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 256
    :cond_1
    aget-object v3, p1, v2

    iget v3, v3, Ljava/awt/Rectangle;->x:I

    aget-object v4, p0, v1

    iget v4, v4, Ljava/awt/Rectangle;->x:I

    if-ne v3, v4, :cond_2

    aget-object v3, p1, v2

    iget v3, v3, Ljava/awt/Rectangle;->width:I

    aget-object v4, p0, v1

    iget v4, v4, Ljava/awt/Rectangle;->width:I

    if-ne v3, v4, :cond_2

    .line 257
    aget-object v3, p0, v1

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 258
    aget-object v3, p1, v2

    aget-object v4, p0, v1

    iget v4, v4, Ljava/awt/Rectangle;->y:I

    iput v4, v3, Ljava/awt/Rectangle;->y:I

    .line 259
    aget-object v3, p1, v2

    aget-object v4, p0, v1

    iget v4, v4, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static outputOccupiedRanges(Ljava/awt/image/Raster;Lcom/sun/jna/platform/RasterRangesUtils$RangesOutput;)Z
    .locals 13

    .line 89
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v0

    .line 90
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 94
    :goto_0
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getParent()Ljava/awt/image/Raster;

    move-result-object v3

    const/high16 v5, -0x1000000

    const v6, 0xffffff

    if-nez v3, :cond_3

    iget v3, v0, Ljava/awt/Rectangle;->x:I

    if-nez v3, :cond_3

    iget v3, v0, Ljava/awt/Rectangle;->y:I

    if-nez v3, :cond_3

    .line 97
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v3

    .line 98
    invoke-virtual {v3}, Ljava/awt/image/DataBuffer;->getNumBanks()I

    move-result v7

    if-ne v7, v4, :cond_3

    .line 101
    instance-of v7, v1, Ljava/awt/image/MultiPixelPackedSampleModel;

    if-eqz v7, :cond_1

    .line 102
    check-cast v1, Ljava/awt/image/MultiPixelPackedSampleModel;

    .line 103
    invoke-virtual {v1}, Ljava/awt/image/MultiPixelPackedSampleModel;->getPixelBitStride()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 105
    check-cast v3, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v3}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object p0

    iget v1, v0, Ljava/awt/Rectangle;->width:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    invoke-static {p0, v1, v0, p1}, Lcom/sun/jna/platform/RasterRangesUtils;->outputOccupiedRangesOfBinaryPixels([BIILcom/sun/jna/platform/RasterRangesUtils$RangesOutput;)Z

    move-result p0

    return p0

    .line 107
    :cond_1
    instance-of v4, v1, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v4, :cond_3

    .line 108
    invoke-virtual {v1}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 110
    check-cast v3, Ljava/awt/image/DataBufferInt;

    invoke-virtual {v3}, Ljava/awt/image/DataBufferInt;->getData()[I

    move-result-object p0

    iget v1, v0, Ljava/awt/Rectangle;->width:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-static {p0, v1, v0, v5, p1}, Lcom/sun/jna/platform/RasterRangesUtils;->outputOccupiedRanges([IIIILcom/sun/jna/platform/RasterRangesUtils$RangesOutput;)Z

    move-result p0

    return p0

    .line 118
    :cond_3
    iget v10, v0, Ljava/awt/Rectangle;->width:I

    iget v11, v0, Ljava/awt/Rectangle;->height:I

    const/4 v12, 0x0

    move-object v1, v12

    check-cast v1, [I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object p0

    .line 119
    iget v1, v0, Ljava/awt/Rectangle;->width:I

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    invoke-static {p0, v1, v0, v5, p1}, Lcom/sun/jna/platform/RasterRangesUtils;->outputOccupiedRanges([IIIILcom/sun/jna/platform/RasterRangesUtils$RangesOutput;)Z

    move-result p0

    return p0
.end method

.method public static outputOccupiedRanges([IIIILcom/sun/jna/platform/RasterRangesUtils$RangesOutput;)Z
    .locals 13

    .line 204
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 205
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, p2, :cond_4

    .line 207
    new-instance v6, Ljava/util/TreeSet;

    sget-object v7, Lcom/sun/jna/platform/RasterRangesUtils;->COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v6, v7}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    mul-int v7, v3, p1

    const/4 v8, -0x1

    move v9, v2

    move v10, v8

    :goto_1
    if-ge v9, p1, :cond_2

    add-int v11, v7, v9

    .line 212
    aget v11, p0, v11

    and-int v11, v11, p3

    if-eqz v11, :cond_0

    if-gez v10, :cond_1

    move v10, v9

    goto :goto_2

    :cond_0
    if-ltz v10, :cond_1

    .line 219
    new-instance v11, Ljava/awt/Rectangle;

    sub-int v12, v9, v10

    invoke-direct {v11, v10, v3, v12, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-interface {v6, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v10, v8

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    if-ltz v10, :cond_3

    .line 226
    new-instance v7, Ljava/awt/Rectangle;

    sub-int v8, p1, v10

    invoke-direct {v7, v10, v3, v8, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_3
    invoke-static {v1, v6}, Lcom/sun/jna/platform/RasterRangesUtils;->mergeRects(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 229
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    move-object v1, v6

    goto :goto_0

    .line 233
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 234
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 235
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/awt/Rectangle;

    .line 236
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget v3, p1, Ljava/awt/Rectangle;->width:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    move-object/from16 v5, p4

    invoke-interface {v5, v0, v1, v3, p1}, Lcom/sun/jna/platform/RasterRangesUtils$RangesOutput;->outputRange(IIII)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_6
    return v4
.end method

.method public static outputOccupiedRangesOfBinaryPixels([BIILcom/sun/jna/platform/RasterRangesUtils$RangesOutput;)Z
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 131
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 133
    array-length v4, v0

    div-int/2addr v4, v1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v6, v1, :cond_8

    .line 135
    new-instance v8, Ljava/util/TreeSet;

    sget-object v9, Lcom/sun/jna/platform/RasterRangesUtils;->COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v8, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    mul-int v9, v6, v4

    const/4 v11, 0x0

    const/4 v12, -0x1

    :goto_1
    if-ge v11, v4, :cond_6

    shl-int/lit8 v13, v11, 0x3

    add-int v14, v9, v11

    .line 141
    aget-byte v14, v0, v14

    if-nez v14, :cond_0

    if-ltz v12, :cond_1

    .line 146
    new-instance v14, Ljava/awt/Rectangle;

    sub-int/2addr v13, v12

    invoke-direct {v14, v12, v6, v13, v7}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-interface {v8, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v12, -0x1

    goto :goto_2

    :cond_0
    const/16 v15, 0xff

    if-ne v14, v15, :cond_2

    if-gez v12, :cond_1

    move v12, v13

    :cond_1
    :goto_2
    const/16 v16, 0x0

    goto :goto_5

    :cond_2
    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_3
    const/16 v5, 0x8

    if-ge v15, v5, :cond_5

    or-int v5, v13, v15

    .line 159
    sget-object v17, Lcom/sun/jna/platform/RasterRangesUtils;->subColMasks:[I

    aget v17, v17, v15

    and-int v17, v14, v17

    if-eqz v17, :cond_3

    if-gez v12, :cond_4

    move v12, v5

    goto :goto_4

    :cond_3
    if-ltz v12, :cond_4

    .line 167
    new-instance v10, Ljava/awt/Rectangle;

    sub-int/2addr v5, v12

    invoke-direct {v10, v12, v6, v5, v7}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v12, -0x1

    :cond_4
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    const/16 v16, 0x0

    if-ltz v12, :cond_7

    .line 176
    new-instance v5, Ljava/awt/Rectangle;

    sub-int v9, p1, v12

    invoke-direct {v5, v12, v6, v9, v7}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_7
    invoke-static {v3, v8}, Lcom/sun/jna/platform/RasterRangesUtils;->mergeRects(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 179
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v6, v6, 0x1

    move-object v3, v8

    goto :goto_0

    :cond_8
    const/16 v16, 0x0

    .line 183
    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 184
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/Rectangle;

    .line 186
    iget v2, v1, Ljava/awt/Rectangle;->x:I

    iget v3, v1, Ljava/awt/Rectangle;->y:I

    iget v4, v1, Ljava/awt/Rectangle;->width:I

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    move-object/from16 v5, p3

    invoke-interface {v5, v2, v3, v4, v1}, Lcom/sun/jna/platform/RasterRangesUtils$RangesOutput;->outputRange(IIII)Z

    move-result v1

    if-nez v1, :cond_9

    return v16

    :cond_a
    return v7
.end method
