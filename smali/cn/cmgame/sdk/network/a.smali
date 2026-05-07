.class public Lcn/cmgame/sdk/network/a;
.super Ljava/lang/Object;
.source "APNSetting.java"


# static fields
.field private static final PORT:Ljava/lang/String; = "80"

.field public static final TAG:Ljava/lang/String; = "APNSetting"

.field public static final hf:Ljava/lang/String; = "cmwap"

.field public static final hg:Ljava/lang/String; = "cmnet"

.field public static final hh:Ljava/lang/String; = "none"

.field public static final hi:Ljava/lang/String; = "apn_id"

.field public static final hj:Ljava/lang/String; = "CMCC_CMWAP"

.field private static final hk:Ljava/lang/String; = "460"

.field private static final hl:Ljava/lang/String; = "00"

.field private static final hm:Ljava/lang/String; = "02"

.field private static final hn:Ljava/lang/String; = "07"

.field private static final ho:Ljava/lang/String; = "10.0.0.172"

.field private static final hp:Ljava/lang/String; = "default"

.field private static hq:Ljava/lang/String;

.field private static final hr:Landroid/net/Uri;

.field private static final hs:Landroid/net/Uri;

.field private static ht:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    .line 43
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/cmgame/sdk/network/a;->hr:Landroid/net/Uri;

    .line 45
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/cmgame/sdk/network/a;->hs:Landroid/net/Uri;

    .line 47
    const/4 v0, 0x0

    sput v0, Lcn/cmgame/sdk/network/a;->ht:I

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILandroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 392
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 393
    const-string v2, "apn_id"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcn/cmgame/sdk/network/a;->hs:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static aH(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 102
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 109
    :cond_0
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static aI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 120
    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 127
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static aJ(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 426
    sput-object p0, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 158
    .line 159
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/cmgame/sdk/network/a;->hr:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 161
    invoke-static {p0}, Lcn/cmgame/sdk/network/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 162
    const-string v0, ""

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 165
    invoke-static {v1}, Lcn/cmgame/sdk/network/a;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 168
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v7

    .line 190
    :goto_1
    if-eqz v2, :cond_2

    .line 191
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    move v7, v0

    .line 196
    :goto_2
    return v7

    .line 169
    :cond_3
    const-string v0, "name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    const-string v0, "apn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v4, "proxy"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 172
    const-string v5, "port"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 173
    const-string v8, "type"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 174
    const-string v9, "mcc"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 175
    const-string v10, "mnc"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 176
    const-string v11, "current"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 178
    const-string v12, "cmwap"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "10.0.0.172"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    const-string v0, "80"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    const-string v0, "460"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 181
    if-eqz v8, :cond_5

    const-string v0, "default"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    move v0, v6

    .line 182
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 183
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    move v0, v6

    .line 185
    :cond_4
    :goto_4
    if-eqz v0, :cond_0

    move v0, v6

    .line 187
    goto/16 :goto_1

    :cond_5
    move v0, v7

    .line 181
    goto :goto_3

    :cond_6
    move v0, v7

    .line 183
    goto :goto_4

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 201
    .line 202
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/cmgame/sdk/network/a;->hr:Landroid/net/Uri;

    const-string v3, "mcc = \'460\'"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 204
    invoke-static {p0}, Lcn/cmgame/sdk/network/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 205
    const-string v0, ""

    .line 207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 208
    invoke-static {v1}, Lcn/cmgame/sdk/network/a;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 211
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    :cond_1
    if-eqz v2, :cond_2

    .line 232
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_2
    return-object v8

    .line 212
    :cond_3
    const-string v0, "port"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v3, "type"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 214
    const-string v4, "name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 215
    const-string v5, "apn"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 216
    const-string v9, "mnc"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 217
    const-string v10, "current"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 219
    const-string v11, "cmwap"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "80"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 220
    if-eqz v3, :cond_5

    const-string v0, "default"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    .line 221
    const-string v0, "1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 222
    if-eqz v1, :cond_5

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    .line 223
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 224
    const-string v3, "CMCC_CMWAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    move v0, v6

    .line 226
    :cond_4
    :goto_2
    if-eqz v0, :cond_0

    .line 227
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 228
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    move v0, v7

    .line 222
    goto :goto_1

    :cond_6
    move v0, v7

    .line 224
    goto :goto_2

    :cond_7
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public static df()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    sget-object v0, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    return-object v0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 350
    .line 352
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/cmgame/sdk/network/a;->hr:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "apn = ? and current = 1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 353
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 354
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 357
    if-eqz v1, :cond_0

    .line 358
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_0
    :goto_0
    return v0

    .line 356
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 357
    :goto_1
    if-eqz v1, :cond_1

    .line 358
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_1
    throw v0

    .line 357
    :cond_2
    if-eqz v1, :cond_3

    .line 358
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 361
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 356
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static f(Landroid/content/Context;)I
    .locals 7

    .prologue
    .line 53
    const/4 v6, 0x0

    .line 54
    const-string v0, "Network"

    const-string v1, "create a new apn:cmcc_cmwap"

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lcn/cmgame/sdk/network/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 57
    const-string v2, "name"

    const-string v3, "CMCC_CMWAP"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcn/cmgame/sdk/network/a;->aH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/cmgame/sdk/network/a;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "mcc"

    invoke-static {v0}, Lcn/cmgame/sdk/network/a;->aH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "mnc"

    invoke-static {v0}, Lcn/cmgame/sdk/network/a;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "apn"

    const-string v2, "cmwap"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "proxy"

    const-string v2, "10.0.0.172"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "port"

    const-string v2, "80"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "type"

    const-string v2, "default"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "current"

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcn/cmgame/sdk/network/a;->hr:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 70
    if-eqz v2, :cond_0

    .line 71
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 72
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 73
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 75
    :goto_0
    const-string v2, "Network"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CMCC_WAP.uri="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " and id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_1
    return v0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    const/4 v0, -0x1

    goto :goto_1

    :cond_0
    move v0, v6

    goto :goto_0
.end method

.method private static f(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 370
    .line 372
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/cmgame/sdk/network/a;->hr:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "name=? and apn = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "CMCC_CMWAP"

    aput-object v7, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 373
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 377
    if-eqz v1, :cond_0

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_0
    :goto_0
    return v0

    .line 376
    :catchall_0
    move-exception v0

    move-object v1, v6

    .line 377
    :goto_1
    if-eqz v1, :cond_1

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 380
    :cond_1
    throw v0

    .line 377
    :cond_2
    if-eqz v1, :cond_3

    .line 378
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 381
    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    .line 376
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    .line 408
    :try_start_0
    const-string v1, "cmwap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, p1}, Lcn/cmgame/sdk/network/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 409
    :goto_0
    const-string v2, "Network"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Update current apn, new apn="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and apnId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    if-le v1, v0, :cond_1

    .line 411
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 412
    const-string v3, "apn_id"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcn/cmgame/sdk/network/a;->hs:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 419
    :goto_1
    return v0

    .line 408
    :cond_0
    invoke-static {p0, p1}, Lcn/cmgame/sdk/network/a;->e(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 415
    :catch_0
    move-exception v1

    .line 416
    invoke-virtual {v1}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_1

    .line 419
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    .line 90
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 91
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 138
    :try_start_0
    invoke-static {p0}, Lcn/cmgame/sdk/network/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {v1}, Lcn/cmgame/sdk/network/a;->aH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "460"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    invoke-static {v1}, Lcn/cmgame/sdk/network/a;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v2, "00"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "02"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "07"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 141
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v1

    .line 146
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/cmgame/sdk/network/a;->hs:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 246
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 252
    :goto_0
    return v0

    .line 249
    :cond_0
    if-eqz v1, :cond_1

    .line 250
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 261
    .line 263
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcn/cmgame/sdk/network/a;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 264
    invoke-static {p0}, Lcn/cmgame/sdk/network/a;->i(Landroid/content/Context;)I

    move-result v4

    .line 266
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    move v2, v1

    .line 267
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    move v0, v1

    .line 278
    :goto_1
    return v0

    .line 268
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 269
    if-ne v0, v4, :cond_1

    .line 270
    const/4 v0, 0x1

    .line 271
    goto :goto_1

    .line 267
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static k(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcn/cmgame/sdk/network/a;->hr:Landroid/net/Uri;

    const-string v3, " name=\'CMCC_CMWAP\' "

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 288
    const/4 v0, 0x0

    .line 289
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const/4 v0, 0x1

    .line 291
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_0
    const-string v1, "Network"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " is exist apn: cmcc cmwap ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return v0
.end method

.method public static l(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 302
    const/4 v0, 0x0

    sput v0, Lcn/cmgame/sdk/network/a;->ht:I

    .line 303
    invoke-static {}, Lcn/cmgame/billing/api/a;->dE()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 305
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 307
    :cond_0
    const-string v0, "Network"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "restoreApn and the old apn "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 308
    sget-object v0, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cmwap"

    sget-object v1, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 309
    :cond_1
    sput-object v4, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    .line 314
    :goto_0
    return-void

    .line 312
    :cond_2
    sget-object v0, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    invoke-static {p0, v0}, Lcn/cmgame/sdk/network/a;->g(Landroid/content/Context;Ljava/lang/String;)I

    .line 313
    sput-object v4, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 320
    sget v1, Lcn/cmgame/sdk/network/a;->ht:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcn/cmgame/sdk/network/a;->ht:I

    .line 321
    sget v1, Lcn/cmgame/sdk/network/a;->ht:I

    if-le v1, v0, :cond_1

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    invoke-static {p0}, Lcn/cmgame/sdk/e/j;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    .line 325
    const-string v1, "Network"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setCmwapApn and the old apn "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcn/cmgame/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 326
    const-string v1, "cmwap"

    sget-object v2, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    sget-object v0, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 330
    :cond_2
    const-string v0, "cmnet"

    sput-object v0, Lcn/cmgame/sdk/network/a;->hq:Ljava/lang/String;

    .line 332
    :cond_3
    invoke-static {p0}, Lcn/cmgame/sdk/network/a;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 333
    const/4 v0, 0x0

    goto :goto_0

    .line 335
    :cond_4
    const-string v0, "CMCC_CMWAP"

    invoke-static {p0, v0}, Lcn/cmgame/sdk/network/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 336
    invoke-static {p0}, Lcn/cmgame/sdk/network/a;->f(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0, p0}, Lcn/cmgame/sdk/network/a;->a(ILandroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 338
    :cond_5
    const-string v0, "cmwap"

    invoke-static {p0, v0}, Lcn/cmgame/sdk/network/a;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, p0}, Lcn/cmgame/sdk/network/a;->a(ILandroid/content/Context;)Z

    move-result v0

    .line 339
    const-string v1, "Network"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Try to connect cmcc_cmwap apn... and result is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
