# 1. JDKとTomcatを含んだ公式イメージを使う
FROM tomcat:9.0

# 2. WARファイルをTomcatのwebappsにコピー（自動デプロイされる）
COPY DockerT.war /usr/local/tomcat/
# 3. コンテナ起動時にTomcatをフォアグラウンドで実行
CMD ["catalina.sh", "run"]
