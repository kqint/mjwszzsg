.class public Lcn/cmgame/sdk/e/i;
.super Ljava/lang/Object;
.source "SyncedStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/cmgame/sdk/e/i$a;,
        Lcn/cmgame/sdk/e/i$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DistributedPrefs"

.field private static final fs:Ljava/lang/String; = "gamecommunity_prefs"


# instance fields
.field private kI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcn/cmgame/sdk/e/i;->mContext:Landroid/content/Context;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/cmgame/sdk/e/i;->kI:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 154
    invoke-virtual {p0}, Lcn/cmgame/sdk/e/i;->load()V

    .line 155
    return-void
.end method

.method static synthetic a(Lcn/cmgame/sdk/e/i;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcn/cmgame/sdk/e/i;->kI:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/io/File;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 188
    .line 191
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 193
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_9

    instance-of v4, v0, Ljava/util/HashMap;

    if-eqz v4, :cond_9

    .line 195
    check-cast v0, Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 207
    if-eqz v2, :cond_1

    .line 208
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 216
    :cond_0
    :goto_0
    return-object v0

    .line 209
    :cond_1
    if-eqz v3, :cond_0

    .line 210
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    const-string v1, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    .line 198
    :goto_1
    :try_start_4
    const-string v3, "DistributedPrefs"

    const-string v4, "Couldn\'t open gamecommunity_prefs"

    invoke-static {v3, v4}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 207
    if-eqz v0, :cond_3

    .line 208
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    :goto_2
    move-object v0, v1

    .line 216
    goto :goto_0

    .line 209
    :cond_3
    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 212
    :catch_2
    move-exception v0

    .line 213
    const-string v0, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v0, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 199
    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 200
    :goto_3
    :try_start_6
    const-string v0, "DistributedPrefs"

    const-string v4, "StreamCorruptedException"

    invoke-static {v0, v4}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 207
    if-eqz v2, :cond_4

    .line 208
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 212
    :catch_4
    move-exception v0

    .line 213
    const-string v0, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v0, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :cond_4
    if-eqz v3, :cond_2

    .line 210
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 201
    :catch_5
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 202
    :goto_4
    :try_start_9
    const-string v0, "DistributedPrefs"

    const-string v4, "IOException while reading"

    invoke-static {v0, v4}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 207
    if-eqz v2, :cond_5

    .line 208
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    .line 212
    :catch_6
    move-exception v0

    .line 213
    const-string v0, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v0, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :cond_5
    if-eqz v3, :cond_2

    .line 210
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_2

    .line 203
    :catch_7
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 204
    :goto_5
    :try_start_c
    const-string v0, "DistributedPrefs"

    const-string v4, "ClassNotFoundException"

    invoke-static {v0, v4}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 207
    if-eqz v2, :cond_6

    .line 208
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_2

    .line 212
    :catch_8
    move-exception v0

    .line 213
    const-string v0, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v0, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 209
    :cond_6
    if-eqz v3, :cond_2

    .line 210
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_2

    .line 205
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 207
    :goto_6
    if-eqz v2, :cond_8

    .line 208
    :try_start_f
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 215
    :cond_7
    :goto_7
    throw v0

    .line 209
    :cond_8
    if-eqz v3, :cond_7

    .line 210
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    goto :goto_7

    .line 212
    :catch_9
    move-exception v1

    .line 213
    const-string v1, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 207
    :cond_9
    if-eqz v2, :cond_a

    .line 208
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    goto/16 :goto_2

    .line 212
    :catch_a
    move-exception v0

    .line 213
    const-string v0, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v0, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 209
    :cond_a
    if-eqz v3, :cond_2

    .line 210
    :try_start_12
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto/16 :goto_2

    .line 205
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto :goto_6

    .line 203
    :catch_b
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :catch_c
    move-exception v0

    goto :goto_5

    .line 201
    :catch_d
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_e
    move-exception v0

    goto :goto_4

    .line 199
    :catch_f
    move-exception v0

    move-object v2, v1

    goto/16 :goto_3

    :catch_10
    move-exception v0

    goto/16 :goto_3

    .line 197
    :catch_11
    move-exception v0

    move-object v0, v1

    move-object v2, v3

    goto/16 :goto_1

    :catch_12
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    goto/16 :goto_1
.end method

.method static synthetic b(Lcn/cmgame/sdk/e/i;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method


# virtual methods
.method public dL()Lcn/cmgame/sdk/e/i$a;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 79
    new-instance v0, Lcn/cmgame/sdk/e/i$a;

    invoke-direct {v0, p0}, Lcn/cmgame/sdk/e/i$a;-><init>(Lcn/cmgame/sdk/e/i;)V

    return-object v0
.end method

.method public dM()Lcn/cmgame/sdk/e/i$b;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 127
    new-instance v0, Lcn/cmgame/sdk/e/i$b;

    invoke-direct {v0, p0}, Lcn/cmgame/sdk/e/i$b;-><init>(Lcn/cmgame/sdk/e/i;)V

    return-object v0
.end method

.method public load()V
    .locals 5

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/cmgame/sdk/e/i;->kI:Ljava/util/HashMap;

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 166
    iget-object v2, p0, Lcn/cmgame/sdk/e/i;->mContext:Landroid/content/Context;

    const-string v3, "gamecommunity_prefs"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 169
    :try_start_0
    invoke-direct {p0, v2}, Lcn/cmgame/sdk/e/i;->a(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcn/cmgame/sdk/e/i;->kI:Ljava/util/HashMap;

    .line 170
    iget-object v2, p0, Lcn/cmgame/sdk/e/i;->kI:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 171
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcn/cmgame/sdk/e/i;->kI:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    iget-object v2, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 182
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 183
    const-string v2, "DistributedPrefs"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loading prefs took "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v0, v1}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " millis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 172
    :catch_0
    move-exception v2

    .line 173
    :try_start_1
    const-string v2, "DistributedPrefs"

    const-string v3, "broken"

    invoke-static {v2, v3}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 175
    iget-object v2, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    iget-object v1, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 176
    throw v0
.end method

.method public save()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 223
    .line 226
    iget-object v0, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 228
    :try_start_0
    iget-object v0, p0, Lcn/cmgame/sdk/e/i;->mContext:Landroid/content/Context;

    const-string v2, "gamecommunity_prefs"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 229
    :try_start_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 230
    :try_start_2
    iget-object v1, p0, Lcn/cmgame/sdk/e/i;->kI:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 235
    if-eqz v0, :cond_5

    .line 236
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 243
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 246
    :goto_1
    return-void

    .line 231
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 232
    :goto_2
    :try_start_4
    const-string v2, "DistributedPrefs"

    const-string v3, "Couldn\'t open gamecommunity_prefs for writing"

    invoke-static {v2, v3}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 235
    if-eqz v0, :cond_2

    .line 236
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 243
    :cond_1
    :goto_3
    iget-object v0, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .line 237
    :cond_2
    if-eqz v1, :cond_1

    .line 238
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 240
    :catch_1
    move-exception v0

    .line 241
    :try_start_7
    const-string v0, "DistributedPrefs"

    const-string v1, "IOException while cleaning up"

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 243
    iget-object v0, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .line 242
    :catchall_0
    move-exception v0

    .line 243
    iget-object v1, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 244
    throw v0

    .line 233
    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 235
    :goto_4
    if-eqz v1, :cond_4

    .line 236
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 243
    :cond_3
    :goto_5
    iget-object v1, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 245
    :goto_6
    throw v0

    .line 237
    :cond_4
    if-eqz v2, :cond_3

    .line 238
    :try_start_9
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    .line 240
    :catch_2
    move-exception v1

    .line 241
    :try_start_a
    const-string v1, "DistributedPrefs"

    const-string v2, "IOException while cleaning up"

    invoke-static {v1, v2}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 243
    iget-object v1, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_6

    .line 242
    :catchall_2
    move-exception v0

    .line 243
    iget-object v1, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 244
    throw v0

    .line 237
    :cond_5
    if-eqz v2, :cond_0

    .line 238
    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_0

    .line 240
    :catch_3
    move-exception v0

    .line 241
    :try_start_c
    const-string v0, "DistributedPrefs"

    const-string v1, "IOException while cleaning up"

    invoke-static {v0, v1}, Lcn/cmgame/sdk/e/j;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 243
    iget-object v0, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto/16 :goto_1

    .line 242
    :catchall_3
    move-exception v0

    .line 243
    iget-object v1, p0, Lcn/cmgame/sdk/e/i;->kJ:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 244
    throw v0

    .line 233
    :catchall_4
    move-exception v0

    goto :goto_4

    :catchall_5
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    :catchall_6
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_4

    .line 231
    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_2

    :catch_5
    move-exception v1

    move-object v1, v2

    goto/16 :goto_2
.end method
