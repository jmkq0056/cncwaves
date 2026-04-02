.class public final enum Lcom/google/android/gms/internal/measurement/zzkr;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-base@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/measurement/zzkr;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/measurement/zzkr;

.field public static final enum zzb:Lcom/google/android/gms/internal/measurement/zzkr;

.field public static final enum zzc:Lcom/google/android/gms/internal/measurement/zzkr;

.field public static final enum zzd:Lcom/google/android/gms/internal/measurement/zzkr;

.field public static final enum zze:Lcom/google/android/gms/internal/measurement/zzkr;

.field public static final enum zzf:Lcom/google/android/gms/internal/measurement/zzkr;

.field public static final enum zzg:Lcom/google/android/gms/internal/measurement/zzkr;

.field public static final enum zzh:Lcom/google/android/gms/internal/measurement/zzkr;

.field public static final enum zzi:Lcom/google/android/gms/internal/measurement/zzkr;

.field public static final enum zzj:Lcom/google/android/gms/internal/measurement/zzkr;

.field private static final synthetic zzk:[Lcom/google/android/gms/internal/measurement/zzkr;


# instance fields
.field private final zzl:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzkr;

    const-class v3, Ljava/lang/Void;

    const-class v4, Ljava/lang/Void;

    const/4 v5, 0x0

    const-string v1, "VOID"

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkr;->zza:Lcom/google/android/gms/internal/measurement/zzkr;

    .line 3
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzkr;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v2, "INT"

    const/4 v3, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzkr;->zzb:Lcom/google/android/gms/internal/measurement/zzkr;

    .line 4
    new-instance v2, Lcom/google/android/gms/internal/measurement/zzkr;

    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Long;

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v9, "LONG"

    const/4 v10, 0x2

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/zzkr;->zzc:Lcom/google/android/gms/internal/measurement/zzkr;

    .line 5
    new-instance v3, Lcom/google/android/gms/internal/measurement/zzkr;

    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Float;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    const-string v9, "FLOAT"

    const/4 v10, 0x3

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v3, Lcom/google/android/gms/internal/measurement/zzkr;->zzd:Lcom/google/android/gms/internal/measurement/zzkr;

    .line 6
    new-instance v4, Lcom/google/android/gms/internal/measurement/zzkr;

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Double;

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    const-string v9, "DOUBLE"

    const/4 v10, 0x4

    move-object v8, v4

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v4, Lcom/google/android/gms/internal/measurement/zzkr;->zze:Lcom/google/android/gms/internal/measurement/zzkr;

    .line 7
    new-instance v5, Lcom/google/android/gms/internal/measurement/zzkr;

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const-string v9, "BOOLEAN"

    const/4 v10, 0x5

    move-object v8, v5

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v5, Lcom/google/android/gms/internal/measurement/zzkr;->zzf:Lcom/google/android/gms/internal/measurement/zzkr;

    .line 8
    new-instance v6, Lcom/google/android/gms/internal/measurement/zzkr;

    const-class v9, Ljava/lang/String;

    const-class v10, Ljava/lang/String;

    const-string v11, ""

    const-string v7, "STRING"

    const/4 v8, 0x6

    invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v6, Lcom/google/android/gms/internal/measurement/zzkr;->zzg:Lcom/google/android/gms/internal/measurement/zzkr;

    .line 9
    new-instance v7, Lcom/google/android/gms/internal/measurement/zzkr;

    const-class v10, Lcom/google/android/gms/internal/measurement/zziy;

    const-class v11, Lcom/google/android/gms/internal/measurement/zziy;

    sget-object v12, Lcom/google/android/gms/internal/measurement/zziy;->zza:Lcom/google/android/gms/internal/measurement/zziy;

    const-string v8, "BYTE_STRING"

    const/4 v9, 0x7

    invoke-direct/range {v7 .. v12}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v7, Lcom/google/android/gms/internal/measurement/zzkr;->zzh:Lcom/google/android/gms/internal/measurement/zzkr;

    .line 10
    new-instance v8, Lcom/google/android/gms/internal/measurement/zzkr;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v12, Ljava/lang/Integer;

    const/4 v13, 0x0

    const-string v9, "ENUM"

    const/16 v10, 0x8

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v8, Lcom/google/android/gms/internal/measurement/zzkr;->zzi:Lcom/google/android/gms/internal/measurement/zzkr;

    .line 11
    new-instance v9, Lcom/google/android/gms/internal/measurement/zzkr;

    const-class v12, Ljava/lang/Object;

    const-class v13, Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v10, "MESSAGE"

    const/16 v11, 0x9

    invoke-direct/range {v9 .. v14}, Lcom/google/android/gms/internal/measurement/zzkr;-><init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v9, Lcom/google/android/gms/internal/measurement/zzkr;->zzj:Lcom/google/android/gms/internal/measurement/zzkr;

    .line 12
    filled-new-array/range {v0 .. v9}, [Lcom/google/android/gms/internal/measurement/zzkr;

    move-result-object v0

    .line 13
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzk:[Lcom/google/android/gms/internal/measurement/zzkr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzkr;->zzl:Ljava/lang/Class;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/measurement/zzkr;
    .locals 1

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzkr;->zzk:[Lcom/google/android/gms/internal/measurement/zzkr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/measurement/zzkr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/measurement/zzkr;

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzkr;->zzl:Ljava/lang/Class;

    return-object v0
.end method
