class CreateAccountIdentities < ActiveRecord::Migration[7.0]
  def change
    create_table :account_identities do |t|
      t.references :account, null: false, foreign_key: { on_delete: :cascade }
      t.string :provider, null: false
      t.string :uid, null: false
      t.index %i[provider uid], unique: true
    end
  end
end
