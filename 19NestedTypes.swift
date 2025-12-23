// Nested types let you define types inside other types – like a struct inside a class.
// It's great for organization, keeping related types together and avoiding name clashes.
// Access them with dot notation: Outer.Inner. Common in complex data models or utilities.

struct House {
    struct Room {
        let name: String
    }
}
let room = House.Room(name: "Kitchen")
print(room.name)