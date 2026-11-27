# coding: utf-8
# gaf2gmt.rb
# GAF形式のファイルをGMT形式に変換するスクリプト
gene2gos = Hash.new { |h,k| h[k] = [] }
ARGF.each_line do |line|
  next if line.start_with?('!')
  f = line.chomp.split("\t")
  gene = f[1]          # DB Object ID（TAIR: ATxGxxxxx）
  go   = f[4]          # GO:0000000
  gene2gos[gene] << go
end

go2genes = Hash.new { |h,k| h[k] = [] }
gene2gos.each { |g,gos| gos.uniq.each { |go| go2genes[go] << g } }

go2genes.each { |go, genes| puts [go, genes.size, genes.sort.uniq.join("\t")].join("\t") }
