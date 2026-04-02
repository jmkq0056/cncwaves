.class public Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;
.super Lcom/sun/jna/platform/mac/IOKit$IOObject;
.source "IOKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/mac/IOKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IORegistryEntry"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/sun/jna/platform/mac/IOKit$IOObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Pointer;)V
    .locals 0

    .line 146
    invoke-direct {p0, p1}, Lcom/sun/jna/platform/mac/IOKit$IOObject;-><init>(Lcom/sun/jna/Pointer;)V

    return-void
.end method


# virtual methods
.method public createCFProperties()Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;
    .locals 4

    .line 275
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 276
    sget-object v1, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    sget-object v2, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    .line 277
    invoke-interface {v2}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFAllocatorGetDefault()Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;

    move-result-object v2

    const/4 v3, 0x0

    .line 276
    invoke-interface {v1, p0, v0, v2, v3}, Lcom/sun/jna/platform/mac/IOKit;->IORegistryEntryCreateCFProperties(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Lcom/sun/jna/ptr/PointerByReference;Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 281
    new-instance v1, Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFMutableDictionaryRef;-><init>(Lcom/sun/jna/Pointer;)V

    return-object v1

    .line 279
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/mac/IOReturnException;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/mac/IOReturnException;-><init>(I)V

    throw v0
.end method

.method public createCFProperty(Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
    .locals 3

    .line 258
    sget-object v0, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    sget-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    invoke-interface {v1}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFAllocatorGetDefault()Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, p0, p1, v1, v2}, Lcom/sun/jna/platform/mac/IOKit;->IORegistryEntryCreateCFProperty(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;I)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;

    move-result-object p1

    return-object p1
.end method

.method public getBooleanProperty(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    .line 417
    invoke-static {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->createCFString(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;

    move-result-object p1

    .line 418
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;->createCFProperty(Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;

    move-result-object v0

    .line 419
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->release()V

    if-eqz v0, :cond_0

    .line 421
    new-instance p1, Lcom/sun/jna/platform/mac/CoreFoundation$CFBooleanRef;

    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFBooleanRef;-><init>(Lcom/sun/jna/Pointer;)V

    .line 422
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFBooleanRef;->booleanValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 423
    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->release()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getByteArrayProperty(Ljava/lang/String;)[B
    .locals 4

    .line 438
    invoke-static {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->createCFString(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;

    move-result-object p1

    .line 439
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;->createCFProperty(Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;

    move-result-object v0

    .line 440
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->release()V

    if-eqz v0, :cond_0

    .line 442
    new-instance p1, Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;

    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;-><init>(Lcom/sun/jna/Pointer;)V

    .line 443
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;->getLength()I

    move-result v1

    .line 444
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFDataRef;->getBytePtr()Lcom/sun/jna/Pointer;

    move-result-object p1

    const-wide/16 v2, 0x0

    .line 445
    invoke-virtual {p1, v2, v3, v1}, Lcom/sun/jna/Pointer;->getByteArray(JI)[B

    move-result-object p1

    .line 446
    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->release()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildEntry(Ljava/lang/String;)Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;
    .locals 2

    .line 216
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 217
    sget-object v1, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v1, p0, p1, v0}, Lcom/sun/jna/platform/mac/IOKit;->IORegistryEntryGetChildEntry(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;)I

    move-result p1

    const v1, -0x1ffffd40

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 223
    new-instance p1, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;-><init>(Lcom/sun/jna/Pointer;)V

    return-object p1

    .line 221
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/mac/IOReturnException;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/mac/IOReturnException;-><init>(I)V

    throw v0
.end method

.method public getChildIterator(Ljava/lang/String;)Lcom/sun/jna/platform/mac/IOKit$IOIterator;
    .locals 2

    .line 197
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 198
    sget-object v1, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v1, p0, p1, v0}, Lcom/sun/jna/platform/mac/IOKit;->IORegistryEntryGetChildIterator(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;)I

    move-result p1

    if-nez p1, :cond_0

    .line 202
    new-instance p1, Lcom/sun/jna/platform/mac/IOKit$IOIterator;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/mac/IOKit$IOIterator;-><init>(Lcom/sun/jna/Pointer;)V

    return-object p1

    .line 200
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/mac/IOReturnException;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/mac/IOReturnException;-><init>(I)V

    throw v0
.end method

.method public getDoubleProperty(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3

    .line 396
    invoke-static {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->createCFString(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;

    move-result-object p1

    .line 397
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;->createCFProperty(Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;

    move-result-object v0

    .line 398
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->release()V

    if-eqz v0, :cond_0

    .line 400
    new-instance p1, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;

    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;-><init>(Lcom/sun/jna/Pointer;)V

    .line 401
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 402
    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->release()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getIntegerProperty(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .line 370
    invoke-static {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->createCFString(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;

    move-result-object p1

    .line 371
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;->createCFProperty(Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;

    move-result-object v0

    .line 372
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->release()V

    if-eqz v0, :cond_0

    .line 374
    new-instance p1, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;

    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;-><init>(Lcom/sun/jna/Pointer;)V

    .line 375
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 376
    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->release()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLongProperty(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 344
    invoke-static {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->createCFString(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;

    move-result-object p1

    .line 345
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;->createCFProperty(Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;

    move-result-object v0

    .line 346
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->release()V

    if-eqz v0, :cond_0

    .line 348
    new-instance p1, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;

    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;-><init>(Lcom/sun/jna/Pointer;)V

    .line 349
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFNumberRef;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 350
    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->release()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 175
    new-instance v0, Lcom/sun/jna/Memory;

    const-wide/16 v1, 0x80

    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 176
    sget-object v1, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v1, p0, v0}, Lcom/sun/jna/platform/mac/IOKit;->IORegistryEntryGetName(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Lcom/sun/jna/Pointer;)I

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 178
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/mac/IOReturnException;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/mac/IOReturnException;-><init>(I)V

    throw v0
.end method

.method public getParentEntry(Ljava/lang/String;)Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;
    .locals 2

    .line 237
    new-instance v0, Lcom/sun/jna/ptr/PointerByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/PointerByReference;-><init>()V

    .line 238
    sget-object v1, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v1, p0, p1, v0}, Lcom/sun/jna/platform/mac/IOKit;->IORegistryEntryGetParentEntry(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Ljava/lang/String;Lcom/sun/jna/ptr/PointerByReference;)I

    move-result p1

    const v1, -0x1ffffd40

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    .line 244
    new-instance p1, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;

    invoke-virtual {v0}, Lcom/sun/jna/ptr/PointerByReference;->getValue()Lcom/sun/jna/Pointer;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;-><init>(Lcom/sun/jna/Pointer;)V

    return-object p1

    .line 242
    :cond_1
    new-instance v0, Lcom/sun/jna/platform/mac/IOReturnException;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/mac/IOReturnException;-><init>(I)V

    throw v0
.end method

.method public getRegistryEntryID()J
    .locals 2

    .line 158
    new-instance v0, Lcom/sun/jna/ptr/LongByReference;

    invoke-direct {v0}, Lcom/sun/jna/ptr/LongByReference;-><init>()V

    .line 159
    sget-object v1, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    invoke-interface {v1, p0, v0}, Lcom/sun/jna/platform/mac/IOKit;->IORegistryEntryGetRegistryEntryID(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Lcom/sun/jna/ptr/LongByReference;)I

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {v0}, Lcom/sun/jna/ptr/LongByReference;->getValue()J

    move-result-wide v0

    return-wide v0

    .line 161
    :cond_0
    new-instance v0, Lcom/sun/jna/platform/mac/IOReturnException;

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/mac/IOReturnException;-><init>(I)V

    throw v0
.end method

.method public getStringProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 318
    invoke-static {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->createCFString(Ljava/lang/String;)Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;

    move-result-object p1

    .line 319
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;->createCFProperty(Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;

    move-result-object v0

    .line 320
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->release()V

    if-eqz v0, :cond_0

    .line 322
    new-instance p1, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;

    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;-><init>(Lcom/sun/jna/Pointer;)V

    .line 323
    invoke-virtual {p1}, Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;->stringValue()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-virtual {v0}, Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;->release()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method searchCFProperty(Ljava/lang/String;Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;I)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;
    .locals 6

    .line 304
    sget-object v0, Lcom/sun/jna/platform/mac/IOKit;->INSTANCE:Lcom/sun/jna/platform/mac/IOKit;

    sget-object v1, Lcom/sun/jna/platform/mac/CoreFoundation;->INSTANCE:Lcom/sun/jna/platform/mac/CoreFoundation;

    .line 305
    invoke-interface {v1}, Lcom/sun/jna/platform/mac/CoreFoundation;->CFAllocatorGetDefault()Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;

    move-result-object v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .line 304
    invoke-interface/range {v0 .. v5}, Lcom/sun/jna/platform/mac/IOKit;->IORegistryEntrySearchCFProperty(Lcom/sun/jna/platform/mac/IOKit$IORegistryEntry;Ljava/lang/String;Lcom/sun/jna/platform/mac/CoreFoundation$CFStringRef;Lcom/sun/jna/platform/mac/CoreFoundation$CFAllocatorRef;I)Lcom/sun/jna/platform/mac/CoreFoundation$CFTypeRef;

    move-result-object p1

    return-object p1
.end method
