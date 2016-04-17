# ------- TOYS ------------
# ________________________________________

  # validates :name, presence: true
  # validates :brand, presence: true
  # validates :mfg_website, presence: true
  # validates :quantity_wanted, presence: true
  # validates :quantity_have, presence: true
  # validates :upc, presence: true, unique: true
  # validates :mfg_suggested_age_range, presence: true
  # validates :pieces, presence: true
  # validates :extended_play_idea
  # validates :store_purchased_from
  # validates :purchase_price, presence: true
  # validates :country_of_origin, presence: true
  # validates :batteries_required

  # belongs_to              :box
  # has_and_belongs_to_many :skill
  # has_and_belongs_to_many :assigned_age_group

# ________________________________________




# ------- GET ----------------------------
# ________________________________________

#-- INDEX --------
# my "index" page for this model (@toys) will get and return a list of all(Skill.all) of the items in that table
# (my @ variable is plural here because I am referring to ALL/multiple records)
# I will code exactly what that looks like, what attributes to include and the format, etc, in the erb file
#
get "/toys/?" do
  @toys = Toy.all
  erb :"toys/index"
end

#-- NEW ----------
# my "new" page will be my way of getting a form to fill out for a new item into the Skill table
# I will make form in the erb file, which will evantually, through "create" post that info to the db
#
get "/toys/new/?" do
  @toy = Toy.new
  @assigned_age_groups = AssignedAgeGroup.all
  @assigned_age_group = AssignedAgeGroup.find_by_id(params['id'])
  @boxes = Box.all
  @box = Box.find_by_id(params['id'])
  @skills = Skill.all
  @skill = Skill.find_by_id(params['id'])
  erb :"/toys/new"
end

#-- SHOW ---------
# When I want to look futher at a specific record I will look it up by its primary key (id")
# In my erb file I format what information about each record I want to show
#
get "/toys/:id/?" do
  @toy = Toy.find_by_id(params['id'])
  @assigned_age_groups = AssignedAgeGroup.all
  @assigned_age_group = AssignedAgeGroup.find_by_id(params['id'])
  @boxes = Box.all
  @box = Box.find_by_id(params['id'])
  @skills = Skill.all
  @skill = Skill.find_by_id(params['id'])
  erb :"toys/show"
end

# #-- SKILLS ---------
# #
# #
# get "/toys/:id/skills/?" do
#   @toy = Toy.find_by_id(params['id'])
#   @skills = Skill.all
#   erb :"toys/skills"
# end

#-- EDIT ---------
# When I want to edit the details of a specific record, as referenced by its primary ket
# In my erb file I will have an editable form, which will eventually, through "update" post that info to the db
# (probably will look exactly like NEW only with info already in the form ready to be used or edited as needed)
#
get "/toys/:id/edit/?" do
  @toy = Toy.find_by_id(params['id'])
  @assigned_age_groups = AssignedAgeGroup.all
  @assigned_age_group = AssignedAgeGroup.find_by_id(params['id'])
  @boxes = Box.all
  @box = Box.find_by_id(params['id'])
  @skills = Skill.all
  @skill = Skill.find_by_id(params['id'])
  erb :"toys/edit"
end

# ________________________________________




# ------- POST ---------------------------
# ________________________________________

#-- CREATE ---------
# I'm taking the info from the form on the NEW page and posting it to the db, creating a new object
# If the info I entered is good(ie it validates and therefor saves) I will be redirected to the INDEX where I will see the updated list of all items
# Else I will stay on the new page, which in the erb file I will make sure it shows which errors showed up, so which validations must be met in order for it to save
#
post "/toys/?" do
  @toy = Toy.new(params)

  if @toy.save
    redirect to ("/toys")
  else
    erb :"toys/new"
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

patch "/toys/:id/?" do
  @toy = Toy.find_by_id(params['id'])

  if @toy.update_attributes(name: params['name'],
                            brand: params['brand'],
                            mfg_website: params['mfg_website'],
                            quantity_have: params['quantity_have'],
                            quantity_wanted: params['quantity_wanted'],
                            upc: params['upc'],
                            mfg_suggested_age_range: params['mfg_suggested_age_range'],
                            pieces: params['pieces'],
                            extended_play_idea: params['extended_play_idea'],
                            store_purchased_from: params['store_purchased_from'],
                            purchase_price: params['purchase_price'],
                            country_of_origin: params['country_of_origin'])
    redirect to("/toys/#{@toy.id}")
  else
    erb :"toys/edit"
  end
end
# ________________________________________


# ------- DELETE ------------
# ________________________________________
#
#  find record by id and destroy it then redirect to the INDEX list of all items, which reflects the deletion
#
  delete "/toys/:id/?" do
    @toy = Toy.find_by_id(params['id'])
    @toy.destroy
    redirect to("/toys")
  end
# ________________________________________
