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

ActiveRecord::Schema.define(version: 20140710024618) do

  create_table "applications", force: true do |t|
    t.integer  "id_user"
    t.string   "name"
    t.string   "ip_hostname"
    t.string   "version"
    t.string   "port"
    t.integer  "poll"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "db_servers", force: true do |t|
    t.integer  "id_user"
    t.string   "name"
    t.string   "ip_hostname"
    t.string   "subnet"
    t.integer  "poll"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hardwares", force: true do |t|
    t.integer  "id_user"
    t.string   "name"
    t.string   "ip_address"
    t.boolean  "check"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mail_servers", force: true do |t|
    t.integer  "id_user"
    t.string   "name"
    t.string   "ip_hostname"
    t.integer  "port"
    t.integer  "timeout"
    t.integer  "poll"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "networks", force: true do |t|
    t.integer  "id_user"
    t.string   "ip_address"
    t.string   "os"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "protocols", force: true do |t|
    t.integer  "id_user"
    t.string   "name"
    t.string   "ip_hostname"
    t.string   "subnet"
    t.string   "port"
    t.integer  "timeout"
    t.integer  "poll"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "company_name"
    t.string   "tel_number"
    t.string   "cp_number"
    t.string   "username"
    t.string   "password"
    t.string   "gender"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vmachines", force: true do |t|
    t.integer  "id_user"
    t.string   "name"
    t.string   "ip_hostname"
    t.string   "subnet"
    t.string   "port"
    t.integer  "timeout"
    t.integer  "poll"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "web_servers", force: true do |t|
    t.integer  "id_user"
    t.string   "name"
    t.string   "ip_hostname"
    t.string   "subnet"
    t.string   "port"
    t.integer  "poll"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
