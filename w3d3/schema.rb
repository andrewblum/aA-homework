create_table "Persons", force: :cascade do |t|
  t.string "name",          null: false
  t.integer "house_id"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

create_table "Houses", force: :cascade do |t|
  t.string "address"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end
