.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# static fields
.field static final FLAVORS:[I


# instance fields
.field mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mIsMK:Z

.field mKeyCount:I

.field mLayout:Landroid/widget/FrameLayout;

.field mTapCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/internal/app/PlatLogoActivity;->FLAVORS:[I

    return-void

    :array_0
    .array-data 4
        -0x63d850
        -0x459738
        -0x6800
        -0x48b3
        -0xf9d6e
        -0x74430
        -0x504bd5
        -0x3223c7
        -0x14c5
        -0xe8a
        -0x86aab8
        -0x5e7781
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/PlatLogoActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/PlatLogoActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mIsMK:Z

    return v0
.end method

.method static newColorIndex()I
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sget-object v2, Lcom/android/internal/app/PlatLogoActivity;->FLAVORS:[I

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method


# virtual methods
.method makeRipple()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 69
    invoke-static {}, Lcom/android/internal/app/PlatLogoActivity;->newColorIndex()I

    move-result v0

    .line 70
    .local v0, "idx":I
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 71
    .local v1, "popbg":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    sget-object v4, Lcom/android/internal/app/PlatLogoActivity;->FLAVORS:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    sget-object v3, Lcom/android/internal/app/PlatLogoActivity;->FLAVORS:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 75
    .local v2, "ripple":Landroid/graphics/drawable/RippleDrawable;
    return-object v2
.end method

.method public onAttachedToWindow()V
    .locals 12

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 90
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 91
    .local v1, "dp":F
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x44160000    # 600.0f

    mul-float/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v8, v1

    sub-float/2addr v7, v8

    float-to-int v5, v7

    .line 94
    .local v5, "size":I
    new-instance v6, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v6, p0, p0, v5}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/content/Context;I)V

    .line 130
    .local v6, "stick":Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v9, 0x42000000    # 32.0f

    mul-float/2addr v9, v1

    float-to-int v9, v9

    const/4 v10, -0x1

    const/4 v11, 0x1

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v6, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    .line 134
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 135
    .local v3, "im":Landroid/widget/ImageView;
    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setTranslationZ(F)V

    .line 136
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 137
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 138
    iget-boolean v7, p0, Lcom/android/internal/app/PlatLogoActivity;->mIsMK:Z

    if-eqz v7, :cond_0

    const v7, 0x10804f3

    :goto_0
    invoke-virtual {p0, v7}, Lcom/android/internal/app/PlatLogoActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 141
    .local v4, "platlogo":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 142
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->makeRipple()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 144
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 145
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 146
    .local v2, "highlight":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const v8, 0x10ffffff

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    int-to-float v7, v5

    const v8, 0x3e19999a    # 0.15f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v8, v5

    const v9, 0x3e19999a    # 0.15f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    int-to-float v9, v5

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    int-to-float v10, v5

    const v11, 0x3f19999a    # 0.6f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 149
    invoke-virtual {v3}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 150
    new-instance v7, Lcom/android/internal/app/PlatLogoActivity$2;

    invoke-direct {v7, p0, v3, v4, v6}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/View;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 217
    invoke-virtual {v3}, Landroid/widget/ImageView;->requestFocus()Z

    .line 218
    new-instance v7, Lcom/android/internal/app/PlatLogoActivity$3;

    invoke-direct {v7, p0, v3}, Lcom/android/internal/app/PlatLogoActivity$3;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 237
    iget-object v7, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v9, 0x11

    invoke-direct {v8, v5, v5, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v3, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    invoke-virtual {v3}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const v8, 0x3e99999a    # 0.3f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const v8, 0x3e99999a    # 0.3f

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/app/PlatLogoActivity;->mInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v7, v8}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    const-wide/16 v8, 0x320

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 244
    return-void

    .line 138
    .end local v2    # "highlight":Landroid/graphics/drawable/ShapeDrawable;
    .end local v4    # "platlogo":Landroid/graphics/drawable/Drawable;
    :cond_0
    const v7, 0x108054b

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "is_mk"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mIsMK:Z

    .line 83
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    .line 84
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    .line 85
    return-void
.end method