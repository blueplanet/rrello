# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

todo = List.create name: 'Todo'
doing = List.create name: 'Doing'
done = List.create name: 'Done'

%w{ラーメン屋にいく もやしを食べる 注文する ラーメンを食べる 替え玉を食べる お会計を支払う}.each_with_index do |task, index|
  Card.create(list_id: todo.id, content: task, order_no: index + 1)
end
