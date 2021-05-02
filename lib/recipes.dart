import 'package:flutter/material.dart';

class Recipes{
  String name;
  String difficulty;
  String image;

  Color colour;
  Color fontColour;

Recipes({this.name,this.difficulty,this.image,this.colour,this.fontColour});

}


class Formula{
  String image;
  List<String> ingredients;
  String description;

Formula({this.image,this.description,this.ingredients});

}


List<Formula> form=[
  Formula(image: 'tastypic/hamburger.jpg',
    ingredients:[
    '½ onion, finely chopped',

      '½ cup shredded Colby Jack ',

      '1 teaspoon soy sauce',

      '1 teaspoon Worcestershire sauce',

      '1 egg',

     '1 (1 ounce) envelope dry onion soup mix',

  '1 clove garlic, minced',

 '1 tablespoon garlic powder',

  '1 teaspoon dried parsley',

  '1 teaspoon dried basil',

  '1 teaspoon dried oregano',

  '½ teaspoon crushed dried rosemary',

  'salt and pepper to taste',


  ],
    description: 'Preheat grill for high heat. In a large bowl, mix the ground beef, '
        'egg, bread crumbs, evaporated milk, Worcestershire sauce, cayenne pepper, and garlic using your hands. Form the mixture into 8 hamburger patties, Lightly oil the grill grate. '
        'Grill patties 5 minutes per side, or until well done.',

  ),
  Formula(image: 'tastypic/spaghetti.jpg',
    ingredients: [
    'Ground Beef.',
      'Tomato sauce',
      'Diced tomatoes',
     'Parmesan cheese.',
      'A splash of wine',
     'Onion, celery and fresh garlic',
    ],
      description: 'To make the best spaghetti sauce, you simply need to brown the ground beef and drain off any excess fat. '
          'Then, throw in the chopped celery, onion, and garlic and cook until the vegetables soften. '
          'So far, so good? Dump the rest of the homemade pasta sauce ingredients into the pot and bring the mixture to a boil.'
          ' Once the spaghetti sauce is boiling, reduce the heat and let it simmer on the stove for another 3 hours. I know 3 hours sounds like forever but that’s how long it takes to make a rich, '
          'flavorful meat sauce. Once the homemade spaghetti sauce has had time to simmer, all that’s left to do is boiling the spaghetti noodles according to package instructions and dish it up!',

  ),
  Formula(image: 'tastypic/taco.jpg',
    ingredients: [
      ' Hard Taco Shells.',
      'Soft Corn/Flour Tortillas.',
      'Taco Meat (Ground Beef/Pork/Chicken/Seafood)',
      'Beans (black beans, refried beans)',
     'Shredded Cheese.',
      'Lettuce.',
      'Onion.',
    'Pico de Gallo.',
    ],
    description: 'In a medium bowl, combine soy sauce, lime juice, 1 tablespoon canola oil, '
        'garlic, chili powder, cumin and oregano. In a gallon size Ziploc bag or large bowl, combine soy sauce mixture and steak; marinate for at least 1 hour up to 4 hours, turning the bag occasionally.'
        'Heat remaining 1 tablespoon canola oil in a large skillet over medium high heat. Add steak and marinade, and cook, stirring often,'
        ' until steak has browned and marinade has reduced, about 5-6 minutes, or until desired doneness.Serve steak in tortillas, topped with onion, cilantro and lime.'
  ),
  Formula(image: 'tastypic/fries.jpg',
  ingredients: [
    '2 large Russet potatoes/person.',
    'oil',
    'salt',
  ],
description: 'Cut the potatoes, soak the potatoes, rain and ry the potatoes, fry the potatoes, drain and cool the half-done fries, fry the potatoes again, drain the fries'

  ),
  Formula(image: 'tastypic/burrito.jpg',
  ingredients: [
      'Beef Burrito Filling – juicy and packed with flavour!',
      'Plain white rice – or try brown rice, quinoa)',
      'Corn',
       'Black beans',
      'Cabbage or lettuce',
      'Diced tomato',
       'Red onion',
       'Cheese',
      'Coriander/cilantro',
    ],
    description: 'Heat oil in a skillet over high heat. Add garlic and onion, cook for 2 minutes until onion is lightly browned. Add beef and cook, breaking it up as you go, '
        'until it turns from red to brown.Add Taco Seasoning (or use 1 packet store bought) and cook for 1 minute. Then add tomato paste and water, cook for 3 minutes until the water is'
        ' mostly evaporated but the beef is still juicy, not dried out. Set aside to cool for 10 minutes – piping hot filling will steam the burrito, making the tortilla soggy. Optional: '
        'If not warming rolled burrito, warm the tortillas before rolling (per packet directions).Place a burrito on a work surface. Place 1/4 - 1/3 cup of rice just below the centre. '
        'Top with 1/4 - 1/3 cup beef, then some lettuce, corn, black beans, tomato,  a sprinkle of red onion, coriander and cheese.Fold up the bottom to cover the filling then fold the edges in '
        '(video helpful to see how to do this). Roll up tightly, then wrap in foil. Serve as is or heat per below.HEATING: To warm through, pan fry (dry pan) in the foil over medium high heat for'
        ' a few minutes on each side to slightly crisp and warm the outside. Or for 10+ minutes on a medium low heat if you want to melt the cheese. Or they can be baked at 180C/350F for 20 minutes '
        'in the foil – this will warm them all the way through and crisp up the tortilla slightly. If they are straight from the fridge, they will take around 30 minutes to warm through. '
        'Burritos are best served with something to dollop/dip ',

  ),
  Formula(image: 'tastypic/sushi.jpeg',
    ingredients: [
      '6 sheets sushi seaweed aka nori',
      '1 batch prepared sushi rice',
     ' 1/2 lb sushi-grade raw salmon or desired raw fish of choice',
      '4 oz cream cheese sliced into strips',
      '1 avocado sliced',
      'soy sauce for serving',
    ],
    description: 'Place the seaweed on a bamboo mat, then cover the sheet of seaweed with an even layer of prepared sushi rice. Smooth gently with the rice paddle.'
        'Layer salmon, cream cheese, and avocado on the rice, and roll it up tightly. Slice with a sharp knife, and enjoy with soy sauce.',


  ),
  Formula(image: 'tastypic/pancakes.jpg',
  ingredients: [
    '10 oz by weight all purpose flour (2 cups if measuring)',
   '2 tbsp brown sugar',
    '2 tsp baking powder',
    '1/2 tsp baking soda',
    '1/2 tsp salt',
    '2 large eggs',
    '2 cups buttermilk',
  ],
    description: 'In a large bowl, whisk to combine the flour, brown sugar, baking powder,'
        ' baking soda, and salt.In another bowl, whisk the eggs with the buttermilk until well combined.'
        'Add the wet ingredients to the dry, and stir with a spatula until no flour streaks remain, but the batter still has a few lumps here and there.'
        ' Do not overmix.Transfer the batter to a measuring cup or other container for easy pouring.Heat a griddle or nonstick skillet over medium heat and pour a few tablespoons'
        ' of pancake batter onto the griddle for each pancake.Cook for a couple minutes, until you see bubbles form on top. This is your indication to flip!Cook for another minute on the other side,'
        ' then repeat with the remaining batter.Serve the pancakes with orange honey butter or maple syrup, or whatever you desire. Enjoy!'
  ),
  Formula(image: 'tastypic/lasagne.jpg',
  ingredients: [
    '3/4 lb sweet Italian sausage',
    '3/4 lb 90% lean ground beef',
    '1 tbsp minced garlic',
    "6 cups tomato basil sauce (I love Rao's)",
    '3 cups ricotta cheese',
    '1 cup grated parmigiano reggiano cheese (1.5 ounces by weight)',
    '1 large egg',
    '2 tbsp chopped basil',
    '1/4 tsp salt',
    '1/4 tsp black pepper',
    '1 lb box no-boil lasagna noodles',
    '1 lb bag shredded mozzarella cheese',
  ],
    description: "Preheat the oven to 350F. Heat a skillet over medium high heat, then brown the sausage and ground beef until fully cooked, "
        "about 5 minutes.* Soak up any excess fat in the pan with a paper towel, then add the garlic, and stir for 1 minute, until fragrant. "
        "Add the tomato sauce and simmer for 3 minutes, then turn off the heat**.In a bowl, mix together the ricotta, parmigiano reggiano, egg, basil, salt, and pepper.To build the lasagna, "
        "spread enough meat sauce on the bottom of a 9x13 baking pan to cover in an even layer, about 1.5 cups.Arrange a single layer of no-boil noodles on top of the sauce, then spread a thin layer of ricotta on top of the noodles."
        " I use an offset spatula to make this easier.Sprinkle a handful of mozzarella over the ricotta, then repeat this layering process about 3 more times, with meat sauce, noodles, ricotta, and mozzarella.When you get to the last layer, "
        "finish with noodles, meat sauce, mozzarella cheese, and a little extra parmesan if you'd like.Place the pan on a baking sheet, then cover the top tightly with aluminum foil. This is essential for cooking the no-boil noodles.Bake for 1 hour, until the noodles have cooked through, and the cheese is melted and bubbling. Serve and enjoy!",
  ),
 Formula(

   image: 'tastypic/cola.jpg',
   ingredients: [
     '1 quart water',
     'Finely grated zest and juice of 1 lemon',
     'Finely grated zest and juice of 1 lime',
     'Finely grated zest and juice of 2 oranges'
     '3 large (5-inch) cinnamon sticks, broken into small pieces',
     '2 tablespoons dried bitter orange peel',
     '2 teaspoons coriander seed',
     '1/4 teaspoon finely grated nutmeg',
     '1 teaspoon gum arabic (optional)',
     '2 pounds sugar',
     '1/4 cup browning sauce, such as Kitchen Bouquet',
     '1/2 teaspoon vanilla extract',
   ],
   description: "To make the Natural Cola Syrup: Combine the water, lemon zest, lime zest, orange zest, "
       "cinnamon, bitter orange peel, coriander seed, nutmeg, and gum arabic (if using) in a large saucepan. "
       "Whisk together until the gum arabic dissolves. Stir in the sugar and bring to a boil, stirring until the sugar dissolves."
       " Boil for 1 minute.Remove from the heat and stir in the lemon, lime, and orange juices, along with the browning sauce and vanilla."
       " Let cool, then strain.This syrup will keep in the refrigerator for up to 2 weeks.To mix with seltzer: Pour 1/2 cup cola syrup into a tall glass. "
       "Add 1 1/2 cups seltzer and stir until just blended. Add ice and serve.To carbonate with a siphon:"
       " Combine 3 1/4 cups water and 3/4 cup cola syrup in a 1-quart siphon. Charge with CO2 according to the manufacturer's directions."
       " Siphon charged sodas can be stored in the siphon in a refrigerator for up to 5 days. Dispense as desired into tall glasses filled with ice and serve.",
 ),

  Formula(

    image: 'tastypic/beer.jpg',
    ingredients: [
      'Malt Extract',
      'Sugar',
      'Yeast',
      'One 10-gallon “food grade” plastic pail with lid'
          'Hose clamp for siphon.',
      'Hose clamp for siphon.',
      'Twelve two-liter plastic pop bottles, with lids',
      'Hydrometer',

    ],
    description: "Pour 10 liters of fresh, cold water into the 10 gallon plastic pail (carboy)."
        " If the pail is new, wash it out first with a mixture of water and baking soda to remove the plastic smell."
        "In your largest pot, bring seven liters of water to a boil.Add one can of malt extract. Stir and cook uncovered for 20 minutes."
        "Add the sugar and stir to dissolve.As soon as the sugar is dissolved, pour contents into the carboy. Pour, or ‘splash’, the contents quickly, which adds air to the mixture. "
        "The more air the yeast gets initially, the better. It allows them to rapidly grow and get things going.Top up with bottled drinking water or tap water until temperature is neutral."
        " (If using tap water, it is recommended to boil first to kill bacteria.) Test using a clean, sanitized thermometer. The carboy will now be a little more than half full.Sprinkle in the yeast and stir well."
        " Cover with lid. (Set lid on loosely; if capped too tightly, a carboy can explode from the carbon dioxide gas that is produced.)",
  ),

  Formula(

    image: 'tastypic/tropic.jpg',
    ingredients: [
      '1 ounce of light rum',
      '1 ounce of dark rum',
      '1 half ounce of triple sec',
      '1 ounce of lime juice',
      '1 ounce of pineapple juice',
     ' 1 ounce of orange juice',
      '1 half ounce of grenadine',
    ],
    description: "Pour all the ingredients except the dark rum into a shaker filled with ice. "
        "Shake and pour the contents into a glass. Then add the dark rum on the top. Garnish the drink with slices of lime and orange",
  ),
  Formula(

    image: 'tastypic/wine.jpg',
    ingredients: [
       '(.25 ounce) package active dry yeast',
        'cups sugar',

       '(12 fluid ounce) can frozen juice concentrate - any flavor except citrus, thawed',

        '½ quarts cold water, or as needed',
    ],
    description: "Combine the yeast, sugar and juice concentrate in a gallon jug. Fill the jug the rest of the way with cold water. "
        "Rinse out a large balloon, and fit it over the opening of the jug. Secure the balloon with a rubber band."
        "Place jug in a cool dark place. Within a day you will notice the balloon starting to expand. "
        "As the sugar turns to alcohol the gasses released will fill up the balloon. "
        "When the balloon is deflated back to size the wine is ready to drink. It takes about 6 weeks total.",
  ),




];
List <Recipes> recipes=[
  Recipes(name:'Hamburger', image: 'assets/hamburger.png',colour: Colors.yellow,fontColour: Colors.amber[900],),
  Recipes(name:'Spaghetti',image: 'assets/spaghetti.png',colour: Colors.blue,fontColour: Colors.blue[900], ),
  Recipes(name:'Taco',image: 'assets/taco.png',colour: Colors.teal,fontColour:Colors.teal[900]),
  Recipes(name:'French Fries',image: 'assets/fries.png',colour: Colors.cyanAccent,fontColour:Colors.cyan[900]),
  Recipes(name:'Burrito',image: 'assets/burrito.png',colour: Colors.lightGreen,fontColour:Colors.lightGreen[900]),
  Recipes(name:'Sushi',image: 'assets/sushi.png',colour: Colors.purple,fontColour:Colors.black),
  Recipes(name:'Pancakes',image: 'assets/pancake.png',colour: Colors.blueGrey[300],fontColour:Colors.blueGrey[600]),
  Recipes(name:'Lasagne',image: 'assets/lasagne.png',colour: Colors.pink,fontColour:Colors.pink[900]),
];

List<Recipes> drinks=[
  Recipes(name:'Coke', image: 'assets/cola.png',colour: Colors.blue,fontColour: Colors.blue[900]),
  Recipes(name:'Beer', image: 'assets/beer.png',colour: Colors.teal,fontColour:Colors.teal[900]),
  Recipes(name:'Tropical Drink', image: 'assets/tropical.png',colour: Colors.pink,fontColour: Colors.pink[900]),
  Recipes(name:'Wine', image: 'assets/wine.png',colour: Colors.yellow,fontColour: Colors.amber[900]),
];