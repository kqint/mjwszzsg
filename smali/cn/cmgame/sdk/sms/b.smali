.class public final Lcn/cmgame/sdk/sms/b;
.super Ljava/lang/Object;
.source "SmsUtils.java"


# static fields
.field public static final iJ:Ljava/lang/String; = "cn.emagsoftware.telephony.SMS_SENT"

.field public static final iK:Ljava/lang/String; = "cn.emagsoftware.telephony.SMS_DELIVERED"

.field private static iL:I

.field private static iM:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput v0, Lcn/cmgame/sdk/sms/b;->iL:I

    .line 20
    sput v0, Lcn/cmgame/sdk/sms/b;->iM:I

    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/sms/SmsSendCallback;II)V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 87
    invoke-static {}, Lcn/cmgame/sdk/sms/c;->dw()Z

    move-result v0

    .line 88
    sget v1, Lcn/cmgame/sdk/sms/b;->iL:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcn/cmgame/sdk/sms/b;->iL:I

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-string v2, "cn.emagsoftware.telephony.SMS_SENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v2, "SMS_TOKEN"

    sget v3, Lcn/cmgame/sdk/sms/b;->iL:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v2, "SMS_TO"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v2, "SMS_TEXT"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 94
    if-eqz p3, :cond_0

    .line 95
    sget v1, Lcn/cmgame/sdk/sms/b;->iL:I

    invoke-virtual {p3, v1}, Lcn/cmgame/sdk/sms/SmsSendCallback;->n(I)V

    .line 96
    new-array v1, v5, [I

    invoke-virtual {p3, v1}, Lcn/cmgame/sdk/sms/SmsSendCallback;->c([I)V

    .line 97
    invoke-virtual {p3, p4}, Lcn/cmgame/sdk/sms/SmsSendCallback;->setTimeout(I)V

    .line 98
    invoke-virtual {p3}, Lcn/cmgame/sdk/sms/SmsSendCallback;->dt()V

    .line 101
    :cond_0
    if-eqz v0, :cond_2

    .line 102
    if-ne p5, v5, :cond_1

    :try_start_0
    const-string v0, "isms2"

    .line 103
    :goto_0
    const-string v1, "android.os.ServiceManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 104
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 105
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 106
    const-string v1, "com.android.internal.telephony.ISms$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 107
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 108
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "sendText"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-class v6, Landroid/app/PendingIntent;

    aput-object v6, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 110
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const/4 v5, 0x0

    aput-object v5, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :goto_1
    return-void

    .line 102
    :cond_1
    const-string v0, "isms"

    goto/16 :goto_0

    .line 112
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 115
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, v7

    move-object v3, p2

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 116
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/sms/a;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 33
    sput v5, Lcn/cmgame/sdk/sms/b;->iM:I

    .line 34
    new-instance v3, Lcn/cmgame/sdk/sms/b$1;

    invoke-direct {v3, p0, p3}, Lcn/cmgame/sdk/sms/b$1;-><init>(Landroid/content/Context;Lcn/cmgame/sdk/sms/a;)V

    .line 61
    invoke-static {}, Lcn/cmgame/sdk/sms/c;->dw()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 62
    invoke-static {v5}, Lcn/cmgame/sdk/sms/c;->q(I)Z

    move-result v0

    .line 63
    invoke-static {v6}, Lcn/cmgame/sdk/sms/c;->q(I)Z

    move-result v1

    .line 64
    if-eqz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    .line 65
    invoke-static/range {v0 .. v5}, Lcn/cmgame/sdk/sms/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/sms/SmsSendCallback;II)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, v6

    .line 67
    invoke-static/range {v0 .. v5}, Lcn/cmgame/sdk/sms/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/sms/SmsSendCallback;II)V

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {p0}, Lcn/cmgame/sdk/e/j;->y(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    .line 71
    invoke-static/range {v0 .. v5}, Lcn/cmgame/sdk/sms/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/sms/SmsSendCallback;II)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/sms/SmsSendCallback;II)V
    .locals 0

    .prologue
    .line 86
    invoke-static/range {p0 .. p5}, Lcn/cmgame/sdk/sms/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/sdk/sms/SmsSendCallback;II)V

    return-void
.end method

.method static synthetic dv()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcn/cmgame/sdk/sms/b;->iM:I

    return v0
.end method

.method static synthetic o(I)V
    .locals 0

    .prologue
    .line 20
    sput p0, Lcn/cmgame/sdk/sms/b;->iM:I

    return-void
.end method
