#case 30
c30native <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output native/txt/clean/c30nativeclean")
c30docker <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output docker/txt/clean/c30dockerclean")
c30vm <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output vm/txt/clean/c30vmclean")

#case 50
c50native <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output native/txt/clean/c50nativeclean")
c50docker <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output docker/txt/clean/c50dockerclean")
c50vm <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output vm/txt/clean/c50vmclean")

#case 80
c80native <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output native/txt/clean/c80nativeclean")
c80docker <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output docker/txt/clean/c80dockerclean")
c80vm <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output vm/txt/clean/c80vmclean")

#case 100
c100native <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output native/txt/clean/c100nativeclean")
c100docker <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output docker/txt/clean/c100dockerclean")
c100vm <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output vm/txt/clean/c100vmclean")

#case 150
c150native <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output native/txt/clean/c150nativeclean")
c150docker <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output docker/txt/clean/c150dockerclean")
c150vm <- read.table("~/Documents/College/Year 3/Semester 1/CS3204 - Cloud Infrastructure and Services/Lab/output vm/txt/clean/c150vmclean")

#create datafames of cases in docker & vm
colnamedvm <- c("docker", "vm")

df30dvm <- cbind(c30docker, c30vm)
colnames(df30dvm) <- colnamedvm

df50dvm <- cbind(c50docker, c50vm)
colnames(df30dvm) <- colnamedvm

df80dvm <- cbind(c80docker, c80vm)
colnames(df30dvm) <- colnamedvm

df100dvm <- cbind(c100docker, c100vm)
colnames(df30dvm) <- colnamedvm

df150dvm <- cbind(c150docker, c150vm)
colnames(df30dvm) <- colnamedvm


#create dataframe of cases in 3 environments
colnameall <- c("native", "docker", "vm")

df30 <- cbind(c30native, c30docker, c30vm)
colnames(df30) <- colnameall

df50 <- cbind(c50native, c50docker, c50vm)
colnames(df50) <- colnameall

df80 <- cbind(c80native, c80docker, c80vm)
colnames(df80) <- colnameall

df100 <- cbind(c100native, c100docker, c100vm)
colnames(df100) <- colnameall

df150 <- cbind(c150native, c150docker, c150vm)
colnames(df150) <- colnameall


#case 30
#all 3 environments
pdf("c30comparison.pdf")
matplot(df30, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 1:3)
legend("topleft", legend = colnameall, col = 1:3, pch = 20)
dev.off()

#native
pdf("c30native.pdf")
matplot(c30native, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 1)
legend("topleft", legend = "native", col = 1, pch = 20)
dev.off()

#container & vm
pdf("c30dvm.pdf")
matplot(df30dvm, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 2:3)
legend("topleft", legend = colnamedvm, col = 2:3, pch = 20)
dev.off()


#case 50
#all 3 envionments
pdf("c50comparison.pdf")
matplot(df50, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 1:3)
legend("topleft", legend = colnameall, col = 1:3, pch = 20)
dev.off()

#native
pdf("c50native.pdf")
matplot(c50native, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 1)
legend("topleft", legend = "native", col = 1, pch = 20)
dev.off()

#docker & vm
pdf("c50dvm.pdf")
matplot(df50dvm, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 2:3)
legend("topleft", legend = colnamedvm, col = 2:3, pch = 20)
dev.off()


#case 80
#all 3 environments
pdf("c80comparison.pdf")
matplot(df80, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 1:3)
legend("topleft", legend = colnameall, col = 1:3, pch = 20)
dev.off()

#native
pdf("c80native.pdf")
matplot(c80native, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 1)
legend("topleft", legend = "native", col = 1, pch = 20)
dev.off()

#docker & vm
pdf("c80dvm.pdf")
matplot(df80dvm, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 2:3)
legend("topleft", legend = colnamedvm, col = 2:3, pch = 20)
dev.off()


#case 100
#all 3 environments
pdf("c100comparison.pdf")
matplot(df100, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 1:3)
legend("topleft", legend = colnameall, col = 1:3, pch = 20)
dev.off()

#native
pdf("c100native.pdf")
matplot(c100native, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 1)
legend("topleft", legend = "native", col = 1, pch = 20)
dev.off()

#docker & vm
pdf("c100dvm.pdf")
matplot(df100dvm, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 2:3)
legend("topleft", legend = colnamedvm, col = 2:3, pch = 20)
dev.off()

#case 150
#all 3 environemnts
pdf("c150comparison.pdf")
matplot(df150, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 1:3)
legend("topleft", legend = colnameall, col = 1:3, pch = 20)
dev.off()

#native
pdf("c150native.pdf")
matplot(c150native, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 1)
legend("topleft", legend = "native", col = 1, pch = 20)
dev.off()

#docker & vm
pdf("c150dvm.pdf")
matplot(df150dvm, xlab ="case", ylab = "seconds", type = 'l', pch = 20, col = 2:3)
legend("topleft", legend = colnamedvm, col = 2:3, pch = 20)
dev.off()

summary(df30)
summary(df50)
summary(df80)
summary(df100)
summary(df150)