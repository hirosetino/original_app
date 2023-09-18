# テーブル設計

## users テーブル

| Column             | Type   | Option                    |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| encrypted_password | string | null: false               |
| email              | string | null: false, unique: true |

### Association

- has_many :recipes


## recipes テーブル

| Column          | Type       | Option                         |
| --------------- | ---------- | ------------------------------ |
| name            | string     | null: false                    |
| cooking_time_id | integer    | null: false                    |
| food            | text       | null: false                    |
| cooking_method  | text       | null: false                    |
| user            | references | null: false, foreign_key: true |


### Association

- belongs_to :user