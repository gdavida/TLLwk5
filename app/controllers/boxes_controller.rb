# ------- BOXES ------------
# ________________________________________
# + name (string)
# + assigned_age_group_id (int)
# + label (boolean)
# + location (string)
# + cleaned (boolean)
# + checked_out (boolean)
# + 
#
# + belongs_to assigned_age_groups
# + has_many toys
# + has_many_and_belongs_to toys
# + has_many_and_belongs_to skills

# ________________________________________




# ------- GET ----------------------------
# ________________________________________

#-- INDEX --------
# my "index" page for this model (@boxes) will get and return a list of all(Box.all) of the items in that table
# (my @ variable is plural here because I am referring to ALL/multiple records)
# I will code exactly what that looks like, what attributes to include and the format, etc, in the erb file
#
get "boxes/?" do
	@boxes = Box.all
	erb :"boxes/index"
end

#-- NEW ----------
# my "new" page will be my way of getting a form to fill out for a new item into the Box table
# I will make form in the erb file, which will evantually, through "create" post that info to the db
#
get "/boxes/new/?" do
	@box = Box.new
	erb :"/boxes/new"
end

#-- SHOW ---------
# When I want to look futher at a specific record I will look it up by its primary key (id")
# In my erb file I format what information about each record I want to show
#
get "/boxes/:id/?" do
	@box = Box.find_by_id(params['id'])
	erb :"boxes/show"
end


#-- EDIT ---------
# When I want to edit the details of a specific record, as referenced by its primary ket
# In my erb file I will have an editable form, which will eventually, through "update" post that info to the db
# (probably will look exactly like NEW only with info 1already in the form ready to be used or edited as needed)
#
get "/boxes/:id/edit/?" do
	@box = Box.find_by_id(params['id'])
	erb :"boxes/edit"
end

# ________________________________________




# ------- POST ---------------------------
# ________________________________________

#-- CREATE ---------
# I'm taking the info from the form on the NEW page and posting it to the db, creating a new object
# If the info I entered is good(ie it validates and therefor saves) I will be redirected to the INDEX where I will see the updated list of all items
# Else I will stay on the new page, which in the erb file I will make sure it shows which errors showed up, so which validations must be met in order for it to save
#
post "/boxes/?" do
	@box = Box.new(params)

	if @Box.save
		redirect to ("/boxes")
	else
		erb :"boxes/new"
	end
end

#-- UPDATE ---------
# I'm taking the info from the form on the EDIT page and posting it to the db, updating the object
# If the info I entered is goof (ie it validates and therefore saves) then I will be redirected to the SHOW page for that item to see all the specific, now updated, info
# Else I will stay on the edit page, which in the erb file I will make sure it shows which errors showed up, so which validations must be met in order for it to save
# ** PATCH is NOT supported by html/http so we have to use the hidden method to kind of "trick" it into patching:
#     in main.rb:    enable :method_override
#     in the edit page under the form action include:
#            <input type="hidden" name="_method" value="patch">

patch "/boxes/:id/?" do
	@box = Box.find_by_id(params['id'])

	if @boxes.update_attributes(name: params['name'], description: params['description'])
		redirect to("/boxes/#{@box.id}")
	else
		erb :"boxes/edit"
	end
end
# ________________________________________


# ------- DELETE ------------
# ________________________________________
#
#  find record by id and destroy it then redirect to the INDEX list of all items, which reflects the deletion
#
	delete "/boxes/:id/?" do
		@box = Box.find_by_id(params['id'])
		@box.destroy
		redirect to("/boxes")
	end
# ________________________________________
