.class Landroid/text/DynamicLayout$ChangeWatcher;
.super Ljava/lang/Object;
.source "DynamicLayout.java"

# interfaces
.implements Landroid/text/SpanWatcher;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/DynamicLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChangeWatcher"
.end annotation


# instance fields
.field private mLayout:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/text/DynamicLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/text/DynamicLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    .line 621
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 624
    iget-object v1, p0, Landroid/text/DynamicLayout$ChangeWatcher;->mLayout:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout;

    .line 626
    .local v0, ml:Landroid/text/DynamicLayout;
    if-eqz v0, :cond_1

    .line 627
    #calls: Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V
    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V

    .line 630
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 628
    .restart local p1
    :cond_1
    instance-of v1, p1, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    .line 629
    check-cast p1, Landroid/text/Spannable;

    .end local p1
    invoke-interface {p1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 642
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 634
    return-void
.end method

.method public onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 2
    .parameter "s"
    .parameter "o"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 645
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_0

    .line 646
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 647
    :cond_0
    return-void
.end method

.method public onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .locals 2
    .parameter "s"
    .parameter "o"
    .parameter "start"
    .parameter "end"
    .parameter "nstart"
    .parameter "nend"

    .prologue
    .line 655
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_0

    .line 656
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 657
    sub-int v0, p6, p5

    sub-int v1, p6, p5

    invoke-direct {p0, p1, p5, v0, v1}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 659
    :cond_0
    return-void
.end method

.method public onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 2
    .parameter "s"
    .parameter "o"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 650
    instance-of v0, p2, Landroid/text/style/UpdateLayout;

    if-eqz v0, :cond_0

    .line 651
    sub-int v0, p4, p3

    sub-int v1, p4, p3

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 652
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "where"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 637
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout$ChangeWatcher;->reflow(Ljava/lang/CharSequence;III)V

    .line 638
    return-void
.end method
