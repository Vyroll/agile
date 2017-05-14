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
Category.create(name: 'MMO')
Category.create(name: 'FPS')
Category.create(name: 'RTS')
Category.create(name: 'Sim')
Category.create(name: 'RPG')

Platform.create(platform: 'PC')
Platform.create(platform: 'NES')
Platform.create(platform: 'SNES')
Platform.create(platform: 'Nintendo 64')
Platform.create(platform: 'Nintendo GC')
Platform.create(platform: 'Wii')
Platform.create(platform: 'Wii U')
Platform.create(platform: 'Nintendo Switch')
Platform.create(platform: 'Sega Master System')
Platform.create(platform: 'Sega Genesis')
Platform.create(platform: 'Sega CD')
Platform.create(platform: 'Sega Saturn')
Platform.create(platform: 'Sega Dreamcast')
Platform.create(platform: 'PS')
Platform.create(platform: 'PS2')
Platform.create(platform: 'PS3')
Platform.create(platform: 'PS4')

OrderStatus.create(name: 'Zamówione')
OrderStatus.create(name: 'Przygotowywane')
OrderStatus.create(name: 'Wysłane')
OrderStatus.create(name: 'Anulowane')
OrderStatus.create(name: 'Dostarczone')

Shipping.create(name: 'Odbir osobisty', price: '0,0')
Shipping.create(name: 'Pocztex24', price: '24,0')
Shipping.create(name: 'Kurier', price: '25,0')
Shipping.create(name: 'Inpost', price: '15,0')

Admin.create(encrypted_password:'$2a$11$vQQbbO8nibWTr2Ds7DYSCuiiKBHKeKYhBcZqvxT1QJSGzGPJFEHoC',email:'admin@gmail.com')
User.create(encrypted_password:'$2a$11$QoNsX3HSQP5kgBQnb8Cup.yrZUYsKTSdjlpHGVW0Nk7nU2UXvEjyu',email:'user@gmail.com')
User.create(encrypted_password:'$2a$11$fRRj/cb2oQOYYpk9wF8XIOb7Uv3EFCXnaKJg23rL4PQmZJ93DqzJK',email:'user2@gmail.com')
User.create(encrypted_password:'$2a$11$e8AabAJoWJE6ZBFm3jHNBuBecwYBnu94rb27wv4QwfJHjEKx5fC9y',email:'user3@gmail.com')

Product.create(name: 'prodwww', category_id: '3', platform_id: '3')

Product.create(
    name: 'The Legend of Zelda: Breath of the Wild',
    description: 'Kolejna odsłona popularnego cyklu przygodowych gier akcji firmy Nintendo, będąca jednocześnie pierwszą całkiem nową grą z serii, jaka trafiła w ręce użytkowników konsol WiiU. W The Legend of Zelda: Breath of the Wild wcielamy się ponownie w głównego bohatera marki, czyli Linka, który wplątuje się w kolejną, emocjonującą i niebezpieczną przygodę, próbując ustalić, co doprowadziło do upadku krainy Hyrule. Rozgrywka stanowi tu tradycyjnie mieszaninę kilku gatunków, łącząc elementy przygodówki, RPG akcji, a nawet survivalu. Podczas zabawy zajmujemy się eksploracją otwartego świata, rozwiązywaniem zagadek i walką z przeciwnikami, która, choć zrealizowana została w sposób zręcznościowy, wymaga stosowania zróżnicowanych taktyk. W trakcie przygody Link musi też zbierać składniki, pozwalające na przygotowanie napojów i pożywienia. Te zaś, podobnie jak odpowiednie wyposażenie, wywierają istotny wpływ na umiejętności bohatera.',
    stock: '100',
    category_id: '5',
    price: '99.0',
    picture: open('https://cdn2.vox-cdn.com/uploads/chorus_asset/file/7802443/NintendoSwitch_TLOZBreathoftheWild_boxart.jpg'),
    platform_id: '8'
)

Product.create(
    name: 'Horizon Zero Dawn',
    description: 'Trzecioosobowa gra akcji z otwartym światem i elementami RPG, opracowana przez studio Guerrilla Games (twórców serii Killzone) z myślą o PlayStation 4. Trafiamy do „post-postapokaliptycznej” rzeczywistości, w której prymitywna ludzkość walczy z mechanicznymi zwierzętami na ruinach dzisiejszego świata.',
    stock: '200',
    category_id: '5',
    price: '89.99',
    picture: open('http://vignette1.wikia.nocookie.net/horizonzerodawn/images/d/d4/Horizon-zero-dawn-box-art.jpg/revision/latest?cb=20160616210605'),
    platform_id: '17'
)

Product.create(
    name: 'Battlefield 1',
    description: 'Kolejna z pełnoprawnych części jednej z najpopularniejszych serii wojennych strzelanin FPP, rozwijanej od 2002 roku we współpracy studia DICE i koncernu Electronic Arts. Gra o wymownym tytule Battlefield 1 przenosi nas w zupełnie nowe dla cyklu realia I wojny światowej, a kampania fabularna ukazuje ów globalny konflikt z perspektywy kilku niezależnych postaci, którym przyszło uczestniczyć w pierwszej w XX wieku nowoczesnej wojnie. Pod względem rozgrywki tytuł stanowi swoisty powrót do korzeni cyklu, oferując większe i bardziej otwarte mapy oraz sporą swobodę działania. Jednocześnie mechanika kampanii jednoosobowej została znacznie bardziej zbliżona do specyfiki trybu multiplayer, w którym brać może udział nawet do 64 graczy. Nowe realia to nie tylko właściwe dla epoki uzbrojenie oraz pojazdy (samoloty, czołgi czy okręty wojenne), ale także zupełnie inny styl walki. Bitwy w grze stały się bardziej brutalne, dużo większy nacisk położono też na walkę w zwarciu.',
    stock: '300',
    category_id: '5',
    price: '59.99',
    picture: open('http://img2.gram.pl/box-battlefield-1-pc-4.jpg'),
    platform_id: '2'
)


