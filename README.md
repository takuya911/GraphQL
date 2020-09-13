## GraphQL勉強用 repository
- GraphQL勉強用です。

## 使用技術
- tool
  - gqlgen
  - go module
- language
  - golang
- infrastructure
  - dev
    - Docker
    - docker-compose
    - Makefile

## Makefile
### SQL
- SQLファイル作成
```
make newsql NAME=< 作成するファイルの名前 >
```

- マイグレーション
```
make migrate MIGRATE=up
```