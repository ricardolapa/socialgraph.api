<?php

namespace App\Http\Controllers;

use App\City;
use App\Person;
use App\Trip as TripModel;
use Illuminate\Http\Request;

class Trip extends Controller
{
    
    public function show($id = null)
    {
        if (is_null($id)) {
            return response(TripModel::all());
        }

        return response(TripModel::find($id));
    }


    /**
     * Calculates Vists Rate Average to a unvisited city
     * Calculates Number of visits of each city
     * returns Recomendations sorted by Average Rate
     */
    public function recomendedCities($person_id)
    {
        $visitedCitiesIDs = Person::find($person_id)->trips->pluck('city_id');

        $citiesToVisit = City::whereNotIn('id', $visitedCitiesIDs)->with('visits')->get();

        foreach ($citiesToVisit as $city) {
            $city->times_visited = count($city->visits); 
            $city->avarage_rate = $this->calculateAverageRate($city->visits);
        }
        
        return response($citiesToVisit->sortByDesc('avarage_rate')->values());
    }


    /**
     * Calculates Average Rate of visits to a city
     */
    public function calculateAverageRate($visits)
    {
        $counter = 0;
        foreach ($visits as $item) {
            $counter += $item->rate;
        }
        return ceil($counter / count($visits));
    }


    public function allFromPerson($person_id)
    {
        $result = TripModel::where('person_id', $person_id)->get();

        $trips = [];

        foreach ($result as $trip) {
            $trips[] = [
                "city" => City::find($trip->city_id)->name, 
                "rate"=> $trip->rate
            ];
        }

        return response($trips);
    }
}
