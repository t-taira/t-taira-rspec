## t-taira-rspec

```
$ rspec -f d

ArticlesController
  GET #index
    should respond with a success status code (2xx)
    should eq [#<Article id: 1, title: "Article 1", body: "HELLO", created_at: "2017-03-31 21:03:04", updated_at: "...: "Article 2", body: "WORLD", created_at: "2017-03-31 21:03:04", updated_at: "2017-03-31 21:03:04">]

ArticlesHelper
  #posted_on
    should eq "2017/4/1"

Article
  titleとbodyを指定した場合
    should eq "初めてのブログ"
    should eq "ブログはじめました"
  titleが指定されていない場合
    should not be valid
  titleが指定されている場合
    should be valid

articles/index.html.erb
  should match /初めてのブログ/
  should match /ブログはじめました/

Finished in 0.04903 seconds (files took 1.67 seconds to load)
9 examples, 0 failures
```
