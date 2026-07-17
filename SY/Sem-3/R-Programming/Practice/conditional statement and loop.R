gender = c("M","F","M","F","F")

# if else
ifelse(gender=="M", print("M"), print("F"))

#vector feature
till100 = c(1:100)
#for loop
result = for(i in 1:length(gender)){
  ifelse(gender[i]=="M", print("M"), print("F"))
}
