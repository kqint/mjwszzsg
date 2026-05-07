.class public Lsafiap/framework/data/PluginInfo;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lsafiap/framework/data/PluginInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLICE_TIMER:Ljava/lang/String; = "Timer"

.field private static final TAG:Ljava/lang/String; = "PluginInfo"

.field private static sLogger:Lsafiap/framework/util/MyLogger;


# instance fields
.field private mAppActionName:Ljava/lang/String;

.field private mAppCertDigest:Ljava/lang/String;

.field private mAppDescription:Ljava/lang/String;

.field private mAppEnable:Z

.field private mAppIsDownloading:Z

.field private mAppName:Ljava/lang/String;

.field private mAppOption:Z

.field private mAppPackage:Ljava/lang/String;

.field private mAppSize:Ljava/lang/String;

.field private mAppUpdateType:Ljava/lang/String;

.field private mAppUrl:Ljava/lang/String;

.field private mAppVersion:I

.field private mAppVersionLatest:I

.field private mHasExtended:Z

.field private mInstallLater:Z

.field private mPolicy:Ljava/lang/String;

.field private mPolicyVal:I

.field private mTimeout:J

.field private mUpdatingProgress:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 551
    new-instance v0, Lsafiap/framework/data/PluginInfo$1;

    invoke-direct {v0}, Lsafiap/framework/data/PluginInfo$1;-><init>()V

    sput-object v0, Lsafiap/framework/data/PluginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 568
    const-string v0, "PluginInfo"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/data/PluginInfo;->sLogger:Lsafiap/framework/util/MyLogger;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 43
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mAppVersion:I

    .line 47
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    .line 63
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppEnable:Z

    .line 67
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    .line 87
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mPolicyVal:I

    .line 93
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mHasExtended:Z

    .line 97
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mInstallLater:Z

    .line 102
    iput v1, p0, Lsafiap/framework/data/PluginInfo;->mUpdatingProgress:I

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsafiap/framework/data/PluginInfo;->mTimeout:J

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 43
    iput v3, p0, Lsafiap/framework/data/PluginInfo;->mAppVersion:I

    .line 47
    iput v3, p0, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    .line 59
    iput-boolean v2, p0, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    .line 63
    iput-boolean v2, p0, Lsafiap/framework/data/PluginInfo;->mAppEnable:Z

    .line 67
    iput-boolean v2, p0, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    .line 87
    iput v3, p0, Lsafiap/framework/data/PluginInfo;->mPolicyVal:I

    .line 93
    iput-boolean v2, p0, Lsafiap/framework/data/PluginInfo;->mHasExtended:Z

    .line 97
    iput-boolean v2, p0, Lsafiap/framework/data/PluginInfo;->mInstallLater:Z

    .line 102
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mUpdatingProgress:I

    .line 106
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lsafiap/framework/data/PluginInfo;->mTimeout:J

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mAppEnable:Z

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicyVal:I

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    .line 357
    return-void

    :cond_0
    move v0, v2

    .line 349
    goto :goto_0

    :cond_1
    move v0, v2

    .line 350
    goto :goto_1

    :cond_2
    move v1, v2

    .line 351
    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "pluginVersion"    # I

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 43
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mAppVersion:I

    .line 47
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    .line 63
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppEnable:Z

    .line 67
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    .line 87
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mPolicyVal:I

    .line 93
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mHasExtended:Z

    .line 97
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mInstallLater:Z

    .line 102
    iput v1, p0, Lsafiap/framework/data/PluginInfo;->mUpdatingProgress:I

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsafiap/framework/data/PluginInfo;->mTimeout:J

    .line 145
    iput-object p1, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 146
    invoke-virtual {p0, p2}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "pluginVersion"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 43
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mAppVersion:I

    .line 47
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    .line 63
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppEnable:Z

    .line 67
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    .line 87
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mPolicyVal:I

    .line 93
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mHasExtended:Z

    .line 97
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mInstallLater:Z

    .line 102
    iput v1, p0, Lsafiap/framework/data/PluginInfo;->mUpdatingProgress:I

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsafiap/framework/data/PluginInfo;->mTimeout:J

    .line 140
    iput-object p1, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 141
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 142
    return-void
.end method

