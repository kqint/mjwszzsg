.class public Lsafiap/framework/data/LocalRecord;
.super Ljava/lang/Object;
.source "LocalRecord.java"


# static fields
.field private static final KEY_IGNORED_UPDATE:Ljava/lang/String; = "ignored_update"

.field private static final SPLIT:Ljava/lang/String; = "_"

.field private static sLogger:Lsafiap/framework/util/MyLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const-string v0, "LocalRecord"

    invoke-static {v0}, Lsafiap/framework/util/MyLogger;->getLogger(Ljava/lang/String;)Lsafiap/framework/util/MyLogger;

    move-result-object v0

    sput-object v0, Lsafiap/framework/data/LocalRecord;->sLogger:Lsafiap/framework/util/MyLogger;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ignoreUpdate(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "version"    # I

    .prologue
    const/4 v8, 0x0

    .line 25
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    if-gez p2, :cond_1

    .line 26
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/String;

    .line 27
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "action can\'t be null or empty, and version should be no less than 0, but actually, action is "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 29
    const-string v12, "while version is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 27
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 32
    :cond_1
    sget-object v9, Lsafiap/framework/data/LocalRecord;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "ignoreUpdate, action: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", version: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 35
    const-string v9, "ignored_update"

    .line 34
    invoke-virtual {p0, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 37
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v9, ""

    invoke-interface {v4, p1, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, "versionsStr":Ljava/lang/String;
    const-string v9, "_"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 41
    .local v6, "versions":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 42
    .local v2, "found":Z
    array-length v9, v6

    :goto_0
    if-lt v8, v9, :cond_2

    .line 55
    :goto_1
    if-eqz v2, :cond_4

    .line 57
    const/4 v8, 0x1

    .line 66
    :goto_2
    return v8

    .line 42
    :cond_2
    aget-object v5, v6, v8

    .line 44
    .local v5, "versionStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 46
    .local v3, "intVersion":I
    if-ne v3, p2, :cond_3

    .line 47
    const/4 v2, 0x1

    goto :goto_1

    .line 50
    .end local v3    # "intVersion":I
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 42
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 61
    .end local v5    # "versionStr":Ljava/lang/String;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 63
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 64
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v1, p1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 66
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v8

    goto :goto_2
.end method

.method public static isUpdateIgnored(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-gez p2, :cond_1

    .line 82
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/String;

    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "action can\'t be null or empty, and version should be no less than 0, but actually, action is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 85
    const-string v10, "while version is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 88
    :cond_1
    sget-object v8, Lsafiap/framework/data/LocalRecord;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isUpdateIgnored...start, action: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 91
    const-string v8, "ignored_update"

    .line 90
    invoke-virtual {p0, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 92
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v8, ""

    invoke-interface {v3, p1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "versionsStr":Ljava/lang/String;
    sget-object v8, Lsafiap/framework/data/LocalRecord;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "versonsStr: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 95
    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, "versions":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 98
    .local v1, "found":Z
    array-length v8, v5

    :goto_0
    if-lt v7, v8, :cond_2

    .line 114
    :goto_1
    return v1

    .line 98
    :cond_2
    aget-object v4, v5, v7

    .line 99
    .local v4, "versionStr":Ljava/lang/String;
    sget-object v9, Lsafiap/framework/data/LocalRecord;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "versionStr: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 101
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 102
    .local v2, "intVersion":I
    sget-object v9, Lsafiap/framework/data/LocalRecord;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "consider version: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 103
    if-ne v2, p2, :cond_3

    .line 104
    const/4 v1, 0x1

    .line 106
    sget-object v9, Lsafiap/framework/data/LocalRecord;->sLogger:Lsafiap/framework/util/MyLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "found, version: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 109
    .end local v2    # "intVersion":I
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 98
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static recoverUpdate(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    if-gez p2, :cond_1

    .line 129
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/String;

    .line 130
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "action can\'t be null or empty, and version should be no less than 0, but actually, action is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 132
    const-string v10, "while version is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 130
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 136
    :cond_1
    const-string v8, "ignored_update"

    .line 135
    invoke-virtual {p0, v8, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 138
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v8, ""

    invoke-interface {v3, p1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 139
    .local v6, "versionsStr":Ljava/lang/String;
    const-string v8, "_"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "versions":[Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "currentVersionStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v8, 0xc8

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 144
    .local v2, "newVersionsStr":Ljava/lang/StringBuilder;
    array-length v8, v5

    :goto_0
    if-lt v7, v8, :cond_2

    .line 151
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 152
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, p1, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 154
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v7

    return v7

    .line 144
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    aget-object v4, v5, v7

    .line 145
    .local v4, "versionStr":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 147
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
