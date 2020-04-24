# What's this
Lambda_Function_simple_gems_for_ruby2.7.0 は AWS Lambda カスタムランタイム Ruby2.7.0 Layer 上で起動する
Ruby2.7.0 の Lambda functionテンプレートです。
シンプルなgemがプレインストールされていますので、必要なGemを追加してLambda functionとして導入してください。

# 注意点
mysql,kaminariなどのネイティブライブラリは未対応です。

# AWS Lambda デプロイ手順
```
$ vi lambda_function.rb
(LambdaHandler開発)
$ vi Gemfile
(Gemfile 修正)
$ bundle install --path vendor/bundle
$ zip -r function.zip lambda_function.rb vendor Gemfile Gemfile.lock 
$ aws lambda update-function-code --function-name rubyGemTest1 --zip-file fileb://function.zip
```
