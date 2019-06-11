.class Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C02013;
.super Ljava/lang/Object;
.source "PFFingerprintUIHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C02013"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    .line 48
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C02013;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 52
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C02013;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->access$100(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C02013;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->access$100(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040036

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper$C02013;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;->access$200(Lcom/beautycoder/pflockscreen/fragments/PFFingerprintUIHelper;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f06005b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 55
    return-void
.end method
