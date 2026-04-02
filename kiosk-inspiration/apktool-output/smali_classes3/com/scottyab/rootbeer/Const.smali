.class final Lcom/scottyab/rootbeer/Const;
.super Ljava/lang/Object;
.source "Const.java"


# static fields
.field static final BINARY_BUSYBOX:Ljava/lang/String; = "busybox"

.field static final BINARY_SU:Ljava/lang/String; = "su"

.field public static final knownDangerousAppsPackages:[Ljava/lang/String;

.field static final knownRootAppsPackages:[Ljava/lang/String;

.field public static final knownRootCloakingPackages:[Ljava/lang/String;

.field static final pathsThatShouldNotBeWritable:[Ljava/lang/String;

.field private static final suPaths:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0xc

    .line 15
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "com.noshufou.android.su"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.noshufou.android.su.elite"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "eu.chainfire.supersu"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "com.koushikdutta.superuser"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "com.thirdparty.superuser"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "com.yellowes.su"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "com.topjohnwu.magisk"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "com.kingroot.kinguser"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "com.kingo.root"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "com.smedialink.oneclickroot"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "com.zhiqupk.root.global"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "com.alephzain.framaroot"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sput-object v1, Lcom/scottyab/rootbeer/Const;->knownRootAppsPackages:[Ljava/lang/String;

    const/16 v1, 0x1b

    .line 30
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.koushikdutta.rommanager"

    aput-object v2, v1, v3

    const-string v2, "com.koushikdutta.rommanager.license"

    aput-object v2, v1, v4

    const-string v2, "com.dimonvideo.luckypatcher"

    aput-object v2, v1, v5

    const-string v2, "com.chelpus.lackypatch"

    aput-object v2, v1, v6

    const-string v2, "com.ramdroid.appquarantine"

    aput-object v2, v1, v7

    const-string v2, "com.ramdroid.appquarantinepro"

    aput-object v2, v1, v8

    const-string v2, "com.android.vending.billing.InAppBillingService.COIN"

    aput-object v2, v1, v9

    const-string v2, "com.android.vending.billing.InAppBillingService.LUCK"

    aput-object v2, v1, v10

    const-string v2, "com.chelpus.luckypatcher"

    aput-object v2, v1, v11

    const-string v2, "com.blackmartalpha"

    aput-object v2, v1, v12

    const-string v2, "org.blackmart.market"

    aput-object v2, v1, v13

    const-string v2, "com.allinone.free"

    aput-object v2, v1, v14

    const-string v2, "com.repodroid.app"

    aput-object v2, v1, v0

    const-string v2, "org.creeplays.hack"

    const/16 v15, 0xd

    aput-object v2, v1, v15

    const-string v2, "com.baseappfull.fwd"

    move/from16 v16, v0

    const/16 v0, 0xe

    aput-object v2, v1, v0

    const/16 v2, 0xf

    const-string v17, "com.zmapp"

    aput-object v17, v1, v2

    const/16 v2, 0x10

    const-string v17, "com.dv.marketmod.installer"

    aput-object v17, v1, v2

    const/16 v2, 0x11

    const-string v17, "org.mobilism.android"

    aput-object v17, v1, v2

    const/16 v2, 0x12

    const-string v17, "com.android.wp.net.log"

    aput-object v17, v1, v2

    const/16 v2, 0x13

    const-string v17, "com.android.camera.update"

    aput-object v17, v1, v2

    const/16 v2, 0x14

    const-string v17, "cc.madkite.freedom"

    aput-object v17, v1, v2

    const/16 v2, 0x15

    const-string v17, "com.solohsu.android.edxp.manager"

    aput-object v17, v1, v2

    const/16 v2, 0x16

    const-string v17, "org.meowcat.edxposed.manager"

    aput-object v17, v1, v2

    const/16 v2, 0x17

    const-string v17, "com.xmodgame"

    aput-object v17, v1, v2

    const/16 v2, 0x18

    const-string v17, "com.cih.game_cih"

    aput-object v17, v1, v2

    const/16 v2, 0x19

    const-string v17, "com.charles.lpoqasert"

    aput-object v17, v1, v2

    const/16 v2, 0x1a

    const-string v17, "catch_.me_.if_.you_.can_"

    aput-object v17, v1, v2

    sput-object v1, Lcom/scottyab/rootbeer/Const;->knownDangerousAppsPackages:[Ljava/lang/String;

    .line 60
    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "com.devadvance.rootcloak"

    aput-object v2, v1, v3

    const-string v2, "com.devadvance.rootcloakplus"

    aput-object v2, v1, v4

    const-string v2, "de.robv.android.xposed.installer"

    aput-object v2, v1, v5

    const-string v2, "com.saurik.substrate"

    aput-object v2, v1, v6

    const-string v2, "com.zachspong.temprootremovejb"

    aput-object v2, v1, v7

    const-string v2, "com.amphoras.hidemyroot"

    aput-object v2, v1, v8

    const-string v2, "com.amphoras.hidemyrootadfree"

    aput-object v2, v1, v9

    const-string v2, "com.formyhm.hiderootPremium"

    aput-object v2, v1, v10

    const-string v2, "com.formyhm.hideroot"

    aput-object v2, v1, v11

    sput-object v1, Lcom/scottyab/rootbeer/Const;->knownRootCloakingPackages:[Ljava/lang/String;

    .line 73
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "/data/local/"

    aput-object v1, v0, v3

    const-string v1, "/data/local/bin/"

    aput-object v1, v0, v4

    const-string v1, "/data/local/xbin/"

    aput-object v1, v0, v5

    const-string v1, "/sbin/"

    aput-object v1, v0, v6

    const-string v1, "/su/bin/"

    aput-object v1, v0, v7

    const-string v1, "/system/bin/"

    aput-object v1, v0, v8

    const-string v1, "/system/bin/.ext/"

    aput-object v1, v0, v9

    const-string v1, "/system/bin/failsafe/"

    aput-object v1, v0, v10

    const-string v1, "/system/sd/xbin/"

    aput-object v1, v0, v11

    const-string v1, "/system/usr/we-need-root/"

    aput-object v1, v0, v12

    const-string v1, "/system/xbin/"

    aput-object v1, v0, v13

    const-string v1, "/cache/"

    aput-object v1, v0, v14

    const-string v1, "/data/"

    aput-object v1, v0, v16

    const-string v1, "/dev/"

    aput-object v1, v0, v15

    sput-object v0, Lcom/scottyab/rootbeer/Const;->suPaths:[Ljava/lang/String;

    .line 91
    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "/system"

    aput-object v1, v0, v3

    const-string v1, "/system/bin"

    aput-object v1, v0, v4

    const-string v1, "/system/sbin"

    aput-object v1, v0, v5

    const-string v1, "/system/xbin"

    aput-object v1, v0, v6

    const-string v1, "/vendor/bin"

    aput-object v1, v0, v7

    const-string v1, "/sbin"

    aput-object v1, v0, v8

    const-string v1, "/etc"

    aput-object v1, v0, v9

    sput-object v0, Lcom/scottyab/rootbeer/Const;->pathsThatShouldNotBeWritable:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "This class is not for instantiation"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getPaths()[Ljava/lang/String;
    .locals 7

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/scottyab/rootbeer/Const;->suPaths:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    const-string v1, "PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 116
    const-string v3, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 120
    :cond_0
    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 122
    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 126
    :cond_1
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 127
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 131
    :cond_3
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 117
    :cond_4
    :goto_1
    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