.method public constructor <init>(Lsafiap/framework/data/PluginInfo;)V
    .locals 3
    .param p1, "copySource"    # Lsafiap/framework/data/PluginInfo;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 43
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mAppVersion:I

    .line 47
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    .line 63
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppEnable:Z

    .line 67
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    .line 87
    iput v2, p0, Lsafiap/framework/data/PluginInfo;->mPolicyVal:I

    .line 93
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mHasExtended:Z

    .line 97
    iput-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mInstallLater:Z

    .line 102
    iput v1, p0, Lsafiap/framework/data/PluginInfo;->mUpdatingProgress:I

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsafiap/framework/data/PluginInfo;->mTimeout:J

    .line 113
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    .line 116
    iget v0, p1, Lsafiap/framework/data/PluginInfo;->mAppVersion:I

    iput v0, p0, Lsafiap/framework/data/PluginInfo;->mAppVersion:I

    .line 117
    iget v0, p1, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    iput v0, p0, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    .line 118
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    .line 119
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    .line 120
    iget-boolean v0, p1, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    iput-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    .line 121
    iget-boolean v0, p1, Lsafiap/framework/data/PluginInfo;->mAppEnable:Z

    iput-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mAppEnable:Z

    .line 122
    iget-boolean v0, p1, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    iput-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    .line 123
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    .line 127
    iget-boolean v0, p1, Lsafiap/framework/data/PluginInfo;->mHasExtended:Z

    iput-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mHasExtended:Z

    .line 128
    iget-boolean v0, p1, Lsafiap/framework/data/PluginInfo;->mInstallLater:Z

    iput-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mInstallLater:Z

    .line 129
    iget v0, p1, Lsafiap/framework/data/PluginInfo;->mUpdatingProgress:I

    iput v0, p0, Lsafiap/framework/data/PluginInfo;->mUpdatingProgress:I

    .line 130
    iget-wide v0, p1, Lsafiap/framework/data/PluginInfo;->mTimeout:J

    iput-wide v0, p0, Lsafiap/framework/data/PluginInfo;->mTimeout:J

    .line 132
    iget-object v0, p1, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    .line 134
    iget v0, p1, Lsafiap/framework/data/PluginInfo;->mPolicyVal:I

    iput v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicyVal:I

    .line 136
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    .line 137
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 133
    iget-object v1, p1, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lsafiap/framework/data/PluginInfo;
    .locals 7
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 360
    new-instance v1, Lsafiap/framework/data/PluginInfo;

    invoke-direct {v1}, Lsafiap/framework/data/PluginInfo;-><init>()V

    .line 363
    .local v1, "info":Lsafiap/framework/data/PluginInfo;
    :try_start_0
    const-string v6, "app_name"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    const-string v6, "app_name"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    .line 367
    :cond_0
    const-string v6, "app_action_name"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 368
    const-string v6, "app_action_name"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 371
    :cond_1
    const-string v6, "app_package"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 372
    const-string v6, "app_package"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    .line 375
    :cond_2
    const-string v6, "app_version"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 376
    const-string v6, "app_version"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Lsafiap/framework/data/PluginInfo;->setVersion(I)V

    .line 379
    :cond_3
    const-string v6, "app_url"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 380
    const-string v6, "app_url"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    .line 383
    :cond_4
    const-string v6, "app_cert_digest"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 384
    const-string v6, "app_cert_digest"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    .line 387
    :cond_5
    const-string v6, "app_option"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 388
    const-string v6, "app_option"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_d

    move v6, v4

    :goto_0
    iput-boolean v6, v1, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    .line 391
    :cond_6
    const-string v6, "app_enable"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 392
    const-string v6, "app_enable"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v1, Lsafiap/framework/data/PluginInfo;->mAppEnable:Z

    .line 395
    :cond_7
    const-string v6, "app_is_downloading"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 396
    const-string v6, "app_is_downloading"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_e

    :goto_1
    iput-boolean v4, v1, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    .line 399
    :cond_8
    const-string v4, "app_description"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 400
    const-string v4, "app_description"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    .line 403
    :cond_9
    const-string v4, "app_policy"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 404
    const-string v4, "app_policy"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "temp":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 406
    .local v2, "objTemp":Lorg/json/JSONObject;
    const-string v4, "Timer"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 407
    const-string v4, "Timer"

    iput-object v4, v1, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    .line 408
    const-string v4, "Timer"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lsafiap/framework/data/PluginInfo;->mPolicyVal:I

    .line 412
    .end local v2    # "objTemp":Lorg/json/JSONObject;
    .end local v3    # "temp":Ljava/lang/String;
    :cond_a
    const-string v4, "app_size"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 413
    const-string v4, "app_size"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    .line 416
    :cond_b
    const-string v4, "app_update_type"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 417
    const-string v4, "app_update_type"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :cond_c
    :goto_2
    return-object v1

    :cond_d
    move v6, v5

    .line 388
    goto :goto_0

    :cond_e
    move v4, v5

    .line 396
    goto :goto_1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "PluginInfo"

    const-string v5, "SAF-A Exception:540001"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static getPluginAVPJson(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, "pluginList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 438
    :cond_0
    const-string v3, ""

    .line 460
    :goto_0
    return-object v3

    .line 441
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v1, "jsonStr":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 444
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsafiap/framework/data/PluginInfo;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 458
    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 445
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsafiap/framework/data/PluginInfo;

    .line 446
    .local v2, "plugin":Lsafiap/framework/data/PluginInfo;
    iget-object v3, v2, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 448
    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    invoke-virtual {v2}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-object v3, v2, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 451
    invoke-static {p0, v3}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageNameByAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 455
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getPluginAVPJson(Landroid/content/Context;Lsafiap/framework/data/PluginInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "plugin"    # Lsafiap/framework/data/PluginInfo;

    .prologue
    const/4 v1, 0x1

    .line 464
    if-nez p1, :cond_0

    .line 465
    const-string v1, ""

    .line 480
    :goto_0
    return-object v1

    .line 468
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 469
    .local v0, "jsonStr":Ljava/lang/StringBuilder;
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 470
    iget-object v2, p1, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {p1}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v2

    if-ge v2, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 474
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    iget-object v1, p1, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 475
    invoke-static {p0, v1}, Lsafiap/framework/sdk/util/PackageUtil;->getPackageNameByAction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p1}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v1

    goto :goto_1
.end method

.method public static getPluginNameJson(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 490
    .local p0, "pluginList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 491
    :cond_0
    const-string v3, ""

    .line 508
    :goto_0
    return-object v3

    .line 494
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v1, "jsonStr":Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 497
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lsafiap/framework/data/PluginInfo;>;"
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 506
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 498
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsafiap/framework/data/PluginInfo;

    .line 499
    .local v2, "plugin":Lsafiap/framework/data/PluginInfo;
    iget-object v3, v2, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 503
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lsafiap/framework/data/PluginInfo;

    invoke-virtual {p0, p1}, Lsafiap/framework/data/PluginInfo;->compareTo(Lsafiap/framework/data/PluginInfo;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lsafiap/framework/data/PluginInfo;)I
    .locals 2
    .param p1, "another"    # Lsafiap/framework/data/PluginInfo;

    .prologue
    .line 565
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    iget-object v1, p1, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public getAppAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUpdateType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloading()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    return v0
.end method

.method public getLatestVersion()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyVal()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicyVal:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lsafiap/framework/data/PluginInfo;->mAppVersion:I

    return v0
.end method

.method public isInstallLaterEnabled()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mInstallLater:Z

    return v0
.end method

.method public isMandatoryUpdate()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    return v0
.end method

.method public setAppAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setAppSize(Ljava/lang/String;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setAppUpdatType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 326
    iput-object p1, p0, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setDigest(Ljava/lang/String;)V
    .locals 0
    .param p1, "digest"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;

    .prologue
    .line 242
    iput-object p1, p0, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setDownloading(Z)V
    .locals 0
    .param p1, "downloading"    # Z

    .prologue
    .line 270
    iput-boolean p1, p0, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    .line 271
    return-void
.end method

.method public setInstallLaterEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lsafiap/framework/data/PluginInfo;->mInstallLater:Z

    .line 157
    return-void
.end method

.method public setLatestVersion(I)V
    .locals 0
    .param p1, "latestVersion"    # I

    .prologue
    .line 213
    iput p1, p0, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    .line 214
    return-void
.end method

.method public setMandatoryUpdate(Z)V
    .locals 0
    .param p1, "isMandatory"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    .line 260
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "appVersion"    # I

    .prologue
    .line 223
    iput p1, p0, Lsafiap/framework/data/PluginInfo;->mAppVersion:I

    .line 224
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PluginInfo [app_name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_action_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 514
    iget-object v1, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 515
    const-string v1, ", app_version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsafiap/framework/data/PluginInfo;->mAppVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_version_latest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    iget v1, p0, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_apk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_update_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 518
    const-string v1, ", app_cert_digest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_option="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 519
    iget-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", app_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 520
    const-string v1, ", app_is_downloading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 521
    const-string v1, ", app_description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installLater="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 522
    iget-boolean v1, p0, Lsafiap/framework/data/PluginInfo;->mInstallLater:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updatingProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsafiap/framework/data/PluginInfo;->mUpdatingProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 523
    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lsafiap/framework/data/PluginInfo;->mTimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 534
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppActionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0}, Lsafiap/framework/data/PluginInfo;->getVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    iget v0, p0, Lsafiap/framework/data/PluginInfo;->mAppVersionLatest:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppCertDigest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 541
    iget-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mAppOption:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mAppEnable:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget-boolean v0, p0, Lsafiap/framework/data/PluginInfo;->mAppIsDownloading:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicy:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 546
    iget v0, p0, Lsafiap/framework/data/PluginInfo;->mPolicyVal:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppUpdateType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    iget-object v0, p0, Lsafiap/framework/data/PluginInfo;->mAppSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    return-void

    :cond_0
    move v0, v2

    .line 541
    goto :goto_0

    :cond_1
    move v0, v2

    .line 542
    goto :goto_1

    :cond_2
    move v1, v2

    .line 543
    goto :goto_2
.end method
