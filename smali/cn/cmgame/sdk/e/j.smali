.class public Lcn/cmgame/sdk/e/j;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Util"

.field public static kL:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/cmgame/sdk/e/j;->kL:[C

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 718
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 721
    if-nez v0, :cond_1

    .line 722
    const-string v0, "Network"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v0, v2, v4}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v1

    move v3, v1

    .line 739
    :cond_0
    :goto_0
    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    :goto_1
    return v4

    .line 724
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v5

    .line 725
    if-eqz v5, :cond_5

    move v0, v1

    move v2, v1

    move v3, v1

    .line 726
    :goto_2
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 727
    aget-object v6, v5, v0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_2

    .line 728
    aget-object v6, v5, v0

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 729
    const-string v3, "Network"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "network ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcn/cmgame/sdk/e/b$a;->js:Lcn/cmgame/sdk/e/b$a;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v4}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move v3, v4

    .line 726
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 732
    :cond_3
    const-string v2, "Network"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "network ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v5, v0

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] is available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v4}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v4

    .line 733
    goto :goto_3

    :cond_4
    move v4, v1

    .line 739
    goto :goto_1

    :cond_5
    move v2, v1

    move v3, v1

    goto :goto_0
.end method

.method public static B(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 749
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static C(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public static D(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 809
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 810
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 811
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 812
    :goto_0
    if-eqz v0, :cond_0

    .line 813
    const-string v2, "Network"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "network ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/cmgame/sdk/e/f;->dH()Lcn/cmgame/sdk/e/b$a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is connected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 815
    :cond_0
    return v0

    .line 811
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static E(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1071
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1072
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1074
    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v2, v3

    const-string v1, "data1"

    aput-object v1, v2, v4

    const/4 v1, 0x2

    const-string v3, "photo_id"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "contact_id"

    aput-object v3, v2, v1

    .line 1082
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1083
    if-eqz v1, :cond_1

    .line 1084
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_3

    .line 1096
    :cond_1
    if-eqz v1, :cond_2

    .line 1097
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1101
    :cond_2
    :goto_1
    return-object v7

    .line 1085
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1086
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->by(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1089
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1090
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1096
    if-eqz v1, :cond_2

    .line 1097
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1095
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 1096
    :goto_3
    if-eqz v1, :cond_4

    .line 1097
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1099
    :cond_4
    throw v0

    .line 1095
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1093
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_2
.end method

.method public static F(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1138
    .line 1140
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "cn.emagsoftware.gamehall"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1146
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1147
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1150
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 1151
    if-eqz v0, :cond_0

    .line 1152
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1153
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1154
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1155
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1156
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1157
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1160
    :goto_0
    return-object v0

    .line 1141
    :catch_0
    move-exception v0

    .line 1142
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 1143
    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1160
    goto :goto_0
.end method

.method public static G(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1185
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1205
    :goto_0
    return v0

    .line 1188
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 1191
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "GameHall"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1192
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1193
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 1195
    :cond_1
    :try_start_0
    const-string v3, "CMGC/GH.data"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1196
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "GH.apk"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1197
    invoke-static {v1, v3}, Lcn/cmgame/sdk/e/j;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1198
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1200
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 1201
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    const/4 v0, 0x1

    goto :goto_0

    .line 1204
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static H(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    .prologue
    .line 1290
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1292
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1297
    :goto_0
    return-object v0

    .line 1293
    :catch_0
    move-exception v0

    .line 1294
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1295
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/Character;)I
    .locals 3

    .prologue
    .line 966
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcn/cmgame/sdk/e/j;->kL:[C

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 971
    const/4 v0, -0x1

    :cond_0
    return v0

    .line 967
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    move-result v1

    sget-object v2, Lcn/cmgame/sdk/e/j;->kL:[C

    aget-char v2, v2, v0

    if-eq v1, v2, :cond_0

    .line 966
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 313
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 314
    const-string v1, "gc_billing_dialog_information"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 315
    new-instance v2, Lcn/cmgame/sdk/e/j$1;

    invoke-direct {v2, p4}, Lcn/cmgame/sdk/e/j$1;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 320
    new-instance v2, Lcn/cmgame/sdk/e/j$2;

    invoke-direct {v2, p5}, Lcn/cmgame/sdk/e/j$2;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 326
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 328
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcn/cmgame/sdk/e/j;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;
    .locals 6

    .prologue
    .line 392
    const-string v0, "gc_billing_dialog_sure"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    const-string v0, "gc_billing_dialog_clear"

    invoke-static {v0}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcn/cmgame/sdk/e/j;->a(Landroid/content/Context;Ljava/lang/String;IILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 348
    if-nez p1, :cond_0

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 351
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 352
    const-string v1, "gc_billing_dialog_information"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 353
    const-string v2, "gc_billing_dialog_positive"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcn/cmgame/sdk/e/j$3;

    invoke-direct {v3, p2}, Lcn/cmgame/sdk/e/j$3;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 359
    const-string v2, "gc_billing_dialog_neutral"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcn/cmgame/sdk/e/j$4;

    invoke-direct {v3, p3}, Lcn/cmgame/sdk/e/j$4;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 365
    const-string v2, "gc_billing_dialog_cancel"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcn/cmgame/sdk/e/j$5;

    invoke-direct {v3, p4}, Lcn/cmgame/sdk/e/j$5;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 374
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 409
    if-nez p1, :cond_0

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 412
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    const-string v1, "gc_billing_dialog_information"

    invoke-static {v1}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 414
    const-string v2, "gc_billing_dialog_sure"

    invoke-static {v2}, Lcn/cmgame/sdk/e/h;->bi(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcn/cmgame/sdk/e/j$6;

    invoke-direct {v3, p3}, Lcn/cmgame/sdk/e/j$6;-><init>(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 421
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 423
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 864
    if-nez p0, :cond_0

    .line 865
    const-string p0, "android.intent.action.MAIN"

    .line 867
    :cond_0
    if-nez p1, :cond_1

    .line 868
    const-string p1, "android.intent.category.DEFAULT"

    .line 871
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 872
    if-eqz p1, :cond_2

    .line 873
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    :cond_2
    if-eqz p2, :cond_3

    .line 876
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 878
    :cond_3
    if-eqz p3, :cond_4

    .line 879
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 881
    :cond_4
    return-object v0
.end method

.method public static a(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 209
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 210
    new-instance v1, Lcn/cmgame/sdk/e/k;

    invoke-direct {v1, v0}, Lcn/cmgame/sdk/e/k;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 211
    invoke-virtual {v1}, Lcn/cmgame/sdk/e/k;->dS()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 215
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    const-string v1, "Util"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1308
    if-gtz p1, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1324
    :cond_0
    :goto_0
    return-object p0

    .line 1311
    :cond_1
    if-lez p1, :cond_2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1312
    const-string p0, ""

    .line 1313
    :goto_1
    if-ge v0, p1, :cond_0

    .line 1314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1313
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1318
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 1321
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 1322
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static final a(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_1

    :cond_0
    move-object v0, p0

    .line 539
    :goto_0
    return-object v0

    :cond_1
    if-eqz p2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static varargs a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 834
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 842
    :cond_0
    return-object p0

    .line 838
    :cond_1
    if-eqz p1, :cond_2

    const-string v0, "0"

    .line 839
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 840
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v2, p2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    :goto_2
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 839
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 838
    :cond_2
    const-string v0, ""

    goto :goto_0

    .line 840
    :cond_3
    aget-object v2, p2, v1

    goto :goto_2
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 830
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final a(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcn/cmgame/billing/util/Const;->jq:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcn/cmgame/sdk/e/j;->a(Landroid/content/Context;IIZ)V

    .line 250
    return-void
.end method

.method public static final a(Landroid/content/Context;IIZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 233
    if-eqz p3, :cond_0

    .line 234
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 236
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1267
    if-nez p0, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1270
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 263
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 264
    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1210
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1212
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1215
    return-void

    .line 1213
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 773
    if-eqz p2, :cond_0

    .line 774
    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    :cond_0
    return-void

    .line 774
    :cond_1
    const-string p1, "(null)"

    goto :goto_0
.end method

.method public static a(Landroid/net/NetworkInfo$State;)Z
    .locals 1

    .prologue
    .line 826
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/graphics/drawable/BitmapDrawable;)[B
    .locals 1

    .prologue
    .line 566
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->e(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/io/File;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1171
    if-nez p0, :cond_0

    .line 1172
    const/4 v0, 0x0

    .line 1181
    :goto_0
    return-object v0

    .line 1173
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1174
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1175
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1176
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1177
    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 1178
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    :cond_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 464
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 470
    :goto_0
    return-object v0

    .line 466
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 470
    goto :goto_0

    .line 466
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 467
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public static b(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 700
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    :cond_0
    :goto_0
    return-object v0

    .line 702
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 704
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 706
    add-int/lit8 v0, v2, 0x7

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 707
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final b(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/cmgame/sdk/e/j;->a(Landroid/content/Context;II)V

    .line 276
    return-void
.end method

.method private static bo(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 95
    invoke-static {p0}, Lcn/cmgame/sdk/e/h;->bj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 100
    :cond_0
    return v0
.end method

.method public static bp(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 174
    :try_start_0
    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 175
    const-string v3, ""

    .line 176
    const-string v0, ""

    move v4, v2

    .line 177
    :goto_0
    array-length v1, v5

    if-lt v4, v1, :cond_0

    .line 185
    new-instance v1, Lcn/cmgame/sdk/d/b;

    invoke-direct {v1}, Lcn/cmgame/sdk/d/b;-><init>()V

    .line 186
    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Lcn/cmgame/sdk/d/b;->setStatus(I)V

    .line 187
    invoke-virtual {v1, v0}, Lcn/cmgame/sdk/d/b;->setMessage(Ljava/lang/String;)V

    move-object v0, v1

    .line 191
    :goto_2
    return-object v0

    .line 178
    :cond_0
    aget-object v1, v5, v4

    const-string v6, "hRet"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    aget-object v1, v5, v4

    aget-object v3, v5, v4

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    :goto_3
    aget-object v3, v5, v4

    const-string v6, "status"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 182
    aget-object v0, v5, v4

    aget-object v3, v5, v4

    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :cond_1
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v1

    goto :goto_0

    .line 186
    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 191
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_3
.end method

.method public static bq(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 197
    :try_start_0
    new-instance v0, Lcn/cmgame/sdk/d/b;

    invoke-direct {v0}, Lcn/cmgame/sdk/d/b;-><init>()V

    .line 198
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/cmgame/sdk/d/b;->setStatus(I)V

    .line 199
    invoke-virtual {v0, p0}, Lcn/cmgame/sdk/d/b;->setMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return-object v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static br(Ljava/lang/String;)Ljava/text/DateFormat;
    .locals 1

    .prologue
    .line 481
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 482
    return-object v0
.end method

.method public static final bs(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .prologue
    .line 505
    :try_start_0
    sget-object v0, Lcn/cmgame/billing/util/Const;->jq:Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 507
    :goto_0
    return-object v0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final bt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 512
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-object p0

    .line 514
    :cond_1
    invoke-static {p0}, Lcn/cmgame/sdk/e/j;->bs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 515
    if-eqz v0, :cond_0

    sget-object v1, Lcn/cmgame/billing/util/Const;->jo:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static final bu(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 519
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-object p0

    .line 521
    :cond_1
    invoke-static {p0}, Lcn/cmgame/sdk/e/j;->bs(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_0

    sget-object v1, Lcn/cmgame/billing/util/Const;->jp:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static bv(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 847
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 850
    :goto_0
    return-object v0

    .line 848
    :catch_0
    move-exception v0

    .line 849
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 850
    const-string v0, "0"

    goto :goto_0
.end method

.method public static bw(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 937
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->d(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 939
    :goto_0
    return-object v0

    .line 938
    :catch_0
    move-exception v0

    .line 939
    const-string v0, "@@@@@@@@@"

    goto :goto_0
.end method

.method public static bx(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 949
    const-wide/16 v3, 0x1

    .line 950
    const-wide/16 v1, 0x0

    .line 952
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 957
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 953
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    .line 954
    invoke-static {v5}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/Character;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    int-to-long v5, v5

    mul-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 955
    const-wide/16 v5, 0x3e

    mul-long/2addr v3, v5

    .line 952
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static by(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 1112
    const-string v0, "^(\\+?[8][6])?\\d{11}$"

    .line 1113
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1114
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->z()Lcn/cmgame/billing/b/c;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1115
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/api/a;->z()Lcn/cmgame/billing/b/c;

    move-result-object v1

    invoke-virtual {v1}, Lcn/cmgame/billing/b/c;->aK()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1116
    invoke-static {}, Lcn/cmgame/billing/api/a;->n()Lcn/cmgame/billing/api/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/api/a;->z()Lcn/cmgame/billing/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/cmgame/billing/b/c;->aK()Ljava/lang/String;

    move-result-object v0

    .line 1118
    :cond_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1119
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1120
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1121
    const/4 v0, 0x0

    .line 1123
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static bz(Ljava/lang/String;)Lcn/cmgame/billing/b/k;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1225
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1242
    :goto_0
    return-object v0

    .line 1229
    :cond_0
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 1230
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1231
    new-instance v2, Ljava/io/StringReader;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1232
    new-instance v2, Lcn/cmgame/sdk/e/k;

    invoke-direct {v2, v0}, Lcn/cmgame/sdk/e/k;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1233
    invoke-virtual {v2}, Lcn/cmgame/sdk/e/k;->dS()Ljava/lang/Object;

    move-result-object v0

    .line 1235
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcn/cmgame/billing/b/k;

    if-eqz v2, :cond_1

    .line 1236
    check-cast v0, Lcn/cmgame/billing/b/k;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1239
    :catch_0
    move-exception v0

    .line 1240
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_1
    :goto_1
    move-object v0, v1

    .line 1242
    goto :goto_0

    .line 1238
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static final c(Landroid/content/Context;I)[B
    .locals 4

    .prologue
    .line 601
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 602
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 603
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 604
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static d(J)Ljava/lang/String;
    .locals 7

    .prologue
    const-wide/16 v5, 0x3e

    .line 912
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 913
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 914
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    .line 918
    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 921
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v2, 0x9

    if-le v0, v2, :cond_2

    .line 922
    const-string v0, "@@@@@@@@@"

    .line 927
    :goto_2
    return-object v0

    .line 915
    :cond_0
    sget-object v2, Lcn/cmgame/sdk/e/j;->kL:[C

    rem-long v3, p0, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 916
    div-long/2addr p0, v5

    goto :goto_0

    .line 919
    :cond_1
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 924
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 925
    const-string v0, "@@@@@@@@@"

    goto :goto_2

    .line 927
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public static dN()Z
    .locals 1

    .prologue
    .line 78
    const-string v0, "gc_billing_islow_version"

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->bo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static dO()Z
    .locals 1

    .prologue
    .line 86
    const-string v0, "gc_billing_is_no_network_tip"

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->bo(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static dP()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1052
    const/4 v1, 0x0

    .line 1054
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1055
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1056
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ro.serialno"

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_0
    return-object v0

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static dQ()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1277
    const-string v0, ""

    .line 1279
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1280
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcn/cmgame/sdk/e/b;->jn:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "||Emag@12"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 1281
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcn/cmgame/sdk/e/a;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1285
    :goto_0
    return-object v0

    .line 1282
    :catch_0
    move-exception v1

    .line 1283
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static dR()Z
    .locals 2

    .prologue
    .line 1301
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    const/4 v0, 0x1

    .line 1304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final e(Landroid/graphics/Bitmap;)[B
    .locals 3

    .prologue
    .line 550
    if-nez p0, :cond_0

    .line 551
    const/4 v0, 0x0

    .line 555
    :goto_0
    return-object v0

    .line 553
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 554
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 555
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 113
    .line 116
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 117
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    const/16 v0, 0x200

    :try_start_2
    new-array v0, v0, [B

    .line 120
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-gt v4, v5, :cond_2

    .line 123
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 130
    if-eqz v3, :cond_0

    .line 132
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 139
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    .line 141
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 148
    :cond_1
    :goto_2
    return-object v0

    .line 121
    :cond_2
    const/4 v5, 0x0

    :try_start_5
    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_b
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    .line 126
    :goto_3
    :try_start_6
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cannot find file : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 130
    if-eqz v2, :cond_3

    .line 132
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 139
    :cond_3
    :goto_4
    if-eqz v0, :cond_4

    .line 141
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    :goto_5
    move-object v0, v1

    .line 148
    goto :goto_2

    .line 133
    :catch_1
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 142
    :catch_2
    move-exception v1

    .line 143
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 133
    :catch_3
    move-exception v2

    .line 134
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 142
    :catch_4
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 127
    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 128
    :goto_6
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 130
    if-eqz v3, :cond_5

    .line 132
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 139
    :cond_5
    :goto_7
    if-eqz v2, :cond_4

    .line 141
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_5

    .line 142
    :catch_6
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 133
    :catch_7
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 129
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 130
    :goto_8
    if-eqz v3, :cond_6

    .line 132
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 139
    :cond_6
    :goto_9
    if-eqz v2, :cond_7

    .line 141
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 147
    :cond_7
    :goto_a
    throw v0

    .line 133
    :catch_8
    move-exception v1

    .line 134
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 142
    :catch_9
    move-exception v1

    .line 143
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 129
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_8

    .line 127
    :catch_a
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catch_b
    move-exception v0

    goto :goto_6

    .line 125
    :catch_c
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_3

    :catch_d
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto :goto_3
.end method

.method public static final i(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/cmgame/sdk/e/j;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 288
    return-void
.end method

.method public static j([B)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 153
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Response.xml="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hRet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->bp(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 158
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "cmcc_emag"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->bq(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 163
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 164
    new-instance v0, Lcn/cmgame/sdk/e/k;

    invoke-direct {v0, v1}, Lcn/cmgame/sdk/e/k;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 165
    invoke-virtual {v0}, Lcn/cmgame/sdk/e/k;->dS()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 894
    if-nez p0, :cond_0

    .line 902
    :goto_0
    return-void

    .line 897
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0, v1, v2}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 898
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 899
    :catch_0
    move-exception v0

    .line 900
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final k([B)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 577
    if-nez p0, :cond_0

    .line 582
    :goto_0
    return-object v0

    .line 580
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final l([B)Ljava/lang/ref/SoftReference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 587
    invoke-static {p0}, Lcn/cmgame/sdk/e/j;->k([B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 588
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static l(Ljava/util/List;)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1127
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 1128
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move v1, v2

    .line 1130
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_0

    .line 1134
    return-object v3

    .line 1131
    :cond_0
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1132
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static m([B)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1248
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, p0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v1

    .line 1250
    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    .line 1257
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1252
    :cond_0
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 1253
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 1254
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1255
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 762
    return-void
.end method

.method public static s(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 856
    int-to-float v0, p0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 859
    :goto_0
    return-object v0

    .line 857
    :catch_0
    move-exception v0

    .line 858
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 859
    const-string v0, "0"

    goto :goto_0
.end method

.method public static u(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static v(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 615
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 616
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

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

.method public static w(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 628
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static x(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 639
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 641
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 643
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 646
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 647
    const/4 v0, 0x1

    .line 648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static y(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 660
    invoke-static {p0}, Lcn/cmgame/sdk/e/j;->v(Landroid/content/Context;)Z

    move-result v0

    .line 661
    invoke-static {p0}, Lcn/cmgame/sdk/e/j;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "46000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v3, :cond_1

    const-string v2, "46002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gt v2, v3, :cond_1

    const-string v2, "46007"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v3, :cond_1

    .line 663
    :cond_0
    const/4 v0, 0x0

    .line 665
    :cond_1
    return v0
.end method

.method public static z(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 675
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 676
    if-nez v0, :cond_1

    .line 677
    const-string v0, "Network"

    const-string v1, "couldn\'t get connectivity manager"

    invoke-static {v0, v1, v5}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 689
    :cond_0
    const-string v0, "Network"

    const-string v1, "network is not available"

    invoke-static {v0, v1, v5}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 690
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 679
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v1

    .line 680
    if-eqz v1, :cond_0

    .line 681
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 682
    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2

    .line 683
    const-string v2, "Network"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "network ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v1, v0

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 684
    aget-object v0, v1, v0

    invoke-static {v0}, Lcn/cmgame/sdk/e/j;->b(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 681
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
