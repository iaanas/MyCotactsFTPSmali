.class Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$PFFingerprintAuthDialogFragment$1;
.super Ljava/lang/Object;
.source "PFFingerprintAuthDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PFFingerprintAuthDialogFragment$1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;

    .line 32
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$PFFingerprintAuthDialogFragment$1;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 36
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$PFFingerprintAuthDialogFragment$1;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;

    invoke-virtual {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;->dismiss()V

    .line 37
    return-void
.end method
