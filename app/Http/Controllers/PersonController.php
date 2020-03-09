<?php

namespace App\Http\Controllers;

use App\Conection as ConectionModel;
use App\Person;
use App\Trip as TripModel;
use App\City as CityModel;
use Illuminate\Http\Request;

class PersonController extends Controller
{
    /**
     * Show all persons or a specific person from ID
     */
    public function show($id = null)
    {
        if (is_null($id)) {
            return response(Person::all());
        }
        $person = Person::find($id);
        return response($person);
    }


    /**
     * Person Details from ID
     */
    public function details($id)
    {
        $person = Person::find($id);
        $person->conections;
        $person->cities = $this->fetchTrips($id);
        return response($person);
    }


    /**
     * All friends from a Person
     */
    public function friends($person_id)
    {
        return response($this->fetchFriends($person_id));
    }


    /**
     * Friends of friends from a Person
     */
    public function friendsOfFriends($person_id)
    {
        // Get All Friends IDs
        $friendsIDs = Person::find($person_id)->conections->pluck('friend_id');

        // get All conections Where person_id = all of friends_IDS and exclude on result all matches with $person_id
        $friendsOfFriendsConections = ConectionModel::whereIn('person_id', $friendsIDs)
            ->where('friend_id', '<>', $person_id)
            ->whereNotIn('friend_id', $friendsIDs)
            ->pluck('friend_id');

        // Fetch persons with friends_id
        $friendsOfFriends = Person::whereIn('id', $friendsOfFriendsConections)->get();

        return response($friendsOfFriends);
    }


    /**
     * Suggested Friends
     */
    public function suggestedFriends($person_id)
    {
        // Get All Friends IDs
        $friendsIDs = Person::find($person_id)->conections->pluck('friend_id');

        // Stop if number of connections is ledd than 2
        if (count($friendsIDs) < 2) {
            return response(["message" => "No Suggested Friends"]);
        }

        $friendsOfFriendsConections = ConectionModel::whereIn('friend_id', $friendsIDs)
            ->pluck('person_id');

        // Fetch persons with friends_id
        $friendsOfFriends = Person::whereIn('id', $friendsOfFriendsConections)->where('id', '<>', $person_id)->get();

        return response($friendsOfFriends);
    }


    /**
     * All Trips from a Person
     */
    public function trips($person_id)
    {
        return response($this->fetchTrips($person_id));
    }


    /**
     * Fetch a City his rate from a Trip
     */
    public function fetchTrips($person_id)
    {
        $result = TripModel::where('person_id', $person_id)->get();

        $trips = [];
        foreach ($result as $trip) {
            $trips[] = [
                "trip_id"   => $trip->id,
                "city"      => CityModel::find($trip->city_id)->name, 
                "rate"      => $trip->rate
            ];
        }
        return $trips;
    }


     /**
     * Fetch All friends from a person.
     */
    public function fetchFriends($person_id)
    {
        $result = ConectionModel::where('person_id', $person_id)->get();
        $friends = [];
        foreach ($result as $con) {
            $result = Person::find($con->friend_id);
            $result->trips;
            $result->conections;
            $friends[] = $result;
        }
        return $friends;
    }
}
