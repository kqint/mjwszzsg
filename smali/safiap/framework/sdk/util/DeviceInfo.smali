.class public Lsafiap/framework/sdk/util/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final FLAG_IMEI:Ljava/lang/String; = "imei"

.field private static final FLAG_MAC:Ljava/lang/String; = "mac"

.field private static final KEY_PREF:Ljava/lang/String; = "saf_framework"

.field private static final TAG:Ljava/lang/String; = "DeviceInfo"

.field private static sDeviceModel:Ljava/lang/String;

.field private static sLogger:Lsafiap/framework/util/MyLogger;

.field private static sManufacturer:Ljava/lang/String;

.field private static sVersion:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImsiNumber:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "DeviceInfo"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/sdk/util/DeviceInfo;->sLogger:Lsafiap/framework/util/MyLogger;

    .line 23
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lsafiap/framework/sdk/util/DeviceInfo;->sManufacturer:Ljava/lang/String;

    .line 24
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lsafiap/framework/sdk/util/DeviceInfo;->sDeviceModel:Ljava/lang/String;

    .line 25
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lsafiap/framework/sdk/util/DeviceInfo;->sVersion:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    if-nez p1, :cond_0

    .line 31
    sget-object v0, Lsafiap/framework/sdk/util/DeviceInfo;->sLogger:Lsafiap/framework/util/MyLogger;

    const-string v1, "Incoming Context is null!"

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iput-object p1, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lsafiap/framework/sdk/util/DeviceInfo;->sDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method private getIMEIfromDevice()Ljava/lang/String;
    .locals 4

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "imei":Ljava/lang/String;
    iget-object v1, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_0
    sget-object v1, Lsafiap/framework/sdk/util/DeviceInfo;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IMEI="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 53
    return-object v0
.end method

.method private getIMEIfromLocal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    iget-object v1, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v2, "saf_framework"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "imei"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMACfromDevice()Ljava/lang/String;
    .locals 5

    .prologue
    .line 118
    iget-object v3, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 119
    .local v2, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 120
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    const/4 v1, 0x0

    .line 121
    .local v1, "mac":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 127
    :cond_0
    return-object v1
.end method

.method private getMACfromLocal()Ljava/lang/String;
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v2, "saf_framework"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 143
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, "mac"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lsafiap/framework/sdk/util/DeviceInfo;->sManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lsafiap/framework/sdk/util/DeviceInfo;->sVersion:Ljava/lang/String;

    return-object v0
.end method

.method private saveIMEItoLocal(Ljava/lang/String;)Z
    .locals 5
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-eq v3, v4, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v2

    .line 61
    :cond_1
    iget-object v3, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v4, "saf_framework"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 62
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "imei"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method

.method private saveMACtoLocal(Ljava/lang/String;)Z
    .locals 5
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v2

    .line 135
    :cond_1
    iget-object v3, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mContext:Landroid/content/Context;

    const-string v4, "saf_framework"

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 136
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "mac"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public getIMEI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Lsafiap/framework/sdk/util/DeviceInfo;->getIMEIfromLocal()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-direct {p0}, Lsafiap/framework/sdk/util/DeviceInfo;->getIMEIfromDevice()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lsafiap/framework/sdk/util/DeviceInfo;->saveIMEItoLocal(Ljava/lang/String;)Z

    .line 44
    :cond_0
    return-object v0
.end method

.method public getIMSIfromCard()Ljava/lang/String;
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mImsiNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mImsiNumber:Ljava/lang/String;

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mImsiNumber:Ljava/lang/String;

    .line 80
    :cond_1
    sget-object v0, Lsafiap/framework/sdk/util/DeviceInfo;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIMSINumber get from card = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mImsiNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->d(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lsafiap/framework/sdk/util/DeviceInfo;->mImsiNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMAC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    invoke-direct {p0}, Lsafiap/framework/sdk/util/DeviceInfo;->getMACfromLocal()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "mac":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-direct {p0}, Lsafiap/framework/sdk/util/DeviceInfo;->getMACfromDevice()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-direct {p0, v0}, Lsafiap/framework/sdk/util/DeviceInfo;->saveMACtoLocal(Ljava/lang/String;)Z

    .line 114
    :cond_0
    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 147
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/DeviceInfo;->getMAC()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "uid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/DeviceInfo;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 150
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lsafiap/framework/sdk/util/DeviceInfo;->getIMSIfromCard()Ljava/lang/String;

    move-result-object v0

    .line 152
    if-nez v0, :cond_0

    .line 153
    const-string v0, ""

    .line 157
    :cond_0
    invoke-static {v0}, Lsafiap/framework/sdk/util/AuthUtil;->getBase64MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
