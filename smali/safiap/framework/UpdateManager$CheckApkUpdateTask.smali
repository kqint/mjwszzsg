.class Lsafiap/framework/UpdateManager$CheckApkUpdateTask;
.super Lsafiap/framework/sdk/task/QueryTask;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckApkUpdateTask"
.end annotation


# static fields
.field private static final PARAM_AVP:Ljava/lang/String; = "avp"

.field private static final PARAM_PACKAGES:Ljava/lang/String; = "packages"


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

.field private mPkgName:Ljava/lang/String;

.field private mType:Ljava/lang/String;

.field final synthetic this$0:Lsafiap/framework/UpdateManager;


# direct methods
.method constructor <init>(Lsafiap/framework/UpdateManager;Ljava/lang/String;Ljava/lang/String;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V
    .locals 3
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;
    .param p4, "listener"    # Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .prologue
    const/4 v2, 0x0

    .line 122
    iput-object p1, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    .line 123
    const-string v0, "CheckApkUpdateTask...start"

    invoke-static {p1}, Lsafiap/framework/UpdateManager;->access$0(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsafiap/framework/sdk/task/QueryTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 107
    iput-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .line 108
    iput-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mPkgName:Ljava/lang/String;

    .line 109
    sget-object v0, Lsafiap/framework/UpdateManager;->TYPE_FRAMEWORK:Ljava/lang/String;

    iput-object v0, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .line 126
    iput-object p3, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mPkgName:Ljava/lang/String;

    .line 127
    return-void
.end method

.method constructor <init>(Lsafiap/framework/UpdateManager;Ljava/lang/String;Ljava/util/List;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V
    .locals 3
    .param p2, "type"    # Ljava/lang/String;
    .param p4, "listener"    # Lsafiap/framework/UpdateManager$OnGotUpdateListListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;",
            "Lsafiap/framework/UpdateManager$OnGotUpdateListListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "pluginList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    const/4 v2, 0x0

    .line 130
    iput-object p1, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    .line 131
    const-string v0, "CheckApkUpdateTask...start"

    invoke-static {p1}, Lsafiap/framework/UpdateManager;->access$0(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsafiap/framework/sdk/task/QueryTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 107
    iput-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .line 108
    iput-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mPkgName:Ljava/lang/String;

    .line 109
    sget-object v0, Lsafiap/framework/UpdateManager;->TYPE_FRAMEWORK:Ljava/lang/String;

    iput-object v0, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    .line 133
    iput-object p4, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .line 134
    iput-object p3, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mList:Ljava/util/List;

    .line 135
    return-void
.end method

.method constructor <init>(Lsafiap/framework/UpdateManager;Ljava/lang/String;Lsafiap/framework/UpdateManager$OnGotUpdateListListener;)V
    .locals 3
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "listener"    # Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .prologue
    const/4 v2, 0x0

    .line 114
    iput-object p1, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    .line 115
    const-string v0, "CheckUpdate"

    invoke-static {p1}, Lsafiap/framework/UpdateManager;->access$0(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lsafiap/framework/sdk/task/QueryTask;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 107
    iput-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .line 108
    iput-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mPkgName:Ljava/lang/String;

    .line 109
    sget-object v0, Lsafiap/framework/UpdateManager;->TYPE_FRAMEWORK:Ljava/lang/String;

    iput-object v0, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    .line 119
    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 11
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-static {}, Lsafiap/framework/UpdateManager;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "onPostExecute....result: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 189
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v6, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lsafiap/framework/data/PluginInfo;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 193
    :try_start_0
    const-string v8, "["

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 194
    .local v4, "idx":I
    iget-object v8, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    invoke-static {v8}, Lsafiap/framework/UpdateManager;->access$0(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v1

    .line 195
    .local v1, "db":Lsafiap/framework/data/SafFrameworkDB;
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "array":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lt v3, v8, :cond_2

    .line 218
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "db":Lsafiap/framework/data/SafFrameworkDB;
    .end local v3    # "i":I
    .end local v4    # "idx":I
    :cond_0
    iget-object v8, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    if-eqz v8, :cond_1

    .line 219
    iget-object v8, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    iget-object v9, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    invoke-interface {v8, v9, v6}, Lsafiap/framework/UpdateManager$OnGotUpdateListListener;->onGotUpdateList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 222
    :cond_1
    invoke-super {p0, p1}, Lsafiap/framework/sdk/task/QueryTask;->onPostExecute(Ljava/lang/Object;)V

    .line 223
    :goto_1
    return-void

    .line 197
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v1    # "db":Lsafiap/framework/data/SafFrameworkDB;
    .restart local v3    # "i":I
    .restart local v4    # "idx":I
    :cond_2
    :try_start_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 199
    .local v7, "object":Lorg/json/JSONObject;
    invoke-static {v7}, Lsafiap/framework/data/PluginInfo;->createFromJson(Lorg/json/JSONObject;)Lsafiap/framework/data/PluginInfo;

    move-result-object v5

    .line 200
    .local v5, "info":Lsafiap/framework/data/PluginInfo;
    invoke-virtual {v5}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 201
    invoke-virtual {v5}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lsafiap/framework/data/PluginInfo;->getDigest()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lsafiap/framework/data/SafFrameworkDB;->updateAppDigest(Ljava/lang/String;Ljava/lang/String;)J

    .line 203
    :cond_3
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "db":Lsafiap/framework/data/SafFrameworkDB;
    .end local v3    # "i":I
    .end local v4    # "idx":I
    .end local v5    # "info":Lsafiap/framework/data/PluginInfo;
    .end local v7    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 206
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lsafiap/framework/UpdateManager;->access$2()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SAF-A Exception:530001"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 209
    iget-object v8, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    if-eqz v8, :cond_4

    .line 210
    iget-object v8, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mListener:Lsafiap/framework/UpdateManager$OnGotUpdateListListener;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lsafiap/framework/UpdateManager$OnGotUpdateListListener;->onGotUpdateListError(Ljava/lang/String;)V

    .line 212
    :cond_4
    invoke-super {p0, p1}, Lsafiap/framework/sdk/task/QueryTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onPreExecute()V
    .locals 6

    .prologue
    .line 139
    invoke-super {p0}, Lsafiap/framework/sdk/task/QueryTask;->onPreExecute()V

    .line 140
    invoke-static {}, Lsafiap/framework/UpdateManager;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    const-string v3, "CheckApkUpdateTask.onPreExecute"

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 142
    sget-object v2, Lsafiap/framework/UpdateManager;->TYPE_FRAMEWORK:Ljava/lang/String;

    iget-object v3, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    iget-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    invoke-static {v2}, Lsafiap/framework/UpdateManager;->access$0(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsafiap/framework/sdk/util/PackageUtil;->getFrameworkAVPJson(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "json":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/UpdateManager;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pre exec for framework.json:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 146
    const-string v2, "avp"

    invoke-virtual {p0, v2, v0}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v0    # "json":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    sget-object v2, Lsafiap/framework/UpdateManager;->TYPE_PLUGINS:Ljava/lang/String;

    iget-object v3, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 149
    iget-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    invoke-static {v2}, Lsafiap/framework/UpdateManager;->access$0(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsafiap/framework/SafFrameworkManager;->getAllPluginInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 150
    .local v1, "pluginList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    iget-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    invoke-static {v2}, Lsafiap/framework/UpdateManager;->access$0(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lsafiap/framework/data/PluginInfo;->getPluginAVPJson(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0    # "json":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/UpdateManager;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pre exec for plugin.json:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    const-string v2, "avp"

    invoke-virtual {p0, v2, v0}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "pluginList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    :cond_2
    sget-object v2, Lsafiap/framework/UpdateManager;->TYPE_ALL:Ljava/lang/String;

    iget-object v3, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    iget-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    invoke-static {v2}, Lsafiap/framework/UpdateManager;->access$0(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lsafiap/framework/SafFrameworkManager;->getAllPluginInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 158
    .restart local v1    # "pluginList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    iget-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    invoke-static {v2}, Lsafiap/framework/UpdateManager;->access$0(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lsafiap/framework/data/PluginInfo;->getPluginAVPJson(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .restart local v0    # "json":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/UpdateManager;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pre exec for all.json:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 160
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    const-string v2, "avp"

    invoke-virtual {p0, v2, v0}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "pluginList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    :cond_3
    sget-object v2, Lsafiap/framework/UpdateManager;->TYPE_AUTH_FRAMEWORK:Ljava/lang/String;

    iget-object v3, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    iget-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mList:Ljava/util/List;

    invoke-static {v2}, Lsafiap/framework/data/PluginInfo;->getPluginNameJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .restart local v0    # "json":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/UpdateManager;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pre exec for auth framework.json: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 167
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 168
    const-string v2, "packages"

    invoke-virtual {p0, v2, v0}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    .end local v0    # "json":Ljava/lang/String;
    :cond_4
    sget-object v2, Lsafiap/framework/UpdateManager;->TYPE_AUTH_APK:Ljava/lang/String;

    iget-object v3, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 171
    invoke-static {}, Lsafiap/framework/UpdateManager;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mPkgName: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mPkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 173
    const-string v2, "packages"

    new-instance v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 175
    :cond_5
    sget-object v2, Lsafiap/framework/UpdateManager;->TYPE_AUTH_PLUGINS:Ljava/lang/String;

    iget-object v3, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    iget-object v2, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->this$0:Lsafiap/framework/UpdateManager;

    invoke-static {v2}, Lsafiap/framework/UpdateManager;->access$0(Lsafiap/framework/UpdateManager;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->mType:Ljava/lang/String;

    invoke-static {v2, v3}, Lsafiap/framework/sdk/util/PackageUtil;->getPluginAppInfoList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 178
    .restart local v1    # "pluginList":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    invoke-static {v1}, Lsafiap/framework/data/PluginInfo;->getPluginNameJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .restart local v0    # "json":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/UpdateManager;->access$1()Lsafiap/framework/util/MyLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pre exec for auth plugins.json:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 181
    const-string v2, "packages"

    invoke-virtual {p0, v2, v0}, Lsafiap/framework/UpdateManager$CheckApkUpdateTask;->addNameValuePair(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
