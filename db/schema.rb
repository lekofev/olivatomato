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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140418222035) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "banner_inicios", :force => true do |t|
    t.string   "img_titulo"
    t.text     "img_parrafo"
    t.string   "img_url"
    t.string   "img_link"
    t.integer  "orden",       :default => 0
    t.boolean  "visible",     :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.string   "seccion_id"
  end

  create_table "ensaladas", :force => true do |t|
    t.string   "titulo"
    t.text     "parrafo"
    t.text     "txt_adicional_1"
    t.text     "txt_adicional_2"
    t.boolean  "visible",         :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "galeria_fotos", :force => true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.string   "img_grande"
    t.string   "miniatura"
    t.text     "txt_adicional_1"
    t.text     "txt_adicional_2"
    t.integer  "orden",           :default => 0
    t.boolean  "visible",         :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "imagen_id"
  end

  create_table "galeria_videos", :force => true do |t|
    t.string   "titulo"
    t.string   "descripcion"
    t.string   "url_video"
    t.string   "miniatura"
    t.text     "txt_adicional_1"
    t.text     "txt_adicional_2"
    t.integer  "orden",           :default => 0
    t.boolean  "visible",         :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "imagen_id"
  end

  create_table "historia", :force => true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.string   "imagen"
    t.text     "txt_adicional_1"
    t.text     "txt_adicional_2"
    t.integer  "orden",           :default => 0
    t.boolean  "visible",         :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "imagens", :force => true do |t|
    t.string   "foto_titulo"
    t.text     "foto_descripcion"
    t.string   "video_titulo"
    t.text     "video_descripcion"
    t.text     "txt_adicional_1"
    t.text     "txt_adicional_2"
    t.integer  "orden",             :default => 0
    t.boolean  "visible",           :default => true
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "lista_ensaladas", :force => true do |t|
    t.string   "titulo"
    t.text     "descripcion"
    t.text     "txt_adicional_1"
    t.text     "txt_adicional_2"
    t.string   "img_grande"
    t.string   "img_chica"
    t.string   "precio"
    t.string   "mineral_1"
    t.string   "mineral_2"
    t.string   "mineral_3"
    t.string   "mineral_4"
    t.string   "mineral_5"
    t.string   "mineral_6"
    t.string   "mineral_7"
    t.integer  "orden",           :default => 0
    t.boolean  "visible",         :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.string   "ensalada_id"
  end

  create_table "nutricions", :force => true do |t|
    t.string   "titulo"
    t.text     "parrafo"
    t.string   "nombre_producto"
    t.string   "img_producto"
    t.string   "mineral_1"
    t.string   "mineral_2"
    t.string   "mineral_3"
    t.string   "mineral_4"
    t.string   "mineral_5"
    t.string   "mineral_6"
    t.string   "mineral_7"
    t.text     "sabias_que"
    t.text     "fuente"
    t.text     "txt_adicional_1"
    t.text     "txt_adicional_2"
    t.integer  "orden",           :default => 0
    t.boolean  "visible",         :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "pedidos", :force => true do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "ensalada_id"
    t.string   "ensalada_nombre"
    t.string   "ensalada_precio"
    t.integer  "orden",           :default => 0
    t.boolean  "visible",         :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "seccions", :force => true do |t|
    t.string   "titulo"
    t.text     "parrafo"
    t.text     "txt_adicional_1"
    t.text     "txt_adicional_2"
    t.boolean  "visible",         :default => true
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
  end

  create_table "site_infos", :force => true do |t|
    t.string   "doc_title"
    t.string   "facebook_link"
    t.string   "twitter_link"
    t.string   "email_link"
    t.string   "telefono"
    t.string   "site_title"
    t.string   "site_desc"
    t.string   "site_keywords"
    t.string   "og_title"
    t.string   "og_desc"
    t.string   "og_url"
    t.string   "og_image"
    t.string   "og_site_name"
    t.string   "texto_adicional_1"
    t.string   "texto_adicional_2"
    t.string   "texto_adicional_3"
    t.string   "texto_adicional_4"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
