# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Product.delete_all
# Product.create(name: 'Banana' , price: 0.49)
# Product.create(name: 'Apple' , price: 0.29)
# Product.create(name: 'Carton of Strawberries' , price: 1.99)


# Product.create(
#     name: 'prod1',
#     description: 'prod prod prod prod prod prod prod prod prod ',
#     stock: '12',
#     category_id: '1',
#     price: '15',
#     picture: open('http://www.gamershell.com/static/boxart/large/uk/10045.jpg'),
#     platform_id: '1'
# )

#Product.create(name: '25ttt', price: '52')


######################################################################################

Category.create(name: 'MMO')
Category.create(name: 'FPS')
Category.create(name: 'RTS')
Category.create(name: 'Sim')
Category.create(name: 'RPG')

Platform.create(name: 'PC')
Platform.create(name: 'NES')
Platform.create(name: 'SNES')
Platform.create(name: 'Nintendo 64')
Platform.create(name: 'Nintendo GC')
Platform.create(name: 'Wii')
Platform.create(name: 'Wii U')
Platform.create(name: 'Nintendo Switch')
Platform.create(name: 'Sega Master System')
Platform.create(name: 'Sega Genesis')
Platform.create(name: 'Sega CD')
Platform.create(name: 'Sega Saturn')
Platform.create(name: 'Sega Dreamcast')
Platform.create(name: 'PS')
Platform.create(name: 'PS2')
Platform.create(name: 'PS3')
Platform.create(name: 'PS4')


OrderStatus.create(name: 'Zamówione')
OrderStatus.create(name: 'Przygotowywane')
OrderStatus.create(name: 'Wysłane')
OrderStatus.create(name: 'Anulowane')
OrderStatus.create(name: 'Dostarczone')

Shipping.create(name: 'Odbir osobisty', price: '0.0')
Shipping.create(name: 'Pocztex24', price: '24.0')
Shipping.create(name: 'Kurier', price: '25.0')
Shipping.create(name: 'Inpost', price: '15.0')

Amenity.create(name: 'Super Admin')
Amenity.create(name: 'Kategorie')
Amenity.create(name: 'Zamówienia')
Amenity.create(name: 'Magazyn')

Admin.create(password:'adminadmin',email:'admin@gmail.com', amenities: "['Super Admin']")
User.create(password:'useruser',email:'user@gmail.com')
User.create(password:'useruser',email:'user2@gmail.com')
User.create(password:'useruser',email:'user3@gmail.com')

Product.create(
    name: 'The Legend of Zelda: Breath of the Wild',
    description: 'The Legend of Zelda: Breath of the Wild to kolejna odsłona popularnej serii przygodowych gier akcji, zapoczątkowanej w 1986 roku na konsoli NES. Jest to pierwsza zupełnie nowa część przygód Linka na Nintendo Switch. Za powstanie najnowszego tytułu tradycyjnie odpowiada firma Nintendo.',
    stock: '100',
    category_id: '5',
    price: '99',
    # picture: open('https://upload.wikimedia.org/wikipedia/mediawiki/a/a9/Example.jpg'),
    platform_id: '8'
)

Product.create(
    name: 'Horizon Zero Dawn',
    description: 'Trzecioosobowa gra akcji z otwartym światem i elementami RPG, opracowana przez studio Guerrilla Games (twórców serii Killzone) z myślą o PlayStation 4. Trafiamy do „post-postapokaliptycznej” rzeczywistości, w której prymitywna ludzkość walczy z mechanicznymi zwierzętami na ruinach dzisiejszego świata.',
    stock: '200',
    category_id: '5',
    price: '89.99',
    # picture: open('http://vignette1.wikia.nocookie.net/horizonzerodawn/images/d/d4/Horizon-zero-dawn-box-art.jpg/revision/latest?cb=20160616210605'),
    platform_id: '17'
)

Product.create(
    name: 'Battlefield 1',
    description: 'Kolejna z pełnoprawnych części jednej z najpopularniejszych serii wojennych strzelanin FPP, rozwijanej od 2002 roku we współpracy studia DICE i koncernu Electronic Arts. Gra o wymownym tytule Battlefield 1 przenosi nas w zupełnie nowe dla cyklu realia I wojny światowej, a kampania fabularna ukazuje ów globalny konflikt z perspektywy kilku niezależnych postaci, którym przyszło uczestniczyć w pierwszej w XX wieku nowoczesnej wojnie. Pod względem rozgrywki tytuł stanowi swoisty powrót do korzeni cyklu, oferując większe i bardziej otwarte mapy oraz sporą swobodę działania. Jednocześnie mechanika kampanii jednoosobowej została znacznie bardziej zbliżona do specyfiki trybu multiplayer, w którym brać może udział nawet do 64 graczy. Nowe realia to nie tylko właściwe dla epoki uzbrojenie oraz pojazdy (samoloty, czołgi czy okręty wojenne), ale także zupełnie inny styl walki. Bitwy w grze stały się bardziej brutalne, dużo większy nacisk położono też na walkę w zwarciu.',
    stock: '300',
    category_id: '2',
    price: '59.99',
# picture: open('http://img2.gram.pl/box-battlefield-1-pc-4.jpg'),
    platform_id: '1'
)
