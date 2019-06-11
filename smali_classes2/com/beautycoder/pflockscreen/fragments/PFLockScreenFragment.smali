.class public Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
.super Landroid/support/v4/app/Fragment;
.source "PFLockScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;,
        Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;,
        Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;,
        Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02077;,
        Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02065;,
        Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;,
        Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02043;,
        Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02032;,
        Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02021;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_DIALOG_FRAGMENT_TAG:Ljava/lang/String; = "FingerprintDialogFragment"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCode:Ljava/lang/String;

.field private mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

.field private mCodeListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

.field private mCodeView:Lcom/beautycoder/pflockscreen/views/PFCodeView;

.field private mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

.field private mDeleteButton:Landroid/view/View;

.field private mEncodedPinCode:Ljava/lang/String;

.field private mFingerprintButton:Landroid/view/View;

.field private mFingerprintHardwareDetected:Z

.field private mIsCreateMode:Z

.field private mLeftButton:Landroid/widget/TextView;

.field private mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

.field private mNextButton:Landroid/widget/Button;

.field private mOnDeleteButtonClickListener:Landroid/view/View$OnClickListener;

.field private mOnDeleteButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOnFingerprintClickListener:Landroid/view/View$OnClickListener;

.field private mOnKeyClickListener:Landroid/view/View$OnClickListener;

.field private mOnNextButtonClickListener:Landroid/view/View$OnClickListener;

.field private mRootView:Landroid/view/View;

