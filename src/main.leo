// The 'poker' main function.
import lib.bubble_sort;

function main(a: u32, b: u32) -> u32 {
    let c: u32 = a + b;
    return c;
}

circuit Card {
    index: u8;

    function new(mut self, suit: u8, number: u8) -> Card {
        return Self {
            index: suit + number * 4
        };
    }

    function number(const self) -> u8 {
        return self.index / 4;
    }

    function suit(const self) -> u8 {
        return self.index % 4;
    }
}

circuit Hand {
    owner: address;
    cards: [u8; 5];

    function three_of_kind(const self) -> bool {
        let suits: [u8; 4] = [0; 4];
        for i in 0..5 {
            let card_index = self.cards[i];
            let suit = card_index % 4;
            suits[suit] += 1;
            if suits[suit] == 3 {
                return (true);
            }
        }
        return false;
    }
}

// function shuffle_deck

// function deal

// function fold