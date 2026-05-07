.class public Lcom/gamedo/v360/SmsUtil;
.super Ljava/lang/Object;
.source "SmsUtil.java"


# static fields
.field private static sms:Lcom/gamedo/v360/SmsUtil;


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/gamedo/v360/SmsUtil;->activity:Landroid/app/Activity;

    .line 16
    return-void
.end method

.method private doCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .param p1, "cur"    # Landroid/database/Cursor;

    .prologue
    .line 108
    const/4 v4, 0x0

    .line 109
    .local v4, "smscenter":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 111
    const-string v5, "service_center"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 113
    .local v3, "smscColumn":I
    new-instance v0, Lcom/gamedo/v360/Frequency;

    invoke-direct {v0}, Lcom/gamedo/v360/Frequency;-><init>()V

    .line 114
    .local v0, "fre":Lcom/gamedo/v360/Frequency;
    const/4 v1, 0x0

    .line 116
    .local v1, "index":I
    :cond_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "smsc":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/gamedo/v360/Frequency;->addStatistics(Ljava/lang/String;)V

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x32

    if-lt v1, v5, :cond_0

    .line 120
    :cond_1
    invoke-virtual {v0}, Lcom/gamedo/v360/Frequency;->getMaxValueItem()Lcom/gamedo/v360/Frequency$Entiry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gamedo/v360/Frequency$Entiry;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 122
    .end local v0    # "fre":Lcom/gamedo/v360/Frequency;
    .end local v1    # "index":I
    .end local v2    # "smsc":Ljava/lang/String;
    .end local v3    # "smscColumn":I
    :cond_2
    return-object v4
.end method

.method public static getInstance()Lcom/gamedo/v360/SmsUtil;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/gamedo/v360/SmsUtil;->sms:Lcom/gamedo/v360/SmsUtil;

    return-object v0
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/gamedo/v360/SmsUtil;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 19
    sget-object v0, Lcom/gamedo/v360/SmsUtil;->sms:Lcom/gamedo/v360/SmsUtil;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/gamedo/v360/SmsUtil;

    invoke-direct {v0, p0}, Lcom/gamedo/v360/SmsUtil;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/gamedo/v360/SmsUtil;->sms:Lcom/gamedo/v360/SmsUtil;

    .line 22
    :cond_0
    sget-object v0, Lcom/gamedo/v360/SmsUtil;->sms:Lcom/gamedo/v360/SmsUtil;

    return-object v0
.end method

.method public static getMobileType(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v4, 0x0

    .line 36
    .local v4, "type":I
    :try_start_0
    const-string v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 37
    .local v2, "iPhoneManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "iNumeric":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 40
    const-string v5, "46000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "46002"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 43
    :cond_0
    const/4 v4, 0x1

    .line 56
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "imsi":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    if-nez v4, :cond_3

    .line 59
    const-string v5, "46000"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "46002"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 62
    :cond_2
    const/4 v4, 0x1

    .line 78
    .end local v1    # "iNumeric":Ljava/lang/String;
    .end local v2    # "iPhoneManager":Landroid/telephony/TelephonyManager;
    .end local v3    # "imsi":Ljava/lang/String;
    :cond_3
    :goto_1
    return v4

    .line 45
    .restart local v1    # "iNumeric":Ljava/lang/String;
    .restart local v2    # "iPhoneManager":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v5, "46001"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 48
    const/4 v4, 0x2

    goto :goto_0

    .line 50
    :cond_5
    const-string v5, "46003"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 53
    const/4 v4, 0x3

    goto :goto_0

    .line 64
    .restart local v3    # "imsi":Ljava/lang/String;
    :cond_6
    const-string v5, "46001"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 67
    const/4 v4, 0x2

    goto :goto_1

    .line 69
    :cond_7
    const-string v5, "46003"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 72
    const/4 v4, 0x3

    goto :goto_1

    .line 75
    .end local v1    # "iNumeric":Ljava/lang/String;
    .end local v2    # "iPhoneManager":Landroid/telephony/TelephonyManager;
    .end local v3    # "imsi":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getSmsCenter()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 86
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "service_center"

    aput-object v1, v2, v0

    .line 89
    .local v2, "projection":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/gamedo/v360/SmsUtil;->activity:Landroid/app/Activity;

    .line 90
    const-string v1, "content://sms/inbox"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 91
    const-string v5, "date desc"

    .line 89
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    .local v6, "myCursor":Landroid/database/Cursor;
    invoke-direct {p0, v6}, Lcom/gamedo/v360/SmsUtil;->doCursor(Landroid/database/Cursor;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    .end local v6    # "myCursor":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 96
    goto :goto_0
.end method
