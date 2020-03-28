<?php
use App\Product2;
use Illuminate\Database\Seeder;

class ProductsTableSeeder1 extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Product2::create([
            'name' => 'Pita Bread',
            'price' => 135,
            'shipping_cost' => 10,
            'description' => 'Originating in the Middle East, pita is a leavened flatbread made of wheat flour. They are cooked at high temperatures, causing the liquid in the dough to escape. This forms a large air bubble in the center, which becomes a pocket when cut in half — great for a hand-held falafel sandwich. They are also perfect for dipping when cut into wedges and toasted.',
            'category_id' => 1,
            'item_id' => 1,
            'image_path' => 'br1.jpg'
        ]);

        Product2::create([
            'name' => 'Rye bread',
            'price' => 115,
            'shipping_cost' => 10,
            'description' => 'Rye bread is made with a combination of bread flour and rye flour, giving it an assertive rye flavor and a tight crumb. Caraway or dill seeds are often added for an earthy flavor. Rye bread is what gives pastrami and corned beef sandwiches their signature flavor.',
            'category_id' => 1,
            'item_id' => 2,
            'image_path' => 'br2.jpg'
        ]);

        Product2::create([
            'name' => 'Sourdough bread',
            'price' => 95,
            'shipping_cost' => 10,
            'description' => 'Sourdough is a yeasted bread made from a starter — a fermented mixture of flour and water that makes many batches of bread. In fact, it can be kept for a VERY long time! The resulting loaf has a substantial crust with a soft, chewy center and large air bubbles. It makes a BOMB grilled cheese!',
            'category_id' => 1,
            'item_id' => 3,
            'image_path' => 'br3.jfif'
        ]);

        Product2::create([
            'name' => 'Sicilian Pizza',
            'price' => 115,
            'shipping_cost' => 10,
            'description' => 'Sicilian pizza, also known as "sfincione," provides a thick cut of pizza with pillowy dough, a crunchy crust, and robust tomato sauce. This square-cut pizza is served with or without cheese, and often with the cheese underneath the sauce to prevent the pie from becoming soggy. Sicilian pizza was brought to America in the 19th century by Sicilian immigrants and became popular in the United States after the Second World War.',
            'category_id' => 2,
            'item_id' => 1,
            'image_path' => 'p1.jpg'
        ]);

        Product2::create([
            'name' => 'Greek Pizza',
            'price' => 195,
            'shipping_cost' => 10,
            'description' => 'Greek pizza was created by Greek immigrants who came to America and were introduced to Italian pizza. Greek-style pizza, especially popular in the New England states, features a thick and chewy crust cooked in shallow, oiled pans, resulting in a nearly deep-fried bottom. While this style has a crust that is puffier and chewier than thin crust pizzas, it’s not quite as thick as a deep-dish or Sicilian crust.',
            'category_id' => 2,
            'item_id' => 2,
            'image_path' => 'p2.jpg'
        ]);

        Product2::create([
            'name' => 'Patty Burger',
            'price' => 145,
            'shipping_cost' => 13.39,
            'description' => 'This homage to the classic American burger joint serves great food. The patties are made with Double Gold American beef from Wisconsin, served in a potato milk bun. The double cheeseburger is the signature option. Chosen by Shane Osborn of Arcane, Hong Kong',
            'category_id' => 3,
            'item_id' => 1,
            'image_path' => 'b1.jpeg'
        ]);

        Product2::create([
            'name' => 'Onion Smashed Burgers',
            'price' => 115,
            'shipping_cost' => 10,
            'description' => 'Inspired by the sliders at White Manna in Hackensack, New Jersey, Adam Fleischman creates beef patties by flattening balls of ground meat on the griddle. Tip: Burger purists handle ground meat as little as possible; over-working the beef can create a tight, meatloaf texture.',
            'category_id' => 3,
            'item_id' => 2,
            'image_path' => 'b2.jpg'
        ]);
        Product2::create([
            'name' => 'Chile-Stuffed Cheeseburger',
            'price' => 135,
            'shipping_cost' => 10,
            'description' => 'The gooey filling for these juicy burgers was inspired by the Mexican dip chile con queso, made with melted cheese and roasted chiles.',
            'category_id' => 3,
            'item_id' => 3,
            'image_path' => 'b3.jpg'
        ]);
    }
}
