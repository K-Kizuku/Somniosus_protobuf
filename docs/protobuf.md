# protocol buffersの命名規則について

## メソッド名

サービスにより、その IDL の仕様において、コレクションやリソースのメソッドに対応する 1 つ以上の RPC メソッドを定義できます。メソッド名は、大文字のキャメルケースで、VerbNoun の命名規則に従うことが推奨されます。通常、名詞はリソースタイプを示します。

|  動詞 | 名詞 | メソッド名           | リクエストメッセージ          | レスポンスメッセージ        |
|------|------|-------------------|---------------------------|---------------------------|
| List | Book | ListBooks         | ListBooksRequest          | ListBooksResponse         |
| Get  | Book | GetBook           | GetBookRequest            | Book                      |
| Create | Book | CreateBook       | CreateBookRequest        | Book                      |
| Update | Book | UpdateBook       | UpdateBookRequest        | Book                      |
| Rename | Book | RenameBook       | RenameBookRequest        | RenameBookResponse        |
| Delete | Book | DeleteBook       | DeleteBookRequest        | google.protobuf.Empty     |

メソッド名の動詞部分には、質問を目的とした単語ではなく、指示や命令を目的とした単語を使用する必要があります。

複数メソッドの場合、メソッド名の名詞部分は、List を除くすべてのメソッドに対して単数形であることが必要です。また、List では複数形にする必要があります。カスタムメソッドでは、必要に応じて単数形または複数形の名詞を指定できます。パッケージ内では、複数形の名詞を使用することが必要です。

## メッセージ名

メッセージ名は短く簡略であることが推奨されます。不要な言葉や冗長な文章は避けてください。形容詞を外した状態で対応するメッセージが存在しない場合、その形容詞はたいてい省略できます。たとえば、`SharedProxySettings` の Shared は、共有されていないプロキシ設定がなければ不要です。

### リクエスト メッセージとレスポンス メッセージ
RPC メソッドのリクエスト メッセージとレスポンス メッセージには、メソッド名にちなんだ名前を付けて、その後にそれぞれ接尾辞 `Request` や `Response` を続けることが**推奨**されます。ただし、メソッドのリクエストやレスポンスが次のタイプである場合は、その限りではありません。

- 空のメッセージ（`google.protobuf.Empty` を使用）
- リソースタイプ
- オペレーションを表すリソース

これは通常、標準メソッド `Get`、`Create`、`Update`、`Delete` で使用されるリクエストまたはレスポンスに適用されます。

[参考(命名規則 | Cloud API | Google Cloud)](https://cloud.google.com/apis/design/naming_convention?hl=ja)