.field private mUseFingerPrint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-class v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCode:Ljava/lang/String;

    .line 37
    new-instance v1, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;

    invoke-direct {v1, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02536;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    .line 41
    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mEncodedPinCode:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintHardwareDetected:Z

    .line 44
    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    .line 48
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02032;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02032;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnDeleteButtonClickListener:Landroid/view/View$OnClickListener;

    .line 49
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02043;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02043;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnDeleteButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 50
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02054;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnFingerprintClickListener:Landroid/view/View$OnClickListener;

    .line 51
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02021;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02021;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    .line 52
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02077;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02077;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnNextButtonClickListener:Landroid/view/View$OnClickListener;

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    return-void
.end method

.method static synthetic access$000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/views/PFCodeView;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 32
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeView:Lcom/beautycoder/pflockscreen/views/PFCodeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    .param p1, "x1"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->configureRightButton(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 32
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 32
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 32
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mEncodedPinCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 32
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->errorAction()V

    return-void
.end method

.method static synthetic access$1400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 32
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->isFingerprintApiAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->isFingerprintsExists(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 32
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 32
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->showNoFingerprintDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 32
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 32
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 32
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->deleteEncodeKey()V

    return-void
.end method

.method private applyConfiguration(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;)V
    .locals 4
    .param p1, "configuration"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 243
    if-eqz p1, :cond_6

    .line 244
    const v1, 0x7f0700ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getLeftButton()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getLeftButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getOnLeftButtonClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    :goto_0
    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getNextButton()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getNextButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    :cond_1
    invoke-virtual {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->isUseFingerprint()Z

    move-result v0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "z":Z
    iget-boolean v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    if-nez v2, :cond_2

    .line 257
    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 258
    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 260
    :cond_2
    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    invoke-virtual {v2}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 261
    const/4 v0, 0x1

    .line 263
    :cond_3
    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    .line 264
    iget-boolean v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    if-eqz v2, :cond_4

    .line 265
    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :cond_4
    iget-boolean v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    if-eqz v1, :cond_5

    .line 269
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mNextButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnNextButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 271
    :cond_5
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mNextButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :goto_1
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeView:Lcom/beautycoder/pflockscreen/views/PFCodeView;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    invoke-virtual {v2}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->getCodeLength()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->setCodeLength(I)V

    .line 276
    .end local v0    # "z":Z
    :cond_6
    return-void
.end method

.method private configureRightButton(I)V
    .locals 3
    .param p1, "codeLength"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 293
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 294
    if-lez p1, :cond_0

    .line 295
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 299
    :cond_1
    if-lez p1, :cond_2

    .line 300
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 304
    :cond_2
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintHardwareDetected:Z

    if-eqz v0, :cond_3

    .line 305
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 313
    :goto_1
    return-void
.end method

.method private deleteEncodeKey()V
    .locals 3

    .line 329
    :try_start_0
    invoke-static {}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->getInstance()Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/security/PFFingerprintPinCodeHelper;->delete()V
    :try_end_0
    .catch Lcom/beautycoder/pflockscreen/security/PFSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/security/PFSecurityException;->printStackTrace()V

    .line 332
    sget-object v1, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->TAG:Ljava/lang/String;

    const-string v2, "Can not delete the alias"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v0    # "e":Lcom/beautycoder/pflockscreen/security/PFSecurityException;
    :goto_0
    return-void
.end method

.method private errorAction()V
    .locals 3

    .line 337
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 338
    .local v0, "v":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    .line 339
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 342
    :cond_0
    return-void
.end method

.method private initKeyViews(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    .line 279
    const v0, 0x7f070024

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    const v0, 0x7f070025

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v0, 0x7f070026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    const v0, 0x7f070027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    const v0, 0x7f070028

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v0, 0x7f070029

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    const v0, 0x7f07002a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v0, 0x7f07002b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    const v0, 0x7f07002c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v0, 0x7f07002d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnKeyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    return-void
.end method

.method private isFingerprintApiAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 316
    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    return v0
.end method

.method private isFingerprintsExists(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 320
    invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method

.method private showNoFingerprintDialog()V
    .locals 3

    .line 324
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "No fingerprint title"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Text"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02065;

    invoke-direct {v1, p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02065;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V

    const-string v2, "Setting"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 325
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 208
    const v0, 0x7f09001f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 209
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    .line 210
    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    .line 211
    const v1, 0x7f070030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLeftButton:Landroid/widget/TextView;

    .line 212
    const v1, 0x7f070031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mNextButton:Landroid/widget/Button;

    .line 213
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnDeleteButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mDeleteButton:Landroid/view/View;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnDeleteButtonOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 215
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnFingerprintClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/beautycoder/pflockscreen/views/PFCodeView;

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeView:Lcom/beautycoder/pflockscreen/views/PFCodeView;

    .line 217
    invoke-direct {p0, v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->initKeyViews(Landroid/view/View;)V

    .line 218
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeView:Lcom/beautycoder/pflockscreen/views/PFCodeView;

    iget-object v2, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    invoke-virtual {v1, v2}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->setListener(Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;)V

    .line 219
    iget-boolean v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    if-nez v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->isFingerprintApiAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintHardwareDetected:Z

    .line 223
    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mRootView:Landroid/view/View;

    .line 224
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    invoke-direct {p0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->applyConfiguration(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;)V

    .line 225
    return-object v0
.end method

.method public onStart()V
    .locals 2

    .line 229
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mIsCreateMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mUseFingerPrint:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->isAutoShowFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->isFingerprintApiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->isFingerprintsExists(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mOnFingerprintClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mFingerprintButton:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 232
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 233
    return-void
.end method

.method public setCodeCreateListener(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    .line 345
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mCodeCreateListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenCodeCreateListener;

    .line 346
    return-void
.end method

.method public setConfiguration(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;)V
    .locals 0
    .param p1, "configuration"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    .line 236
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mConfiguration:Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    .line 237
    invoke-direct {p0, p1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->applyConfiguration(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;)V

    .line 238
    return-void
.end method

.method public setEncodedPinCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "encodedPinCode"    # Ljava/lang/String;

    .line 353
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mEncodedPinCode:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setLoginListener(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    .line 349
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->mLoginListener:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$OnPFLockScreenLoginListener;

    .line 350
    return-void
.end method
