.class public Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "PFFingerprintAuthDialogFragment.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;,
        Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$PFFingerprintAuthDialogFragment$2;,
        Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$PFFingerprintAuthDialogFragment$1;
    }
.end annotation


# instance fields
.field private mAuthListener:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

.field private mFingerprintCallback:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

.field private mFingerprintContent:Landroid/view/View;

.field private mStage:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 28
    sget-object v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->FINGERPRINT:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mStage:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    return-void
.end method

.method private updateStage()V
    .locals 2

    .line 97
    sget-object v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$PFFingerprintAuthDialogFragment$2;->f9x6a51018e:[I

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mStage:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mCancelButton:Landroid/widget/Button;

    const-string v1, "Cancel"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mFingerprintContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 93
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->setRetainInstance(Z)V

    .line 61
    const/4 v0, 0x0

    const v1, 0x1030239

    invoke-virtual {p0, v0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->setStyle(II)V

    .line 62
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "Sign In"

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    const v0, 0x7f090036

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mCancelButton:Landroid/widget/Button;

    .line 68
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$PFFingerprintAuthDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$PFFingerprintAuthDialogFragment$1;-><init>(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mFingerprintContent:Landroid/view/View;

    .line 70
    new-instance v1, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    move-result-object v2

    const v3, 0x7f070056

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f070057

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mAuthListener:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;-><init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;)V

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mFingerprintCallback:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    .line 71
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->updateStage()V

    .line 72
    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 87
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 88
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mFingerprintCallback:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->stopListening()V

    .line 89
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 76
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 77
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mStage:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    sget-object v1, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->FINGERPRINT:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mFingerprintCallback:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mCryptoObject:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {v0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->startListening(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setAuthListener(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;)V
    .locals 0
    .param p1, "authListener"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

    .line 104
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mAuthListener:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthListener;

    .line 105
    return-void
.end method

.method public setStage(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;)V
    .locals 0
    .param p1, "stage"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    .line 83
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->mStage:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    .line 84
    return-void
.end method
