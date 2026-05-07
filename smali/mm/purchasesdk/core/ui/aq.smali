.class Lmm/purchasesdk/core/ui/aq;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout$LayoutParams;

.field final synthetic b:Lmm/purchasesdk/core/ui/ao;


# direct methods
.method constructor <init>(Lmm/purchasesdk/core/ui/ao;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lmm/purchasesdk/core/ui/aq;->b:Lmm/purchasesdk/core/ui/ao;

    iput-object p2, p0, Lmm/purchasesdk/core/ui/aq;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string v0, "WebViewLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmm/purchasesdk/core/l/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/aq;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/aq;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/aq;->b:Lmm/purchasesdk/core/ui/ao;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lmm/purchasesdk/core/ui/aq;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/aq;->b:Lmm/purchasesdk/core/ui/ao;

    new-instance v1, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/aq;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v2}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/aq;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lmm/purchasesdk/core/ui/aq;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v1}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Landroid/widget/ProgressBar;

    move-result-object v1

    iget-object v2, p0, Lmm/purchasesdk/core/ui/aq;->a:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/aq;->b:Lmm/purchasesdk/core/ui/ao;

    invoke-static {v0}, Lmm/purchasesdk/core/ui/ao;->a(Lmm/purchasesdk/core/ui/ao;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
