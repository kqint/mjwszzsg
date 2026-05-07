.class Lsafiap/framework/data/PluginInfo$1;
.super Ljava/lang/Object;
.source "PluginInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/data/PluginInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lsafiap/framework/data/PluginInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lsafiap/framework/data/PluginInfo$1;->createFromParcel(Landroid/os/Parcel;)Lsafiap/framework/data/PluginInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lsafiap/framework/data/PluginInfo;
    .locals 1
    .param p1, "arg0"    # Landroid/os/Parcel;

    .prologue
    .line 554
    new-instance v0, Lsafiap/framework/data/PluginInfo;

    invoke-direct {v0, p1}, Lsafiap/framework/data/PluginInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lsafiap/framework/data/PluginInfo$1;->newArray(I)[Lsafiap/framework/data/PluginInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lsafiap/framework/data/PluginInfo;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 558
    new-array v0, p1, [Lsafiap/framework/data/PluginInfo;

    return-object v0
.end method
