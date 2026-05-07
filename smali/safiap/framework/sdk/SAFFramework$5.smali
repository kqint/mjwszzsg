.class Lsafiap/framework/sdk/SAFFramework$5;
.super Lsafiap/framework/sdk/IDataPort$Stub;
.source "SAFFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/sdk/SAFFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final DATA_LENGTH_LIMIT:I = 0x2800


# instance fields
.field final synthetic this$0:Lsafiap/framework/sdk/SAFFramework;


# direct methods
.method constructor <init>(Lsafiap/framework/sdk/SAFFramework;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework$5;->this$0:Lsafiap/framework/sdk/SAFFramework;

    .line 939
    invoke-direct {p0}, Lsafiap/framework/sdk/IDataPort$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataLength(Ljava/lang/String;)J
    .locals 7
    .param p1, "dataName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, -0x1

    .line 1027
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getDataLength...start, dataName: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1028
    iget-object v4, p0, Lsafiap/framework/sdk/SAFFramework$5;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v4}, Lsafiap/framework/sdk/SAFFramework;->access$9(Lsafiap/framework/sdk/SAFFramework;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-wide v1

    .line 1033
    :cond_1
    iget-object v4, p0, Lsafiap/framework/sdk/SAFFramework$5;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v4}, Lsafiap/framework/sdk/SAFFramework;->access$9(Lsafiap/framework/sdk/SAFFramework;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, "path":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1035
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "path: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1037
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v0, "dataFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1040
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v4

    const-string v5, "file does not exist..."

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 1044
    :cond_2
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v4

    const-string v5, "file exists"

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 1046
    .local v1, "len":J
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "file len: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putData(Ljava/lang/String;[BI)V
    .locals 8
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 990
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "putData...start, dataName: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 991
    iget-object v5, p0, Lsafiap/framework/sdk/SAFFramework$5;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v5}, Lsafiap/framework/sdk/SAFFramework;->access$9(Lsafiap/framework/sdk/SAFFramework;)Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1022
    .end local p3    # "size":I
    :cond_0
    :goto_0
    return-void

    .line 996
    .restart local p3    # "size":I
    :cond_1
    iget-object v5, p0, Lsafiap/framework/sdk/SAFFramework$5;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v5}, Lsafiap/framework/sdk/SAFFramework;->access$9(Lsafiap/framework/sdk/SAFFramework;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 997
    .local v4, "path":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 999
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1001
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v0, "dataFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 1005
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1006
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_1
    array-length v6, p2

    if-gt p3, v6, :cond_2

    .end local p3    # "size":I
    :goto_1
    invoke-virtual {v3, p2, v5, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1009
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v5

    const-string v6, "write file successful"

    invoke-virtual {v5, v6}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1015
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1007
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local p3    # "size":I
    :cond_2
    :try_start_3
    array-length p3, p2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1010
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 1011
    .end local p3    # "size":I
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v5, "IAPSAFFramework"

    const-string v6, "SAF-A Exception:510014"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1015
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1016
    :catch_1
    move-exception v1

    .line 1017
    const-string v5, "IAPSAFFramework"

    const-string v6, "SAF-A Exception:510015"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1013
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1015
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1020
    :goto_4
    throw v5

    .line 1016
    :catch_2
    move-exception v1

    .line 1017
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "IAPSAFFramework"

    const-string v7, "SAF-A Exception:510015"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1016
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v1

    .line 1017
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v5, "IAPSAFFramework"

    const-string v6, "SAF-A Exception:510015"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 1013
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 1010
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public readData(Ljava/lang/String;[B)I
    .locals 10
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 945
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "readData...start, dataName: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 946
    iget-object v7, p0, Lsafiap/framework/sdk/SAFFramework$5;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v7}, Lsafiap/framework/sdk/SAFFramework;->access$9(Lsafiap/framework/sdk/SAFFramework;)Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v6

    .line 951
    :cond_1
    iget-object v7, p0, Lsafiap/framework/sdk/SAFFramework$5;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v7}, Lsafiap/framework/sdk/SAFFramework;->access$9(Lsafiap/framework/sdk/SAFFramework;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 952
    .local v5, "path":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/sdk/SAFFramework;->access$10()Lsafiap/framework/util/MyLogger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "path: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 954
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 956
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 958
    .local v0, "dataFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 962
    const/4 v3, 0x0

    .line 963
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v6, -0x1

    .line 966
    .local v6, "rstSize":I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v4, p2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 977
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 969
    :catch_0
    move-exception v1

    .line 970
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_3
    const-string v7, "IAPSAFFramework"

    const-string v8, "SAF-A Exception:510011"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 977
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 978
    :catch_1
    move-exception v1

    .line 979
    .local v1, "e":Ljava/io/IOException;
    const-string v7, "IAPSAFFramework"

    const-string v8, "SAF-A Exception:510013"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 972
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 973
    .local v2, "e2":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v7, "IAPSAFFramework"

    const-string v8, "SAF-A Exception:510012"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 977
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 978
    :catch_3
    move-exception v1

    .line 979
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "IAPSAFFramework"

    const-string v8, "SAF-A Exception:510013"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 975
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 977
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 982
    :goto_4
    throw v7

    .line 978
    :catch_4
    move-exception v1

    .line 979
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v8, "IAPSAFFramework"

    const-string v9, "SAF-A Exception:510013"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 978
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    .line 979
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v7, "IAPSAFFramework"

    const-string v8, "SAF-A Exception:510013"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 975
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 972
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 969
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1
.end method
