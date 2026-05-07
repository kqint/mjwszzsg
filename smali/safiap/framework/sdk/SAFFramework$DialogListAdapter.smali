.class Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SAFFramework.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsafiap/framework/sdk/SAFFramework;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogListAdapter"
.end annotation


# instance fields
.field private mInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsafiap/framework/sdk/SAFFramework;


# direct methods
.method public constructor <init>(Lsafiap/framework/sdk/SAFFramework;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsafiap/framework/data/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 881
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lsafiap/framework/data/PluginInfo;>;"
    iput-object p1, p0, Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 882
    iput-object p2, p0, Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;->mInfoList:Ljava/util/List;

    .line 883
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # I

    .prologue
    .line 893
    iget-object v0, p0, Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;->mInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 899
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x2

    .line 905
    if-nez p2, :cond_0

    .line 906
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v4}, Lsafiap/framework/sdk/SAFFramework;->access$9(Lsafiap/framework/sdk/SAFFramework;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 908
    .local v1, "mItemLayout":Landroid/view/View;
    new-instance v2, Landroid/widget/TextView;

    iget-object v4, p0, Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;->this$0:Lsafiap/framework/sdk/SAFFramework;

    invoke-static {v4}, Lsafiap/framework/sdk/SAFFramework;->access$9(Lsafiap/framework/sdk/SAFFramework;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 909
    .local v2, "name":Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setId(I)V

    .line 910
    const/high16 v4, 0x41b00000    # 22.0f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 911
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 913
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 914
    .local v3, "param2":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move-object v4, v1

    .line 915
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 917
    move-object p2, v1

    .line 920
    .end local v1    # "mItemLayout":Landroid/view/View;
    .end local v2    # "name":Landroid/widget/TextView;
    .end local v3    # "param2":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    invoke-virtual {p0, p1}, Lsafiap/framework/sdk/SAFFramework$DialogListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsafiap/framework/data/PluginInfo;

    .line 921
    .local v0, "info":Lsafiap/framework/data/PluginInfo;
    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 922
    .restart local v2    # "name":Landroid/widget/TextView;
    invoke-virtual {v0}, Lsafiap/framework/data/PluginInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 923
    invoke-virtual {v0}, Lsafiap/framework/data/PluginInfo;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    :goto_0
    return-object p2

    .line 925
    :cond_1
    invoke-virtual {v0}, Lsafiap/framework/data/PluginInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
