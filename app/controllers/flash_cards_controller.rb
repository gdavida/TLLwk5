### FLASH CARDS CONTROLLER ###

# new
get "/flash-cards/new/?" do
  @flash_card = FlashCard.new
  erb :"flash_cards/new"
end

# create
post "/flash-cards/?" do
  @flash_card = FlashCard.new(params)

  if @flash_card.save
    redirect to("/flash-cards")
  else
    erb :"flash_cards/new"
  end
end

# index
get "/flash-cards/?" do
  @flash_cards = FlashCard.all
  erb :"flash_cards/index"
end

# show (shows question)
get "/flash-cards/:id/?" do
  @flash_card = FlashCard.find_by_id(params['id'])
  erb :"flash_cards/show"
end

# answer
get "/flash-cards/:id/answer/?" do
  @flash_card = FlashCard.find_by_id(params['id'])
  erb :"flash_cards/answer"
end

# edit
get "/flash-cards/:id/edit/?" do
  @flash_card = FlashCard.find_by_id(params['id'])
  erb :"flash_cards/edit"
end

# update
patch "/flash-cards/:id/?" do
  @flash_card = FlashCard.find_by_id(params['id'])
  
  if @flash_card.update_attributes(question: params['question'],
                                   answer: params['answer'])
    redirect to("/flash-cards/#{@flash_card.id}")
  else
    erb :"flash_cards/edit"
  end
end

# delete
delete "/flash-cards/:id/?" do
  @flash_card = FlashCard.find_by_id(params['id'])
  @flash_card.destroy
  redirect to("/flash-cards")
end
