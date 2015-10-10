.class Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;
.super Ljava/lang/Object;
.source "DisplayGamma.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GammaSeekBar"
.end annotation


# instance fields
.field private mColorIndex:I

.field private mControlIndex:I

.field private mMax:I

.field private mMin:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mValue:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;IILandroid/view/ViewGroup;II)V
    .locals 4
    .param p2, "controlIndex"    # I
    .param p3, "colorIndex"    # I
    .param p4, "container"    # Landroid/view/ViewGroup;
    .param p5, "min"    # I
    .param p6, "max"    # I

    .prologue
    .line 325
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->this$0:Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput p2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mControlIndex:I

    .line 327
    iput p3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mColorIndex:I

    .line 329
    iput p5, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mMin:I

    .line 330
    iput p6, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mMax:I

    .line 332
    const v1, 0x7f1100ea

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mValue:Landroid/widget/TextView;

    .line 333
    const v1, 0x7f1100eb

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    .line 335
    const v1, 0x7f1100e9

    invoke-virtual {p4, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 336
    .local v0, "label":Landroid/widget/TextView;
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->BAR_COLORS:[I
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->access$100()[I

    move-result-object v2

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mMax:I

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mMin:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 339
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 340
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mMin:I

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 344
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 352
    if-eqz p3, :cond_0

    .line 353
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->this$0:Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;

    # getter for: Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mCurrentColors:[[I
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->access$200(Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;)[[I

    move-result-object v0

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mControlIndex:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mColorIndex:I

    iget v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mMin:I

    add-int/2addr v2, p2

    aput v2, v0, v1

    .line 354
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->this$0:Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;

    # getter for: Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mHardware:Lmokee/hardware/MKHardwareManager;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->access$300(Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;)Lmokee/hardware/MKHardwareManager;

    move-result-object v0

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mControlIndex:I

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->this$0:Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;

    # getter for: Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->mCurrentColors:[[I
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;->access$200(Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma;)[[I

    move-result-object v2

    iget v3, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mControlIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lmokee/hardware/MKHardwareManager;->setDisplayGammaCalibration(I[I)Z

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mValue:Landroid/widget/TextView;

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mMin:I

    add-int/2addr v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 363
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 368
    return-void
.end method

.method public setGamma(I)V
    .locals 2
    .param p1, "gamma"    # I

    .prologue
    .line 347
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/flyme/deviceoriginalsettings/livedisplay/DisplayGamma$GammaSeekBar;->mMin:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 348
    return-void
.end method
