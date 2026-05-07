.class Lcom/gamedo/v360/sanguoAndroid360$1$1;
.super Ljava/lang/Object;
.source "sanguoAndroid360.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamedo/v360/sanguoAndroid360$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamedo/v360/sanguoAndroid360$1;


# direct methods
.method constructor <init>(Lcom/gamedo/v360/sanguoAndroid360$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamedo/v360/sanguoAndroid360$1$1;->this$1:Lcom/gamedo/v360/sanguoAndroid360$1;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 135
    sget-object v2, Lcom/gamedo/v360/sanguoAndroid360;->instance:Lcom/gamedo/v360/sanguoAndroid360;

    .line 136
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/gamedo/v360/sanguoAndroid360;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 137
    .local v0, "cManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 138
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-static {}, Lcom/gamedo/v360/sanguoAndroid360;->Backflag()V

    .line 143
    sget-object v2, Lcom/gamedo/v360/sanguoAndroid360;->instance:Lcom/gamedo/v360/sanguoAndroid360;

    new-instance v3, Lcom/gamedo/v360/sanguoAndroid360$1$1$1;

    invoke-direct {v3, p0}, Lcom/gamedo/v360/sanguoAndroid360$1$1$1;-><init>(Lcom/gamedo/v360/sanguoAndroid360$1$1;)V

    invoke-virtual {v2, v3}, Lcom/gamedo/v360/sanguoAndroid360;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 164
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method
