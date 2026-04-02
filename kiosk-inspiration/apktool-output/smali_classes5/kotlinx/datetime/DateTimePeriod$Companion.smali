.class public final Lkotlinx/datetime/DateTimePeriod$Companion;
.super Ljava/lang/Object;
.source "DateTimePeriod.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/datetime/DateTimePeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u000f\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0008H\u00c6\u0001\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlinx/datetime/DateTimePeriod$Companion;",
        "",
        "()V",
        "parse",
        "Lkotlinx/datetime/DateTimePeriod;",
        "text",
        "",
        "serializer",
        "Lkotlinx/serialization/KSerializer;",
        "kotlinx-datetime"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/datetime/DateTimePeriod$Companion;-><init>()V

    return-void
.end method

.method private static final parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;
    .locals 3

    .line 239
    new-instance v0, Lkotlinx/datetime/DateTimeFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parse error at char "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/datetime/DateTimeFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final parse$toIntThrowing(JIC)I
    .locals 2

    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    long-to-int p0, p0

    return p0

    .line 325
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " does not fit into an Int, which is required for component \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final parse(Ljava/lang/String;)Lkotlinx/datetime/DateTimePeriod;
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "text"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    move v6, v4

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    move v11, v10

    move v12, v11

    move v13, v12

    const/4 v5, 0x1

    .line 264
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x6

    const/16 v16, 0x1

    const/4 v2, 0x7

    if-lt v3, v14, :cond_3

    if-eqz v4, :cond_2

    if-eq v4, v15, :cond_1

    int-to-long v3, v6

    mul-int/2addr v7, v2

    int-to-long v5, v7

    add-long/2addr v3, v5

    const-wide/32 v5, -0x80000000

    cmp-long v0, v5, v3

    if-gtz v0, :cond_0

    const-wide/32 v5, 0x7fffffff

    cmp-long v0, v3, v5

    if-gtz v0, :cond_0

    long-to-int v0, v3

    int-to-long v14, v10

    move v10, v0

    .line 273
    invoke-static/range {v8 .. v15}, Lkotlinx/datetime/DateTimePeriodKt;->DateTimePeriod(IIIIIIJ)Lkotlinx/datetime/DateTimePeriod;

    move-result-object v0

    return-object v0

    .line 271
    :cond_0
    const-string v0, "The total number of days under \'D\' and \'W\' designators should fit into an Int"

    invoke-static {v0, v1}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 268
    :cond_1
    const-string v0, "Unexpected end of input; at least one time component is required after \'T\'"

    invoke-static {v0, v3}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 266
    :cond_2
    const-string v0, "Unexpected end of input; \'P\' designator is required"

    invoke-static {v0, v3}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_3
    const/16 v1, 0x2b

    const/16 v2, 0x2d

    if-nez v4, :cond_b

    add-int/lit8 v4, v3, 0x1

    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v4, v15, :cond_5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v1, :cond_4

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-eq v15, v2, :cond_4

    goto :goto_1

    .line 277
    :cond_4
    const-string v0, "Unexpected end of string; \'P\' designator is required"

    invoke-static {v0, v3}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 278
    :cond_5
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v14, 0x50

    if-ne v15, v1, :cond_6

    goto :goto_2

    :cond_6
    if-ne v15, v2, :cond_9

    .line 280
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_7

    const/4 v5, -0x1

    .line 282
    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v14, :cond_8

    add-int/lit8 v3, v3, 0x2

    goto :goto_3

    .line 283
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'P\', got \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_9
    if-ne v15, v14, :cond_a

    move v3, v4

    :goto_3
    move/from16 v4, v16

    :goto_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 287
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'+\', \'-\', \'P\', got \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 294
    :cond_b
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-ne v14, v1, :cond_c

    goto :goto_5

    :cond_c
    if-ne v14, v2, :cond_f

    .line 296
    :goto_5
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_d

    mul-int/lit8 v1, v5, -0x1

    goto :goto_6

    :cond_d
    move v1, v5

    :goto_6
    add-int/lit8 v2, v3, 0x1

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v2, v14, :cond_e

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-gt v15, v14, :cond_e

    const/16 v15, 0x3a

    if-ge v14, v15, :cond_e

    goto :goto_8

    .line 299
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "A number expected after \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_f
    move v1, v15

    if-gt v1, v14, :cond_10

    const/16 v15, 0x3a

    if-ge v14, v15, :cond_10

    goto :goto_7

    :cond_10
    const/16 v1, 0x54

    if-ne v14, v1, :cond_12

    const/4 v1, 0x6

    if-ge v4, v1, :cond_11

    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x6

    goto/16 :goto_0

    .line 304
    :cond_11
    const-string v0, "Only one \'T\' designator is allowed"

    invoke-static {v0, v3}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_12
    :goto_7
    move v2, v3

    move v1, v5

    :goto_8
    const-wide/16 v14, 0x0

    move/from16 v17, v5

    .line 311
    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_13

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v19, v6

    const/16 v6, 0x30

    if-gt v6, v5, :cond_14

    move/from16 v18, v6

    const/16 v6, 0x3a

    if-ge v5, v6, :cond_14

    const-wide/16 v5, 0xa

    .line 313
    :try_start_0
    invoke-static {v14, v15, v5, v6}, Lkotlinx/datetime/internal/MathJvmKt;->safeMultiply(JJ)J

    move-result-wide v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v14

    add-int/lit8 v14, v14, -0x30

    int-to-long v14, v14

    invoke-static {v5, v6, v14, v15}, Lkotlinx/datetime/internal/MathJvmKt;->safeAdd(JJ)J

    move-result-wide v14
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v19

    goto :goto_9

    .line 315
    :catch_0
    const-string v0, "The number is too large"

    invoke-static {v0, v3}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_13
    move/from16 v19, v6

    :cond_14
    int-to-long v5, v1

    mul-long/2addr v14, v5

    .line 320
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "Expected a designator after the numerical value"

    if-eq v2, v5, :cond_2a

    .line 328
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    move/from16 v20, v1

    const/16 v1, 0x59

    move/from16 v21, v7

    .line 329
    const-string v7, "Wrong component order: should be \'Y\', \'M\', \'W\', \'D\', then designator \'T\', then \'H\', \'M\', \'S\'"

    if-ne v5, v1, :cond_16

    const/4 v5, 0x2

    if-ge v4, v5, :cond_15

    .line 333
    invoke-static {v14, v15, v3, v1}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$toIntThrowing(JIC)I

    move-result v1

    move v8, v1

    move v4, v5

    :goto_a
    move/from16 v6, v19

    :goto_b
    move/from16 v7, v21

    goto/16 :goto_e

    .line 331
    :cond_15
    invoke-static {v7, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_16
    const/16 v1, 0x4d

    if-ne v5, v1, :cond_1a

    const/4 v1, 0x6

    if-lt v4, v1, :cond_18

    const/16 v1, 0x8

    if-ge v4, v1, :cond_17

    const/16 v5, 0x4d

    .line 341
    invoke-static {v14, v15, v3, v5}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$toIntThrowing(JIC)I

    move-result v3

    move v4, v1

    move v12, v3

    goto :goto_a

    .line 339
    :cond_17
    invoke-static {v7, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_18
    const/16 v5, 0x4d

    const/4 v1, 0x3

    if-ge v4, v1, :cond_19

    .line 347
    invoke-static {v14, v15, v3, v5}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$toIntThrowing(JIC)I

    move-result v3

    move v4, v1

    move v9, v3

    goto :goto_a

    .line 345
    :cond_19
    invoke-static {v7, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1a
    const/16 v1, 0x57

    if-ne v5, v1, :cond_1c

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1b

    .line 354
    invoke-static {v14, v15, v3, v1}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$toIntThrowing(JIC)I

    move-result v1

    move v7, v1

    move v4, v5

    move/from16 v6, v19

    goto/16 :goto_e

    .line 352
    :cond_1b
    invoke-static {v7, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1c
    const/16 v1, 0x44

    if-ne v5, v1, :cond_1e

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1d

    .line 360
    invoke-static {v14, v15, v3, v1}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$toIntThrowing(JIC)I

    move-result v1

    move v6, v1

    move v4, v5

    goto :goto_b

    .line 358
    :cond_1d
    invoke-static {v7, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_1e
    const/16 v1, 0x48

    if-ne v5, v1, :cond_20

    const/4 v1, 0x7

    if-ge v4, v1, :cond_1f

    const/4 v5, 0x6

    if-lt v4, v5, :cond_1f

    const/16 v4, 0x48

    .line 366
    invoke-static {v14, v15, v3, v4}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$toIntThrowing(JIC)I

    move-result v3

    move v4, v1

    move v11, v3

    goto/16 :goto_a

    .line 364
    :cond_1f
    invoke-static {v7, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_20
    const/16 v1, 0x53

    const/16 v13, 0x9

    if-ne v5, v1, :cond_22

    if-ge v4, v13, :cond_21

    const/4 v5, 0x6

    if-lt v4, v5, :cond_21

    .line 372
    invoke-static {v14, v15, v3, v1}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$toIntThrowing(JIC)I

    move-result v1

    move v4, v13

    move/from16 v6, v19

    move/from16 v7, v21

    move v13, v1

    goto/16 :goto_e

    .line 370
    :cond_21
    invoke-static {v7, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    :cond_22
    const/16 v10, 0x2e

    if-ne v5, v10, :cond_23

    goto :goto_c

    :cond_23
    const/16 v10, 0x2c

    if-ne v5, v10, :cond_29

    :goto_c
    add-int/lit8 v5, v2, 0x1

    .line 376
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_28

    move v2, v5

    .line 379
    :goto_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_24

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v10, 0x30

    if-gt v10, v6, :cond_24

    const/16 v10, 0x3a

    if-ge v6, v10, :cond_24

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_24
    sub-int v6, v2, v5

    if-gt v6, v13, :cond_27

    .line 384
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v13, "substring(...)"

    invoke-static {v5, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "0"

    check-cast v10, Ljava/lang/CharSequence;

    rsub-int/lit8 v6, v6, 0x9

    invoke-static {v10, v6}, Lkotlin/text/StringsKt;->repeat(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    .line 385
    invoke-static {v6}, Lkotlin/text/CharsKt;->checkRadix(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    mul-int v5, v5, v20

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_26

    const/16 v6, 0x9

    if-ge v4, v6, :cond_25

    const/4 v10, 0x6

    if-lt v4, v10, :cond_25

    .line 391
    invoke-static {v14, v15, v3, v1}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$toIntThrowing(JIC)I

    move-result v1

    move v13, v1

    move v10, v5

    move v4, v6

    goto/16 :goto_a

    :goto_e
    add-int/lit8 v3, v2, 0x1

    move/from16 v5, v17

    goto/16 :goto_4

    .line 389
    :cond_25
    invoke-static {v7, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 387
    :cond_26
    const-string v0, "Expected the \'S\' designator after a fraction"

    invoke-static {v0, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 383
    :cond_27
    const-string v0, "Only the nanosecond fractions of a second are supported"

    invoke-static {v0, v5}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 377
    :cond_28
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Expected designator \'S\' after "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 393
    :cond_29
    invoke-static {v6, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0

    .line 321
    :cond_2a
    invoke-static {v6, v2}, Lkotlinx/datetime/DateTimePeriod$Companion;->parse$parseException(Ljava/lang/String;I)Ljava/lang/Void;

    new-instance v0, Lkotlin/KotlinNothingValueException;

    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v0
.end method

.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lkotlinx/datetime/DateTimePeriod;",
            ">;"
        }
    .end annotation

    .line 195
    sget-object v0, Lkotlinx/datetime/serializers/DateTimePeriodIso8601Serializer;->INSTANCE:Lkotlinx/datetime/serializers/DateTimePeriodIso8601Serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    return-object v0
.end method
