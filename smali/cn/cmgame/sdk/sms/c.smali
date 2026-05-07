.class public final Lcn/cmgame/sdk/sms/c;
.super Ljava/lang/Object;
.source "TelephonyMgr.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method private static aR(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 96
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 97
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-object v0, v0, v3

    .line 100
    :cond_0
    const-string v3, "ABSENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 114
    :goto_0
    return v0

    .line 102
    :cond_1
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    const/4 v0, 0x2

    goto :goto_0

    .line 104
    :cond_2
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 105
    const/4 v0, 0x3

    goto :goto_0

    .line 106
    :cond_3
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    const/4 v0, 0x4

    goto :goto_0

    .line 108
    :cond_4
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    const/4 v0, 0x5

    goto :goto_0

    :cond_5
    move v0, v2

    .line 111
    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    move v0, v2

    .line 114
    goto :goto_0
.end method

.method public static dA()Z
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lcn/cmgame/sdk/sms/c;->dy()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dw()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcn/cmgame/sdk/sms/c;->p(I)Ljava/lang/String;

    move-result-object v2

    .line 20
    const/4 v3, 0x1

    invoke-static {v3}, Lcn/cmgame/sdk/sms/c;->p(I)Ljava/lang/String;

    move-result-object v3

    .line 21
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 26
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    move v0, v1

    .line 26
    goto :goto_0
.end method

.method public static dx()I
    .locals 1

    .prologue
    .line 82
    const-string v0, "gsm.sim.state"

    invoke-static {v0}, Lcn/cmgame/sdk/sms/c;->aR(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static dy()I
    .locals 1

    .prologue
    .line 86
    const-string v0, "gsm.sim.state_2"

    invoke-static {v0}, Lcn/cmgame/sdk/sms/c;->aR(Ljava/lang/String;)I

    move-result v0

    .line 87
    if-nez v0, :cond_0

    .line 88
    const-string v0, "gsm.sim.state_1"

    invoke-static {v0}, Lcn/cmgame/sdk/sms/c;->aR(Ljava/lang/String;)I

    move-result v0

    .line 90
    :cond_0
    return v0
.end method

.method public static dz()Z
    .locals 2

    .prologue
    .line 119
    invoke-static {}, Lcn/cmgame/sdk/sms/c;->dx()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 31
    .line 32
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 33
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const-string v0, "@@@@@@@@@"

    .line 37
    :cond_0
    return-object v0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const/4 v1, 0x0

    .line 42
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 43
    invoke-static {}, Lcn/cmgame/sdk/sms/c;->dw()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 44
    invoke-static {v3}, Lcn/cmgame/sdk/sms/c;->q(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 45
    invoke-static {v3}, Lcn/cmgame/sdk/sms/c;->p(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 55
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    const-string v1, "0"

    .line 58
    :cond_2
    return-object v1

    .line 46
    :cond_3
    invoke-static {v4}, Lcn/cmgame/sdk/sms/c;->q(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-static {v4}, Lcn/cmgame/sdk/sms/c;->p(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_4
    invoke-static {v3}, Lcn/cmgame/sdk/sms/c;->p(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static p(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 62
    .line 63
    if-ne p0, v7, :cond_1

    const-string v0, "iphonesubinfo2"

    .line 65
    :goto_0
    :try_start_0
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 66
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    if-nez v0, :cond_0

    if-ne p0, v7, :cond_0

    .line 69
    const/4 v0, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "iphonesubinfo1"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :cond_0
    if-nez v0, :cond_2

    move-object v0, v1

    .line 77
    :goto_1
    return-object v0

    .line 63
    :cond_1
    const-string v0, "iphonesubinfo"

    goto :goto_0

    .line 72
    :cond_2
    :try_start_1
    const-string v2, "com.android.internal.telephony.IPhoneSubInfo$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 73
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 74
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getSubscriberId"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 77
    goto :goto_1
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-static {}, Lcn/cmgame/sdk/sms/c;->dw()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    const/4 v1, 0x0

    invoke-static {v1}, Lcn/cmgame/sdk/sms/c;->q(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcn/cmgame/sdk/sms/c;->q(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    invoke-static {p0}, Lcn/cmgame/sdk/e/j;->y(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 139
    :cond_2
    invoke-static {p0}, Lcn/cmgame/sdk/e/j;->y(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static q(I)Z
    .locals 2

    .prologue
    .line 127
    invoke-static {p0}, Lcn/cmgame/sdk/sms/c;->p(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "46000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "46007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
