#### 自動生成コード　再生成
```
$ go run github.com/99designs/gqlgen generate
```

#### 自動生成のメモ
- 自動生成のために編集が必要なファイル
  - /schema.graphql
  - /gqlgen.yml
- （よく確認する）自動生成ファイル
  - /graph/resolver.go
    - endpoint に対応するメソッドを実装している部分。
    - 同様多くの処理は持たせず軽い Validation などだけにした方が良き。
  - /graph/model/models_gen.go
    - スキーマに定義した Type に対応する構造体が定義される。
    - 基本編集しない。
  - /graph/schema.resolver.go
    - yml の resolver に指定したスキーマファイル分だけ生成される。
