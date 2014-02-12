require "./" + File.join(File.dirname(__FILE__), "migration_helper")

Sequel.migration do
  up do
    alter_table(:users) do
      add_column :password, String
      add_index [:password]
    end
  end

	down do
		alter_table(:users) do
			drop_column :password
		end
	end
end
