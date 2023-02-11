# 先确认一下当前的路径
getwd()

# R语言提供了一些内置的函数
rnorm()
c()
seq()
rep()
print()

is.numeric()
is.integer()
is.double()
is.character()

typeof()
sqrt()
paste()


# 使用 ? 来进行查看
?rnorm()


# 写一个自己的函数
find.even.number <- function(max_number){
  
  for (i in 1:max_number){
    
    if (i %% 2 == 0){
      
      print(i)
      
    }
    
  }
  
}