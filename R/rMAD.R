#' Title Evaluation of the tumor heterogeneity level.
#'
#' @param expr gene expression profiles in tumor (microarray or RNA-Seq data, log2 transformed is recommended).
#'
#' @export
#' @return A dataframe with 2 columns:
#' \item{Sample}{Tumor samples to be predicted.}
#' \item{heterogeneity score}{The heterogeneity score of each sample.}
#' 
#' @author Xiaosheng Wang <xiaosheng.wang@@cpu.edu.cn>
#' 
rMAD <- function(expr){
  adjust_expr <- sweep(expr,1,rowMeans(expr))
  
  expr_rank <- as.data.frame(t(apply(adjust_expr,1,rank,na.last = "keep")))
  
  scores <- as.numeric(apply(expr_rank, 2, stats::mad, na.rm = T))
  
  results <- data.frame(sample = colnames(expr), score = scores)
  return(results)
}