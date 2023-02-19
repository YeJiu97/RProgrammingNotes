# 创建数据集
code_df <- data.frame(
  "grammer" = c("Python","C","Java","GO",NA,"SQL","PHP","Python"),
  "score" = c(1,2,NA,4,5,6,7,10)
)
code_df

# tibble
library(tibble)
code_df <- tibble(
  
  "grammer" = c("Python","C","Java","GO",NA,"SQL","PHP","Python"),
  "score" = c(1,2,NA,4,5,6,7,10)
  
)
code_df

# 提取含有字符串Python的行
code_df[which(df$grammar == "Python"), ]
