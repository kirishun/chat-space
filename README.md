# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# ChatSpace DB設計

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|user_id|integer|null: false|
|group_id|integer|null: false|
### Association
- belongs_to :user
- belongs_to :group

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|e-mail|string|null: false|
|password|integer|null: false|
### Association
- has_many :messages
  has_many :groups_users
- has_many :groups, thorough: :groups_users

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|password|integer|null: false|
### Association
- has_many :messages
  has_many :groups_users
- has_many :users, thorough: :groups_users

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|group_id|string|null: false|
|user_id|string|null: false|
### Association
- belongs_to :user
- belongs_to :group
