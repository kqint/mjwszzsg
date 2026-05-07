.class public abstract Lsafiap/framework/sdk/ISAFFramework$Stub;
.super Landroid/os/Binder;
.source "ISAFFramework.java"

# interfaces
.implements Lsafiap/framework/sdk/ISAFFramework;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/sdk/ISAFFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsafiap/framework/sdk/ISAFFramework$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "safiap.framework.sdk.ISAFFramework"

.field static final TRANSACTION_cancel:I = 0x4

.field static final TRANSACTION_cancelAll:I = 0x5

.field static final TRANSACTION_checkIAPinstallation:I = 0x9

.field static final TRANSACTION_downloadPlugin:I = 0x3

.field static final TRANSACTION_getFrameworkVersion:I = 0x6

.field static final TRANSACTION_getIAPDedicateActionName:I = 0xa

.field static final TRANSACTION_getPluginInfo:I = 0x2

.field static final TRANSACTION_hasUpdate:I = 0x1

.field static final TRANSACTION_startCheckUpdate:I = 0x7

.field static final TRANSACTION_startIAPInstall:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p0, p0, v0}, Lsafiap/framework/sdk/ISAFFramework$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lsafiap/framework/sdk/ISAFFramework;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "safiap.framework.sdk.ISAFFramework"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lsafiap/framework/sdk/ISAFFramework;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lsafiap/framework/sdk/ISAFFramework;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lsafiap/framework/sdk/ISAFFramework$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lsafiap/framework/sdk/ISAFFramework$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 45
    :sswitch_0
    const-string v3, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v5, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lsafiap/framework/sdk/ISAFFramework$Stub;->hasUpdate()Z

    move-result v2

    .line 52
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 58
    .end local v2    # "_result":Z
    :sswitch_2
    const-string v3, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lsafiap/framework/sdk/ISAFFramework$Stub;->getPluginInfo(Ljava/lang/String;)I

    move-result v2

    .line 62
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_3
    const-string v3, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lsafiap/framework/sdk/ISAFFrameworkCallback$Stub;->asInterface(Landroid/os/IBinder;)Lsafiap/framework/sdk/ISAFFrameworkCallback;

    move-result-object v0

    .line 72
    .local v0, "_arg0":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lsafiap/framework/sdk/ISAFFramework$Stub;->downloadPlugin(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 79
    .end local v0    # "_arg0":Lsafiap/framework/sdk/ISAFFrameworkCallback;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string v5, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lsafiap/framework/sdk/ISAFFramework$Stub;->cancel(Ljava/lang/String;)Z

    move-result v2

    .line 83
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_5
    const-string v5, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lsafiap/framework/sdk/ISAFFramework$Stub;->cancelAll()Z

    move-result v2

    .line 91
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 97
    .end local v2    # "_result":Z
    :sswitch_6
    const-string v3, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lsafiap/framework/sdk/ISAFFramework$Stub;->getFrameworkVersion()I

    move-result v2

    .line 99
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    .end local v2    # "_result":I
    :sswitch_7
    const-string v3, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lsafiap/framework/sdk/ISAFFramework$Stub;->startCheckUpdate(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 114
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_8
    const-string v3, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lsafiap/framework/sdk/ISAFFramework$Stub;->startIAPInstall()V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 121
    :sswitch_9
    const-string v5, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lsafiap/framework/sdk/ISAFFramework$Stub;->checkIAPinstallation()Z

    move-result v2

    .line 123
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 129
    .end local v2    # "_result":Z
    :sswitch_a
    const-string v3, "safiap.framework.sdk.ISAFFramework"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lsafiap/framework/sdk/ISAFFramework$Stub;->getIAPDedicateActionName()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
