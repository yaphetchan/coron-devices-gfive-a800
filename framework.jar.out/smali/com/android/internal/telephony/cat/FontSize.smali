.class public final enum Lcom/android/internal/telephony/cat/FontSize;
.super Ljava/lang/Enum;
.source "FontSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cat/FontSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cat/FontSize;

.field public static final enum LARGE:Lcom/android/internal/telephony/cat/FontSize;

.field public static final enum NORMAL:Lcom/android/internal/telephony/cat/FontSize;

.field public static final enum SMALL:Lcom/android/internal/telephony/cat/FontSize;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/android/internal/telephony/cat/FontSize;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/cat/FontSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    .line 24
    new-instance v0, Lcom/android/internal/telephony/cat/FontSize;

    const-string v1, "LARGE"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/cat/FontSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->LARGE:Lcom/android/internal/telephony/cat/FontSize;

    .line 25
    new-instance v0, Lcom/android/internal/telephony/cat/FontSize;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/cat/FontSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->SMALL:Lcom/android/internal/telephony/cat/FontSize;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/cat/FontSize;

    sget-object v1, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/cat/FontSize;->LARGE:Lcom/android/internal/telephony/cat/FontSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/cat/FontSize;->SMALL:Lcom/android/internal/telephony/cat/FontSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/cat/FontSize;->$VALUES:[Lcom/android/internal/telephony/cat/FontSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/android/internal/telephony/cat/FontSize;->mValue:I

    .line 31
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/cat/FontSize;
    .locals 5
    .parameter "value"

    .prologue
    .line 41
    invoke-static {}, Lcom/android/internal/telephony/cat/FontSize;->values()[Lcom/android/internal/telephony/cat/FontSize;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/cat/FontSize;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 42
    .local v1, e:Lcom/android/internal/telephony/cat/FontSize;
    iget v4, v1, Lcom/android/internal/telephony/cat/FontSize;->mValue:I

    if-ne v4, p0, :cond_0

    .line 46
    .end local v1           #e:Lcom/android/internal/telephony/cat/FontSize;
    :goto_1
    return-object v1

    .line 41
    .restart local v1       #e:Lcom/android/internal/telephony/cat/FontSize;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    .end local v1           #e:Lcom/android/internal/telephony/cat/FontSize;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cat/FontSize;
    .locals 1
    .parameter "name"

    .prologue
    .line 22
    const-class v0, Lcom/android/internal/telephony/cat/FontSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/FontSize;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cat/FontSize;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/internal/telephony/cat/FontSize;->$VALUES:[Lcom/android/internal/telephony/cat/FontSize;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cat/FontSize;

    return-object v0
.end method
