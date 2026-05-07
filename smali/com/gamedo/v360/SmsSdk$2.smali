.class Lcom/gamedo/v360/SmsSdk$2;
.super Ljava/lang/Object;
.source "SmsSdk.java"

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$BillingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamedo/v360/SmsSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamedo/v360/SmsSdk;


# direct methods
.method constructor <init>(Lcom/gamedo/v360/SmsSdk;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/gamedo/v360/SmsSdk$2;->this$0:Lcom/gamedo/v360/SmsSdk;

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBillingFail(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/gamedo/v360/SmsSdk$2;->this$0:Lcom/gamedo/v360/SmsSdk;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/gamedo/v360/SmsSdk$2;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget v2, v2, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v0, v1, v2}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    .line 426
    return-void
.end method

.method public onBillingSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/gamedo/v360/SmsSdk$2;->this$0:Lcom/gamedo/v360/SmsSdk;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/gamedo/v360/SmsSdk$2;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget v2, v2, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v0, v1, v2}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    .line 431
    return-void
.end method

.method public onUserOperCancel(Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;

    .prologue
    .line 434
    iget-object v0, p0, Lcom/gamedo/v360/SmsSdk$2;->this$0:Lcom/gamedo/v360/SmsSdk;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/gamedo/v360/SmsSdk$2;->this$0:Lcom/gamedo/v360/SmsSdk;

    iget v2, v2, Lcom/gamedo/v360/SmsSdk;->PayId:I

    invoke-virtual {v0, v1, v2}, Lcom/gamedo/v360/SmsSdk;->myCallBackResult(II)V

    .line 436
    return-void
.end method
