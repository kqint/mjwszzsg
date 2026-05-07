.class public Lmm/purchasesdk/core/ui/ak;
.super Lmm/purchasesdk/core/ui/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm/purchasesdk/core/ui/ak$a;
    }
.end annotation


# instance fields
.field private a:Landroid/hardware/SensorEventListener;

.field a:Landroid/hardware/SensorManager;

.field a:Landroid/view/Display;

.field private mContext:Landroid/content/Context;

.field t:Z

.field x:I

.field private x:Landroid/graphics/drawable/Drawable;

.field y:I

.field private y:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lmm/purchasesdk/core/h/d;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    const v0, 0x1030005

    invoke-direct {p0, p1, v0, p2}, Lmm/purchasesdk/core/ui/k;-><init>(Landroid/content/Context;ILmm/purchasesdk/core/h/d;)V

    iput-object v2, p0, Lmm/purchasesdk/core/ui/ak;->x:Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lmm/purchasesdk/core/ui/ak;->y:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lmm/purchasesdk/core/ui/ak;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ak;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/ui/ak;->setOwnerActivity(Landroid/app/Activity;)V

    iput v1, p0, Lmm/purchasesdk/core/ui/ak;->x:I

    iput v1, p0, Lmm/purchasesdk/core/ui/ak;->y:I

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/ak;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ak;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lmm/purchasesdk/core/ui/ak;->a:Landroid/view/Display;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmm/purchasesdk/core/ui/ak;->a:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ak;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    new-instance v1, Lmm/purchasesdk/core/ui/al;

    invoke-direct {v1, p0}, Lmm/purchasesdk/core/ui/al;-><init>(Lmm/purchasesdk/core/ui/ak;)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/ak;->a:Landroid/hardware/SensorEventListener;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ak;->a:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lmm/purchasesdk/core/ui/ak;->a:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method private a()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lmm/purchasesdk/core/ui/ak;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmm/purchasesdk/core/ui/ak;->c()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lmm/purchasesdk/core/ui/ak;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private b()Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ak;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ak;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ak;->x:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ak;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/splash_v.jpg"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/ak;->x:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lmm/purchasesdk/core/ui/ak;->y:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ak;->mContext:Landroid/content/Context;

    const-string v1, "mmiap/image/vertical/splash_h.jpg"

    invoke-static {v0, v1}, Lmm/purchasesdk/core/ui/am;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lmm/purchasesdk/core/ui/ak;->y:Landroid/graphics/drawable/Drawable;

    :cond_1
    return-void
.end method


# virtual methods
.method public c()Landroid/view/View;
    .locals 3

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ak;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ak;->y:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    invoke-super {p0}, Lmm/purchasesdk/core/ui/k;->dismiss()V

    iget-object v0, p0, Lmm/purchasesdk/core/ui/ak;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmm/purchasesdk/core/ui/ak;->a:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    return-void
.end method

.method h(Z)V
    .locals 1

    iput-boolean p1, p0, Lmm/purchasesdk/core/ui/ak;->t:Z

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/ak;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/ui/ak;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput v0, p0, Lmm/purchasesdk/core/ui/ak;->x:I

    return-void
.end method

.method public show()V
    .locals 4

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/ak;->g()V

    invoke-direct {p0}, Lmm/purchasesdk/core/ui/ak;->a()Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmm/purchasesdk/core/ui/ak;->setCancelable(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lmm/purchasesdk/core/ui/ak$a;

    invoke-direct {v1, p0}, Lmm/purchasesdk/core/ui/ak$a;-><init>(Lmm/purchasesdk/core/ui/ak;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0}, Lmm/purchasesdk/core/ui/k;->show()V

    return-void
.end method
