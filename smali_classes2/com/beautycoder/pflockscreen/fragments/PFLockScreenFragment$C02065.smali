.class Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02065;
.super Ljava/lang/Object;
.source "PFLockScreenFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C02065"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 128
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02065;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 132
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02065;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->startActivity(Landroid/content/Intent;)V

    .line 133
    return-void
.end method
