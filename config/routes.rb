Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'crawle1s#page1'

  (1..20).to_a.each do |i|
    get "/p#{i}", to: "crawle1s#page#{i}" 
  end

end
