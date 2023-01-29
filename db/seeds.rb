Character.destroy_all
Show.destroy_all
Network.destroy_all

actor1 = Actor.create(first_name: "bob", last_name: "stone")

n1 = Network.create(call_letters: "TEST", channel: 101)

Show.create(name: "Breaking Bad", day: "Saturday", season: "three", genre: "drama", network_id: Network.first.id)

Character.create(name: "Jimmy", actor_id: actor1.id, show_id: Show.where('name= ?', "Jimmy"), catchphrase: "something about science")