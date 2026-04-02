.class public Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;
.super Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
.source "CoreFoundation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/CoreFoundation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CFNumberRef"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 2

    .line 146
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;-><init>(Lcom/sun/jna/Pointer;)V

    .line 147
    sget-object p1, Lcom/sun/jna/platform/mac/CoreFoundation;->NUMBER_TYPE_ID:Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;->isTypeID(Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unable to cast to CFNumber. Type ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;->getTypeID()Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public byteValue()B
    .locals 3

    .line 215
    new-instance v0, Lcom/sun/jna/ptr/ByteByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/ByteByReference;-><init>()V

    .line 216
    sget-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    sget-object v2, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberCharType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    invoke-virtual {v2}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->typeIndex()Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFNumberGetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;Lcom/sun/jna/ptr/ByReference;)B

    .line 217
    invoke-virtual {v0}, Lcom/sun/jna/ptr/ByteByReference;->getValue()B

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .locals 3

    .line 232
    new-instance v0, Lcom/sun/jna/ptr/DoubleByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/DoubleByReference;-><init>()V

    .line 233
    sget-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    sget-object v2, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberDoubleType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    invoke-virtual {v2}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->typeIndex()Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFNumberGetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;Lcom/sun/jna/ptr/ByReference;)B

    .line 234
    invoke-virtual {v0}, Lcom/sun/jna/ptr/DoubleByReference;->getValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public floatValue()F
    .locals 3

    .line 249
    new-instance v0, Lcom/sun/jna/ptr/FloatByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/FloatByReference;-><init>()V

    .line 250
    sget-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    sget-object v2, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberFloatType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    invoke-virtual {v2}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->typeIndex()Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFNumberGetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;Lcom/sun/jna/ptr/ByReference;)B

    .line 251
    invoke-virtual {v0}, Lcom/sun/jna/ptr/FloatByReference;->getValue()F

    move-result v0

    return v0
.end method

.method public intValue()I
    .locals 3

    .line 181
    new-instance v0, Lcom/sun/jna/ptr/IntByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/IntByReference;-><init>()V

    .line 182
    sget-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    sget-object v2, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberIntType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    invoke-virtual {v2}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->typeIndex()Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFNumberGetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;Lcom/sun/jna/ptr/ByReference;)B

    .line 183
    invoke-virtual {v0}, Lcom/sun/jna/ptr/IntByReference;->getValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .locals 3

    .line 164
    new-instance v0, Lcom/sun/jna/ptr/LongByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/LongByReference;-><init>()V

    .line 165
    sget-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    sget-object v2, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberLongLongType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    invoke-virtual {v2}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->typeIndex()Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFNumberGetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;Lcom/sun/jna/ptr/ByReference;)B

    .line 166
    invoke-virtual {v0}, Lcom/sun/jna/ptr/LongByReference;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public shortValue()S
    .locals 3

    .line 198
    new-instance v0, Lcom/sun/jna/ptr/ShortByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/ShortByReference;-><init>()V

    .line 199
    sget-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    sget-object v2, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->kCFNumberShortType:Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;

    invoke-virtual {v2}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberType;->typeIndex()Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;

    move-result-object v2

    invoke-interface {v1, p0, v2, v0}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFNumberGetValue(Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFIndex;Lcom/sun/jna/ptr/ByReference;)B

    .line 200
    invoke-virtual {v0}, Lcom/sun/jna/ptr/ShortByReference;->getValue()S

    move-result v0

    return v0
.end method
