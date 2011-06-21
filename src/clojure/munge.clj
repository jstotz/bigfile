(use '[clojure.string :only (join split)])
(use '[clojure.contrib.math :only (expt)])

(doseq [line (line-seq (java.io.BufferedReader. *in*))] 
    (println
      (join "," (map #(expt (Integer/parseInt %1) 2) (split line #",")))))