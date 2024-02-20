#' A function to calculate tpms from your raw count matrix
#'
#' @param lengths gene lengths
#' @param counts raw count dataframe
#' @param genenames row names or other gene names gene per row 
#' @param samplenames column names representing your sample names
#' @return tpm data frame
#'
#' @export

my_tpms = function(lengths,
					counts,
					genenames,
					samplenames){
					
tpm <- do.call(cbind, lapply(1:ncol(counts), function(i){
    rpk <- counts[,i] / lengths
    rpk / sum(rpk) * 1e6
}))

tpm <- as.data.frame(tpm)
colnames(tpm) <- samplenames
rownames(tpm) <- genenames

return(tpm)
}
