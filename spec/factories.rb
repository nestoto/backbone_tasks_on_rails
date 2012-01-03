Factory.define :user do |user|
  user.email                 "steve@mac.me"
  user.password              "foobar"
  user.password_confirmation "foobar"
end


Factory.define :todo do |todo|
  todo.content                "Eat Breakfast"
  todo.order                  1
  todo.done                   false
end


