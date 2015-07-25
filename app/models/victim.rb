class Victim < ActiveRecord::Base
  validates :name, :victim_species, :location, :description, presence: true
  belongs_to :shark
end


# create_table "victims", force: :cascade do |t|
#     t.string   "name"
#     t.string   "victim_species"
#     t.string   "location"
#     t.string   "description"
#     t.boolean  "fatal"
#     t.integer  "shark_id"
#     t.datetime "created_at",     null: false
#     t.datetime "updated_at",     null: false
#   end