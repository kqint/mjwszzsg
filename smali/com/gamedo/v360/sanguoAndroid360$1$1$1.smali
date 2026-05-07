.class Lcom/gamedo/v360/sanguoAndroid360$1$1$1;
.super Ljava/lang/Object;
.source "sanguoAndroid360.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamedo/v360/sanguoAndroid360$1$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/gamedo/v360/sanguoAndroid360$1$1;


# direct methods
.method constructor <init>(Lcom/gamedo/v360/sanguoAndroid360$1$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamedo/v360/sanguoAndroid360$1$1$1;->this$2:Lcom/gamedo/v360/sanguoAndroid360$1$1;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    const-wide/16 v1, 0x5

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 153
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
