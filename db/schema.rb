# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151013002421) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "casino_auth_token_tickets", force: :cascade do |t|
    t.string   "ticket",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casino_auth_token_tickets", ["ticket"], name: "index_casino_auth_token_tickets_on_ticket", unique: true

  create_table "casino_login_tickets", force: :cascade do |t|
    t.string   "ticket",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casino_login_tickets", ["ticket"], name: "index_casino_login_tickets_on_ticket", unique: true

  create_table "casino_proxy_granting_tickets", force: :cascade do |t|
    t.string   "ticket",       null: false
    t.string   "iou",          null: false
    t.integer  "granter_id",   null: false
    t.string   "pgt_url",      null: false
    t.string   "granter_type", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casino_proxy_granting_tickets", ["granter_type", "granter_id"], name: "index_casino_proxy_granting_tickets_on_granter", unique: true
  add_index "casino_proxy_granting_tickets", ["granter_type", "granter_id"], name: "index_proxy_granting_tickets_on_granter", unique: true
  add_index "casino_proxy_granting_tickets", ["iou"], name: "index_casino_proxy_granting_tickets_on_iou", unique: true
  add_index "casino_proxy_granting_tickets", ["ticket"], name: "index_casino_proxy_granting_tickets_on_ticket", unique: true

  create_table "casino_proxy_tickets", force: :cascade do |t|
    t.string   "ticket",                                   null: false
    t.text     "service",                                  null: false
    t.boolean  "consumed",                 default: false, null: false
    t.integer  "proxy_granting_ticket_id",                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casino_proxy_tickets", ["proxy_granting_ticket_id"], name: "casino_proxy_tickets_on_pgt_id"
  add_index "casino_proxy_tickets", ["ticket"], name: "index_casino_proxy_tickets_on_ticket", unique: true

  create_table "casino_service_rules", force: :cascade do |t|
    t.boolean  "enabled",    default: true,  null: false
    t.integer  "order",      default: 10,    null: false
    t.string   "name",                       null: false
    t.string   "url",                        null: false
    t.boolean  "regex",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casino_service_rules", ["url"], name: "index_casino_service_rules_on_url", unique: true

  create_table "casino_service_tickets", force: :cascade do |t|
    t.string   "ticket",                                    null: false
    t.text     "service",                                   null: false
    t.integer  "ticket_granting_ticket_id"
    t.boolean  "consumed",                  default: false, null: false
    t.boolean  "issued_from_credentials",   default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casino_service_tickets", ["ticket"], name: "index_casino_service_tickets_on_ticket", unique: true
  add_index "casino_service_tickets", ["ticket_granting_ticket_id"], name: "casino_service_tickets_on_tgt_id"

  create_table "casino_ticket_granting_tickets", force: :cascade do |t|
    t.string   "ticket",                                             null: false
    t.text     "user_agent"
    t.integer  "user_id",                                            null: false
    t.boolean  "awaiting_two_factor_authentication", default: false, null: false
    t.boolean  "long_term",                          default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casino_ticket_granting_tickets", ["ticket"], name: "index_casino_ticket_granting_tickets_on_ticket", unique: true

  create_table "casino_two_factor_authenticators", force: :cascade do |t|
    t.integer  "user_id",                    null: false
    t.string   "secret",                     null: false
    t.boolean  "active",     default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casino_two_factor_authenticators", ["user_id"], name: "index_casino_two_factor_authenticators_on_user_id"

  create_table "casino_users", force: :cascade do |t|
    t.string   "authenticator",    null: false
    t.string   "username",         null: false
    t.text     "extra_attributes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "casino_users", ["authenticator", "username"], name: "index_casino_users_on_authenticator_and_username", unique: true

end