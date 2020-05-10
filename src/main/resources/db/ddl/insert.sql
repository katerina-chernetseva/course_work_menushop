SET FOREIGN_KEY_CHECKS = 0;
insert into role(id, title) VALUES (1, 'USER'), (2, 'ADMIN');
insert into user(id, active, email, password, username, fk_basket_id, fk_role_id)
VALUES (1, true, 'user@gmail.com', 'user', 'user', 1, 1), (2, true, 'admin@gmail.com', 'admin', 'admin', 2, 2);
insert basket(id, fk_user_id)
VALUES (1, 1),(2, 2);
insert into cafe_image(id, image)
VALUES (1, 'Salateira.jpeg'),(2, 'Shtolle.png'),(3, 'Muffin.jpeg'),(4, 'Sushi.jpg'),(5, 'Cinnamon.jpg'),(6, 'Achma.jpeg'),(7, 'Varenik.jpeg');
insert into cafe(id, name, fk_image_id)
VALUES (1, 'СушиВёсла', 4),(2, 'Вареник', 7),(3, 'Корица', 5),(4, 'Ачма', 6),(5, 'Маффин', 3),(6, 'Салатейра', 1),(7, 'Штолле', 2);
insert into dish(id, price, title_en, title_ru, fk_cafe_id, description, fk_image_id)
VALUES (1, 14.00, 'Caesar Salad with Chicken', 'Салат Цезарь с цыпленком', 5, '300г, цыпленок, салат Ромен, соус, черри, яйца перепелиные, сыр', 2),(2, 17.00, 'Shrimp Caesar Salad', 'Салат Цезарь с креветками', 5, '300г, креветки, Ромен, соус, черри, яйца перепелиные, сыр', 1),(3, 13.00, 'Roast beef salad', 'Ростбиф Салат', 5, '190г, огурец, томат, перец, говядина, заправка, микс салат', 4),(4, 31.00, 'Seth "Taking"', 'Сет "Забираю"', 1, 'Хоккайдо маки 8 шт. Кабуки маки 8 шт. Аризона маки 8 шт. Вес: 685 гр. Белки: 5.80 гр. Жиры: 6.20 гр. Углеводы: 23.60 гр. Калории: 170.60', 5),(5, 5.90, 'Spicy fried salmon soup', 'Острый суп с жареным лососем', 1, 'Жареный лосось, яичная лапша, зелёный лук, острый соус Вес: 245 гр. Белки: 5.00 гр. Жиры: 5.50 гр. Углеводы: 11.20 гр. Калории: 121.20', 7),(6, 4.70, 'Yogurt soup', 'Суп из мацони', 5, '1/220/1шт г, Мацони, куриное яйцо, эстрагон, кинза', 6),(7, 4.70, 'Khinkali with cheese', 'Хинкали с сыром', 5, '4/150г, Имеретинский сыр, Сулугуни', 8),(8, 6.50, 'Roman soup', 'Суп Римский', 5, '300г, цыпленок, сыр, овощи, зелень', 9),(9, 18.00, 'Chicken WOK with vegetables', 'Цыпленок WOK с овощами', 4, '280г, цыпленок, овощи, соус', 3),(10, 24.00, 'Salmon fillet with broccoli', 'Филе лосося с брокколи', 5, '250г, Лосось, брокколи, сырный соус', 10),(11, 16.00, 'Assorted pickles', 'Ассорти из разносолов', 3, '200г, огурец, сладкий перец, томат, грибы', 13),(12, 12.30, 'Assorted Dumplings', 'Ассорти вареников', 2, '410/90/10/10/10г, вареники с картофелем и грибами, вареники с картофелем  и сыром, вареники с грибами и луком, вареники с капустой и грибами, вареники с печенью и гречкой, вареники с семгой, вареники с сыром Фета', 14),(13, 8.50, 'Gnocchi with chicken and mushrooms', 'Ньокки с куриным филе и грибами', 2, '250/5/5г, грибной соус, куриное филе, сыр Пармезан', 15),(14, 15.90, 'Pasta Raphael', 'Паста Рафаэль', 6, '440г, лингвини, запеченный перец, вяленое мясо, сыр с голубой плесенью, шпинат, шпинатный соус', 11),(15, 15.90, 'Da Vinci pasta', 'Паста Да Винчи', 6, '400г, лингвини, запеченный лосось, сыр моцарелла, базилик, шпинатный соус', 12),(16, 28.00, 'Pie with raspberries, lemon and sea buckthorn', 'Пирог с малиной, лимоном и облепихой', 7, '1000г, Полные витаминов ягоды облепихи, малины и свежий лимон, сахар', 16);
insert into dish_with_category(dish_id, category_id) VALUES (1, 2), (2, 2), (3, 2), (4,1), (5,1), (6, 5), (7, 5), (8, 3), (9, 3), (10, 3), (11, 4), (12, 4), (13, 4), (14, 5), (15, 3), (16, 4);
insert category(id, title_ru, title_en)
VALUES (1, 'Японская', 'Japanese'),(2, 'Французская', 'French'), (3, 'Итальянска', 'Italian'), (4, 'Белорусская','Belarusian'), (5, 'Грузинская', 'Georgian');
insert into dish_image(id, image)
VALUES (1, 'Caezar_shrimps.jpeg'),(2, 'Caezar.jpeg'),(3, 'Chicken.jpeg'),(4, 'Roastbeef.jpeg'),(5, 'Seth1.jpg'),(6, 'Soup2.jpeg'),(7, 'Soup1.png'), (8, 'Khinkali.jpeg'), (9, 'Soup3.jpeg'), (10, 'Salmon.jpeg'), (11, 'Pasta1.jpeg'), (12, 'Pasta2.jpeg'), (13, 'Assorty.jpeg'), (14, 'Varenik1.jpeg'), (15, 'Gnocchi.jpeg'), (16, 'Pie1.jpg');
SET FOREIGN_KEY_CHECKS = 1;
