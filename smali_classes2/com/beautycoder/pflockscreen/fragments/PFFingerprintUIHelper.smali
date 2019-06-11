.class public Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;
.super Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "PFFingerprintUIHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C02013;,
        Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C02002;,
        Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C01991;
    }
.end annotation


# static fields
.field private static final ERROR_TIMEOUT_MILLIS:J = 0x640L

.field private static final SUCCESS_DELAY_MILLIS:J = 0xc8L


# instance fields
.field private final mCallback:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

.field private mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

.field private final mErrorTextView:Landroid/widget/TextView;

.field private final mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

.field private final mIcon:Landroid/widget/ImageView;

.field private mResetErrorTextRunnable:Ljava/lang/Runnable;

.field private mSelfCancelled:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;)V
    .locals 1
    .param p1, "fingerprintManager"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    .param p2, "icon"    # Landroid/widget/ImageView;
    .param p3, "errorTextView"    # Landroid/widget/TextView;
    .param p4, "callback"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

    .line 58
    invoke-direct {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    .line 23
    new-instance v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C02013;

    invoke-direct {v0, p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C02013;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    .line 59
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    .line 60
    iput-object p2, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    .line 61
    iput-object p3, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    .line 62
    iput-object p4, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCallback:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    .line 15
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCallback:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    .line 15
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    .line 15
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/CharSequence;

    .line 111
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04005d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 114
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method


# virtual methods
.method public isFingerprintAuthAvailable()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .line 87
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mSelfCancelled:Z

    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, p2}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->showError(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C01991;

    invoke-direct {v1, p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C01991;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)V

    const-wide/16 v2, 0x640

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->showError(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .line 94
    invoke-direct {p0, p2}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->showError(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 4
    .param p1, "result"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;

    .line 102
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mResetErrorTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 104
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040054

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 105
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mIcon:Landroid/widget/ImageView;

    new-instance v1, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C02002;

    invoke-direct {v1, p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C02002;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method

.method public startListening(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)V
    .locals 7
    .param p1, "cryptoObject"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    .line 70
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->isFingerprintAuthAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Landroid/support/v4/os/CancellationSignal;

    invoke-direct {v0}, Landroid/support/v4/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mSelfCancelled:Z

    .line 73
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mFingerprintManager:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->authenticate(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    .line 76
    :cond_0
    return-void
.end method

.method public stopListening()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mSelfCancelled:Z

    .line 81
    invoke-virtual {v0}, Landroid/support/v4/os/CancellationSignal;->cancel()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;

    .line 84
    :cond_0
    return-void
.end method
