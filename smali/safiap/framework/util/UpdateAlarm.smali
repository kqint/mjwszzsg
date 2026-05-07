.class public Lsafiap/framework/util/UpdateAlarm;
.super Ljava/lang/Object;
.source "UpdateAlarm.java"


# static fields
.field public static DEFAULT_UPDATE_FREQUENCY:I

.field public static MIN_UPDATE_FREQUENCY:I

.field private static logger:Lsafiap/framework/util/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/16 v0, 0x2760

    sput v0, Lsafiap/framework/util/UpdateAlarm;->MIN_UPDATE_FREQUENCY:I

    .line 26
    const/16 v0, 0x5a0

    sput v0, Lsafiap/framework/util/UpdateAlarm;->DEFAULT_UPDATE_FREQUENCY:I

    .line 213
    const-string v0, "UpdateAlarm"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/util/UpdateAlarm;->logger:Lsafiap/framework/util/MyLogger;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAlarm(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 136
    .line 137
    const-string v5, "alarm"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 136
    check-cast v0, Landroid/app/AlarmManager;

    .line 139
    .local v0, "am":Landroid/app/AlarmManager;
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lsafiap/framework/CheckUpdateReceiver;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0, v6, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 143
    .local v4, "sender":Landroid/app/PendingIntent;
    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 159
    const-string v5, "safiap.framework_preferences"

    .line 158
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 161
    .local v3, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 162
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "timer"

    const/4 v6, -0x1

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    return-void
.end method

.method public static initTimer(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    sget-object v0, Lsafiap/framework/util/UpdateAlarm;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initTimer...start, context.package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 210
    sget v0, Lsafiap/framework/util/UpdateAlarm;->DEFAULT_UPDATE_FREQUENCY:I

    invoke-static {p0, v0}, Lsafiap/framework/util/UpdateAlarm;->setAlarmByMinutes(Landroid/content/Context;I)Z

    .line 211
    return-void
.end method

.method public static isTimerInitialed(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 199
    .line 200
    const-string v3, "safiap.framework_preferences"

    .line 199
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 202
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string v3, "timer"

    const/4 v4, -0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 204
    .local v0, "minutes":I
    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static setAlarm(Landroid/content/Context;I)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "frequency"    # I

    .prologue
    const-wide/32 v8, 0x240c8400

    const-wide/32 v4, 0x5265c00

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 31
    invoke-static {p0}, Lsafiap/framework/util/UpdateAlarm;->cancelAlarm(Landroid/content/Context;)V

    .line 33
    new-instance v7, Landroid/content/Intent;

    const-class v3, Lsafiap/framework/CheckUpdateReceiver;

    invoke-direct {v7, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    .local v7, "intent":Landroid/content/Intent;
    invoke-static {p0, v2, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 39
    .local v6, "sender":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Landroid/app/AlarmManager;

    .line 41
    .local v0, "am":Landroid/app/AlarmManager;
    packed-switch p1, :pswitch_data_0

    .line 57
    :pswitch_0
    if-lez p1, :cond_0

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    .line 58
    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 63
    :goto_0
    :pswitch_1
    return v1

    .line 43
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 44
    add-long/2addr v2, v4

    .line 43
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 48
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 49
    add-long/2addr v2, v8

    move-wide v4, v8

    .line 48
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    move v1, v2

    .line 63
    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static setAlarmByMinutes(Landroid/content/Context;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "minutes"    # I

    .prologue
    const v11, 0xea60

    const/4 v1, 0x1

    const/4 v10, 0x0

    .line 69
    sget-object v2, Lsafiap/framework/util/UpdateAlarm;->logger:Lsafiap/framework/util/MyLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setAlarmByHours...start, context.getPackageName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", minutes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 71
    if-gtz p1, :cond_0

    move v1, v10

    .line 130
    :goto_0
    return v1

    .line 76
    :cond_0
    invoke-static {p0}, Lsafiap/framework/util/UpdateAlarm;->cancelAlarm(Landroid/content/Context;)V

    .line 78
    new-instance v8, Landroid/content/Intent;

    const-string v2, "safiap.framework.ACTION_SET_TIMER"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    .local v8, "nextIntent":Landroid/content/Intent;
    sget-object v2, Lsafiap/framework/CheckUpdateReceiver;->KEY_UPDATE_ITEM_COUNT:Ljava/lang/String;

    const/16 v3, -0x64

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    sget-object v2, Lsafiap/framework/CheckUpdateReceiver;->KEY_SENDER_PACKAGE:Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const/high16 v2, 0x8000000

    .line 83
    invoke-static {p0, v10, v8, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 88
    .local v6, "sender":Landroid/app/PendingIntent;
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    check-cast v0, Landroid/app/AlarmManager;

    .line 91
    .local v0, "am":Landroid/app/AlarmManager;
    if-lez p1, :cond_1

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 93
    mul-int v4, p1, v11

    int-to-long v4, v4

    add-long/2addr v2, v4

    mul-int v4, p1, v11

    int-to-long v4, v4

    .line 92
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 121
    const-string v2, "safiap.framework_preferences"

    .line 120
    invoke-virtual {p0, v2, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 123
    .local v9, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 124
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "timer"

    invoke-interface {v7, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "preference":Landroid/content/SharedPreferences;
    :cond_1
    move v1, v10

    .line 130
    goto :goto_0
.end method
