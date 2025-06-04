Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root					'login#new'
  get		'login'	=> 'login#new'
  post 	'login'	=>	'login#create'
  get		'register'	=>	'register#step1'
  post	'register'	=> 'register#step2'
  post	'confirm'	=> 'register#step3'
  get   'fail/dividebyzero'  => 'fail#divide_by_zero'
  get   'fail/sendmessage' => 'fail#get_message'
  post   'fail/sendmessage' => 'fail#post_message'
  get   'fail/sendattachment' => 'fail#attachment'
end
