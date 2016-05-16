# 5.5 Nested Data Structures

# Design  and build a nested data structure to represent a real-world construct.
# You can choose the construct: Is it a highway full of cars full of people? A classroom full of desks full of supplies?
#  A fashion show with multiple runways featuring multiple models? Build something that will use a mix of hashes and arrays.
#
# Once you've built it, print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple
# indexes or hash keys (or both) to access nested items. Try to demonstrate a few different types of access.
library = {
  History: {
          Best_Sellers: ["Dead Wake: The Last Crossing of the Lusitania","Bill O'Reilly's Legends and Lies: The Patriots","Alexander Hamilton","The Wright Brothers"],
          World_hystory: ["Rising Sun, Falling Skies","Vikings: A Dark History","The English and Their History","Water: The Epic Struggle for Wealth, Power, and Civilization"],
          United_states_hystory: ["The Constitution of the United States of America ", "Unbroken: A World War II Story", "The Boys in the Boat" ],
        },
  Fiction: {
          Best_Sellers: ["The Nightingale", "The Whistler", "Go Set a Watchman", "Redemption Road"],
          Horror: {
                 Vampires: ["Dracula","'Salem's Lot", "Interview with the Vampire"],
                 Best_Sellers: ["It: A Novel", "The Shining", "Slade House"],
                 Classics: ["Carrie", "Frankenstein","Uncle Silas"],

      },
      Sci_fi_fiction: {
                    Fantasy_fiction: ["Harry Potter", "A game of thrones"],
                    Thrillers: ["End of Watch","The Girl on the Train", "Gone Girl"],
      },

  },
  Award_winers: ["Between the World and Me", "Fortune Smiles","Refund", "Fates and Furies"],
}

# Once you've built it, print a few individual pieces of deeply nested data from the structure, showing that you know how to use multiple
# indexes or hash keys (or both) to access nested items. Try to demonstrate a few different types of access.
