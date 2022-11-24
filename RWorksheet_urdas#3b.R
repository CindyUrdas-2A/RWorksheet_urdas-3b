#1a.
dframe <- data.frame(
  Respondents = 1:20,
  Sex = c(2,2,1,2,2,2,2,2,2,2,1,2,2,2,2,2,2,2,1,2),
  Fathers_Occupation = c(1,3,3,3,1,2,3,1,1,1,3,2,1,3,3,1,3,1,2,1),
  Persons_atHome = c(5,7,3,8,5,9,6,7,8,4,7,5,4,7,8,8,3,11,7,6),
  Siblings_atSchool = c(6,4,4,1,2,1,5,3,1,2,3,2,5,5,2,1,2,5,3,2),
  Types_houses = c(1,2,3,1,1,3,3,1,2,3,2,3,2,2,3,3,3,3,3,2))
dframe

#b.
summary(dframe)

#c. 
mean(dframe$Siblings_atSchool)

#d. 
extract_d <- subset(dframe[c(1:2), ])
extract_d

#e. 
extract_e <- subset(dframe[c(3,5), c(2,4)])
extract_e

#f. 
extract_f <- subset(dframe, select = Types_houses)
extract_f

#g. 
extract_g <- subset(dframe, 
                   Sex == 1 & Fathers_Occupation < 1,select = c(Sex, Fathers_Occupation), 
                   drop = FALSE)
extract_g

#h. 
extract_h <- subset(dframe,Sex == 2 & Siblings_atSchool >= 5, select = c(Sex, Siblings_atSchool), 
                   drop = FALSE)
extract_h

#2
df = data.frame(Ints=integer(),
                
                Doubles=double(), Characters=character(),
                Logicals=logical(),
                Factors=factor(),
                stringsAsFactors=FALSE)

print("Structure of the empty dataframe:")
print(str(df))


