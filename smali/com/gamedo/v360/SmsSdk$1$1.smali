.class Lcom/gamedo/v360/SmsSdk$1$1;
.super Ljava/lang/Object;
.source "SmsSdk.java"

# interfaces
.implements Lcn/game189/sms/SMSListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gamedo/v360/SmsSdk$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/gamedo/v360/SmsSdk$1;


# direct methods
.method constructor <init>(Lcom/gamedo/v360/SmsSdk$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamedo/v360/SmsSdk$1$1;->this$1:Lcom/gamedo/v360/SmsSdk$1;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public smsCancel(Ljava/lang/String;I)V
    .locals 3
    .param p1, "feeName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/gamedo/v360/SmsSdk$1$1;->this$1:Lcom/gamedo/v360/SmsSdk$1;

    invoke-static {v0}, Lcom/gamedo/v360/SmsSdk$1;->access$0(Lcom/gamedo/v360/SmsSdk$1;)Lcom/gamedo/v360/SmsSdk;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/gamedo/v360/SmsSdk$1$1;->this$1:Lcom/gamedo/v360/SmsSdk$1;

    invoke-static {v2}, Lcom/gamedo/v360/SmsSdk$1;->access$0(Lcom/gamedo/v360/SmsSdk$1;)Lcom/gamedo/v360/SmsSdk;

    move-result-object v2

    iget v2, v2, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v0, v1, v2}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    .line 183
    return-void
.end method

.method public smsFail(Ljava/lang/String;I)V
    .locals 3
    .param p1, "feeName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/gamedo/v360/SmsSdk$1$1;->this$1:Lcom/gamedo/v360/SmsSdk$1;

    invoke-static {v0}, Lcom/gamedo/v360/SmsSdk$1;->access$0(Lcom/gamedo/v360/SmsSdk$1;)Lcom/gamedo/v360/SmsSdk;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/gamedo/v360/SmsSdk$1$1;->this$1:Lcom/gamedo/v360/SmsSdk$1;

    invoke-static {v2}, Lcom/gamedo/v360/SmsSdk$1;->access$0(Lcom/gamedo/v360/SmsSdk$1;)Lcom/gamedo/v360/SmsSdk;

    move-result-object v2

    iget v2, v2, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v0, v1, v2}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    .line 179
    return-void
.end method

.method public smsOK(Ljava/lang/String;)V
    .locals 3
    .param p1, "feeName"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/gamedo/v360/SmsSdk$1$1;->this$1:Lcom/gamedo/v360/SmsSdk$1;

    invoke-static {v0}, Lcom/gamedo/v360/SmsSdk$1;->access$0(Lcom/gamedo/v360/SmsSdk$1;)Lcom/gamedo/v360/SmsSdk;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gamedo/v360/SmsSdk$1$1;->this$1:Lcom/gamedo/v360/SmsSdk$1;

    invoke-static {v2}, Lcom/gamedo/v360/SmsSdk$1;->access$0(Lcom/gamedo/v360/SmsSdk$1;)Lcom/gamedo/v360/SmsSdk;

    move-result-object v2

    iget v2, v2, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v0, v1, v2}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    .line 174
    return-void
.end method
