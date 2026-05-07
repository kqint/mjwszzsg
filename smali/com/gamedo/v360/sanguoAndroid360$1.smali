.class Lcom/gamedo/v360/sanguoAndroid360$1;
.super Ljava/lang/Object;
.source "sanguoAndroid360.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamedo/v360/sanguoAndroid360;->ExitGame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 129
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gamedo/v360/sanguoAndroid360;->getActivity()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v4, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 130
    .local v0, "dlg":Landroid/app/AlertDialog;
    const-string v3, "\u786e\u8ba4"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u786e\u8ba4\u9000\u51fa \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/gamedo/v360/sanguoAndroid360;->instance:Lcom/gamedo/v360/sanguoAndroid360;

    const v5, 0x7f040087

    invoke-virtual {v4, v5}, Lcom/gamedo/v360/sanguoAndroid360;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"\u5417\uff1f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v1, Lcom/gamedo/v360/sanguoAndroid360$1$1;

    invoke-direct {v1, p0}, Lcom/gamedo/v360/sanguoAndroid360$1$1;-><init>(Lcom/gamedo/v360/sanguoAndroid360$1;)V

    .line 166
    .local v1, "lis":Landroid/content/DialogInterface$OnClickListener;
    const-string v3, "\u662f"

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 167
    new-instance v2, Lcom/gamedo/v360/sanguoAndroid360$1$2;

    invoke-direct {v2, p0}, Lcom/gamedo/v360/sanguoAndroid360$1$2;-><init>(Lcom/gamedo/v360/sanguoAndroid360$1;)V

    .line 172
    .local v2, "lis2":Landroid/content/DialogInterface$OnClickListener;
    const-string v3, "\u5426"

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 173
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 174
    return-void
.end method
