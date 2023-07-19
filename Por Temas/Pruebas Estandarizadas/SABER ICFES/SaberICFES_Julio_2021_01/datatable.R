library(data.table)
olimpo <- fread("Todos.csv")
head(olimpo)
class(olimpo)

mt <- fread("https://raw.githubusercontent.com/selva86/datasets/master/mtcars.csv")
head(mt)
class(mt)

# datatable syntax


mtcars$carname <- rownames(mtcars)
mtcars$carname
mtcars_dt <- as.data.table(mtcars)
class(mtcars_dt)
mtcars_dt[cyl==6 & gear==4, ]

mtcars_dt[, mpg]

columns <- c('mpg', 'cyl', 'disp')

mtcars_dt[, columns, with=FALSE]

olimpo_dt <- as.data.table(olimpo)
class(olimpo_dt)

columnas <- c("Usuario","Ciudad","PrimeraRonda")
olimpo_dt[,columnas,with=F]

mtcars_dt[, .I[cyl==6]]

mtcars_dt[, .(.N, mileage=mean(mpg) %>% round(2)), by=gear]

dcast.data.table(mtcars_dt, cyl ~ carb, fun.aggregate = mean, value.var = 'mpg')

dcast.data.table(mtcars_dt, carb ~ cyl, fun.aggregate = list(max, min), value.var = 'mpg')

dcast.data.table(mtcars_dt, carb ~ cyl, fun.aggregate = function(x)(max(x) - min(x)), 
                 value.var = 'mpg')


list_1 <- c("a","b","c","d")
list_2 <- c("1","2","3","4")
list_3 <- c("aa","bb","cc","dd")

# Solution
DT <- data.table(V1= list_1, V2 =list_2, V3 = list_3 )
print(DT)


# Input
DT <- fread('https://raw.githubusercontent.com/selva86/datasets/master/Cars93_miss.csv')

# Solution
# Get Manufacturer with highest price
print(DT[Price == min(Price, na.rm = TRUE)][,list(Manufacturer, Model, Type)])

# Get row number
DT[, .(rownum=.I, Price)][Price == max(Price, na.rm = TRUE), rownum]


olimpo <- fread("Todos.csv")
print(olimpo[PrimeraRonda==max(PrimeraRonda, na.rm=T)][,list(Ciudad,Institucion,
                                                             Grado,Nombre,Apellidos)])

mi_df <- attitude[, c(2, 3, 4)]
head(mi_df)