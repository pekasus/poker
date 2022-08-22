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
    cards [Card; 5];

    function is_three_of_kind(const self) -> bool {

    }
}

// function shuffle_deck

// function deal

// function fold