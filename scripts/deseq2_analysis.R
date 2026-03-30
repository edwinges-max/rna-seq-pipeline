library(DESeq2)

# Simulated count data (placeholder)
countData <- matrix(sample(1:100, 100, replace=TRUE), nrow=10)
colnames(countData) <- c("sample1", "sample2")
rownames(countData) <- paste0("gene", 1:10)

colData <- data.frame(condition=c("control","treated"))
rownames(colData) <- colnames(countData)

dds <- DESeqDataSetFromMatrix(countData = countData,
                              colData = colData,
                              design = ~ condition)

dds <- DESeq(dds)
res <- results(dds)

write.csv(as.data.frame(res), file="results/differential_expression/results.csv")
