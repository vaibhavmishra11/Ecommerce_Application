USE [ECommerce]
GO
/****** Object:  Table [dbo].[CartItems]    Script Date: 19-06-2023 16:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CartItems](
	[CartItemId] [int] IDENTITY(1,1) NOT NULL,
	[CartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_CartItems] PRIMARY KEY CLUSTERED 
(
	[CartItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 19-06-2023 16:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[Ordered] [nvarchar](10) NOT NULL,
	[OrderedOn] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 19-06-2023 16:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[OfferId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Discount] [int] NOT NULL,
 CONSTRAINT [PK_Offers] PRIMARY KEY CLUSTERED 
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 19-06-2023 16:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CartId] [int] NOT NULL,
	[PaymentId] [int] NOT NULL,
	[CreatedAt] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PaymentMethods]    Script Date: 19-06-2023 16:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentMethods](
	[PaymentMethodId] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Provider] [nvarchar](max) NULL,
	[Available] [nvarchar](50) NULL,
	[Reason] [nvarchar](max) NULL,
 CONSTRAINT [PK_PaymentMethods] PRIMARY KEY CLUSTERED 
(
	[PaymentMethodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payments]    Script Date: 19-06-2023 16:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[PaymentMethodId] [int] NOT NULL,
	[TotalAmount] [int] NOT NULL,
	[ShippingCharges] [int] NOT NULL,
	[AmountReduced] [int] NOT NULL,
	[AmountPaid] [int] NOT NULL,
	[CreatedAt] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Payments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 19-06-2023 16:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NOT NULL,
	[SubCategory] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 19-06-2023 16:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[CategoryId] [int] NOT NULL,
	[OfferId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ImageName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 19-06-2023 16:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[ReviewId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Review] [nvarchar](max) NOT NULL,
	[CreatedAt] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[ReviewId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 19-06-2023 16:26:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[Mobile] [nvarchar](15) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[CreatedAt] [nvarchar](max) NOT NULL,
	[ModifiedAt] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CartItems] ON 

INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId]) VALUES (1, 1, 12)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId]) VALUES (2, 2, 9)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId]) VALUES (3, 3, 6)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId]) VALUES (4, 3, 12)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId]) VALUES (5, 4, 6)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId]) VALUES (6, 5, 8)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId]) VALUES (7, 5, 7)
INSERT [dbo].[CartItems] ([CartItemId], [CartId], [ProductId]) VALUES (8, 6, 7)
SET IDENTITY_INSERT [dbo].[CartItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([CartId], [UserId], [Ordered], [OrderedOn]) VALUES (1, 1, N'true', N'Thu, Jun 15 2023 21:02:11 GMT+05:30 (India Standard Time)')
INSERT [dbo].[Carts] ([CartId], [UserId], [Ordered], [OrderedOn]) VALUES (2, 1, N'true', N'Thu, Jun 15 2023 21:02:43 GMT+05:30 (India Standard Time)')
INSERT [dbo].[Carts] ([CartId], [UserId], [Ordered], [OrderedOn]) VALUES (3, 1, N'true', N'Fri, Jun 16 2023 10:56:09 GMT+05:30 (India Standard Time)')
INSERT [dbo].[Carts] ([CartId], [UserId], [Ordered], [OrderedOn]) VALUES (4, 1, N'true', N'Fri, Jun 16 2023 22:09:13 GMT+05:30 (India Standard Time)')
INSERT [dbo].[Carts] ([CartId], [UserId], [Ordered], [OrderedOn]) VALUES (5, 1, N'true', N'Sat, Jun 17 2023 00:01:10 GMT+05:30 (India Standard Time)')
INSERT [dbo].[Carts] ([CartId], [UserId], [Ordered], [OrderedOn]) VALUES (6, 1, N'true', N'Mon, Jun 19 2023 16:04:22 GMT+05:30 (India Standard Time)')
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Offers] ON 

INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (1, N'diwali dhamaka', 25)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (2, N'christmas sale', 15)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (3, N'ausgust special', 5)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (4, N'crazy shopping sale', 40)
INSERT [dbo].[Offers] ([OfferId], [Title], [Discount]) VALUES (5, N'holi sale', 10)
SET IDENTITY_INSERT [dbo].[Offers] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [CartId], [PaymentId], [CreatedAt]) VALUES (1, 1, 1, 1, N'15-06-2023 21:02:11')
INSERT [dbo].[Orders] ([Id], [UserId], [CartId], [PaymentId], [CreatedAt]) VALUES (2, 1, 2, 2, N'15-06-2023 21:02:43')
INSERT [dbo].[Orders] ([Id], [UserId], [CartId], [PaymentId], [CreatedAt]) VALUES (3, 1, 3, 3, N'16-06-2023 10:56:09')
INSERT [dbo].[Orders] ([Id], [UserId], [CartId], [PaymentId], [CreatedAt]) VALUES (4, 1, 4, 4, N'16-06-2023 22:09:13')
INSERT [dbo].[Orders] ([Id], [UserId], [CartId], [PaymentId], [CreatedAt]) VALUES (5, 1, 5, 5, N'17-06-2023 00:01:10')
INSERT [dbo].[Orders] ([Id], [UserId], [CartId], [PaymentId], [CreatedAt]) VALUES (6, 1, 6, 6, N'19-06-2023 16:04:22')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[PaymentMethods] ON 

INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (1, N'Cash', N'', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (2, N'Card Payment', N'Bank', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (3, N'Net Banking', N'SBI', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (4, N'Net Banking', N'ICICI', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (5, N'Net Banking', N'Bank of Maharashtra', N'False', N'server down')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (6, N'UPI', N'Google Pay', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (7, N'UPI', N'Phone Pay', N'True', N'')
INSERT [dbo].[PaymentMethods] ([PaymentMethodId], [Type], [Provider], [Available], [Reason]) VALUES (8, N'UPI', N'BHIM Pay', N'True', N'')
SET IDENTITY_INSERT [dbo].[PaymentMethods] OFF
GO
SET IDENTITY_INSERT [dbo].[Payments] ON 

INSERT [dbo].[Payments] ([Id], [UserId], [PaymentMethodId], [TotalAmount], [ShippingCharges], [AmountReduced], [AmountPaid], [CreatedAt]) VALUES (1, 1, 1, 17000, 500, 1700, 15300, N'15-06-2023 21:02:10')
INSERT [dbo].[Payments] ([Id], [UserId], [PaymentMethodId], [TotalAmount], [ShippingCharges], [AmountReduced], [AmountPaid], [CreatedAt]) VALUES (2, 1, 3, 18000, 500, 1800, 16200, N'15-06-2023 21:02:43')
INSERT [dbo].[Payments] ([Id], [UserId], [PaymentMethodId], [TotalAmount], [ShippingCharges], [AmountReduced], [AmountPaid], [CreatedAt]) VALUES (3, 1, 1, 230, 200, 23, 207, N'16-06-2023 10:56:08')
INSERT [dbo].[Payments] ([Id], [UserId], [PaymentMethodId], [TotalAmount], [ShippingCharges], [AmountReduced], [AmountPaid], [CreatedAt]) VALUES (4, 1, 2, 60, 200, 6, 54, N'16-06-2023 22:09:13')
INSERT [dbo].[Payments] ([Id], [UserId], [PaymentMethodId], [TotalAmount], [ShippingCharges], [AmountReduced], [AmountPaid], [CreatedAt]) VALUES (5, 1, 1, 150, 200, 39, 111, N'17-06-2023 00:01:10')
INSERT [dbo].[Payments] ([Id], [UserId], [PaymentMethodId], [TotalAmount], [ShippingCharges], [AmountReduced], [AmountPaid], [CreatedAt]) VALUES (6, 1, 3, 60, 0, 3, 57, N'19-06-2023 16:04:22')
SET IDENTITY_INSERT [dbo].[Payments] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategories] ON 

INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (1, N'Bakery', N'Breads')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (2, N'Beverages', N'Fruit Juices')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (3, N'Beverages', N'Health Drinks')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (4, N'Bakery', N'Ice Creams')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (5, N'Snacks', N'Chips')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (6, N'Snacks', N'Namkeen')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (7, N'Snacks', N'Chocolates')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (8, N'Snacks', N'Biscuits')
INSERT [dbo].[ProductCategories] ([CategoryId], [Category], [SubCategory]) VALUES (9, N'Bakery', N'Cookies')
SET IDENTITY_INSERT [dbo].[ProductCategories] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (1, N'Amul Ice Cream - Vanilla Magic, 1 L Tub', N'Amul Real milk vanilla ice cream now in a tub that enough for all your friends. The classics never go out of the fashion.', 4, 1, 220, 560, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (2, N'Hangyo Toffee Almond Bar - With Rich Milk Chocolate Coating, 50 ml', N'Introducing Hangyo`s Toffee Almond Bar - a delicious and indulgent ice cream bar that is perfect for anyone who loves the taste of toffee and almonds. Made with the finest quality ingredients, this ice cream bar is a perfect blend of creamy and crunchy textures with the right balance of sweetness. Hangyo`s Toffee Almond Bar has a creamy vanilla ice cream centre that is coated in a layer of rich toffee and crunchy almond pieces', 4, 3, 50, 120, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (3, N'Amul Ice Cream - Rajbhog, 125 ml Plastic IML Cup', N'Made from real milk, premium nuts and flavours,  Amul Rajbhog Ice Cream comes in a premium packaging. This ice cream has a mouth-watering and delicious taste that gives you an authentic Indian flavour, a crowd favourite.', 4, 2, 50, 766, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (4, N'Amul Ice Cream - Chocolate Brownie, 1 L Tub', N'Amul Chocolate Brownie Ice Cream gets your quantity of chocolate goodness to stay you happy and cool. It filled with real milk ice cream, in a tub that`s big sufficient for all your friends. It includes a chewy chocolate fudge ripple that makes for fun bites. A delicious ice cream treats for the whole family. This lip-smacking pleasure has newly baked cherry embedded in the soft ice cream.', 4, 1, 240, 200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (5, N'Amul Ice Cream - Tricone, Butterscotch, 120 ml', N'iCreamy Butterscotch icecream inside Crispy wafer biscuit cone India`s most loved ice cream cone. Taste of Real milk, real ice cream.

In the world of Amul Ice Cream, happiness and excitement go hand-in-hand with good health and delicious flavours. Crafted with the finest natural ingredients, Amul Ice creams will simply melt in your mouth leaving a smooth aftertaste. it`s perfect for your taste buds.', 4, 1, 40, 2340, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (6, N'English Oven Bread - Brown, 400 g Pouch', N'Healthy n Natural daily bread .                                                                 
Wheat Flour(Maida), Water,Yeast,Sugar,Iodised Salt, Edible Vegetable Oil,', 1, 5, 60, 245, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (7, N'Britannia 100% Whole Wheat Bread, 450 g Pouch', N'Milled from 100% whole grains of wheat, this bread is low in saturated fat and doubles up as a good source of fibre.

Whether you live to eat or eat to live, it’s best when it’s done right. Britannia’s range of wholesome and delicious bread is filled with the goodness you need to keep your body healthy and happy. ', 1, 3, 60, 1000, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (8, N'NANDA S Mr. Bready Jumbo Sandwich Bread, 800 g', N'Nanda Mr Bready Jumbo Sandwich Bread is ideal for everyone who wishes to enjoy a tasty and healthy sandwich. With a great balance of flavour and nutrition, this pack of bread is created with premium-grade wheat flour, sugar and other natural components. It has a soft, fluffy texture, which makes it an excellent choice for toast or sandwiches. The bread is a terrific option for a filling and fulfilling sandwich because it is robust enough to withstand a variety of ingredients. It is a fantastic source of fibre and carbs, which give the body energy and support a healthy digestive system. ', 1, 4, 90, 344, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (9, N'NANDAS Mr. Bready Premium Sweet Bread, 350 g', N'Nandas Mr Bready Premium Sweet Bread is a tasty treat that is ideal for anyone looking for a sweet and filling snack. This loaf of bread has the ideal balance of flavour and nutrition because it is created with premium wheat flour, sugar and other natural components. Its rich and sweet flavour, which is a result of the sugar used in the recipe, is one of its distinguishing qualities. Along with being soft and fluffy, the bread is the ideal vehicle for a variety of toppings and fillings. It is a fantastic option for a quick and filling dessert or snack because of its texture and flavour. It is a great source of fibre and carbs, which fuel the body and support regular digestion. Also, the bread is low in fat and cholesterol, making it a healthy option for those who are concerned with their diet.', 1, 5, 70, 1200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (10, N'
English Oven Bread - Pav, 300 g Pouch', N'Perfectly baked fresh pav.                                
Wheat Flour(Maida), Water,Yeast,Sugar,Iodised Salt, Edible Vegetable Oil.', 1, 2, 40, 250, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (11, N'Tropicana Fruit Juice - Orange Delight, 2x1 L Multipack', N'Enjoy the refreshing and delicious taste of oranges with this Orange Delight by Tropicana. Its special 6-layer protection gives you the goodness of this tasty, ready-to-serve fruit beverage in every glass of Tropicana.

Did You Know? Oranges are also known as Tangerines and Mandarins, this tasty citrus fruit is a great refresher.', 2, 1, 270, 200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (12, N'Raw Pressery Cold Extracted Juice - Pomegranate, 250 ml', N'Our Pomegranate juice is a crowd favourite. Our Anaar has the sweet juice of the pulp without the bitterness of the seeds. Enjoy this healthy heart delight.
Benefits
It improves muscle strength, your natural skincare, and flushes out toxins.
Get energized with this refreshing cold-pressed beverage.', 2, 5, 170, 178, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (13, N'Tang Instant Drink Mix - Orange 500 gm + Lemon 500 gm, Combo 2 Items', N'Tang comes in refreshing Orange flavor. Keep everyone refreshed this summer with Tang and its great fruit taste with the goodness of vitamins A, B, C and Iron. A glass (approximately 180ml) of Tang gives your child 60% of Vitamin C required for the entire day.', 2, 2, 300, 350, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (14, N'Paper Boat Apple Juice, 150 ml', N'An apple a day keeps the doctor away might just be the main mantra of the Indian parent`s handbook, no? Which kid wasn`t raised with sermons on how one must eat apples for health? It`s a good thing that this biblical fruit is juicy, tasty and fulfilling or else we really have a bone to pick with our parents. Growing up we had a family joke, that no matter what time of the day you tell mom youre hungry she has a standard response, apple khaa lo. In fact, we reached a point where we would ask her just for this automated response and then giggle away to glory. In our household, apples were not just the breakfast fruit, however, because we made warm apple pies and trifle pudding with apple pieces regularly. The unsung hero of fruits, it truly was versatile and is the family`s go-to snack option to this day!', 2, 2, 25, 120, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (15, N'B Natural Fruits N Bits - Guava, 300 ml', N'Hydrate yourself with this tropical delight – B Natural Fruits N Bits Guava Drink. This delicious and refreshing beverage is perfect for those summer days when you need a burst of sweet and juicy flavour. Infused with real guava and chia seeds, this drink will have you feeling like you`re eating real guava fruit instead of just drinking it! Not only is it tasty and refreshing, but it`s also packed with dietary fibre, vitamin C, and other essential nutrients that make it a guilt-free pleasure.', 2, 4, 60, 400, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (16, N'Cadbury Hot Chocolate Drink Powder Mix, 2x200 g Multipack', N'Cadburys Drinking Chocolate is the perfect way to make milk enjoyable for your children. It has an authentic chocolate taste that is a joy to every tongue, old and young. A treat for all hot chocolate drink lovers, to be enjoyed with friends and family!', 3, 5, 420, 344, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (17, N'Horlicks Health & Nutrition Drink - Classic Malt, 1 Kg Jar', N'MODERN STYLE & AMPLE STORAGE SHELVES- The shelves can be fixed on the left as a bookcase or display shelf, providing extra storage space, offering perfect workstation for your work or study, maximize your space. HIGH QUALITY MATERIAL & STABILITY- Thick metal frames provide more support, ensure stability and durability Desktop made of a unique composite material The adjustable leg pads make the table keep stable even on uneven floor. COMPACT DESIGN & MULTIFUNCTION - Multifunctional desk of simplistic style and compact size, works perfectly as computer desk, office workstation, study stable, writing or gaming desk in your study room, dormitory, living room or bedroom. 4 Tiers Extra Open Shelves - 4 tiers extra shelves on the side of the computer desk provide perfect storage.', 3, 3, 575, 400, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (18, N'bb Combo Chocolate Health Drink - Bournvita, 750 g + Bournvita Biscuits, 250 g, Combo 2 Items', N'Cadbury Bournvita is a delicious chocolate health drink which is enriched with Vitamin (D, B2, B9 and B12). It combines the great taste of chocolate and the goodness of essential nutrients that aid growth and development. Bournvita is a malted chocolate drink mix that can be enjoyed piping hot or deliciously cold. Try blending Bournvita with milk and ice cream to make a chocolate milkshake that is delectable and nutritious.', 3, 1, 440, 500, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (19, N'MTR Badam Drink Mix, 500 g', N'Health Drink that has nutrients to support immunity. Horlicks is clinically proven to improve 5 signs of growth. Clinically proven to make kids Taller, Stronger & Sharper. Scientifically proven to improve the Power of Milk.', 3, 1, 280, 200, N'')
INSERT [dbo].[Products] ([ProductId], [Title], [Description], [CategoryId], [OfferId], [Price], [Quantity], [ImageName]) VALUES (20, N'Hersheys Strawberry Syrup, 200 ml', N'Delicious Hersheys Strawberry Syrup is perfect for adding flavour to your desserts and it tastes the best when it is mixed with milk or drizzled over ice creams and cakes. It can also be used as a flavour enhancer when smeared over dosas and rotis.', 3, 2, 105, 800, N'')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([ReviewId], [UserId], [ProductId], [Review], [CreatedAt]) VALUES (1, 1, 3, N'good', N'Fri, Jun 16 2023 09:17:14 GMT+05:30 (India Standard Time)')
INSERT [dbo].[Reviews] ([ReviewId], [UserId], [ProductId], [Review], [CreatedAt]) VALUES (2, 1, 7, N'nice!!!', N'Mon, Jun 19 2023 16:06:30 GMT+05:30 (India Standard Time)')
SET IDENTITY_INSERT [dbo].[Reviews] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [Address], [Mobile], [Password], [CreatedAt], [ModifiedAt]) VALUES (1, N'Vaibhav', N'Mishra', N'vaibhav@nagarro.com', N'Kanpur', N'123456789', N'qwerty', N'Thu, Jun 15 2023 20:28:51 GMT+05:30 (India Standard Time)', N'Thu, Jun 15 2023 20:28:51 GMT+05:30 (India Standard Time)')
INSERT [dbo].[Users] ([UserId], [FirstName], [LastName], [Email], [Address], [Mobile], [Password], [CreatedAt], [ModifiedAt]) VALUES (2, N'vaibhav', N'pathak', N'vaibhavpathak119@gmail.com', N'Kanpur', N'123456789', N'qwertyu', N'Mon, Jun 19 2023 16:07:43 GMT+05:30 (India Standard Time)', N'Mon, Jun 19 2023 16:07:43 GMT+05:30 (India Standard Time)')
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Carts] FOREIGN KEY([CartId])
REFERENCES [dbo].[Carts] ([CartId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Carts]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payments] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payments] ([Id])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payments]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_PaymentMethods] FOREIGN KEY([PaymentMethodId])
REFERENCES [dbo].[PaymentMethods] ([PaymentMethodId])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_PaymentMethods]
GO
ALTER TABLE [dbo].[Payments]  WITH CHECK ADD  CONSTRAINT [FK_Payments_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Payments] CHECK CONSTRAINT [FK_Payments_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_Offers] FOREIGN KEY([OfferId])
REFERENCES [dbo].[Offers] ([OfferId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_Offers]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategories] ([CategoryId])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Product_ProductCategories]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Users]
GO
