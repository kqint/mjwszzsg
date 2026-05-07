.class Lsafiap/framework/SafFrameworkManager$3;
.super Lsafiap/framework/sdk/ISAFFramework$Stub;
.source "SafFrameworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/SafFrameworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lsafiap/framework/SafFrameworkManager;


# direct methods
.method constructor <init>(Lsafiap/framework/SafFrameworkManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    .line 1476
    invoke-direct {p0}, Lsafiap/framework/sdk/ISAFFramework$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pluginName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1642
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0, p1}, Lsafiap/framework/SafFrameworkManager;->access$6(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public cancelAll()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1655
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->access$7(Lsafiap/framework/SafFrameworkManager;)Z

    move-result v0

    return v0
.end method

.method public checkIAPinstallation()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1731
    const/4 v0, 0x0

    return v0
.end method

.method public downloadPlugin(Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Lsafiap/framework/sdk/ISAFFrameworkCallback;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1621
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1622
    .local v0, "downloadPlugin":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1628
    iget-object v1, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v1, p1, p2, v2, v2}, Lsafiap/framework/SafFrameworkManager;->access$5(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/sdk/ISAFFrameworkCallback;Ljava/lang/String;IZ)V

    .line 1629
    return-void
.end method

.method public getFrameworkVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1705
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsafiap/framework/sdk/util/PackageUtil;->getMyFrameworkVersionCode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getIAPDedicateActionName()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 1754
    const/4 v7, 0x0

    .line 1755
    .local v7, "resultAction":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1756
    .local v1, "HighestVersion":I
    const/4 v0, 0x0

    .line 1758
    .local v0, "HighestPackageName":Ljava/lang/String;
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v9

    const-string v10, "getIAPDedicateActionName ... "

    invoke-virtual {v9, v10}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1759
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v5, v9, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1760
    .local v5, "mainIntent":Landroid/content/Intent;
    sget-object v9, Lsafiap/framework/util/Constants;->SAF_COMPONENT_KEY:Ljava/lang/String;

    invoke-virtual {v5, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1762
    iget-object v9, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v9}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1763
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v9, 0x0

    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 1764
    .local v2, "appsInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v2, :cond_0

    .line 1786
    :goto_0
    return-object v8

    .line 1767
    :cond_0
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checking appsInfos.size():("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1768
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 1782
    if-nez v7, :cond_1

    .line 1783
    const-string v7, "none"

    .line 1785
    :cond_1
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getIAPDedicateActionName : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move-object v8, v0

    .line 1786
    goto :goto_0

    .line 1769
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1771
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "checking signature RIGHT!!!activeInfo: ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1772
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  and  Package Name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1773
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " and P: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/ResolveInfo;->priority:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1771
    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1774
    iget v8, v4, Landroid/content/pm/ResolveInfo;->priority:I

    if-le v8, v1, :cond_3

    .line 1775
    iget v1, v4, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1776
    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1777
    move-object v7, v0

    .line 1778
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Updating : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1768
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public getPluginInfo(Ljava/lang/String;)I
    .locals 16
    .param p1, "actionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1483
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1484
    const/4 v7, -0x1

    .line 1605
    :goto_0
    return v7

    .line 1487
    :cond_0
    const/4 v3, 0x0

    .line 1488
    .local v3, "FrameworkHasUpdate":Z
    const/4 v2, 0x0

    .line 1489
    .local v2, "FrameworkHasMandatoryUpdate":Z
    const/4 v1, 0x0

    .line 1490
    .local v1, "FrameworkHasDownloadFile":Z
    const/4 v6, 0x0

    .line 1491
    .local v6, "IAPPluginHasUpdate":Z
    const/4 v5, 0x0

    .line 1492
    .local v5, "IAPPluginHasMandatoryUpdate":Z
    const/4 v4, 0x0

    .line 1494
    .local v4, "IAPPluginHasDownloadFile":Z
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "getPluginInfo...start, actionName: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1495
    const/4 v7, -0x1

    .line 1496
    .local v7, "checkResult":I
    sget-object v13, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 1497
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    const-string v14, "getPluginInfo().Framework service: QUERY NOT IAP_COMPONENT_SERVICE_ACTION"

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 1501
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lsafiap/framework/SafFrameworkManager;->access$2(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)I

    move-result v12

    .line 1502
    .local v12, "syncDBresult":I
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "getPluginInfo().syncVersionInfo.actionName:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",syncResult:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1503
    const/4 v13, -0x1

    if-ne v12, v13, :cond_2

    .line 1504
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    const-string v14, "getPluginInfo().Framework service:RESULT_CODE_PLUGIN_NOT_EXIST"

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    move v7, v12

    .line 1505
    goto :goto_0

    .line 1509
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v13

    if-nez v13, :cond_3

    .line 1510
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    const-string v14, "mFrameworkDB == null restart DB..."

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v14}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v14

    invoke-static {v13, v14}, Lsafiap/framework/SafFrameworkManager;->access$4(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/data/SafFrameworkDB;)V

    .line 1535
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v13

    sget-object v14, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lsafiap/framework/data/SafFrameworkDB;->isHasUpdate(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1536
    const/4 v6, 0x1

    .line 1537
    const/16 v7, -0x1f4

    .line 1539
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v13

    sget-object v14, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lsafiap/framework/data/SafFrameworkDB;->isHasUpdate(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1540
    const/4 v3, 0x1

    .line 1541
    const/16 v7, -0x1f4

    .line 1544
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v13

    sget-object v14, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lsafiap/framework/data/SafFrameworkDB;->checkMandatoryUpdate(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1545
    const/4 v5, 0x1

    .line 1546
    const/16 v7, -0x12c

    .line 1548
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v13

    sget-object v14, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lsafiap/framework/data/SafFrameworkDB;->checkMandatoryUpdate(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1549
    const/4 v2, 0x1

    .line 1550
    const/16 v7, -0x12c

    .line 1555
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lsafiap/framework/sdk/util/PackageUtil;->getFrameworkVersion(Landroid/content/Context;)I

    move-result v8

    .line 1556
    .local v8, "curHighestFrmVer":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v13

    sget-object v14, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-static {v13, v14}, Lsafiap/framework/sdk/util/PackageUtil;->getComponentsVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 1557
    .local v9, "curHighestPluginVer":I
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "current highest framework version: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", current highest iap version: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v13

    sget-object v14, Lsafiap/framework/util/Constants;->IAP_COMPONENT_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lsafiap/framework/data/SafFrameworkDB;->checkDownloadedApk(Ljava/lang/String;)I

    move-result v11

    .line 1560
    .local v11, "dbHighestPluginVer":I
    if-lez v11, :cond_b

    if-le v11, v9, :cond_b

    const/4 v4, 0x1

    .line 1561
    :goto_1
    if-eqz v4, :cond_8

    .line 1562
    const/4 v5, 0x0

    .line 1563
    const/4 v6, 0x0

    .line 1567
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v13}, Lsafiap/framework/SafFrameworkManager;->access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v13

    sget-object v14, Lsafiap/framework/util/Constants;->SAF_FRAMEWORK_SERVICE_ACTION:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lsafiap/framework/data/SafFrameworkDB;->checkDownloadedApk(Ljava/lang/String;)I

    move-result v10

    .line 1568
    .local v10, "dbHighestFrmVer":I
    if-lez v10, :cond_c

    if-le v10, v8, :cond_c

    const/4 v1, 0x1

    .line 1569
    :goto_2
    if-eqz v1, :cond_9

    .line 1570
    const/4 v2, 0x0

    .line 1571
    const/4 v3, 0x0

    .line 1573
    :cond_9
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "getPluginInfo().in database,server highest version,plugin:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",Framework:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1576
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    const-string v14, "if IAP or Framework have udpate and download finished! show install dialog and cancel statusBar hint ..."

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1579
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "getPluginInfo().FrameworkHasDownloadFile:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",IAPPluginHasDownloadFile"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1580
    if-nez v1, :cond_a

    if-eqz v4, :cond_d

    .line 1581
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-virtual {v13, v1, v4}, Lsafiap/framework/SafFrameworkManager;->startInstallDialog(ZZ)V

    goto/16 :goto_0

    .line 1560
    .end local v10    # "dbHighestFrmVer":I
    :cond_b
    const/4 v4, 0x0

    goto :goto_1

    .line 1568
    .restart local v10    # "dbHighestFrmVer":I
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 1586
    :cond_d
    sget-boolean v13, Lsafiap/framework/util/Constants;->sIsIAPtestVersion:Z

    if-eqz v13, :cond_e

    .line 1587
    if-nez v4, :cond_e

    if-nez v5, :cond_e

    if-nez v6, :cond_e

    .line 1588
    const/4 v7, 0x0

    .line 1589
    const/4 v2, 0x0

    .line 1593
    :cond_e
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "getPluginInfo().frameMustUpdate:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", pulginMustUpdate:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", IAPPluginHasUpdate:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1594
    if-nez v2, :cond_f

    if-nez v5, :cond_f

    if-eqz v6, :cond_12

    .line 1595
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    if-nez v5, :cond_10

    if-nez v6, :cond_10

    const/4 v13, 0x0

    move v14, v13

    :goto_3
    if-nez v2, :cond_11

    if-nez v5, :cond_11

    const/4 v13, 0x0

    :goto_4
    invoke-virtual {v15, v2, v14, v13}, Lsafiap/framework/SafFrameworkManager;->startUpdateDialog(ZZZ)V

    goto/16 :goto_0

    :cond_10
    const/4 v13, 0x1

    move v14, v13

    goto :goto_3

    :cond_11
    const/4 v13, 0x1

    goto :goto_4

    .line 1600
    :cond_12
    if-nez v2, :cond_13

    if-nez v5, :cond_13

    if-nez v6, :cond_13

    .line 1601
    const/4 v7, 0x0

    .line 1604
    :cond_13
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "getPluginInfo().checkResult:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public hasUpdate()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1665
    const/4 v3, 0x0

    .line 1666
    .local v3, "rst":Z
    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1667
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$0()Lsafiap/framework/util/MyLogger;

    move-result-object v4

    const-string v5, "new framework DB in scanInstalledPlugins"

    invoke-virtual {v4, v5}, Lsafiap/framework/util/MyLogger;->v(Ljava/lang/String;)V

    .line 1668
    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    iget-object v5, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v5}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lsafiap/framework/data/SafFrameworkDB;->getInstance(Landroid/content/Context;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v5

    invoke-static {v4, v5}, Lsafiap/framework/SafFrameworkManager;->access$4(Lsafiap/framework/SafFrameworkManager;Lsafiap/framework/data/SafFrameworkDB;)V

    .line 1672
    :cond_0
    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->access$1(Lsafiap/framework/SafFrameworkManager;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lsafiap/framework/sdk/util/PackageUtil;->getMyFrameworkVersionCode(Landroid/content/Context;)I

    move-result v0

    .line 1673
    .local v0, "currentVersion":I
    if-eqz v0, :cond_1

    .line 1675
    :try_start_0
    iget-object v4, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v4}, Lsafiap/framework/SafFrameworkManager;->access$3(Lsafiap/framework/SafFrameworkManager;)Lsafiap/framework/data/SafFrameworkDB;

    move-result-object v4

    invoke-virtual {v4, v0}, Lsafiap/framework/data/SafFrameworkDB;->frameworkHasUpdate(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1685
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1686
    .local v2, "frameworkUpdateStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "name"

    const-string v5, "FrameworkUpdateStatuse"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    const-string v4, "Status"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    return v3

    .line 1676
    .end local v2    # "frameworkUpdateStatus":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 1678
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lsafiap/framework/SafFrameworkManager;->access$8()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SAF-A Exception:520010"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startCheckUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "ServiceActionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1717
    iget-object v0, p0, Lsafiap/framework/SafFrameworkManager$3;->this$0:Lsafiap/framework/SafFrameworkManager;

    invoke-static {v0, p1}, Lsafiap/framework/SafFrameworkManager;->access$9(Lsafiap/framework/SafFrameworkManager;Ljava/lang/String;)V

    .line 1718
    return-void
.end method

.method public startIAPInstall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1745
    return-void
.end method
