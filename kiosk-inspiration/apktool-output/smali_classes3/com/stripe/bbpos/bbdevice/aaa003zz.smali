.class Lcom/stripe/bbpos/bbdevice/aaa003zz;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa010zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa007zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa008zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa003zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;,
        Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;
    }
.end annotation


# static fields
.field private static final aaa013:Ljava/lang/Object;

.field static aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz; = null

.field static aaa015:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa008zz; = null

.field static aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz; = null

.field static aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa007zz; = null

.field static aaa018:Lcom/stripe/bbpos/bbdevice/ccc035zz; = null

.field static aaa019:Lcom/stripe/bbpos/bbdevice/ccc036zz; = null

.field static aaa020:Lcom/stripe/bbpos/bbdevice/ccc037zz; = null

.field static aaa021:Z = false


# instance fields
.field final aaa000:Landroid/content/Context;

.field private final aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

.field aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

.field private final aaa003:Lcom/stripe/bbpos/bbdevice/aaa006zz;

.field final aaa004:Lcom/stripe/bbpos/bbdevice/ccc027zz;

.field private final aaa005:Lcom/stripe/bbpos/bbdevice/aaa004zz;

.field aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

.field private aaa007:Ljava/lang/String;

.field private aaa008:Ljava/lang/String;

.field aaa009:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;

.field private final aaa010:Ljava/lang/ClassLoader;

.field aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

.field aaa012:Z


