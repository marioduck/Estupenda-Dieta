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

ActiveRecord::Schema.define(:version => 20110530052155) do

  create_table "alimentos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.float    "calorias"
    t.float    "grasas_saturadas"
    t.float    "grasas_trans"
    t.float    "proteinas"
    t.float    "colesterol"
    t.float    "fibra"
    t.float    "azucares"
    t.float    "potasio"
    t.float    "carbohidratos"
    t.float    "fosforo"
    t.float    "sodio"
    t.float    "calcio"
    t.float    "hierro"
    t.float    "aceites"
    t.float    "vitamina_c"
    t.float    "vitamina_a"
    t.integer  "cantidad"
    t.integer  "medida_id"
    t.integer  "etiqueta_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enfermedads", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "etiqueta", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "historial_pesos", :force => true do |t|
    t.float    "peso_anterior"
    t.float    "peso_actual"
    t.date     "fecha_registro"
    t.integer  "bmi"
    t.integer  "usuario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "horarios", :force => true do |t|
    t.string   "dia"
    t.string   "apertura"
    t.string   "cierre"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medidas", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menus", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nutriologos", :force => true do |t|
    t.string   "nombre_pila"
    t.string   "nombre_ap"
    t.string   "nombre_am"
    t.string   "email"
    t.string   "password"
    t.date     "fecha_nacimiento"
    t.integer  "sexo"
    t.string   "direccion_calle"
    t.string   "direccion_numero"
    t.string   "direccion_colonia"
    t.integer  "direccion_cp"
    t.string   "direccion_cuidad"
    t.integer  "telefono"
    t.string   "cedula_profesional"
    t.string   "institucion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plan_alimenticios", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "calorias"
    t.integer  "fibras"
    t.integer  "azucares"
    t.integer  "carbohidratos"
    t.integer  "proteinas"
    t.integer  "ingestas"
    t.integer  "plan_alimenticio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "platillos", :force => true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.float    "calorias"
    t.float    "grasas_saturadas"
    t.float    "grasas_trans"
    t.float    "proteinas"
    t.float    "colesterol"
    t.float    "fibra"
    t.float    "azucares"
    t.float    "potasio"
    t.float    "carbohidratos"
    t.float    "fosforo"
    t.float    "sodio"
    t.float    "calcio"
    t.float    "hierro"
    t.float    "aceites"
    t.float    "vitamina_c"
    t.float    "vitamina_a"
    t.integer  "menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registro_alimentos", :force => true do |t|
    t.integer  "usuario_id"
    t.integer  "alimento_id"
    t.integer  "etiqueta_id"
    t.date     "fecha"
    t.time     "hora"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", :force => true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "password"
    t.string   "direccion_calle"
    t.string   "direccion_numero"
    t.string   "direccion_colonia"
    t.integer  "direccion_cp"
    t.string   "direccion_cuidad"
    t.string   "direccion_estado"
    t.integer  "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nombre_pila"
    t.string   "nombre_ap"
    t.string   "nombre_am"
    t.string   "email"
    t.string   "password"
    t.date     "fecha_nacimiento"
    t.integer  "sexo"
    t.string   "direccion_calle"
    t.string   "direccion_numero"
    t.string   "direccion_colonia"
    t.integer  "direccion_cp"
    t.string   "direccion_cuidad"
    t.integer  "telefono"
    t.float    "altura"
    t.float    "peso"
    t.integer  "ingestas_diarias"
    t.integer  "plan_alimenticio_id"
    t.integer  "enfermedad_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
