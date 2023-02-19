# 导入需要的packages
library(ggplot2)

# 导入数据集
movie_df <- read.csv("P2-Movie-Ratings.csv")

# 查看一下数据
head(movie_df)
tail(movie_df)

# 查看数据集的结构
str(movie_df)

# 修改数据集的列名
colnames(movie_df)  # 查看现有的名称
colnames(movie_df) <- c("File", "Genere", "CriticRating", "AudienceRating", "BudgetMillions", "Year")  # 修改列名
colnames(movie_df)  # 再次查看

# 简单的总结总计
summary(movie_df)

# 将年份转换为factor
movie_df$Year <- factor(movie_df$Year)  # 使用factor()函数
str(movie_df$Year)  # 查看这一列的数据类型
summary(movie_df)


# aes层
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating))
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating)) + geom_point()
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere)) + geom_point()
ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere, size = Genere)) + geom_point()

ggplot(data = movie_df, aes(x = CriticRating, y = AudienceRating, colour = Genere, size = BudgetMillions)) + geom_point()

# 方便
q
p + geom_point()
p + geom_line()
p + geom_line() + geom_point()
p  + geom_point() + geom_line()