# direct methods
.method public static synthetic $r8$lambda$jzmlPFkAdImnJRXzH4GAKtFBI74(Lcom/stripe/bbpos/bbdevice/aaa003zz;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(ZLjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa013:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;Lcom/stripe/bbpos/bbdevice/ccc066zz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa007:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa008:Ljava/lang/String;

    .line 5
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;->DISPLAY_ONLY:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa009:Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptOption;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa012:Z

    .line 27
    const-class v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa010:Ljava/lang/ClassLoader;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    .line 30
    iput-object p3, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    .line 31
    new-instance p2, Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-direct {p2, p0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    .line 32
    new-instance p2, Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-direct {p2, p1, p0}, Lcom/stripe/bbpos/bbdevice/aaa006zz;-><init>(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/aaa003zz;)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    .line 34
    new-instance p2, Lcom/stripe/bbpos/bbdevice/ccc027zz;

    invoke-direct {p2, p0}, Lcom/stripe/bbpos/bbdevice/ccc027zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc027zz;

    .line 35
    new-instance p2, Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-direct {p2, p1, p0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;-><init>(Landroid/content/Context;Lcom/stripe/bbpos/bbdevice/aaa003zz;)V

    iput-object p2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    .line 36
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V

    .line 37
    const-string p1, "com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController"

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa021:Z

    return-void
.end method

.method static aaa000(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa001(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method private synthetic aaa000(ZLjava/lang/String;)V
    .locals 9

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa010:Ljava/lang/ClassLoader;

    const-string v1, "com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 107
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 108
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 109
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getInstance"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v5, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 111
    filled-new-array {v2, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 112
    const-string v4, "internalFunction1"

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    const-class v3, Ljava/lang/String;

    aput-object v3, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 113
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method static aaa001(Ljava/lang/String;)Ljava/util/Hashtable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    invoke-static {p0}, Lcom/stripe/bbpos/bbdevice/ccc068zz;->aaa002(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p0

    return-object p0
.end method

.method static aaa005(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 9
    array-length v1, v0

    const-string v2, ""

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 10
    check-cast v4, Ljava/lang/String;

    .line 11
    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 16
    invoke-static {v5}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa006(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/stripe/bbpos/bbdevice/ccc034zz;->aaa001(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 24
    :cond_3
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static aaa006(Ljava/lang/String;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private aaa008(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private aaa013()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.stripe.bbpos.powerkey.disable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000:Landroid/content/Context;

    const-string v2, "android.permission.BBPOS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private aaa018()V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_0

    .line 3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.stripe.bbpos.powerkey.enable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000:Landroid/content/Context;

    const-string v2, "android.permission.BBPOS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa001(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private aaa073()V
    .locals 2

    .line 1
    const-string v0, "[powerOffK21]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa008(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa002()Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_6

    goto :goto_0

    .line 14
    :cond_6
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 16
    :cond_7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;

    if-eqz v0, :cond_8

    .line 17
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa012()V

    .line 18
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa003()Z

    :cond_8
    :goto_0
    return-void
.end method

.method private aaa074()V
    .locals 3

    .line 1
    const-string v0, "[powerOnAndResetK21]"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa008(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa003()Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_3

    .line 9
    :try_start_0
    new-instance v0, Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-direct {v0}, Lcom/stripe/bbpos/bbdevice001/ioctrl;-><init>()V

    .line 15
    invoke-virtual {v0, v2}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->P1000PowerOnOff(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 21
    :cond_4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 22
    :cond_5
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_6

    goto :goto_0

    .line 23
    :cond_6
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v0, v1, :cond_7

    goto :goto_0

    .line 25
    :cond_7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa010()V

    .line 27
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa002()Z

    .line 28
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa000()Z

    .line 29
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa004()Z

    .line 30
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa005()Z

    :cond_8
    const/16 v0, 0x3e8

    .line 33
    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V

    .line 36
    :goto_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000()I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 37
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-eqz v0, :cond_9

    .line 38
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006()Z

    .line 39
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006()Z

    .line 40
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006()Z

    .line 41
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006()Z

    .line 42
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006()Z

    .line 43
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa006()Z

    .line 47
    :cond_9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 48
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-eqz v0, :cond_a

    .line 49
    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa000()Z

    .line 52
    :cond_a
    const-string v0, "[powerOnAndResetK21] End"

    invoke-direct {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa008(Ljava/lang/String;)V

    return-void
.end method

.method private aaa086()V
    .locals 3

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa013:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v1

    sget-object v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v1, v2, :cond_1

    .line 3
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc035zz;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/stripe/bbpos/bbdevice/ccc035zz;

    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc035zz;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc035zz;

    .line 7
    :cond_0
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018:Lcom/stripe/bbpos/bbdevice/ccc035zz;

    sget-object v2, Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;->aaa000:Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;

    invoke-virtual {v1, v2}, Lcom/stripe/bbpos/bbdevice/ccc035zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc035zz$aaa001zz;)V

    const/16 v1, 0x1f4

    .line 9
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V

    .line 11
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method declared-synchronized aaa000()V
    .locals 1

    monitor-enter p0

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa000(I)V
    .locals 1

    monitor-enter p0

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa000(IILjava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onHardwareFunctionalTestResult(IILjava/lang/String;)V

    return-void
.end method

.method declared-synchronized aaa000(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa000(IZ)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestPrintData(IZ)V

    return-void
.end method

.method declared-synchronized aaa000(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)V
    .locals 2

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0

    .line 104
    :cond_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa000(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/PipedInputStream;Ljava/lang/Object;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 12

    .line 15
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-virtual/range {v0 .. v11}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/PipedInputStream;Ljava/lang/Object;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/stripe/bbpos/bbdevice/aaa004zz;)V

    return-void
.end method

.method aaa000(Landroid/bluetooth/BluetoothSocket;)V
    .locals 12

    .line 14
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v11}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/PipedInputStream;Ljava/lang/Object;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/stripe/bbpos/bbdevice/aaa004zz;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;I)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnAccountSelectionResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;I)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnAmount(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestOtherAmount(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onBatteryLow(Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onWaitingForCard(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestDisplayLEDIndicator(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestProduceAudioTone(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnDisplayPromptResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$FunctionKey;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnFunctionKey(Lcom/stripe/bbpos/bbdevice/BBDeviceController$FunctionKey;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestManualPanEntry(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->CARD_REMOVED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->TIMEOUT:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;

    if-ne p1, v0, :cond_1

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018()V

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnNfcDetectCardResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method declared-synchronized aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;)V
    .locals 1

    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryOrientation;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestPinEntry(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnAccessiblePINPadTouchEvent(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onPowerDisconnected(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onPowerConnected(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;Ljava/lang/String;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018()V

    .line 55
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onSessionError(Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;Ljava/lang/String;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018()V

    .line 48
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnTransactionResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018()V

    .line 50
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;Ljava/lang/String;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018()V

    .line 81
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnVasResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/CAPK;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnCAPKDetail(Lcom/stripe/bbpos/bbdevice/CAPK;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018()V

    .line 57
    sget-boolean v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa021:Z

    if-eqz v0, :cond_3

    .line 58
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa010:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa008:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    if-ne p1, v0, :cond_1

    .line 60
    :cond_0
    :try_start_0
    const-string v0, "Device error"

    invoke-virtual {p0, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa010(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :catchall_0
    :cond_1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    if-ne p1, v0, :cond_3

    .line 67
    :cond_2
    :try_start_1
    const-string v0, "Device cannot support OTA"

    invoke-virtual {p0, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa010(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :catchall_1
    :cond_3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa006:Z

    .line 74
    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa012:Z

    .line 75
    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa013:Z

    .line 76
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;Ljava/lang/String;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;Ljava/lang/String;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018()V

    .line 32
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa004zz;Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;Ljava/lang/String;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa006zz;Ljava/lang/String;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018()V

    .line 43
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa009zz;Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa011zz;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa013zz;Ljava/lang/String;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;Ljava/lang/String;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;Z)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa012zz;Z)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;)V

    return-void
.end method

.method aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;Ljava/lang/String;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;Ljava/lang/String;)V

    return-void
.end method

.method aaa000(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12

    .line 13
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v0 .. v11}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/PipedInputStream;Ljava/lang/Object;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/stripe/bbpos/bbdevice/aaa004zz;)V

    return-void
.end method

.method aaa000(Ljava/lang/String;I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestDisplayAsterisk(Ljava/lang/String;I)V

    return-void
.end method

.method declared-synchronized aaa000(Ljava/lang/String;IILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa000(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa000(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized aaa000(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa000(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method declared-synchronized aaa000(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa013()V

    .line 91
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa000(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa000(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/CAPK;",
            ">;)V"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnCAPKList(Ljava/util/List;)V

    return-void
.end method

.method aaa000(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-direct {v0}, Lcom/stripe/bbpos/bbdevice001/ioctrl;-><init>()V

    const-string v1, ")"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->P1000BootOnOff(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Set WSC5X bootloader/wakeup pin exception during enter bootloader. (check code - 9069)("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->P1000BootOnOff(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Set WSC5X bootloader/wakeup pin exception during enter bootloader. (check code - 9070)("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method aaa000(ZLcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onDeviceReset(ZLcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;)V

    return-void
.end method

.method aaa000(ZLcom/stripe/bbpos/bbdevice/aaa003zz$aaa010zz;)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(ZLcom/stripe/bbpos/bbdevice/aaa003zz$aaa010zz;)V

    return-void
.end method

.method aaa000(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method aaa000(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(ZLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method aaa000(ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    .line 24
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method aaa000(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(ZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method aaa000(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestVirtuCryptPEDIResponse(ZLjava/util/Hashtable;)V

    return-void
.end method

.method declared-synchronized aaa000([B)V
    .locals 1

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa001([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa001()V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa001()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa001(I)V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa001(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa001(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa001(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa001(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/PipedInputStream;Ljava/lang/Object;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 9

    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_0

    .line 12
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v2 .. v8}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/PipedInputStream;Ljava/lang/Object;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_0

    .line 14
    :cond_0
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa001(Lcom/stripe/bbpos/bbdevice/CAPK;)V
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/CAPK;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa001(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa001(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa001(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized aaa001(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa001(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa001(Z)V
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa001(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnControlLEDResult(ZLjava/lang/String;)V

    return-void
.end method

.method aaa001(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestVirtuCryptPEDKResponse(ZLjava/util/Hashtable;)V

    return-void
.end method

.method declared-synchronized aaa002()V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa002()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa002(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onDeviceResetAlert(I)V

    return-void
.end method

.method declared-synchronized aaa002(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa002(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa002(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa002(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 10
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa002(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa002(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa002(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa002(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa006:Z

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onDeviceHere(Z)V

    return-void
.end method

.method aaa002(ZLjava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnDisableFactoryModeResult(ZLjava/lang/String;)V

    return-void
.end method

.method aaa002(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnApduResult(ZLjava/util/Hashtable;)V

    return-void
.end method

.method declared-synchronized aaa003()V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa003(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(I)V

    return-void
.end method

.method declared-synchronized aaa003(ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa003(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa001(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa003(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa001(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized aaa003(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa003(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnAmountConfirmResult(Z)V

    return-void
.end method

.method aaa003(ZLjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnEmvCardDataResult(ZLjava/lang/String;)V

    return-void
.end method

.method aaa003(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnEncryptDataResult(ZLjava/util/Hashtable;)V

    return-void
.end method

.method declared-synchronized aaa004()V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa004()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa004(I)V
    .locals 2

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc027zz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Z)V

    .line 9
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc027zz;

    invoke-virtual {v0, v1, p1}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(ZI)V

    .line 10
    iget-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc027zz;

    invoke-virtual {p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/ccc027zz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa004(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa002(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa004(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized aaa004(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa004(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa004(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa003(Z)V

    return-void
.end method

.method aaa004(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnEmvCardNumber(ZLjava/lang/String;)V

    return-void
.end method

.method aaa004(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnNfcDataExchangeResult(ZLjava/util/Hashtable;)V

    return-void
.end method

.method declared-synchronized aaa005()V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa005()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa005(I)V
    .locals 1

    monitor-enter p0

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa002(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa005(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa010(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa005(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa005(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018()V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnCancelCheckCardResult(Z)V

    return-void
.end method

.method aaa005(ZLjava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(ZLjava/lang/String;)V

    return-void
.end method

.method aaa005(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnReadDisplayStringResult(ZLjava/util/Hashtable;)V

    return-void
.end method

.method declared-synchronized aaa006()V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa006()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa006(I)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa003(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa006(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa004(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa006(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa005(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa006(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa002(Z)V

    return-void
.end method

.method aaa006(ZLjava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa002(ZLjava/lang/String;)V

    return-void
.end method

.method aaa006(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnVirtuCryptPEDICommandResult(ZLjava/util/Hashtable;)V

    return-void
.end method

.method declared-synchronized aaa007()V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa007()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa007(I)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa005(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa007(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa004(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa007(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa006(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa007(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnDisableAccountSelectionResult(Z)V

    return-void
.end method

.method aaa007(ZLjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa003(ZLjava/lang/String;)V

    return-void
.end method

.method aaa007(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnVirtuCryptPEDKCommandResult(ZLjava/util/Hashtable;)V

    return-void
.end method

.method declared-synchronized aaa008()V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v0, v1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v0, v1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-eq v0, v1, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa008(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa007(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa008(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnDisableBluetoothResult(Z)V

    return-void
.end method

.method aaa008(ZLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa001(ZLjava/lang/String;)V

    return-void
.end method

.method declared-synchronized aaa009()V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa010()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa009(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa007(Ljava/lang/String;)V

    return-void
.end method

.method aaa009(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestAmountConfirm(Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa009(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnDisableInputAmountResult(Z)V

    return-void
.end method

.method aaa009(ZLjava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnUpdateDisplayStringResult(ZLjava/lang/String;)V

    return-void
.end method

.method declared-synchronized aaa010()V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa011()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa010(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa003(Ljava/lang/String;)V

    return-void
.end method

.method aaa010(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa010(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnEnableAccountSelectionResult(Z)V

    return-void
.end method

.method aaa010(ZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 5
    sput-boolean v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa018:Z

    .line 7
    :cond_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa028:Landroid/os/Handler;

    new-instance v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa003zz$$ExternalSyntheticLambda0;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method declared-synchronized aaa011()V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa012()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa011(Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa006(Ljava/lang/String;)V

    return-void
.end method

.method aaa011(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018()V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnDeviceInfo(Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa011(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnEnableBluetoothResult(Z)V

    return-void
.end method

.method declared-synchronized aaa011(ZLjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa012()V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa013()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa012(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestOnlineProcess(Ljava/lang/String;)V

    return-void
.end method

.method aaa012(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa001(Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa012(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa004(Z)V

    return-void
.end method

.method aaa013(Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnBatchData(Ljava/lang/String;)V

    return-void
.end method

.method aaa013(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnEmvReportList(Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa013(Z)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnEnableInputAmountResult(Z)V

    return-void
.end method

.method declared-synchronized aaa014()V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa008()V

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa000()V

    .line 6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa014(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnCAPKLocation(Ljava/lang/String;)V

    return-void
.end method

.method aaa014(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa003(Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa014(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Z)V

    return-void
.end method

.method declared-synchronized aaa015()V
    .locals 2

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa006zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa006zz;->aaa001()V

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa015(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa002(Ljava/lang/String;)V

    return-void
.end method

.method aaa015(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnReadAIDResult(Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa015(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa001(Z)V

    return-void
.end method

.method declared-synchronized aaa016()V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa014()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa016(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa008(Ljava/lang/String;)V

    return-void
.end method

.method aaa016(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa002(Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa016(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa005(Z)V

    return-void
.end method

.method declared-synchronized aaa017()V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa015()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa017(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnEmvReport(Ljava/lang/String;)V

    return-void
.end method

.method aaa017(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnUpdateAIDResult(Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa017(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnPowerOffIccResult(Z)V

    return-void
.end method

.method aaa018(Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa005(Ljava/lang/String;)V

    return-void
.end method

.method aaa018(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa015zz;",
            ">;)V"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnUpdateTerminalSettingsResult(Ljava/util/Hashtable;)V

    return-void
.end method

.method aaa018(Z)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnSetPinPadButtonsResult(Z)V

    return-void
.end method

.method declared-synchronized aaa019()V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa016()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa019(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000(Ljava/lang/String;)V

    return-void
.end method

.method aaa019(Ljava/util/Hashtable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa010:Ljava/lang/ClassLoader;

    const-string v1, "com.stripe.bbpos.bbdevice.ota.BBDeviceOTAController"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 7
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    .line 8
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getInstance"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v5, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 10
    filled-new-array {v2, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 11
    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Ljava/util/Hashtable;

    aput-object v4, v1, v3

    const-string v3, "internalFunction2"

    invoke-virtual {v0, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 12
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method aaa019(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnSetPinPadOrientationResult(Z)V

    return-void
.end method

.method declared-synchronized aaa020()V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa017()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa020(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa004(Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized aaa020(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa008(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa020(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnUpdateCAPKResult(Z)V

    return-void
.end method

.method declared-synchronized aaa021()V
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa018()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa021(Ljava/lang/String;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa001(Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized aaa021(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa009(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa021(Z)V
    .locals 4

    .line 1
    new-instance v0, Lcom/stripe/bbpos/bbdevice001/ioctrl;

    invoke-direct {v0}, Lcom/stripe/bbpos/bbdevice001/ioctrl;-><init>()V

    const/4 v1, 0x0

    const-string v2, ")"

    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->P1000PowerOnOff(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Set WSC5X power pin exception. (check code - 9066)("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :goto_0
    const/16 p1, 0x1f4

    .line 8
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V

    const/4 v1, 0x1

    .line 10
    :try_start_1
    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->P1000PowerOnOff(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Set WSC5X power pin exception. (check code - 9067)("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    .line 14
    :goto_1
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V

    goto :goto_2

    .line 17
    :cond_0
    :try_start_2
    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice001/ioctrl;->P1000PowerOnOff(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Set WSC5X power pin exception. (check code - 9068)("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc061zz;->aaa001(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method declared-synchronized aaa022()V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa019()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa022(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnReversalData(Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized aaa022(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa010(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa022(Z)V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa001(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa023()V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa020()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa023(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa005(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa023(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa011(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa023(Z)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa002(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa024()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa021(Z)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Z)V

    const/16 v2, 0x7d0

    .line 3
    invoke-static {v2}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa021(Z)V

    const/16 v1, 0x1770

    .line 5
    invoke-static {v1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa002(I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Z)V

    return-void
.end method

.method declared-synchronized aaa024(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    .line 8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa006(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa024(Ljava/util/Hashtable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa012(Ljava/util/Hashtable;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa025()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa021()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa025(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa007(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa025(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_0

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa001(I)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa013(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized aaa026(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa008(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa026(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa013()V

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa014(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa027()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa023()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa027(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa009(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa027(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa013()V

    .line 5
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa015(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa028()V
    .locals 1

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa024()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa028(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa011(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa028(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa013()V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa016(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa029()V
    .locals 1

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa025()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa029(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa012(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa029(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa017(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa030()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa026()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa030(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa013(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa030(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa018(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa031()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa027()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa031(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa014(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa031(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa019(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa032()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa028()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa032(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa013:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa008:Ljava/lang/String;

    const/4 v1, 0x1

    .line 4
    sput-boolean v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa043:Z

    .line 5
    invoke-static {p1}, Lcom/stripe/bbpos/bbdevice/ccc071zz;->aaa005(Ljava/lang/String;)[B

    move-result-object p1

    sput-object p1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa044:[B

    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method declared-synchronized aaa032(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa020(Ljava/util/Hashtable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa033()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;
    .locals 6

    .line 2
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa013:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa012:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 8
    :try_start_1
    const-string v1, "SmartPOS_SerialPort-1.2.0"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    const-string v1, "SmartPOS-1.2.0"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 17
    :catch_0
    :try_start_3
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    monitor-exit v0

    return-object v1

    .line 18
    :catch_1
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    monitor-exit v0

    return-object v1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa012:Z

    .line 31
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 32
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa008zz;

    invoke-direct {v2, p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa008zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa000zz;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa015:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa008zz;

    .line 33
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc028zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa015:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa008zz;

    invoke-direct {v2, v4}, Lcom/stripe/bbpos/bbdevice/ccc028zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc029zz;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    .line 35
    :cond_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_2

    goto :goto_1

    .line 36
    :cond_2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v5, :cond_3

    goto :goto_1

    .line 37
    :cond_3
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v5, :cond_4

    goto :goto_1

    .line 38
    :cond_4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v5, :cond_5

    goto :goto_1

    .line 39
    :cond_5
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v5, :cond_6

    goto :goto_1

    .line 40
    :cond_6
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v5, :cond_7

    goto :goto_1

    .line 41
    :cond_7
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v5, :cond_8

    goto :goto_1

    .line 43
    :cond_8
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;

    if-nez v2, :cond_9

    .line 44
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa007zz;

    invoke-direct {v2, p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa007zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa000zz;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa007zz;

    .line 45
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa001zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa007zz;

    invoke-direct {v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa001zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa002zz;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 52
    :cond_9
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    if-eq v2, v4, :cond_f

    .line 53
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-eq v2, v3, :cond_f

    .line 54
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-eq v2, v3, :cond_f

    .line 55
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-eq v2, v3, :cond_f

    .line 56
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-eq v2, v3, :cond_f

    .line 57
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-eq v2, v3, :cond_f

    .line 58
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v3, :cond_a

    goto :goto_3

    .line 61
    :cond_a
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    .line 62
    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa001()I

    move-result v2

    goto :goto_2

    :cond_b
    move v2, v3

    .line 64
    :goto_2
    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;

    if-eqz v4, :cond_c

    .line 65
    invoke-virtual {v4}, Lcom/stripe/bbpos/bbdevice/aaa001zz;->aaa001()I

    move-result v3

    :cond_c
    if-ne v2, v1, :cond_d

    if-ne v3, v1, :cond_d

    .line 68
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v1

    :cond_d
    if-eq v2, v1, :cond_e

    .line 70
    :try_start_6
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-object v1

    .line 72
    :cond_e
    :try_start_8
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;
    :try_end_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    return-object v1

    .line 73
    :cond_f
    :goto_3
    :try_start_a
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;
    :try_end_a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    monitor-exit v0

    return-object v1

    .line 90
    :catch_2
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 92
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v1
.end method

.method declared-synchronized aaa033(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa007:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method aaa034()Lcom/stripe/bbpos/bbdevice/ccc066zz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    return-object v0
.end method

.method declared-synchronized aaa034(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa021:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa000(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 8
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa019:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_1
    sget-object p1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1
.end method

.method declared-synchronized aaa035()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa008:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa035(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa016(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa036()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa007:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa036(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa016zz;

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0, p1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa015(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method declared-synchronized aaa037()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa029()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa038()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa030()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa039()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa003:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_1

    return v2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_3

    return v2

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa026()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    if-ne v0, v1, :cond_4

    return v2

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method declared-synchronized aaa040()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa008:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa041()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa033()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa042()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa007:Z

    .line 2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa000()V

    return-void
.end method

.method aaa043()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa021:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    const-string v0, "Bluetooth 2.0 Disconnected"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa010(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :catchall_0
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V

    .line 8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa006()V

    return-void
.end method

.method aaa044()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa007:Z

    .line 2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa005()V

    return-void
.end method

.method aaa045()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa021:Z

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    const-string v0, "Bluetooth Low Energy disconnected"

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa010(ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :catchall_0
    :cond_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V

    .line 8
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa003()V

    return-void
.end method

.method aaa046()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onDeviceDisplayingPrompt()V

    return-void
.end method

.method aaa047()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onEnterStandbyMode()V

    return-void
.end method

.method aaa048()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onPowerButtonPressed()V

    return-void
.end method

.method aaa049()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onPowerDown()V

    return-void
.end method

.method aaa050()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onPrintDataCancelled()V

    return-void
.end method

.method aaa051()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onPrintDataEnd()V

    return-void
.end method

.method aaa052()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestClearDisplay()V

    return-void
.end method

.method aaa053()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa002()V

    return-void
.end method

.method aaa054()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestFinalConfirm()V

    return-void
.end method

.method aaa055()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestKeypadResponse()V

    return-void
.end method

.method aaa056()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa001()V

    return-void
.end method

.method aaa057()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestSelectAccountType()V

    return-void
.end method

.method aaa058()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestSetAmount()V

    return-void
.end method

.method aaa059()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestStartEmv()V

    return-void
.end method

.method aaa060()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onRequestTerminalTime()V

    return-void
.end method

.method aaa061()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->aaa004()V

    return-void
.end method

.method aaa062()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onReturnWatchdogTimerReset()V

    return-void
.end method

.method aaa063()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa012:Z

    .line 3
    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa013:Z

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onSerialConnected()V

    return-void
.end method

.method aaa064()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa018()V

    .line 3
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa012:Z

    .line 5
    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa013:Z

    .line 6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onSerialDisconnected()V

    return-void
.end method

.method aaa065()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onSessionInitialized()V

    return-void
.end method

.method aaa066()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa012:Z

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onTestChannelConnected()V

    return-void
.end method

.method aaa067()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onTestChannelDisconnected()V

    return-void
.end method

.method aaa068()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    sget v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa027:I

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa000(I)V

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    sget v1, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa026:I

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa001(I)V

    .line 4
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onUsbConnected()V

    return-void
.end method

.method aaa069()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onUsbDisconnected()V

    return-void
.end method

.method aaa070()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;

    invoke-interface {v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa001zz;->onWaitingReprintOrPrintNext()V

    return-void
.end method

.method declared-synchronized aaa071()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa034()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa072()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa035()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa075()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa036()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa076()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa078()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa077()V
    .locals 2

    .line 1
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa013:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    const-string v1, ""

    iput-object v1, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa008:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    sput-boolean v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa043:Z

    .line 4
    new-array v1, v1, [B

    sput-object v1, Lcom/stripe/bbpos/bbdevice/aaa009zz;->aaa044:[B

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method declared-synchronized aaa078()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa007:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa077()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa079()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa037()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method aaa080()V
    .locals 5

    const-string v0, ". Serial (error code - 3102)"

    .line 1
    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa013:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa033()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    if-eq v2, v3, :cond_0

    .line 3
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v2, "Serial (error code - 3100)"

    invoke-virtual {p0, v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 4
    monitor-exit v1

    return-void

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa022()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa001:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_f

    .line 8
    :try_start_1
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 9
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa008zz;

    invoke-direct {v2, p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa008zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa000zz;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa015:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa008zz;

    .line 10
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc028zz;

    sget-object v4, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa015:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa008zz;

    invoke-direct {v2, v4}, Lcom/stripe/bbpos/bbdevice/ccc028zz;-><init>(Lcom/stripe/bbpos/bbdevice/ccc029zz;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    .line 12
    :cond_1
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa001:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa002:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_3

    goto :goto_0

    .line 14
    :cond_3
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa003:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_4

    goto :goto_0

    .line 15
    :cond_4
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa004:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_5

    .line 16
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa086()V

    goto :goto_0

    .line 17
    :cond_5
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa005:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_6

    .line 18
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc037zz;

    if-nez v2, :cond_9

    .line 19
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc037zz;

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/stripe/bbpos/bbdevice/ccc037zz;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc037zz;

    goto :goto_0

    .line 21
    :cond_6
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa007:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_7

    .line 22
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc037zz;

    if-nez v2, :cond_9

    .line 23
    new-instance v2, Lcom/stripe/bbpos/bbdevice/ccc037zz;

    iget-object v3, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/stripe/bbpos/bbdevice/ccc037zz;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa020:Lcom/stripe/bbpos/bbdevice/ccc037zz;

    goto :goto_0

    .line 25
    :cond_7
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v4, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa006:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    if-ne v2, v4, :cond_8

    goto :goto_0

    .line 27
    :cond_8
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;

    if-nez v2, :cond_9

    .line 28
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa007zz;

    invoke-direct {v2, p0, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa007zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa003zz;Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa000zz;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa007zz;

    .line 29
    new-instance v2, Lcom/stripe/bbpos/bbdevice/aaa001zz;

    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa007zz;

    invoke-direct {v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa001zz;-><init>(Lcom/stripe/bbpos/bbdevice/aaa002zz;)V

    sput-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa016:Lcom/stripe/bbpos/bbdevice/aaa001zz;

    .line 32
    :cond_9
    :goto_0
    invoke-static {}, Lcom/stripe/bbpos/bbdevice/BBDeviceController;->aaa022()Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    move-result-object v2

    sget-object v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;->aaa000:Lcom/stripe/bbpos/bbdevice/BBDeviceController$aaa006zz;

    const/4 v4, 0x1

    if-ne v2, v3, :cond_a

    .line 33
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000(I)V

    goto :goto_1

    .line 34
    :cond_a
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa014:Lcom/stripe/bbpos/bbdevice/ccc028zz;

    iget-object v2, v2, Lcom/stripe/bbpos/bbdevice/ccc028zz;->aaa008:Ljava/lang/String;

    const-string v3, "v1.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 35
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000(I)V

    .line 38
    :cond_b
    :goto_1
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc027zz;

    invoke-virtual {v2}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa002()I

    move-result v2

    if-ne v2, v4, :cond_c

    .line 40
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "Open serial port failed. SecurityException (error code - 3108)"

    invoke-virtual {p0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_c
    const/4 v3, 0x2

    if-ne v2, v3, :cond_d

    .line 43
    :try_start_3
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "Open serial port failed. IOException (error code - 3109)"

    invoke-virtual {p0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 44
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-void

    :cond_d
    if-le v2, v3, :cond_e

    .line 46
    :try_start_5
    sget-object v2, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v3, "Open serial port failed (error code - 3101)"

    invoke-virtual {p0, v2, v3}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 47
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    .line 50
    :cond_e
    :try_start_7
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa074()V

    .line 51
    iget-object v2, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc027zz;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(ZI)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 53
    :try_start_8
    sget-object v3, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa017:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    goto :goto_2

    .line 56
    :cond_f
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa011:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V

    .line 58
    :goto_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa081()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa087()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa082()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa039()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa083()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa033()Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    move-result-object v0

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;->aaa000:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa014zz;

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa004:Lcom/stripe/bbpos/bbdevice/ccc027zz;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/ccc027zz;->aaa000(Z)V

    .line 3
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa003()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa011:Lcom/stripe/bbpos/bbdevice/ccc066zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc066zz;->aaa014()Lcom/stripe/bbpos/bbdevice/ccc044zz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/ccc044zz;->aaa000()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa073()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa004:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa084()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V

    .line 2
    invoke-virtual {p0}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa067()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized aaa085()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;->aaa021:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa002zz;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa004zz;->aaa005()V

    .line 6
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    invoke-virtual {v0, v1}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method

.method aaa087()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa006:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v11}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/PipedInputStream;Ljava/lang/Object;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/stripe/bbpos/bbdevice/aaa004zz;)V

    return-void
.end method

.method aaa088()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    sget-object v1, Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;

    iget-object v11, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa005:Lcom/stripe/bbpos/bbdevice/aaa004zz;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v11}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa000(Lcom/stripe/bbpos/bbdevice/aaa003zz$aaa005zz;Landroid/bluetooth/BluetoothSocket;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/io/PipedInputStream;Ljava/lang/Object;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/Object;Landroid/bluetooth/BluetoothGattCharacteristic;Lcom/stripe/bbpos/bbdevice/aaa004zz;)V

    return-void
.end method

.method declared-synchronized aaa089()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/stripe/bbpos/bbdevice/aaa003zz;->aaa002:Lcom/stripe/bbpos/bbdevice/aaa011zz;

    invoke-virtual {v0}, Lcom/stripe/bbpos/bbdevice/aaa011zz;->aaa040()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
