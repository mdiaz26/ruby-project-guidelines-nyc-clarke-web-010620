def delete_journal
    # This method displays a user's journal entries and allows them to select one to be deleted.
    $prompt.select ("Which journal?") do |menu|
        $current_user.journal_entries.each do |entry|
            menu.choice entry.title, -> do 
                entry.destroy
                
                $current_user = User.find($current_user.id)
                puts "deletion successful".red
            end
        end
        menu.choice "main menu"
    end
    return_to_menu
end