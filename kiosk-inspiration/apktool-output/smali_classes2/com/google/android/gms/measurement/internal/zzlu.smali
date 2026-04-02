.class public final enum Lcom/google/android/gms/measurement/internal/zzlu;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-measurement-impl@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/measurement/internal/zzlu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/measurement/internal/zzlu;

.field public static final enum zzb:Lcom/google/android/gms/measurement/internal/zzlu;

.field public static final enum zzc:Lcom/google/android/gms/measurement/internal/zzlu;

.field public static final enum zzd:Lcom/google/android/gms/measurement/internal/zzlu;

.field public static final enum zze:Lcom/google/android/gms/measurement/internal/zzlu;

.field public static final enum zzf:Lcom/google/android/gms/measurement/internal/zzlu;

.field private static final synthetic zzg:[Lcom/google/android/gms/measurement/internal/zzlu;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 2
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzlu;

    const-string v1, "GOOGLE_ANALYTICS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/measurement/internal/zzlu;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzlu;->zza:Lcom/google/android/gms/measurement/internal/zzlu;

    .line 3
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzlu;

    const-string v2, "GOOGLE_SIGNAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/gms/measurement/internal/zzlu;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzlu;->zzb:Lcom/google/android/gms/measurement/internal/zzlu;

    .line 4
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzlu;

    const-string v3, "SGTM"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/android/gms/measurement/internal/zzlu;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/measurement/internal/zzlu;->zzc:Lcom/google/android/gms/measurement/internal/zzlu;

    .line 5
    new-instance v3, Lcom/google/android/gms/measurement/internal/zzlu;

    const-string v4, "SGTM_CLIENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/android/gms/measurement/internal/zzlu;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/measurement/internal/zzlu;->zzd:Lcom/google/android/gms/measurement/internal/zzlu;

    .line 6
    new-instance v4, Lcom/google/android/gms/measurement/internal/zzlu;

    const-string v5, "GOOGLE_SIGNAL_PENDING"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/google/android/gms/measurement/internal/zzlu;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/measurement/internal/zzlu;->zze:Lcom/google/android/gms/measurement/internal/zzlu;

    .line 7
    new-instance v5, Lcom/google/android/gms/measurement/internal/zzlu;

    const/4 v6, 0x5

    const/16 v7, 0x63

    const-string v8, "UNKNOWN"

    invoke-direct {v5, v8, v6, v7}, Lcom/google/android/gms/measurement/internal/zzlu;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/measurement/internal/zzlu;->zzf:Lcom/google/android/gms/measurement/internal/zzlu;

    .line 8
    filled-new-array/range {v0 .. v5}, [Lcom/google/android/gms/measurement/internal/zzlu;

    move-result-object v0

    .line 9
    sput-object v0, Lcom/google/android/gms/measurement/internal/zzlu;->zzg:[Lcom/google/android/gms/measurement/internal/zzlu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzlu;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/measurement/internal/zzlu;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzlu;->zzg:[Lcom/google/android/gms/measurement/internal/zzlu;

    invoke-virtual {v0}, [Lcom/google/android/gms/measurement/internal/zzlu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/measurement/internal/zzlu;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzlu;->zzh:I

    return v0
.end method
