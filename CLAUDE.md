# TDD by Example - Ruby

Kent Beck の『テスト駆動開発』を Ruby（RSpec）で実践するプロジェクト。

## TDD ワークフロー（Red → Green → Refactor）

常に厳密な TDD サイクルを順守すること。ステップを飛ばさない。

### Red
- 実装コードより先に、**失敗するテストを書く**
- 構文エラーではなく、正しい理由で失敗することを確認する
- テストを実行して失敗を確認する: `bundle exec rspec`

### Green
- テストを通すための**最小限のコード**を書く
- まずは「仮実装・明白な実装」から始める
- 現在失敗しているテストが要求していないロジックは追加しない
- 一般化したい衝動を抑え、まずは通すことに集中する

### Refactor
- すべてのテストが Green になってから、重複の除去や可読性の向上を行う
- リファクタリング中もテストは常に Green を維持する
- リファクタリングで新しい振る舞いを追加しない

## コミットメッセージ規約

コミットメッセージには現在の TDD フェーズをプレフィックスとして付ける:

```
[Red]      Add failing test for <機能>
[Green]    Implement <機能> to pass tests
[Refactor] Remove duplication in <対象>
```

## ブランチ・PR 戦略

- 章ごとにブランチを切る（例: `Chapter_3_Equality_for_All`）
- 章の実装が完了したら PR を作成して main にマージする

## 使用ツール

- **RSpec**: テストフレームワーク
- **RuboCop**: Linter / Formatter（`rubocop-rspec`, `rubocop-performance` を含む）

## プロジェクト構成

```
lib/      # プロダクションコード
spec/     # RSpec テストファイル (*_spec.rb)
```

## テスト実行

```bash
bundle exec rspec                    # 全テスト実行
bundle exec rspec spec/foo_spec.rb   # 特定ファイルのみ実行
```

## テストコードのスタイル

- テストコードは Arrange-Act-Assert（準備・実行・検証）の構造を意識し、何を確認しているかが明確に伝わるように書くこと

## ルール

- 失敗するテストなしに実装コードを書かない
- 現在のテストを通すために必要な以上のコードを書かない
- テストが Red の状態でリファクタリングしない
- 三角測量（複数のテストケース）を使って一般化を導く
- テストリストを常に意識し、実装前に新しいケースをリストに追加する
