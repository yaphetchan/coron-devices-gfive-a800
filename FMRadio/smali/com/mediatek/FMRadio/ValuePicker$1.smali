.class final Lcom/mediatek/FMRadio/ValuePicker$1;
.super Ljava/lang/Object;
.source "ValuePicker.java"

# interfaces
.implements Lcom/mediatek/FMRadio/ValuePicker$Formatter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/FMRadio/ValuePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final mArgs:[Ljava/lang/Object;

.field final mBuilder:Ljava/lang/StringBuilder;

.field final mFmt:Ljava/util/Formatter;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 144
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$1;->mBuilder:Ljava/lang/StringBuilder;

    .line 147
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker$1;->mBuilder:Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$1;->mFmt:Ljava/util/Formatter;

    .line 149
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$1;->mArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public format(I)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 152
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$1;->mArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 153
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$1;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/FMRadio/ValuePicker$1;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 154
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$1;->mFmt:Ljava/util/Formatter;

    const-string v1, "%02d"

    iget-object v2, p0, Lcom/mediatek/FMRadio/ValuePicker$1;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 155
    iget-object v0, p0, Lcom/mediatek/FMRadio/ValuePicker$1;->mFmt:Ljava/util/Formatter;

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
